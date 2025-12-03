@interface NSString(SBPasscodeLockEntryFieldExtras)
- (uint64_t)isNewline;
- (uint64_t)isSingleCharacterAndMemberOfSet:()SBPasscodeLockEntryFieldExtras;
@end

@implementation NSString(SBPasscodeLockEntryFieldExtras)

- (uint64_t)isSingleCharacterAndMemberOfSet:()SBPasscodeLockEntryFieldExtras
{
  v4 = a3;
  if ([self length] == 1)
  {
    v5 = [v4 characterIsMember:{objc_msgSend(self, "characterAtIndex:", 0)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)isNewline
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [self isSingleCharacterAndMemberOfSet:newlineCharacterSet];

  return v3;
}

@end