@interface SBSAElementContext
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (CGRect)preferredLeadingBounds;
- (CGRect)preferredMinimalBounds;
- (CGRect)preferredTrailingBounds;
- (NSDirectionalEdgeInsets)preferredEdgeOutsets;
- (NSString)description;
- (SBSAElementContext)initWithSystemApertureElementContext:(id)context;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAElementContext

- (NSDirectionalEdgeInsets)preferredEdgeOutsets
{
  top = self->_preferredEdgeOutsets.top;
  leading = self->_preferredEdgeOutsets.leading;
  bottom = self->_preferredEdgeOutsets.bottom;
  trailing = self->_preferredEdgeOutsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGRect)preferredTrailingBounds
{
  x = self->_preferredTrailingBounds.origin.x;
  y = self->_preferredTrailingBounds.origin.y;
  width = self->_preferredTrailingBounds.size.width;
  height = self->_preferredTrailingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredLeadingBounds
{
  x = self->_preferredLeadingBounds.origin.x;
  y = self->_preferredLeadingBounds.origin.y;
  width = self->_preferredLeadingBounds.size.width;
  height = self->_preferredLeadingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredMinimalBounds
{
  x = self->_preferredMinimalBounds.origin.x;
  y = self->_preferredMinimalBounds.origin.y;
  width = self->_preferredMinimalBounds.size.width;
  height = self->_preferredMinimalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBSAElementContext)initWithSystemApertureElementContext:(id)context
{
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = SBSAElementContext;
  v5 = [(SBSAElementContext *)&v31 init];
  if (v5)
  {
    clientIdentifier = [contextCopy clientIdentifier];
    v7 = [clientIdentifier copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    elementIdentifier = [contextCopy elementIdentifier];
    v10 = [elementIdentifier copy];
    elementIdentifier = v5->_elementIdentifier;
    v5->_elementIdentifier = v10;

    v5->_layoutMode = [contextCopy layoutMode];
    [contextCopy preferredEdgeOutsets];
    v5->_preferredEdgeOutsets.top = v12;
    v5->_preferredEdgeOutsets.leading = v13;
    v5->_preferredEdgeOutsets.bottom = v14;
    v5->_preferredEdgeOutsets.trailing = v15;
    v5->_interfaceOrientation = [contextCopy interfaceOrientation];
    v5->_systemApertureCustomLayout = [contextCopy systemApertureCustomLayout];
    v5->_systemApertureCustomLayoutCustomAnimationStyle = [contextCopy systemApertureCustomLayoutCustomAnimationStyle];
    v5->_systemApertureLayoutCustomizingOptions = [contextCopy systemApertureLayoutCustomizingOptions];
    v5->_activeDynamicAnimation = [contextCopy activeDynamicAnimation];
    keyColor = [contextCopy keyColor];
    keyColor = v5->_keyColor;
    v5->_keyColor = keyColor;

    v5->_preventsInteractiveGestures = [contextCopy preventsInteractiveGestures];
    [contextCopy preferredLeadingBounds];
    v5->_preferredLeadingBounds.origin.x = v18;
    v5->_preferredLeadingBounds.origin.y = v19;
    v5->_preferredLeadingBounds.size.width = v20;
    v5->_preferredLeadingBounds.size.height = v21;
    [contextCopy preferredTrailingBounds];
    v5->_preferredTrailingBounds.origin.x = v22;
    v5->_preferredTrailingBounds.origin.y = v23;
    v5->_preferredTrailingBounds.size.width = v24;
    v5->_preferredTrailingBounds.size.height = v25;
    [contextCopy preferredMinimalBounds];
    v5->_preferredMinimalBounds.origin.x = v26;
    v5->_preferredMinimalBounds.origin.y = v27;
    v5->_preferredMinimalBounds.size.width = v28;
    v5->_preferredMinimalBounds.size.height = v29;
    v5->_viewControllerAppearState = [contextCopy viewControllerAppearState];
    v5->_requestingMenuPresentation = [contextCopy isRequestingMenuPresentation];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v50 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  clientIdentifier = self->_clientIdentifier;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __30__SBSAElementContext_isEqual___block_invoke;
  v81[3] = &unk_2783ACDB8;
  v6 = equalCopy;
  v82 = v6;
  v49 = [v50 appendObject:clientIdentifier counterpart:v81];
  elementIdentifier = self->_elementIdentifier;
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __30__SBSAElementContext_isEqual___block_invoke_2;
  v79[3] = &unk_2783ACDB8;
  v8 = v6;
  v80 = v8;
  v48 = [v49 appendObject:elementIdentifier counterpart:v79];
  layoutMode = self->_layoutMode;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __30__SBSAElementContext_isEqual___block_invoke_3;
  v77[3] = &unk_2783ACDE0;
  v10 = v8;
  v78 = v10;
  v47 = [v48 appendInteger:layoutMode counterpart:v77];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __30__SBSAElementContext_isEqual___block_invoke_4;
  v75[3] = &unk_2783A94B0;
  v75[4] = self;
  v11 = v10;
  v76 = v11;
  v46 = [v47 appendEqualsBlocks:{v75, 0}];
  interfaceOrientation = self->_interfaceOrientation;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __30__SBSAElementContext_isEqual___block_invoke_5;
  v73[3] = &unk_2783ACDE0;
  v13 = v11;
  v74 = v13;
  v45 = [v46 appendInteger:interfaceOrientation counterpart:v73];
  systemApertureCustomLayout = self->_systemApertureCustomLayout;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __30__SBSAElementContext_isEqual___block_invoke_6;
  v71[3] = &unk_2783ACDE0;
  v15 = v13;
  v72 = v15;
  v44 = [v45 appendInteger:systemApertureCustomLayout counterpart:v71];
  systemApertureCustomLayoutCustomAnimationStyle = self->_systemApertureCustomLayoutCustomAnimationStyle;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __30__SBSAElementContext_isEqual___block_invoke_7;
  v69[3] = &unk_2783ACDE0;
  v17 = v15;
  v70 = v17;
  v43 = [v44 appendInteger:systemApertureCustomLayoutCustomAnimationStyle counterpart:v69];
  systemApertureLayoutCustomizingOptions = self->_systemApertureLayoutCustomizingOptions;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __30__SBSAElementContext_isEqual___block_invoke_8;
  v67[3] = &unk_2783ACDE0;
  v19 = v17;
  v68 = v19;
  v42 = [v43 appendInteger:systemApertureLayoutCustomizingOptions counterpart:v67];
  activeDynamicAnimation = self->_activeDynamicAnimation;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __30__SBSAElementContext_isEqual___block_invoke_9;
  v65[3] = &unk_2783ACDE0;
  v21 = v19;
  v66 = v21;
  v22 = [v42 appendInteger:activeDynamicAnimation counterpart:v65];
  keyColor = self->_keyColor;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __30__SBSAElementContext_isEqual___block_invoke_10;
  v63[3] = &unk_2783ACDB8;
  v24 = v21;
  v64 = v24;
  v25 = [v22 appendObject:keyColor counterpart:v63];
  preventsInteractiveGestures = self->_preventsInteractiveGestures;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __30__SBSAElementContext_isEqual___block_invoke_11;
  v61[3] = &unk_2783ACE58;
  v27 = v24;
  v62 = v27;
  v28 = [v25 appendBool:preventsInteractiveGestures counterpart:v61];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __30__SBSAElementContext_isEqual___block_invoke_12;
  v59[3] = &unk_2783B0268;
  v29 = v27;
  v60 = v29;
  v30 = [v28 appendCGRect:v59 counterpart:{self->_preferredLeadingBounds.origin.x, self->_preferredLeadingBounds.origin.y, self->_preferredLeadingBounds.size.width, self->_preferredLeadingBounds.size.height}];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __30__SBSAElementContext_isEqual___block_invoke_13;
  v57[3] = &unk_2783B0268;
  v31 = v29;
  v58 = v31;
  v32 = [v30 appendCGRect:v57 counterpart:{self->_preferredTrailingBounds.origin.x, self->_preferredTrailingBounds.origin.y, self->_preferredTrailingBounds.size.width, self->_preferredTrailingBounds.size.height}];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __30__SBSAElementContext_isEqual___block_invoke_14;
  v55[3] = &unk_2783B0268;
  v33 = v31;
  v56 = v33;
  v34 = [v32 appendCGRect:v55 counterpart:{self->_preferredMinimalBounds.origin.x, self->_preferredMinimalBounds.origin.y, self->_preferredMinimalBounds.size.width, self->_preferredMinimalBounds.size.height}];
  viewControllerAppearState = self->_viewControllerAppearState;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __30__SBSAElementContext_isEqual___block_invoke_15;
  v53[3] = &unk_2783ACDE0;
  v36 = v33;
  v54 = v36;
  v37 = [v34 appendInteger:viewControllerAppearState counterpart:v53];
  requestingMenuPresentation = self->_requestingMenuPresentation;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __30__SBSAElementContext_isEqual___block_invoke_16;
  v51[3] = &unk_2783ACE58;
  v52 = v36;
  v39 = v36;
  v40 = [v37 appendBool:requestingMenuPresentation counterpart:v51];
  LOBYTE(v36) = [v40 isEqual];

  return v36;
}

uint64_t __30__SBSAElementContext_isEqual___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) preferredEdgeOutsets];
  v3.f64[1] = v2;
  v5.f64[1] = v4;
  return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v1 + 88), v3), vceqq_f64(*(v1 + 104), v5)))) & 1;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v23 = [builder appendObject:self->_clientIdentifier];
  v22 = [v23 appendObject:self->_elementIdentifier];
  v21 = [v22 appendInteger:self->_layoutMode];
  v20 = [v21 appendCGFloat:self->_preferredEdgeOutsets.top];
  v19 = [v20 appendCGFloat:self->_preferredEdgeOutsets.leading];
  v18 = [v19 appendCGFloat:self->_preferredEdgeOutsets.bottom];
  v17 = [v18 appendCGFloat:self->_preferredEdgeOutsets.trailing];
  v16 = [v17 appendInteger:self->_interfaceOrientation];
  v15 = [v16 appendInteger:self->_systemApertureCustomLayout];
  v3 = [v15 appendInteger:self->_systemApertureCustomLayoutCustomAnimationStyle];
  v4 = [v3 appendInteger:self->_systemApertureLayoutCustomizingOptions];
  v5 = [v4 appendInteger:self->_activeDynamicAnimation];
  v6 = [v5 appendObject:self->_keyColor];
  v7 = [v6 appendBool:self->_preventsInteractiveGestures];
  v8 = [v7 appendCGRect:{self->_preferredLeadingBounds.origin.x, self->_preferredLeadingBounds.origin.y, self->_preferredLeadingBounds.size.width, self->_preferredLeadingBounds.size.height}];
  v9 = [v8 appendCGRect:{self->_preferredTrailingBounds.origin.x, self->_preferredTrailingBounds.origin.y, self->_preferredTrailingBounds.size.width, self->_preferredTrailingBounds.size.height}];
  v10 = [v9 appendCGRect:{self->_preferredMinimalBounds.origin.x, self->_preferredMinimalBounds.origin.y, self->_preferredMinimalBounds.size.width, self->_preferredMinimalBounds.size.height}];
  v11 = [v10 appendInteger:self->_viewControllerAppearState];
  v12 = [v11 appendBool:self->_requestingMenuPresentation];
  v14 = [v12 hash];

  return v14;
}

