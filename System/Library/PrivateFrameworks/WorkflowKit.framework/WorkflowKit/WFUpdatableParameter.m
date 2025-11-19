@interface WFUpdatableParameter
- (Class)singleStateClass;
- (Class)toolkitStateClass;
- (WFParameter)underlyingParameter;
- (id)localizedLabelWithContext:(id)a3;
- (id)parameterStateFromDialogResponse:(id)a3;
- (void)createDialogRequestWithAttribution:(WFDialogAttribution *)a3 defaultState:(WFParameterState *)a4 prompt:(NSString *)a5 completionHandler:(id)a6;
@end

@implementation WFUpdatableParameter

- (WFParameter)underlyingParameter
{
  v2 = WFUpdatableParameter.underlyingParameter.getter();

  return v2;
}

- (id)localizedLabelWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA2DA320(v4);

  v6 = sub_1CA94C368();

  return v6;
}

- (Class)singleStateClass
{
  sub_1CA2DA838();

  return swift_getObjCClassFromMetadata();
}

- (void)createDialogRequestWithAttribution:(WFDialogAttribution *)a3 defaultState:(WFParameterState *)a4 prompt:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;

  sub_1CA67052C(&unk_1CA9821C0, v11);
}

- (id)parameterStateFromDialogResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1CA2DB118(v4);

  return v6;
}

- (Class)toolkitStateClass
{
  v2 = self;
  sub_1CA2DB644();

  return swift_getObjCClassFromMetadata();
}

@end