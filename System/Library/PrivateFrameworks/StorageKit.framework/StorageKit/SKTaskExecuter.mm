@interface SKTaskExecuter
- (BOOL)waitWithError:(id *)error;
- (SKTaskExecuter)initWithTasks:(id)tasks;
@end

@implementation SKTaskExecuter

- (SKTaskExecuter)initWithTasks:(id)tasks
{
  tasksCopy = tasks;
  v9.receiver = self;
  v9.super_class = SKTaskExecuter;
  v6 = [(SKTaskExecuter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tasks, tasks);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  tasks = [(SKTaskExecuter *)self tasks];
  [tasks enumerateObjectsUsingBlock:&__block_literal_global_166];

  tasks2 = [(SKTaskExecuter *)self tasks];
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_170];
  v8 = [tasks2 filteredArrayUsingPredicate:v7];

  if ([v8 count])
  {
    do
    {
      [v8 enumerateObjectsUsingBlock:&__block_literal_global_172];
      tasks3 = [(SKTaskExecuter *)self tasks];
      v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_174];
      v11 = [tasks3 filteredArrayUsingPredicate:v10];

      v8 = v11;
    }

    while ([v11 count]);
  }

  else
  {
    v11 = v8;
  }

  tasks4 = [(SKTaskExecuter *)self tasks];
  [tasks4 enumerateObjectsUsingBlock:&__block_literal_global_176];

  tasks5 = [(SKTaskExecuter *)self tasks];
  [tasks5 enumerateObjectsUsingBlock:&__block_literal_global_178];

  tasks6 = [(SKTaskExecuter *)self tasks];
  v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_180];
  v16 = [tasks6 filteredArrayUsingPredicate:v15];

  v17 = [v16 count];
  if (v17)
  {
    v18 = SKGetOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v16 count];
      v20 = [v16 objectAtIndexedSubscript:0];
      task = [v20 task];
      v24 = 136315650;
      v25 = "[SKTaskExecuter waitWithError:]";
      v26 = 2048;
      v27 = v19;
      v28 = 1024;
      terminationStatus = [task terminationStatus];
      _os_log_impl(&dword_26BBB8000, v18, OS_LOG_TYPE_ERROR, "%s: %lu tasks failed, first exit status %d", &v24, 0x1Cu);
    }

    if (error)
    {
      *error = [SKError errorWithCode:140 userInfo:0];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17 == 0;
}

void __32__SKTaskExecuter_waitWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 task];
  [v2 launch];
}

uint64_t __32__SKTaskExecuter_waitWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 task];
  v3 = [v2 isRunning];

  return v3;
}

void __32__SKTaskExecuter_waitWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = [v10 stdoutParser];

  if (v2)
  {
    v3 = [v10 stdoutParser];
    v4 = [v10 stdoutHandle];
    v5 = [v4 readDataUpToLength:4096 error:0];
    [v3 parseData:v5];
  }

  v6 = [v10 stderrParser];

  if (v6)
  {
    v7 = [v10 stderrParser];
    v8 = [v10 stderrHandle];
    v9 = [v8 readDataUpToLength:4096 error:0];
    [v7 parseData:v9];
  }
}

uint64_t __32__SKTaskExecuter_waitWithError___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 task];
  v3 = [v2 isRunning];

  return v3;
}

void __32__SKTaskExecuter_waitWithError___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 task];
  [v2 waitUntilExit];
}

void __32__SKTaskExecuter_waitWithError___block_invoke_6(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = [v10 stderrParser];

  if (v2)
  {
    v3 = [v10 stdoutParser];
    v4 = [v10 stdoutHandle];
    v5 = [v4 readDataToEndOfFile];
    [v3 parseData:v5];
  }

  v6 = [v10 stderrParser];

  if (v6)
  {
    v7 = [v10 stderrParser];
    v8 = [v10 stderrHandle];
    v9 = [v8 readDataToEndOfFile];
    [v7 parseData:v9];
  }
}

@end