@interface AutocorrectionFailure
- (AutocorrectionFailure)init;
- (BOOL)doesMatchResult:(id)a3;
@end

@implementation AutocorrectionFailure

- (BOOL)doesMatchResult:(id)a3
{
  v4 = a3;
  v5 = [v4 corrected];
  v6 = [v5 componentsJoinedByString:&stru_287EC4808];
  v7 = [v6 lowercaseString];

  v8 = [v4 intended];
  v9 = [v8 componentsJoinedByString:&stru_287EC4808];
  v10 = [v9 lowercaseString];

  if ([v10 length])
  {
    v11 = 0;
    while ([v7 length] > v11)
    {
      v12 = [v10 characterAtIndex:v11];
      if (v12 != [v7 characterAtIndex:v11] && -[NSCharacterSet characterIsMember:](self->_letters, "characterIsMember:", v12))
      {
        v13 = 1;
        goto LABEL_8;
      }

      if ([v10 length] <= ++v11)
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
    v3 = [MEMORY[0x277CCA900] letterCharacterSet];
    letters = v2->_letters;
    v2->_letters = v3;
  }

  return v2;
}

@end