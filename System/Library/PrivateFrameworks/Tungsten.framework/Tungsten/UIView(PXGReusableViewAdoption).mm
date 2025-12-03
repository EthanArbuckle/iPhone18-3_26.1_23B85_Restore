@interface UIView(PXGReusableViewAdoption)
- (BOOL)pxg_hasSuperview;
- (BOOL)pxg_isChildOfView:()PXGReusableViewAdoption;
- (uint64_t)pxg_prepareForReuse;
- (uint64_t)pxg_shiftPosition:()PXGReusableViewAdoption;
- (void)_setCornersWithStyle:()PXGReusableViewAdoption;
- (void)pxg_addToHostingView:()PXGReusableViewAdoption;
- (void)pxg_addToScrollViewController:()PXGReusableViewAdoption floatingAxis:;
- (void)pxg_becomeReusable;
- (void)pxg_configureWithTexture:()PXGReusableViewAdoption geometry:info:style:textureInfo:resizableCapInsets:reusableViewInfo:screenScale:separateLayers:;
@end

@implementation UIView(PXGReusableViewAdoption)

- (uint64_t)pxg_shiftPosition:()PXGReusableViewAdoption
{
  result = [self isFloating];
  if ((result & 1) == 0)
  {
    [self center];
    PXPointAdd();

    return [self setCenter:?];
  }

  return result;
}

- (void)_setCornersWithStyle:()PXGReusableViewAdoption
{
  v5 = fmaxf(fmaxf(a3[9], a3[10]), fmaxf(a3[11], a3[12]));
  layer = [self layer];
  [layer cornerRadius];
  v8 = v7;

  if (v8 != v5)
  {
    layer2 = [self layer];
    [layer2 setCornerRadius:v5];

    [self setClipsToBounds:v5 != 0.0];
  }

  v11 = a3[9];
  v10 = a3[10];
  v13 = a3[11];
  v12 = a3[12];
  if (fmaxf(fmaxf(v11, v10), fmaxf(v13, v12)) == 0.0)
  {
    v15 = 15;
  }

  else
  {
    v14 = 15;
    if (v11 == 0.0)
    {
      v14 = 14;
    }

    if (v10 == 0.0)
    {
      v14 &= ~2uLL;
    }

    if (v13 == 0.0)
    {
      v14 &= ~4uLL;
    }

    if (v12 == 0.0)
    {
      v15 = v14 & 7;
    }

    else
    {
      v15 = v14;
    }
  }

  layer3 = [self layer];
  maskedCorners = [layer3 maskedCorners];

  if (maskedCorners != v15)
  {
    layer4 = [self layer];
    [layer4 setMaskedCorners:v15];
  }
}

- (void)pxg_configureWithTexture:()PXGReusableViewAdoption geometry:info:style:textureInfo:resizableCapInsets:reusableViewInfo:screenScale:separateLayers:
{
  v13 = a3;
  v14 = a8;
  selfCopy = self;
  PXRectWithCenterAndSize();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(a4 + 16);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v25 = v13;
    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_10:
        [selfCopy setUserData:v25];
        goto LABEL_11;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v93 = objc_opt_class();
      v92 = NSStringFromClass(v93);
      px_descriptionForAssertionMessage = [v25 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXGViewRenderer.m" lineNumber:1051 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"texture", v92, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v91 = objc_opt_class();
      v92 = NSStringFromClass(v91);
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXGViewRenderer.m" lineNumber:1051 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"texture", v92}];
    }

    goto LABEL_10;
  }

  v25 = selfCopy;
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v82 = objc_opt_class();
    v72 = NSStringFromClass(v82);
    px_descriptionForAssertionMessage2 = [v25 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:v25 file:@"PXGViewRenderer.m" lineNumber:1046 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"reusableView", v72, px_descriptionForAssertionMessage2}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    [currentHandler2 handleFailureInMethod:a2 object:0 file:@"PXGViewRenderer.m" lineNumber:1046 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"reusableView", v72}];
  }

LABEL_4:
  v26 = v13;
  if (!v26)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    [currentHandler3 handleFailureInMethod:a2 object:v25 file:@"PXGViewRenderer.m" lineNumber:1047 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"texture", v75}];
LABEL_54:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v84 = objc_opt_class();
    v75 = NSStringFromClass(v84);
    px_descriptionForAssertionMessage3 = [v26 px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:a2 object:v25 file:@"PXGViewRenderer.m" lineNumber:1047 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"texture", v75, px_descriptionForAssertionMessage3}];

    goto LABEL_54;
  }

LABEL_6:
  v27 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v26, "imageRef")}];
  [v25 setImage:v27];

LABEL_11:
LABEL_12:
  v28 = -v24;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v29 = v13;
  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }

    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v86 = objc_opt_class();
    v78 = NSStringFromClass(v86);
    px_descriptionForAssertionMessage4 = [v29 px_descriptionForAssertionMessage];
    [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"PXGViewRenderer.m" lineNumber:1057 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"texture", v78, px_descriptionForAssertionMessage4}];
  }

  else
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"PXGViewRenderer.m" lineNumber:1057 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"texture", v78}];
  }

LABEL_15:
  payload = [v29 payload];
  if (!payload)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    [currentHandler5 handleFailureInMethod:a2 object:selfCopy file:@"PXGViewRenderer.m" lineNumber:1058 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"payloadTexture.payload", v81}];
