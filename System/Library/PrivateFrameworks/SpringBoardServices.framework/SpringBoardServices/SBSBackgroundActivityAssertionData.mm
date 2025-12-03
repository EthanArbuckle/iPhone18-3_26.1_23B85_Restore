@interface SBSBackgroundActivityAssertionData
- (SBSBackgroundActivityAssertionData)init;
- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground;
- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground uniqueIdentifier:(id)identifier;
- (SBSBackgroundActivityAssertionData)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSBackgroundActivityAssertionData

- (SBSBackgroundActivityAssertionData)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSBackgroundActivityAssertionData.m" lineNumber:55 description:@"use initWithBackgroundActivityIdentifiers:…"];

  return 0;
}

- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  exclusiveCopy = exclusive;
  v8 = *&d;
  v10 = MEMORY[0x1E696AFB0];
  identifiersCopy = identifiers;
  uUID = [v10 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [(SBSBackgroundActivityAssertionData *)self initWithBackgroundActivityIdentifiers:identifiersCopy forPID:v8 exclusive:exclusiveCopy showsWhenForeground:foregroundCopy uniqueIdentifier:uUIDString];

  return v14;
}

- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground uniqueIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = SBSBackgroundActivityAssertionData;
  v14 = [(SBSBackgroundActivityAssertionData *)&v20 init];
  if (v14)
  {
    v15 = [identifiersCopy copy];
    backgroundActivityIdentifiers = v14->_backgroundActivityIdentifiers;
    v14->_backgroundActivityIdentifiers = v15;

    v14->_pid = d;
    v14->_exclusive = exclusive;
    v14->_showsWhenForeground = foreground;
    v17 = [identifierCopy copy];
    uniqueIdentifier = v14->_uniqueIdentifier;
    v14->_uniqueIdentifier = v17;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  backgroundActivityIdentifiers = self->_backgroundActivityIdentifiers;
  coderCopy = coder;
  allObjects = [(NSSet *)backgroundActivityIdentifiers allObjects];
  [coderCopy encodeObject:allObjects forKey:@"backgroundActivityIdentifiers"];

  [coderCopy encodeInteger:self->_pid forKey:@"pid"];
  [coderCopy encodeBool:self->_exclusive forKey:@"exclusive"];
  [coderCopy encodeBool:self->_showsWhenForeground forKey:@"showsWhenForeground"];
  [coderCopy encodeObject:self->_statusString forKey:@"statusString"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (SBSBackgroundActivityAssertionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"backgroundActivityIdentifiers"];
  v6 = [coderCopy decodeIntegerForKey:@"pid"];
  v7 = [coderCopy decodeBoolForKey:@"exclusive"];
  v8 = [coderCopy decodeBoolForKey:@"showsWhenForeground"];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v10 = [(SBSBackgroundActivityAssertionData *)self initWithBackgroundActivityIdentifiers:v9 forPID:v6 exclusive:v7 showsWhenForeground:v8 uniqueIdentifier:0];

  if (v10)
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 copy];
      uniqueIdentifier = v10->_uniqueIdentifier;
      v10->_uniqueIdentifier = v13;

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusString"];
      v16 = [v15 copy];
      statusString = v10->_statusString;
      v10->_statusString = v16;
    }

    else
    {
      v15 = v10;
      v10 = 0;
    }
  }

  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSBackgroundActivityAssertionData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSBackgroundActivityAssertionData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSBackgroundActivityAssertionData *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__SBSBackgroundActivityAssertionData_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E735F7F0;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __76__SBSBackgroundActivityAssertionData_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v7 = soft_STBackgroundActivityIdentifiersDescription([*(a1 + 32) backgroundActivityIdentifiers]);
  [*(a1 + 40) appendString:v7 withName:@"backgroundActivityIdentifiers"];
  v2 = [*(a1 + 40) appendInt:objc_msgSend(*(a1 + 32) withName:{"pid"), @"pid"}];
  v3 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:{"isExclusive"), @"exclusive"}];
  v4 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:{"showsWhenForeground"), @"showsWhenForeground"}];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) uniqueIdentifier];
  [v5 appendString:v6 withName:@"identifier"];
}

@end