@interface NDTPerf
+ (id)nowMinusPrevious:(id)previous;
+ (int64_t)cpuTime;
+ (int64_t)dirtyMemory;
+ (int64_t)wallTime;
- (NDTPerf)init;
- (double)cpuTimeMs;
- (id)description;
@end

@implementation NDTPerf

- (NDTPerf)init
{
  v6.receiver = self;
  v6.super_class = NDTPerf;
  v2 = [(NDTPerf *)&v6 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *buffer = 0u;
  v8 = 0u;
  v3 = getpid();
  if (!proc_pid_rusage(v3, 4, buffer))
  {
    v2->_dirtyMemory = *(&v11 + 1);
    v2->_cpuTime = *(&v8 + 1) + v8;
    v2->_wallTime = +[NDTPerf wallTime];
LABEL_5:
    v4 = v2;
    goto LABEL_6;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (double)cpuTimeMs
{
  cpuTime = [(NDTPerf *)self cpuTime];
  if (qword_100071CC8 != -1)
  {
    sub_10003BB70();
  }

  return *&qword_100071980 * cpuTime / 1000000.0;
}

+ (id)nowMinusPrevious:(id)previous
{
  previousCopy = previous;
  v4 = objc_alloc_init(NDTPerf);
  -[NDTPerf setDirtyMemory:](v4, "setDirtyMemory:", -[NDTPerf dirtyMemory](v4, "dirtyMemory") - [previousCopy dirtyMemory]);
  -[NDTPerf setCpuTime:](v4, "setCpuTime:", -[NDTPerf cpuTime](v4, "cpuTime") - [previousCopy cpuTime]);
  wallTime = [previousCopy wallTime];

  [(NDTPerf *)v4 setWallTime:[(NDTPerf *)v4 wallTime]- wallTime];

  return v4;
}

+ (int64_t)wallTime
{
  if (qword_100071CC0 != -1)
  {
    sub_10003BB84();
  }

  return (qword_100071CB8 * mach_absolute_time()) >> 8;
}

+ (int64_t)dirtyMemory
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  v2 = getpid();
  if (proc_pid_rusage(v2, 4, v4))
  {
    return 0;
  }

  else
  {
    return *(&v5 + 1);
  }
}

+ (int64_t)cpuTime
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = getpid();
  if (proc_pid_rusage(v2, 4, &v4))
  {
    return 0;
  }

  else
  {
    return *(&v5 + 1) + v5;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@:%p cpu=%lld, wall=%lld, dmem=%lld>", v4, self, [(NDTPerf *)self cpuTime], [(NDTPerf *)self wallTime], [(NDTPerf *)self dirtyMemory]];

  return v5;
}

@end