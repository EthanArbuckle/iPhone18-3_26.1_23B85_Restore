@interface PXPeopleSuggestionsMediaProvider
- (int)requestImageForPersonSuggestion:(id)suggestion targetSize:(CGSize)size displayScale:(double)scale cropFactor:(int64_t)factor cornerStyle:(int64_t)style resultHandler:(id)handler;
- (void)cancelRequest:(int)request;
@end

@implementation PXPeopleSuggestionsMediaProvider

- (void)cancelRequest:(int)request
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionsMediaProvider.m" lineNumber:20 description:{@"Method %s is a responsibility of subclass %@", "-[PXPeopleSuggestionsMediaProvider cancelRequest:]", v7}];

  abort();
}

- (int)requestImageForPersonSuggestion:(id)suggestion targetSize:(CGSize)size displayScale:(double)scale cropFactor:(int64_t)factor cornerStyle:(int64_t)style resultHandler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionsMediaProvider.m" lineNumber:16 description:{@"Method %s is a responsibility of subclass %@", "-[PXPeopleSuggestionsMediaProvider requestImageForPersonSuggestion:targetSize:displayScale:cropFactor:cornerStyle:resultHandler:]", v15}];

  abort();
}

@end