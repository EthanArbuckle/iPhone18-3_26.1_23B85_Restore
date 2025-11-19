@interface _UICustomDiscreteFeedback
+ (id)customDiscreteFeedbackWithEventType:(unint64_t)a3 systemSoundID:(unsigned int)a4;
- (BOOL)isEqual:(id)a3;
- (_UICustomDiscreteFeedback)initWithDictionaryRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)_effectiveEventType;
- (unsigned)_effectiveSystemSoundID;
@end

@implementation _UICustomDiscreteFeedback

- (unint64_t)_effectiveEventType
{
  eventType = self->_eventType;
  if (!eventType)
  {
    v4.receiver = self;
    v4.super_class = _UICustomDiscreteFeedback;
    return [(_UIDiscreteFeedback *)&v4 _effectiveEventType];
  }

  return eventType;
}

- (unsigned)_effectiveSystemSoundID
{
  systemSoundID = self->_systemSoundID;
  if (systemSoundID == _UISystemSoundIDNone)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UICustomDiscreteFeedback;
    return [(_UIDiscreteFeedback *)&v6 _effectiveSystemSoundID];
  }

  return systemSoundID;
}

+ (id)customDiscreteFeedbackWithEventType:(unint64_t)a3 systemSoundID:(unsigned int)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____UICustomDiscreteFeedback;
  v6 = objc_msgSendSuper2(&v8, sel_discreteFeedbackForType_, 0);
  *(v6 + 152) = a3;
  *(v6 + 144) = a4;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UICustomDiscreteFeedback;
  result = [(_UIDiscreteFeedback *)&v5 copyWithZone:a3];
  *(result + 19) = self->_eventType;
  *(result + 36) = self->_systemSoundID;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UICustomDiscreteFeedback;
  v5 = [(_UIDiscreteFeedback *)&v7 isEqual:v4]&& self->_eventType == v4[19] && self->_systemSoundID == *(v4 + 36);

  return v5;
}

- (_UICustomDiscreteFeedback)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UICustomDiscreteFeedback;
  v5 = [(_UIDiscreteFeedback *)&v10 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventType"];
    v5->_eventType = [v6 intValue];

    v7 = [v4 objectForKeyedSubscript:@"systemSoundID"];
    v5->_systemSoundID = [v7 intValue];

    v8 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UICustomDiscreteFeedback;
  v3 = [(_UIDiscreteFeedback *)&v9 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v10[0] = @"eventType";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventType];
  v10[1] = @"systemSoundID";
  v11[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_systemSoundID];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addEntriesFromDictionary:v7];

  return v4;
}

@end