LABEL_58:

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v88 = objc_opt_class();
    v81 = NSStringFromClass(v88);
    px_descriptionForAssertionMessage5 = [payload px_descriptionForAssertionMessage];
    [currentHandler5 handleFailureInMethod:a2 object:selfCopy file:@"PXGViewRenderer.m" lineNumber:1058 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"payloadTexture.payload", v81, px_descriptionForAssertionMessage5}];

    goto LABEL_58;
  }

LABEL_17:
  userData = [selfCopy userData];
  userData2 = [payload userData];

  if (userData != userData2)
  {
    userData3 = [payload userData];
    [selfCopy setUserData:userData3];
  }

LABEL_20:
  layer = [selfCopy layer];
  [layer zPosition];
  v36 = v35;

  if (v36 != v28)
  {
    layer2 = [selfCopy layer];
    [layer2 setZPosition:v28];
  }

  _outermostLayer = [selfCopy _outermostLayer];
  [_outermostLayer zPosition];
  v40 = v39;

  if (v40 != v28)
  {
    _outermostLayer2 = [selfCopy _outermostLayer];
    [_outermostLayer2 setZPosition:v28];
  }

  [selfCopy alpha];
  v42 = *a6;
  if (v43 != *a6)
  {
    [selfCopy setAlpha:?];
    v42 = *a6;
  }

  if ([selfCopy isHidden] != (v42 == 0.0))
  {
    [selfCopy setHidden:v42 == 0.0];
  }

  PXRectGetCenter();
  v45 = v44;
  v47 = v46;
  [selfCopy center];
  if (v45 != v49 || v47 != v48)
  {
    [selfCopy setCenter:{v45, v47}];
  }

  [selfCopy bounds];
  if (v21 != v51 || v23 != v50)
  {
    [selfCopy setBounds:{0.0, 0.0, v21, v23}];
  }

  v96 = vcvtq_f64_f32(*(a6 + 72));
  layer3 = [selfCopy layer];
  [layer3 anchorPoint];
  v54 = v53;
  v56 = v55;

  if (v54 != v96.f64[0] || v56 != v96.f64[1])
  {
    layer4 = [selfCopy layer];
    [layer4 setAnchorPoint:*&v96];
  }

  if (v14)
  {
    v58 = *(a6 + 56);
    if (v14[2] == v58)
    {
      v59 = v14[3];
      goto LABEL_40;
    }
  }

  else
  {
    v95 = *(a6 + 56);
    v58 = v95;
    if (v95 == 0.0)
    {
      v59 = 0.0;
LABEL_40:
      if (v59 == *(a6 + 60))
      {
        goto LABEL_43;
      }
    }
  }

  memset(&v98, 0, sizeof(v98));
  CGAffineTransformMakeScale(&v97, *(a6 + 60), *(a6 + 60));
  CGAffineTransformRotate(&v98, &v97, v58);
  v97 = v98;
  [selfCopy setTransform:&v97];
  v60 = *(a6 + 56) != 0.0;
  layer5 = [selfCopy layer];
  [layer5 setAllowsEdgeAntialiasing:v60];

  if (v14)
  {
    v14[2] = *(a6 + 56);
    v14[3] = *(a6 + 60);
  }

LABEL_43:
  v62 = COERCE_FLOAT(*(a6 + 20));
  v63 = COERCE_FLOAT(HIDWORD(*(a6 + 20)));
  v64 = COERCE_FLOAT(*(a6 + 28));
  v65 = COERCE_FLOAT(HIDWORD(*(a6 + 20)));
  v99.origin.x = v62;
  v99.origin.y = v63;
  v99.size.width = v64;
  v99.size.height = v65;
  v101.origin.x = v17;
  v101.origin.y = v19;
  v101.size.width = v21;
  v101.size.height = v23;
  if (CGRectContainsRect(v99, v101))
  {
    v66 = *MEMORY[0x277CBF390];
    v67 = *(MEMORY[0x277CBF390] + 8);
    v68 = *(MEMORY[0x277CBF390] + 16);
    v69 = *(MEMORY[0x277CBF390] + 24);
  }

  else
  {
    v100.origin.x = v62;
    v100.origin.y = v63;
    v100.size.width = v64;
    v100.size.height = v65;
    *&v66 = CGRectOffset(v100, -v17, -v19);
  }

  [selfCopy setClippingRect:{v66, v67, v68, v69}];
  [selfCopy _setCornersWithStyle:a6];
}

- (uint64_t)pxg_prepareForReuse
{
  [self setHidden:0];

  return [self prepareForReuse];
}

- (void)pxg_becomeReusable
{
  [self setHidden:1];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [self setTransform:v4];
  selfCopy = self;
  [selfCopy setUserData:0];
  [selfCopy becomeReusable];
}

- (BOOL)pxg_hasSuperview
{
  superview = [self superview];
  v2 = superview != 0;

  return v2;
}

- (BOOL)pxg_isChildOfView:()PXGReusableViewAdoption
{
  v4 = a3;
  superview = [self superview];

  return superview == v4;
}

- (void)pxg_addToHostingView:()PXGReusableViewAdoption
{
  v4 = *MEMORY[0x277CDA138];
  v6 = a3;
  layer = [self layer];
  [layer setCornerCurve:v4];

  [v6 addHostedView:self];
}

- (void)pxg_addToScrollViewController:()PXGReusableViewAdoption floatingAxis:
{
  v10 = a3;
  v6 = *MEMORY[0x277CDA138];
  layer = [self layer];
  [layer setCornerCurve:v6];

  if (a4 == 1)
  {
    scrollView = [v10 scrollView];
    v9 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:scrollView edge:1 style:1];
    [self addInteraction:v9];
  }

  [v10 addSubview:self];
}

@end