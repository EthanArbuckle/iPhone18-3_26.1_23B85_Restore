@interface IntelligenceUI.PromptEntryView.PromptEntryTextView
- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019PromptEntryTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation IntelligenceUI.PromptEntryView.PromptEntryTextView

- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019PromptEntryTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = _s15PromptEntryViewC19PromptEntryTextViewCMa();
  return [(UITextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

@end