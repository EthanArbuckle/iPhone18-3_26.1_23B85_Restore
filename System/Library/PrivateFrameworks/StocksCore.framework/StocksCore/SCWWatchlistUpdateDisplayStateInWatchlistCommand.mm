@interface SCWWatchlistUpdateDisplayStateInWatchlistCommand
- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithWatchlistIdentifier:(id)identifier displayState:(id)state;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistUpdateDisplayStateInWatchlistCommand

- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithWatchlistIdentifier:(id)identifier displayState:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = SCWWatchlistUpdateDisplayStateInWatchlistCommand;
  v8 = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    watchlistIdentifier = v8->_watchlistIdentifier;
    v8->_watchlistIdentifier = v9;

    v11 = [stateCopy copy];
    displayState = v8->_displayState;
    v8->_displayState = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__SCWWatchlistUpdateDisplayStateInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
}

void __68__SCWWatchlistUpdateDisplayStateInWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayState];
  [v3 setObject:v4 forKeyedSubscript:@"displayState"];
}

- (SCWWatchlistUpdateDisplayStateInWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayState"];

  if (v5)
  {
    self = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self initWithWatchlistIdentifier:v5 displayState:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  watchlistIdentifier = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];

  displayState = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)self displayState];
  [coderCopy encodeObject:displayState forKey:@"displayState"];
}

@end