@interface SBSAElementDescription
+ (id)instanceWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)leadingViewTransform;
- (CGAffineTransform)minimalViewTransform;
- (CGAffineTransform)trailingViewTransform;
- (CGSize)leadingViewScale;
- (CGSize)minimalViewScale;
- (CGSize)trailingViewScale;
- (NSString)description;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setLeadingViewTransform:(CGAffineTransform *)a3;
- (void)_setMinimalViewTransform:(CGAffineTransform *)a3;
- (void)_setTrailingViewTransform:(CGAffineTransform *)a3;
@end

@implementation SBSAElementDescription

- (CGAffineTransform)leadingViewTransform
{
  v3 = *&self[4].d;
  *&retstr->a = *&self[4].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].ty;
  return self;
}

- (CGAffineTransform)trailingViewTransform
{
  v3 = *&self[5].d;
  v4 = *&self[5].ty;
  *&retstr->a = *&self[5].b;
  *&retstr->c = v3;
  *&retstr->tx = v4;
  return self;
}

- (CGAffineTransform)minimalViewTransform
{
  v3 = *&self[6].d;
  *&retstr->a = *&self[6].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].ty;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v76 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  interfaceElementIdentifier = self->_interfaceElementIdentifier;
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __34__SBSAElementDescription_isEqual___block_invoke;
  v126[3] = &unk_2783ACDB8;
  v6 = v4;
  v127 = v6;
  v75 = [v76 appendObject:interfaceElementIdentifier counterpart:v126];
  associatedSystemApertureElementIdentity = self->_associatedSystemApertureElementIdentity;
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __34__SBSAElementDescription_isEqual___block_invoke_2;
  v124[3] = &unk_2783ACDB8;
  v8 = v6;
  v125 = v8;
  v74 = [v75 appendObject:associatedSystemApertureElementIdentity counterpart:v124];
  appearState = self->_appearState;
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __34__SBSAElementDescription_isEqual___block_invoke_3;
  v122[3] = &unk_2783ACDE0;
  v10 = v8;
  v123 = v10;
  v73 = [v74 appendInteger:appearState counterpart:v122];
  sensorObscuringShadowProgress = self->_sensorObscuringShadowProgress;
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = __34__SBSAElementDescription_isEqual___block_invoke_4;
  v120[3] = &unk_2783ACE08;
  v12 = v10;
  v121 = v12;
  v72 = [v73 appendCGFloat:v120 counterpart:sensorObscuringShadowProgress];
  leadingViewBlurProgress = self->_leadingViewBlurProgress;
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __34__SBSAElementDescription_isEqual___block_invoke_5;
  v118[3] = &unk_2783ACE08;
  v14 = v12;
  v119 = v14;
  v71 = [v72 appendCGFloat:v118 counterpart:leadingViewBlurProgress];
  leadingViewAlpha = self->_leadingViewAlpha;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __34__SBSAElementDescription_isEqual___block_invoke_6;
  v116[3] = &unk_2783ACE08;
  v16 = v14;
  v117 = v16;
  v70 = [v71 appendCGFloat:v116 counterpart:leadingViewAlpha];
  leadingViewSquishProgress = self->_leadingViewSquishProgress;
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __34__SBSAElementDescription_isEqual___block_invoke_7;
  v114[3] = &unk_2783ACE08;
  v18 = v16;
  v115 = v18;
  v69 = [v70 appendCGFloat:v114 counterpart:leadingViewSquishProgress];
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __34__SBSAElementDescription_isEqual___block_invoke_8;
  v112[3] = &unk_2783BA168;
  v19 = v18;
  v113 = v19;
  v68 = [v69 appendCGSize:v112 counterpart:{self->_leadingViewScale.width, self->_leadingViewScale.height}];
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __34__SBSAElementDescription_isEqual___block_invoke_9;
  v110[3] = &unk_2783ACE30;
  v20 = v19;
  v111 = v20;
  v21 = *&self->_leadingViewTransform.c;
  v107 = *&self->_leadingViewTransform.a;
  v108 = v21;
  v109 = *&self->_leadingViewTransform.tx;
  v67 = [v68 appendCGAffineTransform:&v107 counterpart:v110];
  trailingViewBlurProgress = self->_trailingViewBlurProgress;
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __34__SBSAElementDescription_isEqual___block_invoke_10;
  v105[3] = &unk_2783ACE08;
  v23 = v20;
  v106 = v23;
  v66 = [v67 appendCGFloat:v105 counterpart:trailingViewBlurProgress];
  trailingViewAlpha = self->_trailingViewAlpha;
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __34__SBSAElementDescription_isEqual___block_invoke_11;
  v103[3] = &unk_2783ACE08;
  v25 = v23;
  v104 = v25;
  v65 = [v66 appendCGFloat:v103 counterpart:trailingViewAlpha];
  trailingViewSquishProgress = self->_trailingViewSquishProgress;
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __34__SBSAElementDescription_isEqual___block_invoke_12;
  v101[3] = &unk_2783ACE08;
  v27 = v25;
  v102 = v27;
  v64 = [v65 appendCGFloat:v101 counterpart:trailingViewSquishProgress];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __34__SBSAElementDescription_isEqual___block_invoke_13;
  v99[3] = &unk_2783BA168;
  v28 = v27;
  v100 = v28;
  v63 = [v64 appendCGSize:v99 counterpart:{self->_trailingViewScale.width, self->_trailingViewScale.height}];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __34__SBSAElementDescription_isEqual___block_invoke_14;
  v97[3] = &unk_2783ACE30;
  v29 = v28;
  v98 = v29;
  v30 = *&self->_trailingViewTransform.c;
  v31 = *&self->_trailingViewTransform.tx;
  v107 = *&self->_trailingViewTransform.a;
  v108 = v30;
  v109 = v31;
  v62 = [v63 appendCGAffineTransform:&v107 counterpart:v97];
  minimalViewBlurProgress = self->_minimalViewBlurProgress;
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __34__SBSAElementDescription_isEqual___block_invoke_15;
  v95[3] = &unk_2783ACE08;
  v33 = v29;
  v96 = v33;
  v61 = [v62 appendCGFloat:v95 counterpart:minimalViewBlurProgress];
  minimalViewAlpha = self->_minimalViewAlpha;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __34__SBSAElementDescription_isEqual___block_invoke_16;
  v93[3] = &unk_2783ACE08;
  v35 = v33;
  v94 = v35;
  v36 = [v61 appendCGFloat:v93 counterpart:minimalViewAlpha];
  minimalViewSquishProgress = self->_minimalViewSquishProgress;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __34__SBSAElementDescription_isEqual___block_invoke_17;
  v91[3] = &unk_2783ACE08;
  v38 = v35;
  v92 = v38;
  v39 = [v36 appendCGFloat:v91 counterpart:minimalViewSquishProgress];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __34__SBSAElementDescription_isEqual___block_invoke_18;
  v89[3] = &unk_2783BA168;
  v40 = v38;
  v90 = v40;
  v41 = [v39 appendCGSize:v89 counterpart:{self->_minimalViewScale.width, self->_minimalViewScale.height}];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __34__SBSAElementDescription_isEqual___block_invoke_19;
  v87[3] = &unk_2783ACE30;
  v42 = v40;
  v88 = v42;
  v43 = *&self->_minimalViewTransform.c;
  v107 = *&self->_minimalViewTransform.a;
  v108 = v43;
  v109 = *&self->_minimalViewTransform.tx;
  v44 = [v41 appendCGAffineTransform:&v107 counterpart:v87];
  customContentBlurProgress = self->_customContentBlurProgress;
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __34__SBSAElementDescription_isEqual___block_invoke_20;
  v85[3] = &unk_2783ACE08;
  v46 = v42;
  v86 = v46;
  v47 = [v44 appendCGFloat:v85 counterpart:customContentBlurProgress];
  customContentAlpha = self->_customContentAlpha;
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __34__SBSAElementDescription_isEqual___block_invoke_21;
  v83[3] = &unk_2783ACE08;
  v49 = v46;
  v84 = v49;
  v50 = [v47 appendCGFloat:v83 counterpart:customContentAlpha];
  snapshotViewBlurProgress = self->_snapshotViewBlurProgress;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __34__SBSAElementDescription_isEqual___block_invoke_22;
  v81[3] = &unk_2783ACE08;
  v52 = v49;
  v82 = v52;
  v53 = [v50 appendCGFloat:v81 counterpart:snapshotViewBlurProgress];
  snapshotViewAlpha = self->_snapshotViewAlpha;
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __34__SBSAElementDescription_isEqual___block_invoke_23;
  v79[3] = &unk_2783ACE08;
  v55 = v52;
  v80 = v55;
  v56 = [v53 appendCGFloat:v79 counterpart:snapshotViewAlpha];
  snapshotReason = self->_snapshotReason;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __34__SBSAElementDescription_isEqual___block_invoke_24;
  v77[3] = &unk_2783B1D60;
  v78 = v55;
  v60 = v55;
  v58 = [v56 appendString:snapshotReason counterpart:v77];
  LOBYTE(v55) = [v58 isEqual];

  return v55;
}

