@interface MFActivityMonitor
+ (id)currentMonitor;
+ (void)destroyMonitor;
- (BOOL)_lockedAddActivityTarget:(id)target;
- (MFActivityMonitor)init;
- (NSString)description;
- (id)_ntsThrottledUserInfoDict;
- (id)activityTarget;
- (id)activityTargets;
- (id)displayName;
- (id)error;
- (id)primaryTarget;
- (id)statusMessage;
- (id)taskName;
- (id)userInfoForNotification;
- (int)acquireExclusiveAccessKey;
- (void)_cancelAssociatedCancelables;
- (void)_didChange;
- (void)addActivityTarget:(id)target;
- (void)addActivityTargets:(id)targets;
- (void)addCancelable:(id)cancelable;
- (void)addReason:(id)reason;
- (void)cancelMessage;
- (void)dealloc;
- (void)finishedActivity:(id)activity;
- (void)notifyConnectionEstablished;
- (void)postActivityFinished:(id)finished;
- (void)postActivityStarting;
- (void)postDidChangeWithUserInfo:(id)info;
- (void)relinquishExclusiveAccessKey:(int)key;
- (void)removeActivityTarget:(id)target;
- (void)removeCancelable:(id)cancelable;
- (void)reset;
- (void)setActivityTarget:(id)target;
- (void)setCanBeCancelled:(BOOL)cancelled;
- (void)setCurrentCount:(unint64_t)count;
- (void)setDisplayName:(id)name maxCount:(unint64_t)count;
- (void)setError:(id)error;
- (void)setGotNewMessagesState:(unint64_t)state;
- (void)setMaxCount:(unint64_t)count;
- (void)setPercentDone:(double)done withKey:(int)key;
- (void)setPercentDoneOfCurrentItem:(double)item;
- (void)setPrimaryTarget:(id)target;
- (void)setShouldCancel:(BOOL)cancel;
- (void)setStatusMessage:(id)message;
- (void)setStatusMessage:(id)message withKey:(int)key;
- (void)setTaskName:(id)name;
- (void)startActivity;
@end

@implementation MFActivityMonitor

- (MFActivityMonitor)init
{
  v8.receiver = self;
  v8.super_class = MFActivityMonitor;
  v2 = [(MFActivityMonitor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = g_instance_id++;
    v2->_instanceID = v4;
    statusMessage = v2->_statusMessage;
    v2->_statusMessage = &stru_288159858;

    taskName = v3->_taskName;
    v3->_taskName = &stru_288159858;

    v3->_percentDone = 0.0;
    *(v3 + 81) |= 0x20u;
    *(v3 + 81) &= ~0x40u;
    *(v3 + 40) &= 0xE000u;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFActivityMonitor;
  [(MFActivityMonitor *)&v2 dealloc];
}

- (void)cancelMessage
{
  if ([(MFActivityMonitor *)self shouldCancel])
  {
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

- (void)postActivityStarting
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MonitoredActivityStarted" object:self];
}

- (void)postActivityFinished:(id)finished
{
  v4 = MEMORY[0x277CBEAC0];
  finishedCopy = finished;
  v7 = [[v4 alloc] initWithObjectsAndKeys:{finishedCopy, @"MonitoredActivityInvocation", 0, 0}];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MonitoredActivityEnded" object:self userInfo:v7];
}

- (void)startActivity
{
  +[MFActivityMonitor mf_lock];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  runningThread = self->_runningThread;
  self->_runningThread = currentThread;

  +[MFActivityMonitor mf_unlock];
  threadDictionary = [(NSThread *)self->_runningThread threadDictionary];
  [threadDictionary setObject:self forKey:@"VFThreadPriorityDesignator"];

  *(self + 81) |= 0x80u;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [(MFActivityMonitor *)self resetConnectionStats];
  [(MFActivityMonitor *)self setError:0];

  [(MFActivityMonitor *)self postActivityStarting];
}

- (void)finishedActivity:(id)activity
{
  v4 = MEMORY[0x277D82BB8];
  activityCopy = activity;
  [v4 mf_clearLocks];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary removeObjectForKey:@"VFThreadPriorityDesignator"];

  *(self + 81) &= ~0x80u;
  +[MFActivityMonitor mf_lock];
  runningThread = self->_runningThread;
  self->_runningThread = 0;

  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postActivityFinished:activityCopy];
}

- (void)notifyConnectionEstablished
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NetworkConnectionEstablished" object:self];
}

