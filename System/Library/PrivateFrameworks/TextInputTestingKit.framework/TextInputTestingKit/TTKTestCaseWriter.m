@interface TTKTestCaseWriter
+ (id)storeToDir:(id)a3 inputMode:(id)a4 layouts:(id)a5 writeOnFlush:(BOOL)a6 maxTestCasesPerFile:(unsigned int)a7 maxFilesPerDirectory:(unsigned int)a8;
+ (id)storeToFile:(id)a3 inputMode:(id)a4 layouts:(id)a5;
@end

@implementation TTKTestCaseWriter

+ (id)storeToDir:(id)a3 inputMode:(id)a4 layouts:(id)a5 writeOnFlush:(BOOL)a6 maxTestCasesPerFile:(unsigned int)a7 maxFilesPerDirectory:(unsigned int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v10 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[TTKDirSink alloc] init:v15 inputMode:v14 layouts:v13 writeOnFlush:v10 maxTestCasesPerFile:v9 maxFilesPerDirectory:v8];

  return v16;
}

+ (id)storeToFile:(id)a3 inputMode:(id)a4 layouts:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TTKFileSink alloc] init:v9 inputMode:v8 layouts:v7];

  return v10;
}

@end