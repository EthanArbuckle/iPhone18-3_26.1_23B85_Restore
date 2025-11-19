@interface ACMAppleConnectImpl
- (ACMAppleConnectImpl)init;
- (BOOL)shouldReleaseOnMemoryWarning;
- (NSMutableSet)handlers;
- (void)authenticate:(id)a3;
- (void)changeUserPasswordWithRequest:(id)a3 isGesture:(BOOL)a4;
- (void)dealloc;
- (void)scheduleHandler:(id)a3 withCompletionBlock:(id)a4;
- (void)setLogLevel:(int64_t)a3;
- (void)unscheduleAllHandlers;
- (void)unscheduleHandler:(id)a3;
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

- (void)scheduleHandler:(id)a3 withCompletionBlock:(id)a4
{
  if (qword_2A1EB8FA8)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "-[ACMAppleConnectImpl scheduleHandler:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 112, 0, "Scheduling HTTP handler %p for url %@", a3, [objc_msgSend(a3 "transport")]);
    }

    objc_sync_enter(self);
    if (!a3)
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
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  if (![(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] count])
  {
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  }

  [(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] addObject:a3];
  [a3 performRequestWithCompletionBlock:a4];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __59__ACMAppleConnectImpl_scheduleHandler_withCompletionBlock___block_invoke;
  v7[3] = &unk_29EE918B0;
  v7[4] = self;
  v7[5] = a3;
  [a3 setFinalizeBlock:v7];
LABEL_11:
  objc_sync_exit(self);
}

- (void)unscheduleHandler:(id)a3
{
  objc_sync_enter(self);
  if ([(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] containsObject:a3])
  {
    [(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] removeObject:a3];
    [a3 setFinalizeBlock:0];
    if (![(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] count])
    {
      [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];

      self->_handlers = 0;
    }
  }

  else if (qword_2A1EB8FA8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACMAppleConnectImpl unscheduleHandler:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 152, 0, "HTTP handler %p is not found, probably it was already removed", a3);
  }

  objc_sync_exit(self);
}

- (void)unscheduleAllHandlers
{
  v2 = self;
  while ([(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] count])
  {
    [(ACMAppleConnectImpl *)v2 unscheduleHandler:[(NSMutableSet *)[(ACMAppleConnectImpl *)v2 handlers] anyObject]];
    self = v2;
  }

  handlers = v2->_handlers;
  if (handlers)
  {

    v2->_handlers = 0;
  }
}

- (void)authenticate:(id)a3
{
  if (qword_2A1EB8FB8 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileStart("[ACMAppleConnectImpl authenticate:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 174, 0, 0);
  }

  [(ACMAppleConnectImpl *)self performSelectorOnMainThread:sel_authenticateRunningOnMainThreadWithRequest_ withObject:a3 waitUntilDone:1];
  if (qword_2A1EB8FB0)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x100) != 0)
    {
      ACFProfileEnd("[ACMAppleConnectImpl authenticate:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 178, 0, 0);
    }
  }
}

- (void)changeUserPasswordWithRequest:(id)a3 isGesture:(BOOL)a4
{
  v4 = a4;
  if (qword_2A1EB8FB8 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileStart("[ACMAppleConnectImpl changeUserPasswordWithRequest:isGesture:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 201, 0, 0);
  }

  v7 = &selRef_changeGestureRunningOnMainThreadWithRequest_;
  if (!v4)
  {
    v7 = &selRef_changePasswordRunningOnMainThreadWithRequest_;
  }

  [(ACMAppleConnectImpl *)self performSelectorOnMainThread:*v7 withObject:a3 waitUntilDone:1];
  if (qword_2A1EB8FB0)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x100) != 0)
    {
      ACFProfileEnd("[ACMAppleConnectImpl changeUserPasswordWithRequest:isGesture:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImpl.m", 206, 0, 0);
    }
  }
}

- (void)setLogLevel:(int64_t)a3
{
  v4 = [(ACMAppleConnectImplComponents *)[(ACMAppleConnectImpl *)self components] preferences];

  [(ACMAppleConnectPreferences *)v4 setLogLevel:a3];
}

@end