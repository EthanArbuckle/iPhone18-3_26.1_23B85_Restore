@interface CSAsset(VTReprompt)
- (id)blobName;
- (id)blobVersion;
@end

@implementation CSAsset(VTReprompt)

- (id)blobName
{
  dictionary = [self dictionary];
  v2 = dictionary;
  if (dictionary)
  {
    v3 = [dictionary objectForKeyedSubscript:@"blobName"];

    if (v3)
    {
      v3 = [v2 objectForKeyedSubscript:@"blobName"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)blobVersion
{
  dictionary = [self dictionary];
  v2 = dictionary;
  if (dictionary)
  {
    v3 = [dictionary objectForKeyedSubscript:@"version"];

    if (v3)
    {
      v3 = [v2 objectForKeyedSubscript:@"version"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end