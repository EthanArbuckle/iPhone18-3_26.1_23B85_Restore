@interface PBFDataRefreshState
- (PBFDataRefreshState)initWithNeedsRefresh:(BOOL)refresh reason:(id)reason;
- (id)description;
@end

@implementation PBFDataRefreshState

- (PBFDataRefreshState)initWithNeedsRefresh:(BOOL)refresh reason:(id)reason
{
  v14 = &v15;
  v6 = MEMORY[0x277CCACA8];
  reasonCopy = reason;
  v8 = [[v6 alloc] initWithFormat:reasonCopy arguments:&v15];

  v13.receiver = self;
  v13.super_class = PBFDataRefreshState;
  v9 = [(PBFDataRefreshState *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    refreshReason = v9->_refreshReason;
    v9->_refreshReason = v10;

    v9->_needsRefresh = refresh;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_needsRefresh withName:@"needsRefresh"];
  [v3 appendString:self->_refreshReason withName:@"refreshReason"];
  build = [v3 build];

  return build;
}

@end