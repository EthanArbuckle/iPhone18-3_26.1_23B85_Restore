@interface PRIncomingCallTextViewConfigurationMetrics
+ (double)idealSpaceBetweenTopText:(id)a3 topFont:(id)a4 bottomText:(id)a5 bottomFont:(id)a6;
- (PRIncomingCallTextViewConfigurationMetrics)init;
@end

@implementation PRIncomingCallTextViewConfigurationMetrics

+ (double)idealSpaceBetweenTopText:(id)a3 topFont:(id)a4 bottomText:(id)a5 bottomFont:(id)a6
{
  v8 = sub_1A8BDE134();
  v10 = v9;
  v11 = sub_1A8BDE134();
  v13 = v12;
  v14 = a4;
  v15 = a6;
  sub_1A8BB0BC8(v8, v10, v14, v20);
  v16 = v15;
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