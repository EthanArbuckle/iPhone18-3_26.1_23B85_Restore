@interface WFContactTextAttachment
- (id)valueName;
@end

@implementation WFContactTextAttachment

- (id)valueName
{
  value = [(WFContactTextAttachment *)self value];
  wfName = [value wfName];

  return wfName;
}

@end