@interface PSPointerHoverRegion
- (BOOL)isNumericDataValid;
- (CGRect)contentBounds;
- (CGRect)hitTestBounds;
- (PSPointerHoverRegion)init;
- (PSPointerHoverRegion)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSPointerHoverRegion

- (PSPointerHoverRegion)init
{
  v7.receiver = self;
  v7.super_class = PSPointerHoverRegion;
  v2 = [(PSPointerHoverRegion *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_contentHoverInverseScale = 1.0;
    v4 = +[PSPointerShape systemShape];
    pointerShape = v3->_pointerShape;
    v3->_pointerShape = v4;

    v3->_pointerVisualIntensity = 1.0;
  }

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(PSPointerHoverRegion *)self _copyWithClass:v4];
}

- (PSPointerHoverRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PSPointerHoverRegion;
  v5 = [(PSPointerHoverRegion *)&v34 init];
  if (v5)
  {
    v5->_coordinateSpaceSourceContextID = [v4 decodeInt32ForKey:@"coordinateSpaceSourceContextID"];
    v5->_coordinateSpaceSourceLayerRenderID = [v4 decodeInt64ForKey:@"coordinateSpaceSourceLayerRenderID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentBounds"];
    [v6 bs_CGRectValue];
    v5->_contentBounds.origin.x = v7;
    v5->_contentBounds.origin.y = v8;
    v5->_contentBounds.size.width = v9;
    v5->_contentBounds.size.height = v10;

    [v4 decodeDoubleForKey:@"contentHoverInverseScale"];
    v5->_contentHoverInverseScale = v11;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentMatchMoveSource"];
    contentMatchMoveSource = v5->_contentMatchMoveSource;
    v5->_contentMatchMoveSource = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentSlipValue"];
    contentSlipValue = v5->_contentSlipValue;
    v5->_contentSlipValue = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hitTestBounds"];
    [v16 bs_CGRectValue];
    v5->_hitTestBounds.origin.x = v17;
    v5->_hitTestBounds.origin.y = v18;
    v5->_hitTestBounds.size.width = v19;
    v5->_hitTestBounds.size.height = v20;

    v5->_overlayEffectStyle = [v4 decodeIntegerForKey:@"overlayEffectStyle"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pointerPortalSourceCollection"];
    pointerPortalSourceCollection = v5->_pointerPortalSourceCollection;
    v5->_pointerPortalSourceCollection = v21;

    v5->_pointerRecenteringAxes = [v4 decodeIntegerForKey:@"pointerRecenteringAxes"];
    v5->_pointerLatchingAxes = [v4 decodeIntegerForKey:@"pointerLatchingAxes"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pointerShape"];
    pointerShape = v5->_pointerShape;
    v5->_pointerShape = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pointerSlipValue"];
    pointerSlipValue = v5->_pointerSlipValue;
    v5->_pointerSlipValue = v25;

    [v4 decodeDoubleForKey:@"pointerVisualIntensity"];
    v5->_pointerVisualIntensity = v27;
    v5->_preferredPointerMaterialLuminance = [v4 decodeIntegerForKey:@"preferredPointerMaterialLuminance"];
    v5->_shouldPointerUnderlayContent = [v4 decodeBoolForKey:@"shouldPointerUnderlayContent"];
    v5->_shouldPointerSuppressMirroring = [v4 decodeBoolForKey:@"shouldPointerSuppressMirroring"];
    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"accessories"];
    accessories = v5->_accessories;
    v5->_accessories = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  coordinateSpaceSourceContextID = self->_coordinateSpaceSourceContextID;
  v7 = a3;
  [v7 encodeInt32:coordinateSpaceSourceContextID forKey:@"coordinateSpaceSourceContextID"];
  [v7 encodeInt64:self->_coordinateSpaceSourceLayerRenderID forKey:@"coordinateSpaceSourceLayerRenderID"];
  v5 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{self->_contentBounds.origin.x, self->_contentBounds.origin.y, self->_contentBounds.size.width, self->_contentBounds.size.height}];
  [v7 encodeObject:v5 forKey:@"contentBounds"];

  [v7 encodeDouble:@"contentHoverInverseScale" forKey:self->_contentHoverInverseScale];
  [v7 encodeObject:self->_contentMatchMoveSource forKey:@"contentMatchMoveSource"];
  [v7 encodeObject:self->_contentSlipValue forKey:@"contentSlipValue"];
  v6 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{self->_hitTestBounds.origin.x, self->_hitTestBounds.origin.y, self->_hitTestBounds.size.width, self->_hitTestBounds.size.height}];
  [v7 encodeObject:v6 forKey:@"hitTestBounds"];

  [v7 encodeInteger:self->_overlayEffectStyle forKey:@"overlayEffectStyle"];
  [v7 encodeObject:self->_pointerPortalSourceCollection forKey:@"pointerPortalSourceCollection"];
  [v7 encodeInteger:self->_pointerRecenteringAxes forKey:@"pointerRecenteringAxes"];
  [v7 encodeInteger:self->_pointerLatchingAxes forKey:@"pointerLatchingAxes"];
  [v7 encodeObject:self->_pointerShape forKey:@"pointerShape"];
  [v7 encodeObject:self->_pointerSlipValue forKey:@"pointerSlipValue"];
  [v7 encodeDouble:@"pointerVisualIntensity" forKey:self->_pointerVisualIntensity];
  [v7 encodeInteger:self->_preferredPointerMaterialLuminance forKey:@"preferredPointerMaterialLuminance"];
  [v7 encodeBool:self->_shouldPointerUnderlayContent forKey:@"shouldPointerUnderlayContent"];
  [v7 encodeBool:self->_shouldPointerSuppressMirroring forKey:@"shouldPointerSuppressMirroring"];
  [v7 encodeObject:self->_accessories forKey:@"accessories"];
}

