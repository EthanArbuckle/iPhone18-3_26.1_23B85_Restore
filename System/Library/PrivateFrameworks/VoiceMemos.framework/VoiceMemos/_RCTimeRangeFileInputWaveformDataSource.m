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

  v3 = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
LABEL_3:
    v7.receiver = self;
    v7.super_class = _RCTimeRangeFileInputWaveformDataSource;
    [(RCFileInputWaveformDataSource *)&v7 saveGeneratedWaveformIfNecessary];
  }
}

@end