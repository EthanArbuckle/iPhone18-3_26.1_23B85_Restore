@interface _UISceneZoomTransitionDismissInteractionActionToHost
+ (id)actionForDismissInteractionDidBeginAtLocation:(double)a3 withVelocity:(double)a4;
+ (id)actionForDismissInteractionDidCancelWithVelocity:(double)a3 originalPosition:(double)a4;
+ (id)actionForDismissInteractionDidDismissWithVelocity:(double)a1;
+ (id)actionForDismissInteractionDidIssueUpdate:(uint64_t)a1;
- (void)executeActionForProxyDismissInteraction:(void *)a1;
@end

@implementation _UISceneZoomTransitionDismissInteractionActionToHost

+ (id)actionForDismissInteractionDidBeginAtLocation:(double)a3 withVelocity:(double)a4
{
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33928 forSetting:0];
  *v15 = a1;
  *&v15[1] = a2;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v9 setObject:v10 forSetting:1];

  *v14 = a3;
  *&v14[1] = a4;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{CGPoint=dd}"];
  [v9 setObject:v11 forSetting:2];

  v12 = [[v8 alloc] initWithInfo:v9 responder:0];

  return v12;
}

+ (id)actionForDismissInteractionDidIssueUpdate:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1EFE33940 forSetting:0];
  [v4 setObject:v2 forSetting:3];

  v5 = [[v3 alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForDismissInteractionDidDismissWithVelocity:(double)a1
{
  v4 = objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE33958 forSetting:0];
  *v9 = a1;
  *&v9[1] = a2;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CGPoint=dd}"];
  [v5 setObject:v6 forSetting:2];

  v7 = [[v4 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForDismissInteractionDidCancelWithVelocity:(double)a3 originalPosition:(double)a4
{
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33970 forSetting:0];
  *v15 = a1;
  *&v15[1] = a2;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v9 setObject:v10 forSetting:2];

  *v14 = a3;
  *&v14[1] = a4;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{CGPoint=dd}"];
  [v9 setObject:v11 forSetting:1];

  v12 = [[v8 alloc] initWithInfo:v9 responder:0];

  return v12;
}

- (void)executeActionForProxyDismissInteraction:(void *)a1
{
  v38 = a2;
  if (a1)
  {
    v3 = [a1 info];
    v4 = [v3 objectForSetting:0];
    v5 = [v4 unsignedIntegerValue];

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v32 = [a1 info];
        v33 = [v32 objectForSetting:2];
        [v33 CGPointValue];
        v35 = v34;
        v37 = v36;

        [v38 dismissWithVelocity:{v35, v37}];
      }

      else if (v5 == 3)
      {
        v8 = [a1 info];
        v9 = [v8 objectForSetting:2];
        [v9 CGPointValue];
        v11 = v10;
        v13 = v12;

        v14 = [a1 info];
        v15 = [v14 objectForSetting:1];
        [v15 CGPointValue];
        v17 = v16;
        v19 = v18;

        [v38 cancelWithVelocity:v11 originalPosition:{v13, v17, v19}];
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        v6 = [a1 info];
        v7 = [v6 objectForSetting:3];

        [v38 issueUpdate:v7];
      }
    }

    else
    {
      v20 = [a1 info];
      v21 = [v20 objectForSetting:1];
      [v21 CGPointValue];
      v23 = v22;
      v25 = v24;

      v26 = [a1 info];
      v27 = [v26 objectForSetting:2];
      [v27 CGPointValue];
      v29 = v28;
      v31 = v30;

      [v38 beginAtLocation:v23 withVelocity:{v25, v29, v31}];
    }
  }
}

@end