- (id)userInfoForNotification
{
  +[MFActivityMonitor mf_lock];
  maxCount = self->_maxCount;
  if (!maxCount)
  {
    v5 = &OBJC_IVAR___MFActivityMonitor__percentDone;
    goto LABEL_7;
  }

  if (self->_currentCount > maxCount)
  {
    maxCount = self->_currentCount;
  }

  self->_maxCount = maxCount;
  v4 = 0.0;
  if (*(self + 144))
  {
    v5 = &OBJC_IVAR___MFActivityMonitor__currentItemPercentDone;
LABEL_7:
    v4 = *(&self->super.super.isa + *v5);
  }

  if ([(NSString *)self->_displayName length])
  {
    if (!self->_maxCount && [(NSString *)self->_displayName rangeOfString:@"…"]== 0x7FFFFFFFFFFFFFFFLL && [(NSString *)self->_displayName rangeOfString:@"..."]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@...", self->_displayName];
    }

    else
    {
      v6 = self->_displayName;
    }

    v7 = v6;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v7 forKey:@"MonitoredActivityDictMessage"];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxCount];
    [dictionary setObject:v9 forKey:@"MonitoredActivityMaxCount"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentCount];
    [dictionary setObject:v10 forKey:@"MonitoredActivityCurrentCount"];

    *&v11 = v4;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [dictionary setObject:v12 forKey:@"MonitoredActivityCurrentItemProgress"];
  }

  else
  {
    dictionary = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return dictionary;
}

- (void)postDidChangeWithUserInfo:(id)info
{
  if (info)
  {
    v4 = MEMORY[0x277CCAB98];
    infoCopy = info;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter postNotificationName:@"MonitoredActivityMessage" object:self userInfo:infoCopy];
  }
}

- (void)_didChange
{
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (void)setMaxCount:(unint64_t)count
{
  +[MFActivityMonitor mf_lock];
  self->_maxCount = count;
  self->_lastTime = 0.0;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (void)setCurrentCount:(unint64_t)count
{
  +[MFActivityMonitor mf_lock];
  self->_currentCount = count;
  self->_currentItemPercentDone = 0.0;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (id)_ntsThrottledUserInfoDict
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = Current;
  if (self->_currentCount == self->_maxCount || Current - self->_lastTime >= 0.0333333351)
  {
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
    self->_lastTime = v4;
  }

  else
  {
    userInfoForNotification = 0;
  }

  return userInfoForNotification;
}

- (void)setPercentDoneOfCurrentItem:(double)item
{
  +[MFActivityMonitor mf_lock];
  self->_currentItemPercentDone = item;
  _ntsThrottledUserInfoDict = [(MFActivityMonitor *)self _ntsThrottledUserInfoDict];
  +[MFActivityMonitor mf_unlock];
  v5 = _ntsThrottledUserInfoDict;
  if (_ntsThrottledUserInfoDict)
  {
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:_ntsThrottledUserInfoDict];
    v5 = _ntsThrottledUserInfoDict;
  }
}

- (void)reset
{
  +[MFActivityMonitor mf_lock];
  self->_maxCount = 0;
  self->_currentCount = 0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;
  [(MFActivityMonitor *)self setSupportsPerItemProgress:0];
  self->_lastTime = 0.0;
  taskName = self->_taskName;
  self->_taskName = 0;

  displayName = self->_displayName;
  self->_displayName = 0;

  +[MFActivityMonitor mf_unlock];
  if (self->_mailbox)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v6 setObject:@"RESET" forKey:@"MonitoredActivityReset"];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MonitoredActivityMessage" object:self userInfo:v6];
  }
}

- (void)setGotNewMessagesState:(unint64_t)state
{
  if (self->_gotNewMessagesState < state)
  {
    self->_gotNewMessagesState = state;
  }
}

- (void)addReason:(id)reason
{
  reasonCopy = reason;
  reasons = self->_reasons;
  v8 = reasonCopy;
  if (!reasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_reasons;
    self->_reasons = v6;

    reasonCopy = v8;
    reasons = self->_reasons;
  }

  [(NSMutableSet *)reasons addObject:reasonCopy];
}

- (void)setStatusMessage:(id)message
{
  messageCopy = message;
  [(MFActivityMonitor *)self percentDone];
  [(MFActivityMonitor *)self setStatusMessage:messageCopy percentDone:?];
}

- (id)statusMessage
{
  +[MFActivityMonitor mf_lock];
  p_statusMessage = &self->_statusMessage;
  statusMessage = self->_statusMessage;
  if (!statusMessage || [(NSString *)statusMessage isEqualToString:&stru_288159858])
  {
    p_statusMessage = &self->_taskName;
  }

  v5 = *p_statusMessage;
  +[MFActivityMonitor mf_unlock];

  return v5;
}

