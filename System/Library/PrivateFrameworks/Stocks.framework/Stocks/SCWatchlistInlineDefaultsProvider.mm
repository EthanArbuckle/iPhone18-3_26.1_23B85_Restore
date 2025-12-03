@interface SCWatchlistInlineDefaultsProvider
- (SCWatchlistInlineDefaultsProvider)initWithDefaults:(id)defaults;
- (void)fetchWatchlistDefaultsWithCompletion:(id)completion;
@end

@implementation SCWatchlistInlineDefaultsProvider

- (SCWatchlistInlineDefaultsProvider)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = SCWatchlistInlineDefaultsProvider;
  v6 = [(SCWatchlistInlineDefaultsProvider *)&v9 init];
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
  defaultSymbols = [(SCWatchlistDefaults *)defaults defaultSymbols];
  (*(completion + 2))(completionCopy, defaultSymbols, 0);
}

@end