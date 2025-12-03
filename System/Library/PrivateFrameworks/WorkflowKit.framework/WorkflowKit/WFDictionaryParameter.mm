@interface WFDictionaryParameter
- (WFDictionaryParameter)initWithDefinition:(id)definition;
- (id)defaultSupportedVariableTypes;
- (id)rewriteParameterState:(id)state withStrings:(id)strings;
- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case;
@end

@implementation WFDictionaryParameter

- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case
{
  swift_unknownObjectRetain();
  selfCopy = self;
  WFDictionaryParameter.userVisibleStrings(in:for:)(state, case);
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C8E8();

  return v8;
}

- (id)rewriteParameterState:(id)state withStrings:(id)strings
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = WFDictionaryParameter.rewrite(_:withStrings:)();
  swift_unknownObjectRelease();

  return v6;
}

- (id)defaultSupportedVariableTypes
{
  v2 = objc_opt_class();

  return [v2 allInsertableVariableTypes];
}

- (WFDictionaryParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v24.receiver = self;
  v24.super_class = WFDictionaryParameter;
  v5 = [(WFParameter *)&v24 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"ItemTypeName"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    localize = [v8 localize];
    localizedItemTypeName = v5->_localizedItemTypeName;
    v5->_localizedItemTypeName = localize;

    v11 = [definitionCopy objectForKey:@"NewItemTypeName"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass_1501(v11, v12);

    localize2 = [v13 localize];
    localizedNewItemTypeName = v5->_localizedNewItemTypeName;
    v5->_localizedNewItemTypeName = localize2;

    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = [definitionCopy objectForKey:@"AllowedValueTypes"];
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