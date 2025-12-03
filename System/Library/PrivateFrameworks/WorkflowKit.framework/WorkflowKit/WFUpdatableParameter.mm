@interface WFUpdatableParameter
- (Class)singleStateClass;
- (Class)toolkitStateClass;
- (WFParameter)underlyingParameter;
- (id)localizedLabelWithContext:(id)context;
- (id)parameterStateFromDialogResponse:(id)response;
- (void)createDialogRequestWithAttribution:(WFDialogAttribution *)attribution defaultState:(WFParameterState *)state prompt:(NSString *)prompt completionHandler:(id)handler;
@end

@implementation WFUpdatableParameter

- (WFParameter)underlyingParameter
{
  v2 = WFUpdatableParameter.underlyingParameter.getter();

  return v2;
}

- (id)localizedLabelWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA2DA320(contextCopy);

  v6 = sub_1CA94C368();

  return v6;
}

- (Class)singleStateClass
{
  sub_1CA2DA838();

  return swift_getObjCClassFromMetadata();
}

- (void)createDialogRequestWithAttribution:(WFDialogAttribution *)attribution defaultState:(WFParameterState *)state prompt:(NSString *)prompt completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = attribution;
  v11[3] = state;
  v11[4] = prompt;
  v11[5] = v10;
  v11[6] = self;
  attributionCopy = attribution;
  swift_unknownObjectRetain();
  promptCopy = prompt;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA9821C0, v11);
}

- (id)parameterStateFromDialogResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  v6 = sub_1CA2DB118(responseCopy);

  return v6;
}

- (Class)toolkitStateClass
{
  selfCopy = self;
  sub_1CA2DB644();

  return swift_getObjCClassFromMetadata();
}

@end