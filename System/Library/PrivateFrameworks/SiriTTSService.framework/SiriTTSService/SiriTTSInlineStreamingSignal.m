@interface SiriTTSInlineStreamingSignal
- (SiriTTSInlineStreamingSignal)initWithText:(id)a3 identifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTTSInlineStreamingSignal

- (SiriTTSInlineStreamingSignal)initWithText:(id)a3 identifier:(id)a4
{
  v4 = sub_1B1C2CB58();
  v6 = v5;
  v7 = sub_1B1C2CB58();
  return InlineStreamingSignal.init(text:identifier:)(v4, v6, v7, v8);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BEB21C(v4);
}

@end