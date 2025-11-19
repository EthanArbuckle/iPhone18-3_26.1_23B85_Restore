@interface _UISceneHostingSheetPresentationActionToHost
+ (id)actionForSheetGrabberDidTriggerPrimaryAction;
+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5;
+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6;
+ (id)actionForSheetInteractionDraggingDidEnd;
- (void)executeActionForSheetPresentationController:(id)a3;
@end

@implementation _UISceneHostingSheetPresentationActionToHost

+ (id)actionForSheetGrabberDidTriggerPrimaryAction
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE30070 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:&unk_1EFE30088 forSetting:0];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v10 setObject:v11 forSetting:1];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v10 setObject:v12 forSetting:2];

  *v16 = x;
  *&v16[1] = y;
  v13 = [MEMORY[0x1E696B098] valueWithBytes:v16 objCType:"{CGPoint=dd}"];
  [v10 setObject:v13 forSetting:3];

  v14 = [[a1 alloc] initWithInfo:v10 responder:0];

  return v14;
}

+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v13 setObject:&unk_1EFE300A0 forSetting:0];
  *v21 = v11;
  *&v21[1] = v10;
  v14 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{CGPoint=dd}"];
  [v13 setObject:v14 forSetting:4];

  *v20 = x;
  *&v20[1] = y;
  v15 = [MEMORY[0x1E696B098] valueWithBytes:v20 objCType:"{CGPoint=dd}"];
  [v13 setObject:v15 forSetting:5];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v13 setObject:v16 forSetting:6];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v13 setObject:v17 forSetting:2];

  v18 = [[a1 alloc] initWithInfo:v13 responder:0];

  return v18;
}

+ (id)actionForSheetInteractionDraggingDidEnd
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE300B8 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)executeActionForSheetPresentationController:(id)a3
{
  v39 = a3;
  v4 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
  v5 = [v4 objectForSetting:0];
  v6 = [v5 unsignedIntegerValue];

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v21 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v22 = [v21 objectForSetting:4];
      [v22 CGPointValue];
      v24 = v23;
      v26 = v25;

      v27 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v28 = [v27 objectForSetting:5];
      [v28 CGPointValue];
      v30 = v29;
      v32 = v31;

      v33 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v34 = [v33 objectForSetting:6];
      v35 = [v34 BOOLValue];

      v36 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v37 = [v36 objectForSetting:2];
      v38 = [v37 BOOLValue];

      [v39 _remoteSheetInteractionDraggingDidChangeWithTranslation:v35 velocity:v38 animateChange:v24 dismissible:{v26, v30, v32}];
    }

    else
    {
      v7 = v39;
      if (v6 != 3)
      {
        goto LABEL_11;
      }

      [v39 _remoteSheetInteractionDraggingDidEnd];
    }
  }

  else if (v6)
  {
    v7 = v39;
    if (v6 != 1)
    {
      goto LABEL_11;
    }

    v8 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
    v9 = [v8 objectForSetting:1];
    [v9 floatValue];
    v11 = v10;

    v12 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
    v13 = [v12 objectForSetting:2];
    v14 = [v13 BOOLValue];

    v15 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
    v16 = [v15 objectForSetting:3];
    [v16 CGPointValue];
    v18 = v17;
    v20 = v19;

    [v39 _remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:v14 dismissible:v11 interruptedOffset:{v18, v20}];
  }

  else
  {
    [v39 _remoteSheetGrabberDidTriggerPrimaryAction];
  }

  v7 = v39;
LABEL_11:
}

@end