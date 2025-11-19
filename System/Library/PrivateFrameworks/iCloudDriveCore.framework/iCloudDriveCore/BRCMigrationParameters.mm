@interface BRCMigrationParameters
- (BRCMigrationParameters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCMigrationParameters

- (void)encodeWithCoder:(id)a3
{
  cloneOnly = self->cloneOnly;
  v5 = a3;
  [v5 encodeBool:cloneOnly forKey:@"cloneOnly"];
  [v5 encodeObject:self->errorOverride forKey:@"errorOverride"];
  [v5 encodeInt64:self->originatorIdOverride forKey:@"originatorIdOverride"];
  [v5 encodeBool:self->dropAccountFile forKey:@"dropAccountFile"];
  [v5 encodeBool:self->dropClientState forKey:@"dropClientState"];
}

- (BRCMigrationParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRCMigrationParameters;
  v5 = [(BRCMigrationParameters *)&v9 init];
  if (v5)
  {
    v5->cloneOnly = [v4 decodeBoolForKey:@"cloneOnly"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorOverride"];
    errorOverride = v5->errorOverride;
    v5->errorOverride = v6;

    v5->originatorIdOverride = [v4 decodeInt64ForKey:@"originatorIdOverride"];
    v5->dropAccountFile = [v4 decodeBoolForKey:@"dropAccountFile"];
    v5->dropClientState = [v4 decodeBoolForKey:@"dropClientState"];
  }

  return v5;
}

@end