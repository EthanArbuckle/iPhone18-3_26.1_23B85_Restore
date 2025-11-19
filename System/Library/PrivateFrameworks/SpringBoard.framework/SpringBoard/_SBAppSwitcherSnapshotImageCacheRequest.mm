@interface _SBAppSwitcherSnapshotImageCacheRequest
- (_SBAppSwitcherSnapshotImageCacheRequest)initWithSequenceID:(unint64_t)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _SBAppSwitcherSnapshotImageCacheRequest

- (_SBAppSwitcherSnapshotImageCacheRequest)initWithSequenceID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _SBAppSwitcherSnapshotImageCacheRequest;
  result = [(_SBAppSwitcherSnapshotImageCacheRequest *)&v5 init];
  if (result)
  {
    result->_sequenceID = a3;
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(_SBAppSwitcherSnapshotImageCacheRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(_SBAppSwitcherSnapshotImageCacheRequest *)self displayItem];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 appendObject:v5 withName:@"displayID"];

  v7 = [(_SBAppSwitcherSnapshotImageCacheRequest *)self snapshot];
  v8 = [v3 appendObject:v7 withName:@"snapshot"];

  v9 = [v3 appendUnsignedInteger:-[_SBAppSwitcherSnapshotImageCacheRequest sequenceID](self withName:{"sequenceID"), @"sequenceID"}];
  v10 = [v3 appendBool:-[_SBAppSwitcherSnapshotImageCacheRequest loadFullSizeSnapshot](self withName:{"loadFullSizeSnapshot"), @"loadFullSizeSnapshot"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBAppSwitcherSnapshotImageCacheRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end