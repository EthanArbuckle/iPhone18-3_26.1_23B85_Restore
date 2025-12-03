@interface _RCTimeRangeFileInputWaveformDataSource
- (void)saveGeneratedWaveformIfNecessary;
@end

@implementation _RCTimeRangeFileInputWaveformDataSource

- (void)saveGeneratedWaveformIfNecessary
{
  if (!self->_isDecomposedFragment)
  {
    goto LABEL_3;
  }

  generatedWaveformOutputURL = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [generatedWaveformOutputURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  if ((v6 & 1) == 0)
  {
LABEL_3:
    v7.receiver = self;
    v7.super_class = _RCTimeRangeFileInputWaveformDataSource;
    [(RCFileInputWaveformDataSource *)&v7 saveGeneratedWaveformIfNecessary];
  }
}

@end