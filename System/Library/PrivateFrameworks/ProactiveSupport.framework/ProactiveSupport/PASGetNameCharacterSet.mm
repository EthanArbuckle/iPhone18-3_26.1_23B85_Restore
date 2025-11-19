@interface PASGetNameCharacterSet
@end

@implementation PASGetNameCharacterSet

void ___PASGetNameCharacterSet_block_invoke()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
  if (!MutableCopy)
  {
    __assert_rtn("_PASGetNameCharacterSet_block_invoke", "_PASStringUtil.m", 264, "cs");
  }

  v2 = MutableCopy;
  v4.location = 39;
  v4.length = 1;
  CFCharacterSetAddCharactersInRange(MutableCopy, v4);
  v5.location = 8217;
  v5.length = 1;
  CFCharacterSetAddCharactersInRange(v2, v5);
  v6.location = 45;
  v6.length = 1;
  CFCharacterSetAddCharactersInRange(v2, v6);
  _PASGetNameCharacterSet_charset = CFCharacterSetCreateCopy(0, v2);

  CFRelease(v2);
}

@end