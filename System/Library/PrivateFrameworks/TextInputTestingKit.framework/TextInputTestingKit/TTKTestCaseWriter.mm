@interface TTKTestCaseWriter
+ (id)storeToDir:(id)dir inputMode:(id)mode layouts:(id)layouts writeOnFlush:(BOOL)flush maxTestCasesPerFile:(unsigned int)file maxFilesPerDirectory:(unsigned int)directory;
+ (id)storeToFile:(id)file inputMode:(id)mode layouts:(id)layouts;
@end

@implementation TTKTestCaseWriter

+ (id)storeToDir:(id)dir inputMode:(id)mode layouts:(id)layouts writeOnFlush:(BOOL)flush maxTestCasesPerFile:(unsigned int)file maxFilesPerDirectory:(unsigned int)directory
{
  v8 = *&directory;
  v9 = *&file;
  flushCopy = flush;
  layoutsCopy = layouts;
  modeCopy = mode;
  dirCopy = dir;
  v16 = [[TTKDirSink alloc] init:dirCopy inputMode:modeCopy layouts:layoutsCopy writeOnFlush:flushCopy maxTestCasesPerFile:v9 maxFilesPerDirectory:v8];

  return v16;
}

+ (id)storeToFile:(id)file inputMode:(id)mode layouts:(id)layouts
{
  layoutsCopy = layouts;
  modeCopy = mode;
  fileCopy = file;
  v10 = [[TTKFileSink alloc] init:fileCopy inputMode:modeCopy layouts:layoutsCopy];

  return v10;
}

@end