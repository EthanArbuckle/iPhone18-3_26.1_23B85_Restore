@interface PRIncomingCallTextViewConfigurationMetrics
+ (double)idealSpaceBetweenTopText:(id)text topFont:(id)font bottomText:(id)bottomText bottomFont:(id)bottomFont;
- (PRIncomingCallTextViewConfigurationMetrics)init;
@end

@implementation PRIncomingCallTextViewConfigurationMetrics

+ (double)idealSpaceBetweenTopText:(id)text topFont:(id)font bottomText:(id)bottomText bottomFont:(id)bottomFont
{
  v8 = sub_1A8BDE134();
  v10 = v9;
  v11 = sub_1A8BDE134();
  v13 = v12;
  fontCopy = font;
  bottomFontCopy = bottomFont;
  sub_1A8BB0BC8(v8, v10, fontCopy, v20);
  v16 = bottomFontCopy;
  sub_1A8BB0BC8(v11, v13, v16, v21);
  sub_1A8BB1004(v21);
  sub_1A8BB1004(v20);

  v17 = *&v20[12];
  v18 = v22;

  return round(v17 + v18);
}

- (PRIncomingCallTextViewConfigurationMetrics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IncomingCallTextViewConfigurationMetrics();
  return [(PRIncomingCallTextViewConfigurationMetrics *)&v3 init];
}

@end