@interface _UISceneCarPlaySessionTouchpadFeedbackAction
- (_UISceneCarPlaySessionTouchpad)touchpad;
- (_UISceneCarPlaySessionTouchpadFeedbackAction)initWithTouchpad:(id)touchpad feedbackType:(unint64_t)type;
- (unint64_t)feedbackType;
@end

@implementation _UISceneCarPlaySessionTouchpadFeedbackAction

- (_UISceneCarPlaySessionTouchpadFeedbackAction)initWithTouchpad:(id)touchpad feedbackType:(unint64_t)type
{
  v6 = MEMORY[0x1E698E700];
  touchpadCopy = touchpad;
  v8 = objc_alloc_init(v6);
  [v8 setObject:touchpadCopy forSetting:0];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [v8 setObject:v9 forSetting:1];

  v10 = [(_UISceneCarPlaySessionTouchpadFeedbackAction *)self initWithInfo:v8 responder:0];
  return v10;
}

- (_UISceneCarPlaySessionTouchpad)touchpad
{
  info = [(_UISceneCarPlaySessionTouchpadFeedbackAction *)self info];
  v3 = [info objectForSetting:0];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (unint64_t)feedbackType
{
  info = [(_UISceneCarPlaySessionTouchpadFeedbackAction *)self info];
  v3 = [info objectForSetting:1];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

@end