@interface _UISTouchAuthenticationRecord(UIKit)
+ (id)authenticationRecordForTouch:()UIKit;
@end

@implementation _UISTouchAuthenticationRecord(UIKit)

+ (id)authenticationRecordForTouch:()UIKit
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 45);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (qword_1ED49F3F0 != -1)
  {
    dispatch_once(&qword_1ED49F3F0, &__block_literal_global_381);
  }

  if (_MergedGlobals_1192 == 1)
  {
    if ([v6 _isHostedInAnotherProcess])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = MEMORY[0x1E69DECA0];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __69___UISTouchAuthenticationRecord_UIKit__authenticationRecordForTouch___block_invoke;
        v17[3] = &unk_1E7116AC8;
        v18 = v4;
        v19 = v7;
        v9 = [v8 build:v17];

        v10 = v18;
LABEL_12:

        goto LABEL_14;
      }
    }
  }

  if ([v6 _wantsSuperlayerSecurityAnalysis])
  {
    v11 = [v6 windowScene];
    v9 = [v11 _superlayerSecurityAnalysisSceneComponent];

    if (!v9)
    {
      goto LABEL_14;
    }

    v12 = MEMORY[0x1E69DECA0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69___UISTouchAuthenticationRecord_UIKit__authenticationRecordForTouch___block_invoke_2;
    v14[3] = &unk_1E7116AC8;
    v15 = v4;
    v16 = v9;
    v10 = v9;
    v9 = [v12 build:v14];

    goto LABEL_12;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

@end