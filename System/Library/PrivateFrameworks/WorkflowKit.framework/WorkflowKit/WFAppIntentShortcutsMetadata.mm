@interface WFAppIntentShortcutsMetadata
- (id)attributionBundleIdentifierWithDefaultValue:(id)value;
- (id)dictionaryRepresentation;
@end

@implementation WFAppIntentShortcutsMetadata

- (id)attributionBundleIdentifierWithDefaultValue:(id)value
{
  if (value)
  {
    v3 = sub_1CA94C3A8();
  }

  else
  {
    v3 = 0;
  }

  sub_1CA3438C8(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_1CA94C368();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  AppIntentShortcutsMetadata.dictionaryRepresentation()();

  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  v3 = sub_1CA94C1A8();

  return v3;
}

@end