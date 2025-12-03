@interface SCWWatchlistUpdateSortStateInWatchlistCommand
- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithWatchlistIdentifier:(id)identifier sortState:(id)state sortOrderState:(id)orderState displayState:(id)displayState;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistUpdateSortStateInWatchlistCommand

- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithWatchlistIdentifier:(id)identifier sortState:(id)state sortOrderState:(id)orderState displayState:(id)displayState
{
  identifierCopy = identifier;
  stateCopy = state;
  orderStateCopy = orderState;
  displayStateCopy = displayState;
  v24.receiver = self;
  v24.super_class = SCWWatchlistUpdateSortStateInWatchlistCommand;
  v14 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    watchlistIdentifier = v14->_watchlistIdentifier;
    v14->_watchlistIdentifier = v15;

    v17 = [stateCopy copy];
    sortState = v14->_sortState;
    v14->_sortState = v17;

    v19 = [orderStateCopy copy];
    sortOrderState = v14->_sortOrderState;
    v14->_sortOrderState = v19;

    v21 = [displayStateCopy copy];
    displayState = v14->_displayState;
    v14->_displayState = v21;
  }

  return v14;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SCWWatchlistUpdateSortStateInWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
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

- (SCWWatchlistUpdateSortStateInWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortState"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortOrderState"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayState"];

  if (v5)
  {
    self = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self initWithWatchlistIdentifier:v5 sortState:v6 sortOrderState:v7 displayState:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v10 = selfCopy;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  watchlistIdentifier = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];

  sortState = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self sortState];
  [coderCopy encodeObject:sortState forKey:@"sortState"];

  sortOrderState = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self sortOrderState];
  [coderCopy encodeObject:sortOrderState forKey:@"sortOrderState"];

  displayState = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)self displayState];
  [coderCopy encodeObject:displayState forKey:@"displayState"];
}

@end