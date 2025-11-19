@interface UIMainMenuSystemConfiguration
+ (UIMainMenuSystemConfiguration)_compatibilityConfiguration;
- (BOOL)isEqual:(id)a3;
- (UIMainMenuSystemConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation UIMainMenuSystemConfiguration

- (UIMainMenuSystemConfiguration)init
{
  v6.receiver = self;
  v6.super_class = UIMainMenuSystemConfiguration;
  v2 = [(UIMainMenuSystemConfiguration *)&v6 init];
  if (v2)
  {
    v3 = [[UIMenuSystemFindElementGroupConfiguration alloc] _init];
    findingConfiguration = v2->_findingConfiguration;
    v2->_findingConfiguration = v3;
  }

  return v2;
}

+ (UIMainMenuSystemConfiguration)_compatibilityConfiguration
{
  v2 = objc_opt_new();
  if ([UIApp _supportsPrintCommand])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setPrintingPreference:v3];
  if (dyld_program_sdk_at_least())
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v2 setFindingPreference:v4];
  v5 = [v2 findingConfiguration];
  [v5 setStyle:3];

  [v2 setTextFormattingPreference:2];
  [v2 setInspectorPreference:1];
  [v2 setNewScenePreference:1];
  [v2 setDocumentPreference:1];
  if (_UISolariumEnabled())
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v2 setToolbarPreference:v6];
  [v2 setSidebarPreference:2];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = v7;
      v9 = self->_newScenePreference == v7->_newScenePreference && self->_documentPreference == v7->_documentPreference && self->_printingPreference == v7->_printingPreference && self->_findingPreference == v7->_findingPreference && _deferringTokenEqualToToken(self->_findingConfiguration, v7->_findingConfiguration) && self->_toolbarPreference == v8->_toolbarPreference && self->_sidebarPreference == v8->_sidebarPreference && self->_inspectorPreference == v8->_inspectorPreference && self->_textFormattingPreference == v8->_textFormattingPreference;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v6 = *&self->_newScenePreference;
  v7 = *&self->_printingPreference;
  v3 = [(UIMenuSystemFindElementGroupConfiguration *)self->_findingConfiguration hash];
  v4 = veorq_s8(veorq_s8(v6, v7), veorq_s8(*&self->_toolbarPreference, *&self->_inspectorPreference));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v4[1] = self->_newScenePreference;
  v4[2] = self->_documentPreference;
  v4[3] = self->_printingPreference;
  v4[4] = self->_findingPreference;
  v5 = [(UIMenuSystemFindElementGroupConfiguration *)self->_findingConfiguration copy];
  v6 = v4[5];
  v4[5] = v5;

  v4[6] = self->_toolbarPreference;
  v4[7] = self->_sidebarPreference;
  v4[8] = self->_inspectorPreference;
  v4[9] = self->_textFormattingPreference;
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIMenuSystemElementGroupPreferenceDescription(self->_newScenePreference);
  [v3 appendString:v4 withName:@"_newScenePreference"];

  v5 = _UIMenuSystemElementGroupPreferenceDescription(self->_documentPreference);
  [v3 appendString:v5 withName:@"_documentPreference"];

  v6 = _UIMenuSystemElementGroupPreferenceDescription(self->_printingPreference);
  [v3 appendString:v6 withName:@"_printingPreference"];

  v7 = _UIMenuSystemElementGroupPreferenceDescription(self->_findingPreference);
  [v3 appendString:v7 withName:@"_findingPreference"];

  v8 = [v3 appendObject:self->_findingConfiguration withName:@"findingConfiguration"];
  v9 = _UIMenuSystemElementGroupPreferenceDescription(self->_toolbarPreference);
  [v3 appendString:v9 withName:@"_toolbarPreference"];

  v10 = _UIMenuSystemElementGroupPreferenceDescription(self->_sidebarPreference);
  [v3 appendString:v10 withName:@"_sidebarPreference"];

  v11 = _UIMenuSystemElementGroupPreferenceDescription(self->_inspectorPreference);
  [v3 appendString:v11 withName:@"_inspectorPreference"];

  v12 = _UIMenuSystemElementGroupPreferenceDescription(self->_textFormattingPreference);
  [v3 appendString:v12 withName:@"_textFormattingPreference"];

  v13 = [v3 build];

  return v13;
}

@end