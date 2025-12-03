@interface _SBAppSwitcherSnapshotImageCacheRequest
- (_SBAppSwitcherSnapshotImageCacheRequest)initWithSequenceID:(unint64_t)d;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _SBAppSwitcherSnapshotImageCacheRequest

- (_SBAppSwitcherSnapshotImageCacheRequest)initWithSequenceID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = _SBAppSwitcherSnapshotImageCacheRequest;
  result = [(_SBAppSwitcherSnapshotImageCacheRequest *)&v5 init];
  if (result)
  {
    result->_sequenceID = d;
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBAppSwitcherSnapshotImageCacheRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  displayItem = [(_SBAppSwitcherSnapshotImageCacheRequest *)self displayItem];
  uniqueIdentifier = [displayItem uniqueIdentifier];
  v6 = [v3 appendObject:uniqueIdentifier withName:@"displayID"];

  snapshot = [(_SBAppSwitcherSnapshotImageCacheRequest *)self snapshot];
  v8 = [v3 appendObject:snapshot withName:@"snapshot"];

  v9 = [v3 appendUnsignedInteger:-[_SBAppSwitcherSnapshotImageCacheRequest sequenceID](self withName:{"sequenceID"), @"sequenceID"}];
  v10 = [v3 appendBool:-[_SBAppSwitcherSnapshotImageCacheRequest loadFullSizeSnapshot](self withName:{"loadFullSizeSnapshot"), @"loadFullSizeSnapshot"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBAppSwitcherSnapshotImageCacheRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end