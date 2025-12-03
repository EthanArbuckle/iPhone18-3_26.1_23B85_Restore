@interface NSString(TRITreatmentId)
- (BOOL)triIsValidTreatmentId;
@end

@implementation NSString(TRITreatmentId)

- (BOOL)triIsValidTreatmentId
{
  if (![self length])
  {
    return 0;
  }

  alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v3 = [alphanumericCharacterSet mutableCopy];

  [v3 addCharactersInString:@"-"];
  invertedSet = [v3 invertedSet];
  v5 = [self rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

@end