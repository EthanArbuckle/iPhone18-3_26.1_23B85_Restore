@interface WTUIActionHostToClient
+ (id)_settingForActionType:(int64_t)type sessionUUID:(id)d;
+ (id)actionForChangingPresentationStyle:(int64_t)style;
+ (id)actionForDidDismissInputWarningForSessionWithUUID:(id)d;
+ (id)actionForProofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD;
+ (id)actionForSetRemainingRedoCount:(unint64_t)count;
+ (id)actionForSetRemainingUndoCount:(unint64_t)count;
+ (id)actionForSourceResponderHorizontalSizeClassChanged:(int64_t)changed;
+ (id)actionForWindowingModeEnabledChanged:(BOOL)changed;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation WTUIActionHostToClient

+ (id)actionForProofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD
{
  iDCopy = iD;
  v9 = [self _settingForActionType:1 sessionUUID:d];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [v9 setObject:v10 forSetting:4];

  [v9 setObject:iDCopy forSetting:3];
  v11 = [[self alloc] initWithInfo:v9 responder:0];

  return v11;
}

+ (id)_settingForActionType:(int64_t)type sessionUUID:(id)d
{
  v5 = MEMORY[0x1E698E700];
  dCopy = d;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v7 setObject:v8 forSetting:1];

  [v7 setObject:dCopy forSetting:2];

  return v7;
}

+ (id)actionForChangingPresentationStyle:(int64_t)style
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB890 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [v5 setObject:v6 forSetting:5];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForDidDismissInputWarningForSessionWithUUID:(id)d
{
  v4 = [self _settingForActionType:3 sessionUUID:d];
  v5 = [[self alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForSourceResponderHorizontalSizeClassChanged:(int64_t)changed
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8A8 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:changed];
  [v5 setObject:v6 forSetting:6];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForWindowingModeEnabledChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8C0 forSetting:1];
  [v5 setFlag:changedCopy forSetting:8];
  v6 = [[self alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForSetRemainingUndoCount:(unint64_t)count
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8D8 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [v5 setObject:v6 forSetting:9];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForSetRemainingRedoCount:(unint64_t)count
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB8F0 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [v5 setObject:v6 forSetting:9];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)performActionForHostedWindowScene:(id)scene
{
  sceneCopy = scene;
  info = [(WTUIActionHostToClient *)self info];
  info2 = [(WTUIActionHostToClient *)self info];
  v6 = [info2 objectForSetting:1];
  integerValue = [v6 integerValue];

  if (integerValue <= 3)
  {
    switch(integerValue)
    {
      case 1:
        delegate = [sceneCopy delegate];
        v11 = [info objectForSetting:2];
        session = [delegate session];
        uuid = [session uuid];
        v14 = [v11 isEqual:uuid];

        if (v14)
        {
          v15 = [info objectForSetting:4];
          integerValue2 = [v15 integerValue];

          v17 = [info objectForSetting:3];
          [delegate proofreadingSessionWithUUID:v11 updateState:integerValue2 forSuggestionWithUUID:v17];
        }

        break;
      case 2:
        delegate = [sceneCopy delegate];
        info3 = [(WTUIActionHostToClient *)self info];
        v22 = [info3 objectForSetting:5];
        integerValue3 = [v22 integerValue];

        [delegate savePresentationStyle:integerValue3];
        goto LABEL_18;
      case 3:
        delegate = [sceneCopy delegate];
        v11 = [info objectForSetting:2];
        [delegate didDismissInputWarningforSessionWithUUID:v11];
        break;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    if (integerValue <= 5)
    {
      [sceneCopy delegate];
      if (integerValue == 4)
        delegate = {;
        info4 = [(WTUIActionHostToClient *)self info];
        v19 = [info4 objectForSetting:6];
        integerValue4 = [v19 integerValue];

        [delegate sourceResponderHorizontalSizeClassChanged:integerValue4];
      }

      else
        delegate = {;
        info5 = [(WTUIActionHostToClient *)self info];
        v10 = [info5 flagForSetting:8] != 0;

        [delegate windowingModeEnabledChanged:v10];
      }

      goto LABEL_18;
    }

    if (integerValue == 6)
    {
      delegate = [sceneCopy delegate];
      v11 = [info objectForSetting:9];
      [delegate setRemainingUndoCount:{objc_msgSend(v11, "unsignedIntValue")}];
    }

    else
    {
      if (integerValue != 7)
      {
        goto LABEL_19;
      }

      delegate = [sceneCopy delegate];
      v11 = [info objectForSetting:9];
      [delegate setRemainingRedoCount:{objc_msgSend(v11, "unsignedIntValue")}];
    }
  }

LABEL_18:
LABEL_19:
}

@end