- (id)_copyWithClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
  v5 = v4;
  if (v4)
  {
    *&v4->height = self->_coordinateSpaceSourceLayerRenderID;
    LODWORD(v4[9].height) = self->_coordinateSpaceSourceContextID;
    size = self->_contentBounds.size;
    v4[1] = self->_contentBounds.origin;
    v4[2] = size;
    v4[3].width = self->_contentHoverInverseScale;
    v7 = [(PSMatchMoveSource *)self->_contentMatchMoveSource copy];
    width = v5[4].width;
    *&v5[4].width = v7;

    v9 = [(NSValue *)self->_contentSlipValue copy];
    height = v5[3].height;
    *&v5[3].height = v9;

    origin = self->_hitTestBounds.origin;
    *(v5 + 88) = self->_hitTestBounds.size;
    *&v5[4].height = origin;
    *&v5[10].width = self->_overlayEffectStyle;
    v12 = [(PSPointerPortalSourceCollection *)self->_pointerPortalSourceCollection copy];
    v13 = v5[6].height;
    *&v5[6].height = v12;

    *&v5[7].width = self->_pointerRecenteringAxes;
    *&v5[11].width = self->_pointerLatchingAxes;
    v14 = [(PSPointerShape *)self->_pointerShape copy];
    v15 = v5[7].height;
    *&v5[7].height = v14;

    v16 = [(NSValue *)self->_pointerSlipValue copy];
    v17 = v5[8].width;
    *&v5[8].width = v16;

    v5[8].height = self->_pointerVisualIntensity;
    *&v5[9].width = self->_preferredPointerMaterialLuminance;
    LOBYTE(v5[10].height) = self->_shouldPointerUnderlayContent;
    BYTE1(v5[10].height) = self->_shouldPointerSuppressMirroring;
    v18 = [(NSArray *)self->_accessories copy];
    v19 = v5[11].height;
    *&v5[11].height = v18;
  }

  return v5;
}

- (BOOL)isNumericDataValid
{
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v4 = vnegq_f64(v3);
  v5 = vandq_s8(self->_contentBounds.origin, v4);
  v6 = vandq_s8(self->_contentBounds.size, v4);
  v7 = vdupq_n_s64(0x7FF0000000000000uLL);
  v8 = (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(v5, v7), vcgeq_s64(v6, v7)))) & 1) == 0 && fabs(self->_contentHoverInverseScale) != INFINITY;
  contentSlipValue = self->_contentSlipValue;
  if (contentSlipValue)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    [(NSValue *)contentSlipValue bs_CGPointValue];
    v8 = 0;
    if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_22;
    }
  }

  else if (!v8)
  {
    goto LABEL_22;
  }

  v8 = (*&self->_hitTestBounds.origin.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&self->_hitTestBounds.origin.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&self->_hitTestBounds.size.width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(self->_hitTestBounds.size.height) != INFINITY;
LABEL_22:
  pointerSlipValue = self->_pointerSlipValue;
  if (!pointerSlipValue)
  {
    if (v8)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  [(NSValue *)pointerSlipValue bs_CGPointValue];
  result = 0;
  if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
LABEL_28:
    if ((*&self->_pointerVisualIntensity & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && self->_preferredPointerMaterialLuminance <= 2)
    {
      return self->_overlayEffectStyle < 3uLL;
    }

    return 0;
  }

  return result;
}

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

- (CGRect)hitTestBounds
{
  x = self->_hitTestBounds.origin.x;
  y = self->_hitTestBounds.origin.y;
  width = self->_hitTestBounds.size.width;
  height = self->_hitTestBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end