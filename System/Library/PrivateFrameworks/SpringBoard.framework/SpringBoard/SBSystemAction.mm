@interface SBSystemAction
+ (UIFont)defaultSymbolFont;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSystemAction)initWithConfiguredAction:(id)action instanceIdentity:(id)identity;
- (SBSystemActionAnalyticsData)analyticsData;
- (id)newExecutor;
- (id)newSimplePreviewElement;
- (void)_configureWithConfiguredAction;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBSystemAction

+ (UIFont)defaultSymbolFont
{
  defaultSymbolConfiguration = [MEMORY[0x277D7D738] defaultSymbolConfiguration];
  weight = [defaultSymbolConfiguration weight];
  if (weight > 4)
  {
    if (weight <= 9)
    {
      goto LABEL_7;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemAction+SimplePreview.m" lineNumber:55 description:{@"Unhandled symbol weight: %ld", objc_msgSend(defaultSymbolConfiguration, "weight")}];

    goto LABEL_7;
  }

  if (weight <= 1 && weight > 1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v6 = MEMORY[0x277D74300];
  [defaultSymbolConfiguration pointSize];
  v7 = [v6 systemFontOfSize:? weight:?];

  return v7;
}

- (id)newSimplePreviewElement
{
  configuredAction = [(SBSystemAction *)self configuredAction];
  sectionIdentifier = [configuredAction sectionIdentifier];
  v5 = [sectionIdentifier isEqualToString:@"Accessibility"];

  v6 = off_2783A2360;
  if (!v5)
  {
    v6 = off_2783A2370;
  }

  v7 = [objc_alloc(*v6) initWithSystemAction:self];

  return v7;
}

- (SBSystemAction)initWithConfiguredAction:(id)action instanceIdentity:(id)identity
{
  actionCopy = action;
  identityCopy = identity;
  if (!actionCopy)
  {
    [SBSystemAction initWithConfiguredAction:a2 instanceIdentity:?];
  }

  v10 = identityCopy;
  v16.receiver = self;
  v16.super_class = SBSystemAction;
  v11 = [(SBSystemAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuredAction, action);
    v13 = [v10 copyWithZone:0];
    instanceIdentity = v12->_instanceIdentity;
    v12->_instanceIdentity = v13;

    [(SBSystemAction *)v12 _configureWithConfiguredAction];
  }

  return v12;
}

- (void)_configureWithConfiguredAction
{
  identifier = [self identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x277D7A578]];
  *(a2 + 9) = v4;
  *(a2 + 10) = v4 ^ 1;
  sectionIdentifier = [self sectionIdentifier];
  v6 = sectionIdentifier;
  if (v4 & 1) != 0 || ([sectionIdentifier isEqualToString:@"Focus"])
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
    associatedBundleIdentifier = @"com.apple.camera";
  }

  else
  {
    associatedBundleIdentifier = [self associatedBundleIdentifier];
  }

  v10 = *(a2 + 32);
  *(a2 + 32) = associatedBundleIdentifier;

  identifier2 = [self identifier];
  v12 = *(a2 + 40);
  *(a2 + 40) = identifier2;

  v13 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selfCopy = self;
    intent = [selfCopy intent];
    linkAction = [intent linkAction];
    [linkAction systemProtocols];
    v18 = v27 = identifier;

    cameraCaptureProtocol = [MEMORY[0x277D23938] cameraCaptureProtocol];
    v20 = [v18 containsObject:cameraCaptureProtocol];
    templateParameterValues = [selfCopy templateParameterValues];

    allValues = [templateParameterValues allValues];
    firstObject = [allValues firstObject];
    identifier3 = [firstObject identifier];
    v25 = *(a2 + 48);
    *(a2 + 48) = identifier3;

    identifier = v27;
  }

  else
  {
    v20 = 0;
  }

  *(a2 + 8) = v20;
  if ([self isSystemStaccatoAction])
  {
    v26 = (v8 | [*(a2 + 32) isEqualToString:@"com.apple.springboard"]) ^ 1;
  }

  else
  {
    v26 = 0;
  }

  *(a2 + 12) = v26;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [formatterCopy appendString:self->_hostBundleIdentifier withName:@"hostBundleIdentifier"];
  v4 = [formatterCopy appendBool:self->_cameraCaptureAction withName:@"isCameraCaptureAction" ifEqualTo:1];
  if (os_variant_has_internal_content())
  {
    v5 = [formatterCopy appendObject:self->_configuredAction withName:@"configuredAction"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  selfCopy = self;
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