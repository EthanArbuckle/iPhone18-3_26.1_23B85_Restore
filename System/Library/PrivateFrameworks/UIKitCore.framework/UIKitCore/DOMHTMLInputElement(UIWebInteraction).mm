@interface DOMHTMLInputElement(UIWebInteraction)
- (uint64_t)isAssistedDateType;
- (uint64_t)isLikelyToBeginPageLoad;
- (uint64_t)nodeCanBecomeFirstResponder;
@end

@implementation DOMHTMLInputElement(UIWebInteraction)

- (uint64_t)isAssistedDateType
{
  type = [self type];
  if ([type isEqualToString:@"date"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"datetime-local") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"month"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [type isEqualToString:@"time"];
  }

  return v2;
}

- (uint64_t)isLikelyToBeginPageLoad
{
  type = [self type];
  v2 = [type isEqual:@"submit"];

  return v2;
}

- (uint64_t)nodeCanBecomeFirstResponder
{
  if ([self readOnly])
  {
    return 0;
  }

  if ([self isTextControl])
  {
    return 1;
  }

  return [self isAssistedDateType];
}

@end