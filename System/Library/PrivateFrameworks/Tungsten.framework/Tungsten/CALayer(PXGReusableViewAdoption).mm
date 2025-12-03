@interface CALayer(PXGReusableViewAdoption)
- (BOOL)pxg_hasSuperview;
- (BOOL)pxg_isChildOfView:()PXGReusableViewAdoption;
- (uint64_t)pxg_becomeReusable;
- (uint64_t)pxg_shiftPosition:()PXGReusableViewAdoption;
- (void)pxg_addToHostingView:()PXGReusableViewAdoption;
- (void)pxg_addToScrollViewController:()PXGReusableViewAdoption floatingAxis:;
- (void)pxg_configureWithTexture:()PXGReusableViewAdoption geometry:info:style:textureInfo:resizableCapInsets:reusableViewInfo:screenScale:separateLayers:;
- (void)pxg_insertIntoView:()PXGReusableViewAdoption atIndex:;
@end

@implementation CALayer(PXGReusableViewAdoption)

- (uint64_t)pxg_shiftPosition:()PXGReusableViewAdoption
{
  result = [self isFloating];
  if ((result & 1) == 0)
  {
    [self position];
    PXPointAdd();

    return [self setPosition:?];
  }

  return result;
}

- (void)pxg_configureWithTexture:()PXGReusableViewAdoption geometry:info:style:textureInfo:resizableCapInsets:reusableViewInfo:screenScale:separateLayers:
{
  v18 = a8;
  v19 = a13;
  v20 = *a9;
  v21 = *(a9 + 8);
  v64 = *(a9 + 24);
  v22 = *(&v64 + 1);
  objc_opt_class();
  v23 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    v24 = v18;
    contents = [self contents];
    imageRef = [v24 imageRef];

    if (contents != imageRef)
    {
      [self setContents:{objc_msgSend(v24, "imageRef")}];
    }

    [self contentsScale];
    if (v27 != a6)
    {
      [self setContentsScale:a6];
    }

    [v24 alpha];
    v23 = v28;
  }

  v29 = *&v64;
  v30 = v22;
  [self position];
  if (v32 != v20 || v31 != v21)
  {
    [self setPosition:{v20, v21}];
  }

  [self bounds];
  v75.origin.x = 0.0;
  v75.origin.y = 0.0;
  v75.size.width = v29;
  v75.size.height = v30;
  if (!CGRectEqualToRect(v72, v75))
  {
    [self setBounds:{0.0, 0.0, v29, v30}];
  }

  v34 = -*(a9 + 16);
  [self zPosition];
  if (v35 != v34)
  {
    [self setZPosition:v34];
  }

  [self opacity];
  if (*&v36 != a11->f32[0])
  {
    *&v36 = v23 * a11->f32[0];
    [self setOpacity:v36];
  }

  v37 = fmaxf(fmaxf(a11[4].f32[1], a11[5].f32[0]), fmaxf(a11[5].f32[1], a11[6].f32[0]));
  [self cornerRadius];
  if (v38 != v37)
  {
    [self setCornerRadius:v37];
    [self setMasksToBounds:v37 != 0.0];
  }

  v40 = a11[4].f32[1];
  v39 = a11[5].f32[0];
  v42 = a11[5].f32[1];
  v41 = a11[6].f32[0];
  if (fmaxf(fmaxf(v40, v39), fmaxf(v42, v41)) == 0.0)
  {
    v44 = 15;
  }

  else
  {
    v43 = 15;
    if (v40 == 0.0)
    {
      v43 = 14;
    }

    if (v39 == 0.0)
    {
      v43 &= ~2uLL;
    }

    if (v42 == 0.0)
    {
      v44 = v43 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v44 = v43;
    }

    if (v41 == 0.0)
    {
      v44 &= 7u;
    }
  }

  if ([self maskedCorners] != v44)
  {
    [self setMaskedCorners:v44];
  }

  v65 = vcvtq_f64_f32(a11[9]);
  [self anchorPoint];
  if (v46 != v65.f64[0] || v45 != v65.f64[1])
  {
    [self setAnchorPoint:{*&v65, v45}];
  }

  if (v19)
  {
    v47 = a11[7].f32[0];
    if (v19[2] == v47)
    {
      v48 = v19[3];
      goto LABEL_39;
    }
  }

  else
  {
    v63 = a11[7].f32[0];
    v47 = v63;
    if (v63 == 0.0)
    {
      v48 = 0.0;
LABEL_39:
      if (v48 == a11[7].f32[1])
      {
        goto LABEL_42;
      }
    }
  }

  memset(&v71, 0, sizeof(v71));
  CGAffineTransformMakeScale(&v70, a11[7].f32[1], a11[7].f32[1]);
  CGAffineTransformRotate(&v71, &v70, v47);
  v70 = v71;
  [self setAffineTransform:&v70];
  [self setAllowsEdgeAntialiasing:a11[7].f32[0] != 0.0];
  if (v19)
  {
    v19[2] = a11[7].f32[0];
    v19[3] = a11[7].f32[1];
  }

