@interface SKTaskExecuter
- (BOOL)waitWithError:(id *)a3;
- (SKTaskExecuter)initWithTasks:(id)a3;
@end

@implementation SKTaskExecuter

- (SKTaskExecuter)initWithTasks:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKTaskExecuter;
  v6 = [(SKTaskExecuter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tasks, a3);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)a3
{
  v5 = [(SKTaskExecuter *)self tasks];
  [v5 enumerateObjectsUsingBlock:&stru_1000083C0];

  v6 = [(SKTaskExecuter *)self tasks];
  v7 = [NSPredicate predicateWithBlock:&stru_100008400];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  if ([v8 count])
  {
    do
    {
      [v8 enumerateObjectsUsingBlock:&stru_100008420];
      v9 = [(SKTaskExecuter *)self tasks];
      v10 = [NSPredicate predicateWithBlock:&stru_100008440];
      v11 = [v9 filteredArrayUsingPredicate:v10];

      v8 = v11;
    }

    while ([v11 count]);
  }

  else
  {
    v11 = v8;
  }

  v12 = [(SKTaskExecuter *)self tasks];
  [v12 enumerateObjectsUsingBlock:&stru_100008460];

  v13 = [(SKTaskExecuter *)self tasks];
  [v13 enumerateObjectsUsingBlock:&stru_100008480];

  v14 = [(SKTaskExecuter *)self tasks];
  v15 = [NSPredicate predicateWithBlock:&stru_1000084A0];
  v16 = [v14 filteredArrayUsingPredicate:v15];

  v17 = [v16 count];
  if (v17)
  {
    v18 = SKGetOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v16 count];
      v20 = [v16 objectAtIndexedSubscript:0];
      v21 = [v20 task];
      v23 = 136315650;
      v24 = "[SKTaskExecuter waitWithError:]";
      v25 = 2048;
      v26 = v19;
      v27 = 1024;
      v28 = [v21 terminationStatus];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: %lu tasks failed, first exit status %d", &v23, 0x1Cu);
    }

    if (a3)
    {
      *a3 = [SKError errorWithCode:140 userInfo:0];
    }
  }

  return v17 == 0;
}

@end