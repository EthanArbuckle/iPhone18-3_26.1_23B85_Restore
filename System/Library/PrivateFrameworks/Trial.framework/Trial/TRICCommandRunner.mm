@interface TRICCommandRunner
+ (BOOL)runWithRootPrivilegesDroppedDescription:(const char *)a3 block:(id)a4;
+ (id)convertToTrialToolArgs:(id)a3;
+ (id)convertToTrialToolCommand:(id)a3;
+ (id)runCommandAsync:(id)a3 withArgs:(id)a4 taskOutputOut:(id *)a5 error:(id *)a6;
+ (int)_withLoggingRunCommand:(id)a3 arguments:(id)a4 output:(id *)a5;
+ (int)_withoutLoggingRunCommand:(id)a3 withArgs:(id)a4 output:(id *)a5 error:(id *)a6;
+ (int)runCommand:(id)a3 withArgs:(id)a4 withTimesToAttemptOnTimeOut:(int64_t)a5 withTimeOut:(double)a6;
+ (int)runCommandAsTrialDaemonUserName:(id)a3 withArgs:(id)a4 output:(id *)a5 error:(id *)a6;
@end

@implementation TRICCommandRunner

+ (id)convertToTrialToolCommand:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 pathComponents];

  v7 = [v5 initWithArray:v6];
  [v7 removeLastObject];
  [v7 addObject:@"trialtool"];
  v8 = [MEMORY[0x277CCACA8] pathWithComponents:v7];

  return v8;
}

+ (id)convertToTrialToolArgs:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v3];
  v5 = [v4 firstObject];
  v6 = [&unk_28436FA88 allKeys];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    [v4 removeObjectAtIndex:0];
    v8 = [&unk_28436FA88 valueForKey:v5];
    v9 = [v8 componentsSeparatedByString:@" "];
    v10 = [v9 arrayByAddingObjectsFromArray:v4];
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

+ (BOOL)runWithRootPrivilegesDroppedDescription:(const char *)a3 block:(id)a4
{
  v5 = a4;
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
        fprintf(v11, "trialcontroller was invoked as root; temporarily switched to account %s to carry out operation %s.\n", pw_name, a3);
        v5[2](v5);
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

  v5[2](v5);
LABEL_3:
  v6 = 1;
LABEL_11:

  return v6;
}

+ (int)runCommand:(id)a3 withArgs:(id)a4 withTimesToAttemptOnTimeOut:(int64_t)a5 withTimeOut:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v13 = MEMORY[0x277D85DF8];
  do
  {
    if (v12 >= a5)
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
    v26 = a1;
    v22 = v10;
    v23 = v11;
    v16 = v14;
    v24 = v16;
    dispatch_async(v15, block);

    v17 = dispatch_time(0, (a6 * 1000000000.0));
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

+ (int)_withoutLoggingRunCommand:(id)a3 withArgs:(id)a4 output:(id *)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"TRICCommandRunner.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"command"}];

    if (v13)
    {
LABEL_3:
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"TRICCommandRunner.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];

  if (a5)
  {
LABEL_4:
    *a5 = 0;
  }

LABEL_5:
  if (a6)
  {
    *a6 = 0;
  }

  v20 = 0;
  v14 = [a1 runCommandAsync:v11 withArgs:v13 taskOutputOut:&v20 error:a6];
  if (v14)
  {
    v15 = [v20 readDataToEndOfFile];
    [v14 waitUntilExit];
    if (a5 && v15)
    {
      *a5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
    }

    v16 = [v14 terminationStatus];
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

+ (id)runCommandAsync:(id)a3 withArgs:(id)a4 taskOutputOut:(id *)a5 error:(id *)a6
{
  v9 = a4;
  v10 = [TRIStandardPaths resolveHardCodedPath:a3];
  v11 = [MEMORY[0x277CCAC38] processInfo];
  v12 = [v11 environment];
  v13 = [v12 mutableCopy];

  [v13 setObject:0 forKeyedSubscript:@"OS_ACTIVITY_DT_MODE"];
  v14 = objc_opt_new();
  [v14 setEnvironment:v13];
  v15 = [v9 mutableCopy];

  [v15 insertObject:v10 atIndex:0];
  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/usr/local/bin/dvdo"];
  [v14 setExecutableURL:v16];

  [v14 setArguments:v15];
  v17 = [MEMORY[0x277CCAC10] pipe];
  [v14 setStandardOutput:v17];
  [v14 setStandardError:v17];
  if (a5)
  {
    v18 = [v17 fileHandleForReading];
    v19 = *a5;
    *a5 = v18;
  }

  v25 = 0;
  v20 = [v14 launchAndReturnError:&v25];
  v21 = v25;
  v22 = v21;
  if ((v20 & 1) == 0)
  {
    if (a6)
    {
      v23 = v21;
      *a6 = v22;
    }

    v14 = 0;
  }

  return v14;
}

+ (int)_withLoggingRunCommand:(id)a3 arguments:(id)a4 output:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v21 = 0;
  v22 = 0;
  v9 = a4;
  v10 = [a1 _withoutLoggingRunCommand:v8 withArgs:v9 output:&v22 error:&v21];
  v11 = v22;
  v12 = v21;
  v13 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global];

  v14 = [v13 componentsJoinedByString:{@", "}];

  v15 = TRILogCategory_InternalTool();
  v16 = v15;
  if ((v10 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v24 = v8;
      *&v24[8] = 2112;
      *&v24[10] = v14;
      *&v24[18] = 2112;
      *&v24[20] = v12;
      _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "Failed to spawn subprocess %@ [%@]: %@", buf, 0x20u);
    }

LABEL_14:
    [TRICPrinter printNewlineUsingStderr:1 format:@"Spawned subprocess: %@ [%@]", v8, v14];
    [TRICPrinter printNewlineUsingStderr:1 format:@"Subprocess %@ output: %@", v8, v11];
    [TRICPrinter printNewlineUsingStderr:1 format:@"Subprocess %@ failed with status %d; error: %@", v8, v10, v12];
    if (!a5)
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
    *&v24[6] = v8;
    *&v24[14] = 2112;
    *&v24[16] = v14;
    _os_log_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_DEFAULT, "Spawned subprocess with exit code %d: %@ [%@]", buf, 0x1Cu);
  }

  v17 = TRILogCategory_InternalTool();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v24 = v8;
    *&v24[8] = 2112;
    *&v24[10] = v11;
    _os_log_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEFAULT, "Subprocess %@ output: %@", buf, 0x16u);
  }

  if (v10 || v12)
  {
    goto LABEL_14;
  }

  if (a5)
  {
LABEL_9:
    v18 = v11;
    *a5 = v11;
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

+ (int)runCommandAsTrialDaemonUserName:(id)a3 withArgs:(id)a4 output:(id *)a5 error:(id *)a6
{
  v17[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"-q";
  v17[1] = @"-f";
  v10 = a4;
  v11 = a3;
  v12 = +[TRICEnvironmentManager trialDaemonUserName];
  v17[2] = v12;
  v17[3] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  v14 = [v13 arrayByAddingObjectsFromArray:v10];

  LODWORD(a6) = [a1 runCommand:@"/usr/bin/login" withArgs:v14 output:a5 error:a6];
  v15 = *MEMORY[0x277D85DE8];
  return a6;
}

@end