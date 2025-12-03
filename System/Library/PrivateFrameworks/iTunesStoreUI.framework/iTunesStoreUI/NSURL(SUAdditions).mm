@interface NSURL(SUAdditions)
+ (uint64_t)termsAndConditionsURL;
- (uint64_t)storeURLType;
@end

@implementation NSURL(SUAdditions)

+ (uint64_t)termsAndConditionsURL
{
  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v1 = [mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}];
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
  absoluteString = [self absoluteString];
  if ([absoluteString rangeOfString:@"MZSearch.woa"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(absoluteString, "rangeOfString:", @"/search?") != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if ([absoluteString rangeOfString:@"buyCharityGiftWizard"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 3;
  }

  if ([absoluteString rangeOfString:@"getPass"] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"MZFinance.woa") != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 4;
  }

  v3 = [self copyQueryStringDictionaryWithUnescapedValues:1];
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