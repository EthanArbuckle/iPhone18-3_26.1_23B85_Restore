@interface SiriTTSInlineStreamingSignal
- (SiriTTSInlineStreamingSignal)initWithText:(id)text identifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTTSInlineStreamingSignal

- (SiriTTSInlineStreamingSignal)initWithText:(id)text identifier:(id)identifier
{
  v4 = sub_1B1C2CB58();
  v6 = v5;
  v7 = sub_1B1C2CB58();
  return InlineStreamingSignal.init(text:identifier:)(v4, v6, v7, v8);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1BEB21C(coderCopy);
}

@end