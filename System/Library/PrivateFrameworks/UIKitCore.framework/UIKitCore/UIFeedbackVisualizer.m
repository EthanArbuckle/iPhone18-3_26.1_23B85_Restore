@interface UIFeedbackVisualizer
@end

@implementation UIFeedbackVisualizer

void __41___UIFeedbackVisualizer_sharedVisualizer__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED49DC50;
  qword_1ED49DC50 = v1;
}

void __57___UIFeedbackVisualizer_showVisualForFeedback_withDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _showVisualForFeedback:*(a1 + 40)];
  v2 = [*(a1 + 40) visualizerSources];
  [v2 removeObject:*(*(*(a1 + 48) + 8) + 40)];
}

@end