@interface UASimulatorController
- (BOOL)active;
- (BOOL)terminate;
- (NSSet)simulators;
- (UASimulatorController)initWithManager:(id)manager;
- (id)simulatorStatus;
- (id)statusString;
- (void)addSimulator:(id)simulator;
- (void)removeSimulator:(id)simulator;
@end

@implementation UASimulatorController

- (UASimulatorController)initWithManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = UASimulatorController;
  v5 = [(UACornerActionManagerHandler *)&v11 initWithManager:managerCopy name:@"SimCreator"];
  if (v5)
  {
    v6 = dispatch_queue_create("simulator", 0);
    dispatchQ = v5->_dispatchQ;
    v5->_dispatchQ = v6;

    v8 = +[NSMutableSet set];
    simulators = v5->_simulators;
    v5->_simulators = v8;
  }

  return v5;
}

- (NSSet)simulators
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_simulators copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addSimulator:(id)simulator
{
  obj = self;
  simulatorCopy = simulator;
  objc_sync_enter(obj);
  [(NSMutableSet *)obj->_simulators addObject:simulatorCopy];

  objc_sync_exit(obj);
}

- (void)removeSimulator:(id)simulator
{
  simulatorCopy = simulator;
  if (simulatorCopy)
  {
    v6 = simulatorCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableSet *)selfCopy->_simulators removeObject:v6];
    objc_sync_exit(selfCopy);

    simulatorCopy = v6;
  }
}

- (BOOL)active
{
  simulators = [(UASimulatorController *)self simulators];
  v3 = [simulators count] != 0;

  return v3;
}

- (BOOL)terminate
{
  v15.receiver = self;
  v15.super_class = UASimulatorController;
  terminate = [(UACornerActionManagerHandler *)&v15 terminate];
  if (terminate)
  {
    v4 = sub_100001A30(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Terminating all UASimulators.", buf, 2u);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    simulators = [(UASimulatorController *)self simulators];
    v6 = [simulators countByEnumeratingWithState:&v10 objects:v16 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(simulators);
          }

          [*(*(&v10 + 1) + 8 * v8) terminate];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [simulators countByEnumeratingWithState:&v10 objects:v16 count:16];
      }

      while (v6);
    }
  }

  return terminate;
}

- (id)statusString
{
  simulators = [(UASimulatorController *)self simulators];
  v4 = [simulators count];

  if (v4)
  {
    v5 = +[NSMutableString string];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    simulators2 = [(UASimulatorController *)self simulators];
    v7 = [simulators2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(simulators2);
          }

          statusString = [*(*(&v14 + 1) + 8 * i) statusString];
          [v5 appendFormat:@"%@\n", statusString];
        }

        v7 = [simulators2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 copy];

  return v12;
}

- (id)simulatorStatus
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(UASimulatorController *)self simulators];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v2)
  {
    v3 = 0;
    v4 = *v18;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = sub_10007B05C([v6 pairedClientPort], 0x1C9C380u, &v21, &v22);
        v8 = v7;
        if (v7)
        {
          v9 = mach_error_string(v7);
          statusString = [v6 statusString];
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(ERROR %d/%s for simulator %@"), v8, v9, statusString;

          v3 = v11;
        }

        else
        {
          v12 = [NSString alloc];
          v13 = [NSData dataWithBytes:v21 length:v22];
          v14 = [v12 initWithData:v13 encoding:4];

          if (v14)
          {
            goto LABEL_14;
          }

          v3 = 0;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v17 objects:v24 count:16];
      v14 = v3;
    }

    while (v2);
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  sub_10003D91C(&v21);

  return v14;
}

@end