@interface SXOEmbedResponse
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
- (CGSize)thumbnailSize;
- (double)cacheAgeWithValue:(id)value withType:(int)type;
@end

@implementation SXOEmbedResponse

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  if (([(__CFString *)nameCopy isEqualToString:@"authorName"]& 1) != 0)
  {
    v4 = @"author_name";
  }

  else if (([(__CFString *)nameCopy isEqualToString:@"authorURL"]& 1) != 0)
  {
    v4 = @"author_url";
  }

  else if (([(__CFString *)nameCopy isEqualToString:@"providerName"]& 1) != 0)
  {
    v4 = @"provider_name";
  }

  else if (([(__CFString *)nameCopy isEqualToString:@"providerURL"]& 1) != 0)
  {
    v4 = @"provider_url";
  }

  else if (([(__CFString *)nameCopy isEqualToString:@"cacheAge"]& 1) != 0)
  {
    v4 = @"cache_age";
  }

  else if (([(__CFString *)nameCopy isEqualToString:@"thumbnailURL"]& 1) != 0)
  {
    v4 = @"thumbnail_url";
  }

  else if (([(__CFString *)nameCopy isEqualToString:@"thumbnailWidth"]& 1) != 0)
  {
    v4 = @"thumbnail_width";
  }

  else
  {
    v4 = nameCopy;
    if (![(__CFString *)nameCopy isEqualToString:@"thumbnailHeight"])
    {
      goto LABEL_18;
    }

    v4 = @"thumbnail_height";
  }

LABEL_18:

  return v4;
}

- (double)cacheAgeWithValue:(id)value withType:(int)type
{
  if (type != 2)
  {
    return 978307200.0;
  }

  [value doubleValue];
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