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
  result = [a1 isFloating];
  if ((result & 1) == 0)
  {
    [a1 position];
    PXPointAdd();

    return [a1 setPosition:?];
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
    v25 = [a1 contents];
    v26 = [v24 imageRef];

    if (v25 != v26)
    {
      [a1 setContents:{objc_msgSend(v24, "imageRef")}];
    }

    [a1 contentsScale];
    if (v27 != a6)
    {
      [a1 setContentsScale:a6];
    }

    [v24 alpha];
    v23 = v28;
  }

  v29 = *&v64;
  v30 = v22;
  [a1 position];
  if (v32 != v20 || v31 != v21)
  {
    [a1 setPosition:{v20, v21}];
  }

  [a1 bounds];
  v75.origin.x = 0.0;
  v75.origin.y = 0.0;
  v75.size.width = v29;
  v75.size.height = v30;
  if (!CGRectEqualToRect(v72, v75))
  {
    [a1 setBounds:{0.0, 0.0, v29, v30}];
  }

  v34 = -*(a9 + 16);
  [a1 zPosition];
  if (v35 != v34)
  {
    [a1 setZPosition:v34];
  }

  [a1 opacity];
  if (*&v36 != a11->f32[0])
  {
    *&v36 = v23 * a11->f32[0];
    [a1 setOpacity:v36];
  }

  v37 = fmaxf(fmaxf(a11[4].f32[1], a11[5].f32[0]), fmaxf(a11[5].f32[1], a11[6].f32[0]));
  [a1 cornerRadius];
  if (v38 != v37)
  {
    [a1 setCornerRadius:v37];
    [a1 setMasksToBounds:v37 != 0.0];
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

  if ([a1 maskedCorners] != v44)
  {
    [a1 setMaskedCorners:v44];
  }

  v65 = vcvtq_f64_f32(a11[9]);
  [a1 anchorPoint];
  if (v46 != v65.f64[0] || v45 != v65.f64[1])
  {
    [a1 setAnchorPoint:{*&v65, v45}];
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
  [a1 setAffineTransform:&v70];
  [a1 setAllowsEdgeAntialiasing:a11[7].f32[0] != 0.0];
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
      v50 = [v18 imageRef];
      v29 = CGImageGetWidth(v50) / a6;
      v30 = CGImageGetHeight(v50) / a6;
    }

    v51 = a3 / v29;
    v52 = a2 / v30;
    v53 = (v29 - a5 - a3) / v29;
    v54 = (v30 - a4 - a2) / v30;
    [a1 contentsCenter];
    v76.origin.x = v51;
    v76.origin.y = v52;
    v76.size.width = v53;
    v76.size.height = v54;
    if (!CGRectEqualToRect(v73, v76))
    {
      [a1 setContentsRect:{*MEMORY[0x277D3CFC0], *(MEMORY[0x277D3CFC0] + 8), *(MEMORY[0x277D3CFC0] + 16), *(MEMORY[0x277D3CFC0] + 24)}];
LABEL_51:
      [a1 setContentsCenter:{v51, v52, v53, v54}];
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
    [a1 contentsRect];
    v77.origin.x = v56;
    v77.origin.y = v58;
    v77.size.width = v60;
    v77.size.height = v62;
    if (!CGRectEqualToRect(v74, v77))
    {
      [a1 setContentsRect:{v56, v58, v60, v62}];
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
  [a1 setHidden:1];
  [a1 setContents:0];
  [a1 setDelegate:0];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v2;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [a1 setAffineTransform:v8];
  v3 = *MEMORY[0x277D3CFC0];
  v4 = *(MEMORY[0x277D3CFC0] + 8);
  v5 = *(MEMORY[0x277D3CFC0] + 16);
  v6 = *(MEMORY[0x277D3CFC0] + 24);
  [a1 setContentsRect:{*MEMORY[0x277D3CFC0], v4, v5, v6}];
  return [a1 setContentsCenter:{v3, v4, v5, v6}];
}

- (BOOL)pxg_hasSuperview
{
  v1 = [a1 superlayer];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)pxg_isChildOfView:()PXGReusableViewAdoption
{
  v4 = a3;
  v5 = [a1 superlayer];
  v6 = [v4 layer];

  return v5 == v6;
}

- (void)pxg_insertIntoView:()PXGReusableViewAdoption atIndex:
{
  v6 = [a3 layer];
  [v6 insertSublayer:a1 atIndex:a4];
}

- (void)pxg_addToHostingView:()PXGReusableViewAdoption
{
  v4 = _PXGDisabledLayerActions_onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&_PXGDisabledLayerActions_onceToken, &__block_literal_global_383);
  }

  [a1 setActions:_PXGDisabledLayerActions_disabledActions];
  [a1 setCornerCurve:*MEMORY[0x277CDA138]];
  [v5 addHostedLayer:a1];
}

- (void)pxg_addToScrollViewController:()PXGReusableViewAdoption floatingAxis:
{
  v4 = _PXGDisabledLayerActions_onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&_PXGDisabledLayerActions_onceToken, &__block_literal_global_383);
  }

  [a1 setActions:_PXGDisabledLayerActions_disabledActions];
  [a1 setCornerCurve:*MEMORY[0x277CDA138]];
  [v5 addFloatingSublayer:a1 forAxis:1];
}

@end