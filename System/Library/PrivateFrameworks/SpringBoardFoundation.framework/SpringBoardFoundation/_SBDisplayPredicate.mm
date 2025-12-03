@interface _SBDisplayPredicate
+ (id)fromDefaultsKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDisplay:(id)display;
- (_SBDisplayPredicate)initWithDisplay:(id)display;
- (_SBDisplayPredicate)initWithDisplayHardwareIdentifier:(id)identifier productName:(id)name;
@end

@implementation _SBDisplayPredicate

- (_SBDisplayPredicate)initWithDisplayHardwareIdentifier:(id)identifier productName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (!identifierCopy)
  {
    [_SBDisplayPredicate initWithDisplayHardwareIdentifier:productName:];
  }

  v12.receiver = self;
  v12.super_class = _SBDisplayPredicate;
  _init = [(SBDisplayModePredicate *)&v12 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, identifier);
    objc_storeStrong(&v10->_displayProductName, name);
  }

  return v10;
}

- (_SBDisplayPredicate)initWithDisplay:(id)display
{
  displayCopy = display;
  hardwareIdentifier = [displayCopy hardwareIdentifier];
  cADisplay = [displayCopy CADisplay];

  productName = [cADisplay productName];
  v8 = [(_SBDisplayPredicate *)self initWithDisplayHardwareIdentifier:hardwareIdentifier productName:productName];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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

- (BOOL)matchesDisplay:(id)display
{
  displayCopy = display;
  if (!displayCopy)
  {
    [_SBDisplayPredicate matchesDisplay:];
  }

  displayHardwareIdentifier = self->_displayHardwareIdentifier;
  hardwareIdentifier = [displayCopy hardwareIdentifier];
  LOBYTE(displayHardwareIdentifier) = [(NSString *)displayHardwareIdentifier isEqualToString:hardwareIdentifier];

  return displayHardwareIdentifier;
}

+ (id)fromDefaultsKey:(id)key
{
  keyCopy = key;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^\\(\\.%@ \\[(%@)\\] \\[(.*)\\]\\)$", @"display", @"[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}"];
  v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v5 options:0 error:0];
  v7 = [v6 firstMatchInString:keyCopy options:0 range:{0, objc_msgSend(keyCopy, "length")}];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 rangeAtIndex:1];
    v11 = [keyCopy substringWithRange:{v9, v10}];
    v12 = [v8 rangeAtIndex:2];
    v14 = [keyCopy substringWithRange:{v12, v13}];
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
      v17 = [[self alloc] initWithDisplayHardwareIdentifier:v11 productName:v14];
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