@interface SSScreenSnapshot
+ (id)snapshotWithImage:(id)image fromScreen:(id)screen;
@end

@implementation SSScreenSnapshot

+ (id)snapshotWithImage:(id)image fromScreen:(id)screen
{
  imageCopy = image;
  screenCopy = screen;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[1];
  v7[1] = imageCopy;
  v9 = imageCopy;

  v10 = v7[2];
  v7[2] = screenCopy;

  return v7;
}

@end