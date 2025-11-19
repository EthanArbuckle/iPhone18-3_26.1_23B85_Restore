@interface SKDiskImageAttachParams
- (SKDiskImageAttachParams)init;
- (SKDiskImageAttachParams)initWithParams:(id)a3;
- (id)description;
- (id)diAttachParamsWithExistingParams:(id)a3 error:(id *)a4;
- (id)diAttachParamsWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setMountParams:(id)a3;
- (void)setupDIAttachParams:(id)a3;
@end

@implementation SKDiskImageAttachParams

- (SKDiskImageAttachParams)initWithParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKDiskImageAttachParams;
  v6 = [(SKDiskImageAttachParams *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mountParams, a3);
    [(SKMountParams *)v7->_mountParams setForce:1];
    [(SKMountParams *)v7->_mountParams setRecursive:1];
    v7->_policy = 2;
    v7->_readOnly = [(SKMountParams *)v7->_mountParams readOnly];
    *&v7->_isManagedAttach = 0;
    [(SKMountParams *)v7->_mountParams addObserver:v7 forKeyPath:@"readOnly" options:1 context:0];
  }

  return v7;
}

- (void)setMountParams:(id)a3
{
  v4 = a3;
  [(SKMountParams *)self->_mountParams removeObserver:self forKeyPath:@"readOnly"];
  mountParams = self->_mountParams;
  self->_mountParams = v4;
  v6 = v4;

  [(SKMountParams *)self->_mountParams setForce:1];
  [(SKMountParams *)self->_mountParams setRecursive:1];
  self->_readOnly = [(SKMountParams *)self->_mountParams readOnly];
  [(SKMountParams *)self->_mountParams addObserver:self forKeyPath:@"readOnly" options:1 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if ([a3 isEqualToString:@"readOnly"])
  {
    v8 = v10;
    if (v8)
    {
      v9 = v8;
      self->_readOnly = [v8 readOnly];
    }
  }
}

- (SKDiskImageAttachParams)init
{
  v3 = objc_opt_new();
  v4 = [(SKDiskImageAttachParams *)self initWithParams:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: { mountParams: %@, readOnly: %d, policy: %ld }>", v5, self->_mountParams, self->_readOnly, self->_policy];

  return v6;
}

- (id)diAttachParamsWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D05588];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithURL:v10 shadowURLs:v9 error:a5];

  if (v11)
  {
    [(SKDiskImageAttachParams *)self setupDIAttachParams:v11];
    v12 = v11;
  }

  return v11;
}

- (id)diAttachParamsWithExistingParams:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D05588];
  v7 = a3;
  v8 = [[v6 alloc] initWithExistingParams:v7 error:a4];

  if (v8)
  {
    [(SKDiskImageAttachParams *)self setupDIAttachParams:v8];
    v9 = v8;
  }

  return v8;
}

- (void)setupDIAttachParams:(id)a3
{
  v9 = a3;
  [v9 setAutoMount:0];
  if ([(SKDiskImageAttachParams *)self readOnly])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v9 setFileMode:v4];
  if ([(SKDiskImageAttachParams *)self is4KBlockSize])
  {
    v5 = 4096;
  }

  else
  {
    v5 = [v9 blockSize];
  }

  [v9 setBlockSize:v5];
  v6 = [(SKDiskImageAttachParams *)self stdinPassPhrase];
  v7 = [v9 readPassphraseFlags];
  if (v6)
  {
    v8 = v7 | 8;
  }

  else
  {
    v8 = v7;
  }

  [v9 setReadPassphraseFlags:v8];
  if (os_variant_has_internal_content())
  {
    [v9 setEmulateExternalDisk:{-[SKDiskImageAttachParams emulateExternalDisk](self, "emulateExternalDisk")}];
  }
}

@end