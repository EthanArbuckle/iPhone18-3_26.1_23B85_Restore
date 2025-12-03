@interface SXOEmbedVideoResponse
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
- (CGSize)size;
@end

@implementation SXOEmbedVideoResponse

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if ([(__CFString *)nameCopy isEqualToString:@"HTML"])
  {

    v4 = @"html";
  }

  return v4;
}

- (CGSize)size
{
  [(SXOEmbedVideoResponse *)self width];
  v4 = v3;
  [(SXOEmbedVideoResponse *)self height];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

@end