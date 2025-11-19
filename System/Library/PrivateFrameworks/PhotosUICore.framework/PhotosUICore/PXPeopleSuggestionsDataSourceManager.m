@interface PXPeopleSuggestionsDataSourceManager
- (PXPeopleSuggestionsMediaProvider)mediaProvider;
@end

@implementation PXPeopleSuggestionsDataSourceManager

- (PXPeopleSuggestionsMediaProvider)mediaProvider
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionsDataSourceManager.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXPeopleSuggestionsDataSourceManager mediaProvider]", v6}];

  abort();
}

@end