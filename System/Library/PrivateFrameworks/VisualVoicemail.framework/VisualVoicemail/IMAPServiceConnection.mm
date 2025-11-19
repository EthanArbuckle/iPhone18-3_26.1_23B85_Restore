@interface IMAPServiceConnection
+ (id)heldConnectionsForCheckingIn;
- (BOOL)changePassword:(id)a3;
- (BOOL)checkIn;
- (IMAPServiceConnection)initWithMambaID:(const char *)a3;
- (void)checkInForcefully;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation IMAPServiceConnection

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAPServiceConnection;
  [(IMAPServiceConnection *)&v2 dealloc];
}

- (IMAPServiceConnection)initWithMambaID:(const char *)a3
{
  v7.receiver = self;
  v7.super_class = IMAPServiceConnection;
  v3 = [(IMAPServiceConnection *)&v7 initWithMambaID:a3];
  if (v3)
  {
    v4 = objc_alloc_init(NSLock);
    checkedOutThreadsLock = v3->_checkedOutThreadsLock;
    v3->_checkedOutThreadsLock = v4;
  }

  return v3;
}

- (BOOL)changePassword:(id)a3
{
  v4 = a3;
  v5 = sub_1000025EC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IMAPServiceConnection *)self mambaID];
    v7 = [(IMAPServiceConnection *)self rumbaID];
    *buf = 136316162;
    v22 = v6;
    v23 = 2080;
    v24 = " ";
    v25 = 2114;
    v26 = v7;
    v27 = 2080;
    v28 = " ";
    v29 = 2112;
    v30 = @"XCHANGEPASSWORD";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sPerforming custom command %@", buf, 0x34u);
  }

  v20[0] = @"PIN";
  v20[1] = v4;
  v8 = [NSArray arrayWithObjects:v20 count:2];
  v9 = [(IMAPServiceConnection *)self performCustomCommand:@"XCHANGEPASSWORD" withArguments:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[MFActivityMonitor currentTracebleMonitor];
    v11 = [v10 error];
    if (v11)
    {
      v12 = sub_1000025EC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10009BFE0(self, v11, v12);
      }

      v13 = [v11 domain];
      if (![v13 isEqualToString:MFMessageErrorDomain])
      {
        goto LABEL_14;
      }

      v14 = [v11 code];

      if (v14 == 1033)
      {
        v13 = [v11 localizedDescription];
        if (!v13 || (pthread_once(&stru_10010CAB0, sub_100014C74), [qword_10010D770 objectForKey:v13], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, v17 = objc_msgSend(v15, "intValue"), v16, v17 == -1))
        {
          v17 = 1016;
        }

        v18 = [NSError errorWithDomain:kVVErrorDomain code:v17 localizedDescription:v13];

        [v10 setError:v18];
        v11 = v18;
LABEL_14:
      }
    }
  }

  return v9;
}

+ (id)heldConnectionsForCheckingIn
{
  v2 = +[NSThread currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"_IMAPServiceConnections"];
  if ([v4 count])
  {
    [v3 removeObjectForKey:@"_IMAPServiceConnections"];
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
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKey:@"_IMAPServiceConnections"];

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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IMAPServiceConnection *)self delegate];
  v6 = v5;
  if (v4 || !v5)
  {
    if (v4)
    {
      [(NSLock *)self->_checkedOutThreadsLock lock];
      checkedOutThreads = self->_checkedOutThreads;
      if (checkedOutThreads)
      {
        if (v6 != v4)
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
      v11 = [v10 threadDictionary];
      v12 = [v11 objectForKey:@"_IMAPServiceConnections"];
      if (!v12)
      {
        v12 = objc_alloc_init(NSMutableSet);
        [v11 setObject:v12 forKey:@"_IMAPServiceConnections"];
      }

      [v12 addObject:self];
      [(NSLock *)self->_checkedOutThreadsLock unlock];
      v13.receiver = self;
      v13.super_class = IMAPServiceConnection;
      [(IMAPServiceConnection *)&v13 setDelegate:v4];
    }
  }

  else
  {
    [(IMAPServiceConnection *)self checkIn];
  }
}

@end