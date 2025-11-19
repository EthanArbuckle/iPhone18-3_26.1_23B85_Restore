@interface NSURL(AttachmentURLUtilities)
- (BOOL)mf_isResourceURL;
- (id)mf_firstPartNumber;
- (id)mf_lastPartNumber;
- (id)mf_partNumbers;
- (uint64_t)mf_isValidAttachmentURL;
- (uint64_t)mf_rowID;
@end

@implementation NSURL(AttachmentURLUtilities)

- (uint64_t)mf_isValidAttachmentURL
{
  v1 = [a1 scheme];
  v2 = [v1 hasPrefix:@"x-attach"];

  return v2;
}

- (BOOL)mf_isResourceURL
{
  v1 = [a1 scheme];
  v2 = [v1 caseInsensitiveCompare:@"cid"] == 0;

  return v2;
}

- (uint64_t)mf_rowID
{
  if (![a1 mf_isValidAttachmentURL])
  {
    return 0xFFFFFFFFLL;
  }

  v2 = [a1 host];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    if (v4 < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return v5;
}

- (id)mf_partNumbers
{
  if ([a1 mf_isValidAttachmentURL])
  {
    v2 = [a1 absoluteString];
    v3 = [v2 pathComponents];

    if ([v3 count])
    {
      v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mf_lastPartNumber
{
  v1 = [a1 mf_partNumbers];
  v2 = [v1 lastObject];

  return v2;
}

- (id)mf_firstPartNumber
{
  v1 = [a1 mf_partNumbers];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end