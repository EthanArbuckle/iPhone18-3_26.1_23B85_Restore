@interface GMHeaderIconProvider
- (_TtC14VoiceTriggerUI20GMHeaderIconProvider)init;
- (id)imageViewWithLabelWithLabelFontSize:(double)a3 labelBackgroundColor:(id)a4 labelForegroundColor:(id)a5;
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

- (id)imageViewWithLabelWithLabelFontSize:(double)a3 labelBackgroundColor:(id)a4 labelForegroundColor:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = self;
  v11 = sub_272907FB0(v8, v9, a3);

  return v11;
}

@end