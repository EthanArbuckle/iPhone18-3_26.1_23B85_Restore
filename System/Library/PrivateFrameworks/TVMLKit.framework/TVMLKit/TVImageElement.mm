@interface TVImageElement
- (CGSize)imageScaleToSize;
- (NSDictionary)srcset;
- (NSURL)URL;
- (int64_t)imageType;
@end

@implementation TVImageElement

- (NSURL)URL
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 url];

  return v3;
}

- (NSDictionary)srcset
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 srcset];

  return v3;
}

- (CGSize)imageScaleToSize
{
  v2 = [(TVViewElement *)self element];
  [v2 tv_imageScaleToSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)imageType
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 tv_imageType];

  return v3;
}

@end