@interface SSSoftwareUpdatesContext
- (NSArray)softwareTypes;
- (SSSoftwareUpdatesContext)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SSSoftwareUpdatesContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSoftwareUpdatesContext;
  [(SSSoftwareUpdatesContext *)&v3 dealloc];
}

- (NSArray)softwareTypes
{
  result = self->_softwareTypes;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"newsstand", @"regular", 0}];
    self->_softwareTypes = result;
  }

  return result;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "0", self->_forced);
  SSXPCDictionarySetCFObject(v3, "1", [(SSSoftwareUpdatesContext *)self softwareTypes]);
  return v3;
}

- (SSSoftwareUpdatesContext)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSSoftwareUpdatesContext;
    v5 = [(SSSoftwareUpdatesContext *)&v7 init];
    if (v5)
    {
      v5->_forced = xpc_dictionary_get_BOOL(encoding, "0");
      objc_opt_class();
      v5->_softwareTypes = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[SSSoftwareUpdatesContext allocWithZone:](SSSoftwareUpdatesContext init];
  v5->_clientIdentifierHeader = [(NSString *)self->_clientIdentifierHeader copyWithZone:zone];
  v5->_forced = self->_forced;
  v5->_softwareTypes = [(NSArray *)self->_softwareTypes copyWithZone:zone];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[SSMutableSoftwareUpdatesContext allocWithZone:](SSMutableSoftwareUpdatesContext init];
  v5->super._clientIdentifierHeader = [(NSString *)self->_clientIdentifierHeader copyWithZone:zone];
  v5->super._forced = self->_forced;
  v5->super._softwareTypes = [(NSArray *)self->_softwareTypes copyWithZone:zone];
  return v5;
}

@end