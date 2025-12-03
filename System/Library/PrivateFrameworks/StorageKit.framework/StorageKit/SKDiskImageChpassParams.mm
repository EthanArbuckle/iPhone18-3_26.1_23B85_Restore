@interface SKDiskImageChpassParams
- (SKDiskImageChpassParams)init;
- (id)diChpassParamsWithURL:(id)l error:(id *)error;
- (void)setupDIChpassParams:(id)params;
@end

@implementation SKDiskImageChpassParams

- (SKDiskImageChpassParams)init
{
  v3.receiver = self;
  v3.super_class = SKDiskImageChpassParams;
  result = [(SKDiskImageChpassParams *)&v3 init];
  if (result)
  {
    result->_stdinPassPhrase = 0;
  }

  return result;
}

- (id)diChpassParamsWithURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x277D05590];
  lCopy = l;
  v8 = [[v6 alloc] initWithURL:lCopy error:error];

  if (v8)
  {
    [(SKDiskImageChpassParams *)self setupDIChpassParams:v8];
  }

  return v8;
}

- (void)setupDIChpassParams:(id)params
{
  paramsCopy = params;
  LODWORD(self) = [(SKDiskImageChpassParams *)self stdinPassPhrase];
  readPassphraseFlags = [paramsCopy readPassphraseFlags];
  if (self)
  {
    v5 = readPassphraseFlags | 8;
  }

  else
  {
    v5 = readPassphraseFlags;
  }

  [paramsCopy setReadPassphraseFlags:v5];
}

@end