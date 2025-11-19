@interface SBSystemApertureStatusBarPillElement
- (BOOL)_isAssociatedWithApplicationWithBundleIdentifier:(id)a3;
- (BOOL)acceptsFullScreenTransitionFromSceneWithIdentifier:(id)a3 ofBundleId:(id)a4;
- (BOOL)handleElementViewEvent:(int64_t)a3;
- (BOOL)shouldIgnoreSystemChromeSuppression;
- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)a3;
- (BOOL)shouldSuppressElementWhileProximityReaderPresent;
- (CGSize)_sizeForPillWithImageName;
- (NSString)activeSymbolName;
- (SAUILayoutHosting)layoutHost;
- (SBSystemApertureStatusBarPillElement)initWithBackgroundActivityIdentifier:(id)a3;
- (UIColor)activeTintColor;
- (UIView)leadingView;
- (id)_accessibilityLabel;
- (id)_imageName;
- (id)_packageName;
- (id)_representedVisualDescriptor;
- (id)_textLabel;
- (id)_viewWithImageName:(id)a3 systemApertureSize:(CGSize)a4 tintColor:(id)a5;
- (id)_viewWithPackageName:(id)a3;
- (id)_viewWithSymbolName:(id)a3 tintColor:(id)a4;
- (id)_viewWithTextLabel:(id)a3 tintColor:(id)a4;
- (unint64_t)_representedStatusBarStyleOverrides;
- (void)setAssociatedApplications:(id)a3;
@end

@implementation SBSystemApertureStatusBarPillElement

- (SBSystemApertureStatusBarPillElement)initWithBackgroundActivityIdentifier:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBSystemApertureStatusBarPillElement;
  v5 = [(SBSystemApertureStatusBarPillElement *)&v21 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (void)setAssociatedApplications:(id)a3
{
  v7 = a3;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [v7 copy];
    associatedApplications = self->_associatedApplications;
    self->_associatedApplications = v4;

    v6 = [(SBSystemApertureStatusBarPillElement *)self layoutHost];
    [v6 preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
  }
}

- (BOOL)handleElementViewEvent:(int64_t)a3
{
  if (a3 <= 3)
  {
    representedBackgroundActivityIdentifier = self->_representedBackgroundActivityIdentifier;
    v5 = [(SBSystemApertureStatusBarPillElement *)self leadingView];
    v6 = [v5 _sbWindowScene];
    SBWorkspaceHandleStatusBarReturnActionFromApp(0, 0, representedBackgroundActivityIdentifier, v6);
  }

  return a3 < 4;
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = [(SBSystemApertureStatusBarPillElement *)self _packageName];
    v5 = [(SBSystemApertureStatusBarPillElement *)self activeSymbolName];
    v6 = [(SBSystemApertureStatusBarPillElement *)self _imageName];
    v7 = [(SBSystemApertureStatusBarPillElement *)self _textLabel];
    v8 = v7;
    if (v4)
    {
      v9 = [(SBSystemApertureStatusBarPillElement *)self _viewWithPackageName:v4];
      v10 = self->_leadingView;
      self->_leadingView = v9;
    }

    else if (v5)
    {
      v10 = [(SBSystemApertureStatusBarPillElement *)self activeSymbolName];
      v11 = [(SBSystemApertureStatusBarPillElement *)self activeTintColor];
      v12 = [(SBSystemApertureStatusBarPillElement *)self _viewWithSymbolName:v10 tintColor:v11];
      v13 = self->_leadingView;
      self->_leadingView = v12;
    }

    else
    {
      if (v6)
      {
        [(SBSystemApertureStatusBarPillElement *)self _sizeForPillWithImageName];
        v15 = v14;
        v17 = v16;
        v10 = [(SBSystemApertureStatusBarPillElement *)self activeTintColor];
        v18 = [(SBSystemApertureStatusBarPillElement *)self _viewWithImageName:v6 systemApertureSize:v10 tintColor:v15, v17];
      }

      else
      {
        if (!v7)
        {
LABEL_12:
          v20 = self->_leadingView;
          v21 = [(SBSystemApertureStatusBarPillElement *)self accessibilityLabel];
          [(UIView *)v20 setAccessibilityLabel:v21];

          leadingView = self->_leadingView;
          goto LABEL_13;
        }

        v10 = [(SBSystemApertureStatusBarPillElement *)self activeTintColor];
        v18 = [(SBSystemApertureStatusBarPillElement *)self _viewWithTextLabel:v8 tintColor:v10];
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
  v3 = [objc_opt_class() backgroundActivityIdentifiersThatIgnoreSystemChromeSuppression];
  v4 = [(SBSystemApertureStatusBarPillElement *)self representedBackgroundActivityIdentifiers];
  v5 = [v3 intersectsSet:v4];

  return v5;
}

- (BOOL)shouldSuppressElementWhileProximityReaderPresent
{
  v2 = [(SBSystemApertureStatusBarPillElement *)self elementIdentifier];
  v3 = [v2 isEqual:*MEMORY[0x277D67FD0]];

  return v3 ^ 1;
}

- (BOOL)acceptsFullScreenTransitionFromSceneWithIdentifier:(id)a3 ofBundleId:(id)a4
{
  v5 = a4;
  v6 = [(SBSystemApertureStatusBarPillElement *)self representedBackgroundActivityIdentifiers];
  v7 = ([v6 containsObject:*MEMORY[0x277D6BCA8]] & 1) == 0 && -[SBSystemApertureStatusBarPillElement _isAssociatedWithApplicationWithBundleIdentifier:](self, "_isAssociatedWithApplicationWithBundleIdentifier:", v5);

  return v7;
}

- (BOOL)shouldSuppressElementWhilePresentingAppWithBundleId:(id)a3
{
  v4 = a3;
  v5 = [(NSSet *)self->_associatedApplications count]<= 1 && [(SBSystemApertureStatusBarPillElement *)self _isAssociatedWithApplicationWithBundleIdentifier:v4];

  return v5;
}

- (BOOL)_isAssociatedWithApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  associatedApplications = self->_associatedApplications;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__SBSystemApertureStatusBarPillElement__isAssociatedWithApplicationWithBundleIdentifier___block_invoke;
  v8[3] = &unk_2783B7288;
  v9 = v4;
  v6 = v4;
  LOBYTE(associatedApplications) = [(NSSet *)associatedApplications bs_containsObjectPassingTest:v8];

  return associatedApplications;
}

uint64_t __89__SBSystemApertureStatusBarPillElement__isAssociatedWithApplicationWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_viewWithPackageName:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [objc_alloc(MEMORY[0x277CF0D48]) initWithPackageName:v4 inBundle:v5];

  return v6;
}

- (id)_viewWithSymbolName:(id)a3 tintColor:(id)a4
{
  v5 = MEMORY[0x277D755D0];
  v6 = a3;
  v7 = [v5 configurationWithHierarchicalColor:a4];
  v8 = [MEMORY[0x277D755B8] _systemImageNamed:v6 withConfiguration:v7];

  v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];

  return v9;
}

