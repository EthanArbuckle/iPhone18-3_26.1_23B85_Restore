@interface SCWWatchlistRemoveFromWatchlistOrderCommand
- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithCoder:(id)coder;
- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithWatchlistIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistRemoveFromWatchlistOrderCommand

- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithWatchlistIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SCWWatchlistRemoveFromWatchlistOrderCommand;
  v5 = [(SCWWatchlistRemoveFromWatchlistOrderCommand *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    watchlistIdentifier = v5->_watchlistIdentifier;
    v5->_watchlistIdentifier = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SCWWatchlistRemoveFromWatchlistOrderCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v4 = _Block_copy(aBlock);
  [zoneCopy createOrUpdateRecordWithName:@"watchlistorder" recordType:@"WatchlistOrder" modifyBlock:v4];
}

void __63__SCWWatchlistRemoveFromWatchlistOrderCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"watchlistIDs"];
  v10 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) watchlistIdentifier];
  [v10 removeObject:v7];

  v8 = [v10 array];
  v9 = [v4 encryptedValues];

  [v9 setObject:v8 forKeyedSubscript:@"watchlistIDs"];
}

- (SCWWatchlistRemoveFromWatchlistOrderCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    self = [(SCWWatchlistRemoveFromWatchlistOrderCommand *)self initWithWatchlistIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v7 = selfCopy;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  watchlistIdentifier = [(SCWWatchlistRemoveFromWatchlistOrderCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];
}

@end