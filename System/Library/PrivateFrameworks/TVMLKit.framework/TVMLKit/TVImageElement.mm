@interface TVImageElement
- (CGSize)imageScaleToSize;
- (NSDictionary)srcset;
- (NSURL)URL;
- (int64_t)imageType;
@end

@implementation TVImageElement

- (NSURL)URL
{
  element = [(TVViewElement *)self element];
  v3 = [element url];

  return v3;
}

- (NSDictionary)srcset
{
  element = [(TVViewElement *)self element];
  srcset = [element srcset];

  return srcset;
}

- (CGSize)imageScaleToSize
{
  element = [(TVViewElement *)self element];
  [element tv_imageScaleToSize];
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
  element = [(TVViewElement *)self element];
  tv_imageType = [element tv_imageType];

  return tv_imageType;
}

@end