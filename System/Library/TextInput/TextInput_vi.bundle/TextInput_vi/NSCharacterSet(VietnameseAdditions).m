@interface NSCharacterSet(VietnameseAdditions)
+ (id)TI_vietnameseBaseCharacterSet;
+ (id)TI_vietnameseTelexSpecialsCharacterSet;
+ (id)TI_vietnameseVIQRSpecialsCharacterSet;
+ (id)TI_vietnameseVNISpecialsCharacterSet;
@end

@implementation NSCharacterSet(VietnameseAdditions)

+ (id)TI_vietnameseBaseCharacterSet
{
  if (TI_vietnameseBaseCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(VietnameseAdditions) TI_vietnameseBaseCharacterSet];
  }

  v1 = TI_vietnameseBaseCharacterSet___vietnameseBaseCharacterSet;

  return v1;
}

+ (id)TI_vietnameseTelexSpecialsCharacterSet
{
  if (TI_vietnameseTelexSpecialsCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(VietnameseAdditions) TI_vietnameseTelexSpecialsCharacterSet];
  }

  v1 = TI_vietnameseTelexSpecialsCharacterSet___vietnameseTelexSpecialsCharacterSet;

  return v1;
}

+ (id)TI_vietnameseVIQRSpecialsCharacterSet
{
  if (TI_vietnameseVIQRSpecialsCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(VietnameseAdditions) TI_vietnameseVIQRSpecialsCharacterSet];
  }

  v1 = TI_vietnameseVIQRSpecialsCharacterSet___vietnameseVIQRSpecialsCharacterSet;

  return v1;
}

+ (id)TI_vietnameseVNISpecialsCharacterSet
{
  if (TI_vietnameseVNISpecialsCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(VietnameseAdditions) TI_vietnameseVNISpecialsCharacterSet];
  }

  v1 = TI_vietnameseVNISpecialsCharacterSet___vietnameseVNISpecialsCharacterSet;

  return v1;
}

@end