@interface SCWWatchlist
- (SCWWatchlist)initWithIdentifier:(id)identifier name:(id)name symbols:(id)symbols sortState:(id)state sortOrderState:(id)orderState displayState:(id)displayState;
- (id)description;
@end

@implementation SCWWatchlist

- (SCWWatchlist)initWithIdentifier:(id)identifier name:(id)name symbols:(id)symbols sortState:(id)state sortOrderState:(id)orderState displayState:(id)displayState
{
  identifierCopy = identifier;
  nameCopy = name;
  symbolsCopy = symbols;
  stateCopy = state;
  orderStateCopy = orderState;
  displayStateCopy = displayState;
  v24.receiver = self;
  v24.super_class = SCWWatchlist;
  v18 = [(SCWWatchlist *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_symbols, symbols);
    objc_storeStrong(&v19->_sortState, state);
    objc_storeStrong(&v19->_sortOrderState, orderState);
    objc_storeStrong(&v19->_displayState, displayState);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(SCWWatchlist *)self name];
  symbols = [(SCWWatchlist *)self symbols];
  sortState = [(SCWWatchlist *)self sortState];
  sortOrderState = [(SCWWatchlist *)self sortOrderState];
  displayState = [(SCWWatchlist *)self displayState];
  v9 = [v3 stringWithFormat:@"<SCWWatchlist %p, name=%@ symbols=%@ sortState=%@ sortOrderState=%@ displayState=%@>", self, name, symbols, sortState, sortOrderState, displayState];

  return v9;
}

@end