double __34__SBSAElementDescription_isEqual___block_invoke_9@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 leadingViewTransform];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double __34__SBSAElementDescription_isEqual___block_invoke_14@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 trailingViewTransform];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double __34__SBSAElementDescription_isEqual___block_invoke_19@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 minimalViewTransform];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

- (unint64_t)hash
{
  v33 = [MEMORY[0x277CF0C40] builder];
  v32 = [v33 appendObject:self->_interfaceElementIdentifier];
  v31 = [v32 appendObject:self->_associatedSystemApertureElementIdentity];
  v30 = [v31 appendInteger:self->_appearState];
  v29 = [v30 appendCGFloat:self->_sensorObscuringShadowProgress];
  v28 = [v29 appendCGFloat:self->_leadingViewBlurProgress];
  v27 = [v28 appendCGFloat:self->_leadingViewAlpha];
  v26 = [v27 appendCGFloat:self->_leadingViewSquishProgress];
  v25 = [v26 appendCGSize:{self->_leadingViewScale.width, self->_leadingViewScale.height}];
  v3 = *&self->_leadingViewTransform.c;
  v34 = *&self->_leadingViewTransform.a;
  v35 = v3;
  v36 = *&self->_leadingViewTransform.tx;
  v24 = [v25 appendCGAffineTransform:&v34];
  v23 = [v24 appendCGFloat:self->_trailingViewBlurProgress];
  v22 = [v23 appendCGFloat:self->_trailingViewAlpha];
  v21 = [v22 appendCGFloat:self->_trailingViewSquishProgress];
  v20 = [v21 appendCGSize:{self->_trailingViewScale.width, self->_trailingViewScale.height}];
  v4 = *&self->_trailingViewTransform.c;
  v5 = *&self->_trailingViewTransform.tx;
  v34 = *&self->_trailingViewTransform.a;
  v35 = v4;
  v36 = v5;
  v19 = [v20 appendCGAffineTransform:&v34];
  v6 = [v19 appendCGFloat:self->_minimalViewBlurProgress];
  v7 = [v6 appendCGFloat:self->_minimalViewAlpha];
  v8 = [v7 appendCGFloat:self->_minimalViewSquishProgress];
  v9 = [v8 appendCGSize:{self->_minimalViewScale.width, self->_minimalViewScale.height}];
  v10 = *&self->_minimalViewTransform.c;
  v34 = *&self->_minimalViewTransform.a;
  v35 = v10;
  v36 = *&self->_minimalViewTransform.tx;
  v11 = [v9 appendCGAffineTransform:&v34];
  v12 = [v11 appendCGFloat:self->_customContentBlurProgress];
  v13 = [v12 appendCGFloat:self->_customContentAlpha];
  v14 = [v13 appendCGFloat:self->_snapshotViewBlurProgress];
  v15 = [v14 appendCGFloat:self->_snapshotViewAlpha];
  v16 = [v15 appendString:self->_snapshotReason];
  v18 = [v16 hash];

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  interfaceElementIdentifier = self->_interfaceElementIdentifier;
  v7 = SAElementIdentityDescription();
  v8 = SBSAStringFromUIViewControllerAppearState(self->_appearState);
  v28 = *&self->_leadingViewAlpha;
  v29 = *&self->_sensorObscuringShadowProgress;
  width = self->_leadingViewScale.width;
  height = self->_leadingViewScale.height;
  v11 = *&self->_leadingViewTransform.c;
  *&transform.a = *&self->_leadingViewTransform.a;
  *&transform.c = v11;
  *&transform.tx = *&self->_leadingViewTransform.tx;
  v12 = NSStringFromCGAffineTransform(&transform);
  v27 = *&self->_trailingViewBlurProgress;
  trailingViewSquishProgress = self->_trailingViewSquishProgress;
  v14 = self->_trailingViewScale.width;
  v15 = self->_trailingViewScale.height;
  v16 = *&self->_trailingViewTransform.c;
  v17 = *&self->_trailingViewTransform.tx;
  *&transform.a = *&self->_trailingViewTransform.a;
  *&transform.c = v16;
  *&transform.tx = v17;
  v18 = NSStringFromCGAffineTransform(&transform);
  v26 = *&self->_minimalViewBlurProgress;
  minimalViewSquishProgress = self->_minimalViewSquishProgress;
  v20 = self->_minimalViewScale.width;
  v21 = self->_minimalViewScale.height;
  v22 = *&self->_minimalViewTransform.c;
  *&transform.a = *&self->_minimalViewTransform.a;
  *&transform.c = v22;
  *&transform.tx = *&self->_minimalViewTransform.tx;
  v23 = NSStringFromCGAffineTransform(&transform);
  v24 = [v3 stringWithFormat:@"<%@: %p interfaceElementIdentifier: %@; associatedSystemApertureElementID: %@; appearState: %@; sensorObscuringShadowProgress: %f; leadingViewBlurProgress: %f; leadingViewAlpha: %f; leadingViewSquishProgress: %f; leadingViewScale: (%f, %f); leadingViewTransform: %@; trailingViewBlurProgress: %f; trailingViewAlpha: %f; trailingViewSquishProgress: %f; trailingViewScale: (%f, %f); trailingViewTransform: %@; minimalViewBlurProgress: %f; minimalViewAlpha: %f; minimalViewSquishProgress: %f; minimalViewScale: (%f, %f); minimalViewTransform: %@; customContentBlurProgress: %f; customContentAlpha: %f; snapshotViewBlurProgress: %f; snapshotViewAlpha: %f; snapshotReason: %@>", v5, self, interfaceElementIdentifier, v7, v8, v29, v28, *&width, *&height, v12, v27, *&trailingViewSquishProgress, *&v14, *&v15, v18, v26, *&minimalViewSquishProgress, *&v20, *&v21, v23, *&self->_customContentBlurProgress, *&self->_customContentAlpha, *&self->_snapshotViewBlurProgress, *&self->_snapshotViewAlpha, self->_snapshotReason];;

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSUUID *)self->_interfaceElementIdentifier copy];
  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  if (self->_associatedSystemApertureElementIdentity)
  {
    v7 = [SBSAElementIdentification alloc];
    v8 = [(SAElementIdentifying *)self->_associatedSystemApertureElementIdentity clientIdentifier];
    v9 = [(SAElementIdentifying *)self->_associatedSystemApertureElementIdentity elementIdentifier];
    v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:v8 elementIdentifier:v9];
    v11 = *(v4 + 3);
    *(v4 + 3) = v10;
  }

  *(v4 + 2) = self->_appearState;
  *(v4 + 4) = *&self->_sensorObscuringShadowProgress;
  *(v4 + 5) = *&self->_leadingViewBlurProgress;
  *(v4 + 6) = *&self->_leadingViewAlpha;
  *(v4 + 7) = *&self->_leadingViewSquishProgress;
  *(v4 + 152) = self->_leadingViewScale;
  v12 = *&self->_leadingViewTransform.a;
  v13 = *&self->_leadingViewTransform.c;
  *(v4 + 232) = *&self->_leadingViewTransform.tx;
  *(v4 + 216) = v13;
  *(v4 + 200) = v12;
  *(v4 + 8) = *&self->_trailingViewBlurProgress;
  *(v4 + 9) = *&self->_trailingViewAlpha;
  *(v4 + 10) = *&self->_trailingViewSquishProgress;
  *(v4 + 168) = self->_trailingViewScale;
  v14 = *&self->_trailingViewTransform.a;
  v15 = *&self->_trailingViewTransform.tx;
  *(v4 + 264) = *&self->_trailingViewTransform.c;
  *(v4 + 280) = v15;
  *(v4 + 248) = v14;
  *(v4 + 11) = *&self->_minimalViewBlurProgress;
  *(v4 + 12) = *&self->_minimalViewAlpha;
  *(v4 + 13) = *&self->_minimalViewSquishProgress;
  *(v4 + 184) = self->_minimalViewScale;
  v16 = *&self->_minimalViewTransform.a;
  v17 = *&self->_minimalViewTransform.tx;
  *(v4 + 312) = *&self->_minimalViewTransform.c;
  *(v4 + 328) = v17;
  *(v4 + 296) = v16;
  *(v4 + 14) = *&self->_customContentBlurProgress;
  *(v4 + 15) = *&self->_customContentAlpha;
  *(v4 + 16) = *&self->_snapshotViewBlurProgress;
  *(v4 + 17) = *&self->_snapshotViewAlpha;
  v18 = [(NSString *)self->_snapshotReason copy];
  v19 = *(v4 + 18);
  *(v4 + 18) = v18;

  return v4;
}

+ (id)instanceWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:v3];

  return v5;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSAElementDescription *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

- (CGSize)leadingViewScale
{
  width = self->_leadingViewScale.width;
  height = self->_leadingViewScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setLeadingViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_leadingViewTransform.tx = *&a3->tx;
  *&self->_leadingViewTransform.c = v4;
  *&self->_leadingViewTransform.a = v3;
}

- (CGSize)trailingViewScale
{
  width = self->_trailingViewScale.width;
  height = self->_trailingViewScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setTrailingViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_trailingViewTransform.c = *&a3->c;
  *&self->_trailingViewTransform.tx = v4;
  *&self->_trailingViewTransform.a = v3;
}

- (CGSize)minimalViewScale
{
  width = self->_minimalViewScale.width;
  height = self->_minimalViewScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setMinimalViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_minimalViewTransform.c = *&a3->c;
  *&self->_minimalViewTransform.tx = v4;
  *&self->_minimalViewTransform.a = v3;
}

@end