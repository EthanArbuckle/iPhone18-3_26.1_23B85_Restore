@interface _PASPosixUtils
+ (int)runCommandWithPath:(const char *)path argv:(const char *)argv envp:(const char *)envp handleStdout:(id)stdout handleStderr:(id)stderr;
+ (int)runCommandWithPath:(const char *)path argv:(const char *)argv envp:(const char *)envp stdoutData:(id *)data stderrData:(id *)stderrData;
@end

@implementation _PASPosixUtils

+ (int)runCommandWithPath:(const char *)path argv:(const char *)argv envp:(const char *)envp stdoutData:(id *)data stderrData:(id *)stderrData
{
  if (data)
  {
    v13 = objc_opt_new();
    if (stderrData)
    {
LABEL_3:
      v14 = objc_opt_new();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (stderrData)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  handleData = [v13 handleData];
  handleData2 = [v14 handleData];
  v17 = [self runCommandWithPath:path argv:argv envp:envp handleStdout:handleData handleStderr:handleData2];

  if (data)
  {
    *data = [v13 allData];
  }

  if (stderrData)
  {
    *stderrData = [v14 allData];
  }

  return v17;
}

+ (int)runCommandWithPath:(const char *)path argv:(const char *)argv envp:(const char *)envp handleStdout:(id)stdout handleStderr:(id)stderr
{
  v42[1] = *MEMORY[0x1E69E9840];
  stdoutCopy = stdout;
  stderrCopy = stderr;
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("_PASPosixUtils-runCommandWithPath", v13);

  v35 = 0;
  v15 = dispatch_group_create();
  v34 = 0;
  posix_spawn_file_actions_init(&v34);
  if (!stdoutCopy)
  {
    v16 = 0;
    if (stderrCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v16 = objc_opt_new();
  v17 = [v16 setupWithSubprocessFd:1 fileActions:&v34 queue:v14 group:v15 readErrno:&v35];
  if (v17 < 0)
  {
    v20 = v17;
    v18 = 0;
    goto LABEL_29;
  }

  if (!stderrCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18 = objc_opt_new();
  v19 = [v18 setupWithSubprocessFd:2 fileActions:&v34 queue:v14 group:v15 readErrno:&v35];
  if (v19 < 0)
  {
    v20 = v19;
    goto LABEL_29;
  }

LABEL_8:
  v33 = -1;
  v42[0] = 0;
  if (envp)
  {
    envpCopy = envp;
  }

  else
  {
    envpCopy = v42;
  }

  v22 = posix_spawn(&v33, path, &v34, 0, argv, envpCopy);
  if (v22)
  {
    v23 = v22;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = strerror(v23);
      *buf = 136315650;
      pathCopy2 = path;
      v38 = 2080;
      v39 = v31;
      v40 = 1024;
      v41 = v23;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "runCommandWithPath failed to spawn %s: %s (%d)", buf, 0x1Cu);
    }

    *__error() = v23;
  }

  else
  {
    [v16 startReadWithHandler:stdoutCopy];
    [v18 startReadWithHandler:stderrCopy];
    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v32 = 1;
    do
    {
      *__error() = 0;
    }

    while (waitpid(v33, &v32, 0) < 0 && *__error() == 4);
    if (*__error())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = __error();
        v25 = strerror(*v24);
        v26 = *__error();
        *buf = 136315394;
        pathCopy2 = v25;
        v38 = 1024;
        LODWORD(v39) = v26;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "runCommandWithPath failed on waitpid: %s (%d)", buf, 0x12u);
      }
    }

    else
    {
      v27 = v32;
      if ((v32 & 0x7F) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          pathCopy2 = path;
          v38 = 1024;
          LODWORD(v39) = v27;
          _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "runCommandWithPath subprocess %s did not exit cleanly (status %d)", buf, 0x12u);
        }

        *__error() = 5;
      }

      else
      {
        v28 = v35;
        if (!v35)
        {
          v20 = BYTE1(v32);
          goto LABEL_29;
        }

        *__error() = v28;
      }
    }
  }

  v20 = -1;
LABEL_29:

  v29 = *MEMORY[0x1E69E9840];
  return v20;
}

@end