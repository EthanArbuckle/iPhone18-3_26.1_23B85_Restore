@interface BRCEAccessReport
- (BRCEAccessReport)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCEAccessReport

- (void)encodeWithCoder:(id)coder
{
  st_mode = self->st_mode;
  coderCopy = coder;
  [coderCopy encodeInt32:st_mode forKey:@"st_mode"];
  [coderCopy encodeInt32:self->st_uid forKey:@"st_uid"];
  [coderCopy encodeInt32:self->st_gid forKey:@"st_gid"];
  [coderCopy encodeInt32:self->st_flags forKey:@"st_flags"];
  [coderCopy encodeInt32:self->protection_class forKey:@"protection_class"];
  [coderCopy encodeBool:self->has_acls forKey:@"has_acls"];
  [coderCopy encodeInt64:self->incidents forKey:@"incidents"];
}

- (BRCEAccessReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BRCEAccessReport;
  v5 = [(BRCEAccessReport *)&v7 init];
  if (v5)
  {
    v5->st_mode = [coderCopy decodeInt32ForKey:@"st_mode"];
    v5->st_uid = [coderCopy decodeInt32ForKey:@"st_uid"];
    v5->st_gid = [coderCopy decodeInt32ForKey:@"st_gid"];
    v5->st_flags = [coderCopy decodeInt32ForKey:@"st_flags"];
    v5->protection_class = [coderCopy decodeInt32ForKey:@"protection_class"];
    v5->has_acls = [coderCopy decodeBoolForKey:@"has_acls"];
    v5->incidents = [coderCopy decodeInt64ForKey:@"incidents"];
  }

  return v5;
}

@end