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
  result = [a1 isFloating];
  if ((result & 1) == 0)
  {
    [a1 center];
    PXPointAdd();

    return [a1 setCenter:?];
  }

  return result;
}

- (void)_setCornersWithStyle:()PXGReusableViewAdoption
{
  v5 = fmaxf(fmaxf(a3[9], a3[10]), fmaxf(a3[11], a3[12]));
  v6 = [a1 layer];
  [v6 cornerRadius];
  v8 = v7;

  if (v8 != v5)
  {
    v9 = [a1 layer];
    [v9 setCornerRadius:v5];

    [a1 setClipsToBounds:v5 != 0.0];
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

  v16 = [a1 layer];
  v17 = [v16 maskedCorners];

  if (v17 != v15)
  {
    v18 = [a1 layer];
    [v18 setMaskedCorners:v15];
  }
}

- (void)pxg_configureWithTexture:()PXGReusableViewAdoption geometry:info:style:textureInfo:resizableCapInsets:reusableViewInfo:screenScale:separateLayers:
{
  v13 = a3;
  v14 = a8;
  v15 = a1;
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
        [v15 setUserData:v25];
        goto LABEL_11;
      }

      v90 = [MEMORY[0x277CCA890] currentHandler];
      v93 = objc_opt_class();
      v92 = NSStringFromClass(v93);
      v94 = [v25 px_descriptionForAssertionMessage];
      [v90 handleFailureInMethod:a2 object:v15 file:@"PXGViewRenderer.m" lineNumber:1051 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"texture", v92, v94}];
    }

    else
    {
      v90 = [MEMORY[0x277CCA890] currentHandler];
      v91 = objc_opt_class();
      v92 = NSStringFromClass(v91);
      [v90 handleFailureInMethod:a2 object:v15 file:@"PXGViewRenderer.m" lineNumber:1051 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"texture", v92}];
    }

    goto LABEL_10;
  }

  v25 = v15;
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v70 = [MEMORY[0x277CCA890] currentHandler];
    v82 = objc_opt_class();
    v72 = NSStringFromClass(v82);
    v83 = [v25 px_descriptionForAssertionMessage];
    [v70 handleFailureInMethod:a2 object:v25 file:@"PXGViewRenderer.m" lineNumber:1046 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"reusableView", v72, v83}];
  }

  else
  {
    v70 = [MEMORY[0x277CCA890] currentHandler];
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    [v70 handleFailureInMethod:a2 object:0 file:@"PXGViewRenderer.m" lineNumber:1046 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"reusableView", v72}];
  }

LABEL_4:
  v26 = v13;
  if (!v26)
  {
    v73 = [MEMORY[0x277CCA890] currentHandler];
    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    [v73 handleFailureInMethod:a2 object:v25 file:@"PXGViewRenderer.m" lineNumber:1047 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"texture", v75}];
LABEL_54:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v73 = [MEMORY[0x277CCA890] currentHandler];
    v84 = objc_opt_class();
    v75 = NSStringFromClass(v84);
    v85 = [v26 px_descriptionForAssertionMessage];
    [v73 handleFailureInMethod:a2 object:v25 file:@"PXGViewRenderer.m" lineNumber:1047 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"texture", v75, v85}];

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

    v76 = [MEMORY[0x277CCA890] currentHandler];
    v86 = objc_opt_class();
    v78 = NSStringFromClass(v86);
    v87 = [v29 px_descriptionForAssertionMessage];
    [v76 handleFailureInMethod:a2 object:v15 file:@"PXGViewRenderer.m" lineNumber:1057 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"texture", v78, v87}];
  }

  else
  {
    v76 = [MEMORY[0x277CCA890] currentHandler];
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    [v76 handleFailureInMethod:a2 object:v15 file:@"PXGViewRenderer.m" lineNumber:1057 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"texture", v78}];
  }

