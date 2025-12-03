@interface SBSystemApertureStatusBarPillElement
- (BOOL)_isAssociatedWithApplicationWithBundleIdentifier:(id)identifier;
- (BOOL)acceptsFullScreenTransitionFromSceneWithIdentifier:(id)identifier ofBundleId:(id)id;
- (BOOL)handleElementViewEvent:(int64_t)event;
- (BOOL)shouldIgnoreSystemChromeSuppression;
- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)id;
- (BOOL)shouldSuppressElementWhileProximityReaderPresent;
- (CGSize)_sizeForPillWithImageName;
- (NSString)activeSymbolName;
- (SAUILayoutHosting)layoutHost;
- (SBSystemApertureStatusBarPillElement)initWithBackgroundActivityIdentifier:(id)identifier;
- (UIColor)activeTintColor;
- (UIView)leadingView;
- (id)_accessibilityLabel;
- (id)_imageName;
- (id)_packageName;
- (id)_representedVisualDescriptor;
- (id)_textLabel;
- (id)_viewWithImageName:(id)name systemApertureSize:(CGSize)size tintColor:(id)color;
- (id)_viewWithPackageName:(id)name;
- (id)_viewWithSymbolName:(id)name tintColor:(id)color;
- (id)_viewWithTextLabel:(id)label tintColor:(id)color;
- (unint64_t)_representedStatusBarStyleOverrides;
- (void)setAssociatedApplications:(id)applications;
@end

@implementation SBSystemApertureStatusBarPillElement

- (SBSystemApertureStatusBarPillElement)initWithBackgroundActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = SBSystemApertureStatusBarPillElement;
  v5 = [(SBSystemApertureStatusBarPillElement *)&v21 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    representedBackgroundActivityIdentifier = v5->_representedBackgroundActivityIdentifier;
    v5->_representedBackgroundActivityIdentifier = v6;

    v8 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D6BC10], *MEMORY[0x277D6BC60], *MEMORY[0x277D6BD08], *MEMORY[0x277D6BC68], *MEMORY[0x277D6BCD8], *MEMORY[0x277D6BCE8], *MEMORY[0x277D6BCE0], @"com.apple.systemstatus.background-activity.CallRecording", 0}];
    v9 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BCF8]];
    if ([v8 containsObject:v5->_representedBackgroundActivityIdentifier])
    {
      v10 = MEMORY[0x277D67FD0];
    }

    else
    {
      if (![v9 containsObject:v5->_representedBackgroundActivityIdentifier])
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = objc_opt_class();
        v12 = NSStringFromClass(v14);
        v15 = STBackgroundActivityIdentifierDescription();
        v16 = [v13 stringWithFormat:@"%@ - %@", v12, v15];
        elementIdentifier = v5->_elementIdentifier;
        v5->_elementIdentifier = v16;

        goto LABEL_8;
      }

      v10 = MEMORY[0x277D67FE8];
    }

    v11 = *v10;
    v12 = v5->_elementIdentifier;
    v5->_elementIdentifier = v11;
LABEL_8:

    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    trailingView = v5->_trailingView;
    v5->_trailingView = v18;
  }

  return v5;
}

- (void)setAssociatedApplications:(id)applications
{
  applicationsCopy = applications;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [applicationsCopy copy];
    associatedApplications = self->_associatedApplications;
    self->_associatedApplications = v4;

    layoutHost = [(SBSystemApertureStatusBarPillElement *)self layoutHost];
    [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
  }
}

