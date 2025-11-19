@interface _UISceneHostingSheetPresentationActionToClient
+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3;
+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5;
+ (id)actionForSheetInteractionDraggingDidEnd;
- (void)executeActionForSheetPresentationController:(id)a3;
@end

@implementation _UISceneHostingSheetPresentationActionToClient

+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE2F200 forSetting:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v6 forSetting:1];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v11 setObject:&unk_1EFE2F218 forSetting:0];
  *v18 = v9;
  *&v18[1] = v8;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:v18 objCType:"{CGPoint=dd}"];
  [v11 setObject:v12 forSetting:2];

  *v17 = x;
  *&v17[1] = y;
  v13 = [MEMORY[0x1E696B098] valueWithBytes:v17 objCType:"{CGPoint=dd}"];
  [v11 setObject:v13 forSetting:3];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v11 setObject:v14 forSetting:4];

  v15 = [[a1 alloc] initWithInfo:v11 responder:0];

  return v15;
}

+ (id)actionForSheetInteractionDraggingDidEnd
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE2F230 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)executeActionForSheetPresentationController:(id)a3
{
  v27 = a3;
  v4 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
  v5 = [v4 objectForSetting:0];
  v6 = [v5 unsignedIntegerValue];

  if (v6 == 2)
  {
    [v27 _hostSheetInteractionDraggingDidEnd];
  }

  else if (v6 == 1)
  {
    v12 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v13 = [v12 objectForSetting:2];
    [v13 CGPointValue];
    v15 = v14;
    v17 = v16;

    v18 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v19 = [v18 objectForSetting:3];
    [v19 CGPointValue];
    v21 = v20;
    v23 = v22;

    v24 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v25 = [v24 objectForSetting:4];
    v26 = [v25 BOOLValue];

    [v27 _hostSheetInteractionDraggingDidChangeWithTranslation:v26 velocity:v15 animateChange:{v17, v21, v23}];
  }

  else
  {
    v7 = v27;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v9 = [v8 objectForSetting:1];
    [v9 floatValue];
    v11 = v10;

    [v27 _hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:v11];
  }

  v7 = v27;
LABEL_8:
}

@end