@interface PGSpecBasedHighlightTitleGenerator
- (PGSpecBasedHighlightTitleGenerator)initWithMomentNodes:(id)nodes meaningLabel:(id)label createVerboseTitle:(BOOL)title titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGSpecBasedHighlightTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  v4 = [PGHighlightsTitleSpecFactory specCollectionForMeaningLabel:self->_meaningLabel allowAllCities:self->_createVerboseTitle];
  v5 = [PGSpecBasedTitleGenerator alloc];
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  v8 = [(PGSpecBasedTitleGenerator *)v5 initWithMomentNodes:momentNodes features:0 specCollection:v4 titleGenerationContext:titleGenerationContext];

  [(PGSpecBasedTitleGenerator *)v8 setLineBreakBehavior:[(PGTitleGenerator *)self lineBreakBehavior]];
  title = [(PGSpecBasedTitleGenerator *)v8 title];
  if (resultCopy)
  {
    resultCopy[2](resultCopy, title, 0);
  }
}

- (PGSpecBasedHighlightTitleGenerator)initWithMomentNodes:(id)nodes meaningLabel:(id)label createVerboseTitle:(BOOL)title titleGenerationContext:(id)context
{
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = PGSpecBasedHighlightTitleGenerator;
  v12 = [(PGTitleGenerator *)&v15 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_meaningLabel, label);
    v13->_createVerboseTitle = title;
  }

  return v13;
}

@end