LABEL_42:
  v49.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v49.i64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v49)))))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      imageRef2 = [v18 imageRef];
      v29 = CGImageGetWidth(imageRef2) / a6;
      v30 = CGImageGetHeight(imageRef2) / a6;
    }

    v51 = a3 / v29;
    v52 = a2 / v30;
    v53 = (v29 - a5 - a3) / v29;
    v54 = (v30 - a4 - a2) / v30;
    [self contentsCenter];
    v76.origin.x = v51;
    v76.origin.y = v52;
    v76.size.width = v53;
    v76.size.height = v54;
    if (!CGRectEqualToRect(v73, v76))
    {
      [self setContentsRect:{*MEMORY[0x277D3CFC0], *(MEMORY[0x277D3CFC0] + 8), *(MEMORY[0x277D3CFC0] + 16), *(MEMORY[0x277D3CFC0] + 24)}];
LABEL_51:
      [self setContentsCenter:{v51, v52, v53, v54}];
    }
  }

  else
  {
    PXRectDenormalize();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 pixelSize];
    }

    PXRectWithAspectRatioFittingRect();
    PXRectNormalize();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [self contentsRect];
    v77.origin.x = v56;
    v77.origin.y = v58;
    v77.size.width = v60;
    v77.size.height = v62;
    if (!CGRectEqualToRect(v74, v77))
    {
      [self setContentsRect:{v56, v58, v60, v62}];
      v51 = *MEMORY[0x277D3CFC0];
      v52 = *(MEMORY[0x277D3CFC0] + 8);
      v53 = *(MEMORY[0x277D3CFC0] + 16);
      v54 = *(MEMORY[0x277D3CFC0] + 24);
      goto LABEL_51;
    }
  }
}

- (uint64_t)pxg_becomeReusable
{
  [self setHidden:1];
  [self setContents:0];
  [self setDelegate:0];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v2;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [self setAffineTransform:v8];
  v3 = *MEMORY[0x277D3CFC0];
  v4 = *(MEMORY[0x277D3CFC0] + 8);
  v5 = *(MEMORY[0x277D3CFC0] + 16);
  v6 = *(MEMORY[0x277D3CFC0] + 24);
  [self setContentsRect:{*MEMORY[0x277D3CFC0], v4, v5, v6}];
  return [self setContentsCenter:{v3, v4, v5, v6}];
}

- (BOOL)pxg_hasSuperview
{
  superlayer = [self superlayer];
  v2 = superlayer != 0;

  return v2;
}

- (BOOL)pxg_isChildOfView:()PXGReusableViewAdoption
{
  v4 = a3;
  superlayer = [self superlayer];
  layer = [v4 layer];

  return superlayer == layer;
}

- (void)pxg_insertIntoView:()PXGReusableViewAdoption atIndex:
{
  layer = [a3 layer];
  [layer insertSublayer:self atIndex:a4];
}

- (void)pxg_addToHostingView:()PXGReusableViewAdoption
{
  v4 = _PXGDisabledLayerActions_onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&_PXGDisabledLayerActions_onceToken, &__block_literal_global_383);
  }

  [self setActions:_PXGDisabledLayerActions_disabledActions];
  [self setCornerCurve:*MEMORY[0x277CDA138]];
  [v5 addHostedLayer:self];
}

- (void)pxg_addToScrollViewController:()PXGReusableViewAdoption floatingAxis:
{
  v4 = _PXGDisabledLayerActions_onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&_PXGDisabledLayerActions_onceToken, &__block_literal_global_383);
  }

  [self setActions:_PXGDisabledLayerActions_disabledActions];
  [self setCornerCurve:*MEMORY[0x277CDA138]];
  [v5 addFloatingSublayer:self forAxis:1];
}

@end