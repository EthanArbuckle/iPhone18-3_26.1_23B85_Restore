@interface _UIWindowScenePreservedPlacement
- (BOOL)isEqual:(id)equal;
- (_UIWindowScenePreservedPlacement)init;
- (id)_createConfigurationWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation _UIWindowScenePreservedPlacement

- (_UIWindowScenePreservedPlacement)init
{
  v3.receiver = self;
  v3.super_class = _UIWindowScenePreservedPlacement;
  result = [(UIWindowScenePlacement *)&v3 _init];
  if (result)
  {
    result->_keepInBackground = 0;
  }

  return result;
}

- (id)_createConfigurationWithError:(id *)error
{
  v4 = objc_alloc_init(MEMORY[0x1E69DEC38]);
  [v4 setKeepInBackground:{-[_UIWindowScenePreservedPlacement keepInBackground](self, "keepInBackground")}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIWindowScenePreservedPlacement;
  v4 = [(UIWindowScenePlacement *)&v6 copyWithZone:zone];
  [v4 setKeepInBackground:{-[_UIWindowScenePreservedPlacement keepInBackground](self, "keepInBackground")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _UIWindowScenePreservedPlacement;
  if ([(UIWindowScenePlacement *)&v8 isEqual:equalCopy])
  {
    keepInBackground = [(_UIWindowScenePreservedPlacement *)self keepInBackground];
    v6 = keepInBackground ^ [equalCopy keepInBackground] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = _UIWindowScenePreservedPlacement;
  prefixCopy = prefix;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UIWindowScenePreservedPlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end