- (NSString)description
{
  +[MFActivityMonitor mf_lock];
  if (!self->_descriptionString)
  {
    target = self->_target;
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([self->_target displayName], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
    {
      v6 = MEMORY[0x277CCACA8];
      instanceID = self->_instanceID;
      displayName = [self->_target displayName];
      v9 = displayName;
      taskName = self->_taskName;
      if (!taskName)
      {
        taskName = &stru_288159858;
      }

      taskName = [v6 stringWithFormat:@"ivm.%lu (%@) [%@]", instanceID, displayName, taskName];
      descriptionString = self->_descriptionString;
      self->_descriptionString = taskName;
    }

    else
    {
      v13 = self->_instanceID;
      v14 = self->_taskName;
      if (!v14)
      {
        v14 = &stru_288159858;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ivm.%lu [%@]", self->_instanceID, v14];
      v9 = self->_descriptionString;
      self->_descriptionString = v15;
    }
  }

  v16 = self->_descriptionString;
  +[MFActivityMonitor mf_unlock];

  return v16;
}

- (id)taskName
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_taskName;
  +[MFActivityMonitor mf_unlock];

  return v3;
}

- (void)setTaskName:(id)name
{
  nameCopy = name;
  +[MFActivityMonitor mf_lock];
  if (self->_taskName != nameCopy)
  {
    objc_storeStrong(&self->_taskName, name);
  }

  self->_currentCount = 0;
  self->_maxCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;
  displayName = self->_displayName;
  self->_displayName = 0;

  +[MFActivityMonitor mf_unlock];
}

- (id)displayName
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_displayName;
  +[MFActivityMonitor mf_unlock];

  return v3;
}

- (void)setDisplayName:(id)name maxCount:(unint64_t)count
{
  nameCopy = name;
  +[MFActivityMonitor mf_lock];
  if (self->_displayName != nameCopy)
  {
    objc_storeStrong(&self->_displayName, name);
  }

  self->_maxCount = count;
  self->_currentCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (void)setActivityTarget:(id)target
{
  targetCopy = target;
  +[MFActivityMonitor mf_lock];
  if (self->_target != targetCopy)
  {
    objc_storeStrong(&self->_target, target);
    descriptionString = self->_descriptionString;
    self->_descriptionString = 0;
  }

  +[MFActivityMonitor mf_unlock];
}

- (id)activityTarget
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_target;
  +[MFActivityMonitor mf_unlock];

  return v3;
}

- (BOOL)_lockedAddActivityTarget:(id)target
{
  targetCopy = target;
  target = self->_target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = objc_alloc_init(_MFActivityMonitorMultiTarget);
    v7 = self->_target;
    self->_target = v6;

    descriptionString = self->_descriptionString;
    self->_descriptionString = 0;
  }

  v9 = [self->_target addActivityTarget:targetCopy];

  return v9;
}

- (void)addActivityTarget:(id)target
{
  targetCopy = target;
  +[MFActivityMonitor mf_lock];
  v4 = [(MFActivityMonitor *)self _lockedAddActivityTarget:targetCopy];
  +[MFActivityMonitor mf_unlock];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{targetCopy, @"AddedTarget", 0}];
    [defaultCenter postNotificationName:@"MonitoredActivityDidAddActivityTarget" object:self userInfo:v6];
  }
}

- (void)addActivityTargets:(id)targets
{
  v18 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  +[MFActivityMonitor mf_lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = targetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 |= [(MFActivityMonitor *)self _lockedAddActivityTarget:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);

    +[MFActivityMonitor mf_unlock];
    if (v8)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"MonitoredActivityDidAddActivityTarget" object:self userInfo:0];
    }
  }

  else
  {

    +[MFActivityMonitor mf_unlock];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeActivityTarget:(id)target
{
  targetCopy = target;
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self->_target removeActivityTarget:targetCopy];
    +[MFActivityMonitor mf_unlock];
    if (v5)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{targetCopy, @"RemovedTarget", 0}];
      [defaultCenter postNotificationName:@"MonitoredActivityDidRemoveActivityTarget" object:self userInfo:v7];
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }
}

- (void)setPrimaryTarget:(id)target
{
  targetCopy = target;
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    primaryTarget = [self->_target primaryTarget];
    [self->_target setPrimaryTarget:targetCopy];
    descriptionString = self->_descriptionString;
    self->_descriptionString = 0;

    +[MFActivityMonitor mf_unlock];
    if (primaryTarget)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{primaryTarget, @"MonitoredActivityOldPrimaryTarget", targetCopy, @"MonitoredActivityNewPrimaryTarget", 0}];

      goto LABEL_6;
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{targetCopy, @"MonitoredActivityNewPrimaryTarget", 0, @"MonitoredActivityOldPrimaryTarget", 0}];
LABEL_6:
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MonitoredActivityPrimaryTargetChanged" object:self userInfo:v7];
}

- (id)primaryTarget
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    primaryTarget = [self->_target primaryTarget];
  }

  else
  {
    primaryTarget = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return primaryTarget;
}

