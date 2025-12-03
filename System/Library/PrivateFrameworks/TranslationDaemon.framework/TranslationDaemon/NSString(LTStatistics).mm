@interface NSString(LTStatistics)
- (id)_ltTrimWhitespaces;
- (uint64_t)_ltRemoveAllWhitespaces;
@end

@implementation NSString(LTStatistics)

- (uint64_t)_ltRemoveAllWhitespaces
{
  v2 = [self length];

  return [self stringByReplacingOccurrencesOfString:@"\\s" withString:&stru_284834138 options:1024 range:{0, v2}];
}

- (id)_ltTrimWhitespaces
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

@end