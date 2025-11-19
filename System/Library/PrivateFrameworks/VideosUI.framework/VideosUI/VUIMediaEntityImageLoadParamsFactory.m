@interface VUIMediaEntityImageLoadParamsFactory
+ (id)imageLoadParamsWithMediaEntity:(id)a3 imageType:(unint64_t)a4;
@end

@implementation VUIMediaEntityImageLoadParamsFactory

+ (id)imageLoadParamsWithMediaEntity:(id)a3 imageType:(unint64_t)a4
{
  v5 = a3;
  if (([v5 conformsToProtocol:&unk_1F5E8C798] & 1) != 0 || (objc_msgSend(v5, "conformsToProtocol:", &unk_1F5EAFF48) & 1) != 0 || objc_msgSend(v5, "conformsToProtocol:", &unk_1F5F117A0))
  {
    v6 = [v5 imageLoadParamsWithImageType:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end