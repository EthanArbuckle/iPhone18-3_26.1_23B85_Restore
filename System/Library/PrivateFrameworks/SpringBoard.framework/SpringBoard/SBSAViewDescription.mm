@interface SBSAViewDescription
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)boundsVelocity;
- (CGSize)scale;
- (NSString)description;
- (SBSAViewDescription)initWithViewDescription:(id)description;
- (id)copyByPixelAligningGeometryWithScale:(double)scale;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAViewDescription

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)scale
{
  width = self->_scale.width;
  height = self->_scale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)boundsVelocity
{
  x = self->_boundsVelocity.origin.x;
  y = self->_boundsVelocity.origin.y;
  width = self->_boundsVelocity.size.width;
  height = self->_boundsVelocity.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBSAViewDescription)initWithViewDescription:(id)description
{
  descriptionCopy = description;
  v26.receiver = self;
  v26.super_class = SBSAViewDescription;
  v5 = [(SBSAViewDescription *)&v26 init];
  if (v5)
  {
    interfaceElementIdentifier = [descriptionCopy interfaceElementIdentifier];
    interfaceElementIdentifier = v5->_interfaceElementIdentifier;
    v5->_interfaceElementIdentifier = interfaceElementIdentifier;

    [descriptionCopy center];
    v5->_center.x = v8;
    v5->_center.y = v9;
    [descriptionCopy bounds];
    v5->_bounds.origin.x = v10;
    v5->_bounds.origin.y = v11;
    v5->_bounds.size.width = v12;
    v5->_bounds.size.height = v13;
    [descriptionCopy cornerRadius];
    v5->_cornerRadius = v14;
    [descriptionCopy alpha];
    v5->_alpha = v15;
    [descriptionCopy scale];
    v5->_scale.width = v16;
    v5->_scale.height = v17;
    backgroundColor = [descriptionCopy backgroundColor];
    v19 = [backgroundColor copy];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v19;

    [descriptionCopy boundsVelocity];
    v5->_boundsVelocity.origin.x = v21;
    v5->_boundsVelocity.origin.y = v22;
    v5->_boundsVelocity.size.width = v23;
    v5->_boundsVelocity.size.height = v24;
  }

  return v5;
}

- (id)copyByPixelAligningGeometryWithScale:(double)scale
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBSAViewDescription_copyByPixelAligningGeometryWithScale___block_invoke;
  v4[3] = &unk_2783ACD90;
  v4[4] = self;
  v4[5] = a2;
  *&v4[6] = scale;
  return [(SBSAViewDescription *)self copyWithBlock:v4];
}

void __60__SBSAViewDescription_copyByPixelAligningGeometryWithScale___block_invoke(uint64_t a1, void *a2)
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
      __60__SBSAViewDescription_copyByPixelAligningGeometryWithScale___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) bounds];
  [*(a1 + 32) center];
  SBUnintegralizedRectCenteredAboutPoint();
  UIRectRoundToScale();
  BSRectWithSize();
  [v6 setBounds:?];
  UIRectGetCenter();
  [v6 setCenter:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  interfaceElementIdentifier = self->_interfaceElementIdentifier;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __31__SBSAViewDescription_isEqual___block_invoke;
  v43[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v44 = v7;
  v8 = [v5 appendObject:interfaceElementIdentifier counterpart:v43];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __31__SBSAViewDescription_isEqual___block_invoke_2;
  v41[3] = &unk_2783A94D8;
  v9 = v7;
  v42 = v9;
  v10 = [v8 appendCGPoint:v41 counterpart:{self->_center.x, self->_center.y}];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __31__SBSAViewDescription_isEqual___block_invoke_3;
  v39[3] = &unk_2783B0268;
  v11 = v9;
  v40 = v11;
  v12 = [v10 appendCGRect:v39 counterpart:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  cornerRadius = self->_cornerRadius;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __31__SBSAViewDescription_isEqual___block_invoke_4;
  v37[3] = &unk_2783ACE08;
  v14 = v11;
  v38 = v14;
  v15 = [v12 appendCGFloat:v37 counterpart:cornerRadius];
  alpha = self->_alpha;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __31__SBSAViewDescription_isEqual___block_invoke_5;
  v35[3] = &unk_2783ACE08;
  v17 = v14;
  v36 = v17;
  v18 = [v15 appendCGFloat:v35 counterpart:alpha];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __31__SBSAViewDescription_isEqual___block_invoke_6;
  v33[3] = &unk_2783BA168;
  v19 = v17;
  v34 = v19;
  v20 = [v18 appendCGSize:v33 counterpart:{self->_scale.width, self->_scale.height}];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __31__SBSAViewDescription_isEqual___block_invoke_7;
  v31 = &unk_2783B0268;
  v32 = v19;
  x = self->_boundsVelocity.origin.x;
  y = self->_boundsVelocity.origin.y;
  width = self->_boundsVelocity.size.width;
  height = self->_boundsVelocity.size.height;
  v25 = v19;
  v26 = [v20 appendCGRect:&v28 counterpart:{x, y, width, height}];
  LOBYTE(v19) = [v26 isEqual];

  return v19;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_interfaceElementIdentifier];
  v5 = [v4 appendCGPoint:{self->_center.x, self->_center.y}];
  v6 = [v5 appendCGRect:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  v7 = [v6 appendCGFloat:self->_cornerRadius];
  v8 = [v7 appendCGSize:{self->_scale.width, self->_scale.height}];
  v9 = [v8 appendCGRect:{self->_boundsVelocity.origin.x, self->_boundsVelocity.origin.y, self->_boundsVelocity.size.width, self->_boundsVelocity.size.height}];
  v10 = [v9 hash];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  interfaceElementIdentifier = self->_interfaceElementIdentifier;
  v6 = NSStringFromCGPoint(self->_center);
  v7 = NSStringFromCGRect(self->_bounds);
  cornerRadius = self->_cornerRadius;
  alpha = self->_alpha;
  v10 = NSStringFromCGSize(self->_scale);
  v11 = NSStringFromCGRect(self->_boundsVelocity);
  v12 = [v3 stringWithFormat:@"<%@: %p interfaceElementIdentifier: %@; center: %@; bounds: %@; cornerRadius: %f; alpha: %f; scale: %@; boundsVelocity: %@>", v4, self, interfaceElementIdentifier, v6, v7, *&cornerRadius, *&alpha, v10, v11];;

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithViewDescription:self];
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
  v5 = [(SBSAViewDescription *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

void __60__SBSAViewDescription_copyByPixelAligningGeometryWithScale___block_invoke_cold_1(uint64_t a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = NSClassFromString(&cfstr_Sbsaviewdescri.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v2 file:@"SBSAViewDescription.m" lineNumber:65 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

@end