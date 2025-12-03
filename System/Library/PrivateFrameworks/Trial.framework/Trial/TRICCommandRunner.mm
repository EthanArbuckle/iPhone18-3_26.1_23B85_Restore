@interface TRICCommandRunner
+ (BOOL)runWithRootPrivilegesDroppedDescription:(const char *)description block:(id)block;
+ (id)convertToTrialToolArgs:(id)args;
+ (id)convertToTrialToolCommand:(id)command;
+ (id)runCommandAsync:(id)async withArgs:(id)args taskOutputOut:(id *)out error:(id *)error;
+ (int)_withLoggingRunCommand:(id)command arguments:(id)arguments output:(id *)output;
+ (int)_withoutLoggingRunCommand:(id)command withArgs:(id)args output:(id *)output error:(id *)error;
+ (int)runCommand:(id)command withArgs:(id)args withTimesToAttemptOnTimeOut:(int64_t)out withTimeOut:(double)timeOut;
+ (int)runCommandAsTrialDaemonUserName:(id)name withArgs:(id)args output:(id *)output error:(id *)error;
@end

@implementation TRICCommandRunner

+ (id)convertToTrialToolCommand:(id)command
{
  v3 = MEMORY[0x277CBEB18];
  commandCopy = command;
  v5 = [v3 alloc];
  pathComponents = [commandCopy pathComponents];

  v7 = [v5 initWithArray:pathComponents];
  [v7 removeLastObject];
  [v7 addObject:@"trialtool"];
  v8 = [MEMORY[0x277CCACA8] pathWithComponents:v7];

  return v8;
}

+ (id)convertToTrialToolArgs:(id)args
{
  argsCopy = args;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:argsCopy];
  firstObject = [v4 firstObject];
  allKeys = [&unk_28436FA88 allKeys];
  v7 = [allKeys containsObject:firstObject];

  if (v7)
  {
    [v4 removeObjectAtIndex:0];
    v8 = [&unk_28436FA88 valueForKey:firstObject];
    v9 = [v8 componentsSeparatedByString:@" "];
    v10 = [v9 arrayByAddingObjectsFromArray:v4];
  }

  else
  {
    v10 = argsCopy;
  }

  return v10;
}

+ (BOOL)runWithRootPrivilegesDroppedDescription:(const char *)description block:(id)block
{
  blockCopy = block;
  if (!geteuid())
  {
    v7 = +[TRICEnvironmentManager getLoginPasswd];
    if (v7)
    {
      v8 = v7;
      *__error() = 0;
      v9 = seteuid(v8->pw_uid);
      v10 = MEMORY[0x277D85DF8];
      v11 = *MEMORY[0x277D85DF8];
      pw_name = v8->pw_name;
      if (v9)
      {
        v13 = __error();
        strerror(*v13);
        v14 = *__error();
        fprintf(v11, "Warning: failed to seteuid() to account %s: %s (%d)\n");
      }

      else
      {
        fprintf(v11, "trialcontroller was invoked as root; temporarily switched to account %s to carry out operation %s.\n", pw_name, description);
        blockCopy[2](blockCopy);
        if (!seteuid(0))
        {
          goto LABEL_3;
        }

        v15 = *v10;
        v16 = __error();
        strerror(*v16);
        v17 = *__error();
        fprintf(v15, "Warning: failed to seteuid() back to root: %s (%d)\n");
      }
    }

    else
    {
      fwrite("Unable to get a valid UID, which may be because you attempted to run this command as root. Please log back in as a user and try again.\n", 0x87uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    v6 = 0;
    goto LABEL_11;
  }

  blockCopy[2](blockCopy);
LABEL_3:
  v6 = 1;
LABEL_11:

  return v6;
}

+ (int)runCommand:(id)command withArgs:(id)args withTimesToAttemptOnTimeOut:(int64_t)out withTimeOut:(double)timeOut
{
  commandCopy = command;
  argsCopy = args;
  v12 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v13 = MEMORY[0x277D85DF8];
  do
  {
    if (v12 >= out)
    {
      break;
    }

    v14 = dispatch_semaphore_create(0);
    v15 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__TRICCommandRunner_runCommand_withArgs_withTimesToAttemptOnTimeOut_withTimeOut___block_invoke;
    block[3] = &unk_27885DEC0;
    v25 = &v27;
    selfCopy = self;
    v22 = commandCopy;
    v23 = argsCopy;
    v16 = v14;
    v24 = v16;
    dispatch_async(v15, block);

    v17 = dispatch_time(0, (timeOut * 1000000000.0));
    if (!dispatch_semaphore_wait(v16, v17))
    {
      goto LABEL_6;
    }

    fwrite("Warning: Command timed out.\n", 0x1CuLL, 1uLL, *v13);
    if (*(v28 + 6))
    {
      fprintf(*v13, "Retrying command... (attempt %ld)\n", ++v12);
      v18 = 1;
    }

    else
    {
LABEL_6:
      v18 = 0;
    }
  }

  while ((v18 & 1) != 0);
  v19 = *(v28 + 6);
  _Block_object_dispose(&v27, 8);

  return v19;
}

intptr_t __81__TRICCommandRunner_runCommand_withArgs_withTimesToAttemptOnTimeOut_withTimeOut___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 64) _withLoggingRunCommand:*(a1 + 32) arguments:*(a1 + 40) output:0];
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

