@interface WFAskParameterDialogRequest(Parameter)
+ (uint64_t)dialogComponentStyleForParameter:()Parameter;
@end

@implementation WFAskParameterDialogRequest(Parameter)

+ (uint64_t)dialogComponentStyleForParameter:()Parameter
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([objc_opt_class() isSubclassOfClass:*(*(&v16 + 1) + 8 * v12)])
        {

          v13 = 1;
          goto LABEL_13;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v3 liveUpdatesPossibleStatesInEditor];
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end