- (id)activityTargets
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allTargets = [self->_target allTargets];
  }

  else
  {
    allTargets = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return allTargets;
}

- (void)setCanBeCancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 81) = *(self + 81) & 0xDF | v3;
}

- (void)setShouldCancel:(BOOL)cancel
{
  if ((*(self + 81) & 0x20) != 0)
  {
    if (cancel)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        currentThread = [MEMORY[0x277CCACC8] currentThread];
        threadDictionary = [currentThread threadDictionary];
        v6 = [threadDictionary objectForKey:@"VFThreadPriorityDesignator"];

        if (v6 == self)
        {
          v7 = vm_imap_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "Activity monitor cancelled on the Main Thread.  Why?", v9, 2u);
          }
        }
      }

      *(self + 81) |= 0x40u;
      [(MFActivityMonitor *)self _cancelAssociatedCancelables];
    }

    else
    {
      *(self + 81) &= ~0x40u;
    }

    +[MFActivityMonitor mf_lock];
    v8 = self->_runningThread;
    +[MFActivityMonitor mf_unlock];
    if (v8)
    {
      [(MFActivityMonitor *)self performSelector:sel_cancelMessage onThread:v8 withObject:0 waitUntilDone:0];
    }

    else
    {
      [(MFActivityMonitor *)self cancelMessage];
    }

    [(MFInvocationQueue *)self->_ourQueue didCancel:self];
    [(MFActivityMonitor *)self _didChange];
  }
}

- (void)addCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  +[MFActivityMonitor mf_lock];
  associatedCancelables = self->_associatedCancelables;
  if (!associatedCancelables)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = self->_associatedCancelables;
    self->_associatedCancelables = v5;

    associatedCancelables = self->_associatedCancelables;
  }

  [(NSMutableSet *)associatedCancelables addObject:cancelableCopy];
  +[MFActivityMonitor mf_unlock];
  if ((*(self + 81) & 0x40) != 0)
  {
    [cancelableCopy cancel];
  }
}

- (void)removeCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  +[MFActivityMonitor mf_lock];
  [(NSMutableSet *)self->_associatedCancelables removeObject:cancelableCopy];

  +[MFActivityMonitor mf_unlock];
}

- (void)_cancelAssociatedCancelables
{
  +[MFActivityMonitor mf_lock];
  v3 = [(NSMutableSet *)self->_associatedCancelables copy];
  +[MFActivityMonitor mf_unlock];
  [v3 makeObjectsPerformSelector:sel_cancel];
}

+ (id)currentMonitor
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MFActivityMonitor;
  v2 = objc_msgSendSuper2(&v4, sel_currentDesignator);

  return v2;
}

+ (void)destroyMonitor
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___MFActivityMonitor;
  objc_msgSendSuper2(&v2, sel_destroyCurrentDesignator);
}

- (int)acquireExclusiveAccessKey
{
  +[MFActivityMonitor mf_lock];
  if ((*(self + 40) & 0x1FFF) != 0)
  {
    v3 = 0;
  }

  else
  {
    *(self + 40) |= 1u;
    v3 = 1;
  }

  +[MFActivityMonitor mf_unlock];
  return v3;
}

- (void)relinquishExclusiveAccessKey:(int)key
{
  +[MFActivityMonitor mf_lock];
  v5 = *(self + 40);
  if (key == v5 << 19 >> 19)
  {
    *(self + 40) = v5 & 0xE000;
  }

  +[MFActivityMonitor mf_unlock];
}

- (void)setStatusMessage:(id)message withKey:(int)key
{
  messageCopy = message;
  +[MFActivityMonitor mf_lock];
  if (key != *(self + 40) << 19 >> 19 || self->_statusMessage == messageCopy)
  {
    +[MFActivityMonitor mf_unlock];
  }

  else
  {
    objc_storeStrong(&self->_statusMessage, message);
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (userInfoForNotification)
    {
      [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
    }
  }
}

- (void)setPercentDone:(double)done withKey:(int)key
{
  +[MFActivityMonitor mf_lock];
  if (key != *(self + 40) << 19 >> 19)
  {
    goto LABEL_9;
  }

  doneCopy = 1.0;
  if (done <= 1.0)
  {
    doneCopy = done;
  }

  if (doneCopy == self->_percentDone)
  {
LABEL_9:

    +[MFActivityMonitor mf_unlock];
  }

  else
  {
    self->_percentDone = doneCopy;
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (userInfoForNotification)
    {
      [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
    }
  }
}

- (id)error
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_error;
  +[MFActivityMonitor mf_unlock];

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  +[MFActivityMonitor mf_lock];
  if (self->_error != errorCopy)
  {
    objc_storeStrong(&self->_error, error);
  }

  +[MFActivityMonitor mf_unlock];
}

@end