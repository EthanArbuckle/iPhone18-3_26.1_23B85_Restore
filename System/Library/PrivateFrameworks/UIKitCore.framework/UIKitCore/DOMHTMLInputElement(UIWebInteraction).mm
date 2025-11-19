@interface DOMHTMLInputElement(UIWebInteraction)
- (uint64_t)isAssistedDateType;
- (uint64_t)isLikelyToBeginPageLoad;
- (uint64_t)nodeCanBecomeFirstResponder;
@end

@implementation DOMHTMLInputElement(UIWebInteraction)

- (uint64_t)isAssistedDateType
{
  v1 = [a1 type];
  if ([v1 isEqualToString:@"date"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"datetime-local") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"month"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"time"];
  }

  return v2;
}

- (uint64_t)isLikelyToBeginPageLoad
{
  v1 = [a1 type];
  v2 = [v1 isEqual:@"submit"];

  return v2;
}

- (uint64_t)nodeCanBecomeFirstResponder
{
  if ([a1 readOnly])
  {
    return 0;
  }

  if ([a1 isTextControl])
  {
    return 1;
  }

  return [a1 isAssistedDateType];
}

@end