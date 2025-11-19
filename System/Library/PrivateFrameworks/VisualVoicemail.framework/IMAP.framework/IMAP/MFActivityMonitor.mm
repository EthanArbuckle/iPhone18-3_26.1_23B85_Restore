@interface MFActivityMonitor
+ (id)currentMonitor;
+ (void)destroyMonitor;
- (BOOL)_lockedAddActivityTarget:(id)a3;
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
- (void)addActivityTarget:(id)a3;
- (void)addActivityTargets:(id)a3;
- (void)addCancelable:(id)a3;
- (void)addReason:(id)a3;
- (void)cancelMessage;
- (void)dealloc;
- (void)finishedActivity:(id)a3;
- (void)notifyConnectionEstablished;
- (void)postActivityFinished:(id)a3;
- (void)postActivityStarting;
- (void)postDidChangeWithUserInfo:(id)a3;
- (void)relinquishExclusiveAccessKey:(int)a3;
- (void)removeActivityTarget:(id)a3;
- (void)removeCancelable:(id)a3;
- (void)reset;
- (void)setActivityTarget:(id)a3;
- (void)setCanBeCancelled:(BOOL)a3;
- (void)setCurrentCount:(unint64_t)a3;
- (void)setDisplayName:(id)a3 maxCount:(unint64_t)a4;
- (void)setError:(id)a3;
- (void)setGotNewMessagesState:(unint64_t)a3;
- (void)setMaxCount:(unint64_t)a3;
- (void)setPercentDone:(double)a3 withKey:(int)a4;
- (void)setPercentDoneOfCurrentItem:(double)a3;
- (void)setPrimaryTarget:(id)a3;
- (void)setShouldCancel:(BOOL)a3;
- (void)setStatusMessage:(id)a3;
- (void)setStatusMessage:(id)a3 withKey:(int)a4;
- (void)setTaskName:(id)a3;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MonitoredActivityStarted" object:self];
}

- (void)postActivityFinished:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = [[v4 alloc] initWithObjectsAndKeys:{v5, @"MonitoredActivityInvocation", 0, 0}];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"MonitoredActivityEnded" object:self userInfo:v7];
}

- (void)startActivity
{
  +[MFActivityMonitor mf_lock];
  v3 = [MEMORY[0x277CCACC8] currentThread];
  runningThread = self->_runningThread;
  self->_runningThread = v3;

  +[MFActivityMonitor mf_unlock];
  v5 = [(NSThread *)self->_runningThread threadDictionary];
  [v5 setObject:self forKey:@"VFThreadPriorityDesignator"];

  *(self + 81) |= 0x80u;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [(MFActivityMonitor *)self resetConnectionStats];
  [(MFActivityMonitor *)self setError:0];

  [(MFActivityMonitor *)self postActivityStarting];
}

- (void)finishedActivity:(id)a3
{
  v4 = MEMORY[0x277D82BB8];
  v8 = a3;
  [v4 mf_clearLocks];
  v5 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [v5 threadDictionary];
  [v6 removeObjectForKey:@"VFThreadPriorityDesignator"];

  *(self + 81) &= ~0x80u;
  +[MFActivityMonitor mf_lock];
  runningThread = self->_runningThread;
  self->_runningThread = 0;

  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postActivityFinished:v8];
}

- (void)notifyConnectionEstablished
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NetworkConnectionEstablished" object:self];
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
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setObject:v7 forKey:@"MonitoredActivityDictMessage"];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxCount];
    [v8 setObject:v9 forKey:@"MonitoredActivityMaxCount"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentCount];
    [v8 setObject:v10 forKey:@"MonitoredActivityCurrentCount"];

    *&v11 = v4;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [v8 setObject:v12 forKey:@"MonitoredActivityCurrentItemProgress"];
  }

  else
  {
    v8 = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return v8;
}

- (void)postDidChangeWithUserInfo:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB98];
    v5 = a3;
    v6 = [v4 defaultCenter];
    [v6 postNotificationName:@"MonitoredActivityMessage" object:self userInfo:v5];
  }
}

- (void)_didChange
{
  v3 = [(MFActivityMonitor *)self userInfoForNotification];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v3];
}