+ (int)_withoutLoggingRunCommand:(id)command withArgs:(id)args output:(id *)output error:(id *)error
{
  commandCopy = command;
  argsCopy = args;
  v13 = argsCopy;
  if (commandCopy)
  {
    if (argsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRICCommandRunner.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"command"}];

    if (v13)
    {
LABEL_3:
      if (!output)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRICCommandRunner.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];

  if (output)
  {
LABEL_4:
    *output = 0;
  }

LABEL_5:
  if (error)
  {
    *error = 0;
  }

  v20 = 0;
  v14 = [self runCommandAsync:commandCopy withArgs:v13 taskOutputOut:&v20 error:error];
  if (v14)
  {
    readDataToEndOfFile = [v20 readDataToEndOfFile];
    [v14 waitUntilExit];
    if (output && readDataToEndOfFile)
    {
      *output = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:readDataToEndOfFile encoding:4];
    }

    terminationStatus = [v14 terminationStatus];
  }

  else
  {
    terminationStatus = -1;
  }

  return terminationStatus;
}

+ (id)runCommandAsync:(id)async withArgs:(id)args taskOutputOut:(id *)out error:(id *)error
{
  argsCopy = args;
  v10 = [TRIStandardPaths resolveHardCodedPath:async];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v13 = [environment mutableCopy];

  [v13 setObject:0 forKeyedSubscript:@"OS_ACTIVITY_DT_MODE"];
  v14 = objc_opt_new();
  [v14 setEnvironment:v13];
  v15 = [argsCopy mutableCopy];

  [v15 insertObject:v10 atIndex:0];
  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/usr/local/bin/dvdo"];
  [v14 setExecutableURL:v16];

  [v14 setArguments:v15];
  pipe = [MEMORY[0x277CCAC10] pipe];
  [v14 setStandardOutput:pipe];
  [v14 setStandardError:pipe];
  if (out)
  {
    fileHandleForReading = [pipe fileHandleForReading];
    v19 = *out;
    *out = fileHandleForReading;
  }

  v25 = 0;
  v20 = [v14 launchAndReturnError:&v25];
  v21 = v25;
  v22 = v21;
  if ((v20 & 1) == 0)
  {
    if (error)
    {
      v23 = v21;
      *error = v22;
    }

    v14 = 0;
  }

  return v14;
}

+ (int)_withLoggingRunCommand:(id)command arguments:(id)arguments output:(id *)output
{
  v25 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v21 = 0;
  v22 = 0;
  argumentsCopy = arguments;
  v10 = [self _withoutLoggingRunCommand:commandCopy withArgs:argumentsCopy output:&v22 error:&v21];
  v11 = v22;
  v12 = v21;
  v13 = [argumentsCopy _pas_mappedArrayWithTransform:&__block_literal_global];

  v14 = [v13 componentsJoinedByString:{@", "}];

  v15 = TRILogCategory_InternalTool();
  v16 = v15;
  if ((v10 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v24 = commandCopy;
      *&v24[8] = 2112;
      *&v24[10] = v14;
      *&v24[18] = 2112;
      *&v24[20] = v12;
      _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "Failed to spawn subprocess %@ [%@]: %@", buf, 0x20u);
    }

LABEL_14:
    [TRICPrinter printNewlineUsingStderr:1 format:@"Spawned subprocess: %@ [%@]", commandCopy, v14];
    [TRICPrinter printNewlineUsingStderr:1 format:@"Subprocess %@ output: %@", commandCopy, v11];
    [TRICPrinter printNewlineUsingStderr:1 format:@"Subprocess %@ failed with status %d; error: %@", commandCopy, v10, v12];
    if (!output)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v24 = v10;
    *&v24[4] = 2112;
    *&v24[6] = commandCopy;
    *&v24[14] = 2112;
    *&v24[16] = v14;
    _os_log_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_DEFAULT, "Spawned subprocess with exit code %d: %@ [%@]", buf, 0x1Cu);
  }

  v17 = TRILogCategory_InternalTool();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v24 = commandCopy;
    *&v24[8] = 2112;
    *&v24[10] = v11;
    _os_log_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEFAULT, "Subprocess %@ output: %@", buf, 0x16u);
  }

  if (v10 || v12)
  {
    goto LABEL_14;
  }

  if (output)
  {
LABEL_9:
    v18 = v11;
    *output = v11;
  }

LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

id __61__TRICCommandRunner__withLoggingRunCommand_arguments_output___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"%@", v3];

  return v4;
}

+ (int)runCommandAsTrialDaemonUserName:(id)name withArgs:(id)args output:(id *)output error:(id *)error
{
  v17[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"-q";
  v17[1] = @"-f";
  argsCopy = args;
  nameCopy = name;
  v12 = +[TRICEnvironmentManager trialDaemonUserName];
  v17[2] = v12;
  v17[3] = nameCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  v14 = [v13 arrayByAddingObjectsFromArray:argsCopy];

  LODWORD(error) = [self runCommand:@"/usr/bin/login" withArgs:v14 output:output error:error];
  v15 = *MEMORY[0x277D85DE8];
  return error;
}

@end