- (BOOL)handleElementViewEvent:(int64_t)event
{
  if (event <= 3)
  {
    representedBackgroundActivityIdentifier = self->_representedBackgroundActivityIdentifier;
    leadingView = [(SBSystemApertureStatusBarPillElement *)self leadingView];
    _sbWindowScene = [leadingView _sbWindowScene];
    SBWorkspaceHandleStatusBarReturnActionFromApp(0, 0, representedBackgroundActivityIdentifier, _sbWindowScene);
  }

  return event < 4;
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    _packageName = [(SBSystemApertureStatusBarPillElement *)self _packageName];
    activeSymbolName = [(SBSystemApertureStatusBarPillElement *)self activeSymbolName];
    _imageName = [(SBSystemApertureStatusBarPillElement *)self _imageName];
    _textLabel = [(SBSystemApertureStatusBarPillElement *)self _textLabel];
    v8 = _textLabel;
    if (_packageName)
    {
      v9 = [(SBSystemApertureStatusBarPillElement *)self _viewWithPackageName:_packageName];
      activeSymbolName2 = self->_leadingView;
      self->_leadingView = v9;
    }

    else if (activeSymbolName)
    {
      activeSymbolName2 = [(SBSystemApertureStatusBarPillElement *)self activeSymbolName];
      activeTintColor = [(SBSystemApertureStatusBarPillElement *)self activeTintColor];
      v12 = [(SBSystemApertureStatusBarPillElement *)self _viewWithSymbolName:activeSymbolName2 tintColor:activeTintColor];
      v13 = self->_leadingView;
      self->_leadingView = v12;
    }

    else
    {
      if (_imageName)
      {
        [(SBSystemApertureStatusBarPillElement *)self _sizeForPillWithImageName];
        v15 = v14;
        v17 = v16;
        activeSymbolName2 = [(SBSystemApertureStatusBarPillElement *)self activeTintColor];
        v18 = [(SBSystemApertureStatusBarPillElement *)self _viewWithImageName:_imageName systemApertureSize:activeSymbolName2 tintColor:v15, v17];
      }

      else
      {
        if (!_textLabel)
        {
LABEL_12:
          v20 = self->_leadingView;
          accessibilityLabel = [(SBSystemApertureStatusBarPillElement *)self accessibilityLabel];
          [(UIView *)v20 setAccessibilityLabel:accessibilityLabel];

          leadingView = self->_leadingView;
          goto LABEL_13;
        }

        activeSymbolName2 = [(SBSystemApertureStatusBarPillElement *)self activeTintColor];
        v18 = [(SBSystemApertureStatusBarPillElement *)self _viewWithTextLabel:v8 tintColor:activeSymbolName2];
      }

      v19 = self->_leadingView;
      self->_leadingView = v18;
    }

    goto LABEL_12;
  }

LABEL_13:

  return leadingView;
}

- (BOOL)shouldIgnoreSystemChromeSuppression
{
  backgroundActivityIdentifiersThatIgnoreSystemChromeSuppression = [objc_opt_class() backgroundActivityIdentifiersThatIgnoreSystemChromeSuppression];
  representedBackgroundActivityIdentifiers = [(SBSystemApertureStatusBarPillElement *)self representedBackgroundActivityIdentifiers];
  v5 = [backgroundActivityIdentifiersThatIgnoreSystemChromeSuppression intersectsSet:representedBackgroundActivityIdentifiers];

  return v5;
}

- (BOOL)shouldSuppressElementWhileProximityReaderPresent
{
  elementIdentifier = [(SBSystemApertureStatusBarPillElement *)self elementIdentifier];
  v3 = [elementIdentifier isEqual:*MEMORY[0x277D67FD0]];

  return v3 ^ 1;
}

- (BOOL)acceptsFullScreenTransitionFromSceneWithIdentifier:(id)identifier ofBundleId:(id)id
{
  idCopy = id;
  representedBackgroundActivityIdentifiers = [(SBSystemApertureStatusBarPillElement *)self representedBackgroundActivityIdentifiers];
  v7 = ([representedBackgroundActivityIdentifiers containsObject:*MEMORY[0x277D6BCA8]] & 1) == 0 && -[SBSystemApertureStatusBarPillElement _isAssociatedWithApplicationWithBundleIdentifier:](self, "_isAssociatedWithApplicationWithBundleIdentifier:", idCopy);

  return v7;
}

- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)id
{
  idCopy = id;
  v5 = [(NSSet *)self->_associatedApplications count]<= 1 && [(SBSystemApertureStatusBarPillElement *)self _isAssociatedWithApplicationWithBundleIdentifier:idCopy];

  return v5;
}

- (BOOL)_isAssociatedWithApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  associatedApplications = self->_associatedApplications;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__SBSystemApertureStatusBarPillElement__isAssociatedWithApplicationWithBundleIdentifier___block_invoke;
  v8[3] = &unk_2783B7288;
  v9 = identifierCopy;
  v6 = identifierCopy;
  LOBYTE(associatedApplications) = [(NSSet *)associatedApplications bs_containsObjectPassingTest:v8];

  return associatedApplications;
}

uint64_t __89__SBSystemApertureStatusBarPillElement__isAssociatedWithApplicationWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_viewWithPackageName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [objc_alloc(MEMORY[0x277CF0D48]) initWithPackageName:nameCopy inBundle:v5];

  return v6;
}

- (id)_viewWithSymbolName:(id)name tintColor:(id)color
{
  v5 = MEMORY[0x277D755D0];
  nameCopy = name;
  v7 = [v5 configurationWithHierarchicalColor:color];
  v8 = [MEMORY[0x277D755B8] _systemImageNamed:nameCopy withConfiguration:v7];

  v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];

  return v9;
}

- (id)_viewWithImageName:(id)name systemApertureSize:(CGSize)size tintColor:(id)color
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x277D755B8];
  v9 = MEMORY[0x277CCA8D8];
  colorCopy = color;
  nameCopy = name;
  v12 = [v9 bundleForClass:objc_opt_class()];
  v13 = [v8 imageNamed:nameCopy inBundle:v12];

  _imageThatSuppressesAccessibilityHairlineThickening = [v13 _imageThatSuppressesAccessibilityHairlineThickening];

  v15 = [_imageThatSuppressesAccessibilityHairlineThickening imageWithRenderingMode:2];

  v16 = [[SBSystemAperturePillImageView alloc] initWithImage:v15];
  [(SBSystemAperturePillImageView *)v16 setSystemApertureSize:width, height];
  [(SBSystemAperturePillImageView *)v16 setTintColor:colorCopy];

  [(SBSystemAperturePillImageView *)v16 setContentMode:1];

  return v16;
}

- (id)_viewWithTextLabel:(id)label tintColor:(id)color
{
  v26[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  if (colorCopy)
  {
    systemWhiteColor = colorCopy;
    labelCopy = label;
  }

  else
  {
    v8 = MEMORY[0x277D75348];
    labelCopy2 = label;
    systemWhiteColor = [v8 systemWhiteColor];
  }

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v25 = *MEMORY[0x277D740C0];
  v26[0] = systemWhiteColor;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v10 initWithString:label attributes:v11];

  v13 = objc_alloc(MEMORY[0x277D75560]);
  [v12 size];
  v14 = [v13 initWithSize:?];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __69__SBSystemApertureStatusBarPillElement__viewWithTextLabel_tintColor___block_invoke;
  v23 = &unk_2783B72B0;
  v24 = v12;
  v15 = v12;
  v16 = [v14 imageWithActions:&v20];
  v17 = objc_alloc(MEMORY[0x277D755E8]);
  v18 = [v17 initWithImage:{v16, v20, v21, v22, v23}];

  return v18;
}