- (void)setMaxCount:(unint64_t)a3
{
  +[MFActivityMonitor mf_lock];
  self->_maxCount = a3;
  self->_lastTime = 0.0;
  v5 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v5];
}

- (void)setCurrentCount:(unint64_t)a3
{
  +[MFActivityMonitor mf_lock];
  self->_currentCount = a3;
  self->_currentItemPercentDone = 0.0;
  v5 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v5];
}

- (id)_ntsThrottledUserInfoDict
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = Current;
  if (self->_currentCount == self->_maxCount || Current - self->_lastTime >= 0.0333333351)
  {
    v5 = [(MFActivityMonitor *)self userInfoForNotification];
    self->_lastTime = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPercentDoneOfCurrentItem:(double)a3
{
  +[MFActivityMonitor mf_lock];
  self->_currentItemPercentDone = a3;
  v6 = [(MFActivityMonitor *)self _ntsThrottledUserInfoDict];
  +[MFActivityMonitor mf_unlock];
  v5 = v6;
  if (v6)
  {
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:v6];
    v5 = v6;
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
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"MonitoredActivityMessage" object:self userInfo:v6];
  }
}

- (void)setGotNewMessagesState:(unint64_t)a3
{
  if (self->_gotNewMessagesState < a3)
  {
    self->_gotNewMessagesState = a3;
  }
}

- (void)addReason:(id)a3
{
  v4 = a3;
  reasons = self->_reasons;
  v8 = v4;
  if (!reasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_reasons;
    self->_reasons = v6;

    v4 = v8;
    reasons = self->_reasons;
  }

  [(NSMutableSet *)reasons addObject:v4];
}

- (void)setStatusMessage:(id)a3
{
  v4 = a3;
  [(MFActivityMonitor *)self percentDone];
  [(MFActivityMonitor *)self setStatusMessage:v4 percentDone:?];
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
      v8 = [self->_target displayName];
      v9 = v8;
      taskName = self->_taskName;
      if (!taskName)
      {
        taskName = &stru_288159858;
      }

      v11 = [v6 stringWithFormat:@"ivm.%lu (%@) [%@]", instanceID, v8, taskName];
      descriptionString = self->_descriptionString;
      self->_descriptionString = v11;
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

- (void)setTaskName:(id)a3
{
  v6 = a3;
  +[MFActivityMonitor mf_lock];
  if (self->_taskName != v6)
  {
    objc_storeStrong(&self->_taskName, a3);
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

- (void)setDisplayName:(id)a3 maxCount:(unint64_t)a4
{
  v8 = a3;
  +[MFActivityMonitor mf_lock];
  if (self->_displayName != v8)
  {
    objc_storeStrong(&self->_displayName, a3);
  }

  self->_maxCount = a4;
  self->_currentCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;
  v7 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v7];
}

- (void)setActivityTarget:(id)a3
{
  v6 = a3;
  +[MFActivityMonitor mf_lock];
  if (self->_target != v6)
  {
    objc_storeStrong(&self->_target, a3);
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

- (BOOL)_lockedAddActivityTarget:(id)a3
{
  v4 = a3;
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

  v9 = [self->_target addActivityTarget:v4];

  return v9;
}

- (void)addActivityTarget:(id)a3
{
  v7 = a3;
  +[MFActivityMonitor mf_lock];
  v4 = [(MFActivityMonitor *)self _lockedAddActivityTarget:v7];
  +[MFActivityMonitor mf_unlock];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v7, @"AddedTarget", 0}];
    [v5 postNotificationName:@"MonitoredActivityDidAddActivityTarget" object:self userInfo:v6];
  }
}

- (void)addActivityTargets:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  +[MFActivityMonitor mf_lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
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
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 postNotificationName:@"MonitoredActivityDidAddActivityTarget" object:self userInfo:0];
    }
  }

  else
  {

    +[MFActivityMonitor mf_unlock];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeActivityTarget:(id)a3
{
  v8 = a3;
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self->_target removeActivityTarget:v8];
    +[MFActivityMonitor mf_unlock];
    if (v5)
    {
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, @"RemovedTarget", 0}];
      [v6 postNotificationName:@"MonitoredActivityDidRemoveActivityTarget" object:self userInfo:v7];
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }
}

