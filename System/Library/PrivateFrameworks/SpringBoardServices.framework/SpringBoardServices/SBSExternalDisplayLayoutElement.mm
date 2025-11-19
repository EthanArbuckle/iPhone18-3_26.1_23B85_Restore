@interface SBSExternalDisplayLayoutElement
+ (id)elementWithIdentifier:(id)a3 presenting:(BOOL)a4;
- (BOOL)sb_isExternalDisplayElement;
- (BOOL)sb_isPresenting;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSExternalDisplayLayoutElement

+ (id)elementWithIdentifier:(id)a3 presenting:(BOOL)a4
{
  v6 = a3;
  if (!v6)
  {
    [SBSExternalDisplayLayoutElement elementWithIdentifier:a2 presenting:a1];
  }

  v7 = [[SBSExternalDisplayLayoutElement alloc] initWithIdentifier:v6];
  v8 = [(SBSExternalDisplayLayoutElement *)v7 otherSettings];
  [v8 setObject:@"SBExternal" forSetting:0];

  v9 = [(SBSExternalDisplayLayoutElement *)v7 otherSettings];
  [v9 setFlag:BSSettingFlagForBool() forSetting:1];

  return v7;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = SBSExternalDisplayLayoutElement;
  v3 = [(SBSExternalDisplayLayoutElement *)&v6 succinctDescriptionBuilder];
  v4 = [v3 appendBool:-[SBSExternalDisplayLayoutElement sb_isPresenting](self withName:{"sb_isPresenting"), @"presenting"}];

  return v3;
}

- (BOOL)sb_isExternalDisplayElement
{
  v2 = [(SBSExternalDisplayLayoutElement *)self otherSettings];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 isEqual:@"SBExternal"];

  return v4;
}

- (BOOL)sb_isPresenting
{
  v3 = [(SBSExternalDisplayLayoutElement *)self sb_isExternalDisplayElement];
  if (v3)
  {
    v4 = [(SBSExternalDisplayLayoutElement *)self otherSettings];
    v5 = [v4 BOOLForSetting:1];

    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (void)elementWithIdentifier:(uint64_t)a1 presenting:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSExternalDisplayLayout.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end