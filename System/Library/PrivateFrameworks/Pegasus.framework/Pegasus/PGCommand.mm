@interface PGCommand
+ (id)commandForFaceTimeAction:(int64_t)action;
+ (id)commandForFaceTimeAction:(int64_t)action associatedBoolValue:(BOOL)value;
+ (id)commandForFaceTimeAction:(int64_t)action associatedIntegerValue:(int64_t)value;
+ (id)commandForPlaybackAction:(int64_t)action;
+ (id)commandForPlaybackAction:(int64_t)action associatedBoolValue:(BOOL)value;
+ (id)commandForPlaybackAction:(int64_t)action associatedDoubleValue:(double)value;
+ (id)commandForSystemAction:(int64_t)action;
+ (id)commandForTestingAction:(int64_t)action;
- (BOOL)associatedBoolValue;
- (BOOL)isEqual:(id)equal;
- (PGCommand)initWithDictionary:(id)dictionary;
- (double)associatedDoubleValue;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)associatedIntegerValue;
- (int64_t)faceTimeAction;
- (int64_t)playbackAction;
- (int64_t)systemAction;
- (int64_t)testingAction;
- (void)appendDescriptionForKey:(int64_t)key value:(id)value toBuilder:(id)builder;
@end

@implementation PGCommand

+ (id)commandForPlaybackAction:(int64_t)action
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [self alloc];
  v9 = &unk_1F3958E28;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDictionary:v6];

  return v7;
}

+ (id)commandForPlaybackAction:(int64_t)action associatedBoolValue:(BOOL)value
{
  valueCopy = value;
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [self alloc];
  v12[0] = &unk_1F3958E28;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v12[1] = &unk_1F3958E40;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

+ (id)commandForPlaybackAction:(int64_t)action associatedDoubleValue:(double)value
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [self alloc];
  v12[0] = &unk_1F3958E28;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v12[1] = &unk_1F3958E58;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

+ (id)commandForSystemAction:(int64_t)action
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!action)
  {
    [(PGCommand *)a2 commandForSystemAction:self];
  }

  v5 = [self alloc];
  v10 = &unk_1F3958E70;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 initWithDictionary:v7];

  return v8;
}

+ (id)commandForTestingAction:(int64_t)action
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!action)
  {
    [(PGCommand *)a2 commandForTestingAction:self];
  }

  v5 = [self alloc];
  v10 = &unk_1F3958E88;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 initWithDictionary:v7];

  return v8;
}

+ (id)commandForFaceTimeAction:(int64_t)action
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [self alloc];
  v9 = &unk_1F3958EA0;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDictionary:v6];

  return v7;
}

+ (id)commandForFaceTimeAction:(int64_t)action associatedBoolValue:(BOOL)value
{
  valueCopy = value;
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [self alloc];
  v12[0] = &unk_1F3958EA0;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v12[1] = &unk_1F3958E40;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

+ (id)commandForFaceTimeAction:(int64_t)action associatedIntegerValue:(int64_t)value
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [self alloc];
  v12[0] = &unk_1F3958EA0;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v12[1] = &unk_1F3958EB8;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

- (PGCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PGCommand;
  v5 = [(PGCommand *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionaryRepresentation = [equalCopy dictionaryRepresentation];
    dictionaryRepresentation2 = [(PGCommand *)self dictionaryRepresentation];
    v7 = [dictionaryRepresentation isEqual:dictionaryRepresentation2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)playbackAction
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E28];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)systemAction
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E70];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)faceTimeAction
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958EA0];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)testingAction
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E88];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)associatedBoolValue
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E40];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)associatedIntegerValue
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958EB8];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (double)associatedDoubleValue
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E58];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PGCommand *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PGCommand *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)appendDescriptionForKey:(int64_t)key value:(id)value toBuilder:(id)builder
{
  valueCopy = value;
  builderCopy = builder;
  if (key <= 3)
  {
    switch(key)
    {
      case 1:
        v12 = [valueCopy integerValue] - 1;
        if (v12 >= 9)
        {
          v10 = @"invalid";
        }

        else
        {
          v10 = off_1E7F326B0[v12];
        }

        v13 = @"playbackAction";
        break;
      case 2:
        v15 = [valueCopy integerValue] - 1;
        if (v15 >= 5)
        {
          v10 = @"invalid";
        }

        else
        {
          v10 = off_1E7F326F8[v15];
        }

        v13 = @"faceTimeAction";
        break;
      case 3:
        integerValue = [valueCopy integerValue];
        if (integerValue >= 8)
        {
          v10 = @"invalid";
        }

        else
        {
          v10 = off_1E7F32720[integerValue];
        }

        v13 = @"systemAction";
        break;
      default:
        goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (key <= 5)
  {
    if (key != 4)
    {
      v8 = [builderCopy appendBool:objc_msgSend(valueCopy withName:{"BOOLValue"), @"associatedBoolValue"}];
      goto LABEL_29;
    }

    if ([valueCopy integerValue] == 1)
    {
      v10 = @"startPIP";
    }

    else
    {
      v10 = @"invalid";
    }

    v13 = @"testingAction";
LABEL_28:
    [builderCopy appendString:v10 withName:v13];
    goto LABEL_29;
  }

  if (key == 6)
  {
    [valueCopy doubleValue];
    v14 = [builderCopy appendDouble:@"associatedDoubleValue" withName:2 decimalPrecision:?];
  }

  else if (key == 7)
  {
    v11 = [builderCopy appendInteger:objc_msgSend(valueCopy withName:{"integerValue"), @"associatedIntegerValue"}];
  }

LABEL_29:
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(PGCommand *)self succinctDescriptionBuilder];
  v13.receiver = self;
  v13.super_class = PGCommand;
  v6 = [(PGCommand *)&v13 description];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PGCommand_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E7F32508;
  v11[4] = self;
  v7 = succinctDescriptionBuilder;
  v12 = v7;
  [v7 appendBodySectionWithName:v6 multilinePrefix:prefixCopy block:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __51__PGCommand_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionaryRepresentation];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PGCommand_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v4[3] = &unk_1E7F32690;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __51__PGCommand_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) appendDescriptionForKey:objc_msgSend(a2 value:"integerValue") toBuilder:{v5, *(a1 + 40)}];
}

+ (void)commandForSystemAction:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGCommand.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"action != PGSystemActionSendToProxy"}];
}

+ (void)commandForTestingAction:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGCommand.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"action != 0"}];
}

@end