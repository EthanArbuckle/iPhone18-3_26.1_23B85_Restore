@interface CSAsset(VTReprompt)
- (id)blobName;
- (id)blobVersion;
@end

@implementation CSAsset(VTReprompt)

- (id)blobName
{
  v1 = [a1 dictionary];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"blobName"];

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
  v1 = [a1 dictionary];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"version"];

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