@interface SCWWatchlistInlineDefaultsProvider
- (SCWWatchlistInlineDefaultsProvider)initWithDefaults:(id)a3;
- (void)fetchWatchlistDefaultsWithCompletion:(id)a3;
@end

@implementation SCWWatchlistInlineDefaultsProvider

- (SCWWatchlistInlineDefaultsProvider)initWithDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCWWatchlistInlineDefaultsProvider;
  v6 = [(SCWWatchlistInlineDefaultsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, a3);
  }

  return v7;
}

- (void)fetchWatchlistDefaultsWithCompletion:(id)a3
{
  defaults = self->_defaults;
  v5 = a3;
  v6 = [(SCWWatchlistDefaults *)defaults defaultSymbols];
  (*(a3 + 2))(v5, v6, 0);
}

@end