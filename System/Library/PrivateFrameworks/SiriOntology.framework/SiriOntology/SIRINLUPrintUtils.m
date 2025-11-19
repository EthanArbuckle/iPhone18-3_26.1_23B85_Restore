@interface SIRINLUPrintUtils
+ (id)indentArray:(id)a3 numSpaces:(int64_t)a4;
+ (id)indentLines:(id)a3 numSpaces:(int64_t)a4;
@end

@implementation SIRINLUPrintUtils

+ (id)indentArray:(id)a3 numSpaces:(int64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = @"[\n";
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v19 + 1) + 8 * v8) description];
        v11 = [SIRINLUPrintUtils indentLines:v10 numSpaces:2];

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v11];
        v7 = [(__CFString *)v9 stringByAppendingString:v12];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = @"[\n";
  }

  v13 = [(__CFString *)v7 stringByAppendingString:@"]"];
  v14 = [SIRINLUPrintUtils indentLines:v13 numSpaces:a4];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)indentLines:(id)a3 numSpaces:(int64_t)a4
{
  v5 = a3;
  v6 = a4 + 1;
  v7 = [MEMORY[0x1E696AD60] stringWithCapacity:a4 + 1];
  [v7 appendString:@"\n"];
  if ((a4 & 0x8000000000000000) == 0)
  {
    do
    {
      [v7 appendString:@" "];
      --v6;
    }

    while (v6);
  }

  v8 = [v5 componentsSeparatedByString:@"\n"];
  v9 = [v8 componentsJoinedByString:v7];
  v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v7 substringFromIndex:1];
  v14 = [v12 stringWithFormat:@"%@%@", v13, v11];

  return v14;
}

@end