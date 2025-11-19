@interface NSURL(WFAdditions)
- (__CFString)WF_normalizedRelativePath;
- (uint64_t)WF_hostnameIsIPAddress;
@end

@implementation NSURL(WFAdditions)

- (uint64_t)WF_hostnameIsIPAddress
{
  v2 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:{objc_msgSend(a1, "host")}];
  v5 = 0;
  if ([v2 scanCharactersFromSet:objc_msgSend(MEMORY[0x277CCA900] intoString:{"characterSetWithCharactersInString:", @".0123456789", &v5}])
  {
    v3 = [v5 isEqualToString:{objc_msgSend(a1, "host")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (__CFString)WF_normalizedRelativePath
{
  v1 = [a1 relativePath];
  if (!v1)
  {
    return &stru_28826CB10;
  }

  v2 = [v1 lowercaseString];
  for (i = [v2 length]; i; i = objc_msgSend(v2, "length"))
  {
    v4 = i - 1;
    if (![objc_msgSend(v2 substringFromIndex:{i - 1), "isEqualToString:", @"/"}])
    {
      break;
    }

    v2 = [v2 substringToIndex:v4];
  }

  return v2;
}

@end