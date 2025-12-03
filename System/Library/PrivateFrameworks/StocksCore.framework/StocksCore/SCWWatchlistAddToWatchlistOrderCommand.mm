@interface SCWWatchlistAddToWatchlistOrderCommand
- (SCWWatchlistAddToWatchlistOrderCommand)initWithCoder:(id)coder;
- (SCWWatchlistAddToWatchlistOrderCommand)initWithWatchlistIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistAddToWatchlistOrderCommand

- (SCWWatchlistAddToWatchlistOrderCommand)initWithWatchlistIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = SCWWatchlistAddToWatchlistOrderCommand;
  v5 = [(SCWWatchlistAddToWatchlistOrderCommand *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    watchlistIdentifiers = v5->_watchlistIdentifiers;
    v5->_watchlistIdentifiers = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__SCWWatchlistAddToWatchlistOrderCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v4 = _Block_copy(aBlock);
  [zoneCopy createOrUpdateRecordWithName:@"watchlistorder" recordType:@"WatchlistOrder" modifyBlock:v4];
}

void __58__SCWWatchlistAddToWatchlistOrderCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"watchlistIDs"];
  v10 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) watchlistIdentifiers];
  [v10 addObjectsFromArray:v7];

  v8 = [v10 array];
  v9 = [v4 encryptedValues];

  [v9 setObject:v8 forKeyedSubscript:@"watchlistIDs"];
}

- (SCWWatchlistAddToWatchlistOrderCommand)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"watchlistIdentifiers"];

  if (v8)
  {
    self = [(SCWWatchlistAddToWatchlistOrderCommand *)self initWithWatchlistIdentifiers:v8];
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
  watchlistIdentifiers = [(SCWWatchlistAddToWatchlistOrderCommand *)self watchlistIdentifiers];
  [coderCopy encodeObject:watchlistIdentifiers forKey:@"watchlistIdentifiers"];
}

@end