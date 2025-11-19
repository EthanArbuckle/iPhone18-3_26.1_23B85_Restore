@interface NSString(RCAdditions)
- (id)rc_reversedString;
- (id)rc_stringFromRealPath;
@end

@implementation NSString(RCAdditions)

- (id)rc_reversedString
{
  v2 = objc_opt_new();
  v3 = [a1 length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__NSString_RCAdditions__rc_reversedString__block_invoke;
  v6[3] = &unk_279E44488;
  v4 = v2;
  v7 = v4;
  [a1 enumerateSubstringsInRange:0 options:v3 usingBlock:{258, v6}];

  return v4;
}

- (id)rc_stringFromRealPath
{
  v1 = realpath_DARWIN_EXTSN([a1 fileSystemRepresentation], 0);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end