- (void)setPrimaryTarget:(id)a3
{
  v9 = a3;
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self->_target primaryTarget];
    [self->_target setPrimaryTarget:v9];
    descriptionString = self->_descriptionString;
    self->_descriptionString = 0;

    +[MFActivityMonitor mf_unlock];
    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v5, @"MonitoredActivityOldPrimaryTarget", v9, @"MonitoredActivityNewPrimaryTarget", 0}];

      goto LABEL_6;
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v9, @"MonitoredActivityNewPrimaryTarget", 0, @"MonitoredActivityOldPrimaryTarget", 0}];
LABEL_6:
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"MonitoredActivityPrimaryTargetChanged" object:self userInfo:v7];
}

- (id)primaryTarget
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [self->_target primaryTarget];
  }

  else
  {
    v4 = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return v4;
}

- (id)activityTargets
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [self->_target allTargets];
  }

  else
  {
    v4 = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return v4;
}

- (void)setCanBeCancelled:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 81) = *(self + 81) & 0xDF | v3;
}

- (void)setShouldCancel:(BOOL)a3
{
  if ((*(self + 81) & 0x20) != 0)
  {
    if (a3)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v4 = [MEMORY[0x277CCACC8] currentThread];
        v5 = [v4 threadDictionary];
        v6 = [v5 objectForKey:@"VFThreadPriorityDesignator"];

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

- (void)addCancelable:(id)a3
{
  v7 = a3;
  +[MFActivityMonitor mf_lock];
  associatedCancelables = self->_associatedCancelables;
  if (!associatedCancelables)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = self->_associatedCancelables;
    self->_associatedCancelables = v5;

    associatedCancelables = self->_associatedCancelables;
  }

  [(NSMutableSet *)associatedCancelables addObject:v7];
  +[MFActivityMonitor mf_unlock];
  if ((*(self + 81) & 0x40) != 0)
  {
    [v7 cancel];
  }
}

- (void)removeCancelable:(id)a3
{
  v4 = a3;
  +[MFActivityMonitor mf_lock];
  [(NSMutableSet *)self->_associatedCancelables removeObject:v4];

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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MFActivityMonitor;
  v2 = objc_msgSendSuper2(&v4, sel_currentDesignator);

  return v2;
}

+ (void)destroyMonitor
{
  v2.receiver = a1;
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

- (void)relinquishExclusiveAccessKey:(int)a3
{
  +[MFActivityMonitor mf_lock];
  v5 = *(self + 40);
  if (a3 == v5 << 19 >> 19)
  {
    *(self + 40) = v5 & 0xE000;
  }

  +[MFActivityMonitor mf_unlock];
}

- (void)setStatusMessage:(id)a3 withKey:(int)a4
{
  v8 = a3;
  +[MFActivityMonitor mf_lock];
  if (a4 != *(self + 40) << 19 >> 19 || self->_statusMessage == v8)
  {
    +[MFActivityMonitor mf_unlock];
  }

  else
  {
    objc_storeStrong(&self->_statusMessage, a3);
    v7 = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (v7)
    {
      [(MFActivityMonitor *)self postDidChangeWithUserInfo:v7];
    }
  }
}

- (void)setPercentDone:(double)a3 withKey:(int)a4
{
  +[MFActivityMonitor mf_lock];
  if (a4 != *(self + 40) << 19 >> 19)
  {
    goto LABEL_9;
  }

  v7 = 1.0;
  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  if (v7 == self->_percentDone)
  {
LABEL_9:

    +[MFActivityMonitor mf_unlock];
  }

  else
  {
    self->_percentDone = v7;
    v8 = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (v8)
    {
      [(MFActivityMonitor *)self postDidChangeWithUserInfo:v8];
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

- (void)setError:(id)a3
{
  v5 = a3;
  +[MFActivityMonitor mf_lock];
  if (self->_error != v5)
  {
    objc_storeStrong(&self->_error, a3);
  }

  +[MFActivityMonitor mf_unlock];
}

@end