@interface NSStringDrawingTextStorageSettings
+ (NSStringDrawingTextStorageSettings)threadSpecificStringDrawingTextStorageSettings:(uint64_t)settings;
- (NSStringDrawingTextStorageSettings)init;
@end

@implementation NSStringDrawingTextStorageSettings

+ (NSStringDrawingTextStorageSettings)threadSpecificStringDrawingTextStorageSettings:(uint64_t)settings
{
  objc_opt_self();
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AF00] "currentThread")];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v3 = objc_alloc_init(NSStringDrawingTextStorageSettings);
    [objc_msgSend(objc_msgSend(MEMORY[0x1E696AF00] "currentThread")];
  }

  return v3;
}

- (NSStringDrawingTextStorageSettings)init
{
  v4.receiver = self;
  v4.super_class = NSStringDrawingTextStorageSettings;
  v2 = [(NSStringDrawingTextStorageSettings *)&v4 init];
  if (v2)
  {
    *(v2 + 12) = *(v2 + 12) & 0xFFFFFFFFFFFF00FDLL | (+[NSTypesetter defaultStringDrawingTypesetterBehavior]<< 8);
  }

  return v2;
}

@end