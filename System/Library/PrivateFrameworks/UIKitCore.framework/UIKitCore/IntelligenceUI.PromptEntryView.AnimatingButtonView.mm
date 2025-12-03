@interface IntelligenceUI.PromptEntryView.AnimatingButtonView
+ (Class)_visualProviderClassForIdiom:(int64_t)idiom;
- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019AnimatingButtonView)initWithFrame:(CGRect)frame;
@end

@implementation IntelligenceUI.PromptEntryView.AnimatingButtonView

+ (Class)_visualProviderClassForIdiom:(int64_t)idiom
{
  sub_188A34624(0, &qword_1EA92FD50);

  return swift_getObjCClassFromMetadata();
}

- (_TtCCO5UIKit14IntelligenceUI15PromptEntryViewP33_75F9C46457AA903D9A8178C1F5C6F21019AnimatingButtonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _s15PromptEntryViewC19AnimatingButtonViewCMa();
  return [(_UIIntelligenceButton *)&v8 initWithFrame:x, y, width, height];
}

@end