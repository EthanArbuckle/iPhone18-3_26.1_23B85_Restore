@interface SXOEmbedVideoResponse
+ (id)jsonPropertyNameForObjCPropertyName:(id)a3;
- (CGSize)size;
@end

@implementation SXOEmbedVideoResponse

+ (id)jsonPropertyNameForObjCPropertyName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([(__CFString *)v3 isEqualToString:@"HTML"])
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