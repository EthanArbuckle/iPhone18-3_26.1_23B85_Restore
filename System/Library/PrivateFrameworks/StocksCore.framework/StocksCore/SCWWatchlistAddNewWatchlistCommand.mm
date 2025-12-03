@interface SCWWatchlistAddNewWatchlistCommand
- (SCWWatchlistAddNewWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistAddNewWatchlistCommand)initWithName:(id)name identifier:(id)identifier symbols:(id)symbols sortState:(id)state sortOrderState:(id)orderState displayState:(id)displayState;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistAddNewWatchlistCommand

- (SCWWatchlistAddNewWatchlistCommand)initWithName:(id)name identifier:(id)identifier symbols:(id)symbols sortState:(id)state sortOrderState:(id)orderState displayState:(id)displayState
{
  nameCopy = name;
  identifierCopy = identifier;
  symbolsCopy = symbols;
  stateCopy = state;
  orderStateCopy = orderState;
  displayStateCopy = displayState;
  v34.receiver = self;
  v34.super_class = SCWWatchlistAddNewWatchlistCommand;
  v20 = [(SCWWatchlistAddNewWatchlistCommand *)&v34 init];
  if (v20)
  {
    v21 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [symbolsCopy copy];
    symbols = v20->_symbols;
    v20->_symbols = v23;

    v25 = [identifierCopy copy];
    watchlistIdentifier = v20->_watchlistIdentifier;
    v20->_watchlistIdentifier = v25;

    v27 = [stateCopy copy];
    sortState = v20->_sortState;
    v20->_sortState = v27;

    v29 = [orderStateCopy copy];
    sortOrderState = v20->_sortOrderState;
    v20->_sortOrderState = v29;

    v31 = [displayStateCopy copy];
    displayState = v20->_displayState;
    v20->_displayState = v31;
  }

  return v20;
}

- (void)executeWithZone:(id)zone
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SCWWatchlistAddNewWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  zoneCopy = zone;
  v5 = _Block_copy(aBlock);
  watchlistIdentifier = [(SCWWatchlistAddNewWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy createOrUpdateRecordWithName:watchlistIdentifier recordType:@"Watchlist" modifyBlock:v5];
}

void __54__SCWWatchlistAddNewWatchlistCommand_executeWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = a2;
  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"symbols"];
  v15 = [v3 orderedSetWithArray:v6];

  v7 = [*(a1 + 32) symbols];
  [v15 addObjectsFromArray:v7];

  v8 = [v15 array];
  v9 = [v4 encryptedValues];
  [v9 setObject:v8 forKeyedSubscript:@"symbols"];

  v10 = [*(a1 + 32) name];
  v11 = [v4 encryptedValues];
  [v11 setObject:v10 forKeyedSubscript:@"name"];

  v12 = [*(a1 + 32) sortState];
  [v4 setObject:v12 forKeyedSubscript:@"sortState"];

  v13 = [*(a1 + 32) sortOrderState];
  [v4 setObject:v13 forKeyedSubscript:@"sortOrderState"];

  v14 = [*(a1 + 32) displayState];
  [v4 setObject:v14 forKeyedSubscript:@"displayState"];
}

- (SCWWatchlistAddNewWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"symbols"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortState"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortOrderState"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayState"];

  if (v5)
  {
    self = [(SCWWatchlistAddNewWatchlistCommand *)self initWithName:v5 identifier:v10 symbols:v9 sortState:v11 sortOrderState:v12 displayState:v13];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v15 = selfCopy;

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SCWWatchlistAddNewWatchlistCommand *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  watchlistIdentifier = [(SCWWatchlistAddNewWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];

  sortState = [(SCWWatchlistAddNewWatchlistCommand *)self sortState];
  [coderCopy encodeObject:sortState forKey:@"sortState"];

  sortOrderState = [(SCWWatchlistAddNewWatchlistCommand *)self sortOrderState];
  [coderCopy encodeObject:sortOrderState forKey:@"sortOrderState"];

  displayState = [(SCWWatchlistAddNewWatchlistCommand *)self displayState];
  [coderCopy encodeObject:displayState forKey:@"displayState"];

  symbols = [(SCWWatchlistAddNewWatchlistCommand *)self symbols];
  [coderCopy encodeObject:symbols forKey:@"symbols"];
}

@end