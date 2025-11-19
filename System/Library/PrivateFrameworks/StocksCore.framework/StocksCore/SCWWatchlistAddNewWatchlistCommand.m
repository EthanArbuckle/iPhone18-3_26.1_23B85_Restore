@interface SCWWatchlistAddNewWatchlistCommand
- (SCWWatchlistAddNewWatchlistCommand)initWithCoder:(id)a3;
- (SCWWatchlistAddNewWatchlistCommand)initWithName:(id)a3 identifier:(id)a4 symbols:(id)a5 sortState:(id)a6 sortOrderState:(id)a7 displayState:(id)a8;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithZone:(id)a3;
@end

@implementation SCWWatchlistAddNewWatchlistCommand

- (SCWWatchlistAddNewWatchlistCommand)initWithName:(id)a3 identifier:(id)a4 symbols:(id)a5 sortState:(id)a6 sortOrderState:(id)a7 displayState:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = SCWWatchlistAddNewWatchlistCommand;
  v20 = [(SCWWatchlistAddNewWatchlistCommand *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [v16 copy];
    symbols = v20->_symbols;
    v20->_symbols = v23;

    v25 = [v15 copy];
    watchlistIdentifier = v20->_watchlistIdentifier;
    v20->_watchlistIdentifier = v25;

    v27 = [v17 copy];
    sortState = v20->_sortState;
    v20->_sortState = v27;

    v29 = [v18 copy];
    sortOrderState = v20->_sortOrderState;
    v20->_sortOrderState = v29;

    v31 = [v19 copy];
    displayState = v20->_displayState;
    v20->_displayState = v31;
  }

  return v20;
}

- (void)executeWithZone:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SCWWatchlistAddNewWatchlistCommand_executeWithZone___block_invoke;
  aBlock[3] = &unk_1E85E3320;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(SCWWatchlistAddNewWatchlistCommand *)self watchlistIdentifier];
  [v4 createOrUpdateRecordWithName:v6 recordType:@"Watchlist" modifyBlock:v5];
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

- (SCWWatchlistAddNewWatchlistCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"symbols"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortState"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortOrderState"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayState"];

  if (v5)
  {
    self = [(SCWWatchlistAddNewWatchlistCommand *)self initWithName:v5 identifier:v10 symbols:v9 sortState:v11 sortOrderState:v12 displayState:v13];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistAddNewWatchlistCommand *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(SCWWatchlistAddNewWatchlistCommand *)self watchlistIdentifier];
  [v4 encodeObject:v6 forKey:@"watchlistIdentifier"];

  v7 = [(SCWWatchlistAddNewWatchlistCommand *)self sortState];
  [v4 encodeObject:v7 forKey:@"sortState"];

  v8 = [(SCWWatchlistAddNewWatchlistCommand *)self sortOrderState];
  [v4 encodeObject:v8 forKey:@"sortOrderState"];

  v9 = [(SCWWatchlistAddNewWatchlistCommand *)self displayState];
  [v4 encodeObject:v9 forKey:@"displayState"];

  v10 = [(SCWWatchlistAddNewWatchlistCommand *)self symbols];
  [v4 encodeObject:v10 forKey:@"symbols"];
}

@end