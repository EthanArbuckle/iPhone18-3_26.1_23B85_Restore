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
  scheme = [self scheme];
  v2 = [scheme hasPrefix:@"x-attach"];

  return v2;
}

- (BOOL)mf_isResourceURL
{
  scheme = [self scheme];
  v2 = [scheme caseInsensitiveCompare:@"cid"] == 0;

  return v2;
}

- (uint64_t)mf_rowID
{
  if (![self mf_isValidAttachmentURL])
  {
    return 0xFFFFFFFFLL;
  }

  host = [self host];
  v3 = host;
  if (host)
  {
    integerValue = [host integerValue];
    if (integerValue < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = integerValue;
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
  if ([self mf_isValidAttachmentURL])
  {
    absoluteString = [self absoluteString];
    pathComponents = [absoluteString pathComponents];

    if ([pathComponents count])
    {
      v4 = [pathComponents subarrayWithRange:{1, objc_msgSend(pathComponents, "count") - 1}];
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
  mf_partNumbers = [self mf_partNumbers];
  lastObject = [mf_partNumbers lastObject];

  return lastObject;
}

- (id)mf_firstPartNumber
{
  mf_partNumbers = [self mf_partNumbers];
  if ([mf_partNumbers count])
  {
    v2 = [mf_partNumbers objectAtIndexedSubscript:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end