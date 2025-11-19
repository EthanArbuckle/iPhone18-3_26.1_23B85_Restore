@interface PXPeopleSuggestionsMediaProvider
- (int)requestImageForPersonSuggestion:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 cropFactor:(int64_t)a6 cornerStyle:(int64_t)a7 resultHandler:(id)a8;
- (void)cancelRequest:(int)a3;
@end

@implementation PXPeopleSuggestionsMediaProvider

- (void)cancelRequest:(int)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionsMediaProvider.m" lineNumber:20 description:{@"Method %s is a responsibility of subclass %@", "-[PXPeopleSuggestionsMediaProvider cancelRequest:]", v7}];

  abort();
}

- (int)requestImageForPersonSuggestion:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 cropFactor:(int64_t)a6 cornerStyle:(int64_t)a7 resultHandler:(id)a8
{
  v11 = a3;
  v12 = a8;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v13 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionsMediaProvider.m" lineNumber:16 description:{@"Method %s is a responsibility of subclass %@", "-[PXPeopleSuggestionsMediaProvider requestImageForPersonSuggestion:targetSize:displayScale:cropFactor:cornerStyle:resultHandler:]", v15}];

  abort();
}

@end