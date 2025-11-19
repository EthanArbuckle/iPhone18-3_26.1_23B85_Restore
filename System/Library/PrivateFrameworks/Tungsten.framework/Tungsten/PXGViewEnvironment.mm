@interface PXGViewEnvironment
+ (BOOL)_hideFocusRing;
- (BOOL)hasDifferentColorAppearanceComparedTo:(id)a3;
- (BOOL)hasEqualAppearanceTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PXGViewEnvironment)init;
- (PXGViewEnvironment)initWithView:(id)a3 accessibilityEnabled:(BOOL)a4 isBeingFullPageSnapshotted:(BOOL)a5;
- (void)dealloc;
@end

@implementation PXGViewEnvironment

+ (BOOL)_hideFocusRing
{
  HasInternalUI = PFOSVariantHasInternalUI();
  if (HasInternalUI)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"PXGViewEnvironmentHideFocusRing"];

    LOBYTE(HasInternalUI) = v4;
  }

  return HasInternalUI;
}

- (void)dealloc
{
  CGColorRelease(self->_checkmarkColor);
  CGColorRelease(self->_focusRingColor);
  v3.receiver = self;
  v3.super_class = PXGViewEnvironment;
  [(PXGViewEnvironment *)&v3 dealloc];
}

- (BOOL)hasDifferentColorAppearanceComparedTo:(id)a3
{
  v4 = a3;
  v5 = [(PXGViewEnvironment *)self traitCollection];
  v6 = [v4 traitCollection];

  LOBYTE(v4) = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v6];
  return v4;
}

