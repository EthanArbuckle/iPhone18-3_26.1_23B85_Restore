@interface BSMutableSettings(SBUISystemAperture)
- (void)SBUISA_setCGRect:()SBUISystemAperture forSetting:;
- (void)SBUISA_setCGSize:()SBUISystemAperture forSetting:;
- (void)SBUISA_setComponentStates:()SBUISystemAperture forSetting:;
- (void)SBUISA_setContentRole:()SBUISystemAperture forSetting:;
- (void)SBUISA_setContextId:()SBUISystemAperture forSetting:;
- (void)SBUISA_setCustomLayout:()SBUISystemAperture forSetting:;
- (void)SBUISA_setDirectionalEdgeInsets:()SBUISystemAperture forSetting:;
- (void)SBUISA_setLayoutMode:()SBUISystemAperture forSetting:;
- (void)SBUISA_setNullableObject:()SBUISystemAperture forSetting:;
- (void)SBUISA_setPresentationBehaviors:()SBUISystemAperture forSetting:;
- (void)SBUISA_setRenderingid:()SBUISystemAperture forSetting:;
- (void)SBUISA_setSecureFlipBookElementConfigurations:()SBUISystemAperture forSetting:;
- (void)SBUISA_setUIColor:()SBUISystemAperture forSetting:;
@end

@implementation BSMutableSettings(SBUISystemAperture)

- (void)SBUISA_setCGRect:()SBUISystemAperture forSetting:
{
  v5 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [a1 setObject:v5 forSetting:a3];
}

- (void)SBUISA_setCGSize:()SBUISystemAperture forSetting:
{
  v5 = [MEMORY[0x1E696B098] valueWithCGSize:?];
  [a1 setObject:v5 forSetting:a3];
}

- (void)SBUISA_setDirectionalEdgeInsets:()SBUISystemAperture forSetting:
{
  v5 = [MEMORY[0x1E696B098] valueWithDirectionalEdgeInsets:?];
  [a1 setObject:v5 forSetting:a3];
}

- (void)SBUISA_setContextId:()SBUISystemAperture forSetting:
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [a1 setObject:v6 forSetting:a4];
}

- (void)SBUISA_setRenderingid:()SBUISystemAperture forSetting:
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [a1 setObject:v6 forSetting:a4];
}

- (void)SBUISA_setLayoutMode:()SBUISystemAperture forSetting:
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 setObject:v6 forSetting:a4];
}

- (void)SBUISA_setContentRole:()SBUISystemAperture forSetting:
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 setObject:v6 forSetting:a4];
}

- (void)SBUISA_setPresentationBehaviors:()SBUISystemAperture forSetting:
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [a1 setObject:v6 forSetting:a4];
}

- (void)SBUISA_setUIColor:()SBUISystemAperture forSetting:
{
  if (a3)
  {
    v13 = 0.0;
    v14 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v6 = MEMORY[0x1E69DD1B8];
    v7 = a3;
    v8 = [v6 traitCollectionWithUserInterfaceStyle:2];
    v9 = [v7 resolvedColorWithTraitCollection:v8];

    [v9 getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
    v10 = [MEMORY[0x1E698E650] colorWithRed:v14 green:v13 blue:v12 alpha:v11];
  }

  else
  {
    v10 = 0;
  }

  [a1 SBUISA_setNullableObject:v10 forSetting:{a4, *&v11, *&v12, *&v13, *&v14}];
}

- (void)SBUISA_setCustomLayout:()SBUISystemAperture forSetting:
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 setObject:v6 forSetting:a4];
}

- (void)SBUISA_setNullableObject:()SBUISystemAperture forSetting:
{
  if (a3)
  {

    [a1 setObject:? forSetting:?];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    [a1 setObject:v6 forSetting:a4];
  }
}

- (void)SBUISA_setSecureFlipBookElementConfigurations:()SBUISystemAperture forSetting:
{
  v6 = MEMORY[0x1E698E7B0];
  v7 = a3;
  v8 = [[v6 alloc] initWithArray:v7];

  [a1 setObject:v8 forSetting:a4];
}

- (void)SBUISA_setComponentStates:()SBUISystemAperture forSetting:
{
  v7 = a3;
  if (SBUISystemApertureSettingValidateComponentStates(v7))
  {
    v6 = v7;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  [a1 setObject:v6 forSetting:a4];
}

@end