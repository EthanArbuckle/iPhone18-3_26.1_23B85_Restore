@interface SLAMObjC
+ (id)PerformRecovery:(id)recovery logSink:(id)sink;
+ (id)PerformScript:(unint64_t)script seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScript:(unint64_t)script sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithName:(id)name seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithName:(id)name sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithNameWithResult:(id)result seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithNameWithResult:(id)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithResult:(unint64_t)result seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithResult:(unint64_t)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)convertScriptResult:(void *)result;
@end

@implementation SLAMObjC

+ (id)PerformScript:(unint64_t)script seHandle:(id)handle logSink:(id)sink
{
  v8 = *MEMORY[0x29EDCA608];
  handle;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformScriptWithName:(id)name seHandle:(id)handle logSink:(id)sink
{
  v11 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  handleCopy = handle;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformRecovery:(id)recovery logSink:(id)sink
{
  v8 = *MEMORY[0x29EDCA608];
  recoveryCopy = recovery;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformScript:(unint64_t)script sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v11 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  handle;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformScriptWithName:(id)name sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v13 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  pathCopy = path;
  handle;
  sinkCopy = sink;
  operator new();
}

+ (id)convertScriptResult:(void *)result
{
  v19[1] = *MEMORY[0x29EDCA608];
  v4 = objc_opt_new();
  if (*(result + 64) == 1)
  {
    v5 = MEMORY[0x29EDB9FA0];
    v18 = *MEMORY[0x29EDB9ED8];
    v6 = MEMORY[0x29EDBA0F8];
    ctu::join<std::__wrap_iter<std::string const*>>(*(result + 5), *(result + 6), ", ", 2uLL, &__p);
    v7 = [v6 stringWithCXXString:&__p];
    v19[0] = v7;
    v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v5 errorWithDomain:@"SLAM" code:0 userInfo:v8];
    [v4 setError:v9];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*result < 3uLL)
  {
    [v4 setOutcome:?];
  }

  if (*(result + 32) == 1)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v12 = *(result + 1);
    for (i = *(result + 2); v12 != i; v12 += 4)
    {
      v13 = objc_opt_new();
      [v13 setIndex:*(v12 + 1)];
      [v13 setStatusWord:*v12];
      [array addObject:v13];
    }

    v14 = [array copy];
    [v4 setMessages:v14];
  }

  v15 = *MEMORY[0x29EDCA608];

  return v4;
}

+ (id)PerformScriptWithResult:(unint64_t)result seHandle:(id)handle logSink:(id)sink
{
  handle;
  sink;
  operator new();
}

+ (id)PerformScriptWithNameWithResult:(id)result seHandle:(id)handle logSink:(id)sink
{
  resultCopy = result;
  handle;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformScriptWithResult:(unint64_t)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v9 = *MEMORY[0x29EDCA608];
  path;
  handle;
  sink;
  operator new();
}

+ (id)PerformScriptWithNameWithResult:(id)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v10 = *MEMORY[0x29EDCA608];
  result;
  path;
  handle;
  sink;
  operator new();
}

@end