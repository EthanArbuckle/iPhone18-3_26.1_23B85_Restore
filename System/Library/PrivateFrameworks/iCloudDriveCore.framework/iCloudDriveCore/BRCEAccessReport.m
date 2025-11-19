@interface BRCEAccessReport
- (BRCEAccessReport)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCEAccessReport

- (void)encodeWithCoder:(id)a3
{
  st_mode = self->st_mode;
  v5 = a3;
  [v5 encodeInt32:st_mode forKey:@"st_mode"];
  [v5 encodeInt32:self->st_uid forKey:@"st_uid"];
  [v5 encodeInt32:self->st_gid forKey:@"st_gid"];
  [v5 encodeInt32:self->st_flags forKey:@"st_flags"];
  [v5 encodeInt32:self->protection_class forKey:@"protection_class"];
  [v5 encodeBool:self->has_acls forKey:@"has_acls"];
  [v5 encodeInt64:self->incidents forKey:@"incidents"];
}

- (BRCEAccessReport)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRCEAccessReport;
  v5 = [(BRCEAccessReport *)&v7 init];
  if (v5)
  {
    v5->st_mode = [v4 decodeInt32ForKey:@"st_mode"];
    v5->st_uid = [v4 decodeInt32ForKey:@"st_uid"];
    v5->st_gid = [v4 decodeInt32ForKey:@"st_gid"];
    v5->st_flags = [v4 decodeInt32ForKey:@"st_flags"];
    v5->protection_class = [v4 decodeInt32ForKey:@"protection_class"];
    v5->has_acls = [v4 decodeBoolForKey:@"has_acls"];
    v5->incidents = [v4 decodeInt64ForKey:@"incidents"];
  }

  return v5;
}

@end