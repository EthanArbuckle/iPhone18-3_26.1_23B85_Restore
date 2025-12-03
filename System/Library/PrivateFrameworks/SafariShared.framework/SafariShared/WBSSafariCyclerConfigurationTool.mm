@interface WBSSafariCyclerConfigurationTool
- (WBSSafariCyclerConfigurationTool)init;
- (id)_commandWithName:(id)name;
- (id)_descriptionForErrorCode:(int64_t)code;
- (id)_errorWithCode:(int64_t)code;
- (id)_supportedCommands;
- (void)_configureDevice:(id)device;
- (void)_exitWithError:(id)error;
- (void)_fetchLastError:(id)error;
- (void)_fetchLogs:(id)logs;
- (void)_fetchStatus:(id)status;
- (void)_printUsage;
- (void)_resumeCycler:(id)cycler;
- (void)_runTest:(id)test;
- (void)_sendRequestToTest:(id)test;
- (void)_setConfigurationOption:(id)option;
- (void)_startCycler:(id)cycler;
- (void)_stopCycler:(id)cycler;
- (void)_waitForCyclerToFinish:(id)finish;
- (void)run;
@end

@implementation WBSSafariCyclerConfigurationTool

- (WBSSafariCyclerConfigurationTool)init
{
  v12.receiver = self;
  v12.super_class = WBSSafariCyclerConfigurationTool;
  v2 = [(WBSSafariCyclerConfigurationTool *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBSCyclerServiceProxy);
    cyclerProxy = v2->_cyclerProxy;
    v2->_cyclerProxy = v3;

    objc_initWeak(&location, v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__WBSSafariCyclerConfigurationTool_init__block_invoke;
    v9[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v10, &location);
    [(WBSCyclerServiceProxy *)v2->_cyclerProxy setConnectionInvalidationHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__WBSSafariCyclerConfigurationTool_init__block_invoke_2;
    v7[3] = &unk_1E7FC9DC0;
    objc_copyWeak(&v8, &location);
    [(WBSCyclerServiceProxy *)v2->_cyclerProxy setErrorHandler:v7];
    v5 = v2;
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __40__WBSSafariCyclerConfigurationTool_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _errorWithCode:4];
    [v3 _exitWithError:v2];

    WeakRetained = v3;
  }
}

void __40__WBSSafariCyclerConfigurationTool_init__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _exitWithError:v5];
  }
}

- (void)run
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  arguments = [processInfo arguments];

  if ([arguments count] <= 1)
  {
    [(WBSSafariCyclerConfigurationTool *)self _printUsage];
    [(WBSSafariCyclerConfigurationTool *)self _exitWithError:0];
    goto LABEL_9;
  }

  v4 = [arguments objectAtIndexedSubscript:1];
  v5 = [(WBSSafariCyclerConfigurationTool *)self _commandWithName:v4];

  if (v5)
  {
    v6 = [arguments subarrayWithRange:{2, objc_msgSend(arguments, "count") - 2}];
    v7 = [v5 invokeWithParameters:v6];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [(WBSSafariCyclerConfigurationTool *)self _printUsage];
  }

  [(WBSSafariCyclerConfigurationTool *)self _exitWithError:0];
LABEL_8:

LABEL_9:
}

- (id)_supportedCommands
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSSafariCyclerConfigurationTool__supportedCommands__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  if (_supportedCommands_onceToken != -1)
  {
    dispatch_once(&_supportedCommands_onceToken, block);
  }

  return _supportedCommands_commands;
}

