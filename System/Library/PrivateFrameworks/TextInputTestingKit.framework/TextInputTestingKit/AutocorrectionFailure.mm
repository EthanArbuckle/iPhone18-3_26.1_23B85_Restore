@interface AutocorrectionFailure
- (AutocorrectionFailure)init;
- (BOOL)doesMatchResult:(id)result;
@end

@implementation AutocorrectionFailure

- (BOOL)doesMatchResult:(id)result
{
  resultCopy = result;
  corrected = [resultCopy corrected];
  v6 = [corrected componentsJoinedByString:&stru_287EC4808];
  lowercaseString = [v6 lowercaseString];

  intended = [resultCopy intended];
  v9 = [intended componentsJoinedByString:&stru_287EC4808];
  lowercaseString2 = [v9 lowercaseString];

  if ([lowercaseString2 length])
  {
    v11 = 0;
    while ([lowercaseString length] > v11)
    {
      v12 = [lowercaseString2 characterAtIndex:v11];
      if (v12 != [lowercaseString characterAtIndex:v11] && -[NSCharacterSet characterIsMember:](self->_letters, "characterIsMember:", v12))
      {
        v13 = 1;
        goto LABEL_8;
      }

      if ([lowercaseString2 length] <= ++v11)
      {
        break;
      }
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (AutocorrectionFailure)init
{
  v6.receiver = self;
  v6.super_class = AutocorrectionFailure;
  v2 = [(AutocorrectionFailure *)&v6 init];
  if (v2)
  {
    letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    letters = v2->_letters;
    v2->_letters = letterCharacterSet;
  }

  return v2;
}

@end