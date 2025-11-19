@interface NSString(TITypingSession)
- (uint64_t)endsInPunctuation;
- (uint64_t)endsInWhitespace;
@end

@implementation NSString(TITypingSession)

- (uint64_t)endsInWhitespace
{
  result = [a1 length];
  if (result)
  {
    v3 = [a1 characterAtIndex:result - 1];
    v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v5 = [v4 characterIsMember:v3];

    return v5;
  }

  return result;
}

- (uint64_t)endsInPunctuation
{
  result = [a1 length];
  if (result)
  {
    v3 = [a1 characterAtIndex:result - 1];
    v4 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v5 = [v4 characterIsMember:v3];

    return v5;
  }

  return result;
}

@end