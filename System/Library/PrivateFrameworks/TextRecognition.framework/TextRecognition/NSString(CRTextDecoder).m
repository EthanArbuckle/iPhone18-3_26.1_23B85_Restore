@interface NSString(CRTextDecoder)
- (id)combinedTokenSequenceString;
@end

@implementation NSString(CRTextDecoder)

- (id)combinedTokenSequenceString
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\uFFFC" withString:@" "];

  return v2;
}

@end