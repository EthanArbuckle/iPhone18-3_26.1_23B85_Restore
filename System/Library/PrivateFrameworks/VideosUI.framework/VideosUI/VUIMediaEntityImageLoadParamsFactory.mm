@interface VUIMediaEntityImageLoadParamsFactory
+ (id)imageLoadParamsWithMediaEntity:(id)entity imageType:(unint64_t)type;
@end

@implementation VUIMediaEntityImageLoadParamsFactory

+ (id)imageLoadParamsWithMediaEntity:(id)entity imageType:(unint64_t)type
{
  entityCopy = entity;
  if (([entityCopy conformsToProtocol:&unk_1F5E8C798] & 1) != 0 || (objc_msgSend(entityCopy, "conformsToProtocol:", &unk_1F5EAFF48) & 1) != 0 || objc_msgSend(entityCopy, "conformsToProtocol:", &unk_1F5F117A0))
  {
    v6 = [entityCopy imageLoadParamsWithImageType:type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end