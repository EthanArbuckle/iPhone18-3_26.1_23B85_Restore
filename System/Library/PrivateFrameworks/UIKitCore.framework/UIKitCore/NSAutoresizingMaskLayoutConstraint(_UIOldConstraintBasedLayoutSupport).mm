@interface NSAutoresizingMaskLayoutConstraint(_UIOldConstraintBasedLayoutSupport)
+ (id)oldUIConstraintsWithAutoresizingMask:()_UIOldConstraintBasedLayoutSupport subitem:frame:superitem:bounds:;
@end

@implementation NSAutoresizingMaskLayoutConstraint(_UIOldConstraintBasedLayoutSupport)

+ (id)oldUIConstraintsWithAutoresizingMask:()_UIOldConstraintBasedLayoutSupport subitem:frame:superitem:bounds:
{
  v18 = a12;
  v19 = a13;
  array = [MEMORY[0x1E695DF70] array];
  v21 = a11 & 7;
  if (v21 <= 3)
  {
    if ((a11 & 7) <= 1)
    {
      if ((a11 & 7) != 0)
      {
        v110.origin.x = a5;
        v110.origin.y = a6;
        v110.size.width = a7;
        v110.size.height = a8;
        MaxX = CGRectGetMaxX(v110);
        rect = a7;
        v111.origin.x = self;
        v111.origin.y = a2;
        v111.size.width = a3;
        v111.size.height = a4;
        v23 = MaxX - CGRectGetMaxX(v111);
        v24 = MEMORY[0x1E6997770];
        v112.origin.x = a5;
        v112.origin.y = a6;
        v112.size.width = a7;
        v112.size.height = a8;
        v25 = CGRectGetMinX(v112) - v23;
        v113.origin.x = self;
        v113.origin.y = a2;
        v113.size.width = a3;
        v113.size.height = a4;
        v26 = [v24 constraintWithItem:v18 attribute:34 relatedBy:0 toItem:v19 attribute:7 constant:v25 + CGRectGetWidth(v113) * -0.5];
        [array addObject:v26];
        v27 = MEMORY[0x1E6997770];
        selfCopy2 = self;
        v29 = a2;
        v30 = a3;
        v31 = a4;
LABEL_8:
        v32 = [v27 constraintWithItem:v18 attribute:7 relatedBy:0 constant:CGRectGetWidth(*&selfCopy2)];
        goto LABEL_43;
      }

LABEL_7:
      v114.origin.x = self;
      v114.origin.y = a2;
      v114.size.width = a3;
      v114.size.height = a4;
      v26 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:34 relatedBy:0 constant:CGRectGetMidX(v114)];
      [array addObject:v26];
      v27 = MEMORY[0x1E6997770];
      selfCopy2 = self;
      v29 = a2;
      v30 = a3;
      v31 = a4;
      goto LABEL_8;
    }

    if (v21 == 2)
    {
      v115.origin.x = self;
      v115.origin.y = a2;
      v115.size.width = a3;
      v115.size.height = a4;
      recta = CGRectGetMinX(v115);
      v116.origin.x = a5;
      v116.origin.y = a6;
      v116.size.width = a7;
      v116.size.height = a8;
      rect = recta - CGRectGetMinX(v116);
      v117.origin.x = a5;
      v117.origin.y = a6;
      v117.size.width = a7;
      v117.size.height = a8;
      v33 = CGRectGetMaxX(v117);
      v118.origin.x = self;
      v118.origin.y = a2;
      v118.size.width = a3;
      v118.size.height = a4;
      v34 = v33 - CGRectGetMaxX(v118);
      v26 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:34 relatedBy:0 toItem:v19 attribute:34 multiplier:1.0 constant:(rect - v34) * 0.5];
      [array addObject:v26];
      v32 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:7 relatedBy:0 toItem:v19 attribute:7 constant:-(rect + v34)];
      goto LABEL_43;
    }

    v129.origin.x = a5;
    v129.origin.y = a6;
    v129.size.width = a7;
    v129.size.height = a8;
    v49 = CGRectGetMaxX(v129);
    v130.origin.x = self;
    v130.size.width = a3;
    v130.size.height = a4;
    v130.origin.y = a2;
    v50 = CGRectGetMaxX(v130);
    v131.size.width = a7;
    v51 = v49 - v50;
    v131.origin.x = a5;
    v131.origin.y = a6;
    v131.size.height = a8;
    v52 = CGRectGetWidth(v131) - v51;
    if (v52 == 0.0)
    {
      v40 = 0.5;
      if (*MEMORY[0x1E6997758] > 0.0)
      {
LABEL_23:
        v133.origin.x = a5;
        v133.origin.y = a6;
        v133.size.width = a7;
        v133.size.height = a8;
        MinX = CGRectGetMinX(v133);
        v26 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:34 relatedBy:0 toItem:v19 attribute:34 multiplier:2.0 - v40 constant:MinX * (v40 * 1.5 + -1.0) + v51 * (v40 * 0.5 + -1.0)];
        [array addObject:v26];
        v44 = MEMORY[0x1E6997770];
        v43 = -(v40 * (v51 + MinX));
        goto LABEL_24;
      }
    }

    else
    {
      v40 = 0.5;
      if (fabs(v52) < *MEMORY[0x1E6997758])
      {
        goto LABEL_23;
      }
    }

    v132.origin.x = self;
    v132.size.width = a3;
    v132.size.height = a4;
    v132.origin.y = a2;
    v40 = CGRectGetWidth(v132) / v52;
    goto LABEL_23;
  }

  if ((a11 & 7) <= 5)
  {
    if (v21 == 4)
    {
      goto LABEL_7;
    }

    v125.origin.x = a5;
    v125.origin.y = a6;
    v125.size.width = a7;
    v125.size.height = a8;
    Width = CGRectGetWidth(v125);
    if (Width == 0.0)
    {
      v40 = 0.5;
      if (*MEMORY[0x1E6997758] > 0.0)
      {
LABEL_19:
        v128.origin.x = self;
        v128.size.width = a3;
        v128.size.height = a4;
        v128.origin.y = a2;
        v26 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:7 relatedBy:0 constant:CGRectGetWidth(v128)];
        [array addObject:v26];
        v44 = MEMORY[0x1E6997770];
        v43 = 0.0;
        v47 = v18;
        v48 = 34;
LABEL_25:
        v32 = [v44 constraintWithItem:v47 attribute:v48 relatedBy:0 toItem:v19 attribute:7 multiplier:v40 constant:{v43, *&rect}];
        goto LABEL_43;
      }
    }

    else
    {
      v40 = 0.5;
      if (fabs(Width) < *MEMORY[0x1E6997758])
      {
        goto LABEL_19;
      }
    }

    v126.origin.x = self;
    v126.size.width = a3;
    v126.size.height = a4;
    v126.origin.y = a2;
    MidX = CGRectGetMidX(v126);
    v127.origin.x = a5;
    v127.origin.y = a6;
    v127.size.width = a7;
    v127.size.height = a8;
    v40 = MidX / CGRectGetWidth(v127);
    goto LABEL_19;
  }

  if (v21 == 6)
  {
    v119.origin.x = self;
    v119.size.width = a3;
    v119.size.height = a4;
    v119.origin.y = a2;
    v35 = CGRectGetMinX(v119);
    v120.origin.x = a5;
    v120.origin.y = a6;
    v120.size.width = a7;
    v120.size.height = a8;
    v36 = v35 - CGRectGetMinX(v120);
    v37 = a5;
    v121.origin.x = a5;
    v121.origin.y = a6;
    rect = a7;
    v121.size.width = a7;
    v121.size.height = a8;
    v38 = CGRectGetWidth(v121) - v36;
    if (v38 == 0.0)
    {
      v39 = a8;
      v40 = 1.0;
      if (*MEMORY[0x1E6997758] > 0.0)
      {
LABEL_15:
        v123.origin.x = v37;
        v123.origin.y = a6;
        a7 = rect;
        v123.size.width = rect;
        v123.size.height = v39;
        v41 = v39;
        v26 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:34 relatedBy:0 toItem:v19 attribute:34 multiplier:v40 constant:v36 * (v40 * -0.5 + 1.0) + CGRectGetMinX(v123) * (v40 * -1.5 + 1.0)];
        [array addObject:v26];
        v42 = MEMORY[0x1E6997770];
        a5 = v37;
        v124.origin.x = v37;
        v124.origin.y = a6;
        v124.size.width = rect;
        v124.size.height = v41;
        v43 = -(v40 * (v36 + CGRectGetMinX(v124)));
        v44 = v42;
LABEL_24:
        v47 = v18;
        v48 = 7;
        goto LABEL_25;
      }
    }

    else
    {
      v39 = a8;
      v40 = 1.0;
      if (fabs(v38) < *MEMORY[0x1E6997758])
      {
        goto LABEL_15;
      }
    }

    v122.origin.x = self;
    v122.size.width = a3;
    v122.size.height = a4;
    v122.origin.y = a2;
    v40 = CGRectGetWidth(v122) / v38;
    goto LABEL_15;
  }

  v134.origin.x = a5;
  v134.origin.y = a6;
  v134.size.width = a7;
  v134.size.height = a8;
  v54 = CGRectGetWidth(v134);
  v55 = MEMORY[0x1E6997758];
  if (v54 == 0.0)
  {
    v56 = 0.5;
    if (*MEMORY[0x1E6997758] > 0.0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v56 = 0.5;
  if (fabs(v54) >= *MEMORY[0x1E6997758])
  {
LABEL_28:
    v135.origin.x = self;
    v135.size.width = a3;
    v135.size.height = a4;
    v135.origin.y = a2;
    v57 = CGRectGetMidX(v135);
    v136.origin.x = a5;
    v136.origin.y = a6;
    v136.size.width = a7;
    v136.size.height = a8;
    v56 = v57 / CGRectGetWidth(v136);
  }

LABEL_29:
  v137.origin.x = a5;
  v137.origin.y = a6;
  v137.size.width = a7;
  v137.size.height = a8;
  v26 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:34 relatedBy:0 toItem:v19 attribute:7 multiplier:v56 constant:CGRectGetMinX(v137)];
  [array addObject:v26];
  v138.origin.x = a5;
  v138.origin.y = a6;
  v138.size.width = a7;
  v138.size.height = a8;
  v58 = CGRectGetWidth(v138);
  if (v58 != 0.0)
  {
    if (fabs(v58) < *v55)
    {
      goto LABEL_31;
    }

LABEL_41:
    v139.origin.x = self;
    v139.size.width = a3;
    v139.size.height = a4;
    v139.origin.y = a2;
    v60 = CGRectGetWidth(v139);
    v140.origin.x = a5;
    v140.origin.y = a6;
    v140.size.width = a7;
    v140.size.height = a8;
    v59 = v60 / CGRectGetWidth(v140);
    goto LABEL_42;
  }

  if (*v55 <= 0.0)
  {
    goto LABEL_41;
  }

LABEL_31:
  v59 = 0.333333333;
LABEL_42:
  v32 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:7 relatedBy:0 toItem:v19 attribute:7 multiplier:v59];
