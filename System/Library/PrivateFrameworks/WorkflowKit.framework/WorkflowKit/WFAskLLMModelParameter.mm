@interface WFAskLLMModelParameter
- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration;
- (id)enumeration:(id)enumeration accessoryIconForPossibleState:(id)state;
- (id)loadPossibleStatesForEnumeration:(id)enumeration;
- (id)localizedTitleForButtonWithState:(id)state;
@end

@implementation WFAskLLMModelParameter

- (id)enumeration:(id)enumeration accessoryIconForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  selfCopy = self;
  v9 = WFAskLLMModelParameter.enumeration(_:accessoryIconForPossibleState:)(selfCopy, stateCopy);

  return v9;
}

- (id)localizedTitleForButtonWithState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  WFAskLLMModelParameter.localizedTitleForButton(with:)();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)loadPossibleStatesForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  v6 = WFAskLLMModelParameter.loadPossibleStates(forEnumeration:)();

  return v6;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  WFAskLLMModelParameter.defaultSerializedRepresentation(forEnumeration:)(v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1CA94D7D8();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end