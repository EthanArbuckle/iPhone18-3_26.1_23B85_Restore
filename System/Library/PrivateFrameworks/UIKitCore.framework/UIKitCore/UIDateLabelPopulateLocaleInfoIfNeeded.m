@interface UIDateLabelPopulateLocaleInfoIfNeeded
@end

@implementation UIDateLabelPopulateLocaleInfoIfNeeded

void ___UIDateLabelPopulateLocaleInfoIfNeeded_block_invoke()
{
  _UIDateLabelUpdateLocaleInfo();
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = [v2 addObserverForName:0x1EFB8EEF0 object:0 queue:0 usingBlock:&__block_literal_global_124_5];
  v1 = _UIDateLabelPopulateLocaleInfoIfNeeded_token;
  _UIDateLabelPopulateLocaleInfoIfNeeded_token = v0;
}

@end