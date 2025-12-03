@interface SBSExternalDisplayLayoutElement
+ (id)elementWithIdentifier:(id)identifier presenting:(BOOL)presenting;
- (BOOL)sb_isExternalDisplayElement;
- (BOOL)sb_isPresenting;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSExternalDisplayLayoutElement

+ (id)elementWithIdentifier:(id)identifier presenting:(BOOL)presenting
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [SBSExternalDisplayLayoutElement elementWithIdentifier:a2 presenting:self];
  }

  v7 = [[SBSExternalDisplayLayoutElement alloc] initWithIdentifier:identifierCopy];
  otherSettings = [(SBSExternalDisplayLayoutElement *)v7 otherSettings];
  [otherSettings setObject:@"SBExternal" forSetting:0];

  otherSettings2 = [(SBSExternalDisplayLayoutElement *)v7 otherSettings];
  [otherSettings2 setFlag:BSSettingFlagForBool() forSetting:1];

  return v7;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = SBSExternalDisplayLayoutElement;
  succinctDescriptionBuilder = [(SBSExternalDisplayLayoutElement *)&v6 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendBool:-[SBSExternalDisplayLayoutElement sb_isPresenting](self withName:{"sb_isPresenting"), @"presenting"}];

  return succinctDescriptionBuilder;
}

- (BOOL)sb_isExternalDisplayElement
{
  otherSettings = [(SBSExternalDisplayLayoutElement *)self otherSettings];
  v3 = [otherSettings objectForSetting:0];
  v4 = [v3 isEqual:@"SBExternal"];

  return v4;
}

- (BOOL)sb_isPresenting
{
  sb_isExternalDisplayElement = [(SBSExternalDisplayLayoutElement *)self sb_isExternalDisplayElement];
  if (sb_isExternalDisplayElement)
  {
    otherSettings = [(SBSExternalDisplayLayoutElement *)self otherSettings];
    v5 = [otherSettings BOOLForSetting:1];

    LOBYTE(sb_isExternalDisplayElement) = v5;
  }

  return sb_isExternalDisplayElement;
}

+ (void)elementWithIdentifier:(uint64_t)a1 presenting:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSExternalDisplayLayout.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end