- (id)_viewWithImageName:(id)a3 systemApertureSize:(CGSize)a4 tintColor:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = MEMORY[0x277D755B8];
  v9 = MEMORY[0x277CCA8D8];
  v10 = a5;
  v11 = a3;
  v12 = [v9 bundleForClass:objc_opt_class()];
  v13 = [v8 imageNamed:v11 inBundle:v12];

  v14 = [v13 _imageThatSuppressesAccessibilityHairlineThickening];

  v15 = [v14 imageWithRenderingMode:2];

  v16 = [[SBSystemAperturePillImageView alloc] initWithImage:v15];
  [(SBSystemAperturePillImageView *)v16 setSystemApertureSize:width, height];
  [(SBSystemAperturePillImageView *)v16 setTintColor:v10];

  [(SBSystemAperturePillImageView *)v16 setContentMode:1];

  return v16;
}

- (id)_viewWithTextLabel:(id)a3 tintColor:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = v5;
    v7 = a3;
  }

  else
  {
    v8 = MEMORY[0x277D75348];
    v9 = a3;
    v6 = [v8 systemWhiteColor];
  }

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v25 = *MEMORY[0x277D740C0];
  v26[0] = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v10 initWithString:a3 attributes:v11];

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
  v2 = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  result = 0;
  if (v2 > 63)
  {
    if (v2 <= 1023)
    {
      if (v2 != 64 && v2 != 128)
      {
        return result;
      }
    }

    else
    {
      if (v2 == 1024)
      {
        return @"AudioRecording-D73";
      }

      if (v2 != 2048)
      {
        if (v2 != 0x4000000)
        {
          return result;
        }

        return @"AudioRecording-D73";
      }
    }

    return @"Navigation-D73";
  }

  if (v2 <= 7)
  {
    if (v2 == 1)
    {
      return @"InCall-D73";
    }

    if (v2 != 4)
    {
      return result;
    }

    return @"AudioRecording-D73";
  }

  v4 = @"VideoCall-D73";
  v5 = @"AirPlay-D73";
  if (v2 != 32)
  {
    v5 = 0;
  }

  if (v2 != 16)
  {
    v4 = v5;
  }

  if (v2 == 8)
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
  v2 = [(SBSystemApertureStatusBarPillElement *)self representedBackgroundActivityIdentifiers];
  v3 = STUIStyleOverridesForBackgroundActivityIdentifiers();

  return v3;
}

