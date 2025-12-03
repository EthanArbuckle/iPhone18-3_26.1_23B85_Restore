@interface GMHeaderIconProvider
- (_TtC14VoiceTriggerUI20GMHeaderIconProvider)init;
- (id)imageViewWithLabelWithLabelFontSize:(double)size labelBackgroundColor:(id)color labelForegroundColor:(id)foregroundColor;
@end

@implementation GMHeaderIconProvider

- (_TtC14VoiceTriggerUI20GMHeaderIconProvider)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC14VoiceTriggerUI20GMHeaderIconProvider_gmIconID);
  *v2 = 0xD00000000000002DLL;
  v2[1] = 0x800000027293C810;
  v4.receiver = self;
  v4.super_class = type metadata accessor for GMHeaderIconProvider();
  return [(GMHeaderIconProvider *)&v4 init];
}

- (id)imageViewWithLabelWithLabelFontSize:(double)size labelBackgroundColor:(id)color labelForegroundColor:(id)foregroundColor
{
  colorCopy = color;
  foregroundColorCopy = foregroundColor;
  selfCopy = self;
  v11 = sub_272907FB0(colorCopy, foregroundColorCopy, size);

  return v11;
}

@end