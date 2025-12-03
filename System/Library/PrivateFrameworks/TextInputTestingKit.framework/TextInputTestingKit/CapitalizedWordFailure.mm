@interface CapitalizedWordFailure
- (BOOL)doesMatchResult:(id)result;
@end

@implementation CapitalizedWordFailure

- (BOOL)doesMatchResult:(id)result
{
  resultCopy = result;
  corrected = [resultCopy corrected];
  v5 = [corrected componentsJoinedByString:&stru_287EC4808];

  intended = [resultCopy intended];
  v7 = [intended componentsJoinedByString:&stru_287EC4808];

  if ([v5 isEqualToString:v7])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = v7;
    context = [resultCopy context];
    v11 = [context length];

    if (!v11 || v11 != 1 && ([resultCopy context], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "characterAtIndex:", v11 - 1), v12, objc_msgSend(resultCopy, "context"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "characterAtIndex:", v11 - 2), v14, v13 == 32) && v15 <= 0x3F && ((1 << v15) & 0x8000400200000000) != 0)
    {
      v16 = [v9 substringToIndex:1];
      lowercaseString = [v16 lowercaseString];

      v18 = [v9 stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];

      v9 = v18;
    }

    lowercaseString2 = [v9 lowercaseString];
    v8 = [lowercaseString2 isEqualToString:v9] ^ 1;
  }

  return v8;
}

@end