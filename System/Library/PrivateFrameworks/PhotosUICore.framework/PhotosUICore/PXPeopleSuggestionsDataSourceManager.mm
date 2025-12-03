@interface PXPeopleSuggestionsDataSourceManager
- (PXPeopleSuggestionsMediaProvider)mediaProvider;
@end

@implementation PXPeopleSuggestionsDataSourceManager

- (PXPeopleSuggestionsMediaProvider)mediaProvider
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionsDataSourceManager.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXPeopleSuggestionsDataSourceManager mediaProvider]", v6}];

  abort();
}

@end