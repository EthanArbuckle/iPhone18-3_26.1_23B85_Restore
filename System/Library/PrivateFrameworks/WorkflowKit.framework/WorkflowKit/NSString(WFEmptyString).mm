@interface NSString(WFEmptyString)
- (BOOL)wf_isEmpty;
- (id)wf_trimmedString;
@end

@implementation NSString(WFEmptyString)

- (BOOL)wf_isEmpty
{
  wf_trimmedString = [self wf_trimmedString];
  v2 = [wf_trimmedString length] == 0;

  return v2;
}

- (id)wf_trimmedString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

@end