- (BOOL)hasEqualAppearanceTo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = [(PXGViewEnvironment *)self traitCollection];
  v6 = [v4 traitCollection];
  v7 = v6 != 0;

  if ((v5 == 0) == v7 || [(PXGViewEnvironment *)self hasDifferentColorAppearanceComparedTo:v4])
  {
    goto LABEL_14;
  }

  v8 = [(PXGViewEnvironment *)self backgroundColor];
  v9 = [v4 backgroundColor];
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v12 = [(PXGViewEnvironment *)self userInterfaceStyle];
  if (v12 == [v4 userInterfaceStyle])
  {
    v13 = [(PXGViewEnvironment *)self accessibilityEnabled];
    if (v13 == [v4 accessibilityEnabled])
    {
      v14 = [(PXGViewEnvironment *)self emphasized];
      if (v14 == [v4 emphasized])
      {
        v15 = [(PXGViewEnvironment *)self wantsFocusRing];
        if (v15 == [v4 wantsFocusRing])
        {
          v16 = [(PXGViewEnvironment *)self isBeingFullPageSnapshotted];
          if (v16 == [v4 isBeingFullPageSnapshotted])
          {
            v17 = [(PXGViewEnvironment *)self checkmarkEmphasized];
            if (v17 == [v4 checkmarkEmphasized])
            {
              v20 = [(PXGViewEnvironment *)self tintColor];
              v21 = [(PXGViewEnvironment *)self traitCollection];
              v22 = [v20 resolvedColorWithTraitCollection:v21];

              v23 = [v4 tintColor];
              v24 = [v4 traitCollection];
              v25 = [v23 resolvedColorWithTraitCollection:v24];

              v18 = [v22 _isSimilarToColor:v25 withinPercentage:0.000000999999997];
              goto LABEL_15;
            }
          }
        }
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(PXGViewEnvironment *)self hasEqualAppearanceTo:v5])
      {
        v6 = [(PXGViewEnvironment *)self traitCollection];
        v7 = [(PXGViewEnvironment *)v5 traitCollection];
        if (v6 == v7)
        {
          v8 = 1;
        }

        else
        {
          v8 = [v6 isEqual:v7];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXGViewEnvironment)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGViewEnvironment.m" lineNumber:93 description:{@"%s is not available as initializer", "-[PXGViewEnvironment init]"}];

  abort();
}

- (PXGViewEnvironment)initWithView:(id)a3 accessibilityEnabled:(BOOL)a4 isBeingFullPageSnapshotted:(BOOL)a5
{
  v7 = a3;
  v42.receiver = self;
  v42.super_class = PXGViewEnvironment;
  v8 = [(PXGViewEnvironment *)&v42 init];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = [v7 backgroundColor];
  backgroundColor = v8->_backgroundColor;
  v8->_backgroundColor = v9;

  v11 = [v7 tintColor];
  tintColor = v8->_tintColor;
  v8->_tintColor = v11;

  v13 = [v7 traitCollection];
  traitCollection = v8->_traitCollection;
  v8->_traitCollection = v13;

  v15 = [v7 traitCollection];
  v8->_userInterfaceStyle = PXUserInterfaceStyleFromUITraitCollection();

  v16 = [v7 traitCollection];
  v8->_userInterfaceLayoutDirection = PXUserInterfaceLayoutDirectionFromUITraitCollection();

  v17 = [MEMORY[0x277D75518] focusSystemForEnvironment:v7];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 focusedItem];
    v8->_emphasized = [v7 px_isAncestorOfFocusEnvironment:v19];
    p_emphasized = &v8->_emphasized;
  }

  else
  {
    v8->_emphasized = 1;
    p_emphasized = &v8->_emphasized;
  }

  v21 = [objc_opt_class() _hideFocusRing];
  if (!v18 || v21)
  {
    v8->_wantsFocusRing = 0;
  }

  else
  {
    v22 = [v7 traitCollection];
    if ([v22 userInterfaceIdiom] == 1)
    {
      v8->_wantsFocusRing = 1;
    }

    else
    {
      v23 = [v7 traitCollection];
      if ([v23 userInterfaceIdiom] == 5)
      {
        v8->_wantsFocusRing = 1;
      }

      else
      {
        v24 = [v7 traitCollection];
        v8->_wantsFocusRing = [v24 userInterfaceIdiom] == 6;
      }
    }
  }

  v8->_isBeingFullPageSnapshotted = a5;
  emphasized = v8->_emphasized;
  if (!v18 || v8->_emphasized)
  {
    v8->_checkmarkEmphasized = emphasized;
    if (!emphasized)
    {
      goto LABEL_18;
    }

LABEL_20:
    v27 = [v7 tintColor];
    goto LABEL_21;
  }

  v26 = [v18 focusedItem];
  v8->_checkmarkEmphasized = v26 == 0;

  if (v8->_checkmarkEmphasized)
  {
    goto LABEL_20;
  }

LABEL_18:
  v27 = [MEMORY[0x277D75348] opaqueSeparatorColor];
LABEL_21:
  v28 = v27;
  v29 = [v7 traitCollection];
  if ([v29 userInterfaceIdiom] == 6)
  {
    v30 = [MEMORY[0x277D75348] systemWhiteColor];
    v31 = [v30 colorWithAlphaComponent:0.4];
  }

  else
  {
    v31 = [v7 tintColor];
  }

  if (*p_emphasized)
  {
    v32 = v31;
  }

  else
  {
    v32 = [MEMORY[0x277D75348] opaqueSeparatorColor];
  }

  v33 = v32;
  v34 = [v7 traitCollection];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __83__PXGViewEnvironment_initWithView_accessibilityEnabled_isBeingFullPageSnapshotted___block_invoke;
  v38[3] = &unk_2782ABE78;
  v39 = v8;
  v40 = v28;
  v41 = v33;
  v35 = v33;
  v36 = v28;
  [v34 performAsCurrentTraitCollection:v38];

LABEL_28:
  return v8;
}

CGColorRef __83__PXGViewEnvironment_initWithView_accessibilityEnabled_isBeingFullPageSnapshotted___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = CGColorRetain([*(a1 + 40) CGColor]);
  result = CGColorRetain([*(a1 + 48) CGColor]);
  *(*(a1 + 32) + 64) = result;
  return result;
}

@end