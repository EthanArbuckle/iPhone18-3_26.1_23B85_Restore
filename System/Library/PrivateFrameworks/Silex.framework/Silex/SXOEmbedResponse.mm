@interface SXOEmbedResponse
+ (id)jsonPropertyNameForObjCPropertyName:(id)a3;
- (CGSize)thumbnailSize;
- (double)cacheAgeWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXOEmbedResponse

+ (id)jsonPropertyNameForObjCPropertyName:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:@"authorName"]& 1) != 0)
  {
    v4 = @"author_name";
  }

  else if (([(__CFString *)v3 isEqualToString:@"authorURL"]& 1) != 0)
  {
    v4 = @"author_url";
  }

  else if (([(__CFString *)v3 isEqualToString:@"providerName"]& 1) != 0)
  {
    v4 = @"provider_name";
  }

  else if (([(__CFString *)v3 isEqualToString:@"providerURL"]& 1) != 0)
  {
    v4 = @"provider_url";
  }

  else if (([(__CFString *)v3 isEqualToString:@"cacheAge"]& 1) != 0)
  {
    v4 = @"cache_age";
  }

  else if (([(__CFString *)v3 isEqualToString:@"thumbnailURL"]& 1) != 0)
  {
    v4 = @"thumbnail_url";
  }

  else if (([(__CFString *)v3 isEqualToString:@"thumbnailWidth"]& 1) != 0)
  {
    v4 = @"thumbnail_width";
  }

  else
  {
    v4 = v3;
    if (![(__CFString *)v3 isEqualToString:@"thumbnailHeight"])
    {
      goto LABEL_18;
    }

    v4 = @"thumbnail_height";
  }

LABEL_18:

  return v4;
}

- (double)cacheAgeWithValue:(id)a3 withType:(int)a4
{
  if (a4 != 2)
  {
    return 978307200.0;
  }

  [a3 doubleValue];
  return result;
}

- (CGSize)thumbnailSize
{
  [(SXOEmbedResponse *)self thumbnailWidth];
  v4 = v3;
  [(SXOEmbedResponse *)self thumbnailHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

@end