void __54__WBSSafariCyclerConfigurationTool__supportedCommands__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = _supportedCommands_commands;
  _supportedCommands_commands = v2;

  v14 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"test" help:@"Shortcut to run either the sync or migration tests, if you don't need any special options"];
  [(_WBSSafariCyclerConfigurationCommand *)v14 setUsage:@"[sync|tab-sync|dav-sync|migration]"];
  [(_WBSSafariCyclerConfigurationCommand *)v14 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v14 setAction:sel__runTest_];
  [(_WBSSafariCyclerConfigurationCommand *)v14 setArgumentCount:1];
  [_supportedCommands_commands addObject:v14];
  v13 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"start" help:@"Start the cycler, or restart it if it's already running."];
  [(_WBSSafariCyclerConfigurationCommand *)v13 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v13 setAction:sel__startCycler_];
  [_supportedCommands_commands addObject:v13];
  v12 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"stop" help:@"Stop the cycler if it's running."];
  [(_WBSSafariCyclerConfigurationCommand *)v12 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v12 setAction:sel__stopCycler_];
  [_supportedCommands_commands addObject:v12];
  v4 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"resume" help:@"Resume a test that has been stopped (either manually or because of a test failure)"];
  [(_WBSSafariCyclerConfigurationCommand *)v4 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v4 setAction:sel__resumeCycler_];
  [_supportedCommands_commands addObject:v4];
  v5 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"set" help:@"Set cycler configuration options."];
  [(_WBSSafariCyclerConfigurationCommand *)v5 setUsage:@"<key> <value>\nValid keys:\n    test-suite            The name of the test suite class to run\n    seed                  The seed to use for random number generation\n    maximum-iterations    The maximum iterations to run. Defaults to 0 (no maximum)"];
  [(_WBSSafariCyclerConfigurationCommand *)v5 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v5 setAction:sel__setConfigurationOption_];
  [(_WBSSafariCyclerConfigurationCommand *)v5 setArgumentCount:2];
  [_supportedCommands_commands addObject:v5];
  v6 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"send-request" help:@"Send a request to an ongoing test"];
  [(_WBSSafariCyclerConfigurationCommand *)v6 setUsage:@"<request string>"];
  [(_WBSSafariCyclerConfigurationCommand *)v6 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v6 setAction:sel__sendRequestToTest_];
  [(_WBSSafariCyclerConfigurationCommand *)v6 setArgumentCount:1];
  [_supportedCommands_commands addObject:v6];
  v7 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"configure-device" help:@"Configure the device to run the cycler (must be run as root)"];
  [(_WBSSafariCyclerConfigurationCommand *)v7 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v7 setAction:sel__configureDevice_];
  [_supportedCommands_commands addObject:v7];
  v8 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"status" help:@"Display the current status of the cycler"];
  [(_WBSSafariCyclerConfigurationCommand *)v8 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v8 setAction:sel__fetchStatus_];
  [_supportedCommands_commands addObject:v8];
  v9 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"logs" help:@"Display logs from the ongoing or last run test"];
  [(_WBSSafariCyclerConfigurationCommand *)v9 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v9 setAction:sel__fetchLogs_];
  [_supportedCommands_commands addObject:v9];
  v10 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"error" help:@"Display information about the last error encountered"];
  [(_WBSSafariCyclerConfigurationCommand *)v10 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v10 setAction:sel__fetchLastError_];
  [_supportedCommands_commands addObject:v10];
  v11 = [[_WBSSafariCyclerConfigurationCommand alloc] initWithName:@"wait" help:@"Wait for the cycler to finish running"];
  [(_WBSSafariCyclerConfigurationCommand *)v11 setTarget:*(a1 + 32)];
  [(_WBSSafariCyclerConfigurationCommand *)v11 setAction:sel__waitForCyclerToFinish_];
  [_supportedCommands_commands addObject:v11];
}

- (id)_commandWithName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _supportedCommands = [(WBSSafariCyclerConfigurationTool *)self _supportedCommands];
  v6 = [_supportedCommands countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_supportedCommands);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name caseInsensitiveCompare:nameCopy];

        if (!v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_supportedCommands countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_printUsage
{
  v17 = *MEMORY[0x1E69E9840];
  puts("Usage: safaricyclerctl <subcommand>\n");
  puts("Subcommands:");
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _supportedCommands = [(WBSSafariCyclerConfigurationTool *)self _supportedCommands];
  v4 = [_supportedCommands countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(_supportedCommands);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        name = [v8 name];
        uTF8String = [name UTF8String];
        help = [v8 help];
        printf("    %s\t\t%s\n", uTF8String, [help UTF8String]);
      }

      v5 = [_supportedCommands countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_exitWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = [errorCopy description];
    printf("Error: %s\n", [v4 UTF8String]);

    LODWORD(errorCopy) = 1;
  }

  exit(errorCopy);
}

- (id)_errorWithCode:(int64_t)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v5 = [(WBSSafariCyclerConfigurationTool *)self _descriptionForErrorCode:?];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"WBSSafariCyclerConfigurationToolErrorDomain" code:code userInfo:v6];

  return v7;
}

