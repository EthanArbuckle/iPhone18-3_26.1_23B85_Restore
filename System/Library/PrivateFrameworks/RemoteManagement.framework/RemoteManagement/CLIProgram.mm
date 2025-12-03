@interface CLIProgram
+ (BOOL)handleFormatOption:(id)option longOption:(id)longOption argument:(id)argument;
+ (CLIProgram)sharedProgram;
+ (id)commandToOptionsDict;
+ (id)nextOptionParser;
+ (void)handleFormatOptionInDictionary:(id)dictionary;
- (BOOL)startRunLoop;
- (CLIProgram)init;
- (NSString)programName;
- (int)main;
- (void)endRunLoopWithSuccess:(BOOL)success;
- (void)registerAllCLICommands;
@end

@implementation CLIProgram

+ (id)commandToOptionsDict
{
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = qword_100025148;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [qword_100025148 objectForKey:{v8, v13}];
        _copiedSet = [v9 _copiedSet];
        name = [v8 name];
        [v2 setObject:_copiedSet forKeyedSubscript:name];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

+ (CLIProgram)sharedProgram
{
  if (objc_opt_class() != self)
  {
    sub_100010D14(a2, self);
  }

  if (qword_100025160 != -1)
  {
    sub_100010D88();
  }

  v4 = qword_100025168;

  return v4;
}

- (CLIProgram)init
{
  v6.receiver = self;
  v6.super_class = CLIProgram;
  v2 = [(CLIProgram *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    runLoopStateLock = v2->_runLoopStateLock;
    v2->_runLoopStateLock = v3;

    v2->_runLoopState = 0;
  }

  return v2;
}

+ (BOOL)handleFormatOption:(id)option longOption:(id)longOption argument:(id)argument
{
  argumentCopy = argument;
  v8 = [longOption isEqualToString:@"format"];
  if (v8)
  {
    sub_10000E71C(self, argumentCopy);
  }

  return v8;
}

+ (void)handleFormatOptionInDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"format"];
  if (v4)
  {
    sub_10000E71C(self, v4);
  }

  _objc_release_x1();
}

+ (id)nextOptionParser
{
  v2 = +[NSProcessInfo processInfo];
  arguments = [v2 arguments];

  v4 = qword_100025180;
  v5 = [arguments count];
  v6 = [NSIndexSet indexSetWithIndexesInRange:v4, &v5[-qword_100025180]];
  v7 = [arguments objectsAtIndexes:v6];
  v8 = v7;
  if (qword_100025180)
  {
    if ([v7 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v8 objectAtIndexedSubscript:0];
      v11 = [CLICommand registeredCommandWithName:v10];

      if (v11)
      {
LABEL_6:

        goto LABEL_8;
      }

      if (v9)
      {
        v14 = +[CLICommand registeredCommandNames];
        v15 = [CLISuggest correctionForWord:v9 fromCorpus:v14];

        if (v15)
        {
          sub_10000F860(@"ambiguous command %@ - did you mean %@?", v16, v17, v18, v19, v20, v21, v22, v9);
        }

        else
        {
          sub_10000F860(@"unknown command %@", v16, v17, v18, v19, v20, v21, v22, v9);
          sub_10000C964(0);
        }

        exit(64);
      }
    }

    v11 = [CLICommand registeredCommandWithName:@"help"];
    v9 = 0;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_8:
  v12 = [CLIOptionParser optionParserWithArguments:v8 forCommand:v11];

  return v12;
}

- (void)registerAllCLICommands
{
  v2 = objc_opt_class();
  for (i = objc_opt_new(); ; [i removeAllObjects])
  {
    outCount = 0;
    v4 = objc_copyClassList(&outCount);
    if (outCount)
    {
      for (j = 0; j < outCount; ++j)
      {
        v6 = v4[j];
        if (v6 != v2)
        {
          Name = class_getName(v4[j]);
          if (strncmp(Name, "NSKVONotifying_", 0xFuLL))
          {
            Superclass = v6;
            while (1)
            {
              Superclass = class_getSuperclass(Superclass);
              if (!Superclass)
              {
                break;
              }

              if (Superclass == v2)
              {
                if ([(objc_class *)v6 enabled])
                {
                  [i addObject:v6];
                }

                break;
              }
            }
          }
        }
      }
    }

    free(v4);
    ClassList = objc_getClassList(0, 0);
    if (ClassList < 0 || ClassList == outCount)
    {
      break;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = i;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (k = 0; k != v12; k = k + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * k);
        v16 = objc_opt_new();
        [v16 register];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }
}

- (NSString)programName
{
  programName = self->_programName;
  if (programName)
  {
    v3 = programName;
  }

  else
  {
    v5 = +[NSProcessInfo processInfo];
    processName = [v5 processName];
    v7 = self->_programName;
    self->_programName = processName;

    v3 = processName;
  }

  return v3;
}

- (int)main
{
  v3 = +[NSProcessInfo processInfo];
  environment = [v3 environment];
  v5 = [environment objectForKeyedSubscript:@"PWD"];

  chdir([v5 fileSystemRepresentation]);
  v6 = objc_autoreleasePoolPush();
  delegate = [(CLIProgram *)self delegate];
  sub_100010C38(self);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate shouldAutomaticallyRegisterCommands])
  {
    [(CLIProgram *)self registerAllCLICommands];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate registerGlobalOptions];
  }

  v8 = +[CLIProgram nextOptionParser];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate parseGlobalOptions:v8])
  {
    v15 = 1;
  }

  else
  {
    v9 = +[CLIProgram nextOptionParser];
    [v9 validateArguments];
    command = [v9 command];
    commandName = [v9 commandName];
    name = commandName;
    if (!commandName)
    {
      name = [command name];
    }

    if (self)
    {
      objc_setProperty_nonatomic_copy(self, v11, name, 40);
    }

    if (!commandName)
    {
    }

    v14 = [command runWithOptions:v9];
    v15 = v14 ^ 1;
  }

  objc_autoreleasePoolPop(v6);
  exit(v15);
}

- (BOOL)startRunLoop
{
  Current = CFRunLoopGetCurrent();
  Main = CFRunLoopGetMain();
  if (!CFEqual(Current, Main))
  {
    sub_100010D9C(a2, self);
  }

  v6 = self->_runLoopStateLock;
  objc_sync_enter(v6);
  if (self->_runLoopState)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"CLIProgram.m" lineNumber:316 description:@"-startRunLoop called more than once"];
  }

  self->_runLoopState = 1;
  objc_sync_exit(v6);

  CFRunLoopRun();
  v7 = self->_runLoopStateLock;
  objc_sync_enter(v7);
  runLoopState = self->_runLoopState;
  if ((runLoopState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"CLIProgram.m" lineNumber:324 description:@"run loop exited without endRunLoopWithSuccess: being called"];
  }

  self->_runLoopState = 0;
  objc_sync_exit(v7);

  return runLoopState == 2;
}

- (void)endRunLoopWithSuccess:(BOOL)success
{
  successCopy = success;
  v6 = self->_runLoopStateLock;
  objc_sync_enter(v6);
  if (self->_runLoopState != 1)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CLIProgram.m" lineNumber:333 description:@"-endRunLoopWithSuccess: called without -startRunLoop"];
  }

  v7 = 2;
  if (!successCopy)
  {
    v7 = 3;
  }

  self->_runLoopState = v7;
  objc_sync_exit(v6);

  Main = CFRunLoopGetMain();

  CFRunLoopStop(Main);
}

@end