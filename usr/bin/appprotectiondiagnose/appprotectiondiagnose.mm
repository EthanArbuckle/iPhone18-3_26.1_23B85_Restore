uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v13 = 0;
  v2 = [v1 getStateDumpWithError:&v13];
  v3 = v13;

  if (v2)
  {
    v4 = +[NSFileHandle fileHandleWithStandardOutput];
    v12 = v3;
    v5 = [v2 writeToFileHandle:v4 error:&v12];
    v6 = v12;

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v9 = __stderrp;
      v10 = [v6 description];
      fprintf(v9, "could not dump: %s\n", [v10 UTF8String]);

      v7 = 1;
    }
  }

  else
  {
    v8 = __stderrp;
    v4 = [v3 description];
    fprintf(v8, "could not get dump: %s\n", [v4 UTF8String]);
    v7 = 1;
    v6 = v3;
  }

  objc_autoreleasePoolPop(v0);
  return v7;
}