LABEL_43:
  v61 = v32;

  [array addObject:v61];
  v62 = (a11 >> 3) & 7;
  if (v62 <= 3)
  {
    if (((a11 >> 3) & 7) <= 1)
    {
      if (v62)
      {
        v141.origin.x = a5;
        v141.origin.y = a6;
        v141.size.width = a7;
        v141.size.height = a8;
        MaxY = CGRectGetMaxY(v141);
        v142.origin.x = self;
        v142.origin.y = a2;
        v142.size.width = a3;
        v142.size.height = a4;
        v64 = MaxY - CGRectGetMaxY(v142);
        v65 = MEMORY[0x1E6997770];
        v143.origin.x = a5;
        v143.origin.y = a6;
        v143.size.width = a7;
        v143.size.height = a8;
        v66 = CGRectGetMinY(v143) - v64;
        v144.origin.x = self;
        v144.origin.y = a2;
        v144.size.width = a3;
        v144.size.height = a4;
        v67 = [v65 constraintWithItem:v18 attribute:35 relatedBy:0 toItem:v19 attribute:8 constant:v66 + CGRectGetHeight(v144) * -0.5];

        [array addObject:v67];
        v68 = MEMORY[0x1E6997770];
        selfCopy4 = self;
        v70 = a2;
        v71 = a3;
        v72 = a4;
LABEL_50:
        v73 = [v68 constraintWithItem:v18 attribute:8 relatedBy:0 constant:CGRectGetHeight(*&selfCopy4)];
        goto LABEL_85;
      }

LABEL_49:
      v145.origin.x = self;
      v145.origin.y = a2;
      v145.size.width = a3;
      v145.size.height = a4;
      v67 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:35 relatedBy:0 constant:CGRectGetMidY(v145)];

      [array addObject:v67];
      v68 = MEMORY[0x1E6997770];
      selfCopy4 = self;
      v70 = a2;
      v71 = a3;
      v72 = a4;
      goto LABEL_50;
    }

    if (v62 == 2)
    {
      v146.origin.x = self;
      v146.origin.y = a2;
      v146.size.width = a3;
      v146.size.height = a4;
      rectb = CGRectGetMinY(v146);
      v147.origin.x = a5;
      v147.origin.y = a6;
      v147.size.width = a7;
      v147.size.height = a8;
      rectc = rectb - CGRectGetMinY(v147);
      v148.origin.x = a5;
      v148.origin.y = a6;
      v148.size.width = a7;
      v148.size.height = a8;
      v74 = CGRectGetMaxY(v148);
      v149.origin.x = self;
      v149.origin.y = a2;
      v149.size.width = a3;
      v149.size.height = a4;
      v75 = v74 - CGRectGetMaxY(v149);
      v67 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:35 relatedBy:0 toItem:v19 attribute:35 multiplier:1.0 constant:(rectc - v75) * 0.5];

      [array addObject:v67];
      v73 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:8 relatedBy:0 toItem:v19 attribute:8 constant:-(rectc + v75)];
      goto LABEL_85;
    }

    v160.origin.x = a5;
    v160.origin.y = a6;
    v160.size.width = a7;
    v160.size.height = a8;
    v87 = CGRectGetMaxY(v160);
    v161.origin.x = self;
    v161.size.width = a3;
    v161.size.height = a4;
    v161.origin.y = a2;
    v88 = CGRectGetMaxY(v161);
    v162.size.width = a7;
    v89 = v87 - v88;
    v162.origin.x = a5;
    v162.origin.y = a6;
    rect = v162.size.width;
    v162.size.height = a8;
    v90 = CGRectGetHeight(v162) - v89;
    if (v90 == 0.0)
    {
      v79 = 0.5;
      if (*MEMORY[0x1E6997758] > 0.0)
      {
LABEL_65:
        v164.origin.x = a5;
        v164.origin.y = a6;
        v164.size.width = rect;
        v164.size.height = a8;
        MinY = CGRectGetMinY(v164);
        v67 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:35 relatedBy:0 toItem:v19 attribute:35 multiplier:2.0 - v79 constant:MinY * (v79 * 1.5 + -1.0) + v89 * (v79 * 0.5 + -1.0)];

        [array addObject:v67];
        v82 = MEMORY[0x1E6997770];
        v81 = -(v79 * (v89 + MinY));
        goto LABEL_66;
      }
    }

    else
    {
      v79 = 0.5;
      if (fabs(v90) < *MEMORY[0x1E6997758])
      {
        goto LABEL_65;
      }
    }

    v163.origin.x = self;
    v163.size.width = a3;
    v163.size.height = a4;
    v163.origin.y = a2;
    v79 = CGRectGetHeight(v163) / v90;
    goto LABEL_65;
  }

  if (((a11 >> 3) & 7) <= 5)
  {
    if (v62 == 4)
    {
      goto LABEL_49;
    }

    v156.origin.x = a5;
    v156.origin.y = a6;
    v156.size.width = a7;
    v156.size.height = a8;
    Height = CGRectGetHeight(v156);
    if (Height == 0.0)
    {
      v79 = 0.5;
      if (*MEMORY[0x1E6997758] > 0.0)
      {
LABEL_61:
        v159.origin.x = self;
        v159.size.width = a3;
        v159.size.height = a4;
        v159.origin.y = a2;
        v67 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:8 relatedBy:0 constant:CGRectGetHeight(v159)];

        [array addObject:v67];
        v82 = MEMORY[0x1E6997770];
        v81 = 0.0;
        v85 = v18;
        v86 = 35;
LABEL_67:
        v73 = [v82 constraintWithItem:v85 attribute:v86 relatedBy:0 toItem:v19 attribute:8 multiplier:v79 constant:{v81, *&rect}];
        goto LABEL_85;
      }
    }

    else
    {
      v79 = 0.5;
      if (fabs(Height) < *MEMORY[0x1E6997758])
      {
        goto LABEL_61;
      }
    }

    v157.origin.x = self;
    v157.size.width = a3;
    v157.size.height = a4;
    v157.origin.y = a2;
    MidY = CGRectGetMidY(v157);
    v158.origin.x = a5;
    v158.origin.y = a6;
    v158.size.width = a7;
    v158.size.height = a8;
    v79 = MidY / CGRectGetHeight(v158);
    goto LABEL_61;
  }

  if (v62 == 6)
  {
    v150.origin.x = self;
    v150.size.width = a3;
    v150.size.height = a4;
    v150.origin.y = a2;
    v76 = CGRectGetMinY(v150);
    v151.origin.x = a5;
    v151.origin.y = a6;
    v151.size.width = a7;
    v151.size.height = a8;
    v77 = v76 - CGRectGetMinY(v151);
    v152.origin.x = a5;
    v152.origin.y = a6;
    rect = a7;
    v152.size.width = a7;
    v152.size.height = a8;
    v78 = CGRectGetHeight(v152) - v77;
    if (v78 == 0.0)
    {
      v79 = 1.0;
      if (*MEMORY[0x1E6997758] > 0.0)
      {
LABEL_57:
        v154.origin.x = a5;
        v154.origin.y = a6;
        v154.size.width = rect;
        v154.size.height = a8;
        v67 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:35 relatedBy:0 toItem:v19 attribute:35 multiplier:v79 constant:v77 * (v79 * -0.5 + 1.0) + CGRectGetMinY(v154) * (v79 * -1.5 + 1.0)];

        [array addObject:v67];
        v80 = MEMORY[0x1E6997770];
        v155.origin.x = a5;
        v155.origin.y = a6;
        v155.size.width = rect;
        v155.size.height = a8;
        v81 = -(v79 * (v77 + CGRectGetMinY(v155)));
        v82 = v80;
LABEL_66:
        v85 = v18;
        v86 = 8;
        goto LABEL_67;
      }
    }

    else
    {
      v79 = 1.0;
      if (fabs(v78) < *MEMORY[0x1E6997758])
      {
        goto LABEL_57;
      }
    }

    v153.origin.x = self;
    v153.size.width = a3;
    v153.size.height = a4;
    v153.origin.y = a2;
    v79 = CGRectGetHeight(v153) / v78;
    goto LABEL_57;
  }

  v165.origin.x = a5;
  v165.origin.y = a6;
  v165.size.width = a7;
  v165.size.height = a8;
  v92 = CGRectGetHeight(v165);
  if (v92 == 0.0)
  {
    v93 = 0.5;
    if (*MEMORY[0x1E6997758] > 0.0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v93 = 0.5;
  if (fabs(v92) >= *MEMORY[0x1E6997758])
  {
LABEL_70:
    v166.origin.x = self;
    v166.size.width = a3;
    v166.size.height = a4;
    v166.origin.y = a2;
    v94 = CGRectGetMidY(v166);
    v167.origin.x = a5;
    v167.origin.y = a6;
    v167.size.width = a7;
    v167.size.height = a8;
    v93 = v94 / CGRectGetHeight(v167);
  }

LABEL_71:
  v168.origin.x = a5;
  v168.origin.y = a6;
  v168.size.width = a7;
  v168.size.height = a8;
  v67 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:35 relatedBy:0 toItem:v19 attribute:8 multiplier:v93 constant:CGRectGetMinY(v168)];

  [array addObject:v67];
  v169.origin.x = a5;
  v169.origin.y = a6;
  v169.size.width = a7;
  v169.size.height = a8;
  v95 = CGRectGetHeight(v169);
  if (v95 != 0.0)
  {
    if (fabs(v95) < *MEMORY[0x1E6997758])
    {
      goto LABEL_73;
    }

LABEL_83:
    v170.origin.x = self;
    v170.size.width = a3;
    v170.size.height = a4;
    v170.origin.y = a2;
    v97 = CGRectGetHeight(v170);
    v171.origin.x = a5;
    v171.origin.y = a6;
    v171.size.width = a7;
    v171.size.height = a8;
    v96 = v97 / CGRectGetHeight(v171);
    goto LABEL_84;
  }

  if (*MEMORY[0x1E6997758] <= 0.0)
  {
    goto LABEL_83;
  }

LABEL_73:
  v96 = 0.333333333;
LABEL_84:
  v73 = [MEMORY[0x1E6997770] constraintWithItem:v18 attribute:8 relatedBy:0 toItem:v19 attribute:8 multiplier:{v96, *&rect}];
LABEL_85:
  v98 = v73;

  [array addObject:v98];

  return array;
}

@end