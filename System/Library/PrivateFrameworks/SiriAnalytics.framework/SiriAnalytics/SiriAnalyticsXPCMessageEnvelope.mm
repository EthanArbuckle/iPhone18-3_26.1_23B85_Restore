@interface SiriAnalyticsXPCMessageEnvelope
- (NSData)payload;
- (SiriAnalyticsXPCMessageEnvelope)initWithEventTypeId:(int64_t)id payload:(id)payload;
- (void)encodeWithCoder:(id)coder;
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

- (SiriAnalyticsXPCMessageEnvelope)initWithEventTypeId:(int64_t)id payload:(id)payload
{
  payloadCopy = payload;
  v6 = sub_1D992AD84();
  v8 = v7;

  return XPCMessageEnvelope.init(eventTypeId:payload:)(id, v6, v8);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D98CD1A8(coderCopy);
}

@end