- (id)_descriptionForErrorCode:(int64_t)code
{
  if ((code - 1) > 3)
  {
    return @"A logging plist already exists; not overwriting it";
  }

  else
  {
    return off_1E7FCA218[code - 1];
  }
}

- (void)_runTest:(id)test
{
  testCopy = test;
  objc_initWeak(&location, self);
  firstObject = [testCopy firstObject];
  lowercaseString = [firstObject lowercaseString];

  v7 = [&unk_1F3A9B460 objectForKeyedSubscript:lowercaseString];
  if (!v7)
  {
    v8 = [(WBSSafariCyclerConfigurationTool *)self _errorWithCode:3];
    [(WBSSafariCyclerConfigurationTool *)self _exitWithError:v8];
  }

  cyclerProxy = self->_cyclerProxy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__WBSSafariCyclerConfigurationTool__runTest___block_invoke;
  v11[3] = &unk_1E7FCA180;
  objc_copyWeak(&v13, &location);
  v10 = lowercaseString;
  v12 = v10;
  [(WBSCyclerServiceProxy *)cyclerProxy setValue:v7 forConfigurationKey:@"test-suite" reply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __45__WBSSafariCyclerConfigurationTool__runTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained _exitWithError:v3];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__WBSSafariCyclerConfigurationTool__runTest___block_invoke_2;
    v7[3] = &unk_1E7FB8278;
    v7[4] = v5;
    v6 = MEMORY[0x1BFB13CE0](v7);
    if ([*(a1 + 32) isEqualToString:@"sync"])
    {
      [v5[1] setValue:@"1" forConfigurationKey:@"enable-cloudkit" reply:v6];
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

uint64_t __45__WBSSafariCyclerConfigurationTool__runTest___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _exitWithError:a2];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__WBSSafariCyclerConfigurationTool__runTest___block_invoke_3;
  v6[3] = &unk_1E7FB8278;
  v6[4] = v3;
  return [v4 startCyclingFromBeginning:1 reply:v6];
}

- (void)_startCycler:(id)cycler
{
  cyclerCopy = cycler;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WBSSafariCyclerConfigurationTool__startCycler___block_invoke;
  v6[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v7, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy startCyclingFromBeginning:1 reply:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__WBSSafariCyclerConfigurationTool__startCycler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitWithError:v3];
}

- (void)_stopCycler:(id)cycler
{
  cyclerCopy = cycler;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__WBSSafariCyclerConfigurationTool__stopCycler___block_invoke;
  v6[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v7, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy stopCyclingWithReply:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__WBSSafariCyclerConfigurationTool__stopCycler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitWithError:v3];
}

- (void)_resumeCycler:(id)cycler
{
  cyclerCopy = cycler;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__WBSSafariCyclerConfigurationTool__resumeCycler___block_invoke;
  v6[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v7, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy startCyclingFromBeginning:0 reply:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __50__WBSSafariCyclerConfigurationTool__resumeCycler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitWithError:v3];
}

- (void)_setConfigurationOption:(id)option
{
  optionCopy = option;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  lastObject = [optionCopy lastObject];
  firstObject = [optionCopy firstObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__WBSSafariCyclerConfigurationTool__setConfigurationOption___block_invoke;
  v8[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v9, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy setValue:lastObject forConfigurationKey:firstObject reply:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__WBSSafariCyclerConfigurationTool__setConfigurationOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitWithError:v3];
}

- (void)_sendRequestToTest:(id)test
{
  testCopy = test;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  firstObject = [testCopy firstObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__WBSSafariCyclerConfigurationTool__sendRequestToTest___block_invoke;
  v7[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v8, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy sendRequestToTestSuite:firstObject reply:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__WBSSafariCyclerConfigurationTool__sendRequestToTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitWithError:v3];
}

- (void)_configureDevice:(id)device
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:@"/Library/Preferences/Logging/Subsystems/com.apple.SafariShared.plist"];

  if (v5)
  {
    selfCopy2 = self;
    v7 = 0;
LABEL_8:
    v8 = [(WBSSafariCyclerConfigurationTool *)selfCopy2 _errorWithCode:v7];
    [(WBSSafariCyclerConfigurationTool *)self _exitWithError:v8];

    return;
  }

  if (([&unk_1F3A9B4B0 writeToFile:@"/Library/Preferences/Logging/Subsystems/com.apple.SafariShared.plist" atomically:1] & 1) == 0)
  {
    selfCopy2 = self;
    v7 = 1;
    goto LABEL_8;
  }

  [(WBSSafariCyclerConfigurationTool *)self _exitWithError:0];
}

