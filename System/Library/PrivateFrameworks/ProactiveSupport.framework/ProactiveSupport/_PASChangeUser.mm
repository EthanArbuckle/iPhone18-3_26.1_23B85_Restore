@interface _PASChangeUser
+ (BOOL)becomeCurrentUser;
@end

@implementation _PASChangeUser

+ (BOOL)becomeCurrentUser
{
  v26 = *MEMORY[0x1E69E9840];
  if (getuid())
  {
    v2 = 1;
    goto LABEL_16;
  }

  *__error() = 0;
  v3 = getpwnam("mobile");
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v22 = 136315138;
      v23 = v17;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "Warning: failed to get pwInfo: %s\n";
      v15 = 12;
      goto LABEL_21;
    }

LABEL_15:
    v2 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  if (!v3->pw_uid)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "Warning: got pwInfo for uid=0.\n";
      v15 = 2;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = getenv("LLVM_PROFILE_FILE");
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    v8 = [v7 stringValue];
    v9 = [v6 stringByReplacingOccurrencesOfString:@"%p" withString:v8];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v22 = 138412290;
      v23 = v9;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Retaining write permission to proile data file: %@", &v22, 0xCu);
    }

    chmod([v9 fileSystemRepresentation], 0x1B6u);
  }

  *__error() = 0;
  if (setuid(v4->pw_uid) || !getuid())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      pw_name = v4->pw_name;
      v11 = __error();
      v12 = strerror(*v11);
      v22 = 136315394;
      v23 = pw_name;
      v24 = 2080;
      v25 = v12;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "Warning: failed to setuid to account %s: %s\n";
      v15 = 22;
LABEL_21:
      _os_log_error_impl(&dword_1A7F47000, v13, OS_LOG_TYPE_ERROR, v14, &v22, v15);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v2 = 1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v20 = v4->pw_name;
    pw_uid = v4->pw_uid;
    v22 = 136315394;
    v23 = v20;
    v24 = 1024;
    LODWORD(v25) = pw_uid;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Dropping root privileges to %s (%i)", &v22, 0x12u);
  }

LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

@end