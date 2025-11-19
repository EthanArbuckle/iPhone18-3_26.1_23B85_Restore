@interface PGCommand
+ (id)commandForFaceTimeAction:(int64_t)a3;
+ (id)commandForFaceTimeAction:(int64_t)a3 associatedBoolValue:(BOOL)a4;
+ (id)commandForFaceTimeAction:(int64_t)a3 associatedIntegerValue:(int64_t)a4;
+ (id)commandForPlaybackAction:(int64_t)a3;
+ (id)commandForPlaybackAction:(int64_t)a3 associatedBoolValue:(BOOL)a4;
+ (id)commandForPlaybackAction:(int64_t)a3 associatedDoubleValue:(double)a4;
+ (id)commandForSystemAction:(int64_t)a3;
+ (id)commandForTestingAction:(int64_t)a3;
- (BOOL)associatedBoolValue;
- (BOOL)isEqual:(id)a3;
- (PGCommand)initWithDictionary:(id)a3;
- (double)associatedDoubleValue;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)associatedIntegerValue;
- (int64_t)faceTimeAction;
- (int64_t)playbackAction;
- (int64_t)systemAction;
- (int64_t)testingAction;
- (void)appendDescriptionForKey:(int64_t)a3 value:(id)a4 toBuilder:(id)a5;
@end

@implementation PGCommand

+ (id)commandForPlaybackAction:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 alloc];
  v9 = &unk_1F3958E28;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDictionary:v6];

  return v7;
}

+ (id)commandForPlaybackAction:(int64_t)a3 associatedBoolValue:(BOOL)a4
{
  v4 = a4;
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [a1 alloc];
  v12[0] = &unk_1F3958E28;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12[1] = &unk_1F3958E40;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

+ (id)commandForPlaybackAction:(int64_t)a3 associatedDoubleValue:(double)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [a1 alloc];
  v12[0] = &unk_1F3958E28;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12[1] = &unk_1F3958E58;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

+ (id)commandForSystemAction:(int64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [(PGCommand *)a2 commandForSystemAction:a1];
  }

  v5 = [a1 alloc];
  v10 = &unk_1F3958E70;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 initWithDictionary:v7];

  return v8;
}

+ (id)commandForTestingAction:(int64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [(PGCommand *)a2 commandForTestingAction:a1];
  }

  v5 = [a1 alloc];
  v10 = &unk_1F3958E88;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 initWithDictionary:v7];

  return v8;
}

+ (id)commandForFaceTimeAction:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 alloc];
  v9 = &unk_1F3958EA0;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDictionary:v6];

  return v7;
}

+ (id)commandForFaceTimeAction:(int64_t)a3 associatedBoolValue:(BOOL)a4
{
  v4 = a4;
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [a1 alloc];
  v12[0] = &unk_1F3958EA0;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12[1] = &unk_1F3958E40;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

+ (id)commandForFaceTimeAction:(int64_t)a3 associatedIntegerValue:(int64_t)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [a1 alloc];
  v12[0] = &unk_1F3958EA0;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12[1] = &unk_1F3958EB8;
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  return v10;
}

- (PGCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGCommand;
  v5 = [(PGCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 dictionaryRepresentation];
    v6 = [(PGCommand *)self dictionaryRepresentation];
    v7 = [v5 isEqual:v6];
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
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)systemAction
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E70];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)faceTimeAction
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958EA0];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)testingAction
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E88];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)associatedBoolValue
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958E40];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)associatedIntegerValue
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:&unk_1F3958EB8];
  v3 = [v2 integerValue];

  return v3;
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
  v2 = [(PGCommand *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PGCommand *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)appendDescriptionForKey:(int64_t)a3 value:(id)a4 toBuilder:(id)a5
{
  v16 = a4;
  v7 = a5;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v12 = [v16 integerValue] - 1;
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
        v15 = [v16 integerValue] - 1;
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
        v9 = [v16 integerValue];
        if (v9 >= 8)
        {
          v10 = @"invalid";
        }

        else
        {
          v10 = off_1E7F32720[v9];
        }

        v13 = @"systemAction";
        break;
      default:
        goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      v8 = [v7 appendBool:objc_msgSend(v16 withName:{"BOOLValue"), @"associatedBoolValue"}];
      goto LABEL_29;
    }

    if ([v16 integerValue] == 1)
    {
      v10 = @"startPIP";
    }

    else
    {
      v10 = @"invalid";
    }

    v13 = @"testingAction";
LABEL_28:
    [v7 appendString:v10 withName:v13];
    goto LABEL_29;
  }

  if (a3 == 6)
  {
    [v16 doubleValue];
    v14 = [v7 appendDouble:@"associatedDoubleValue" withName:2 decimalPrecision:?];
  }

  else if (a3 == 7)
  {
    v11 = [v7 appendInteger:objc_msgSend(v16 withName:{"integerValue"), @"associatedIntegerValue"}];
  }

LABEL_29:
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(PGCommand *)self succinctDescriptionBuilder];
  v13.receiver = self;
  v13.super_class = PGCommand;
  v6 = [(PGCommand *)&v13 description];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PGCommand_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E7F32508;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [v7 appendBodySectionWithName:v6 multilinePrefix:v4 block:v11];

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