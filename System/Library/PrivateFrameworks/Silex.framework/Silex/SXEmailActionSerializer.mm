@interface SXEmailActionSerializer
- (id)URLForAction:(id)action type:(int64_t)type;
@end

@implementation SXEmailActionSerializer

- (id)URLForAction:(id)action type:(int64_t)type
{
  actionCopy = action;
  if (actionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"mailto:"];
    recipient = [actionCopy recipient];

    if (recipient)
    {
      recipient2 = [actionCopy recipient];
      [v5 appendString:recipient2];
    }

    subject = [actionCopy subject];

    if (subject)
    {
      subject2 = [actionCopy subject];
      uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v11 = [subject2 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

      [v5 appendFormat:@"?subject=%@", v11];
    }

    v12 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end