@interface SBEmitSBEventSwitcherEventResponse
- (SBEmitSBEventSwitcherEventResponse)initWithSBEventWithEventType:(unint64_t)a3 payload:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)succinctDescriptionBuilder;
@end

@implementation SBEmitSBEventSwitcherEventResponse

- (SBEmitSBEventSwitcherEventResponse)initWithSBEventWithEventType:(unint64_t)a3 payload:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBEmitSBEventSwitcherEventResponse;
  v7 = [(SBChainableModifierEventResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_eventType = a3;
    v9 = [v6 copy];
    payload = v8->_payload;
    v8->_payload = v9;
  }

  return v8;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBEmitSBEventSwitcherEventResponse;
  v3 = [(SBChainableModifierEventResponse *)&v7 succinctDescriptionBuilder];
  v4 = NSStringFromAnalyticsEventType();
  [v3 appendString:v4 withName:@"eventType"];

  v5 = [v3 appendUnsignedInteger:-[NSDictionary count](self->_payload withName:{"count"), @"payloadCount"}];

  return v3;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBEmitSBEventSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = NSStringFromAnalyticsEventType();
  [v4 appendString:v5 withName:@"eventType"];

  [v4 appendDictionarySection:self->_payload withName:@"payload" skipIfEmpty:1];

  return v4;
}

@end