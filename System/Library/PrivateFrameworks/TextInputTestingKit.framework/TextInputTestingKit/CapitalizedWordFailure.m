@interface CapitalizedWordFailure
- (BOOL)doesMatchResult:(id)a3;
@end

@implementation CapitalizedWordFailure

- (BOOL)doesMatchResult:(id)a3
{
  v3 = a3;
  v4 = [v3 corrected];
  v5 = [v4 componentsJoinedByString:&stru_287EC4808];

  v6 = [v3 intended];
  v7 = [v6 componentsJoinedByString:&stru_287EC4808];

  if ([v5 isEqualToString:v7])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = v7;
    v10 = [v3 context];
    v11 = [v10 length];

    if (!v11 || v11 != 1 && ([v3 context], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "characterAtIndex:", v11 - 1), v12, objc_msgSend(v3, "context"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "characterAtIndex:", v11 - 2), v14, v13 == 32) && v15 <= 0x3F && ((1 << v15) & 0x8000400200000000) != 0)
    {
      v16 = [v9 substringToIndex:1];
      v17 = [v16 lowercaseString];

      v18 = [v9 stringByReplacingCharactersInRange:0 withString:{1, v17}];

      v9 = v18;
    }

    v19 = [v9 lowercaseString];
    v8 = [v19 isEqualToString:v9] ^ 1;
  }

  return v8;
}

@end