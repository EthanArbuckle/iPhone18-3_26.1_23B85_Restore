@interface NSKeyedArchiver(UIKitAdditions)
+ (id)_ui_archivedInterprocessDataWithRootObject:()UIKitAdditions requiringSecureCoding:error:;
- (uint64_t)_ui_isInterprocess;
- (void)_ui_setIsInterprocess:()UIKitAdditions;
@end

@implementation NSKeyedArchiver(UIKitAdditions)

- (uint64_t)_ui_isInterprocess
{
  v2 = objc_getAssociatedObject(self, &_NSKeyedArchiverUIIsInterprocessKey);
  bOOLValue = [v2 BOOLValue];

  if (bOOLValue)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = NSKeyedArchiver_0;
  return objc_msgSendSuper2(&v5, sel__ui_isInterprocess);
}

- (void)_ui_setIsInterprocess:()UIKitAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, &_NSKeyedArchiverUIIsInterprocessKey, v2, 1);
}

+ (id)_ui_archivedInterprocessDataWithRootObject:()UIKitAdditions requiringSecureCoding:error:
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:a4];
  [v6 _ui_setIsInterprocess:1];
  [v6 encodeObject:v5 forKey:*MEMORY[0x1E696A508]];
  [v6 finishEncoding];
  encodedData = [v6 encodedData];

  return encodedData;
}

@end