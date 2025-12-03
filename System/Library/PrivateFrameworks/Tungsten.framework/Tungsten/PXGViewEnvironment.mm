@interface PXGViewEnvironment
+ (BOOL)_hideFocusRing;
- (BOOL)hasDifferentColorAppearanceComparedTo:(id)to;
- (BOOL)hasEqualAppearanceTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (PXGViewEnvironment)init;
- (PXGViewEnvironment)initWithView:(id)view accessibilityEnabled:(BOOL)enabled isBeingFullPageSnapshotted:(BOOL)snapshotted;
- (void)dealloc;
@end

@implementation PXGViewEnvironment

+ (BOOL)_hideFocusRing
{
  HasInternalUI = PFOSVariantHasInternalUI();
  if (HasInternalUI)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"PXGViewEnvironmentHideFocusRing"];

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

- (BOOL)hasDifferentColorAppearanceComparedTo:(id)to
{
  toCopy = to;
  traitCollection = [(PXGViewEnvironment *)self traitCollection];
  traitCollection2 = [toCopy traitCollection];

  LOBYTE(toCopy) = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:traitCollection2];
  return toCopy;
}

- (BOOL)hasEqualAppearanceTo:(id)to
{
  toCopy = to;
  if (!toCopy)
  {
    goto LABEL_14;
  }

  traitCollection = [(PXGViewEnvironment *)self traitCollection];
  traitCollection2 = [toCopy traitCollection];
  v7 = traitCollection2 != 0;

  if ((traitCollection == 0) == v7 || [(PXGViewEnvironment *)self hasDifferentColorAppearanceComparedTo:toCopy])
  {
    goto LABEL_14;
  }

  backgroundColor = [(PXGViewEnvironment *)self backgroundColor];
  backgroundColor2 = [toCopy backgroundColor];
  v10 = backgroundColor2;
  if (backgroundColor == backgroundColor2)
  {
  }

  else
  {
    v11 = [backgroundColor isEqual:backgroundColor2];

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  userInterfaceStyle = [(PXGViewEnvironment *)self userInterfaceStyle];
  if (userInterfaceStyle == [toCopy userInterfaceStyle])
  {
    accessibilityEnabled = [(PXGViewEnvironment *)self accessibilityEnabled];
    if (accessibilityEnabled == [toCopy accessibilityEnabled])
    {
      emphasized = [(PXGViewEnvironment *)self emphasized];
      if (emphasized == [toCopy emphasized])
      {
        wantsFocusRing = [(PXGViewEnvironment *)self wantsFocusRing];
        if (wantsFocusRing == [toCopy wantsFocusRing])
        {
          isBeingFullPageSnapshotted = [(PXGViewEnvironment *)self isBeingFullPageSnapshotted];
          if (isBeingFullPageSnapshotted == [toCopy isBeingFullPageSnapshotted])
          {
            checkmarkEmphasized = [(PXGViewEnvironment *)self checkmarkEmphasized];
            if (checkmarkEmphasized == [toCopy checkmarkEmphasized])
            {
              tintColor = [(PXGViewEnvironment *)self tintColor];
              traitCollection3 = [(PXGViewEnvironment *)self traitCollection];
              v22 = [tintColor resolvedColorWithTraitCollection:traitCollection3];

              tintColor2 = [toCopy tintColor];
              traitCollection4 = [toCopy traitCollection];
              v25 = [tintColor2 resolvedColorWithTraitCollection:traitCollection4];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(PXGViewEnvironment *)self hasEqualAppearanceTo:v5])
      {
        traitCollection = [(PXGViewEnvironment *)self traitCollection];
        traitCollection2 = [(PXGViewEnvironment *)v5 traitCollection];
        if (traitCollection == traitCollection2)
        {
          v8 = 1;
        }

        else
        {
          v8 = [traitCollection isEqual:traitCollection2];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewEnvironment.m" lineNumber:93 description:{@"%s is not available as initializer", "-[PXGViewEnvironment init]"}];

  abort();
}

- (PXGViewEnvironment)initWithView:(id)view accessibilityEnabled:(BOOL)enabled isBeingFullPageSnapshotted:(BOOL)snapshotted
{
  viewCopy = view;
  v42.receiver = self;
  v42.super_class = PXGViewEnvironment;
  v8 = [(PXGViewEnvironment *)&v42 init];
  if (!v8)
  {
    goto LABEL_28;
  }

  backgroundColor = [viewCopy backgroundColor];
  backgroundColor = v8->_backgroundColor;
  v8->_backgroundColor = backgroundColor;

  tintColor = [viewCopy tintColor];
  tintColor = v8->_tintColor;
  v8->_tintColor = tintColor;

  traitCollection = [viewCopy traitCollection];
  traitCollection = v8->_traitCollection;
  v8->_traitCollection = traitCollection;

  traitCollection2 = [viewCopy traitCollection];
  v8->_userInterfaceStyle = PXUserInterfaceStyleFromUITraitCollection();

  traitCollection3 = [viewCopy traitCollection];
  v8->_userInterfaceLayoutDirection = PXUserInterfaceLayoutDirectionFromUITraitCollection();

  v17 = [MEMORY[0x277D75518] focusSystemForEnvironment:viewCopy];
  v18 = v17;
  if (v17)
  {
    focusedItem = [v17 focusedItem];
    v8->_emphasized = [viewCopy px_isAncestorOfFocusEnvironment:focusedItem];
    p_emphasized = &v8->_emphasized;
  }

  else
  {
    v8->_emphasized = 1;
    p_emphasized = &v8->_emphasized;
  }

  _hideFocusRing = [objc_opt_class() _hideFocusRing];
  if (!v18 || _hideFocusRing)
  {
    v8->_wantsFocusRing = 0;
  }

  else
  {
    traitCollection4 = [viewCopy traitCollection];
    if ([traitCollection4 userInterfaceIdiom] == 1)
    {
      v8->_wantsFocusRing = 1;
    }

    else
    {
      traitCollection5 = [viewCopy traitCollection];
      if ([traitCollection5 userInterfaceIdiom] == 5)
      {
        v8->_wantsFocusRing = 1;
      }

      else
      {
        traitCollection6 = [viewCopy traitCollection];
        v8->_wantsFocusRing = [traitCollection6 userInterfaceIdiom] == 6;
      }
    }
  }

  v8->_isBeingFullPageSnapshotted = snapshotted;
  emphasized = v8->_emphasized;
  if (!v18 || v8->_emphasized)
  {
    v8->_checkmarkEmphasized = emphasized;
    if (!emphasized)
    {
      goto LABEL_18;
    }

LABEL_20:
    tintColor2 = [viewCopy tintColor];
    goto LABEL_21;
  }

  focusedItem2 = [v18 focusedItem];
  v8->_checkmarkEmphasized = focusedItem2 == 0;

  if (v8->_checkmarkEmphasized)
  {
    goto LABEL_20;
  }

LABEL_18:
  tintColor2 = [MEMORY[0x277D75348] opaqueSeparatorColor];
LABEL_21:
  v28 = tintColor2;
  traitCollection7 = [viewCopy traitCollection];
  if ([traitCollection7 userInterfaceIdiom] == 6)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    tintColor3 = [systemWhiteColor colorWithAlphaComponent:0.4];
  }

  else
  {
    tintColor3 = [viewCopy tintColor];
  }

  if (*p_emphasized)
  {
    opaqueSeparatorColor = tintColor3;
  }

  else
  {
    opaqueSeparatorColor = [MEMORY[0x277D75348] opaqueSeparatorColor];
  }

  v33 = opaqueSeparatorColor;
  traitCollection8 = [viewCopy traitCollection];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __83__PXGViewEnvironment_initWithView_accessibilityEnabled_isBeingFullPageSnapshotted___block_invoke;
  v38[3] = &unk_2782ABE78;
  v39 = v8;
  v40 = v28;
  v41 = v33;
  v35 = v33;
  v36 = v28;
  [traitCollection8 performAsCurrentTraitCollection:v38];

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