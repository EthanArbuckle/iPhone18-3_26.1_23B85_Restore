@interface TRIBlockBasedSysdiagnoseInfoProvider
- (TRIBlockBasedSysdiagnoseInfoProvider)initWithOutputFilename:(id)filename block:(id)block;
- (id)sysdiagnoseLinesWithError:(id *)error;
@end

@implementation TRIBlockBasedSysdiagnoseInfoProvider

- (TRIBlockBasedSysdiagnoseInfoProvider)initWithOutputFilename:(id)filename block:(id)block
{
  filenameCopy = filename;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = TRIBlockBasedSysdiagnoseInfoProvider;
  v9 = [(TRIBlockBasedSysdiagnoseInfoProvider *)&v13 init];
  if (v9)
  {
    v10 = MEMORY[0x2318F2490](blockCopy);
    block = v9->_block;
    v9->_block = v10;

    objc_storeStrong(&v9->_outputFilename, filename);
  }

  return v9;
}

- (id)sysdiagnoseLinesWithError:(id *)error
{
  block = [(TRIBlockBasedSysdiagnoseInfoProvider *)self block];
  v5 = (block)[2](block, error);

  return v5;
}

@end