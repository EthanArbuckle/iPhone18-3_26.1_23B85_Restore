@interface SBSAIndicatorElementDescription
+ (id)instanceWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)fixedIndicatorViewTransform;
- (CGAffineTransform)indicatorViewTransform;
- (NSString)description;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setFixedIndicatorViewTransform:(CGAffineTransform *)a3;
- (void)_setIndicatorViewTransform:(CGAffineTransform *)a3;
@end

@implementation SBSAIndicatorElementDescription

- (CGAffineTransform)indicatorViewTransform
{
  v3 = *&self[1].tx;
  *&retstr->a = *&self[1].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].a;
  return self;
}

- (CGAffineTransform)fixedIndicatorViewTransform
{
  v3 = *&self[2].tx;
  *&retstr->a = *&self[2].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].a;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v36 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  interfaceElementIdentifier = self->_interfaceElementIdentifier;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke;
  v58[3] = &unk_2783ACDB8;
  v6 = v4;
  v59 = v6;
  v35 = [v36 appendObject:interfaceElementIdentifier counterpart:v58];
  associatedSystemApertureElementIdentity = self->_associatedSystemApertureElementIdentity;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_2;
  v56[3] = &unk_2783ACDB8;
  v8 = v6;
  v57 = v8;
  v34 = [v35 appendObject:associatedSystemApertureElementIdentity counterpart:v56];
  appearState = self->_appearState;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_3;
  v54[3] = &unk_2783ACDE0;
  v10 = v8;
  v55 = v10;
  v11 = [v34 appendInteger:appearState counterpart:v54];
  indicatorViewBlurProgress = self->_indicatorViewBlurProgress;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_4;
  v52[3] = &unk_2783ACE08;
  v13 = v10;
  v53 = v13;
  v14 = [v11 appendCGFloat:v52 counterpart:indicatorViewBlurProgress];
  indicatorViewAlpha = self->_indicatorViewAlpha;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_5;
  v50[3] = &unk_2783ACE08;
  v16 = v13;
  v51 = v16;
  v17 = [v14 appendCGFloat:v50 counterpart:indicatorViewAlpha];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_6;
  v48[3] = &unk_2783ACE30;
  v18 = v16;
  v49 = v18;
  v19 = *&self->_indicatorViewTransform.c;
  v45 = *&self->_indicatorViewTransform.a;
  v46 = v19;
  v47 = *&self->_indicatorViewTransform.tx;
  v20 = [v17 appendCGAffineTransform:&v45 counterpart:v48];
  fixedIndicatorViewBlurProgress = self->_fixedIndicatorViewBlurProgress;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_7;
  v43[3] = &unk_2783ACE08;
  v22 = v18;
  v44 = v22;
  v23 = [v20 appendCGFloat:v43 counterpart:fixedIndicatorViewBlurProgress];
  fixedIndicatorViewAlpha = self->_fixedIndicatorViewAlpha;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_8;
  v41[3] = &unk_2783ACE08;
  v25 = v22;
  v42 = v25;
  v26 = [v23 appendCGFloat:v41 counterpart:fixedIndicatorViewAlpha];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_9;
  v39[3] = &unk_2783ACE30;
  v27 = v25;
  v40 = v27;
  v28 = *&self->_fixedIndicatorViewTransform.c;
  v45 = *&self->_fixedIndicatorViewTransform.a;
  v46 = v28;
  v47 = *&self->_fixedIndicatorViewTransform.tx;
  v29 = [v26 appendCGAffineTransform:&v45 counterpart:v39];
  needsMatchMoveAnimationBetweenCurtainAndJindoViews = self->_needsMatchMoveAnimationBetweenCurtainAndJindoViews;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __43__SBSAIndicatorElementDescription_isEqual___block_invoke_10;
  v37[3] = &unk_2783ACE58;
  v38 = v27;
  v31 = v27;
  v32 = [v29 appendBool:needsMatchMoveAnimationBetweenCurtainAndJindoViews counterpart:v37];
  LOBYTE(v27) = [v32 isEqual];

  return v27;
}

double __43__SBSAIndicatorElementDescription_isEqual___block_invoke_6@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 indicatorViewTransform];
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

