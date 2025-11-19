@interface SCWWatchlist
- (SCWWatchlist)initWithIdentifier:(id)a3 name:(id)a4 symbols:(id)a5 sortState:(id)a6 sortOrderState:(id)a7 displayState:(id)a8;
- (id)description;
@end

@implementation SCWWatchlist

- (SCWWatchlist)initWithIdentifier:(id)a3 name:(id)a4 symbols:(id)a5 sortState:(id)a6 sortOrderState:(id)a7 displayState:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = SCWWatchlist;
  v18 = [(SCWWatchlist *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_name, a4);
    objc_storeStrong(&v19->_symbols, a5);
    objc_storeStrong(&v19->_sortState, a6);
    objc_storeStrong(&v19->_sortOrderState, a7);
    objc_storeStrong(&v19->_displayState, a8);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SCWWatchlist *)self name];
  v5 = [(SCWWatchlist *)self symbols];
  v6 = [(SCWWatchlist *)self sortState];
  v7 = [(SCWWatchlist *)self sortOrderState];
  v8 = [(SCWWatchlist *)self displayState];
  v9 = [v3 stringWithFormat:@"<SCWWatchlist %p, name=%@ symbols=%@ sortState=%@ sortOrderState=%@ displayState=%@>", self, v4, v5, v6, v7, v8];

  return v9;
}

@end