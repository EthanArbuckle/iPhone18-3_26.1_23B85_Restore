@interface SKDiskImageAttachParams
- (SKDiskImageAttachParams)init;
- (SKDiskImageAttachParams)initWithParams:(id)params;
- (id)description;
- (id)diAttachParamsWithExistingParams:(id)params error:(id *)error;
- (id)diAttachParamsWithURL:(id)l shadowURLs:(id)ls error:(id *)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setMountParams:(id)params;
- (void)setupDIAttachParams:(id)params;
@end

@implementation SKDiskImageAttachParams

- (SKDiskImageAttachParams)initWithParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = SKDiskImageAttachParams;
  v6 = [(SKDiskImageAttachParams *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mountParams, params);
    [(SKMountParams *)v7->_mountParams setForce:1];
    [(SKMountParams *)v7->_mountParams setRecursive:1];
    v7->_policy = 2;
    v7->_readOnly = [(SKMountParams *)v7->_mountParams readOnly];
    *&v7->_isManagedAttach = 0;
    [(SKMountParams *)v7->_mountParams addObserver:v7 forKeyPath:@"readOnly" options:1 context:0];
  }

  return v7;
}

- (void)setMountParams:(id)params
{
  paramsCopy = params;
  [(SKMountParams *)self->_mountParams removeObserver:self forKeyPath:@"readOnly"];
  mountParams = self->_mountParams;
  self->_mountParams = paramsCopy;
  v6 = paramsCopy;

  [(SKMountParams *)self->_mountParams setForce:1];
  [(SKMountParams *)self->_mountParams setRecursive:1];
  self->_readOnly = [(SKMountParams *)self->_mountParams readOnly];
  [(SKMountParams *)self->_mountParams addObserver:self forKeyPath:@"readOnly" options:1 context:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"readOnly"])
  {
    v8 = objectCopy;
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

- (id)diAttachParamsWithURL:(id)l shadowURLs:(id)ls error:(id *)error
{
  v8 = MEMORY[0x277D05588];
  lsCopy = ls;
  lCopy = l;
  v11 = [[v8 alloc] initWithURL:lCopy shadowURLs:lsCopy error:error];

  if (v11)
  {
    [(SKDiskImageAttachParams *)self setupDIAttachParams:v11];
    v12 = v11;
  }

  return v11;
}

- (id)diAttachParamsWithExistingParams:(id)params error:(id *)error
{
  v6 = MEMORY[0x277D05588];
  paramsCopy = params;
  v8 = [[v6 alloc] initWithExistingParams:paramsCopy error:error];

  if (v8)
  {
    [(SKDiskImageAttachParams *)self setupDIAttachParams:v8];
    v9 = v8;
  }

  return v8;
}

- (void)setupDIAttachParams:(id)params
{
  paramsCopy = params;
  [paramsCopy setAutoMount:0];
  if ([(SKDiskImageAttachParams *)self readOnly])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [paramsCopy setFileMode:v4];
  if ([(SKDiskImageAttachParams *)self is4KBlockSize])
  {
    blockSize = 4096;
  }

  else
  {
    blockSize = [paramsCopy blockSize];
  }

  [paramsCopy setBlockSize:blockSize];
  stdinPassPhrase = [(SKDiskImageAttachParams *)self stdinPassPhrase];
  readPassphraseFlags = [paramsCopy readPassphraseFlags];
  if (stdinPassPhrase)
  {
    v8 = readPassphraseFlags | 8;
  }

  else
  {
    v8 = readPassphraseFlags;
  }

  [paramsCopy setReadPassphraseFlags:v8];
  if (os_variant_has_internal_content())
  {
    [paramsCopy setEmulateExternalDisk:{-[SKDiskImageAttachParams emulateExternalDisk](self, "emulateExternalDisk")}];
  }
}

@end