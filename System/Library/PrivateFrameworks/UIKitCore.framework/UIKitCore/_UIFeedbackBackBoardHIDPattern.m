@interface _UIFeedbackBackBoardHIDPattern
+ (id)feedbackPatternWithName:(id)a3 deviceType:(int64_t)a4;
+ (id)feedbackPatternWithName:(id)a3 deviceType:(int64_t)a4 senderID:(unint64_t)a5;
- (BKSHIDHapticFeedbackRequest)hidRequest;
- (BOOL)isEqual:(id)a3;
- (_UIFeedbackBackBoardHIDPattern)initWithDictionaryRepresentation:(id)a3;
- (_UIFeedbackBackBoardHIDPattern)initWithName:(id)a3 deviceType:(int64_t)a4 senderID:(unint64_t)a5 powerSourceID:(id)a6;
- (id)completeFeedbackPatternWithPowerSourceID:(id)a3;
- (id)completeFeedbackPatternWithSenderID:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)_effectivePlayableFeedbackTypes;
@end

@implementation _UIFeedbackBackBoardHIDPattern

+ (id)feedbackPatternWithName:(id)a3 deviceType:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithName:v6 deviceType:a4 senderID:0 powerSourceID:0];

  return v7;
}

+ (id)feedbackPatternWithName:(id)a3 deviceType:(int64_t)a4 senderID:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithName:v8 deviceType:a4 senderID:a5 powerSourceID:0];

  return v9;
}

- (_UIFeedbackBackBoardHIDPattern)initWithName:(id)a3 deviceType:(int64_t)a4 senderID:(unint64_t)a5 powerSourceID:(id)a6
{
  v11 = a3;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = _UIFeedbackBackBoardHIDPattern;
  v13 = [(_UIFeedback *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_patternName, a3);
    v14->_deviceType = a4;
    v14->_senderID = a5;
    objc_storeStrong(&v14->_powerSourceID, a6);
    v15 = v14;
  }

  return v14;
}

- (id)completeFeedbackPatternWithSenderID:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithName:self->_patternName deviceType:self->_deviceType senderID:a3 powerSourceID:0];

  return v3;
}

- (id)completeFeedbackPatternWithPowerSourceID:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithName:self->_patternName deviceType:self->_deviceType senderID:0 powerSourceID:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = _UIFeedbackBackBoardHIDPattern;
  v5 = [(_UIFeedback *)&v9 copyWithZone:?];
  objc_storeStrong(v5 + 20, self->_patternName);
  v5[17] = self->_deviceType;
  v5[18] = self->_senderID;
  v6 = [(NSNumber *)self->_powerSourceID copyWithZone:a3];
  v7 = v5[19];
  v5[19] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UIFeedbackBackBoardHIDPattern;
  if ([(_UIFeedback *)&v17 isEqual:v4])
  {
    v5 = v4;
    v6 = v5[20];
    v7 = self->_patternName;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
LABEL_9:

LABEL_20:
        goto LABEL_21;
      }

      v12 = [(NSString *)v7 isEqual:v8];

      if (!v12)
      {
LABEL_19:
        v11 = 0;
        goto LABEL_20;
      }
    }

    if (self->_deviceType == v5[17] && self->_senderID == v5[18])
    {
      powerSourceID = self->_powerSourceID;
      v14 = v5[19];
      v7 = powerSourceID;
      v15 = v14;
      v9 = v15;
      if (v7 == v15)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
        if (v7 && v15)
        {
          v11 = [(NSString *)v7 isEqual:v15];
        }
      }

      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v11 = 0;
LABEL_21:

  return v11;
}

- (_UIFeedbackBackBoardHIDPattern)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _UIFeedbackBackBoardHIDPattern;
  v5 = [(_UIFeedback *)&v14 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"patternName"];
    patternName = v5->_patternName;
    v5->_patternName = v6;

    v8 = [v4 objectForKeyedSubscript:@"deviceType"];
    v5->_deviceType = [v8 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"senderID"];
    v5->_senderID = [v9 unsignedLongLongValue];

    v10 = [v4 objectForKeyedSubscript:@"powerSourceID"];
    powerSourceID = v5->_powerSourceID;
    v5->_powerSourceID = v10;

    v12 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = _UIFeedbackBackBoardHIDPattern;
  v3 = [(_UIFeedback *)&v9 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(BKSHIDHapticFeedbackRequest *)self->_hidRequest pattern];
  [v4 setObject:v5 forKeyedSubscript:@"patternName"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BKSHIDHapticFeedbackRequest deviceType](self->_hidRequest, "deviceType")}];
  [v4 setObject:v6 forKeyedSubscript:@"deviceType"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BKSHIDHapticFeedbackRequest senderID](self->_hidRequest, "senderID")}];
  [v4 setObject:v7 forKeyedSubscript:@"senderID"];

  [v4 setObject:self->_powerSourceID forKeyedSubscript:@"powerSourceID"];

  return v4;
}

- (unint64_t)_effectivePlayableFeedbackTypes
{
  deviceType = self->_deviceType;
  if (deviceType)
  {
    return 8 * (deviceType == 1);
  }

  else
  {
    return 4;
  }
}

- (BKSHIDHapticFeedbackRequest)hidRequest
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  deviceType = self->_deviceType;
  if (has_internal_diagnostics)
  {
    if (deviceType < 0)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Attempted to use a HID pattern feedback without populating a device. This will not play.", buf, 2u);
      }
    }
  }

  else if (deviceType < 0)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &hidRequest___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Attempted to use a HID pattern feedback without populating a device. This will not play.", buf, 2u);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___UIFeedbackBackBoardHIDPattern_hidRequest__block_invoke;
  v9[3] = &unk_1E7107750;
  v9[4] = self;
  v5 = [MEMORY[0x1E698E3D8] build:v9];

  return v5;
}

@end