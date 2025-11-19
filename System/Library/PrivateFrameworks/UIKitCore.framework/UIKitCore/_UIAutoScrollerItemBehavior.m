@interface _UIAutoScrollerItemBehavior
- ($9F891FA3B7BC1BE651A10F4EEBEFFC62)offsetForAutoScroller:(SEL)a3 timeDelta:(id)a4;
@end

@implementation _UIAutoScrollerItemBehavior

- ($9F891FA3B7BC1BE651A10F4EEBEFFC62)offsetForAutoScroller:(SEL)a3 timeDelta:(id)a4
{
  retstr->var0.x = 0.0;
  retstr->var0.y = 0.0;
  retstr->var1 = 0;
  v6 = a4;
  [v6 point];
  v8 = v7;
  v10 = v9;
  [v6 touchInsets];
  v106 = v10 + v11;
  v108 = v8 + v12;
  v14 = 0.0;
  v15 = 0.0 - (v12 + v13);
  v17 = 0.0 - (v11 + v16);
  v18 = [v6 scrollView];
  v19 = [v6 allowedDirections];

  [v18 adjustedContentInset];
  v21 = fmax(v20, 0.0);
  v23 = fmax(v22, 0.0);
  v25 = fmax(v24, 0.0);
  v27 = fmax(v26, 0.0);
  [v18 bounds];
  v110 = v23 + v28;
  v30 = v21 + v29;
  v99 = v23;
  v100 = v21;
  v97 = v27;
  v98 = v25;
  v32 = v31 - (v23 + v27);
  v33 = v21 + v25;
  v34 = v15;
  v36 = v35 - v33;
  [v18 contentSize];
  v104 = v37;
  v105 = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke;
  aBlock[3] = &__block_descriptor_40_e73_B72__0_CGRect__CGPoint_dd__CGSize_dd__8_CGRect__CGPoint_dd__CGSize_dd__40l;
  aBlock[4] = v19;
  v39 = _Block_copy(aBlock);
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke_2;
  v115[3] = &__block_descriptor_40_e73_B72__0_CGRect__CGPoint_dd__CGSize_dd__8_CGRect__CGPoint_dd__CGSize_dd__40l;
  v115[4] = v19;
  v40 = _Block_copy(v115);
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke_3;
  v114[3] = &__block_descriptor_40_e73_B72__0_CGRect__CGPoint_dd__CGSize_dd__8_CGRect__CGPoint_dd__CGSize_dd__40l;
  v114[4] = v19;
  v41 = _Block_copy(v114);
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke_4;
  v113[3] = &__block_descriptor_40_e73_B72__0_CGRect__CGPoint_dd__CGSize_dd__8_CGRect__CGPoint_dd__CGSize_dd__40l;
  v113[4] = v19;
  v42 = _Block_copy(v113);
  rect = v17;
  v43 = v17;
  v44 = v30;
  v45 = v110;
  if (v39[2](v39, v108, v106, v15, v43, v110, v44, v32, v36))
  {
    v117.origin.x = v110;
    v117.origin.y = v44;
    v117.size.width = v32;
    v117.size.height = v36;
    if (CGRectGetMaxY(v117) < v105)
    {
      retstr->var1 |= 0x10uLL;
      v118.origin.x = v108;
      v118.origin.y = v106;
      v118.size.width = v15;
      v46 = v44;
      v47 = rect;
      v118.size.height = rect;
      v101 = v15;
      MaxY = CGRectGetMaxY(v118);
      v119.origin.x = v110;
      v49 = v46;
      v119.origin.y = v46;
      v119.size.width = v32;
      v119.size.height = v36;
      v50 = MaxY - CGRectGetMaxY(v119);
      if (v50 <= 40.0)
      {
        v52 = v50;
      }

      else
      {
        v52 = 40.0;
      }

      if (v52 > 0.0)
      {
        v120.origin.x = v108;
        v120.origin.y = v106;
        v34 = v15;
        v120.size.width = v15;
        v120.size.height = rect;
        Height = CGRectGetHeight(v120);
        v14 = floor(v52 / (Height * 0.5) * (v52 / (Height * 0.5) * 1080.0) + 120.0);
LABEL_16:
        v51.n128_f64[0] = v47;
        v44 = v49;
        v45 = v110;
        goto LABEL_17;
      }

      *&v62 = 120.0;
      goto LABEL_15;
    }
  }

  if (v40[2](v40, v108, v106, v15, rect, v110, v44, v32, v36))
  {
    v121.origin.x = v110;
    v121.origin.y = v44;
    v121.size.width = v32;
    v121.size.height = v36;
    MinY = CGRectGetMinY(v121);
    v51.n128_f64[0] = rect;
    if (MinY > 0.0)
    {
      retstr->var1 |= 8uLL;
      v55 = v108;
      v56 = v106;
      v57 = v15;
      v58 = v44;
      v47 = rect;
      v101 = v15;
      v59 = CGRectGetMinY(*(&v51 - 24));
      v122.origin.x = v110;
      v49 = v58;
      v122.origin.y = v58;
      v122.size.width = v32;
      v122.size.height = v36;
      v60 = fmax(v59 - CGRectGetMinY(v122), -40.0);
      if (v60 < 0.0)
      {
        v123.origin.x = v108;
        v123.origin.y = v106;
        v34 = v15;
        v123.size.width = v15;
        v123.size.height = rect;
        v61 = CGRectGetHeight(v123);
        v14 = -floor(v60 / (v61 * 0.5) * (v60 / (v61 * 0.5) * 1080.0) + 120.0);
        goto LABEL_16;
      }

      *&v62 = -120.0;
LABEL_15:
      v14 = *&v62;
      v34 = v101;
      goto LABEL_16;
    }
  }

  else
  {
    v51.n128_f64[0] = rect;
  }

LABEL_17:
  if (v41[2](v41, v108, v106, v34, v51, v45, v44, v32, v36))
  {
    v124.origin.x = v45;
    v124.origin.y = v44;
    v124.size.width = v32;
    v124.size.height = v36;
    if (CGRectGetMaxX(v124) < v104)
    {
      retstr->var1 |= 4uLL;
      v125.origin.x = v108;
      v125.origin.y = v106;
      v125.size.width = v34;
      v125.size.height = rect;
      v102 = v34;
      MaxX = CGRectGetMaxX(v125);
      v126.origin.x = v45;
      v64 = v44;
      v126.origin.y = v44;
      v126.size.width = v32;
      v126.size.height = v36;
      v65 = MaxX - CGRectGetMaxX(v126);
      v66 = v106;
      if (v65 <= 40.0)
      {
        v67 = v65;
      }

      else
      {
        v67 = 40.0;
      }

      if (v67 > 0.0)
      {
        v68 = v108;
        v69 = v102;
        v70 = rect;
        Width = CGRectGetWidth(*(&v66 - 1));
        v72 = floor(v67 / (Width * 0.5) * (v67 / (Width * 0.5) * 1080.0) + 120.0);
LABEL_28:
        v44 = v64;
        v45 = v110;
        goto LABEL_29;
      }

      *&v79 = 120.0;
      goto LABEL_34;
    }
  }

  v73 = v42[2](v42, v108, v106);
  v72 = 0.0;
  if (v73)
  {
    v127.origin.x = v45;
    v127.origin.y = v44;
    v127.size.width = v32;
    v127.size.height = v36;
    v74 = CGRectGetMinX(v127) <= 0.0;
    v72 = 0.0;
    if (!v74)
    {
      retstr->var1 |= 2uLL;
      v128.origin.x = v108;
      v128.origin.y = v106;
      v75 = v34;
      v128.size.width = v34;
      v128.size.height = rect;
      MinX = CGRectGetMinX(v128);
      v129.origin.x = v45;
      v64 = v44;
      v129.origin.y = v44;
      v129.size.width = v32;
      v129.size.height = v36;
      v77 = fmax(MinX - CGRectGetMinX(v129), -40.0);
      if (v77 < 0.0)
      {
        v130.origin.y = v106;
        v130.origin.x = v108;
        v130.size.width = v75;
        v130.size.height = rect;
        v78 = CGRectGetWidth(v130);
        v72 = -floor(v77 / (v78 * 0.5) * (v77 / (v78 * 0.5) * 1080.0) + 120.0);
        goto LABEL_28;
      }

      *&v79 = -120.0;
LABEL_34:
      v72 = *&v79;
      v44 = v64;
      v45 = v110;
      goto LABEL_35;
    }
  }

LABEL_29:
  if (v14 == 0.0 && v72 == 0.0)
  {
    retstr->var1 = 1;
    goto LABEL_62;
  }

LABEL_35:
  recta = v72;
  v80 = [v18 isPagingEnabled];
  [v18 contentOffset];
  v82 = v81;
  v84 = v83;
  if (v80)
  {
    [v18 contentSize];
    v107 = v85;
    v109 = v86;
    v131.origin.x = v45;
    v131.origin.y = v44;
    v131.size.width = v32;
    v131.size.height = v36;
    v87 = CGRectGetWidth(v131);
    v132.origin.x = v45;
    v132.origin.y = v44;
    v132.size.width = v32;
    v132.size.height = v36;
    v88 = CGRectGetHeight(v132);
    if (recta <= 0.0)
    {
      v89 = 0.0;
      if (recta < 0.0)
      {
        if (v82 >= v87)
        {
          v89 = -v87;
        }

        else
        {
          v89 = -v82;
        }
      }
    }

    else
    {
      v89 = v87;
      if (v82 + v87 + v87 > v107)
      {
        v89 = v107 - v87 - v82;
      }
    }

    if (v14 <= 0.0)
    {
      v95 = 0.0;
      if (v14 < 0.0)
      {
        if (v84 - v88 >= v100)
        {
          v95 = -v88;
        }

        else
        {
          v95 = -v84 - v100;
        }
      }
    }

    else
    {
      v95 = v88;
      if (v84 + v88 + v88 > v109)
      {
        v95 = v109 - v88 - v84;
      }
    }

    retstr->var0.x = v82 + v89;
    retstr->var0.y = v84 + v95;
  }

  else
  {
    v133.origin.x = v45;
    v133.origin.y = v44;
    v133.size.width = v32;
    v133.size.height = v36;
    if (v105 > CGRectGetHeight(v133))
    {
      v90 = v14 * a5 + v84;
      v134.origin.x = v45;
      v134.origin.y = v44;
      v134.size.width = v32;
      v134.size.height = v36;
      v91 = v100 + v98 + v105 - CGRectGetHeight(v134);
      if (v90 <= v91)
      {
        v91 = v90;
      }

      if (v90 >= -v100)
      {
        v84 = v91;
      }

      else
      {
        v84 = -v100;
      }
    }

    v135.origin.x = v45;
    v135.origin.y = v44;
    v135.size.width = v32;
    v135.size.height = v36;
    if (v104 > CGRectGetWidth(v135))
    {
      v92 = recta * a5 + v82;
      v82 = -v99;
      v136.origin.x = v45;
      v136.origin.y = v44;
      v136.size.width = v32;
      v136.size.height = v36;
      v93 = CGRectGetWidth(v136);
      if (v92 >= -v99)
      {
        v94 = v97 + v99 + v104 - v93;
        v82 = v92;
        if (v92 > v94)
        {
          v82 = v94;
        }
      }
    }

    retstr->var0.x = v82;
    retstr->var0.y = v84;
  }

LABEL_62:

  return result;
}

@end