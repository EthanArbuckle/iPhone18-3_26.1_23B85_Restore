@interface SiriAnalyticsXPCMessageEnvelope
- (NSData)payload;
- (SiriAnalyticsXPCMessageEnvelope)initWithEventTypeId:(int64_t)a3 payload:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriAnalyticsXPCMessageEnvelope

- (NSData)payload
{
  v2 = XPCMessageEnvelope.payload.getter();
  v4 = v3;
  v5 = sub_1D992AD74();
  sub_1D987106C(v2, v4);

  return v5;
}

- (SiriAnalyticsXPCMessageEnvelope)initWithEventTypeId:(int64_t)a3 payload:(id)a4
{
  v5 = a4;
  v6 = sub_1D992AD84();
  v8 = v7;

  return XPCMessageEnvelope.init(eventTypeId:payload:)(a3, v6, v8);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D98CD1A8(v4);
}

@end