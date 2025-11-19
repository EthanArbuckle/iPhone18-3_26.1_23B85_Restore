@interface PUSelectionFeedbackGenerator
- (PUSelectionFeedbackGenerator)init;
- (void)performFeedback;
- (void)prepareFeedback;
@end

@implementation PUSelectionFeedbackGenerator

- (void)performFeedback
{
  v2 = [(PUSelectionFeedbackGenerator *)self feedbackGenerator];
  [v2 selectionChanged];
}

- (void)prepareFeedback
{
  v2 = [(PUSelectionFeedbackGenerator *)self feedbackGenerator];
  [v2 prepare];
}

- (PUSelectionFeedbackGenerator)init
{
  v9.receiver = self;
  v9.super_class = PUSelectionFeedbackGenerator;
  v2 = [(PUSelectionFeedbackGenerator *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
    v4 = [v3 tweakedConfigurationForCaller:v2 usage:@"photosEditAdjustmentSelection"];

    v5 = [MEMORY[0x1E69DD470] feedbackWithDictionaryRepresentation:&unk_1F2B7F1E8];
    [v4 setFeedback:v5];

    v6 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v4];
    feedbackGenerator = v2->_feedbackGenerator;
    v2->_feedbackGenerator = v6;

    [(UISelectionFeedbackGenerator *)v2->_feedbackGenerator _setOutputMode:5];
  }

  return v2;
}

@end