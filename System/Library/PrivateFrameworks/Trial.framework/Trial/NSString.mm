@interface NSString
@end

@implementation NSString

void __70__NSString_TRI__triSanitizedPathComponentWithMaxLength_addHash_error___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_"];
  v2 = [v1 invertedSet];
  v3 = _MergedGlobals_8;
  _MergedGlobals_8 = v2;

  objc_autoreleasePoolPop(v0);
}

@end