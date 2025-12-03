@interface NSNotATextLocation
+ (id)notATextLocation;
@end

@implementation NSNotATextLocation

+ (id)notATextLocation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NSNotATextLocation_notATextLocation__block_invoke;
  block[3] = &unk_1E72657B8;
  block[4] = self;
  if (notATextLocation_onceToken != -1)
  {
    dispatch_once(&notATextLocation_onceToken, block);
  }

  return notATextLocation_notATextLocation;
}

id __38__NSNotATextLocation_notATextLocation__block_invoke()
{
  result = objc_alloc_init(objc_opt_class());
  notATextLocation_notATextLocation = result;
  return result;
}

@end