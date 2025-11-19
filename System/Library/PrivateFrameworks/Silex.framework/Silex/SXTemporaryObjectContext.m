@interface SXTemporaryObjectContext
+ (id)temporaryObjectContext;
@end

@implementation SXTemporaryObjectContext

+ (id)temporaryObjectContext
{
  v2 = objc_alloc_init(MEMORY[0x1E69D56A0]);
  v3 = [(TSPObjectContext *)[SXTemporaryObjectContext alloc] initWithDelegate:v2];

  return v3;
}

@end