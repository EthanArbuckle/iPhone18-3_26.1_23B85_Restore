@interface NSURL(WFAdditions)
- (__CFString)WF_normalizedRelativePath;
- (uint64_t)WF_hostnameIsIPAddress;
@end

@implementation NSURL(WFAdditions)

- (uint64_t)WF_hostnameIsIPAddress
{
  v2 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:{objc_msgSend(self, "host")}];
  v5 = 0;
  if ([v2 scanCharactersFromSet:objc_msgSend(MEMORY[0x277CCA900] intoString:{"characterSetWithCharactersInString:", @".0123456789", &v5}])
  {
    v3 = [v5 isEqualToString:{objc_msgSend(self, "host")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (__CFString)WF_normalizedRelativePath
{
  relativePath = [self relativePath];
  if (!relativePath)
  {
    return &stru_28826CB10;
  }

  lowercaseString = [relativePath lowercaseString];
  for (i = [lowercaseString length]; i; i = objc_msgSend(lowercaseString, "length"))
  {
    v4 = i - 1;
    if (![objc_msgSend(lowercaseString substringFromIndex:{i - 1), "isEqualToString:", @"/"}])
    {
      break;
    }

    lowercaseString = [lowercaseString substringToIndex:v4];
  }

  return lowercaseString;
}

@end