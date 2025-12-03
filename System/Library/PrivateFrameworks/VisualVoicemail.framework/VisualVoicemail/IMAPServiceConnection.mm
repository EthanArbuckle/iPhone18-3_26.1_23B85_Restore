@interface IMAPServiceConnection
+ (id)heldConnectionsForCheckingIn;
- (BOOL)changePassword:(id)password;
- (BOOL)checkIn;
- (IMAPServiceConnection)initWithMambaID:(const char *)d;
- (void)checkInForcefully;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation IMAPServiceConnection

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAPServiceConnection;
  [(IMAPServiceConnection *)&v2 dealloc];
}

- (IMAPServiceConnection)initWithMambaID:(const char *)d
{
  v7.receiver = self;
  v7.super_class = IMAPServiceConnection;
  v3 = [(IMAPServiceConnection *)&v7 initWithMambaID:d];
  if (v3)
  {
    v4 = objc_alloc_init(NSLock);
    checkedOutThreadsLock = v3->_checkedOutThreadsLock;
    v3->_checkedOutThreadsLock = v4;
  }

  return v3;
}

- (BOOL)changePassword:(id)password
{
  passwordCopy = password;
  v5 = sub_1000025EC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(IMAPServiceConnection *)self mambaID];
    rumbaID = [(IMAPServiceConnection *)self rumbaID];
    *buf = 136316162;
    v22 = mambaID;
    v23 = 2080;
    v24 = " ";
    v25 = 2114;
    v26 = rumbaID;
    v27 = 2080;
    v28 = " ";
    v29 = 2112;
    v30 = @"XCHANGEPASSWORD";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sPerforming custom command %@", buf, 0x34u);
  }

  v20[0] = @"PIN";
  v20[1] = passwordCopy;
  v8 = [NSArray arrayWithObjects:v20 count:2];
  v9 = [(IMAPServiceConnection *)self performCustomCommand:@"XCHANGEPASSWORD" withArguments:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v10 error];
    if (error)
    {
      v12 = sub_1000025EC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10009BFE0(self, error, v12);
      }

      domain = [error domain];
      if (![domain isEqualToString:MFMessageErrorDomain])
      {
        goto LABEL_14;
      }

      code = [error code];

      if (code == 1033)
      {
        domain = [error localizedDescription];
        if (!domain || (pthread_once(&stru_10010CAB0, sub_100014C74), [qword_10010D770 objectForKey:domain], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, v17 = objc_msgSend(v15, "intValue"), v16, v17 == -1))
        {
          v17 = 1016;
        }

        v18 = [NSError errorWithDomain:kVVErrorDomain code:v17 localizedDescription:domain];

        [v10 setError:v18];
        error = v18;
LABEL_14:
      }
    }
  }

  return v9;
}

+ (id)heldConnectionsForCheckingIn
{
  v2 = +[NSThread currentThread];
  threadDictionary = [v2 threadDictionary];

  v4 = [threadDictionary objectForKey:@"_IMAPServiceConnections"];
  if ([v4 count])
  {
    [threadDictionary removeObjectForKey:@"_IMAPServiceConnections"];
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (BOOL)checkIn
{
  v3 = +[NSThread currentThread];
  [(NSLock *)self->_checkedOutThreadsLock lock];
  [(NSMutableSet *)self->_checkedOutThreads removeObject:v3];
  threadDictionary = [v3 threadDictionary];
  v5 = [threadDictionary objectForKey:@"_IMAPServiceConnections"];

  [v5 removeObject:self];
  v6 = [(NSMutableSet *)self->_checkedOutThreads count];
  [(NSLock *)self->_checkedOutThreadsLock unlock];
  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = IMAPServiceConnection;
    [(IMAPServiceConnection *)&v8 setDelegate:0];
  }

  return v6 == 0;
}

- (void)checkInForcefully
{
  [(NSLock *)self->_checkedOutThreadsLock lock];
  [(NSMutableSet *)self->_checkedOutThreads removeAllObjects];
  [(NSLock *)self->_checkedOutThreadsLock unlock];

  [(IMAPServiceConnection *)self checkIn];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(IMAPServiceConnection *)self delegate];
  v6 = delegate;
  if (delegateCopy || !delegate)
  {
    if (delegateCopy)
    {
      [(NSLock *)self->_checkedOutThreadsLock lock];
      checkedOutThreads = self->_checkedOutThreads;
      if (checkedOutThreads)
      {
        if (v6 != delegateCopy)
        {
          [(NSMutableSet *)checkedOutThreads removeAllObjects];
        }
      }

      else
      {
        v8 = objc_alloc_init(NSMutableSet);
        v9 = self->_checkedOutThreads;
        self->_checkedOutThreads = v8;
      }

      v10 = +[NSThread currentThread];
      [(NSMutableSet *)self->_checkedOutThreads addObject:v10];
      threadDictionary = [v10 threadDictionary];
      v12 = [threadDictionary objectForKey:@"_IMAPServiceConnections"];
      if (!v12)
      {
        v12 = objc_alloc_init(NSMutableSet);
        [threadDictionary setObject:v12 forKey:@"_IMAPServiceConnections"];
      }

      [v12 addObject:self];
      [(NSLock *)self->_checkedOutThreadsLock unlock];
      v13.receiver = self;
      v13.super_class = IMAPServiceConnection;
      [(IMAPServiceConnection *)&v13 setDelegate:delegateCopy];
    }
  }

  else
  {
    [(IMAPServiceConnection *)self checkIn];
  }
}

@end