@interface SpaceBarFollowingPunctuationFailure
- (BOOL)doesMatchResult:(id)result;
- (SpaceBarFollowingPunctuationFailure)init;
@end

@implementation SpaceBarFollowingPunctuationFailure

- (BOOL)doesMatchResult:(id)result
{
  resultCopy = result;
  corrected = [resultCopy corrected];
  v6 = [corrected componentsJoinedByString:&stru_287EC4808];

  intended = [resultCopy intended];

  v8 = [intended componentsJoinedByString:&stru_287EC4808];

  if ([v6 isEqualToString:v8] & 1) != 0 || (objc_msgSend(v6, "hasSuffix:", @" "))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = !-[NSCharacterSet characterIsMember:](self->_letters, "characterIsMember:", [v8 characterAtIndex:{objc_msgSend(v8, "length") - 2}]);
  }

  return v9;
}

- (SpaceBarFollowingPunctuationFailure)init
{
  v6.receiver = self;
  v6.super_class = SpaceBarFollowingPunctuationFailure;
  v2 = [(SpaceBarFollowingPunctuationFailure *)&v6 init];
  if (v2)
  {
    letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    letters = v2->_letters;
    v2->_letters = letterCharacterSet;
  }

  return v2;
}

@end