double __43__SBSAIndicatorElementDescription_isEqual___block_invoke_9@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 fixedIndicatorViewTransform];
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
  v17 = [MEMORY[0x277CF0C40] builder];
  v16 = [v17 appendObject:self->_interfaceElementIdentifier];
  v3 = [v16 appendObject:self->_associatedSystemApertureElementIdentity];
  v4 = [v3 appendInteger:self->_appearState];
  v5 = [v4 appendCGFloat:self->_indicatorViewBlurProgress];
  v6 = [v5 appendCGFloat:self->_indicatorViewAlpha];
  v7 = *&self->_indicatorViewTransform.c;
  v18 = *&self->_indicatorViewTransform.a;
  v19 = v7;
  v20 = *&self->_indicatorViewTransform.tx;
  v8 = [v6 appendCGAffineTransform:&v18];
  v9 = [v8 appendCGFloat:self->_fixedIndicatorViewBlurProgress];
  v10 = [v9 appendCGFloat:self->_fixedIndicatorViewAlpha];
  v11 = *&self->_fixedIndicatorViewTransform.c;
  v18 = *&self->_fixedIndicatorViewTransform.a;
  v19 = v11;
  v20 = *&self->_fixedIndicatorViewTransform.tx;
  v12 = [v10 appendCGAffineTransform:&v18];
  v13 = [v12 appendBool:self->_needsMatchMoveAnimationBetweenCurtainAndJindoViews];
  v14 = [v13 hash];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  interfaceElementIdentifier = self->_interfaceElementIdentifier;
  v7 = SAElementIdentityDescription();
  v8 = SBSAStringFromUIViewControllerAppearState(self->_appearState);
  indicatorViewBlurProgress = self->_indicatorViewBlurProgress;
  indicatorViewAlpha = self->_indicatorViewAlpha;
  v11 = *&self->_indicatorViewTransform.c;
  *&transform.a = *&self->_indicatorViewTransform.a;
  *&transform.c = v11;
  *&transform.tx = *&self->_indicatorViewTransform.tx;
  v12 = NSStringFromCGAffineTransform(&transform);
  fixedIndicatorViewBlurProgress = self->_fixedIndicatorViewBlurProgress;
  fixedIndicatorViewAlpha = self->_fixedIndicatorViewAlpha;
  v15 = *&self->_fixedIndicatorViewTransform.c;
  *&transform.a = *&self->_fixedIndicatorViewTransform.a;
  *&transform.c = v15;
  *&transform.tx = *&self->_fixedIndicatorViewTransform.tx;
  v16 = NSStringFromCGAffineTransform(&transform);
  v17 = NSStringFromBOOL();
  v18 = [v3 stringWithFormat:@"<%@: %p interfaceElementIdentifier: %@; associatedSystemApertureElementID: %@; appearState: %@;; indicatorViewBlurProgress: %f; indicatorViewAlpha: %f; indicatorViewTransform: %@; fixedIndicatorViewBlurProgress: %f; fixedIndicatorViewAlpha: %f; fixedIndicatorViewTransform: %@; needsMatchMoveAnimationBetweenCurtainAndJindoViews: %@;>", v5, self, interfaceElementIdentifier, v7, v8, *&indicatorViewBlurProgress, *&indicatorViewAlpha, v12, *&fixedIndicatorViewBlurProgress, *&fixedIndicatorViewAlpha, v16, v17];;

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSUUID *)self->_interfaceElementIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  if (self->_associatedSystemApertureElementIdentity)
  {
    v7 = [SBSAElementIdentification alloc];
    v8 = [(SAElementIdentifying *)self->_associatedSystemApertureElementIdentity clientIdentifier];
    v9 = [(SAElementIdentifying *)self->_associatedSystemApertureElementIdentity elementIdentifier];
    v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:v8 elementIdentifier:v9];
    v11 = v4[3];
    v4[3] = v10;
  }

  *(v4 + 3) = self->_appearState;
  v4[4] = *&self->_indicatorViewBlurProgress;
  v4[5] = *&self->_indicatorViewAlpha;
  v12 = *&self->_indicatorViewTransform.a;
  v13 = *&self->_indicatorViewTransform.tx;
  *(v4 + 5) = *&self->_indicatorViewTransform.c;
  *(v4 + 6) = v13;
  *(v4 + 4) = v12;
  v4[6] = *&self->_fixedIndicatorViewBlurProgress;
  v4[7] = *&self->_fixedIndicatorViewAlpha;
  v14 = *&self->_fixedIndicatorViewTransform.a;
  v15 = *&self->_fixedIndicatorViewTransform.tx;
  *(v4 + 8) = *&self->_fixedIndicatorViewTransform.c;
  *(v4 + 9) = v15;
  *(v4 + 7) = v14;
  *(v4 + 8) = self->_needsMatchMoveAnimationBetweenCurtainAndJindoViews;
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
  v5 = [(SBSAIndicatorElementDescription *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

- (void)_setIndicatorViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_indicatorViewTransform.c = *&a3->c;
  *&self->_indicatorViewTransform.tx = v4;
  *&self->_indicatorViewTransform.a = v3;
}

- (void)_setFixedIndicatorViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_fixedIndicatorViewTransform.c = *&a3->c;
  *&self->_fixedIndicatorViewTransform.tx = v4;
  *&self->_fixedIndicatorViewTransform.a = v3;
}

@end