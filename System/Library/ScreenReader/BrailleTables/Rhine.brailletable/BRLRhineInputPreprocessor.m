@interface BRLRhineInputPreprocessor
- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6;
@end

@implementation BRLRhineInputPreprocessor

- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6
{
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [&off_910C0 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v6;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(&off_910C0);
        }

        v14 = [*(*(&v15 + 1) + 8 * v10) unsignedIntValue];
        v12 = [NSString stringWithCharacters:&v14 length:1];
        v6 = [v11 stringByReplacingOccurrencesOfString:v12 withString:@" "];

        v10 = v10 + 1;
        v11 = v6;
      }

      while (v8 != v10);
      v8 = [&off_910C0 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v6;
}

@end