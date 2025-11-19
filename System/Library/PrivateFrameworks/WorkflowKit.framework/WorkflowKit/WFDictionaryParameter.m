@interface WFDictionaryParameter
- (WFDictionaryParameter)initWithDefinition:(id)a3;
- (id)defaultSupportedVariableTypes;
- (id)rewriteParameterState:(id)a3 withStrings:(id)a4;
- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4;
@end

@implementation WFDictionaryParameter

- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  WFDictionaryParameter.userVisibleStrings(in:for:)(a3, a4);
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C8E8();

  return v8;
}

- (id)rewriteParameterState:(id)a3 withStrings:(id)a4
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  swift_unknownObjectRetain();
  v5 = self;
  v6 = WFDictionaryParameter.rewrite(_:withStrings:)();
  swift_unknownObjectRelease();

  return v6;
}

- (id)defaultSupportedVariableTypes
{
  v2 = objc_opt_class();

  return [v2 allInsertableVariableTypes];
}

- (WFDictionaryParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WFDictionaryParameter;
  v5 = [(WFParameter *)&v24 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"ItemTypeName"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    v9 = [v8 localize];
    localizedItemTypeName = v5->_localizedItemTypeName;
    v5->_localizedItemTypeName = v9;

    v11 = [v4 objectForKey:@"NewItemTypeName"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass_1501(v11, v12);

    v14 = [v13 localize];
    localizedNewItemTypeName = v5->_localizedNewItemTypeName;
    v5->_localizedNewItemTypeName = v14;

    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = [v4 objectForKey:@"AllowedValueTypes"];
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(v17, v18);
    v20 = [v16 initWithArray:v19];
    allowedValueTypes = v5->_allowedValueTypes;
    v5->_allowedValueTypes = v20;

    v22 = v5;
  }

  return v5;
}

@end