- (NSString)description
{
  v20 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  clientIdentifier = self->_clientIdentifier;
  v19 = v3;
  elementIdentifier = self->_elementIdentifier;
  v16 = SAUIStringFromElementViewLayoutMode();
  v15 = NSStringFromDirectionalEdgeInsets(self->_preferredEdgeOutsets);
  v23 = SBSAStringFromUIInterfaceOrientation(self->_interfaceOrientation);
  v22 = SBStringFromSystemApertureCustomLayout(self->_systemApertureCustomLayout);
  v21 = SBStringFromSystemApertureCustomLayout(self->_systemApertureCustomLayoutCustomAnimationStyle);
  v13 = SBStringFromSystemApertureLayoutCustomizingOptions(self->_systemApertureLayoutCustomizingOptions);
  v4 = SBStringFromSBSADynamicPersistentAnimation(self->_activeDynamicAnimation);
  keyColor = self->_keyColor;
  v5 = NSStringFromBOOL();
  v6 = NSStringFromCGRect(self->_preferredLeadingBounds);
  v7 = NSStringFromCGRect(self->_preferredTrailingBounds);
  v8 = NSStringFromCGRect(self->_preferredMinimalBounds);
  v9 = SBSAStringFromUIViewControllerAppearState(self->_viewControllerAppearState);
  v10 = NSStringFromBOOL();
  v11 = [v20 stringWithFormat:@"<%@: %p clientIdentifier: %@; elementIdentifier: %@; layoutMode: %@; preferredEdgeOutsets: %@; interfaceOrientation: %@; systemApertureCustomLayout: %@; systemApertureCustomLayoutCustomAnimationStyle: %@; systemApertureLayoutCustomizingOptions: %@; activeDynamicAnimation: %@; keyColor: %@; preventsInteractiveGestures: %@; preferredLeadingBounds: %@; preferredTrailingBounds: %@; preferredMinimalBounds: %@; viewControllerAppearState: %@; requestingMenuPresentation: %@;>", v19, self, clientIdentifier, elementIdentifier, v16, v15, v23, v22, v21, v13, v4, keyColor, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithSystemApertureElementContext:self];
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSAElementContext *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end