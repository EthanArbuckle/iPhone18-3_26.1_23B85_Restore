@interface PLFileDescriptorFuse
+ (void)checkFileDescriptorFuse;
+ (void)logRecentOpenFiles;
@end

@implementation PLFileDescriptorFuse

+ (void)logRecentOpenFiles
{
  v18 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAEE230](a1, a2))
  {
    v11.rlim_cur = 0;
    v11.rlim_max = 0;
    v2 = getrlimit(8, &v11);
    v3 = PLBackendGetLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (v2 < 0)
    {
      if (v4)
      {
        v8 = *__error();
        v9 = __error();
        v10 = strerror(*v9);
        *buf = 67109378;
        *v17 = v8;
        *&v17[4] = 2082;
        *&v17[6] = v10;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Unable to get the maximum number of open files RLIMIT_NOFILE: %d %{public}s", buf, 0x12u);
      }
    }

    else
    {
      if (v4)
      {
        *buf = 134218240;
        *v17 = v11.rlim_cur;
        *&v17[8] = 2048;
        *&v17[10] = v11.rlim_max;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Maximum number of open files RLIMIT_NOFILE, cur: %llu, max: %llu", buf, 0x16u);
      }

      rlim_cur = v11.rlim_cur;
      if (SLODWORD(v11.rlim_cur) >= 1)
      {
        if (LODWORD(v11.rlim_cur) >= 0x19)
        {
          v6 = LODWORD(v11.rlim_cur) - 25;
        }

        else
        {
          v6 = 0;
        }

        do
        {
          if (fcntl(v6, 50, buf) != -1)
          {
            v7 = PLBackendGetLog();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              *v12 = 67109378;
              v13 = v6;
              v14 = 2080;
              v15 = buf;
              _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "fd %d: %s", v12, 0x12u);
            }
          }

          ++v6;
        }

        while (v6 < rlim_cur);
      }
    }
  }
}

+ (void)checkFileDescriptorFuse
{
  v3 = open("/dev/null", 0);
  if (v3 < 0)
  {
    if (*__error() == 24 || *__error() == 23)
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "File descriptor fuse blown", v5, 2u);
      }

      [a1 logRecentOpenFiles];
      qword_1EAFF9EC8 = "File descriptor fuse blown";
      __break(1u);
    }
  }

  else
  {

    close(v3);
  }
}

@end