@interface CLIProgram
+ (BOOL)handleFormatOption:(id)a3 longOption:(id)a4 argument:(id)a5;
+ (CLIProgram)sharedProgram;
+ (id)commandToOptionsDict;
+ (id)nextOptionParser;
+ (void)handleFormatOptionInDictionary:(id)a3;
- (BOOL)startRunLoop;
- (CLIProgram)init;
- (NSString)programName;
- (int)main;
- (void)endRunLoopWithSuccess:(BOOL)a3;
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
  v3 = qword_1000157E8;
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
        v9 = [qword_1000157E8 objectForKey:{v8, v13}];
        v10 = [v9 _copiedSet];
        v11 = [v8 name];
        [v2 setObject:v10 forKeyedSubscript:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

+ (CLIProgram)sharedProgram
{
  if (objc_opt_class() != a1)
  {
    sub_100008368(a2, a1);
  }

  if (qword_100015800 != -1)
  {
    sub_1000083DC();
  }

  v4 = qword_100015808;

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

+ (BOOL)handleFormatOption:(id)a3 longOption:(id)a4 argument:(id)a5
{
  v7 = a5;
  v8 = [a4 isEqualToString:@"format"];
  if (v8)
  {
    sub_1000060B8(a1, v7);
  }

  return v8;
}

+ (void)handleFormatOptionInDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"format"];
  if (v4)
  {
    sub_1000060B8(a1, v4);
  }

  _objc_release_x1();
}

+ (id)nextOptionParser
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 arguments];

  v4 = qword_1000157C0;
  v5 = [v3 count];
  v6 = [NSIndexSet indexSetWithIndexesInRange:v4, &v5[-qword_1000157C0]];
  v7 = [v3 objectsAtIndexes:v6];
  v8 = v7;
  if (qword_1000157C0)
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
          sub_100007228(@"ambiguous command %@ - did you mean %@?", v16, v17, v18, v19, v20, v21, v22, v9);
        }

        else
        {
          sub_100007228(@"unknown command %@", v16, v17, v18, v19, v20, v21, v22, v9);
          sub_1000042D0(0);
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
    v6 = [v5 processName];
    v7 = self->_programName;
    self->_programName = v6;

    v3 = v6;
  }

  return v3;
}

- (int)main
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKeyedSubscript:@"PWD"];

  chdir([v5 fileSystemRepresentation]);
  v6 = objc_autoreleasePoolPush();
  v7 = [(CLIProgram *)self delegate];
  sub_100008278(self);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v7 shouldAutomaticallyRegisterCommands])
  {
    [(CLIProgram *)self registerAllCLICommands];
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 registerGlobalOptions];
  }

  v8 = +[CLIProgram nextOptionParser];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v7 parseGlobalOptions:v8])
  {
    v15 = 1;
  }

  else
  {
    v9 = +[CLIProgram nextOptionParser];
    [v9 validateArguments];
    v10 = [v9 command];
    v12 = [v9 commandName];
    v13 = v12;
    if (!v12)
    {
      v13 = [v10 name];
    }

    if (self)
    {
      objc_setProperty_nonatomic_copy(self, v11, v13, 40);
    }

    if (!v12)
    {
    }

    v14 = [v10 runWithOptions:v9];
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
    sub_1000083F0(a2, self);
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

- (void)endRunLoopWithSuccess:(BOOL)a3
{
  v3 = a3;
  v6 = self->_runLoopStateLock;
  objc_sync_enter(v6);
  if (self->_runLoopState != 1)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CLIProgram.m" lineNumber:333 description:@"-endRunLoopWithSuccess: called without -startRunLoop"];
  }

  v7 = 2;
  if (!v3)
  {
    v7 = 3;
  }

  self->_runLoopState = v7;
  objc_sync_exit(v6);

  Main = CFRunLoopGetMain();

  CFRunLoopStop(Main);
}

@end