@interface PGSpecBasedHighlightTitleGenerator
- (PGSpecBasedHighlightTitleGenerator)initWithMomentNodes:(id)a3 meaningLabel:(id)a4 createVerboseTitle:(BOOL)a5 titleGenerationContext:(id)a6;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGSpecBasedHighlightTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v10 = a3;
  v4 = [PGHighlightsTitleSpecFactory specCollectionForMeaningLabel:self->_meaningLabel allowAllCities:self->_createVerboseTitle];
  v5 = [PGSpecBasedTitleGenerator alloc];
  v6 = [(PGTitleGenerator *)self momentNodes];
  v7 = [(PGTitleGenerator *)self titleGenerationContext];
  v8 = [(PGSpecBasedTitleGenerator *)v5 initWithMomentNodes:v6 features:0 specCollection:v4 titleGenerationContext:v7];

  [(PGSpecBasedTitleGenerator *)v8 setLineBreakBehavior:[(PGTitleGenerator *)self lineBreakBehavior]];
  v9 = [(PGSpecBasedTitleGenerator *)v8 title];
  if (v10)
  {
    v10[2](v10, v9, 0);
  }
}

- (PGSpecBasedHighlightTitleGenerator)initWithMomentNodes:(id)a3 meaningLabel:(id)a4 createVerboseTitle:(BOOL)a5 titleGenerationContext:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PGSpecBasedHighlightTitleGenerator;
  v12 = [(PGTitleGenerator *)&v15 initWithMomentNodes:a3 type:0 titleGenerationContext:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_meaningLabel, a4);
    v13->_createVerboseTitle = a5;
  }

  return v13;
}

@end