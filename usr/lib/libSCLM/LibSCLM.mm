@interface LibSCLM
+ (BOOL)InspectCompatibleHWSEFW:(id)w closure:(id)closure error:(id *)error;
+ (BOOL)InspectSEFW:(id)w closure:(id)closure error:(id *)error;
+ (__n128)InspectCompatibleHWSEFW:closure:error:;
+ (id)ExecuteScript:(id)script seHandle:(id)handle logSink:(id)sink;
+ (id)ExecuteScriptByName:(id)name sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)PerformOnlyScriptInSEFW:(id)w seHandle:(id)handle logSink:(id)sink;
+ (id)PerformOnlyScriptInSEFWWithResult:(id)result seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScript:(unint64_t)script seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScript:(unint64_t)script sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithName:(id)name seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithName:(id)name sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithNameWithResult:(id)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)PerformScriptWithResult:(unint64_t)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink;
+ (id)convertScriptResult:(void *)result;
+ (uint64_t)InspectCompatibleHWSEFW:closure:error:;
+ (uint64_t)InspectSEFW:closure:error:;
@end

@implementation LibSCLM

+ (id)PerformScript:(unint64_t)script sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v11 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  handle;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformScriptWithResult:(unint64_t)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v10 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  handle;
  sink;
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

+ (id)PerformScriptWithNameWithResult:(id)result sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v12 = *MEMORY[0x29EDCA608];
  resultCopy = result;
  pathCopy = path;
  handle;
  sink;
  operator new();
}

+ (id)PerformOnlyScriptInSEFW:(id)w seHandle:(id)handle logSink:(id)sink
{
  v11 = *MEMORY[0x29EDCA608];
  wCopy = w;
  handleCopy = handle;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformOnlyScriptInSEFWWithResult:(id)result seHandle:(id)handle logSink:(id)sink
{
  v10 = *MEMORY[0x29EDCA608];
  resultCopy = result;
  handle;
  sinkCopy = sink;
  operator new();
}

+ (BOOL)InspectSEFW:(id)w closure:(id)closure error:(id *)error
{
  v8 = *MEMORY[0x29EDCA608];
  wCopy = w;
  closure;
  if (wCopy)
  {
    [wCopy asCXXString];
  }

  SCLM::DefaultSCLMScriptProvider::CreateWithPath();
}

+ (BOOL)InspectCompatibleHWSEFW:(id)w closure:(id)closure error:(id *)error
{
  v8 = *MEMORY[0x29EDCA608];
  wCopy = w;
  closure;
  if (wCopy)
  {
    [wCopy asCXXString];
  }

  SCLM::DefaultSCLMScriptProvider::CreateWithPath();
}

+ (id)ExecuteScriptByName:(id)name sefwPath:(id)path seHandle:(id)handle logSink:(id)sink
{
  v6 = [self PerformScriptWithNameWithResult:name sefwPath:path seHandle:handle logSink:sink];

  return v6;
}

+ (id)ExecuteScript:(id)script seHandle:(id)handle logSink:(id)sink
{
  v5 = [self PerformOnlyScriptInSEFWWithResult:script seHandle:handle logSink:sink];

  return v5;
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

+ (id)PerformScriptWithName:(id)name seHandle:(id)handle logSink:(id)sink
{
  v11 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  handleCopy = handle;
  sinkCopy = sink;
  operator new();
}

+ (id)PerformScript:(unint64_t)script seHandle:(id)handle logSink:(id)sink
{
  v8 = *MEMORY[0x29EDCA608];
  handle;
  sinkCopy = sink;
  operator new();
}

+ (uint64_t)InspectSEFW:closure:error:
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EA1A40;
  a2[1] = v2;
  return result;
}

+ (__n128)InspectCompatibleHWSEFW:closure:error:
{
  *a2 = &unk_2A1EA1A88;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

+ (uint64_t)InspectCompatibleHWSEFW:closure:error:
{
  v3 = *a2;
  if ([v3 platformCategory] != -1 && objc_msgSend(v3, "platformCategory"))
  {
    v4 = **(self + 16);
    if ((v4 - 3) >= 2)
    {
      if (v4 != 5 || [v3 platformCategory] != 2)
      {
        goto LABEL_9;
      }
    }

    else if ([v3 platformCategory] != 1)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }
  }

  v5 = (*(**(self + 8) + 16))();
LABEL_10:

  return v5;
}

@end