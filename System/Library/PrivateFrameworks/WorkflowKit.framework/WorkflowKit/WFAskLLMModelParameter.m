@interface WFAskLLMModelParameter
- (id)defaultSerializedRepresentationForEnumeration:(id)a3;
- (id)enumeration:(id)a3 accessoryIconForPossibleState:(id)a4;
- (id)loadPossibleStatesForEnumeration:(id)a3;
- (id)localizedTitleForButtonWithState:(id)a3;
@end

@implementation WFAskLLMModelParameter

- (id)enumeration:(id)a3 accessoryIconForPossibleState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = WFAskLLMModelParameter.enumeration(_:accessoryIconForPossibleState:)(v8, v7);

  return v9;
}

- (id)localizedTitleForButtonWithState:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (id)loadPossibleStatesForEnumeration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = WFAskLLMModelParameter.loadPossibleStates(forEnumeration:)();

  return v6;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)a3
{
  v4 = a3;
  v5 = self;
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