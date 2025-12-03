@interface _UISceneHostingSheetPresentationActionToHost
+ (id)actionForSheetGrabberDidTriggerPrimaryAction;
+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset;
+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible;
+ (id)actionForSheetInteractionDraggingDidEnd;
- (void)executeActionForSheetPresentationController:(id)controller;
@end

@implementation _UISceneHostingSheetPresentationActionToHost

+ (id)actionForSheetGrabberDidTriggerPrimaryAction
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE30070 forSetting:0];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  dismissibleCopy = dismissible;
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:&unk_1EFE30088 forSetting:0];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:coefficient];
  [v10 setObject:v11 forSetting:1];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:dismissibleCopy];
  [v10 setObject:v12 forSetting:2];

  *v16 = x;
  *&v16[1] = y;
  v13 = [MEMORY[0x1E696B098] valueWithBytes:v16 objCType:"{CGPoint=dd}"];
  [v10 setObject:v13 forSetting:3];

  v14 = [[self alloc] initWithInfo:v10 responder:0];

  return v14;
}

+ (id)actionForSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible
{
  dismissibleCopy = dismissible;
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v10 = translation.y;
  v11 = translation.x;
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

  v16 = [MEMORY[0x1E696AD98] numberWithBool:changeCopy];
  [v13 setObject:v16 forSetting:6];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:dismissibleCopy];
  [v13 setObject:v17 forSetting:2];

  v18 = [[self alloc] initWithInfo:v13 responder:0];

  return v18;
}

+ (id)actionForSheetInteractionDraggingDidEnd
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE300B8 forSetting:0];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)executeActionForSheetPresentationController:(id)controller
{
  controllerCopy = controller;
  info = [(_UISceneHostingSheetPresentationActionToHost *)self info];
  v5 = [info objectForSetting:0];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue > 1)
  {
    if (unsignedIntegerValue == 2)
    {
      info2 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v22 = [info2 objectForSetting:4];
      [v22 CGPointValue];
      v24 = v23;
      v26 = v25;

      info3 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v28 = [info3 objectForSetting:5];
      [v28 CGPointValue];
      v30 = v29;
      v32 = v31;

      info4 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v34 = [info4 objectForSetting:6];
      bOOLValue = [v34 BOOLValue];

      info5 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
      v37 = [info5 objectForSetting:2];
      bOOLValue2 = [v37 BOOLValue];

      [controllerCopy _remoteSheetInteractionDraggingDidChangeWithTranslation:bOOLValue velocity:bOOLValue2 animateChange:v24 dismissible:{v26, v30, v32}];
    }

    else
    {
      v7 = controllerCopy;
      if (unsignedIntegerValue != 3)
      {
        goto LABEL_11;
      }

      [controllerCopy _remoteSheetInteractionDraggingDidEnd];
    }
  }

  else if (unsignedIntegerValue)
  {
    v7 = controllerCopy;
    if (unsignedIntegerValue != 1)
    {
      goto LABEL_11;
    }

    info6 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
    v9 = [info6 objectForSetting:1];
    [v9 floatValue];
    v11 = v10;

    info7 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
    v13 = [info7 objectForSetting:2];
    bOOLValue3 = [v13 BOOLValue];

    info8 = [(_UISceneHostingSheetPresentationActionToHost *)self info];
    v16 = [info8 objectForSetting:3];
    [v16 CGPointValue];
    v18 = v17;
    v20 = v19;

    [controllerCopy _remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:bOOLValue3 dismissible:v11 interruptedOffset:{v18, v20}];
  }

  else
  {
    [controllerCopy _remoteSheetGrabberDidTriggerPrimaryAction];
  }

  v7 = controllerCopy;
LABEL_11:
}

@end