- (id)_imageName
{
  v2 = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  v3 = @"FallbackPill_SOS";
  if (v2 != 0x10000)
  {
    v3 = 0;
  }

  if (v2 == 0x20000000)
  {
    v4 = @"FallbackPill_satellite";
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 0x800000000)
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
  v2 = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  v3 = 20.0;
  v4 = 40.0;
  if (v2 > 0x1FFFFFFF)
  {
    if (v2 != 0x20000000 && v2 != 0x800000000)
    {
LABEL_7:
      v4 = *MEMORY[0x277CBF3A8];
      v3 = *(MEMORY[0x277CBF3A8] + 8);
    }
  }

  else
  {
    if (v2 == 512)
    {
      v4 = 24.0;
      v3 = 24.0;
      goto LABEL_9;
    }

    if (v2 != 0x10000)
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
  v3 = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  if (v3 <= 127)
  {
    if (v3 > 15)
    {
      if (v3 != 16)
      {
        if (v3 == 32)
        {
          v4 = MEMORY[0x277D75348];
          v7 = 0.117647059;
          v5 = 0.619607843;
          goto LABEL_25;
        }

        if (v3 != 64)
        {
          goto LABEL_31;
        }

        goto LABEL_19;
      }
    }

    else if (v3 != 1)
    {
      if (v3 == 4)
      {
        goto LABEL_15;
      }

      if (v3 != 8)
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

  if (v3 <= 2047)
  {
    if (v3 != 128)
    {
      if (v3 == 256)
      {
        goto LABEL_23;
      }

      if (v3 != 1024)
      {
        goto LABEL_31;
      }

LABEL_15:
      v4 = MEMORY[0x277D75348];
      v5 = 0.592156863;
      v6 = 0.0509803922;
      v7 = 1.0;
LABEL_26:
      v8 = [v4 colorWithRed:v7 green:v5 blue:v6 alpha:1.0];
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

  if (v3 <= 0x7FFFFFFFFLL)
  {
    if (v3 != 2048)
    {
      if (v3 != 0x4000000)
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (v3 == 0x800000000 || v3 == 0x10000000000)
  {
LABEL_23:
    v8 = [MEMORY[0x277D75348] systemGrayColor];
LABEL_27:
    v9 = v8;
    goto LABEL_28;
  }

LABEL_31:
  v11 = [(SBSystemApertureStatusBarPillElement *)self _representedVisualDescriptor];
  v12 = v11;
  if (!v11)
  {
    v9 = 0;
    goto LABEL_37;
  }

  v9 = [v11 backgroundColor];
  v13 = [MEMORY[0x277D75348] clearColor];
  if (![v9 isEqual:v13])
  {
    goto LABEL_35;
  }

  v14 = [v12 preferredVisualEffectName];
  v15 = [v14 isEqualToString:*MEMORY[0x277D6BD28]];

  if (v15)
  {
    [MEMORY[0x277D75348] systemGrayColor];
    v9 = v13 = v9;
LABEL_35:
  }

LABEL_37:

LABEL_28:

  return v9;
}

- (NSString)activeSymbolName
{
  v3 = [(SBSystemApertureStatusBarPillElement *)self _representedStatusBarStyleOverrides];
  v4 = 0;
  if (v3 > 0x1FFFFFFF)
  {
    if (v3 != 0x20000000 && v3 != 0x800000000)
    {
LABEL_7:
      v5 = [(SBSystemApertureStatusBarPillElement *)self _representedVisualDescriptor];
      v6 = v5;
      if (v5)
      {
        v4 = [v5 systemImageName];
      }

      else
      {
        v4 = @"questionmark";
      }
    }
  }

  else if (v3 == 0x4000)
  {
    v4 = @"shareplay";
  }

  else if (v3 != 0x10000)
  {
    goto LABEL_7;
  }

  return v4;
}

- (id)_textLabel
{
  v2 = [(SBSystemApertureStatusBarPillElement *)self _representedVisualDescriptor];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 textLabel];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_representedVisualDescriptor
{
  v3 = [MEMORY[0x277D6B920] sharedInstance];
  v4 = [v3 visualDescriptorForBackgroundActivityWithIdentifier:self->_representedBackgroundActivityIdentifier];

  return v4;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

@end