@interface SCWWatchlistUpdateDisplayStateInWatchlistCommand
- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithCoder:(id)a3;
- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithWatchlistIdentifier:(id)a3 displayState:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWWatchlistUpdateDisplayStateInWatchlistCommand

- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithWatchlistIdentifier:(id)a3 displayState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCWWatchlistUpdateDisplayStateInWatchlistCommand;
  v8 = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    watchlistIdentifier = v8->_watchlistIdentifier;
    v8->_watchlistIdentifier = v9;

    v11 = [v7 copy];
    displayState = v8->_displayState;
    v8->_displayState = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__SCWWatchlistUpdateDisplayStateInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self watchlistIdentifier];
  [v4 createOrUpdateRecordWithName:v6 recordType:@"Watchlist" modifyBlock:v5];
}

void __68__SCWWatchlistUpdateDisplayStateInWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayState];
  [v3 setObject:v4 forKeyedSubscript:@"displayState"];
}

- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayState"];

  if (v5)
  {
    self = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self initWithWatchlistIdentifier:v5 displayState:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self watchlistIdentifier];
  [v4 encodeObject:v5 forKey:@"watchlistIdentifier"];

  v6 = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self displayState];
  [v4 encodeObject:v6 forKey:@"displayState"];
}

@end