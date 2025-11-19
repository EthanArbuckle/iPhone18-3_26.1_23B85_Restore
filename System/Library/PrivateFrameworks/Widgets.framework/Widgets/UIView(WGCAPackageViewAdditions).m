@interface UIView(WGCAPackageViewAdditions)
- (BOOL)wg_imageContentsDrawWithinBounds;
- (BOOL)wg_supportsBottomCornerRadiusGivenRootView:()WGCAPackageViewAdditions withCornerRadius:supportedCorners:;
- (void)_wg_innerWalkSubviewTreeWithBlock:()WGCAPackageViewAdditions stop:;
@end

@implementation UIView(WGCAPackageViewAdditions)

- (void)_wg_innerWalkSubviewTreeWithBlock:()WGCAPackageViewAdditions stop:
{
  v6 = a3;
  v7 = v6;
  if ((*a4 & 1) == 0)
  {
    v13 = 1;
    v8 = (*(v6 + 2))(v6, a1, &v13);
    *a4 = v8;
    if ((v8 & 1) == 0 && v13 == 1)
    {
      v9 = [a1 subviews];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __75__UIView_WGCAPackageViewAdditions___wg_innerWalkSubviewTreeWithBlock_stop___block_invoke;
      v10[3] = &unk_279ED1718;
      v11 = v7;
      v12 = a4;
      [v9 enumerateObjectsUsingBlock:v10];
    }
  }
}

- (BOOL)wg_imageContentsDrawWithinBounds
{
  v2 = [a1 layer];
  if ([v2 isMemberOfClass:objc_opt_class()])
  {
    v3 = [a1 layer];
    v4 = [v3 contents];

    if (v4 && (v5 = CFGetTypeID(v4), v5 == CGImageGetTypeID()))
    {
      [a1 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      CGImageGetWidth(v4);
      _WGMainScreenScale();
      CGImageGetHeight(v4);
      _WGMainScreenScale();
      BSRectWithSize();
      v21.origin.x = v14;
      v21.origin.y = v15;
      v21.size.width = v16;
      v21.size.height = v17;
      v20.origin.x = v7;
      v20.origin.y = v9;
      v20.size.width = v11;
      v20.size.height = v13;
      v18 = CGRectContainsRect(v20, v21);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)wg_supportsBottomCornerRadiusGivenRootView:()WGCAPackageViewAdditions withCornerRadius:supportedCorners:
{
  v6 = a3;
  v7 = [v6 layer];
  v8 = [v7 animationKeys];
  v9 = [v8 count];

  if (v9)
  {
    goto LABEL_2;
  }

  [v6 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  _WGMainScreenScale();
  BSFloatRoundForScale();
  UIRectInset();
  v58 = v20;
  v59 = v19;
  v56 = v22;
  v57 = v21;
  v64.origin.x = v12;
  v64.origin.y = v14;
  v64.size.width = v16;
  v64.size.height = v18;
  CGRectGetMaxY(v64);
  v61 = v12;
  v62 = v14;
  v60 = v16;
  UIRectInset();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [a1 superview];
  [a1 frame];
  [v31 convertRect:v6 toView:?];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v63 = v38;

  if ([a1 clipsToBounds] & 1) != 0 || (objc_msgSend(a1, "wg_imageContentsDrawWithinBounds"))
  {
    v65.origin.x = v24;
    v65.origin.y = v26;
    v65.size.width = v28;
    v65.size.height = v30;
    v80.origin.x = v33;
    v80.origin.y = v35;
    v80.size.width = v37;
    v39 = v63;
    v80.size.height = v63;
    if (!CGRectIntersectsRect(v65, v80))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v39 = v63;
  }

  v66.origin.y = v62;
  v66.origin.x = v61;
  v66.size.width = v60;
  v66.size.height = v18;
  MaxY = CGRectGetMaxY(v66);
  v67.origin.x = v33;
  v67.origin.y = v35;
  v67.size.width = v37;
  v67.size.height = v39;
  if (vabdd_f64(MaxY, CGRectGetMaxY(v67)) > 2.22044605e-16)
  {
    goto LABEL_2;
  }

  v68.origin.x = v61;
  v68.origin.y = v62;
  v68.size.width = v60;
  v68.size.height = v18;
  MinX = CGRectGetMinX(v68);
  v69.origin.x = v33;
  v69.origin.y = v35;
  v69.size.width = v37;
  v69.size.height = v39;
  if (vabdd_f64(MinX, CGRectGetMinX(v69)) <= 2.22044605e-16)
  {
    v76.origin.x = v61;
    v76.origin.y = v62;
    v76.size.width = v60;
    v76.size.height = v18;
    MaxX = CGRectGetMaxX(v76);
    v77.origin.x = v33;
    v77.origin.y = v35;
    v43 = v62;
    v77.size.width = v37;
    v77.size.height = v39;
    v51 = vabdd_f64(MaxX, CGRectGetMaxX(v77));
    v42 = a4 != 0;
    if (a4 && v51 <= 2.22044605e-16)
    {
      v49 = 12;
      goto LABEL_26;
    }

    if (v51 <= 2.22044605e-16)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v42 = a4 != 0;
    v43 = v62;
  }

  v70.origin.x = v61;
  v70.origin.y = v43;
  v70.size.width = v60;
  v70.size.height = v18;
  v44 = CGRectGetMinX(v70);
  v71.origin.x = v33;
  v71.origin.y = v35;
  v71.size.width = v37;
  v71.size.height = v63;
  if (vabdd_f64(v44, CGRectGetMinX(v71)) <= 2.22044605e-16)
  {
    v78.origin.x = v33;
    v78.origin.y = v35;
    v78.size.width = v37;
    v78.size.height = v63;
    v52 = CGRectGetMaxX(v78);
    v79.origin.y = v58;
    v79.origin.x = v59;
    v79.size.height = v56;
    v79.size.width = v57;
    v53 = CGRectGetMaxX(v79);
    if (v52 <= v53 && v42)
    {
      v49 = 4;
      goto LABEL_26;
    }

    if (v52 <= v53)
    {
      goto LABEL_27;
    }
  }

  v72.origin.y = v58;
  v72.origin.x = v59;
  v72.size.height = v56;
  v72.size.width = v57;
  v45 = CGRectGetMinX(v72);
  v73.origin.x = v33;
  v73.origin.y = v35;
  v73.size.width = v37;
  v73.size.height = v63;
  if (v45 > CGRectGetMinX(v73))
  {
LABEL_2:
    v10 = 0;
    goto LABEL_28;
  }

  v74.origin.x = v61;
  v74.origin.y = v43;
  v74.size.width = v60;
  v74.size.height = v18;
  v46 = CGRectGetMaxX(v74);
  v75.origin.x = v33;
  v75.origin.y = v35;
  v75.size.width = v37;
  v75.size.height = v63;
  v47 = vabdd_f64(v46, CGRectGetMaxX(v75));
  v10 = v47 <= 2.22044605e-16;
  if (v47 <= 2.22044605e-16 && v42)
  {
    v49 = 8;
LABEL_26:
    *a4 = v49;
LABEL_27:
    v10 = 1;
  }

LABEL_28:

  return v10;
}

@end