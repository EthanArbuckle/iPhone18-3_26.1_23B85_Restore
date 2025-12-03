@interface SBSAContainerViewDescription
- (BOOL)isEqual:(id)equal;
- (CGPoint)contentCenter;
- (CGRect)contentBounds;
- (CGSize)contentScale;
- (NSString)description;
- (id)copyByPixelAligningGeometryWithScale:(double)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration;
@end

@implementation SBSAContainerViewDescription

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)contentCenter
{
  x = self->_contentCenter.x;
  y = self->_contentCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)contentScale
{
  width = self->_contentScale.width;
  height = self->_contentScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyByPixelAligningGeometryWithScale:(double)scale
{
  v10.receiver = self;
  v10.super_class = SBSAContainerViewDescription;
  v6 = [(SBSAViewDescription *)&v10 copyByPixelAligningGeometryWithScale:?];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBSAContainerViewDescription_copyByPixelAligningGeometryWithScale___block_invoke;
  v9[3] = &unk_2783ACD90;
  v9[4] = self;
  v9[5] = a2;
  *&v9[6] = scale;
  v7 = [v6 copyWithBlock:v9];

  return v7;
}

void __69__SBSAContainerViewDescription_copyByPixelAligningGeometryWithScale___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __69__SBSAContainerViewDescription_copyByPixelAligningGeometryWithScale___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) contentBounds];
  [*(a1 + 32) contentCenter];
  SBUnintegralizedRectCenteredAboutPoint();
  UIRectRoundToScale();
  BSRectWithSize();
  [v6 setContentBounds:?];
  UIRectGetCenter();
  [v6 setContentCenter:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v36 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke;
  v59[3] = &unk_2783A94B0;
  v60 = equalCopy;
  selfCopy = self;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_2;
  v57[3] = &unk_2783A94B0;
  v57[4] = self;
  v5 = v60;
  v58 = v5;
  v35 = MEMORY[0x223D6F7F0](v57);
  v34 = [v36 appendEqualsBlocks:{v59, v35, 0}];
  associatedSystemApertureElementIdentity = self->_associatedSystemApertureElementIdentity;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_3;
  v55[3] = &unk_2783ACDB8;
  v7 = v5;
  v56 = v7;
  v33 = [v34 appendObject:associatedSystemApertureElementIdentity counterpart:v55];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_4;
  v53[3] = &unk_2783BA168;
  v8 = v7;
  v54 = v8;
  v32 = [v33 appendCGSize:v53 counterpart:{self->_contentScale.width, self->_contentScale.height}];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_5;
  v51[3] = &unk_2783B0268;
  v9 = v8;
  v52 = v9;
  v31 = [v32 appendCGRect:v51 counterpart:{self->_contentBounds.origin.x, self->_contentBounds.origin.y, self->_contentBounds.size.width, self->_contentBounds.size.height}];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_6;
  v49[3] = &unk_2783A94D8;
  v10 = v9;
  v50 = v10;
  v11 = [v31 appendCGPoint:v49 counterpart:{self->_contentCenter.x, self->_contentCenter.y}];
  keyLineMode = self->_keyLineMode;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_7;
  v47[3] = &unk_2783ACDE0;
  v13 = v10;
  v48 = v13;
  v14 = [v11 appendInteger:keyLineMode counterpart:v47];
  keyLineTintColor = self->_keyLineTintColor;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_8;
  v45[3] = &unk_2783ACDB8;
  v16 = v13;
  v46 = v16;
  v17 = [v14 appendObject:keyLineTintColor counterpart:v45];
  sampledBackgroundLuminanceLevel = self->_sampledBackgroundLuminanceLevel;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_9;
  v43[3] = &unk_2783ACDE0;
  v19 = v16;
  v44 = v19;
  v20 = [v17 appendInteger:sampledBackgroundLuminanceLevel counterpart:v43];
  shadowStyle = self->_shadowStyle;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_10;
  v41[3] = &unk_2783ACDE0;
  v22 = v19;
  v42 = v22;
  v23 = [v20 appendInteger:shadowStyle counterpart:v41];
  contentClippingEnabled = self->_contentClippingEnabled;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_11;
  v39[3] = &unk_2783ACE58;
  v25 = v22;
  v40 = v25;
  v26 = [v23 appendBool:contentClippingEnabled counterpart:v39];
  userInteractionEnabled = self->_userInteractionEnabled;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __40__SBSAContainerViewDescription_isEqual___block_invoke_12;
  v37[3] = &unk_2783ACE58;
  v38 = v25;
  v28 = v25;
  v29 = [v26 appendBool:userInteractionEnabled counterpart:v37];
  LOBYTE(userInteractionEnabled) = [v29 isEqual];

  return userInteractionEnabled;
}

id __40__SBSAContainerViewDescription_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = SBSAContainerViewDescription;
  return objc_msgSendSuper2(&v3, sel_isEqual_, v1);
}

