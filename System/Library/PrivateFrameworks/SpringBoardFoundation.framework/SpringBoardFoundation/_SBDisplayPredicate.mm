@interface _SBDisplayPredicate
+ (id)fromDefaultsKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDisplay:(id)a3;
- (_SBDisplayPredicate)initWithDisplay:(id)a3;
- (_SBDisplayPredicate)initWithDisplayHardwareIdentifier:(id)a3 productName:(id)a4;
@end

@implementation _SBDisplayPredicate

- (_SBDisplayPredicate)initWithDisplayHardwareIdentifier:(id)a3 productName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [_SBDisplayPredicate initWithDisplayHardwareIdentifier:productName:];
  }

  v12.receiver = self;
  v12.super_class = _SBDisplayPredicate;
  v9 = [(SBDisplayModePredicate *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(&v10->_displayProductName, a4);
  }

  return v10;
}

- (_SBDisplayPredicate)initWithDisplay:(id)a3
{
  v4 = a3;
  v5 = [v4 hardwareIdentifier];
  v6 = [v4 CADisplay];

  v7 = [v6 productName];
  v8 = [(_SBDisplayPredicate *)self initWithDisplayHardwareIdentifier:v5 productName:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(NSString *)self->_displayHardwareIdentifier isEqualToString:v8[1]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesDisplay:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [_SBDisplayPredicate matchesDisplay:];
  }

  displayHardwareIdentifier = self->_displayHardwareIdentifier;
  v6 = [v4 hardwareIdentifier];
  LOBYTE(displayHardwareIdentifier) = [(NSString *)displayHardwareIdentifier isEqualToString:v6];

  return displayHardwareIdentifier;
}

+ (id)fromDefaultsKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^\\(\\.%@ \\[(%@)\\] \\[(.*)\\]\\)$", @"display", @"[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}"];
  v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v5 options:0 error:0];
  v7 = [v6 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 rangeAtIndex:1];
    v11 = [v4 substringWithRange:{v9, v10}];
    v12 = [v8 rangeAtIndex:2];
    v14 = [v4 substringWithRange:{v12, v13}];
    v15 = v14;
    if (v11)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = [[a1 alloc] initWithDisplayHardwareIdentifier:v11 productName:v14];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)initWithDisplayHardwareIdentifier:productName:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayHardwareIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)matchesDisplay:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayConfiguration != nil" object:? file:? lineNumber:? description:?];
}

@end