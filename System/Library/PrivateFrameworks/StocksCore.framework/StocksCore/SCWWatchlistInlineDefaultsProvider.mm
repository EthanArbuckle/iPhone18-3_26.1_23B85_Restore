@interface SCWWatchlistInlineDefaultsProvider
- (SCWWatchlistInlineDefaultsProvider)initWithDefaults:(id)defaults;
- (void)fetchWatchlistDefaultsWithCompletion:(id)completion;
@end

@implementation SCWWatchlistInlineDefaultsProvider

- (SCWWatchlistInlineDefaultsProvider)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = SCWWatchlistInlineDefaultsProvider;
  v6 = [(SCWWatchlistInlineDefaultsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, defaults);
  }

  return v7;
}

- (void)fetchWatchlistDefaultsWithCompletion:(id)completion
{
  defaults = self->_defaults;
  completionCopy = completion;
  defaultSymbols = [(SCWWatchlistDefaults *)defaults defaultSymbols];
  (*(completion + 2))(completionCopy, defaultSymbols, 0);
}

@end