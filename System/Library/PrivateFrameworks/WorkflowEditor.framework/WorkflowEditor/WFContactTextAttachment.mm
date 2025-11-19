@interface WFContactTextAttachment
- (id)valueName;
@end

@implementation WFContactTextAttachment

- (id)valueName
{
  v2 = [(WFContactTextAttachment *)self value];
  v3 = [v2 wfName];

  return v3;
}

@end