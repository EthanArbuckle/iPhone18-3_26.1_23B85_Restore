@interface SBEmitSBEventSwitcherEventResponse
- (SBEmitSBEventSwitcherEventResponse)initWithSBEventWithEventType:(unint64_t)type payload:(id)payload;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)succinctDescriptionBuilder;
@end

@implementation SBEmitSBEventSwitcherEventResponse

- (SBEmitSBEventSwitcherEventResponse)initWithSBEventWithEventType:(unint64_t)type payload:(id)payload
{
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = SBEmitSBEventSwitcherEventResponse;
  v7 = [(SBChainableModifierEventResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_eventType = type;
    v9 = [payloadCopy copy];
    payload = v8->_payload;
    v8->_payload = v9;
  }

  return v8;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBEmitSBEventSwitcherEventResponse;
  succinctDescriptionBuilder = [(SBChainableModifierEventResponse *)&v7 succinctDescriptionBuilder];
  v4 = NSStringFromAnalyticsEventType();
  [succinctDescriptionBuilder appendString:v4 withName:@"eventType"];

  v5 = [succinctDescriptionBuilder appendUnsignedInteger:-[NSDictionary count](self->_payload withName:{"count"), @"payloadCount"}];

  return succinctDescriptionBuilder;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBEmitSBEventSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = NSStringFromAnalyticsEventType();
  [v4 appendString:v5 withName:@"eventType"];

  [v4 appendDictionarySection:self->_payload withName:@"payload" skipIfEmpty:1];

  return v4;
}

@end