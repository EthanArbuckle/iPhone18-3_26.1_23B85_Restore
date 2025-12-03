@interface _UISceneZoomTransitionDismissInteractionActionToHost
+ (id)actionForDismissInteractionDidBeginAtLocation:(double)location withVelocity:(double)velocity;
+ (id)actionForDismissInteractionDidCancelWithVelocity:(double)velocity originalPosition:(double)position;
+ (id)actionForDismissInteractionDidDismissWithVelocity:(double)velocity;
+ (id)actionForDismissInteractionDidIssueUpdate:(uint64_t)update;
- (void)executeActionForProxyDismissInteraction:(void *)interaction;
@end

@implementation _UISceneZoomTransitionDismissInteractionActionToHost

+ (id)actionForDismissInteractionDidBeginAtLocation:(double)location withVelocity:(double)velocity
{
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33928 forSetting:0];
  *v15 = self;
  *&v15[1] = a2;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v9 setObject:v10 forSetting:1];

  *v14 = location;
  *&v14[1] = velocity;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{CGPoint=dd}"];
  [v9 setObject:v11 forSetting:2];

  v12 = [[v8 alloc] initWithInfo:v9 responder:0];

  return v12;
}

+ (id)actionForDismissInteractionDidIssueUpdate:(uint64_t)update
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1EFE33940 forSetting:0];
  [v4 setObject:v2 forSetting:3];

  v5 = [[v3 alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForDismissInteractionDidDismissWithVelocity:(double)velocity
{
  v4 = objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE33958 forSetting:0];
  *v9 = velocity;
  *&v9[1] = a2;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CGPoint=dd}"];
  [v5 setObject:v6 forSetting:2];

  v7 = [[v4 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForDismissInteractionDidCancelWithVelocity:(double)velocity originalPosition:(double)position
{
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1EFE33970 forSetting:0];
  *v15 = self;
  *&v15[1] = a2;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v9 setObject:v10 forSetting:2];

  *v14 = velocity;
  *&v14[1] = position;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{CGPoint=dd}"];
  [v9 setObject:v11 forSetting:1];

  v12 = [[v8 alloc] initWithInfo:v9 responder:0];

  return v12;
}

- (void)executeActionForProxyDismissInteraction:(void *)interaction
{
  v38 = a2;
  if (interaction)
  {
    info = [interaction info];
    v4 = [info objectForSetting:0];
    unsignedIntegerValue = [v4 unsignedIntegerValue];

    if (unsignedIntegerValue > 1)
    {
      if (unsignedIntegerValue == 2)
      {
        info2 = [interaction info];
        v33 = [info2 objectForSetting:2];
        [v33 CGPointValue];
        v35 = v34;
        v37 = v36;

        [v38 dismissWithVelocity:{v35, v37}];
      }

      else if (unsignedIntegerValue == 3)
      {
        info3 = [interaction info];
        v9 = [info3 objectForSetting:2];
        [v9 CGPointValue];
        v11 = v10;
        v13 = v12;

        info4 = [interaction info];
        v15 = [info4 objectForSetting:1];
        [v15 CGPointValue];
        v17 = v16;
        v19 = v18;

        [v38 cancelWithVelocity:v11 originalPosition:{v13, v17, v19}];
      }
    }

    else if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue == 1)
      {
        info5 = [interaction info];
        v7 = [info5 objectForSetting:3];

        [v38 issueUpdate:v7];
      }
    }

    else
    {
      info6 = [interaction info];
      v21 = [info6 objectForSetting:1];
      [v21 CGPointValue];
      v23 = v22;
      v25 = v24;

      info7 = [interaction info];
      v27 = [info7 objectForSetting:2];
      [v27 CGPointValue];
      v29 = v28;
      v31 = v30;

      [v38 beginAtLocation:v23 withVelocity:{v25, v29, v31}];
    }
  }
}

@end