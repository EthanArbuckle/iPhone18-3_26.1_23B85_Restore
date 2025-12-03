@interface SCWWatchlistRenameWatchlistCommand
- (SCWWatchlistRenameWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistRenameWatchlistCommand)initWithWatchlistIdentifier:(id)identifier updatedName:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistRenameWatchlistCommand

- (SCWWatchlistRenameWatchlistCommand)initWithWatchlistIdentifier:(id)identifier updatedName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = SCWWatchlistRenameWatchlistCommand;
  v8 = [(SCWWatchlistRenameWatchlistCommand *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    watchlistIdentifier = v8->_watchlistIdentifier;
    v8->_watchlistIdentifier = v9;

    v11 = [nameCopy copy];
    updatedName = v8->_updatedName;
    v8->_updatedName = v11;
  }

  return v8;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SCWWatchlistRenameWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistRenameWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
}

void __54__SCWWatchlistRenameWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 updatedName];
  v4 = [v3 encryptedValues];

  [v4 setObject:v5 forKeyedSubscript:@"name"];
}

- (SCWWatchlistRenameWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  if (v5)
  {
    self = [(SCWWatchlistRenameWatchlistCommand *)self initWithWatchlistIdentifier:v5 updatedName:v6];
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
  watchlistIdentifier = [(SCWWatchlistRenameWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];

  updatedName = [(SCWWatchlistRenameWatchlistCommand *)self updatedName];
  [coderCopy encodeObject:updatedName forKey:@"name"];
}

@end