LABEL_15:
  v30 = [v29 payload];
  if (!v30)
  {
    v79 = [MEMORY[0x277CCA890] currentHandler];
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    [v79 handleFailureInMethod:a2 object:v15 file:@"PXGViewRenderer.m" lineNumber:1058 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"payloadTexture.payload", v81}];
LABEL_58:

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v79 = [MEMORY[0x277CCA890] currentHandler];
    v88 = objc_opt_class();
    v81 = NSStringFromClass(v88);
    v89 = [v30 px_descriptionForAssertionMessage];
    [v79 handleFailureInMethod:a2 object:v15 file:@"PXGViewRenderer.m" lineNumber:1058 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"payloadTexture.payload", v81, v89}];

    goto LABEL_58;
  }

LABEL_17:
  v31 = [v15 userData];
  v32 = [v30 userData];

  if (v31 != v32)
  {
    v33 = [v30 userData];
    [v15 setUserData:v33];
  }

LABEL_20:
  v34 = [v15 layer];
  [v34 zPosition];
  v36 = v35;

  if (v36 != v28)
  {
    v37 = [v15 layer];
    [v37 setZPosition:v28];
  }

  v38 = [v15 _outermostLayer];
  [v38 zPosition];
  v40 = v39;

  if (v40 != v28)
  {
    v41 = [v15 _outermostLayer];
    [v41 setZPosition:v28];
  }

  [v15 alpha];
  v42 = *a6;
  if (v43 != *a6)
  {
    [v15 setAlpha:?];
    v42 = *a6;
  }

  if ([v15 isHidden] != (v42 == 0.0))
  {
    [v15 setHidden:v42 == 0.0];
  }

  PXRectGetCenter();
  v45 = v44;
  v47 = v46;
  [v15 center];
  if (v45 != v49 || v47 != v48)
  {
    [v15 setCenter:{v45, v47}];
  }

  [v15 bounds];
  if (v21 != v51 || v23 != v50)
  {
    [v15 setBounds:{0.0, 0.0, v21, v23}];
  }

  v96 = vcvtq_f64_f32(*(a6 + 72));
  v52 = [v15 layer];
  [v52 anchorPoint];
  v54 = v53;
  v56 = v55;

  if (v54 != v96.f64[0] || v56 != v96.f64[1])
  {
    v57 = [v15 layer];
    [v57 setAnchorPoint:*&v96];
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
  [v15 setTransform:&v97];
  v60 = *(a6 + 56) != 0.0;
  v61 = [v15 layer];
  [v61 setAllowsEdgeAntialiasing:v60];

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

  [v15 setClippingRect:{v66, v67, v68, v69}];
  [v15 _setCornersWithStyle:a6];
}

- (uint64_t)pxg_prepareForReuse
{
  [a1 setHidden:0];

  return [a1 prepareForReuse];
}

- (void)pxg_becomeReusable
{
  [a1 setHidden:1];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [a1 setTransform:v4];
  v3 = a1;
  [v3 setUserData:0];
  [v3 becomeReusable];
}

- (BOOL)pxg_hasSuperview
{
  v1 = [a1 superview];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)pxg_isChildOfView:()PXGReusableViewAdoption
{
  v4 = a3;
  v5 = [a1 superview];

  return v5 == v4;
}

- (void)pxg_addToHostingView:()PXGReusableViewAdoption
{
  v4 = *MEMORY[0x277CDA138];
  v6 = a3;
  v5 = [a1 layer];
  [v5 setCornerCurve:v4];

  [v6 addHostedView:a1];
}

- (void)pxg_addToScrollViewController:()PXGReusableViewAdoption floatingAxis:
{
  v10 = a3;
  v6 = *MEMORY[0x277CDA138];
  v7 = [a1 layer];
  [v7 setCornerCurve:v6];

  if (a4 == 1)
  {
    v8 = [v10 scrollView];
    v9 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:v8 edge:1 style:1];
    [a1 addInteraction:v9];
  }

  [v10 addSubview:a1];
}

@end