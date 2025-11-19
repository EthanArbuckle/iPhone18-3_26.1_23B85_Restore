@interface PLThreadInfo
- (BOOL)isEqualToThreadInfo:(id)a3;
- (PLThreadInfo)initWithThread:(unint64_t)a3 inProcess:(int)a4;
- (id)description;
- (id)diffSinceBaseline:(id)a3;
@end

@implementation PLThreadInfo

- (PLThreadInfo)initWithThread:(unint64_t)a3 inProcess:(int)a4
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 512);
  if (proc_pidinfo(a4, 10, a3, v9, 1288) <= 0 && (*__error() == 3 || *__error() == 22))
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(PLThreadInfo);
    [(PLThreadInfo *)v6 setUserTime:*&v9[0] / 1000000000.0];
    [(PLThreadInfo *)v6 setSystemTime:*(&v9[0] + 1) / 1000000000.0];
    [(PLThreadInfo *)v6 setThreadID:a3];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLThreadInfo *)self threadName];
  v5 = [(PLThreadInfo *)self threadID];
  [(PLThreadInfo *)self userTime];
  v7 = v6;
  [(PLThreadInfo *)self systemTime];
  v9 = [v3 stringWithFormat:@"%@ (0x%llx) %.2fs user %.2fs system", v4, v5, v7, v8];

  return v9;
}

- (id)diffSinceBaseline:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(PLThreadInfo);
    v6 = [(PLThreadInfo *)self threadName];
    [(PLThreadInfo *)v5 setThreadName:v6];

    [(PLThreadInfo *)v5 setThreadID:[(PLThreadInfo *)self threadID]];
    [(PLThreadInfo *)self systemTime];
    v8 = v7;
    [v4 systemTime];
    [(PLThreadInfo *)v5 setSystemTime:v8 - v9];
    [(PLThreadInfo *)self userTime];
    v11 = v10;
    [v4 userTime];
    v13 = v12;

    [(PLThreadInfo *)v5 setUserTime:v11 - v13];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (BOOL)isEqualToThreadInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [(PLThreadInfo *)self threadName];
  v6 = [v4 threadName];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_4;
  }

  [(PLThreadInfo *)self userTime];
  v9 = v8;
  [v4 userTime];
  if (v9 == v10)
  {
    [(PLThreadInfo *)self systemTime];
    v14 = v13;
    [v4 systemTime];
    v11 = v14 == v15;
  }

  else
  {
LABEL_4:
    v11 = 0;
  }

  return v11;
}

@end