- (void)_fetchStatus:(id)status
{
  statusCopy = status;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WBSSafariCyclerConfigurationTool__fetchStatus___block_invoke;
  v6[3] = &unk_1E7FCA1A8;
  objc_copyWeak(&v7, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy fetchStatusWithReply:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__WBSSafariCyclerConfigurationTool__fetchStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = WeakRetained;
      v8 = v5;
    }

    else
    {
      if ([v13 isConnectedToTestTarget])
      {
        v9 = "Yes";
      }

      else
      {
        v9 = "No";
      }

      printf("Connected to test target: %s\n", v9);
      v10 = [v13 activeTestSuiteName];
      printf("Active test suite: %s\n", [v10 UTF8String]);

      printf("Seed: %lu\n", [v13 seed]);
      if ([v13 isRunning])
      {
        v11 = "Yes";
      }

      else
      {
        v11 = "No";
      }

      printf("Running test: %s\n", v11);
      printf("Number of iterations: %lu\n", [v13 iterationCount]);
      [v13 executionTime];
      printf("Length of execution: %f seconds\n", v12);
      v7 = WeakRetained;
      v8 = 0;
    }

    [v7 _exitWithError:v8];
  }
}

- (void)_fetchLogs:(id)logs
{
  logsCopy = logs;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__WBSSafariCyclerConfigurationTool__fetchLogs___block_invoke;
  v6[3] = &unk_1E7FCA1D0;
  objc_copyWeak(&v7, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy fetchLogsWithReply:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__WBSSafariCyclerConfigurationTool__fetchLogs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      puts("Cycler logs:");
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v5;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v16 + 1) + 8 * v14);
            puts([v15 UTF8String]);
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      WeakRetained = v8;
      v9 = 0;
    }

    [WeakRetained _exitWithError:{v9, v16}];
  }
}

- (void)_fetchLastError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__WBSSafariCyclerConfigurationTool__fetchLastError___block_invoke;
  v6[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v7, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy fetchLastErrorWithReply:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__WBSSafariCyclerConfigurationTool__fetchLastError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 description];
    puts([v4 UTF8String]);

    [WeakRetained _exitWithError:0];
  }
}

- (void)_waitForCyclerToFinish:(id)finish
{
  finishCopy = finish;
  objc_initWeak(&location, self);
  cyclerProxy = self->_cyclerProxy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__WBSSafariCyclerConfigurationTool__waitForCyclerToFinish___block_invoke;
  v6[3] = &unk_1E7FCA1A8;
  objc_copyWeak(&v7, &location);
  [(WBSCyclerServiceProxy *)cyclerProxy fetchStatusWithReply:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __59__WBSSafariCyclerConfigurationTool__waitForCyclerToFinish___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _exitWithError:v6];
    }

    else
    {
      if ([v5 isRunning])
      {
        v9 = [MEMORY[0x1E696ABB0] defaultCenter];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __59__WBSSafariCyclerConfigurationTool__waitForCyclerToFinish___block_invoke_2;
        v11[3] = &unk_1E7FCA1F8;
        v11[4] = v8;
        v10 = [v9 addObserverForName:@"com.apple.SafariShared.Cycler.DidFinishRunningTest" object:0 queue:0 usingBlock:v11];
      }

      else
      {
        v9 = [v8 _errorWithCode:2];
        [v8 _exitWithError:v9];
      }
    }
  }
}

void __59__WBSSafariCyclerConfigurationTool__waitForCyclerToFinish___block_invoke_2(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"errorDomain"];

  if (v5)
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"errorCode"];
    v8 = [v7 unsignedIntegerValue];

    v9 = [v3 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"errorLocalizedDescription"];

    v11 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v11 errorWithDomain:v5 code:v8 userInfo:v12];
  }

  else
  {
    v13 = 0;
  }

  [*(a1 + 32) _exitWithError:v13];
}

@end