- (id)_packageName
{
  _representedStatusBarStyleOverrides = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  result = 0;
  if (_representedStatusBarStyleOverrides > 63)
  {
    if (_representedStatusBarStyleOverrides <= 1023)
    {
      if (_representedStatusBarStyleOverrides != 64 && _representedStatusBarStyleOverrides != 128)
      {
        return result;
      }
    }

    else
    {
      if (_representedStatusBarStyleOverrides == 1024)
      {
        return @"AudioRecording-D73";
      }

      if (_representedStatusBarStyleOverrides != 2048)
      {
        if (_representedStatusBarStyleOverrides != 0x4000000)
        {
          return result;
        }

        return @"AudioRecording-D73";
      }
    }

    return @"Navigation-D73";
  }

  if (_representedStatusBarStyleOverrides <= 7)
  {
    if (_representedStatusBarStyleOverrides == 1)
    {
      return @"InCall-D73";
    }

    if (_representedStatusBarStyleOverrides != 4)
    {
      return result;
    }

    return @"AudioRecording-D73";
  }

  v4 = @"VideoCall-D73";
  v5 = @"AirPlay-D73";
  if (_representedStatusBarStyleOverrides != 32)
  {
    v5 = 0;
  }

  if (_representedStatusBarStyleOverrides != 16)
  {
    v4 = v5;
  }

  if (_representedStatusBarStyleOverrides == 8)
  {
    return @"Tethering-D73";
  }

  else
  {
    return v4;
  }
}

- (unint64_t)_representedStatusBarStyleOverrides
{
  representedBackgroundActivityIdentifiers = [(SBSystemApertureStatusBarPillElement *)self representedBackgroundActivityIdentifiers];
  v3 = STUIStyleOverridesForBackgroundActivityIdentifiers();

  return v3;
}

- (id)_imageName
{
  _representedStatusBarStyleOverrides = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  v3 = @"FallbackPill_SOS";
  if (_representedStatusBarStyleOverrides != 0x10000)
  {
    v3 = 0;
  }

  if (_representedStatusBarStyleOverrides == 0x20000000)
  {
    v4 = @"FallbackPill_satellite";
  }

  else
  {
    v4 = v3;
  }

  if (_representedStatusBarStyleOverrides == 0x800000000)
  {
    return @"FallbackPill_satellite-disconnected";
  }

  else
  {
    return v4;
  }
}

