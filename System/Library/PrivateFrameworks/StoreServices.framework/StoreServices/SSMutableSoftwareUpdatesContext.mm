@interface SSMutableSoftwareUpdatesContext
- (SSMutableSoftwareUpdatesContext)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)setClientIdentifierHeader:(id)header;
- (void)setSoftwareTypes:(id)types;
@end

@implementation SSMutableSoftwareUpdatesContext

- (void)setClientIdentifierHeader:(id)header
{
  clientIdentifierHeader = self->super._clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->super._clientIdentifierHeader = [header copy];
  }
}

- (void)setSoftwareTypes:(id)types
{
  softwareTypes = self->super._softwareTypes;
  if (softwareTypes != types)
  {

    self->super._softwareTypes = [types copy];
  }
}

- (id)copyXPCEncoding
{
  v3.receiver = self;
  v3.super_class = SSMutableSoftwareUpdatesContext;
  return [(SSSoftwareUpdatesContext *)&v3 copyXPCEncoding];
}

- (SSMutableSoftwareUpdatesContext)initWithXPCEncoding:(id)encoding
{
  v4.receiver = self;
  v4.super_class = SSMutableSoftwareUpdatesContext;
  return [(SSSoftwareUpdatesContext *)&v4 initWithXPCEncoding:encoding];
}

@end