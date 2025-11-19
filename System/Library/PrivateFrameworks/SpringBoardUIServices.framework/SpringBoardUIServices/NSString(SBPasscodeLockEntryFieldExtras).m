@interface NSString(SBPasscodeLockEntryFieldExtras)
- (uint64_t)isNewline;
- (uint64_t)isSingleCharacterAndMemberOfSet:()SBPasscodeLockEntryFieldExtras;
@end

@implementation NSString(SBPasscodeLockEntryFieldExtras)

- (uint64_t)isSingleCharacterAndMemberOfSet:()SBPasscodeLockEntryFieldExtras
{
  v4 = a3;
  if ([a1 length] == 1)
  {
    v5 = [v4 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", 0)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)isNewline
{
  v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [a1 isSingleCharacterAndMemberOfSet:v2];

  return v3;
}

@end