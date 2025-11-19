@interface SBSystemAction
+ (UIFont)defaultSymbolFont;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBSystemAction)initWithConfiguredAction:(id)a3 instanceIdentity:(id)a4;
- (SBSystemActionAnalyticsData)analyticsData;
- (id)newExecutor;
- (id)newSimplePreviewElement;
- (void)_configureWithConfiguredAction;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBSystemAction

+ (UIFont)defaultSymbolFont
{
  v4 = [MEMORY[0x277D7D738] defaultSymbolConfiguration];
  v5 = [v4 weight];
  if (v5 > 4)
  {
    if (v5 <= 9)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"SBSystemAction+SimplePreview.m" lineNumber:55 description:{@"Unhandled symbol weight: %ld", objc_msgSend(v4, "weight")}];

    goto LABEL_7;
  }

  if (v5 <= 1 && v5 > 1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v6 = MEMORY[0x277D74300];
  [v4 pointSize];
  v7 = [v6 systemFontOfSize:? weight:?];

  return v7;
}

- (id)newSimplePreviewElement
{
  v3 = [(SBSystemAction *)self configuredAction];
  v4 = [v3 sectionIdentifier];
  v5 = [v4 isEqualToString:@"Accessibility"];

  v6 = off_2783A2360;
  if (!v5)
  {
    v6 = off_2783A2370;
  }

  v7 = [objc_alloc(*v6) initWithSystemAction:self];

  return v7;
}

- (SBSystemAction)initWithConfiguredAction:(id)a3 instanceIdentity:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [SBSystemAction initWithConfiguredAction:a2 instanceIdentity:?];
  }

  v10 = v9;
  v16.receiver = self;
  v16.super_class = SBSystemAction;
  v11 = [(SBSystemAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuredAction, a3);
    v13 = [v10 copyWithZone:0];
    instanceIdentity = v12->_instanceIdentity;
    v12->_instanceIdentity = v13;

    [(SBSystemAction *)v12 _configureWithConfiguredAction];
  }

  return v12;
}

- (void)_configureWithConfiguredAction
{
  v3 = [a1 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D7A578]];
  *(a2 + 9) = v4;
  *(a2 + 10) = v4 ^ 1;
  v5 = [a1 sectionIdentifier];
  v6 = v5;
  if (v4 & 1) != 0 || ([v5 isEqualToString:@"Focus"])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isEqualToString:@"Flashlight"];
  }

  *(a2 + 11) = v7;
  v8 = [v6 isEqualToString:@"Camera"];
  if (v8)
  {
    v9 = @"com.apple.camera";
  }

  else
  {
    v9 = [a1 associatedBundleIdentifier];
  }

  v10 = *(a2 + 32);
  *(a2 + 32) = v9;

  v11 = [a1 identifier];
  v12 = *(a2 + 40);
  *(a2 + 40) = v11;

  v13 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = a1;
    v16 = [v15 intent];
    v17 = [v16 linkAction];
    [v17 systemProtocols];
    v18 = v27 = v3;

    v19 = [MEMORY[0x277D23938] cameraCaptureProtocol];
    v20 = [v18 containsObject:v19];
    v21 = [v15 templateParameterValues];

    v22 = [v21 allValues];
    v23 = [v22 firstObject];
    v24 = [v23 identifier];
    v25 = *(a2 + 48);
    *(a2 + 48) = v24;

    v3 = v27;
  }

  else
  {
    v20 = 0;
  }

  *(a2 + 8) = v20;
  if ([a1 isSystemStaccatoAction])
  {
    v26 = (v8 | [*(a2 + 32) isEqualToString:@"com.apple.springboard"]) ^ 1;
  }

  else
  {
    v26 = 0;
  }

  *(a2 + 12) = v26;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  [v6 appendString:self->_hostBundleIdentifier withName:@"hostBundleIdentifier"];
  v4 = [v6 appendBool:self->_cameraCaptureAction withName:@"isCameraCaptureAction" ifEqualTo:1];
  if (os_variant_has_internal_content())
  {
    v5 = [v6 appendObject:self->_configuredAction withName:@"configuredAction"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (BSEqualObjects())
      {
        v6 = SBSystemActionInstanceIdentityEqualToIdentity(self->_instanceIdentity, v5[3]);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __29__SBSystemAction_description__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (SBSystemActionAnalyticsData)analyticsData
{
  v3 = self->_analyticsData.actionIdentifier;
  v4 = self->_analyticsData.parameterValueIdentifier;
  v5 = v3;
  result.parameterValueIdentifier = v4;
  result.actionIdentifier = v5;
  return result;
}

- (id)newExecutor
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithConfiguredAction:(const char *)a1 instanceIdentity:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"action != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBSystemAction.m";
    v9 = 1024;
    v10 = 27;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end