@interface SKDiskImageChpassParams
- (SKDiskImageChpassParams)init;
- (id)diChpassParamsWithURL:(id)a3 error:(id *)a4;
- (void)setupDIChpassParams:(id)a3;
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

- (id)diChpassParamsWithURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D05590];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:v7 error:a4];

  if (v8)
  {
    [(SKDiskImageChpassParams *)self setupDIChpassParams:v8];
  }

  return v8;
}

- (void)setupDIChpassParams:(id)a3
{
  v6 = a3;
  LODWORD(self) = [(SKDiskImageChpassParams *)self stdinPassPhrase];
  v4 = [v6 readPassphraseFlags];
  if (self)
  {
    v5 = v4 | 8;
  }

  else
  {
    v5 = v4;
  }

  [v6 setReadPassphraseFlags:v5];
}

@end