@interface WTUIActionHostToClient
+ (id)_settingForActionType:(int64_t)a3 sessionUUID:(id)a4;
+ (id)actionForChangingPresentationStyle:(int64_t)a3;
+ (id)actionForDidDismissInputWarningForSessionWithUUID:(id)a3;
+ (id)actionForProofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5;
+ (id)actionForSetRemainingRedoCount:(unint64_t)a3;
+ (id)actionForSetRemainingUndoCount:(unint64_t)a3;
+ (id)actionForSourceResponderHorizontalSizeClassChanged:(int64_t)a3;
+ (id)actionForWindowingModeEnabledChanged:(BOOL)a3;
- (void)performActionForHostedWindowScene:(id)a3;
@end

@implementation WTUIActionHostToClient

+ (id)actionForProofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5
{
  v8 = a5;
  v9 = [a1 _settingForActionType:1 sessionUUID:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v9 setObject:v10 forSetting:4];

  [v9 setObject:v8 forSetting:3];
  v11 = [[a1 alloc] initWithInfo:v9 responder:0];

  return v11;
}

+ (id)_settingForActionType:(int64_t)a3 sessionUUID:(id)a4
{
  v5 = MEMORY[0x1E698E700];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:1];

  [v7 setObject:v6 forSetting:2];

  return v7;
}

+ (id)actionForChangingPresentationStyle:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB890 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:5];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForDidDismissInputWarningForSessionWithUUID:(id)a3
{
  v4 = [a1 _settingForActionType:3 sessionUUID:a3];
  v5 = [[a1 alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForSourceResponderHorizontalSizeClassChanged:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8A8 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:6];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForWindowingModeEnabledChanged:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8C0 forSetting:1];
  [v5 setFlag:v3 forSetting:8];
  v6 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForSetRemainingUndoCount:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8D8 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v6 forSetting:9];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForSetRemainingRedoCount:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8F0 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v6 forSetting:9];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)performActionForHostedWindowScene:(id)a3
{
  v24 = a3;
  v4 = [(WTUIActionHostToClient *)self info];
  v5 = [(WTUIActionHostToClient *)self info];
  v6 = [v5 objectForSetting:1];
  v7 = [v6 integerValue];

  if (v7 <= 3)
  {
    switch(v7)
    {
      case 1:
        v8 = [v24 delegate];
        v11 = [v4 objectForSetting:2];
        v12 = [v8 session];
        v13 = [v12 uuid];
        v14 = [v11 isEqual:v13];

        if (v14)
        {
          v15 = [v4 objectForSetting:4];
          v16 = [v15 integerValue];

          v17 = [v4 objectForSetting:3];
          [v8 proofreadingSessionWithUUID:v11 updateState:v16 forSuggestionWithUUID:v17];
        }

        break;
      case 2:
        v8 = [v24 delegate];
        v21 = [(WTUIActionHostToClient *)self info];
        v22 = [v21 objectForSetting:5];
        v23 = [v22 integerValue];

        [v8 savePresentationStyle:v23];
        goto LABEL_18;
      case 3:
        v8 = [v24 delegate];
        v11 = [v4 objectForSetting:2];
        [v8 didDismissInputWarningforSessionWithUUID:v11];
        break;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    if (v7 <= 5)
    {
      [v24 delegate];
      if (v7 == 4)
        v8 = {;
        v18 = [(WTUIActionHostToClient *)self info];
        v19 = [v18 objectForSetting:6];
        v20 = [v19 integerValue];

        [v8 sourceResponderHorizontalSizeClassChanged:v20];
      }

      else
        v8 = {;
        v9 = [(WTUIActionHostToClient *)self info];
        v10 = [v9 flagForSetting:8] != 0;

        [v8 windowingModeEnabledChanged:v10];
      }

      goto LABEL_18;
    }

    if (v7 == 6)
    {
      v8 = [v24 delegate];
      v11 = [v4 objectForSetting:9];
      [v8 setRemainingUndoCount:{objc_msgSend(v11, "unsignedIntValue")}];
    }

    else
    {
      if (v7 != 7)
      {
        goto LABEL_19;
      }

      v8 = [v24 delegate];
      v11 = [v4 objectForSetting:9];
      [v8 setRemainingRedoCount:{objc_msgSend(v11, "unsignedIntValue")}];
    }
  }

LABEL_18:
LABEL_19:
}

@end