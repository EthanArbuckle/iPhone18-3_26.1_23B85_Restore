@interface SLAMObjC
+ (id)PerformRecovery:(id)a3 logSink:(id)a4;
+ (id)PerformScript:(unint64_t)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformScript:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)PerformScriptWithName:(id)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformScriptWithName:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)PerformScriptWithNameWithResult:(id)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformScriptWithNameWithResult:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)PerformScriptWithResult:(unint64_t)a3 seHandle:(id)a4 logSink:(id)a5;
+ (id)PerformScriptWithResult:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6;
+ (id)convertScriptResult:(void *)a3;
@end

@implementation SLAMObjC

+ (id)PerformScript:(unint64_t)a3 seHandle:(id)a4 logSink:(id)a5
{
  v8 = *MEMORY[0x29EDCA608];
  a4;
  v6 = a5;
  operator new();
}

+ (id)PerformScriptWithName:(id)a3 seHandle:(id)a4 logSink:(id)a5
{
  v11 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  operator new();
}

+ (id)PerformRecovery:(id)a3 logSink:(id)a4
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  operator new();
}

+ (id)PerformScript:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = a4;
  a5;
  v9 = a6;
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

+ (id)PerformScriptWithResult:(unint64_t)a3 seHandle:(id)a4 logSink:(id)a5
{
  a4;
  a5;
  operator new();
}

+ (id)PerformScriptWithNameWithResult:(id)a3 seHandle:(id)a4 logSink:(id)a5
{
  v7 = a3;
  a4;
  v8 = a5;
  operator new();
}

+ (id)PerformScriptWithResult:(unint64_t)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v9 = *MEMORY[0x29EDCA608];
  a4;
  a5;
  a6;
  operator new();
}

+ (id)PerformScriptWithNameWithResult:(id)a3 sefwPath:(id)a4 seHandle:(id)a5 logSink:(id)a6
{
  v10 = *MEMORY[0x29EDCA608];
  a3;
  a4;
  a5;
  a6;
  operator new();
}

@end