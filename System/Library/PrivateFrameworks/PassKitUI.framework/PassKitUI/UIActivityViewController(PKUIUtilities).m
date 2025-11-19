@interface UIActivityViewController(PKUIUtilities)
+ (id)pkui_activityControllerForPass:()PKUIUtilities passView:passLinkedApplication:;
@end

@implementation UIActivityViewController(PKUIUtilities)

+ (id)pkui_activityControllerForPass:()PKUIUtilities passView:passLinkedApplication:
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 passType])
  {
    v10 = 0;
    goto LABEL_11;
  }

  v11 = [v7 sharingMethod];
  v12 = [[PKActivityItemProvider alloc] initWithPass:v7 passView:v8 linkedApp:v9 sharingMethod:v11];
  if (v12)
  {
    if (v11 == 1)
    {
      v18 = MEMORY[0x1E695DF70];
      v19 = [v7 sharingURL];
      v17 = [v18 arrayWithObjects:{v12, v19, 0}];

      v10 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:v17 applicationActivities:0];
      v20 = *MEMORY[0x1E69CDAE0];
      v23[0] = *MEMORY[0x1E69CDAC8];
      v23[1] = v20;
      v23[2] = *MEMORY[0x1E69CDAD0];
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
      [v10 setExcludedActivityTypes:v21];

      goto LABEL_9;
    }

    if (!v11)
    {
      v13 = objc_alloc(MEMORY[0x1E69CD9F8]);
      v25[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v10 = [v13 initWithActivityItems:v14 applicationActivities:0];

      v15 = *MEMORY[0x1E69CDAE8];
      v24[0] = *MEMORY[0x1E69CDAC0];
      v24[1] = v15;
      v16 = *MEMORY[0x1E69CDAE0];
      v24[2] = *MEMORY[0x1E69CDAC8];
      v24[3] = v16;
      v24[4] = *MEMORY[0x1E69CDAD0];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
      [v10 setExcludedActivityTypes:v17];
LABEL_9:

      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_10:

LABEL_11:

  return v10;
}

@end