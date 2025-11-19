@interface LibSCLM
+ (BOOL)InspectCompatibleHWSEFW:(id)a3 closure:(id)a4 error:(id *)a5;
+ (BOOL)InspectSEFW:(id)a3 closure:(id)a4 error:(id *)a5;
+ (__n128)InspectCompatibleHWSEFW:closure:error:;
+ (id)ExecuteScript:(id)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)ExecuteScriptByName:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)PerformOnlyScriptInSEFW:(id)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformOnlyScriptInSEFWWithResult:(id)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformScript:(unint64_t)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformScript:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)PerformScriptWithName:(id)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformScriptWithName:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)PerformScriptWithNameWithResult:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)PerformScriptWithResult:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)convertScriptResult:(void *)a3;
+ (uint64_t)InspectCompatibleHWSEFW:closure:error:;
+ (uint64_t)InspectSEFW:closure:error:;
@end

@implementation LibSCLM

+ (id)PerformScript:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = a4;
  a5;
  v9 = a6;
  operator new();
}

+ (id)PerformScriptWithResult:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = a4;
  a5;
  a6;
  operator new();
}

+ (id)PerformScriptWithName:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v13 = *MEMORY[0x29EDCA608];
  v9 = a3;
  v10 = a4;
  a5;
  v11 = a6;
  operator new();
}

+ (id)PerformScriptWithNameWithResult:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v12 = *MEMORY[0x29EDCA608];
  v9 = a3;
  v10 = a4;
  a5;
  a6;
  operator new();
}

+ (id)PerformOnlyScriptInSEFW:(id)a3 seHandle:(id)a4 logSink:(id)a5
{
  v11 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  operator new();
}

+ (id)PerformOnlyScriptInSEFWWithResult:(id)a3 seHandle:(id)a4 logSink:(id)a5
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = a3;
  a4;
  v8 = a5;
  operator new();
}

+ (BOOL)InspectSEFW:(id)a3 closure:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = a3;
  a4;
  if (v6)
  {
    [v6 asCXXString];
  }

  SCLM::DefaultSCLMScriptProvider::CreateWithPath();
}

+ (BOOL)InspectCompatibleHWSEFW:(id)a3 closure:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = a3;
  a4;
  if (v6)
  {
    [v6 asCXXString];
  }

  SCLM::DefaultSCLMScriptProvider::CreateWithPath();
}

+ (id)ExecuteScriptByName:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v6 = [a1 PerformScriptWithNameWithResult:a3 sefwPath:a4 seHandle:a5 logSink:a6];

  return v6;
}

+ (id)ExecuteScript:(id)a3 seHandle:(id)a4 logSink:(id)a5
{
  v5 = [a1 PerformOnlyScriptInSEFWWithResult:a3 seHandle:a4 logSink:a5];

  return v5;
}

+ (id)convertScriptResult:(void *)a3
{
  v19[1] = *MEMORY[0x29EDCA608];
  v4 = objc_opt_new();
  if (*(a3 + 64) == 1)
  {
    v5 = MEMORY[0x29EDB9FA0];
    v18 = *MEMORY[0x29EDB9ED8];
    v6 = MEMORY[0x29EDBA0F8];
    ctu::join<std::__wrap_iter<std::string const*>>(*(a3 + 5), *(a3 + 6), ", ", 2uLL, &__p);
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

  if (*a3 < 3uLL)
  {
    [v4 setOutcome:?];
  }

  if (*(a3 + 32) == 1)
  {
    v10 = [MEMORY[0x29EDB8DE8] array];
    v12 = *(a3 + 1);
    for (i = *(a3 + 2); v12 != i; v12 += 4)
    {
      v13 = objc_opt_new();
      [v13 setIndex:*(v12 + 1)];
      [v13 setStatusWord:*v12];
      [v10 addObject:v13];
    }

    v14 = [v10 copy];
    [v4 setMessages:v14];
  }

  v15 = *MEMORY[0x29EDCA608];

  return v4;
}

+ (id)PerformScriptWithName:(id)a3 seHandle:(id)a4 logSink:(id)a5
{
  v11 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  operator new();
}

+ (id)PerformScript:(unint64_t)a3 seHandle:(id)a4 logSink:(id)a5
{
  v8 = *MEMORY[0x29EDCA608];
  a4;
  v6 = a5;
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
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

+ (uint64_t)InspectCompatibleHWSEFW:closure:error:
{
  v3 = *a2;
  if ([v3 platformCategory] != -1 && objc_msgSend(v3, "platformCategory"))
  {
    v4 = **(a1 + 16);
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

  v5 = (*(**(a1 + 8) + 16))();
LABEL_10:

  return v5;
}

@end