@interface NSURL(SUAdditions)
+ (uint64_t)termsAndConditionsURL;
- (uint64_t)storeURLType;
@end

@implementation NSURL(SUAdditions)

+ (uint64_t)termsAndConditionsURL
{
  v0 = [MEMORY[0x1E69E47F8] sharedCache];
  v1 = [v0 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}];
  result = [v1 urlForKey:*MEMORY[0x1E69E4710]];
  if (!result)
  {
    v3 = MEMORY[0x1E695DFF8];

    return [v3 URLWithString:@"http://www.apple.com/legal/itunes/ww/"];
  }

  return result;
}

- (uint64_t)storeURLType
{
  v2 = [a1 absoluteString];
  if ([v2 rangeOfString:@"MZSearch.woa"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v2, "rangeOfString:", @"/search?") != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if ([v2 rangeOfString:@"buyCharityGiftWizard"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 3;
  }

  if ([v2 rangeOfString:@"getPass"] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v2, "rangeOfString:", @"MZFinance.woa") != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 4;
  }

  v3 = [a1 copyQueryStringDictionaryWithUnescapedValues:1];
  v4 = [v3 objectForKey:@"action"];
  if ([v4 isEqualToString:@"account"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"donate"])
  {
    v5 = 3;
  }

  else
  {
    v5 = [v4 isEqualToString:@"search"];
  }

  return v5;
}

@end