- (CGSize)_sizeForPillWithImageName
{
  _representedStatusBarStyleOverrides = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  v3 = 20.0;
  v4 = 40.0;
  if (_representedStatusBarStyleOverrides > 0x1FFFFFFF)
  {
    if (_representedStatusBarStyleOverrides != 0x20000000 && _representedStatusBarStyleOverrides != 0x800000000)
    {
LABEL_7:
      v4 = *MEMORY[0x277CBF3A8];
      v3 = *(MEMORY[0x277CBF3A8] + 8);
    }
  }

  else
  {
    if (_representedStatusBarStyleOverrides == 512)
    {
      v4 = 24.0;
      v3 = 24.0;
      goto LABEL_9;
    }

    if (_representedStatusBarStyleOverrides != 0x10000)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)_accessibilityLabel
{
  if ([(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides]== 0x10000)
  {
    v2 = @"SOS";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (UIColor)activeTintColor
{
  _representedStatusBarStyleOverrides = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  if (_representedStatusBarStyleOverrides <= 127)
  {
    if (_representedStatusBarStyleOverrides > 15)
    {
      if (_representedStatusBarStyleOverrides != 16)
      {
        if (_representedStatusBarStyleOverrides == 32)
        {
          v4 = MEMORY[0x277D75348];
          v7 = 0.117647059;
          v5 = 0.619607843;
          goto LABEL_25;
        }

        if (_representedStatusBarStyleOverrides != 64)
        {
          goto LABEL_31;
        }

        goto LABEL_19;
      }
    }

    else if (_representedStatusBarStyleOverrides != 1)
    {
      if (_representedStatusBarStyleOverrides == 4)
      {
        goto LABEL_15;
      }

      if (_representedStatusBarStyleOverrides != 8)
      {
        goto LABEL_31;
      }
    }

    v4 = MEMORY[0x277D75348];
    v7 = 0.22745098;
    v6 = 0.352941176;
    v5 = 1.0;
    goto LABEL_26;
  }

  if (_representedStatusBarStyleOverrides <= 2047)
  {
    if (_representedStatusBarStyleOverrides != 128)
    {
      if (_representedStatusBarStyleOverrides == 256)
      {
        goto LABEL_23;
      }

      if (_representedStatusBarStyleOverrides != 1024)
      {
        goto LABEL_31;
      }

LABEL_15:
      v4 = MEMORY[0x277D75348];
      v5 = 0.592156863;
      v6 = 0.0509803922;
      v7 = 1.0;
LABEL_26:
      systemGrayColor = [v4 colorWithRed:v7 green:v5 blue:v6 alpha:1.0];
      goto LABEL_27;
    }

LABEL_19:
    v4 = MEMORY[0x277D75348];
    v7 = 0.160784314;
    v5 = 0.517647059;
LABEL_25:
    v6 = 1.0;
    goto LABEL_26;
  }

  if (_representedStatusBarStyleOverrides <= 0x7FFFFFFFFLL)
  {
    if (_representedStatusBarStyleOverrides != 2048)
    {
      if (_representedStatusBarStyleOverrides != 0x4000000)
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (_representedStatusBarStyleOverrides == 0x800000000 || _representedStatusBarStyleOverrides == 0x10000000000)
  {
LABEL_23:
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
LABEL_27:
    backgroundColor = systemGrayColor;
    goto LABEL_28;
  }

LABEL_31:
  _representedVisualDescriptor = [(SBSystemApertureStatusBarPillElement *)self _representedVisualDescriptor];
  v12 = _representedVisualDescriptor;
  if (!_representedVisualDescriptor)
  {
    backgroundColor = 0;
    goto LABEL_37;
  }

  backgroundColor = [_representedVisualDescriptor backgroundColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  if (![backgroundColor isEqual:clearColor])
  {
    goto LABEL_35;
  }

  preferredVisualEffectName = [v12 preferredVisualEffectName];
  v15 = [preferredVisualEffectName isEqualToString:*MEMORY[0x277D6BD28]];

  if (v15)
  {
    [MEMORY[0x277D75348] systemGrayColor];
    backgroundColor = clearColor = backgroundColor;
LABEL_35:
  }

LABEL_37:

LABEL_28:

  return backgroundColor;
}

- (NSString)activeSymbolName
{
  _representedStatusBarStyleOverrides = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  systemImageName = 0;
  if (_representedStatusBarStyleOverrides > 0x1FFFFFFF)
  {
    if (_representedStatusBarStyleOverrides != 0x20000000 && _representedStatusBarStyleOverrides != 0x800000000)
    {
LABEL_7:
      _representedVisualDescriptor = [(SBSystemApertureStatusBarPillElement *)self _representedVisualDescriptor];
      v6 = _representedVisualDescriptor;
      if (_representedVisualDescriptor)
      {
        systemImageName = [_representedVisualDescriptor systemImageName];
      }

      else
      {
        systemImageName = @"questionmark";
      }
    }
  }

  else if (_representedStatusBarStyleOverrides == 0x4000)
  {
    systemImageName = @"shareplay";
  }

  else if (_representedStatusBarStyleOverrides != 0x10000)
  {
    goto LABEL_7;
  }

  return systemImageName;
}

- (id)_textLabel
{
  _representedVisualDescriptor = [(SBSystemApertureStatusBarPillElement *)self _representedVisualDescriptor];
  v3 = _representedVisualDescriptor;
  if (_representedVisualDescriptor)
  {
    textLabel = [_representedVisualDescriptor textLabel];
  }

  else
  {
    textLabel = 0;
  }

  return textLabel;
}

- (id)_representedVisualDescriptor
{
  mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
  v4 = [mEMORY[0x277D6B920] visualDescriptorForBackgroundActivityWithIdentifier:self->_representedBackgroundActivityIdentifier];

  return v4;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

@end