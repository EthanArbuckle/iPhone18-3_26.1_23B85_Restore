@interface NSString(ParsecExtras)
- (id)safari_normalizedParsecInputString;
@end

@implementation NSString(ParsecExtras)

- (id)safari_normalizedParsecInputString
{
  v28[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"‘’‚‛"];
  v27[0] = v2;
  v28[0] = @"'";
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"“”„‟"];
  v27[1] = v3;
  v28[1] = @"";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [whitespaceCharacterSet mutableCopy];

  [v5 addCharactersInRange:{0x2000, 12}];
  [v5 addCharactersInString:@"  ᠎  　﻿"];
  precomposedStringWithCanonicalMapping = [self precomposedStringWithCanonicalMapping];
  lowercaseString = [precomposedStringWithCanonicalMapping lowercaseString];

  string = [MEMORY[0x1E696AD60] string];
  v9 = [lowercaseString length];
  if (v9)
  {
    LOBYTE(v10) = 0;
    for (i = 0; i != v9; ++i)
    {
      v12 = v10;
      v13 = [lowercaseString characterAtIndex:i];
      v26 = v13;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v10 = [v5 characterIsMember:v13];
      if (v10)
      {
        if ((v12 & 1) == 0)
        {
          if ([string length])
          {
            [string appendString:@" "];
          }

          *(v23 + 24) = 1;
        }
      }

      else if ((v23[3] & 1) == 0)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60__NSString_ParsecExtras__safari_normalizedParsecInputString__block_invoke;
        v18[3] = &unk_1E7FC9000;
        v21 = v26;
        v14 = string;
        v19 = v14;
        v20 = &v22;
        [v17 enumerateKeysAndObjectsUsingBlock:v18];
        if ((v23[3] & 1) == 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v26 length:1];
          [v14 appendString:v15];
        }
      }

      _Block_object_dispose(&v22, 8);
    }
  }

  return string;
}

@end