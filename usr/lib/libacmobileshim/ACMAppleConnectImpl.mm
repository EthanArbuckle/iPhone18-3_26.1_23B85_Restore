@interface ACMAppleConnectImpl
- (ACMAppleConnectImpl)init;
- (BOOL)shouldReleaseOnMemoryWarning;
- (NSMutableSet)handlers;
- (void)authenticate:(id)authenticate;
- (void)changeUserPasswordWithRequest:(id)request isGesture:(BOOL)gesture;
- (void)dealloc;
- (void)scheduleHandler:(id)handler withCompletionBlock:(id)block;
- (void)setLogLevel:(int64_t)level;
- (void)unscheduleAllHandlers;
- (void)unscheduleHandler:(id)handler;
@end

@implementation ACMAppleConnectImpl

- (ACMAppleConnectImpl)init
{
  v7.receiver = self;
  v7.super_class = ACMAppleConnectImpl;
  v2 = [(ACMAppleConnectImpl *)&v7 init];
  if (v2)
  {
    if (qword_2A1EB8FA8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMAppleConnectImpl init]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 37, 0, "Creating instance...");
    }

    v3 = MEMORY[0x29EDB9FA0];
    v4 = MEMORY[0x29EDB8DC0];
    v5 = [ACMBaseLocale localizedString:@"Out of Memory"];
    v2->_memoryError = [v3 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v4, "dictionaryWithObject:forKey:", v5, *MEMORY[0x29EDB9ED8])}];
    [(ACMAppleConnectImpl *)v2 updateLogLevel];
    [(ACMAppleConnectImplComponents *)[(ACMAppleConnectImpl *)v2 components] setUIControllerDelegate:v2];
  }

  return v2;
}

- (BOOL)shouldReleaseOnMemoryWarning
{
  if (qword_2A1EB8FA8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACMAppleConnectImpl shouldReleaseOnMemoryWarning]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 53, 0, "Memory Warning is received, cleaning up... ");
  }

  objc_sync_enter(self);
  [(ACMAppleConnectImplComponents *)[(ACMAppleConnectImpl *)self components] cleanupOnMemoryWarning];
  handlers = self->_handlers;
  if (handlers)
  {
    v4 = [(NSMutableSet *)handlers count]== 0;
  }

  else
  {
    v4 = 1;
  }

  objc_sync_exit(self);
  return v4;
}

- (void)dealloc
{
  self->_memoryError = 0;
  [(ACMAppleConnectImplComponents *)[(ACMAppleConnectImpl *)self components] setUIControllerDelegate:0];
  [(ACMAppleConnectImpl *)self unscheduleAllHandlers];
  v3.receiver = self;
  v3.super_class = ACMAppleConnectImpl;
  [(ACMAppleConnectImpl *)&v3 dealloc];
}

- (NSMutableSet)handlers
{
  objc_sync_enter(self);
  handlers = self->_handlers;
  if (!handlers)
  {
    if (qword_2A1EB8FA8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMAppleConnectImpl handlers]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 102, 0, "Creating HTTP handlers pool");
    }

    handlers = objc_opt_new();
    self->_handlers = handlers;
  }

  objc_sync_exit(self);
  return handlers;
}

- (void)scheduleHandler:(id)handler withCompletionBlock:(id)block
{
  if (qword_2A1EB8FA8)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "-[ACMAppleConnectImpl scheduleHandler:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 112, 0, "Scheduling HTTP handler %p for url %@", handler, [objc_msgSend(handler "transport")]);
    }

    objc_sync_enter(self);
    if (!handler)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACMAppleConnectImpl scheduleHandler:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 130, 0, "Trying to schedule nil handler");
      }

      goto LABEL_11;
    }
  }

  else
  {
    objc_sync_enter(self);
    if (!handler)
    {
      goto LABEL_11;
    }
  }

  if (![(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] count])
  {
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  }

  [(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] addObject:handler];
  [handler performRequestWithCompletionBlock:block];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __59__ACMAppleConnectImpl_scheduleHandler_withCompletionBlock___block_invoke;
  v7[3] = &unk_29EE918B0;
  v7[4] = self;
  v7[5] = handler;
  [handler setFinalizeBlock:v7];
LABEL_11:
  objc_sync_exit(self);
}

- (void)unscheduleHandler:(id)handler
{
  objc_sync_enter(self);
  if ([(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] containsObject:handler])
  {
    [(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] removeObject:handler];
    [handler setFinalizeBlock:0];
    if (![(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] count])
    {
      [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];

      self->_handlers = 0;
    }
  }

  else if (qword_2A1EB8FA8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACMAppleConnectImpl unscheduleHandler:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 152, 0, "HTTP handler %p is not found, probably it was already removed", handler);
  }

  objc_sync_exit(self);
}

- (void)unscheduleAllHandlers
{
  selfCopy = self;
  while ([(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] count])
  {
    [(ACMAppleConnectImpl *)selfCopy unscheduleHandler:[(NSMutableSet *)[(ACMAppleConnectImpl *)selfCopy handlers] anyObject]];
    self = selfCopy;
  }

  handlers = selfCopy->_handlers;
  if (handlers)
  {

    selfCopy->_handlers = 0;
  }
}

- (void)authenticate:(id)authenticate
{
  if (qword_2A1EB8FB8 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileStart("[ACMAppleConnectImpl authenticate:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 174, 0, 0);
  }

  [(ACMAppleConnectImpl *)self performSelectorOnMainThread:sel_authenticateRunningOnMainThreadWithRequest_ withObject:authenticate waitUntilDone:1];
  if (qword_2A1EB8FB0)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x100) != 0)
    {
      ACFProfileEnd("[ACMAppleConnectImpl authenticate:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 178, 0, 0);
    }
  }
}

- (void)changeUserPasswordWithRequest:(id)request isGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  if (qword_2A1EB8FB8 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileStart("[ACMAppleConnectImpl changeUserPasswordWithRequest:isGesture:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 201, 0, 0);
  }

  v7 = &selRef_changeGestureRunningOnMainThreadWithRequest_;
  if (!gestureCopy)
  {
    v7 = &selRef_changePasswordRunningOnMainThreadWithRequest_;
  }

  [(ACMAppleConnectImpl *)self performSelectorOnMainThread:*v7 withObject:request waitUntilDone:1];
  if (qword_2A1EB8FB0)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x100) != 0)
    {
      ACFProfileEnd("[ACMAppleConnectImpl changeUserPasswordWithRequest:isGesture:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 206, 0, 0);
    }
  }
}

- (void)setLogLevel:(int64_t)level
{
  preferences = [(ACMAppleConnectImplComponents *)[(ACMAppleConnectImpl *)self components] preferences];

  [(ACMAppleConnectPreferences *)preferences setLogLevel:level];
}

@end