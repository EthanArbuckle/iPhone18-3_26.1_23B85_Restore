@interface PunctuationFailure
- (BOOL)doesMatchResult:(id)a3;
- (PunctuationFailure)init;
@end

@implementation PunctuationFailure

- (BOOL)doesMatchResult:(id)a3
{
  v4 = a3;
  v5 = [v4 corrected];
  v6 = [v5 componentsJoinedByString:&stru_287EC4808];

  v7 = [v4 intended];
  v8 = [v7 componentsJoinedByString:&stru_287EC4808];

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
    v3 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    punctuation = v2->_punctuation;
    v2->_punctuation = v3;
  }

  return v2;
}

@end