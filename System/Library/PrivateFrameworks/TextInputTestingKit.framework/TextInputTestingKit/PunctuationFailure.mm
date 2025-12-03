@interface PunctuationFailure
- (BOOL)doesMatchResult:(id)result;
- (PunctuationFailure)init;
@end

@implementation PunctuationFailure

- (BOOL)doesMatchResult:(id)result
{
  resultCopy = result;
  corrected = [resultCopy corrected];
  v6 = [corrected componentsJoinedByString:&stru_287EC4808];

  intended = [resultCopy intended];
  v8 = [intended componentsJoinedByString:&stru_287EC4808];

  if (([v6 isEqualToString:v8] & 1) == 0 && objc_msgSend(v6, "length"))
  {
    v9 = 0;
    while ([v8 length] > v9)
    {
      v10 = [v6 characterAtIndex:v9];
      v11 = [v8 characterAtIndex:v9];
      if (v10 != v11)
      {
        v12 = [(NSCharacterSet *)self->_punctuation characterIsMember:v11];
        goto LABEL_8;
      }

      if ([v6 length] <= ++v9)
      {
        break;
      }
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (PunctuationFailure)init
{
  v6.receiver = self;
  v6.super_class = PunctuationFailure;
  v2 = [(PunctuationFailure *)&v6 init];
  if (v2)
  {
    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    punctuation = v2->_punctuation;
    v2->_punctuation = punctuationCharacterSet;
  }

  return v2;
}

@end