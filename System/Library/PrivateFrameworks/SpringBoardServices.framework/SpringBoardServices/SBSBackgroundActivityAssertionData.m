@interface SBSBackgroundActivityAssertionData
- (SBSBackgroundActivityAssertionData)init;
- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6;
- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6 uniqueIdentifier:(id)a7;
- (SBSBackgroundActivityAssertionData)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSBackgroundActivityAssertionData

- (SBSBackgroundActivityAssertionData)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSBackgroundActivityAssertionData.m" lineNumber:55 description:@"use initWithBackgroundActivityIdentifiers:…"];

  return 0;
}

- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a4;
  v10 = MEMORY[0x1E696AFB0];
  v11 = a3;
  v12 = [v10 UUID];
  v13 = [v12 UUIDString];
  v14 = [(SBSBackgroundActivityAssertionData *)self initWithBackgroundActivityIdentifiers:v11 forPID:v8 exclusive:v7 showsWhenForeground:v6 uniqueIdentifier:v13];

  return v14;
}

- (SBSBackgroundActivityAssertionData)initWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6 uniqueIdentifier:(id)a7
{
  v12 = a3;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = SBSBackgroundActivityAssertionData;
  v14 = [(SBSBackgroundActivityAssertionData *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    backgroundActivityIdentifiers = v14->_backgroundActivityIdentifiers;
    v14->_backgroundActivityIdentifiers = v15;

    v14->_pid = a4;
    v14->_exclusive = a5;
    v14->_showsWhenForeground = a6;
    v17 = [v13 copy];
    uniqueIdentifier = v14->_uniqueIdentifier;
    v14->_uniqueIdentifier = v17;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  backgroundActivityIdentifiers = self->_backgroundActivityIdentifiers;
  v6 = a3;
  v5 = [(NSSet *)backgroundActivityIdentifiers allObjects];
  [v6 encodeObject:v5 forKey:@"backgroundActivityIdentifiers"];

  [v6 encodeInteger:self->_pid forKey:@"pid"];
  [v6 encodeBool:self->_exclusive forKey:@"exclusive"];
  [v6 encodeBool:self->_showsWhenForeground forKey:@"showsWhenForeground"];
  [v6 encodeObject:self->_statusString forKey:@"statusString"];
  [v6 encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (SBSBackgroundActivityAssertionData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"backgroundActivityIdentifiers"];
  v6 = [v4 decodeIntegerForKey:@"pid"];
  v7 = [v4 decodeBoolForKey:@"exclusive"];
  v8 = [v4 decodeBoolForKey:@"showsWhenForeground"];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v10 = [(SBSBackgroundActivityAssertionData *)self initWithBackgroundActivityIdentifiers:v9 forPID:v6 exclusive:v7 showsWhenForeground:v8 uniqueIdentifier:0];

  if (v10)
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 copy];
      uniqueIdentifier = v10->_uniqueIdentifier;
      v10->_uniqueIdentifier = v13;

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusString"];
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
  v2 = [(SBSBackgroundActivityAssertionData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSBackgroundActivityAssertionData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSBackgroundActivityAssertionData *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__SBSBackgroundActivityAssertionData_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E735F7F0;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

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