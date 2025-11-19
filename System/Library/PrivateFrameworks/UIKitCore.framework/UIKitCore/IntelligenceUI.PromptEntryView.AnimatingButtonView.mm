@interface IntelligenceUI.PromptEntryView.AnimatingButtonView
+ (Class)_visualProviderClassForIdiom:(int64_t)a3;
- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019AnimatingButtonView)initWithFrame:(CGRect)a3;
@end

@implementation IntelligenceUI.PromptEntryView.AnimatingButtonView

+ (Class)_visualProviderClassForIdiom:(int64_t)a3
{
  sub_188A34624(0, &qword_1EA92FD50);

  return swift_getObjCClassFromMetadata();
}

- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019AnimatingButtonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _s15PromptEntryViewC19AnimatingButtonViewCMa();
  return [(_UIIntelligenceButton *)&v8 initWithFrame:x, y, width, height];
}

@end