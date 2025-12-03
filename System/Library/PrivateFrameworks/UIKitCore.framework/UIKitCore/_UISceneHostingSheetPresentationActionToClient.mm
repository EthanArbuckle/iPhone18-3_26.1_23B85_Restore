@interface _UISceneHostingSheetPresentationActionToClient
+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient;
+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change;
+ (id)actionForSheetInteractionDraggingDidEnd;
- (void)executeActionForSheetPresentationController:(id)controller;
@end

@implementation _UISceneHostingSheetPresentationActionToClient

+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE2F200 forSetting:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:coefficient];
  [v5 setObject:v6 forSetting:1];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change
{
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v8 = translation.y;
  v9 = translation.x;
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

  v14 = [MEMORY[0x1E696AD98] numberWithBool:changeCopy];
  [v11 setObject:v14 forSetting:4];

  v15 = [[self alloc] initWithInfo:v11 responder:0];

  return v15;
}

+ (id)actionForSheetInteractionDraggingDidEnd
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE2F230 forSetting:0];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)executeActionForSheetPresentationController:(id)controller
{
  controllerCopy = controller;
  info = [(_UISceneHostingSheetPresentationActionToClient *)self info];
  v5 = [info objectForSetting:0];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue == 2)
  {
    [controllerCopy _hostSheetInteractionDraggingDidEnd];
  }

  else if (unsignedIntegerValue == 1)
  {
    info2 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v13 = [info2 objectForSetting:2];
    [v13 CGPointValue];
    v15 = v14;
    v17 = v16;

    info3 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v19 = [info3 objectForSetting:3];
    [v19 CGPointValue];
    v21 = v20;
    v23 = v22;

    info4 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v25 = [info4 objectForSetting:4];
    bOOLValue = [v25 BOOLValue];

    [controllerCopy _hostSheetInteractionDraggingDidChangeWithTranslation:bOOLValue velocity:v15 animateChange:{v17, v21, v23}];
  }

  else
  {
    v7 = controllerCopy;
    if (unsignedIntegerValue)
    {
      goto LABEL_8;
    }

    info5 = [(_UISceneHostingSheetPresentationActionToClient *)self info];
    v9 = [info5 objectForSetting:1];
    [v9 floatValue];
    v11 = v10;

    [controllerCopy _hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:v11];
  }

  v7 = controllerCopy;
LABEL_8:
}

@end