BOOL __40__SBSAContainerViewDescription_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    [v1 renderingConfiguration];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v3 = *(v2 + 216);
  v6 = *(v2 + 232);
  v5 = v3;
  return SBSystemApertureContainerRenderingConfigurationEqualToConfiguration(&v5, v7);
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__SBSAContainerViewDescription_hash__block_invoke;
  v19[3] = &unk_2783A9500;
  v19[4] = self;
  v17 = [builder appendHashingBlocks:{v19, 0}];
  v16 = [v17 appendObject:self->_associatedSystemApertureElementIdentity];
  v15 = [v16 appendCGSize:{self->_contentScale.width, self->_contentScale.height}];
  v14 = [v15 appendCGRect:{self->_contentBounds.origin.x, self->_contentBounds.origin.y, self->_contentBounds.size.width, self->_contentBounds.size.height}];
  v3 = [v14 appendCGPoint:{self->_contentCenter.x, self->_contentCenter.y}];
  v4 = [v3 appendInteger:self->_keyLineMode];
  v5 = [v4 appendObject:self->_keyLineTintColor];
  v6 = [v5 appendInteger:self->_sampledBackgroundLuminanceLevel];
  v7 = [v6 appendInteger:self->_shadowStyle];
  v8 = [v7 appendInteger:self->_renderingConfiguration.renderingStyle];
  v9 = [v8 appendInteger:self->_renderingConfiguration.cloningStyle];
  v10 = [v9 appendBool:self->_contentClippingEnabled];
  v11 = [v10 appendBool:self->_userInteractionEnabled];
  v12 = [v11 hash];

  return v12;
}

id __36__SBSAContainerViewDescription_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = SBSAContainerViewDescription;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (NSString)description
{
  v20.receiver = self;
  v20.super_class = SBSAContainerViewDescription;
  v3 = [(SBSAViewDescription *)&v20 description];
  v16 = [v3 mutableCopy];

  v15 = MEMORY[0x277CCACA8];
  v18 = SAElementIdentityDescription();
  v17 = NSStringFromCGSize(self->_contentScale);
  v14 = NSStringFromCGRect(self->_contentBounds);
  v4 = NSStringFromCGPoint(self->_contentCenter);
  v5 = SBStringFromSystemApertureKeyLineMode(self->_keyLineMode);
  v6 = [(UIColor *)self->_keyLineTintColor description];
  v7 = SBStringFromSystemApertureBackgroundLuminanceLevel(self->_sampledBackgroundLuminanceLevel);
  v8 = SBStringFromSystemApertureShadowStyle(self->_shadowStyle);
  renderingConfiguration = self->_renderingConfiguration;
  v9 = SBStringFromSystemApertureContainerRenderingConfiguration(&renderingConfiguration);
  v10 = NSStringFromBOOL();
  v11 = NSStringFromBOOL();
  v12 = [v15 stringWithFormat:@" associatedSystemApertureElementID: %@; contentScale: %@; contentBounds: %@; contentCenter: %@; keyLineMode: %@; keyLineTintColor: %@; sampledBackgroundLuminanceLevel: %@; shadowStyle: %@, renderingConfiguration: %@; isContentClippingEnabled: %@; isUserInteractionEnabled: %@;", v18, v17, v14, v4, v5, v6, v7, v8, v9, v10, v11];;
  [v16 insertString:v12 atIndex:{objc_msgSend(v16, "rangeOfString:options:", @">", 4)}];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = SBSAContainerViewDescription;
  v4 = [(SBSAViewDescription *)&v15 copyWithZone:zone];
  if (self->_associatedSystemApertureElementIdentity)
  {
    v5 = [SBSAElementIdentification alloc];
    clientIdentifier = [(SAElementIdentifying *)self->_associatedSystemApertureElementIdentity clientIdentifier];
    elementIdentifier = [(SAElementIdentifying *)self->_associatedSystemApertureElementIdentity elementIdentifier];
    v8 = [(SBSAElementIdentification *)v5 initWithClientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
    v9 = *(v4 + 18);
    *(v4 + 18) = v8;
  }

  *(v4 + 184) = self->_contentScale;
  size = self->_contentBounds.size;
  *(v4 + 15) = self->_contentBounds.origin;
  *(v4 + 16) = size;
  *(v4 + 200) = self->_contentCenter;
  *(v4 + 19) = self->_keyLineMode;
  v11 = [(UIColor *)self->_keyLineTintColor copy];
  v12 = *(v4 + 20);
  *(v4 + 20) = v11;

  *(v4 + 21) = self->_sampledBackgroundLuminanceLevel;
  *(v4 + 22) = self->_shadowStyle;
  v13 = *&self->_renderingConfiguration.alwaysRenderInSnapshots;
  *(v4 + 216) = *&self->_renderingConfiguration.renderingStyle;
  *(v4 + 29) = v13;
  v4[136] = self->_contentClippingEnabled;
  v4[137] = self->_userInteractionEnabled;
  return v4;
}

- (void)_setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration
{
  v3 = *&configuration->alwaysRenderInSnapshots;
  *&self->_renderingConfiguration.renderingStyle = *&configuration->renderingStyle;
  *&self->_renderingConfiguration.alwaysRenderInSnapshots = v3;
}

void __69__SBSAContainerViewDescription_copyByPixelAligningGeometryWithScale___block_invoke_cold_1(uint64_t a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v2 file:@"SBSAContainerViewDescription.m" lineNumber:43 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

@end