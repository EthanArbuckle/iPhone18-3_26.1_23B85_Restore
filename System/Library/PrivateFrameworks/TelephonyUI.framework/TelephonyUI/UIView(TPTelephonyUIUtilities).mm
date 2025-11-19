@interface UIView(TPTelephonyUIUtilities)
+ (void)tpSetSemanticContentAttribute_recursive:()TPTelephonyUIUtilities startingAtView:;
@end

@implementation UIView(TPTelephonyUIUtilities)

+ (void)tpSetSemanticContentAttribute_recursive:()TPTelephonyUIUtilities startingAtView:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 subviews];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [a1 tpSetSemanticContentAttribute_recursive:a3 startingAtView:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v6 setSemanticContentAttribute:a3];
  v12 = *MEMORY[0x1E69E9840];
}

@end