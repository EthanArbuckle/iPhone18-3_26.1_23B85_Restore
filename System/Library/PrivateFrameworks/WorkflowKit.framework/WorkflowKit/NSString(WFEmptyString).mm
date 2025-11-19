@interface NSString(WFEmptyString)
- (BOOL)wf_isEmpty;
- (id)wf_trimmedString;
@end

@implementation NSString(WFEmptyString)

- (BOOL)wf_isEmpty
{
  v1 = [a1 wf_trimmedString];
  v2 = [v1 length] == 0;

  return v2;
}

- (id)wf_trimmedString
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

@end