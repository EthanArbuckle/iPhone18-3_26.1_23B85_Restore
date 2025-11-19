@interface TRIBlockBasedSysdiagnoseInfoProvider
- (TRIBlockBasedSysdiagnoseInfoProvider)initWithOutputFilename:(id)a3 block:(id)a4;
- (id)sysdiagnoseLinesWithError:(id *)a3;
@end

@implementation TRIBlockBasedSysdiagnoseInfoProvider

- (TRIBlockBasedSysdiagnoseInfoProvider)initWithOutputFilename:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TRIBlockBasedSysdiagnoseInfoProvider;
  v9 = [(TRIBlockBasedSysdiagnoseInfoProvider *)&v13 init];
  if (v9)
  {
    v10 = MEMORY[0x2318F2490](v8);
    block = v9->_block;
    v9->_block = v10;

    objc_storeStrong(&v9->_outputFilename, a3);
  }

  return v9;
}

- (id)sysdiagnoseLinesWithError:(id *)a3
{
  v4 = [(TRIBlockBasedSysdiagnoseInfoProvider *)self block];
  v5 = (v4)[2](v4, a3);

  return v5;
}

@end