@interface PRUISExternallyHostedPosterEntryPointWrapper
+ (id)wrapperWithEntryPoint:(id)point;
- (BOOL)isEqual:(id)equal;
- (PRUISExternallyHostedPosterEntryPointWrapper)initWithBSXPCCoder:(id)coder;
- (id)_entryPointClassForTypeString:(uint64_t)string;
- (id)_entryPointTypeStringForEntryPoint:(void *)point;
- (id)_initWithEntryPoint:(id)point requestUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRUISExternallyHostedPosterEntryPointWrapper

- (id)_initWithEntryPoint:(id)point requestUUID:(id)d
{
  pointCopy = point;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PRUISExternallyHostedPosterEntryPointWrapper;
  v8 = [(PRUISExternallyHostedPosterEntryPointWrapper *)&v12 init];
  if (v8)
  {
    v9 = [pointCopy copyWithZone:0];
    entryPoint = v8->_entryPoint;
    v8->_entryPoint = v9;

    objc_storeStrong(&v8->_requestUUID, d);
  }

  return v8;
}

+ (id)wrapperWithEntryPoint:(id)point
{
  pointCopy = point;
  v5 = [self alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v5 _initWithEntryPoint:pointCopy requestUUID:uUID];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  entryPoint = self->_entryPoint;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__PRUISExternallyHostedPosterEntryPointWrapper_isEqual___block_invoke;
  v19[3] = &unk_1E83A7098;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:entryPoint counterpart:v19];
  requestUUID = self->_requestUUID;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__PRUISExternallyHostedPosterEntryPointWrapper_isEqual___block_invoke_2;
  v17 = &unk_1E83A70C0;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:requestUUID counterpart:&v14];
  LOBYTE(requestUUID) = [v5 isEqual];

  return requestUUID;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_entryPoint];
  v5 = [builder appendObject:self->_requestUUID];
  v6 = [builder hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PRUISModalEntryPoint *)self->_entryPoint copyWithZone:zone];
  v7 = [(NSUUID *)self->_requestUUID copyWithZone:zone];
  v8 = [v5 _initWithEntryPoint:v6 requestUUID:v7];

  return v8;
}

- (PRUISExternallyHostedPosterEntryPointWrapper)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"typeString"];
  v6 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self _entryPointClassForTypeString:v5];
  if (v5)
  {
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"entryPoint"];
    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"requestUUID"];

    self = [(PRUISExternallyHostedPosterEntryPointWrapper *)self _initWithEntryPoint:v7 requestUUID:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  entryPoint = self->_entryPoint;
  coderCopy = coder;
  v6 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self _entryPointTypeStringForEntryPoint:?];
  [coderCopy encodeObject:v6 forKey:@"typeString"];
  [coderCopy encodeObject:self->_entryPoint forKey:@"entryPoint"];
  [coderCopy encodeObject:self->_requestUUID forKey:@"requestUUID"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PRUISExternallyHostedPosterEntryPointWrapper *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PRUISExternallyHostedPosterEntryPointWrapper *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(PRUISExternallyHostedPosterEntryPointWrapper *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PRUISExternallyHostedPosterEntryPointWrapper_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E83A7100;
  v7 = succinctDescriptionBuilder;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];

  v8 = v7;
  return v7;
}

- (id)_entryPointClassForTypeString:(uint64_t)string
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (string)
  {
    v6[0] = @"FocusPosterSelection";
    v2 = a2;
    v7[0] = objc_opt_class();
    v6[1] = @"PosterSelection";
    v7[1] = objc_opt_class();
    v6[2] = @"Gallery";
    v7[2] = objc_opt_class();
    v6[3] = @"Editing";
    v7[3] = objc_opt_class();
    v6[4] = @"HomeScreenSwitcher";
    v7[4] = objc_opt_class();
    v6[5] = @"EditHomeScreen";
    v7[5] = objc_opt_class();
    v6[6] = @"AmbientEditingSwitcher";
    v7[6] = objc_opt_class();
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
    v4 = [v3 objectForKey:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_entryPointTypeStringForEntryPoint:(void *)point
{
  v3 = a2;
  if (point)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__entryPointTypeStringForEntryPoint_ object:point file:@"PRUISExternallyHostedPosterEntryPointWrapper.m" lineNumber:104 description:{@"%@ should implement -_BSXPCSecureCodingEntryPointTypeString!", v3}];
    }

    point = [v3 _BSXPCSecureCodingEntryPointTypeString];
  }

  return point;
}

@end