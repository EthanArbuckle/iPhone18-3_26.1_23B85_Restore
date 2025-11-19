@interface SCWWatchlistUpdateSortStateInWatchlistCommand
- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithCoder:(id)a3;
- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithWatchlistIdentifier:(id)a3 sortState:(id)a4 sortOrderState:(id)a5 displayState:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWWatchlistUpdateSortStateInWatchlistCommand

- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithWatchlistIdentifier:(id)a3 sortState:(id)a4 sortOrderState:(id)a5 displayState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = SCWWatchlistUpdateSortStateInWatchlistCommand;
  v14 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    watchlistIdentifier = v14->_watchlistIdentifier;
    v14->_watchlistIdentifier = v15;

    v17 = [v11 copy];
    sortState = v14->_sortState;
    v14->_sortState = v17;

    v19 = [v12 copy];
    sortOrderState = v14->_sortOrderState;
    v14->_sortOrderState = v19;

    v21 = [v13 copy];
    displayState = v14->_displayState;
    v14->_displayState = v21;
  }

  return v14;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SCWWatchlistUpdateSortStateInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self watchlistIdentifier];
  [v4 createOrUpdateRecordWithName:v6 recordType:@"Watchlist" modifyBlock:v5];
}

void __65__SCWWatchlistUpdateSortStateInWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) sortState];
  [v7 setObject:v3 forKeyedSubscript:@"sortState"];

  v4 = [*(a1 + 32) sortOrderState];
  [v7 setObject:v4 forKeyedSubscript:@"sortOrderState"];

  v5 = [*(a1 + 32) displayState];

  if (v5)
  {
    v6 = [*(a1 + 32) displayState];
    [v7 setObject:v6 forKeyedSubscript:@"displayState"];
  }
}

- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortState"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortOrderState"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayState"];

  if (v5)
  {
    self = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self initWithWatchlistIdentifier:v5 sortState:v6 sortOrderState:v7 displayState:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self watchlistIdentifier];
  [v4 encodeObject:v5 forKey:@"watchlistIdentifier"];

  v6 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self sortState];
  [v4 encodeObject:v6 forKey:@"sortState"];

  v7 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self sortOrderState];
  [v4 encodeObject:v7 forKey:@"sortOrderState"];

  v8 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self displayState];
  [v4 encodeObject:v8 forKey:@"displayState"];
}

@end