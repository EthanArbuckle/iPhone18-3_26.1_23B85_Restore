@interface WFGetAppSettingAction
- (BOOL)isApprovedForPublicShortcutsDrawer;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)visibleForUse:(int64_t)a3;
- (INAppDescriptor)displayableAppDescriptor;
- (NSArray)outputContentClasses;
- (NSArray)parameterDefinitions;
- (WFActionParameterSummary)parameterSummary;
- (_TtC11WorkflowKit21WFGetAppSettingAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)backingActionIdentifiers;
- (id)entityMetadataForIdentifier:(id)a3;
- (id)localizedKeywordsWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4;
@end

@implementation WFGetAppSettingAction

- (INAppDescriptor)displayableAppDescriptor
{
  v2 = self;
  v3 = sub_1CA5F0CE0();

  return v3;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  sub_1CA94C3A8();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1CA5F0EA4(a3);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1CA67052C(&unk_1CA98E790, v7);
}

- (NSArray)parameterDefinitions
{
  v2 = self;
  sub_1CA5F30EC();

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v3 = sub_1CA94C648();

  return v3;
}

- (NSArray)outputContentClasses
{
  v2 = self;
  sub_1CA5F3534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v3 = sub_1CA94C648();

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA5F3990();

  v6 = sub_1CA94C368();

  return v6;
}

- (id)localizedKeywordsWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA5F41D0();

  v6 = sub_1CA94C648();

  return v6;
}

- (WFActionParameterSummary)parameterSummary
{
  v2 = self;
  v3 = sub_1CA5F4570();

  return v3;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1CA5F4684(a3);

  return a3 & 1;
}

- (BOOL)isApprovedForPublicShortcutsDrawer
{
  v2 = self;
  sub_1CA5F4844();
  v4 = v3;

  return v4 & 1;
}

- (id)backingActionIdentifiers
{
  v2 = self;
  sub_1CA5F49F0();

  v3 = sub_1CA94C648();

  return v3;
}

- (id)entityMetadataForIdentifier:(id)a3
{
  sub_1CA94C3A8();
  v4 = self;
  v5 = sub_1CA5F4AE0();

  return v5;
}

- (_TtC11WorkflowKit21WFGetAppSettingAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  sub_1CA94C3A8();
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v7 = a4;
  WFGetAppSettingAction.init(identifier:definition:serializedParameters:)();
}

@end