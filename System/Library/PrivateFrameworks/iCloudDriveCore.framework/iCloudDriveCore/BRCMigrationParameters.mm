@interface BRCMigrationParameters
- (BRCMigrationParameters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCMigrationParameters

- (void)encodeWithCoder:(id)coder
{
  cloneOnly = self->cloneOnly;
  coderCopy = coder;
  [coderCopy encodeBool:cloneOnly forKey:@"cloneOnly"];
  [coderCopy encodeObject:self->errorOverride forKey:@"errorOverride"];
  [coderCopy encodeInt64:self->originatorIdOverride forKey:@"originatorIdOverride"];
  [coderCopy encodeBool:self->dropAccountFile forKey:@"dropAccountFile"];
  [coderCopy encodeBool:self->dropClientState forKey:@"dropClientState"];
}

- (BRCMigrationParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BRCMigrationParameters;
  v5 = [(BRCMigrationParameters *)&v9 init];
  if (v5)
  {
    v5->cloneOnly = [coderCopy decodeBoolForKey:@"cloneOnly"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorOverride"];
    errorOverride = v5->errorOverride;
    v5->errorOverride = v6;

    v5->originatorIdOverride = [coderCopy decodeInt64ForKey:@"originatorIdOverride"];
    v5->dropAccountFile = [coderCopy decodeBoolForKey:@"dropAccountFile"];
    v5->dropClientState = [coderCopy decodeBoolForKey:@"dropClientState"];
  }

  return v5;
}

@end