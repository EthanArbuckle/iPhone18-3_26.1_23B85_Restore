@interface NSString(LTStatistics)
- (id)_ltTrimWhitespaces;
- (uint64_t)_ltRemoveAllWhitespaces;
@end

@implementation NSString(LTStatistics)

- (uint64_t)_ltRemoveAllWhitespaces
{
  v2 = [a1 length];

  return [a1 stringByReplacingOccurrencesOfString:@"\\s" withString:&stru_284834138 options:1024 range:{0, v2}];
}

- (id)_ltTrimWhitespaces
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

@end