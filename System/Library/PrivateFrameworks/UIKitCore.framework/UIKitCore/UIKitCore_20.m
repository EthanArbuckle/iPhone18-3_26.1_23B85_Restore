id _UIPinnedNonOverlappingFramesForContentFrameVisibleFrame(void *a1, char a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v237 = *MEMORY[0x1E69E9840];
  v16 = [a1 count];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v18 = a1;
  v19 = [v18 countByEnumeratingWithState:&v231 objects:v236 count:16];
  v181 = v17;
  v189 = a9;
  v187 = a4;
  v183 = a7;
  if (!v19)
  {
    goto LABEL_117;
  }

  v20 = v19;
  v21 = *v232;
  v182 = a8;
  rect2 = a5;
  do
  {
    v22 = 0;
    do
    {
      if (*v232 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v231 + 1) + 8 * v22);
      if (v23)
      {
        if ((*(v23 + 32) & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          v107 = [MEMORY[0x1E696AAA8] currentHandler];
          v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<_UICollectionLayoutFramesQueryResult *> * _Nonnull _UIPinnedNonOverlappingFramesForContentFrameVisibleFrame(NSArray<_UICollectionLayoutFramesQueryResult *> *const __strong _Nonnull, CGRect, CGRect, BOOL)"}];
          [v107 handleFailureInFunction:v108 file:@"_UICollectionLayoutHelpers.m" lineNumber:1963 description:@"Invalid item: this only works with auxillary items. Please file a bug on UICollectionView."];
        }

        v24 = *(v23 + 80);
        v190 = *(v23 + 88);
        v25 = *(v23 + 104);
        rect = *(v23 + 96);
      }

      else
      {
        v109 = [MEMORY[0x1E696AAA8] currentHandler];
        v110 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<_UICollectionLayoutFramesQueryResult *> * _Nonnull _UIPinnedNonOverlappingFramesForContentFrameVisibleFrame(NSArray<_UICollectionLayoutFramesQueryResult *> *const __strong _Nonnull, CGRect, CGRect, BOOL)"}];
        [v109 handleFailureInFunction:v110 file:@"_UICollectionLayoutHelpers.m" lineNumber:1963 description:@"Invalid item: this only works with auxillary items. Please file a bug on UICollectionView."];

        v190 = 0.0;
        rect = 0.0;
        v25 = 0.0;
        v24 = 0.0;
      }

      if (dyld_program_sdk_at_least())
      {
        v26 = [(_UICollectionLayoutFramesQueryResult *)v23 auxillaryItem];
        v27 = [v26 boundarySupplementaryItem];

        if (v27)
        {
          v28 = [v27 alignment];
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      v239.origin.x = a7;
      v239.origin.y = a8;
      v239.size.width = a9;
      v239.size.height = a10;
      v303.origin.x = a3;
      v303.origin.y = v187;
      v303.size.height = a6;
      v303.size.width = rect2;
      if (!CGRectIntersectsRect(v239, v303))
      {
        *&v205.origin.x = [MEMORY[0x1E696AAA8] currentHandler];
        v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIPinnedFrameForFrameWithContainerFrameVisibleFrame(CGRect, CGRect, CGRect, NSRectAlignment)"}];
        v282.origin.x = a7;
        v282.origin.y = a8;
        v282.size.width = a9;
        v282.size.height = a10;
        v105 = NSStringFromCGRect(v282);
        v283.origin.x = a3;
        v283.origin.y = v187;
        v283.size.height = a6;
        v283.size.width = rect2;
        v106 = NSStringFromCGRect(v283);
        [*&v205.origin.x handleFailureInFunction:v104 file:@"_UICollectionLayoutHelpers.m" lineNumber:763 description:{@"Attempted to lay out a pinned supplementary item whose frame %@ does not intersect with the visible bounds %@. Please file a bug against UICollectionView.", v105, v106}];
      }

      v240.origin.x = a7;
      v240.origin.y = a8;
      v240.size.width = a9;
      v240.size.height = a10;
      v304.origin.x = v24;
      v29 = v190;
      v304.origin.y = v190;
      v30 = rect;
      v304.size.width = rect;
      v304.size.height = v25;
      v31 = CGRectContainsRect(v240, v304);
      v32 = v24;
      v33 = v190;
      v185 = v32;
      v205.origin.x = v32;
      if (v31)
      {
        goto LABEL_59;
      }

      v241.origin.x = a3;
      v241.origin.y = v187;
      v241.size.height = a6;
      v241.size.width = rect2;
      v305.origin.y = v182;
      v305.origin.x = v183;
      v305.size.width = a9;
      v305.size.height = a10;
      v242 = CGRectIntersection(v241, v305);
      x = v242.origin.x;
      y = v242.origin.y;
      width = v242.size.width;
      v37 = v25;
      height = v242.size.height;
      v39 = v28 - 2;
      if (v28)
      {
        v40 = (v28 < 9) & (0x106u >> v28);
      }

      else
      {
        v40 = 1;
      }

      v41 = v39 < 3 || v28 == 0;
      v42 = v28 - 6 < 3 && v39 > 2;
      v43 = v42 || v28 == 0;
      MinY = CGRectGetMinY(v242);
      v243.origin.x = v185;
      v243.origin.y = v190;
      v243.size.width = rect;
      v44 = v37;
      v243.size.height = v37;
      v45 = CGRectGetMinY(v243);
      v180 = x;
      v244.origin.x = x;
      v194 = y;
      v244.origin.y = y;
      v244.size.width = width;
      v244.size.height = height;
      v46 = v45 - CGRectGetMinY(v244);
      if (v40 == 1 && v46 < 0.0)
      {
        v245.origin.x = v185;
        v245.origin.y = v190;
        v245.size.width = rect;
        v47 = v44;
        v48 = rect;
        v245.size.height = v47;
        MinX = CGRectGetMinX(v245);
        v50 = MinY;
      }

      else
      {
        v50 = v190;
        MinX = v185;
        v47 = v44;
        v48 = rect;
        if (((v28 != 0) & ((v28 > 8) | (0x70u >> v28) ^ 1)) == 0)
        {
          v50 = v190;
          MinX = v185;
          if (v46 > 0.0)
          {
            v250.origin.x = v185;
            v250.origin.y = v190;
            v250.size.width = rect;
            v250.size.height = v47;
            MaxY = CGRectGetMaxY(v250);
            v251.origin.x = v180;
            v251.size.width = width;
            v251.origin.y = v194;
            v251.size.height = height;
            v42 = MaxY <= CGRectGetMaxY(v251);
            v50 = v190;
            MinX = v185;
            if (!v42)
            {
              v252.origin.x = v185;
              v252.origin.y = v190;
              v252.size.width = rect;
              v252.size.height = v47;
              MinX = CGRectGetMinX(v252);
              v253.origin.x = v180;
              v253.size.width = width;
              v253.origin.y = v194;
              v253.size.height = height;
              v55 = CGRectGetMaxY(v253);
              v254.origin.x = v185;
              v254.origin.y = v190;
              v254.size.width = rect;
              v254.size.height = v47;
              v50 = v55 - CGRectGetHeight(v254);
              v48 = rect;
            }
          }
        }
      }

      recta = height;
      v205.origin.x = MinX;
      v246.origin.x = MinX;
      v246.origin.y = v50;
      v246.size.width = v48;
      v246.size.height = v47;
      v51 = CGRectGetMinY(v246);
      v247.origin.x = a3;
      v52 = v48;
      v247.origin.y = v187;
      v247.size.width = rect2;
      v247.size.height = a6;
      if (v51 >= CGRectGetMinY(v247))
      {
        v255.origin.x = v205.origin.x;
        v199 = v50;
        v255.origin.y = v50;
        v255.size.width = v48;
        v255.size.height = v47;
        v56 = CGRectGetMaxY(v255);
        v256.origin.x = a3;
        v256.origin.y = v187;
        v256.size.width = rect2;
        v256.size.height = a6;
        v42 = v56 <= CGRectGetMaxY(v256);
        v25 = v47;
        v53 = v205.origin.x;
        if (!v42)
        {
          v257.origin.x = v205.origin.x;
          v257.origin.y = v199;
          v257.size.width = v48;
          v257.size.height = v47;
          v57 = CGRectGetMinX(v257);
          v258.origin.x = a3;
          v258.origin.y = v187;
          v258.size.height = a6;
          v258.size.width = rect2;
          v58 = CGRectGetMaxY(v258);
          v259.origin.x = v205.origin.x;
          v259.origin.y = v199;
          v259.size.width = v52;
          v259.size.height = v47;
          v199 = v58 - CGRectGetHeight(v259);
          v53 = v57;
        }
      }

      else
      {
        v248.origin.x = v205.origin.x;
        v248.origin.y = v50;
        v248.size.width = v48;
        v248.size.height = v47;
        v53 = CGRectGetMinX(v248);
        v249.origin.x = a3;
        v249.origin.y = v187;
        v249.size.width = rect2;
        v249.size.height = a6;
        v199 = CGRectGetMinY(v249);
        v25 = v47;
      }

      v260.origin.x = v180;
      v260.origin.y = v194;
      v260.size.width = width;
      v260.size.height = recta;
      v205.origin.x = CGRectGetMinX(v260);
      v261.origin.x = v185;
      v261.origin.y = v190;
      v59 = v52;
      v261.size.width = v52;
      v261.size.height = v25;
      v60 = CGRectGetMinX(v261);
      v262.origin.x = v180;
      v262.origin.y = v194;
      v262.size.width = width;
      v262.size.height = recta;
      v61 = v60 - CGRectGetMinX(v262);
      v62 = !v41;
      if (v61 >= 0.0)
      {
        v62 = 1;
      }

      if (v62)
      {
        v72 = !v43;
        if (v61 <= 0.0)
        {
          v72 = 1;
        }

        if (v72)
        {
          v64 = v53;
          v65 = a6;
          v66 = rect2;
          v71 = v199;
          v67 = v59;
          goto LABEL_54;
        }

        v263.origin.x = v53;
        v263.origin.y = v199;
        v263.size.width = v52;
        v263.size.height = v25;
        MaxX = CGRectGetMaxX(v263);
        v264.origin.x = v180;
        v264.origin.y = v194;
        v264.size.width = width;
        v264.size.height = recta;
        if (MaxX <= CGRectGetMaxX(v264))
        {
          v64 = v53;
          v65 = a6;
          v66 = rect2;
          v67 = v59;
          v71 = v199;
          goto LABEL_54;
        }

        v265.origin.x = v180;
        v265.origin.y = v194;
        v265.size.width = width;
        v265.size.height = recta;
        v74 = v53;
        v75 = CGRectGetMaxX(v265);
        v266.origin.x = v74;
        v266.origin.y = v199;
        v266.size.width = v52;
        v195 = v25;
        v266.size.height = v25;
        v76 = CGRectGetWidth(v266);
        v63 = v74;
        v64 = v75 - v76;
        v65 = a6;
        v66 = rect2;
        v67 = v59;
      }

      else
      {
        v195 = v25;
        v63 = v53;
        v64 = v205.origin.x;
        v65 = a6;
        v66 = rect2;
        v67 = v59;
      }

      v68 = v199;
      v69 = v67;
      v25 = v195;
      v70 = v195;
      v71 = CGRectGetMinY(*&v63);
LABEL_54:
      v267.origin.x = v64;
      v267.origin.y = v71;
      v267.size.width = v67;
      v267.size.height = v25;
      v77 = CGRectGetMinX(v267);
      v268.origin.x = a3;
      v268.origin.y = v187;
      v268.size.width = v66;
      v268.size.height = v65;
      v205.origin.x = v64;
      if (v77 < CGRectGetMinX(v268))
      {
        v269.origin.x = a3;
        v269.origin.y = v187;
        v269.size.width = v66;
        v269.size.height = v65;
        v78 = CGRectGetMinX(v269);
        v33 = v71;
        v30 = v67;
LABEL_58:
        v273.origin.x = v205.origin.x;
        v273.origin.y = v33;
        v273.size.width = v30;
        v273.size.height = v25;
        v33 = CGRectGetMinY(v273);
        v205.origin.x = v78;
        a9 = v189;
        v29 = v190;
        goto LABEL_59;
      }

      v270.origin.x = v64;
      v270.origin.y = v71;
      v270.size.width = v67;
      v270.size.height = v25;
      v79 = CGRectGetMaxX(v270);
      v271.origin.x = a3;
      v271.origin.y = v187;
      v271.size.width = v66;
      v271.size.height = v65;
      v42 = v79 <= CGRectGetMaxX(v271);
      v80 = a3;
      v33 = v71;
      a9 = v189;
      v29 = v190;
      v30 = v67;
      if (!v42)
      {
        v81 = v187;
        v82 = a6;
        v83 = rect2;
        v84 = CGRectGetMaxX(*&v80);
        v272.origin.x = v205.origin.x;
        v272.origin.y = v33;
        v272.size.width = v67;
        v272.size.height = v25;
        v78 = v84 - CGRectGetWidth(v272);
        goto LABEL_58;
      }

LABEL_59:
      if (vabdd_f64(v29, v33) > 0.001 || vabdd_f64(v185, v205.origin.x) > 0.001)
      {
        v85 = 1;
        v86 = 1;
        goto LABEL_62;
      }

      if (!_UIFloatingBarEnabled())
      {
LABEL_111:
        v85 = 0;
        v86 = 0;
        goto LABEL_62;
      }

      if (v23)
      {
        v100 = *(v23 + 64);
        v101 = v100 - 1;
        if (v100 - 1) <= 7 && ((0xBBu >> v101))
        {
          v102 = qword_18A678C08[v101];
        }

        else
        {
          v102 = 0;
        }

        if ((v100 - 2) < 3)
        {
          v103 = 2;
          goto LABEL_101;
        }
      }

      else
      {
        v100 = 0;
        v102 = 0;
      }

      v103 = 8 * ((v100 - 6) < 3);
LABEL_101:
      if (v102 == 4)
      {
        v286.origin.x = v185;
        v286.origin.y = v29;
        v286.size.width = v30;
        v286.size.height = v25;
        MidY = CGRectGetMidY(v286);
        v287.origin.y = v182;
        v287.origin.x = v183;
        v287.size.width = v189;
        v287.size.height = a10;
        v114 = CGRectGetMidY(v287);
      }

      else
      {
        if (v102 == 1)
        {
          v284.origin.x = v185;
          v284.origin.y = v29;
          v284.size.width = v30;
          v284.size.height = v25;
          MidX = CGRectGetMidY(v284);
          v285.origin.y = v182;
          v285.origin.x = v183;
          v285.size.width = v189;
          v285.size.height = a10;
          v112 = CGRectGetMidY(v285);
LABEL_108:
          v85 = 0;
          v115 = MidX < v112;
          a9 = v189;
          v86 = v115;
          goto LABEL_62;
        }

        if (v103 != 8)
        {
          if (v103 != 2)
          {
            goto LABEL_111;
          }

          v288.origin.x = v185;
          v288.origin.y = v29;
          v288.size.width = v30;
          v288.size.height = v25;
          MidX = CGRectGetMidX(v288);
          v289.origin.y = v182;
          v289.origin.x = v183;
          v289.size.width = v189;
          v289.size.height = a10;
          v112 = CGRectGetMidX(v289);
          goto LABEL_108;
        }

        v290.origin.x = v185;
        v290.origin.y = v29;
        v290.size.width = v30;
        v290.size.height = v25;
        MidY = CGRectGetMidX(v290);
        v291.origin.y = v182;
        v291.origin.x = v183;
        v291.size.width = v189;
        v291.size.height = a10;
        v114 = CGRectGetMidX(v291);
      }

      v85 = 0;
      v42 = MidY <= v114;
      a9 = v189;
      v86 = !v42;
LABEL_62:
      if (v23)
      {
        if (*(v23 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v87 = 0;
        }

        else
        {
          v87 = *(v23 + 24);
        }

        if (!v86)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v87 = 0;
        if (!v86)
        {
          goto LABEL_74;
        }
      }

      v88 = [(_UICollectionLayoutFramesQueryResult *)v23 supplementaryItem];
      v89 = [v88 boundarySupplementaryItem];

      if (v89)
      {
        v87 = [v89 _pinningZIndex];
      }

      v90 = _UIFloatingBarEnabled();
      v91 = 1000000000;
      if (v87 > 1000000000)
      {
        v91 = v87;
      }

      if (v90)
      {
        v87 = v91;
      }

LABEL_74:
      if (v85)
      {
        v274.origin.x = v183;
        v274.origin.y = v182;
        v274.size.width = a9;
        v274.size.height = a10;
        v92 = CGRectGetMinY(v274);
        v275.origin.x = v205.origin.x;
        v275.origin.y = v33;
        v275.size.width = v30;
        v275.size.height = v25;
        v191 = fmax(v92 - CGRectGetMinY(v275), 0.0);
        v276.origin.x = v205.origin.x;
        v276.origin.y = v33;
        v276.size.width = v30;
        v276.size.height = v25;
        v93 = CGRectGetMaxY(v276);
        v277.origin.x = v183;
        v277.origin.y = v182;
        v277.size.width = v189;
        v277.size.height = a10;
        v186 = fmax(v93 - CGRectGetMaxY(v277), 0.0);
        v278.origin.x = v183;
        v278.origin.y = v182;
        v278.size.width = v189;
        v278.size.height = a10;
        v94 = CGRectGetMinX(v278);
        v279.origin.x = v205.origin.x;
        v279.origin.y = v33;
        v279.size.width = v30;
        v279.size.height = v25;
        v95 = fmax(v94 - CGRectGetMinX(v279), 0.0);
        v280.origin.x = v205.origin.x;
        v280.origin.y = v33;
        v280.size.width = v30;
        v280.size.height = v25;
        v96 = CGRectGetMaxX(v280);
        v281.origin.x = v183;
        v281.origin.y = v182;
        v281.size.width = v189;
        v281.size.height = a10;
        v97 = fmax(v96 - CGRectGetMaxX(v281), 0.0);
        if (v95 >= v97)
        {
          v97 = v95;
        }

        if (v186 >= v97)
        {
          v97 = v186;
        }

        if (v191 >= v97)
        {
          v98 = v191;
        }

        else
        {
          v98 = v97;
        }
      }

      else
      {
        v98 = 0.0;
      }

      if (v23)
      {
        v99 = [[_UICollectionLayoutFramesQueryResult alloc] initWithFrame:v85 pinningAlignment:*(v23 + 16) adjustedForPinning:v87 visibleRectDisplacement:*(v23 + 32) index:*(v23 + 40) zIndex:*(v23 + 48) resultKind:v205.origin.x item:v33 auxillaryKind:v30 supplementaryEnrollmentIdentifier:v25, v98, *(v23 + 56)];
      }

      else
      {
        v99 = 0;
      }

      a9 = v189;
      a8 = v182;
      a7 = v183;
      a5 = rect2;
      v17 = v181;
      [v181 addObject:v99];

      ++v22;
    }

    while (v20 != v22);
    v116 = [v18 countByEnumeratingWithState:&v231 objects:v236 count:16];
    v20 = v116;
  }

  while (v116);
LABEL_117:

  if (v16 > 1)
  {
    v117 = dyld_program_sdk_at_least();
    v118 = 0;
    do
    {
      v119 = [v17 objectAtIndexedSubscript:v118];
      v120 = [(_UICollectionLayoutFramesQueryResult *)v119 auxillaryItem];
      v121 = [v120 boundarySupplementaryItem];

      v122 = [v121 alignment];
      rectb = v121;
      v123 = [v121 zIndex];
      *&v205.origin.x = v119;
      if (v119)
      {
        v125 = v119[10];
        v124 = v119[11];
        v126 = v119[12];
        v127 = v119[13];
      }

      else
      {
        v124 = 0.0;
        v126 = 0.0;
        v127 = 0.0;
        v125 = 0.0;
      }

      v128 = 0;
      do
      {
        if (v118 == v128)
        {
          v129 = 0;
        }

        else
        {
          v130 = [v17 objectAtIndexedSubscript:v128];
          v131 = [(_UICollectionLayoutFramesQueryResult *)v130 auxillaryItem];
          v132 = [v131 boundarySupplementaryItem];

          v133 = [v132 alignment];
          v134 = [v132 zIndex];
          if (v130)
          {
            v135 = v130[10];
            v136 = v130[11];
            v137 = v130[12];
            v138 = v130[13];
          }

          else
          {
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v135 = 0;
          }

          v129 = 0;
          if (v123 == v134)
          {
            v139 = 0;
          }

          else
          {
            v139 = v117;
          }

          v140 = a2;
          if (v122 == v133)
          {
            v140 = 0;
          }

          if (v139)
          {
            v17 = v181;
          }

          else
          {
            v17 = v181;
            if ((v140 & 1) == 0)
            {
              v292.origin.x = v125;
              v292.origin.y = v124;
              v292.size.width = v126;
              v292.size.height = v127;
              v129 = CGRectIntersectsRect(v292, *&v135);
            }
          }
        }

        ++v128;
      }

      while (v128 < v16 && !v129);

      ++v118;
    }

    while (v118 < v16 && !v129);
    if (v129)
    {
      v141 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
      v229[0] = MEMORY[0x1E69E9820];
      v229[1] = 3221225472;
      v229[2] = ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke;
      v229[3] = &unk_1E70FADE8;
      v142 = v141;
      v230 = v142;
      [v17 enumerateObjectsUsingBlock:v229];
      v224[0] = MEMORY[0x1E69E9820];
      v224[1] = 3221225472;
      v225 = ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_3;
      v226 = &unk_1E70FAE30;
      v143 = v17;
      v227 = v143;
      v228 = &__block_literal_global_105;
      v213[0] = MEMORY[0x1E69E9820];
      v213[1] = 3221225472;
      v214 = ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_4;
      v215 = &__block_descriptor_96_e8_B16__0Q8l;
      v216 = v183;
      v217 = a8;
      v218 = v189;
      v219 = a10;
      v220 = a3;
      v221 = v187;
      v222 = a5;
      v223 = a6;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      rect1a = [&unk_1EFE2B5A8 countByEnumeratingWithState:&v209 objects:v235 count:16];
      if (!rect1a)
      {
        goto LABEL_168;
      }

      rect2a = *v210;
      while (1)
      {
        for (i = 0; i != rect1a; ++i)
        {
          if (*v210 != rect2a)
          {
            objc_enumerationMutation(&unk_1EFE2B5A8);
          }

          v145 = [*(*(&v209 + 1) + 8 * i) integerValue];
          v293.origin.x = (v225)(v224, v145);
          v146 = v293.origin.x;
          v147 = v293.origin.y;
          v148 = v293.size.width;
          v149 = v293.size.height;
          if (!CGRectIsEmpty(v293) && (v214)(v213, v145))
          {
            v150 = 0;
            v200 = v149;
            rectc = v148;
LABEL_152:
            v151 = [v143 objectAtIndexedSubscript:v150];
            if (___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_2(v151, v151, v145))
            {
              goto LABEL_165;
            }

            v152 = [MEMORY[0x1E696AD98] numberWithInteger:v150];
            v153 = [v142 objectForKeyedSubscript:v152];
            [v153 CGRectValue];
            v155 = v154;
            v157 = v156;
            v159 = v158;
            v161 = v160;

            v294.origin.x = v155;
            v294.origin.y = v157;
            v294.size.width = v159;
            v294.size.height = v161;
            v306.origin.x = v146;
            v306.origin.y = v147;
            v306.size.width = v148;
            v306.size.height = v149;
            if (!CGRectIntersectsRect(v294, v306))
            {
              goto LABEL_165;
            }

            if ((v145 & 8) == 0)
            {
              if (v145)
              {
                v298.origin.x = v146;
                v298.origin.y = v147;
                v298.size.width = v148;
                v298.size.height = v149;
                v163 = CGRectGetMaxY(v298);
              }

              else
              {
                if ((v145 & 4) == 0)
                {
                  v162 = v155;
                  v163 = v157;
                  if ((v145 & 2) != 0)
                  {
                    v295.origin.x = v146;
                    v295.origin.y = v147;
                    v295.size.height = v200;
                    v295.size.width = rectc;
                    v162 = CGRectGetMaxX(v295);
                    goto LABEL_160;
                  }

                  goto LABEL_164;
                }

                v299.origin.x = v146;
                v299.origin.y = v147;
                v299.size.width = v148;
                v299.size.height = v149;
                v165 = CGRectGetMinY(v299);
                v300.origin.x = v155;
                v300.origin.y = v157;
                v300.size.width = v159;
                v300.size.height = v161;
                v163 = v165 - CGRectGetHeight(v300);
              }

              v162 = v155;
              goto LABEL_164;
            }

            v296.origin.x = v146;
            v296.origin.y = v147;
            v296.size.width = v148;
            v296.size.height = v149;
            v164 = CGRectGetMinX(v296);
            v297.origin.x = v155;
            v297.origin.y = v157;
            v297.size.width = v159;
            v297.size.height = v161;
            v162 = v164 - CGRectGetWidth(v297);
LABEL_160:
            v163 = v157;
LABEL_164:
            v205.origin.x = v163;
            v301.origin.x = v155;
            v301.origin.y = v157;
            v301.size.width = v159;
            v301.size.height = v161;
            v166 = v147;
            v167 = v146;
            v168 = CGRectGetWidth(v301);
            v302.origin.x = v155;
            v302.origin.y = v157;
            v302.size.width = v159;
            v302.size.height = v161;
            v169 = CGRectGetHeight(v302);
            v170 = v168;
            v146 = v167;
            v147 = v166;
            v171 = [MEMORY[0x1E696B098] valueWithCGRect:{v162, v205.origin.x, v170, v169}];
            v172 = [MEMORY[0x1E696AD98] numberWithInteger:v150];
            [v142 setObject:v171 forKeyedSubscript:v172];

            v149 = v200;
            v148 = rectc;
LABEL_165:

            if (v16 == ++v150)
            {
              continue;
            }

            goto LABEL_152;
          }
        }

        rect1a = [&unk_1EFE2B5A8 countByEnumeratingWithState:&v209 objects:v235 count:16];
        if (!rect1a)
        {
LABEL_168:
          v173 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
          *&v205.origin.y = MEMORY[0x1E69E9820];
          *&v205.size.width = 3221225472;
          *&v205.size.height = ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_561;
          v206 = &unk_1E70FAE78;
          v207 = v142;
          v174 = v173;
          v208 = v174;
          v175 = v142;
          [v143 enumerateObjectsUsingBlock:&v205.origin.y];
          v176 = v208;
          v177 = v174;

          v17 = v181;
          goto LABEL_170;
        }
      }
    }
  }

  v177 = v17;
LABEL_170:

  return v177;
}

uint64_t sub_188CD6A08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, _BYTE *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = swift_dynamicCastUnknownClassUnconditional();
  sub_188A55598(a3, v16);
  swift_dynamicCast();
  a4(v14, a2, v13);
  return (*(v11 + 8))(v13, a7);
}

id sub_188CD6BB4(uint64_t a1, void *a2)
{
  v4 = sub_18A4A2B48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_18A4A7288();
  sub_18A4A2B18();

  v9 = a2;
  v10 = v8();

  (*(v5 + 8))(v7, v4);

  return v10;
}

void *std::vector<_UIAuxillarySolveResult>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIAuxillarySolveResult>>(a2);
    }

    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<_UIAuxillarySolveResult>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 6;

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double _UILeadingOffsetForInsetsAlongAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      return a3;
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UILeadingOffsetForInsetsAlongAxis(NSDirectionalEdgeInsets, UIAxis)"}];
      [v4 handleFailureInFunction:v5 file:@"_UICollectionLayoutHelpers.m" lineNumber:491 description:@"Unknown axis"];

      return 0.0;
    }
  }

  return result;
}

id sub_188CD7114(void *a1, void *a2)
{
  v5 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
  v6 = MEMORY[0x1E695F050];
  if (v5)
  {
    v7 = v5;
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = v7;
    v102.origin.x = v9;
    v102.origin.y = v11;
    v102.size.width = v13;
    v102.size.height = v15;
    if (CGRectIsEmpty(v102))
    {
      v17 = *v6;
      v18 = v6[1];
      v19 = v6[2];
      v20 = v6[3];
    }

    else
    {
      [v16 convertRect:a1 toCoordinateSpace:{v9, v11, v13, v15}];
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
    }
  }

  else
  {
    v17 = *MEMORY[0x1E695F050];
    v18 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
  }

  [a2 setBackButtonRect_];
  v25 = &v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarFrame];
  if (v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarFrame + 32])
  {
    v26 = *v6;
    v27 = v6[1];
    v28 = v6[2];
    v29 = v6[3];
  }

  else
  {
    v31 = v25[2];
    v30 = v25[3];
    v33 = *v25;
    v32 = v25[1];
    v34 = v2;
    v103.origin.x = v33;
    v103.origin.y = v32;
    v103.size.width = v31;
    v103.size.height = v30;
    if (CGRectIsEmpty(v103))
    {
      v26 = *v6;
      v27 = v6[1];
      v28 = v6[2];
      v29 = v6[3];
    }

    else
    {
      [v34 convertRect:a1 toCoordinateSpace:{v33, v32, v31, v30}];
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
    }
  }

  [a2 setLeadingItemsRect_];
  if ((v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] & 1) != 0 && (sub_188B55154(), (v39 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl]) != 0))
  {
    v40 = v39;
    [v40 bounds];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v40;
    v104.origin.x = v42;
    v104.origin.y = v44;
    v104.size.width = v46;
    v104.size.height = v48;
    if (CGRectIsEmpty(v104))
    {
      v50 = *v6;
      v51 = v6[1];
      v52 = v6[2];
      v53 = v6[3];
    }

    else
    {
      [v49 convertRect:a1 toCoordinateSpace:{v42, v44, v46, v48}];
      v50 = v58;
      v51 = v59;
      v52 = v60;
      v53 = v61;
    }

    v57 = v53;
    v56 = v52;
    v55 = v51;
    v54 = v50;
  }

  else
  {
    v54 = *v6;
    v55 = v6[1];
    v56 = v6[2];
    v57 = v6[3];
  }

  [a2 setTitleRect_];
  v62 = &v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarFrame];
  if (v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarFrame + 32])
  {
    v63 = *v6;
    v64 = v6[1];
    v65 = v6[2];
    v66 = v6[3];
  }

  else
  {
    v68 = v62[2];
    v67 = v62[3];
    v70 = *v62;
    v69 = v62[1];
    v71 = v2;
    v105.origin.x = v70;
    v105.origin.y = v69;
    v105.size.width = v68;
    v105.size.height = v67;
    if (CGRectIsEmpty(v105))
    {
      v63 = *v6;
      v64 = v6[1];
      v65 = v6[2];
      v66 = v6[3];
    }

    else
    {
      [v71 convertRect:a1 toCoordinateSpace:{v70, v69, v68, v67}];
      v63 = v72;
      v64 = v73;
      v65 = v74;
      v66 = v75;
    }
  }

  [a2 setCenterItemsRect_];
  v76 = &v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarFrame];
  if (v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarFrame + 32])
  {
    v77 = *v6;
    v78 = v6[1];
    v79 = v6[2];
    v80 = v6[3];
  }

  else
  {
    v82 = v76[2];
    v81 = v76[3];
    v84 = *v76;
    v83 = v76[1];
    v85 = v2;
    v106.origin.x = v84;
    v106.origin.y = v83;
    v106.size.width = v82;
    v106.size.height = v81;
    if (CGRectIsEmpty(v106))
    {
      v77 = *v6;
      v78 = v6[1];
      v79 = v6[2];
      v80 = v6[3];
    }

    else
    {
      [v85 convertRect:a1 toCoordinateSpace:{v84, v83, v82, v81}];
      v77 = v86;
      v78 = v87;
      v79 = v88;
      v80 = v89;
    }
  }

  [a2 setTrailingItemsRect_];
  v90 = &v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  if (v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext])
  {
    [a1 convertRect:v2 fromCoordinateSpace:{v90[1], v90[2], v90[3], v90[4]}];
  }

  else
  {
    v91 = *v6;
    v92 = v6[1];
    v93 = v6[2];
    v94 = v6[3];
  }

  [a2 setFloatingTabBarRect_];
  if (*&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle] - 1) < 2 || (v95 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider]) != 0 && ([v95 useLeadingAlignedLargeTitle:v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 72] toolbarStyle:?])
  {
    v96 = 2;
  }

  else if (*v90 == 1 && sub_188AEA5A0() > 0.0 && ((v97 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration]) != 0 && (*&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration + 8] & 1) != 0 && (v98 = v97, v99 = sub_188B3461C(), v98, (v99 & 1) != 0) || (sub_188EBE444() & 1) != 0))
  {
    v96 = 3;
  }

  else
  {
    v96 = 1;
  }

  return [a2 setTitleLocation_];
}

BOOL UIDistanceBetweenPointAndRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10.origin.x = a3;
  v10.origin.y = a4;
  v10.size.width = a5;
  v10.size.height = a6;
  v9.x = a1;
  v9.y = a2;
  return CGRectContainsPoint(v10, v9);
}

id sub_188CD7CFC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_18A4A2B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A7288();
  sub_18A4A2B18();
  v9 = a3;
  v10 = a1;
  v11 = sub_188CD48DC(v9);

  (*(v6 + 8))(v8, v5);

  return v11;
}

void sub_188CD8800(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v7 = sub_188B28038(v6, a2);

  if ((v7 & 1) == 0)
  {

    sub_188C1979C(v8);
    sub_188AEFC0C();
  }

  *(*(a1 + OBJC_IVAR____UIFloatingBarContainerView_keyboardAssistant) + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_alwaysAvoidsKeyboard) = a3 & 1;
  sub_189091178();
}

void UISceneConnectionOptions.subscript.getter(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = [(_UISceneHostingController *)v2 _fbScene];
  if (v5)
  {
    v7 = v5;
    sub_1891FBAF8(a1, a2);
  }

  else
  {
    v6 = *(*(a1 - 8) + 56);

    v6(a2, 1, 1, a1);
  }
}

uint64_t sub_188CD8ACC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v11 = *v5;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v12 = sub_18A4A88E8();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_188CD8E04(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188CD8BEC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v17);
      result = sub_18A4A88E8();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_188CD8E04(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v10 = a6;
    sub_188E7517C(v8 + 1, a4);
  }

  else
  {
    if (v9 > v8)
    {
      v11 = a2;
      result = sub_188E7A418(a4);
      a2 = v11;
      goto LABEL_12;
    }

    v10 = a6;
    sub_188CD8BEC(v8 + 1, a4);
  }

  v12 = *v6;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v7);
  result = sub_18A4A88E8();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    v15 = result & ~v13;
    result = v10(0);
    a2 = v15;
    while (*(*(v12 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v7;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

double _UISheetSize(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = qword_1ED49D7A0;
  v8 = a1;
  if (v7 != -1)
  {
    dispatch_once(&qword_1ED49D7A0, &__block_literal_global_5_1);
  }

  [qword_1ED49D798 _setContainerView:v8];
  [v8 bounds];
  [qword_1ED49D798 _setContainerBounds:?];
  [v8 safeAreaInsets];
  [qword_1ED49D798 _setContainerSafeAreaInsets:?];
  v9 = [v8 traitCollection];

  [qword_1ED49D798 _setContainerTraitCollection:v9];
  [qword_1ED49D798 _setMode:a2];
  v10 = [qword_1ED49D798 _presentedViewController];
  [v10 setPreferredContentSize:{a3, a4}];

  [qword_1ED49D798 _invalidatePreferredSize];
  [qword_1ED49D798 _frameOfPresentedViewInContainerView];
  return v11;
}

void _UIRTreeContainerNode<_UICollectionViewRTreeElement>::removeElementsIntersecting(int64x2_t *a1, float64x2_t *a2)
{
  v22 = a2[1];
  v23 = *a2;
  a1[8].i64[0] = 0;
  a1[8].i64[1] = 0;
  a1[7] = vdupq_n_s64(0x7FF8000000000000uLL);
  v3 = (a1[6].i64[0] - a1[5].i64[1]) >> 5;
  if (v3 >= 1)
  {
    v21 = vaddq_f64(v23, v22);
    do
    {
      v4 = (a1[5].i64[1] + 32 * (v3 - 1));
      v5 = vorrq_s8(vandq_s8(vcgeq_f64(v23, vaddq_f64(*v4, v4[1])), vcgtq_f64(v23, *v4)), vandq_s8(vcgtq_f64(*v4, v23), vcgeq_f64(*v4, v21)));
      if ((vorrq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
      {
        v6 = a1[6].i64[0];
        v7 = v6 - &v4[2];
        if (v6 != &v4[2])
        {
          memmove((a1[5].i64[1] + 32 * (v3 - 1)), &v4[2], v6 - &v4[2]);
        }

        a1[6].i64[0] = v4 + v7;
        v8 = a1[4].i64[1];
        v9 = a1[4].i64[0] + 40 * (v3 - 1);
        v10 = v9 + 40;
        if (v9 + 40 != v8)
        {
          do
          {
            _UICollectionViewRTreeElement::operator=(v10 - 40, v10);
            v10 += 40;
          }

          while (v10 != v8);
          v9 = v10 - 40;
        }

        std::vector<_UICollectionViewRTreeElement>::__base_destruct_at_end[abi:nn200100](a1[4].i64, v9);
      }

      v11 = v3-- <= 1;
    }

    while (!v11);
  }

  v12 = (a1[3].i64[0] - a1[2].i64[1]) >> 4;
  if (v12 >= 1)
  {
    do
    {
      v13 = *(a1[2].i64[1] + 16 * (v12 - 1));
      v24[0] = v23;
      v24[1] = v22;
      _UIRTreeContainerNode<_UICollectionViewRTreeElement>::removeElementsIntersecting(v13, v24);
      if (v13[9] == v13[8] && v13[6] == v13[5])
      {
        v14 = a1[3].i64[0];
        v15 = a1[2].i64[1] + 16 * (v12 - 1);
        if (v15 + 16 != v14)
        {
          do
          {
            v16 = *(v15 + 16);
            *(v15 + 16) = 0;
            *(v15 + 24) = 0;
            v17 = *(v15 + 8);
            *v15 = v16;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v17);
            }

            v18 = v15 + 16;
            v19 = v15 + 32;
            v15 += 16;
          }

          while (v19 != v14);
          v14 = a1[3].i64[0];
          v15 = v18;
        }

        while (v14 != v15)
        {
          v20 = *(v14 - 8);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v14 -= 16;
        }

        a1[3].i64[0] = v15;
      }

      v11 = v12-- <= 1;
    }

    while (!v11);
  }
}

uint64_t sub_188CD9390()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_188CD95D8(void *a1)
{
  v2 = *(v1 + 56);
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for NavigationBarContentView();
      v4 = a1;
      v5 = v2;
      v6 = sub_18A4A7C88();

      if (v6)
      {
        goto LABEL_8;
      }

      v4 = *(v1 + 56);
    }

    else
    {
      v7 = a1;
      v4 = 0;
    }

    *(v1 + 56) = a1;
  }

  else
  {
    *(v1 + 56) = 0;

    [*(v1 + 72) removeFromSuperview];
    v4 = *(v1 + 72);
    *(v1 + 72) = 0;
  }

LABEL_8:

  sub_188B395C4();
}

double _UICellContentViewDefaultDirectionalLayoutMargins(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = [a2 layoutDirection];
  [v9 defaultCellContentLeadingPaddingForSidebar:a4];
  v12 = v11;
  [v9 defaultCellContentTrailingPadding];
  if (v10 == 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v10 != 1)
  {
    v12 = v13;
  }

  v15 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
  v16 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v15];

  [v9 defaultCellLayoutMarginsForTableStyle:a5 cellStyle:a3 isSidebarStyle:a4 textLabelFont:v16 rawLayoutMargins:{8.0, v14, 8.0, v12}];
  v18 = v17;

  return v18;
}

void UIListContentConfiguration.image.setter(void *a1)
{
  sub_188F47BA4(a1);
}

uint64_t storeEnumTagSinglePayload for UICellAccessory.LayoutDimension(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

void sub_188CD9B44(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, id *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  if (a1 == 2)
  {
    if (*a4 != -1)
    {
      swift_once();
    }

    v13 = [*a5 isHidden];
    if ((v12 & 1) == 0)
    {
LABEL_3:
      v14 = a3;
      if (a3)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v13 = a1;
    if ((*(a2 + 9) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*a4 != -1)
  {
    swift_once();
  }

  [*a5 reservedLayoutWidth];
  if (v15 == 0.0)
  {
    v11 = 1;
    v10 = 0.0;
    v14 = a3;
    if (a3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v15 == -1.79769313e308)
    {
      v10 = COERCE_DOUBLE(1);
    }

    else
    {
      v10 = v15;
    }

    v11 = v15 == -1.79769313e308;
    v14 = a3;
    if (a3)
    {
      goto LABEL_20;
    }
  }

LABEL_17:
  if (*a4 != -1)
  {
    swift_once();
  }

  v14 = [*a5 tintColor];
LABEL_20:
  v16 = *a4;
  v17 = a3;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = *a5;
  v19 = [v18 _monochromaticTreatment];

  v20 = v19 == 0;
  *a6 = v13 & 1;
  *(a6 + 8) = v10;
  *(a6 + 16) = v11 & 1;
  if (v19 == 1)
  {
    v20 = 2;
  }

  *(a6 + 24) = v14;
  *(a6 + 32) = v20;
}

id _UIBackdropViewQueue()
{
  if (qword_1ED49AF60 != -1)
  {
    dispatch_once(&qword_1ED49AF60, &__block_literal_global_36);
  }

  v1 = qword_1ED49AF68;

  return v1;
}

id sub_188CD9D80()
{
  result = [objc_allocWithZone(UICellAccessoryDisclosureIndicator) init];
  qword_1EA930148 = result;
  return result;
}

id _AllBackdropViews()
{
  if (qword_1ED49AF70 != -1)
  {
    dispatch_once(&qword_1ED49AF70, &__block_literal_global_677);
  }

  v1 = qword_1ED49AF78;

  return v1;
}

id sub_188CDA0E4@<X0>(unsigned __int8 *a1@<X0>, double *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = *(a2 + 3);
  v12 = *(a2 + 32);
  v13 = [objc_allocWithZone(*a3) init];
  LOBYTE(v16[0]) = v8;
  v16[1] = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15 = v7;
  result = sub_188CDA188(v16, &v15);
  *a5 = a4;
  a5[1] = v13;
  return result;
}

id sub_188CDA188(double *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 3);
  v7 = *(a1 + 32);
  [v2 setDisplayedState_];
  [v2 setTintColor_];
  [v2 setHidden_];
  v8 = v4;
  v9 = -1.79769313e308;
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  if (v5)
  {
    v8 = v9;
  }

  [v2 setReservedLayoutWidth_];

  return [v2 _setMonochromaticTreatment_];
}

uint64_t NSDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 16);
  v6 = [v5 sectionIdentifierForSectionContainingItemIdentifier_];

  swift_unknownObjectRelease();
  if (v6)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v7 = *(a1 + 16);
  v8 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a2, v8 ^ 1u, 1, v7);
}

double _UIRegionSolveResult::boundingFrameForIndex(_UIRegionSolveResult *this, unint64_t a2)
{
  if (a2 < *this || a2 - *this >= *(this + 1))
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGRect _UIRegionSolveResult::boundingFrameForIndex(NSInteger) const"];
    [v15 handleFailureInFunction:v16 file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"NSLocationInRange(index, _range)"}];
  }

  v5 = *(this + 8);
  v6 = *(this + 9);
  v7 = *(this + 10);
  v8 = *(this + 11);
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = v7;
  v18.size.height = v8;
  v9 = *(this + 2) + (CGRectGetHeight(v18) + *(this + 3)) * (a2 - *this);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;

  *&result = CGRectOffset(*&v10, 0.0, v9);
  return result;
}

id *_UIAuxillarySolveResult::queryResultForIndexAndOffset(_UIAuxillarySolveResult *this, uint64_t a2, CGPoint a3)
{
  v8 = CGRectOffset(*this, a3.x, a3.y);
  v5 = [(_UICollectionLayoutFramesQueryResult *)*(this + 5) copyWithFrame:v8.origin.x index:v8.origin.y, v8.size.width, v8.size.height];

  return v5;
}

uint64_t UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  sub_188C701F8(a1, a2, &block_descriptor_188_1, &selRef_setLeadingSwipeActionsConfigurationProvider_);

  return sub_188A55B8C(a1);
}

unint64_t sub_188CDA970()
{
  result = qword_1EA930388[0];
  if (!qword_1EA930388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA930388);
  }

  return result;
}

unint64_t sub_188CDA9C8()
{
  result = qword_1EA930380;
  if (!qword_1EA930380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930380);
  }

  return result;
}

void UIViewControllerAlertForAppearanceCallbackMisuse(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = *(__UILogGetCategoryCachedImpl("ViewController", UIViewControllerAlertForAppearanceCallbackMisuse___s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Calling %@ directly on a view controller is not supported, and may result in out-of-order callbacks and other inconsistent behavior. Use the -beginAppearanceTransition:animated: and -endAppearanceTransition APIs on UIViewController to manually drive appearance callbacks instead. Make a symbolic breakpoint at UIViewControllerAlertForAppearanceCallbackMisuse to catch this in the debugger. View controller: %@", &v6, 0x16u);
  }
}

void __UIDecompressorLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "Decompressor");
  v1 = qword_1ED4992F8;
  qword_1ED4992F8 = v0;
}

void UICollectionViewListCellCommonInit(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __UICollectionViewListCellCommonInit_block_invoke;
  v3[3] = &unk_1E70F3590;
  v4 = v1;
  v2 = v1;
  [UIView performWithoutAnimation:v3];
}

IMP __UICollectionViewListCellCommonInit_block_invoke(uint64_t a1)
{
  v2 = [UICollectionViewListCell _createVisualProviderForCell:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 656);
  *(v3 + 656) = v2;

  [*(a1 + 32) _updateConstants];
  [*(a1 + 32) setEdgesPreservingSuperviewLayoutMargins:10];
  [*(a1 + 32) setEdgesInsettingLayoutMarginsFromSafeArea:{objc_msgSend(*(a1 + 32), "edgesInsettingLayoutMarginsFromSafeArea") & 0xA}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 768);
  v7 = MEMORY[0x1E695E0F0];
  *(v5 + 768) = MEMORY[0x1E695E0F0];

  v8 = *(a1 + 32);
  v9 = *(v8 + 776);
  *(v8 + 776) = v7;

  v10 = *(a1 + 32);
  v11 = *(v10 + 784);
  *(v10 + 784) = v7;

  v12 = *(a1 + 32);
  v13 = *(v12 + 792);
  *(v12 + 792) = v7;

  v14 = *(a1 + 32);
  v15 = *(v14 + 800);
  *(v14 + 800) = v7;

  [*(a1 + 32) _createAccessoryManager];
  *(*(a1 + 32) + 652) |= 0x1000u;
  [*(a1 + 32) _updateDefaultIndentationWidth];
  [*(a1 + 32) _setFocusStyle:{objc_msgSend(*(a1 + 32), "_defaultFocusStyle")}];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v16, sel__preferredSeparatorInsetsForProposedInsets_);
  result = class_getMethodImplementation(v17, sel__preferredSeparatorInsetsForProposedInsets_);
  if (MethodImplementation == result || result == 0 || MethodImplementation == 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x10000;
  }

  *(*(a1 + 32) + 652) = *(*(a1 + 32) + 652) & 0xFFFEFFFF | v22;
  return result;
}

char *UITraitCollection.changedTraits(from:)(uint64_t a1)
{
  v2 = [v1 _changedTraitTokensArrayFromTraitCollection_];
  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7548();

  v4 = sub_188BEE3B4(v3);

  return v4;
}

void sub_188CDB7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIIsKitImage(void *a1)
{
  v1 = a1;
  v2 = [v1 _primitiveImageAsset];
  if (v2)
  {
    v3 = __UIKitSharedArtworkManager();
    v4 = [v3 _imageBelongsToUIKit:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _UIImageIdentityBundleIdentifier(void *a1)
{
  if (a1)
  {
    v1 = [a1 _primitiveImageAsset];
    v2 = [v1 _assetManager];
    v3 = [v2 bundle];
    v4 = [v3 bundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_188CDB9B0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_188B3343C();
  v3 = *(a1 + 112);
  v4 = *(a1 + 144);
  v38 = *(a1 + 128);
  v5 = v38;
  v39 = v4;
  v6 = *(a1 + 64);
  v37[0] = *(a1 + 48);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);
  v37[1] = v6;
  v37[2] = v9;
  v11 = *(a1 + 80);
  v12 = *(a1 + 112);
  v37[3] = *(a1 + 96);
  v37[4] = v12;
  v13 = *(v2 + 96);
  v41[2] = *(v2 + 80);
  v41[3] = v13;
  v14 = *(v2 + 64);
  v41[0] = *(v2 + 48);
  v41[1] = v14;
  v15 = *(v2 + 144);
  v41[5] = *(v2 + 128);
  v41[6] = v15;
  v41[4] = *(v2 + 112);
  *(v2 + 80) = v11;
  *(v2 + 96) = v10;
  v40 = *(a1 + 160);
  v42 = *(v2 + 160);
  *(v2 + 48) = v7;
  *(v2 + 64) = v8;
  v16 = *(a1 + 144);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 128) = v5;
  *(v2 + 144) = v16;
  *(v2 + 112) = v3;

  sub_188CDBD88(v37, v36);
  sub_188CDBDC0(v41);
  *(v2 + 232) = *(a1 + 232);
  *(v2 + 248) = *(a1 + 248);
  *(v2 + 264) = *(a1 + 264);
  *(v2 + 280) = *(a1 + 280);
  *(v2 + 168) = *(a1 + 168);
  *(v2 + 184) = *(a1 + 184);
  *(v2 + 200) = *(a1 + 200);
  *(v2 + 216) = *(a1 + 216);
  v17 = *(a1 + 304);
  *(v2 + 288) = *(a1 + 288);
  *(v2 + 304) = v17;
  swift_getKeyPath();
  sub_188CDBDF0();

  swift_beginAccess();
  v18 = *(v2 + 320);
  v19 = v18;
  sub_188B396E0(v18);

  if (*(v2 + 48))
  {
    swift_getKeyPath();
    sub_188CDBDF0();

    v20 = *(v2 + 328);
    v21 = v20;
    sub_188B396E0(v20);
  }

  if (*(v2 + 56))
  {
    swift_getKeyPath();
    sub_188CDBDF0();

    v22 = *(v2 + 336);
    if (v22)
    {
      v23 = *(v2 + 168);
      v24 = v22;
      if (v23)
      {
        sub_188C12B90(v22);
      }

      else
      {
        sub_188B396E0(v22);
      }
    }
  }

  if (*(v2 + 128))
  {
    swift_getKeyPath();
    sub_188CDBDF0();
  }

  if (*(v2 + 80))
  {
    swift_getKeyPath();
    sub_188CDBDF0();

    v25 = *(v2 + 344);
    v26 = v25;
    sub_188B396E0(v25);
  }

  if (*(v2 + 136))
  {
    swift_getKeyPath();
    sub_188CDBDF0();

    swift_getKeyPath();
    sub_188CDBDF0();

    v27 = *(v2 + 360);
    v28 = v27;
    sub_188B396E0(v27);

    v29 = *(v2 + 368);
    v30 = v29;
    sub_188B396E0(v29);
  }

  if (*(v2 + 152))
  {
    swift_getKeyPath();
    sub_188CDBDF0();

    v31 = *(v2 + 376);
    v32 = v31;
    sub_188B396E0(v31);
  }

  if (*(v2 + 160))
  {
    swift_getKeyPath();
    sub_188CDBDF0();

    v33 = *(v2 + 384);
    v34 = v33;
    sub_188B396E0(v33);
  }

  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_188CDBDF0()
{
  swift_beginAccess();
  swift_getAtKeyPath();
  swift_endAccess();
  if (v1)
  {
    sub_188CDBEA8();
  }

  swift_beginAccess();
  swift_setAtWritableKeyPath();
  return swift_endAccess();
}

_BYTE *sub_188CDBEA8()
{
  v1 = [objc_allocWithZone(swift_getObjectType()) init];
  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_identifier + 8);
  v3 = &v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_identifier];
  *v3 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_identifier);
  v3[1] = v2;

  *&v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
  *&v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
  *&v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight);
  *&v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight);
  v4 = &v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
  v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority);
  v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order);
  v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible);
  v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded);
  v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors] = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors);
  v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] = 0;
  *v4 = 0;
  v4[8] = 1;
  return v1;
}

id sub_188CDBFEC()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight] = 0;
  *&v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight] = 0;
  v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] = 0;
  v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded] = 0;
  *&v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_bottomInsetForTransitionProgress] = 0;
  *&v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight] = 0;
  *&v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight] = 0;
  v2 = &v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
  *v2 = 0;
  v2[8] = 1;
  v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors] = 0;
  v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] = 0;
  v3 = &v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_identifier];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority] = 15;
  v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order] = 12;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_188CDC0DC()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v18 = *(v0 + 128);
  v19 = *(v0 + 136);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 160);

  swift_unknownObjectRelease();
  v9 = *(v0 + 328);
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);
  v12 = *(v0 + 352);
  v13 = *(v0 + 360);
  v14 = *(v0 + 368);
  v15 = *(v0 + 376);
  v16 = *(v0 + 384);

  return swift_deallocClassInstance();
}

void sub_188CDC944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 120), 8);
  objc_destroyWeak((v9 - 88));
  _Unwind_Resume(a1);
}

uint64_t _UICollectionViewListStyleFromListEnvironment(unint64_t a1)
{
  if (a1 < 7)
  {
    return qword_18A680458[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UICollectionViewListLayoutAppearanceStyle _UICollectionViewListStyleFromListEnvironment(UIListEnvironment)"];
  [v3 handleFailureInFunction:v4 file:@"UITraitListEnvironment.m" lineNumber:88 description:{@"Received unknown list environment %ld", a1}];

  return 0;
}

uint64_t sub_188CDD43C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

id sub_188CDD784()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v2 = type metadata accessor for UICoreHostingView();
  v3 = v1;
  v4 = v0;
  swift_getWitnessTable();
  sub_188C7180C(v4, v4, v3);

  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_188CDD86C(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x68);

  return v5(v6);
}

uint64_t sub_188CDD928()
{
  sub_188CDD980();

  return swift_deallocClassInstance();
}

uint64_t sub_188CDD980()
{

  v1 = *(v0 + 168);

  v2 = OBJC_IVAR____TtC5UIKit12ToolbarModel___observationRegistrar;
  v3 = sub_18A4A2C48();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

void *_UIImageIsFromMainBundle(void *result)
{
  if (result)
  {
    v1 = [result _primitiveImageAsset];
    v2 = [v1 _assetManager];
    v3 = [v2 bundle];
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v3 isEqual:v4];

    return v5;
  }

  return result;
}

void UICollectionViewListCell.accessories.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_18A4A8208();
    v4 = 40;
    do
    {
      v5 = *(a1 + v4);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_188A34624(0, &qword_1ED48BEB8);
  v6 = sub_18A4A7518();

  [v1 setAccessories_];
}

unint64_t sub_188CDE0D0()
{
  result = qword_1EA931110;
  if (!qword_1EA931110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931110);
  }

  return result;
}

id _AccessoryFontForLineHeightAlignment(void *a1, _BYTE *a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 _currentImage];
LABEL_11:
    v10 = v4;
    v11 = _UITableCellFontForImage(v4);

    isKindOfClass = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 currentBackgroundImage];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___AccessoryFontForLineHeightAlignment_block_invoke;
    v15[3] = &unk_1E70F3590;
    v16 = v5;
    [UIView performWithoutAnimation:v15];
    v6 = [v5 viewForLastBaselineLayout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = [v6 _currentImage];
      v9 = _UITableCellFontForImage(v8);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_25;
      }

      v8 = v6;
      v13 = [v8 text];
      v14 = [v13 length];

      if (!v14)
      {
        v11 = 0;
        goto LABEL_21;
      }

      v9 = [v8 font];
    }

    v11 = v9;
LABEL_21:

LABEL_25:
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 _renderedImage];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v3 font];
    isKindOfClass = 0;
  }

  else
  {
    isKindOfClass = 0;
    v11 = 0;
  }

LABEL_12:
  if (a2)
  {
    *a2 = isKindOfClass & (v11 != 0);
  }

  return v11;
}

double UIRectCenteredIntegralRectScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a5 + (a7 - a3) * 0.5;
  v17 = a9;
  if (a9 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v17 = *&AdjustToScale___s_0;
  }

  v18 = v17 == 1.0;
  v19 = round(v16 * v17) / v17;
  v20 = round(v16);
  if (v18)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  if (a9 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return v21;
}

double _UIContentViewImageViewLayoutHeight(void *a1, void *a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  if (a4 == -1.79769313e308 || v9 && a4 == 0.0 && [v9 isSymbolImage])
  {
    v11 = _UITableConstantsForTraitCollection(v10);
    [v11 defaultImageViewSymbolImageLayoutHeightForTraitCollection:v10];
    a4 = v12;
  }

  if (a3 >= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = a3;
  }

  if (a5 <= 0.0)
  {
    v13 = a3;
  }

  if (a4 == 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = a4;
  }

  return v14;
}

double _UIContentViewImageViewHorizontalCenteringOffset(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  if (a5 == -1.79769313e308 || a5 == 0.0 && _UITableCellShouldCenterImageHorizontallyForTraitCollection(v9, v10))
  {
    v11 = _UITableConstantsForTraitCollection(v10);
    [v11 defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:a3 traitCollection:v10];
    a5 = v12;
  }

  if (a5 <= 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = (a5 - a4) * 0.5;
  }

  return v13;
}

BOOL _UITableCellShouldCenterImageHorizontallyForTraitCollection(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 isSymbolImage])
  {
    v4 = _UITableCellSupportsHorizontalCenteringBehaviorForTraitCollection(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_188CDEB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188CDEE84()
{
  type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_18A4A7258();
  v5[4] = sub_189078FB0;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188BFF280;
  v5[3] = &block_descriptor_92;
  v2 = _Block_copy(v5);
  v3 = [ObjCClassFromMetadata _configurationWithKey_preparationBlock_];
  _Block_release(v2);

  return swift_dynamicCastClassUnconditional();
}

id sub_188CDEFDC()
{
  *&v0[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__snappingFeedback] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__pathCompletingFeedback] = 0;
  v1 = &v0[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration_snappingFeedbackPatternName];
  *v1 = sub_18A4A7288();
  v1[1] = v2;
  v3 = &v0[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration_snappingTrackpadFeedbackPatternName];
  *v3 = sub_18A4A7288();
  v3[1] = v4;
  v5 = &v0[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration_pathCompletingFeedbackPatternName];
  *v5 = sub_18A4A7288();
  v5[1] = v6;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_188CDFBF0()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons) == 1 && *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode) == 1)
  {
    v1 = sub_188B2A31C();
    if (!v1)
    {
      return;
    }

    v2 = v1;
  }

  else
  {
    v3 = sub_188B2A31C();
    if (!v3)
    {
      return;
    }

    v2 = v3;
  }

  v4 = sub_18A4A7258();
  v5 = [objc_opt_self() systemImageNamed_];

  [v2 setImage_];
}

void _UITextCanvasDrawWithFadedEdgesInContext(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v24 = a2;
  v30.origin.x = a7;
  v30.origin.y = a8;
  v30.size.width = a9;
  v30.size.height = a10;
  if (CGRectIsNull(v30))
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    rect = a6;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = a7;
    v32.origin.y = a8;
    v32.size.width = a9;
    v32.size.height = a10;
    v19 = MinX < CGRectGetMinX(v32);
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = rect;
    MaxX = CGRectGetMaxX(v33);
    v34.origin.x = a7;
    v34.origin.y = a8;
    v34.size.width = a9;
    v34.size.height = a10;
    v20 = MaxX >= CGRectGetMaxX(v34);
    if (v19)
    {
      goto LABEL_6;
    }
  }

  if (!v20)
  {
    v24[2]();
    goto LABEL_13;
  }

LABEL_6:
  CGContextBeginTransparencyLayer(a1, 0);
  v24[2]();
  CGContextSetBlendMode(a1, kCGBlendModeDestinationOut);
  if (_UITextCanvasDrawWithFadedEdgesInContext_onceToken != -1)
  {
    dispatch_once(&_UITextCanvasDrawWithFadedEdgesInContext_onceToken, &__block_literal_global_390);
  }

  if (v19)
  {
    v35.origin.x = a7;
    v35.origin.y = a8;
    v35.size.width = a9;
    v35.size.height = a10;
    v26.x = CGRectGetMinX(v35);
    v28.x = v26.x + 50.0;
    v26.y = a8;
    v28.y = a8;
    CGContextDrawLinearGradient(a1, _UITextCanvasDrawWithFadedEdgesInContext_leftFadeGradient, v26, v28, 0);
  }

  if (v20)
  {
    v36.origin.x = a7;
    v36.origin.y = a8;
    v36.size.width = a9;
    v36.size.height = a10;
    v27.x = CGRectGetMaxX(v36);
    v29.x = v27.x + -50.0;
    v27.y = a8;
    v29.y = a8;
    CGContextDrawLinearGradient(a1, _UITextCanvasDrawWithFadedEdgesInContext_leftFadeGradient, v27, v29, 0);
  }

  CGContextEndTransparencyLayer(a1);
LABEL_13:
}

id _telemetryOffsetChangeEvent(void *a1, void *a2, int a3, double a4, double a5, double a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  if ([v11 isTracking])
  {
    v13 = @"Dragging";
  }

  else if ([v11 isDecelerating])
  {
    v13 = @"Deceleration";
  }

  else if ([v11 isScrollAnimating])
  {
    v13 = @"Animation";
  }

  else
  {
    v13 = @"Direct";
  }

  v14 = 0.5;
  if (a4 <= 0.5)
  {
    v14 = a4;
  }

  if (a4 >= 0.004)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.004;
  }

  v16 = sqrt(a5 * a5 + a6 * a6) / v15;
  if (a3)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollView", &_telemetryOffsetChangeEvent___s_category);
    v18 = *(CategoryCachedImpl + 8);
    v19 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), v11);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v18))
      {
        *buf = 138545410;
        v29 = v12;
        v30 = 2048;
        v31 = v11;
        v32 = 2114;
        v33 = v13;
        v34 = 2048;
        v35 = a5;
        v36 = 2048;
        v37 = a6;
        v38 = 2048;
        v39 = v15;
        v40 = 2048;
        v41 = a5 / v15;
        v42 = 2048;
        v43 = a6 / v15;
        v44 = 2048;
        v45 = v16;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v18, OS_SIGNPOST_EVENT, v20, "OffsetChange", "bundleId=%{public}@, view=%p, reason=%{public}@, dx=%.03f, dy=%.03f, dt=%.03f, vx=%.03f, vy=%.03f, vs=%.03f", buf, 0x5Cu);
      }
    }
  }

  v27[0] = v12;
  v27[1] = v13;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:{a5 / v15, @"BundleId", @"Reason", @"Vx"}];
  v27[2] = v21;
  v26[3] = @"Vy";
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:a6 / v15];
  v27[3] = v22;
  v26[4] = @"Vs";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v27[4] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];

  return v24;
}

void _UITableConstantsGetBackgroundProperties(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  if (!a5 || !a4)
  {
    if (a5)
    {
      if (v11)
      {
        [v11 defaultSidebarCellBackgroundPropertiesForStyle:a5 state:v12 traitCollection:v13];
        goto LABEL_11;
      }
    }

    else if (v11)
    {
      [v11 defaultCellBackgroundPropertiesForTableViewStyle:0 state:v12 traitCollection:v13];
      goto LABEL_11;
    }

LABEL_10:
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  [v11 defaultSidebarHeaderBackgroundPropertiesWithState:v12 traitCollection:v13];
LABEL_11:
  __move_assignment_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(a6, v14);
}

NSString *__cdecl NSStringFromDirectionalEdgeInsets(NSDirectionalEdgeInsets insets)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, *&insets.top, 17, *&insets.leading, 17, *&insets.bottom, 17, *&insets.trailing);

  return v1;
}

id _accessoryViewAsClass(void *a1, objc_class *a2)
{
  v3 = a1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"__kindof UIView * _Nonnull _accessoryViewAsClass(UIView * _Nonnull __strong, Class  _Nonnull __unsafe_unretained)"}];
    v7 = NSStringFromClass(a2);
    [v5 handleFailureInFunction:v6 file:@"UICollectionViewListCell.m" lineNumber:1501 description:{@"Accessory view is not of expected class (%@): %@", v7, v3}];
  }

  return v3;
}

uint64_t EdgeForAttribute(uint64_t result)
{
  if (result <= 4)
  {
    if ((result - 1) < 4)
    {
      return result;
    }

    return 0;
  }

  if ((result - 11) < 2)
  {
    return 5;
  }

  if (result == 6)
  {
    if ([UIApp userInterfaceLayoutDirection])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (result != 5)
    {
      return 0;
    }

    if ([UIApp userInterfaceLayoutDirection])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

id _sSo023UITableViewHeaderFooterB0C5UIKitE23backgroundConfigurationAC012UIBackgroundG0VSgvs_0(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
    [v1 setBackgroundConfiguration_];
  }

  else
  {

    return [v1 setBackgroundConfiguration_];
  }
}

void sub_188CE2238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188CE260C(double a1, double a2, float a3, float a4)
{
  v5 = *&v4[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label];
  if (v5)
  {
    return [v5 systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_];
  }

  v5 = *&v4[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView];
  if (v5)
  {
    return [v5 systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_];
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for NavigationBarSubtitleView();
  *&v11 = a3;
  *&v12 = a4;
  return objc_msgSendSuper2(&v13, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a1, a2, v11, v12);
}

void sub_188CE296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __copy_constructor_8_8_t0w64_s64_s72_s80_s88_s96_t104w4_s112(uint64_t a1, id *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 64) = a2[8];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 26);
  result = a2[14];
  *(a1 + 112) = result;
  return result;
}

uint64_t HasAttributeDifferenceString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 length];
  v9 = 0;
  while (1)
  {
    v21 = 0;
    v22 = 0;
    v10 = [v6 attribute:v5 atIndex:v9 longestEffectiveRange:&v21 inRange:{0, v8}];
    v19 = 0;
    v20 = 0;
    v11 = [v7 attribute:v5 atIndex:v9 longestEffectiveRange:&v19 inRange:{0, v8}];
    if (v21 != v19 || v22 != v20)
    {
      break;
    }

    v13 = v10;
    v14 = v11;
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      if (!v13 || !v14)
      {

        break;
      }

      v16 = [v13 isEqual:v14];

      if ((v16 & 1) == 0)
      {
        break;
      }
    }

    v9 = v22 + v21;

    if (v9 >= v8)
    {
      v17 = 0;
      goto LABEL_17;
    }
  }

  v17 = 1;
LABEL_17:

  return v17;
}

uint64_t GetShadowAttributeDifferenceString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = 0;
  v7 = 0;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = *off_1E70EC9B0;
  v11 = v9;
  v12 = *MEMORY[0x1E695F060];
  v34 = v4;
  do
  {
    v37 = 0;
    v38 = 0;
    v13 = [v3 attribute:v10 atIndex:v7 longestEffectiveRange:&v37 inRange:{0, v5}];
    v14 = v13;
    if (v13)
    {
      [v13 shadowOffset];
      if (v15 < 0.0)
      {
        v15 = -v15;
      }

      if (v12 < v15)
      {
        v12 = v15;
      }

      v17 = -v16;
      if (v16 >= 0.0)
      {
        v17 = v16;
      }

      if (v11 < v17)
      {
        v11 = v17;
      }
    }

    v35 = 0;
    v36 = 0;
    v18 = [v4 attribute:v10 atIndex:v7 longestEffectiveRange:&v35 inRange:{v37, v38}];
    v19 = v18;
    if (!v18)
    {
      goto LABEL_44;
    }

    [v18 shadowOffset];
    if (v20 < 0.0)
    {
      v20 = -v20;
    }

    if (v8 < v20)
    {
      v8 = v20;
    }

    v22 = -v21;
    if (v21 >= 0.0)
    {
      v22 = v21;
    }

    if (v9 < v22)
    {
      v9 = v22;
    }

    if (v14)
    {
      v23 = v3;
      v24 = [v14 shadowColor];
      v25 = [v19 shadowColor];
      v26 = v24;
      v27 = v25;
      v28 = v27;
      if (v26 == v27)
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
        if (v26 && v27)
        {
          v29 = [v26 isEqual:v27];
        }
      }

      if ((v29 & 1) == 0)
      {
        v6 |= 0x60000uLL;
      }

      v3 = v23;
      v4 = v34;
    }

    else
    {
LABEL_44:
      if (v14 | v19)
      {
        v6 |= 0x60000uLL;
      }
    }

    v30 = v38;
    if (v38 >= v36)
    {
      v30 = v36;
    }

    v7 += v30;
  }

  while (v7 < v5);
  if (v11 == v9 && v12 == v8)
  {
    v32 = v6;
  }

  else
  {
    v32 = v6 | 0x44000;
  }

  return v32;
}

id UIDecompressorLog()
{
  if (qword_1ED499300 != -1)
  {
    dispatch_once(&qword_1ED499300, &__block_literal_global_44);
  }

  v1 = qword_1ED4992F8;

  return v1;
}

id NSDiffableDataSourceSnapshot.indexOfSection(_:)()
{
  v1 = *(*v0 + 16);
  v2 = [v1 indexOfSectionIdentifier_];

  swift_unknownObjectRelease();
  if (v2 == sub_18A4A2388())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)()
{
  v1 = *(*v0 + 16);
  v2 = [v1 itemIdentifiersInSectionWithIdentifier_];

  swift_unknownObjectRelease();
  sub_18A4A7548();

  v3 = sub_18A4A82C8();

  return v3;
}

id _UIImageDecompressionCompletionQueue()
{
  if (qword_1ED4996C0 != -1)
  {
    dispatch_once(&qword_1ED4996C0, &__block_literal_global_12_3);
  }

  v1 = qword_1ED4996B8;

  return v1;
}

void sub_188CE3BF4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NavigationBarSubtitleView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = *&v0[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }
}

void *_sSo023UITableViewHeaderFooterB0C5UIKitE23backgroundConfigurationAC012UIBackgroundG0VSgvg_0@<X0>(void *a1@<X8>)
{
  result = [v1 backgroundConfiguration];
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    result = swift_allocObject();
    result[2] = v4;
  }

  *a1 = result;
  return result;
}

void UIBackgroundConfiguration.customView.setter(void *a1)
{
  sub_188BC7090(a1, &selRef_setCustomView_);
}

uint64_t sub_188CE3F2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 defaultContentConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for _Glass._GlassVariant.InteractionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _Glass._GlassVariant.InteractionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t UIListContentConfiguration.updated(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = v4;
  v8 = [v7 updatedConfigurationForState_];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a2 = result;
  return result;
}

id sub_188CE4650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = *(v6 + 16);
  v14(v21 - v15, v3, a1, v13);
  if (swift_dynamicCast())
  {
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v23 = v27;
    sub_188C98804(v22);
    (v14)(v11, v3, a1);
    sub_188A34624(0, &qword_1EA930B28);
    swift_dynamicCast();
    return v21[1];
  }

  else
  {
    (v14)(v8, v3, a1);
    if (swift_dynamicCast())
    {
      v17 = v24;
      v18 = *(&v25 + 1);

      (v14)(v11, v3, a1);
      sub_188A34624(0, &qword_1EA940C98);
      swift_dynamicCast();
      return v24;
    }

    else
    {
      v19 = (*(a2 + 16))(a1, a2);
      v20 = [objc_allocWithZone(UICellConfigurationState) initWithTraitCollection_];

      return v20;
    }
  }
}

uint64_t UIListContentConfiguration.imageProperties.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) imageProperties];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930C18);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

id UIListContentConfiguration.directionalLayoutMargins.setter(double a1, double a2, double a3, double a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    [*(v10 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v11 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v12 = swift_allocObject();
    *(v12 + 16) = v14;

    *v4 = v12;
  }

  return [v11 setDirectionalLayoutMargins_];
}

id sub_188CE4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &AssociatedTypeWitness - v9;
  (*(v6 + 32))(a3, v6, v8);
  v24 = sub_18A4A7258();

  (*(v6 + 24))(a3, v6);
  v23 = sub_18A4A7258();

  (*(v6 + 16))(a3, v6);
  v11 = *(a4 + 24);
  v28[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v28);
  v11(v10, a3, a4);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  sub_188A55598(v28, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v26[0] = v26[2];
  v26[1] = v27;
  v12 = *(&v27 + 1);
  sub_188A3F5FC(v26, &qword_1EA934050);
  if (v12)
  {
    v13 = sub_18A4A86A8();
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  v15 = (*(v6 + 40))(a3, v6);
  v16 = (*(v6 + 48))(a3, v6);
  v17 = (*(v6 + 56))(a3, v6);
  v19 = v23;
  v18 = v24;
  v20 = [v14 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_188CE4EDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED491528 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  v3 = __swift_project_value_buffer(v2, qword_1ED491530);
  return sub_188A3F29C(v3, a1, &qword_1EA932260);
}

void sub_188CE516C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v12 = v11;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

void std::vector<_UIOutlineNode>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_188CE596C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

unint64_t sub_188CE59D4(uint64_t a1)
{
  result = sub_188CE59FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188CE59FC()
{
  result = qword_1ED48DD58;
  if (!qword_1ED48DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DD58);
  }

  return result;
}

unint64_t sub_188CE5A50(uint64_t a1)
{
  result = sub_188CE5A78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188CE5A78()
{
  result = qword_1ED48DD78;
  if (!qword_1ED48DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DD78);
  }

  return result;
}

unint64_t sub_188CE5AD0()
{
  result = qword_1ED48DD68;
  if (!qword_1ED48DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DD68);
  }

  return result;
}

unint64_t sub_188CE5CE8()
{
  result = qword_1ED48DD70;
  if (!qword_1ED48DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48DD70);
  }

  return result;
}

unint64_t sub_188CE5DDC(uint64_t a1)
{
  result = sub_188CE5E04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188CE5E04()
{
  result = qword_1ED48CEA8;
  if (!qword_1ED48CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CEA8);
  }

  return result;
}

unint64_t sub_188CE5E58(uint64_t a1)
{
  result = sub_188CE5E80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188CE5E80()
{
  result = qword_1ED48CEC8;
  if (!qword_1ED48CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CEC8);
  }

  return result;
}

unint64_t sub_188CE5ED8()
{
  result = qword_1ED48CEB8;
  if (!qword_1ED48CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CEB8);
  }

  return result;
}

unint64_t sub_188CE5F30()
{
  result = qword_1ED48CEC0;
  if (!qword_1ED48CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CEC0);
  }

  return result;
}

id sub_188CE5F94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18A4A2B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_18A4A2B18();

  v10 = a3;
  v11 = v9(v8, v10);

  (*(v6 + 8))(v8, v5);

  return v11;
}

id sub_188CE60C0(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v10 = v6;
  v7 = a2;
  a3(&v11, a1, &v10);

  v8 = *(v11 + 16);

  return v8;
}

id sub_188CE6174(unsigned __int8 *a1, SEL *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188CE625C();
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

unint64_t sub_188CE625C()
{
  result = qword_1EA930A78;
  if (!qword_1EA930A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930A78);
  }

  return result;
}

void (*UIListSeparatorConfiguration.bottomSeparatorInsets.modify(uint64_t *a1))(double **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  [*(*v1 + 16) bottomSeparatorInsets];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_188CE6340;
}

void sub_188CE6358(double **a1, uint64_t a2, void (*a3)(double, double, double, double))
{
  v3 = *a1;
  a3(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v3);
}

id sub_188CE63AC(SEL *a1, double a2, double a3, double a4, double a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    v13 = *(v12 + 16);
  }

  else
  {
    [*(v12 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188CE625C();
    swift_dynamicCast();
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
    v14 = swift_allocObject();
    *(v14 + 16) = v16;

    *v5 = v14;
  }

  return [v13 *a1];
}

uint64_t NSDiffableDataSourceSectionSnapshot.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
  result = sub_188CE6CE0();
  *a1 = result;
  return result;
}

uint64_t sub_188CE6CE0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSDiffableDataSourceSectionSnapshot) init];
  return v0;
}

void NSDiffableDataSourceSectionSnapshot.append(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2, v5, v11);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v14 = sub_188CE70BC();
    sub_18A4A82C8();
    v15 = sub_18A4A7518();

    [v14 appendItems_];
  }

  else
  {
    (*(v9 + 32))(v13, v8, v4);
    v16 = sub_188CE70BC();
    sub_18A4A82C8();
    v17 = sub_18A4A7518();

    [v16 appendItems:v17 intoParentItem:sub_18A4A86A8()];

    swift_unknownObjectRelease();
    (*(v9 + 8))(v13, v4);
  }
}

uint64_t sub_188CE70BC()
{
  type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
  v1 = sub_18A4A8678();
  v2 = *v0;
  if (v1)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_1890391B0();
  swift_dynamicCast();
  v3 = v6;
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

uint64_t UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v9 = *(v5 + qword_1EA940A40);
  v10 = *(*a1 + 16);
  v11 = sub_18A4A86A8();
  if (a4)
  {
    v13[4] = a4;
    v13[5] = a5;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_188A4A8F0;
    v13[3] = &block_descriptor_77;
    a4 = _Block_copy(v13);
  }

  [v9 applySnapshot:v10 toSection:v11 animatingDifferences:a3 & 1 completion:a4];
  _Block_release(a4);

  return swift_unknownObjectRelease();
}

void _UIViewBaselineSpacing(void *a1, void *a2, int a3)
{
  v6 = [a2 _hasFontInfoForVerticalBaselineSpacing];
  v7 = [a1 _fontInfoForBaselineSpacing];
  v8 = v7;
  if (v6)
  {
    v9 = [a2 _fontInfoForBaselineSpacing];
    if (a3 == 6)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    if (a3 == 6)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    _UIViewBaselineToBaselineSpacing(v10, v11);
  }

  else
  {
    _UIViewBaselineToEdgeSpacing(v7, a3);
  }

  UICeilToViewScale(a1);
}

void sub_188CE76A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_188CE70BC();
  sub_18A4A82C8();
  v5 = sub_18A4A7518();

  [v4 *a3];
}

uint64_t _UIShouldCollectionTableAnimationsUseSpringCurve()
{
  LODWORD(result) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_CollectionTableAnimationsUseSpringCurve, @"CollectionTableAnimationsUseSpringCurve", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E22C)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void _UIViewBaselineToEdgeSpacing(void *a1, int a2)
{
  if (a1)
  {
    v4 = (a2 - 5) >= 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (os_variant_has_internal_diagnostics())
  {
    if (v5)
    {
LABEL_9:
      [a1 lineHeight];
      [a1 lineHeight];
      if (a2 != 5)
      {
        [a1 capHeight];
        [a1 descender];
      }

      return;
    }

    v6 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "UIKit problem: invalid arguments for internal layout spacing function.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_9;
    }

    v7 = *(__UILogGetCategoryCachedImpl("Assert", &_UIViewBaselineToEdgeSpacing___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "UIKit problem: invalid arguments for internal layout spacing function.", v8, 2u);
    }
  }
}

uint64_t UICellConfigurationState.init(traitCollection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 13) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = v2;
  *(a2 + 48) = 1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void std::vector<_UIOutlineNode>::insert(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(v15);
    }

    v17 = 8 * (v13 >> 3);
    if (!(0xAAAAAAAAAAAAAAABLL * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == __src)
        {
          v22 = 1;
        }

        else
        {
          v22 = 0x5555555555555556 * (v13 >> 3);
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<_UIOutlineNode>>(v22);
      }

      v17 = 8 * (v13 >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3)) >> 63)) >> 1);
    }

    v23 = *a3;
    *(v17 + 16) = *(a3 + 16);
    *v17 = v23;
    memcpy((v17 + 24), __src, *(a1 + 8) - __src);
    v24 = *a1;
    v25 = v17 + 24 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v26 = (__src - v24);
    v27 = (v17 - (__src - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v28)
    {

      operator delete(v28);
    }
  }

  else if (__src == v6)
  {
    v16 = *a3;
    *(v6 + 2) = *(a3 + 16);
    *v6 = v16;
    *(a1 + 8) = v6 + 24;
  }

  else
  {
    v8 = __src + 24;
    if (v6 < 0x18)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 24;
      v10 = *(v6 - 24);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 24, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v18 = v9 <= a3 || __src > a3;
    v19 = 24;
    if (v18)
    {
      v19 = 0;
    }

    v20 = a3 + v19;
    v21 = *v20;
    *(__src + 2) = *(v20 + 16);
    *__src = v21;
  }
}

void sub_188CE7C38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_188C36830(a1, &v8);
    v3 = v10;
    v4 = v12;
    v5 = v9;
    v6 = v11;
    *a2 = v8;
    *(a2 + 8) = v5;
    *(a2 + 24) = v3;
    *(a2 + 32) = v6;
    *(a2 + 48) = v4;
  }

  else
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA93B668);
    v7 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v7);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0xD000000000000026, 0x800000018A661C60);
    sub_18A4A8398();
    __break(1u);
  }
}

void sub_188CE850C()
{
  v1 = v0;
  v2 = *(v0 + 128);
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v0 + 352);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v7 = objc_allocWithZone(type metadata accessor for NavigationBarLayout.InsertLayoutData());
      v8 = v2;
      v9 = sub_188B37FA4(0x4368736572666552, 0xEE006C6F72746E6FLL, 5, 5);
      v10 = *(v1 + 352);
      *(v1 + 352) = v9;

      v3 = *(v1 + 352);
      if (!v3)
      {
        goto LABEL_15;
      }

      v3[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors] = 1;
    }

    v11 = v3;
    sub_188B396E0(v3);

    v12 = *(v1 + 352);
    if (v12)
    {
      *&v12[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight] = 0;
      v13 = v12;
      [v2 restingHeightOfRefreshControl];
      *&v13[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight] = v14;

      v15 = *(v1 + 352);
      if (v15)
      {
        v6 = v15;

        v6[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] = 1;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v5 = *(v0 + 352);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_188C12B90(v5);
LABEL_11:
}

void sub_188CE8688(void *a1)
{
  v3 = *(v1 + 128);
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_11:
    *(v1 + 128) = a1;
    v10 = a1;

    sub_188CE850C();
    goto LABEL_12;
  }

  v4 = v1;
  sub_188A34624(0, &unk_1EA92FB40);
  v5 = v3;
  v10 = a1;
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    v1 = v4;
    v3 = *(v4 + 128);
    if (!v3)
    {
      goto LABEL_11;
    }

LABEL_7:
    [v3 setDelegate_];
    v7 = *(v1 + 128);
    if (v7 && ([v7 stopAnimations], (v8 = *(v1 + 128)) != 0))
    {
      v9 = [v8 hostContainerView];
      [v9 removeFromSuperview];

      v3 = *(v1 + 128);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_11;
  }

LABEL_12:
}

id UICollectionLayoutListConfiguration.footerMode.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setFooterMode_];
}

id UICollectionLayoutListConfiguration.headerMode.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setHeaderMode_];
}

uint64_t _UIScrollAccessorySemanticEdge(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 5 || a1 == 3)
  {
    if (v3)
    {
      if ((v3[106] & 0x40) != 0)
      {
        a1 = a1 == 3;
      }

      else
      {
        a1 = 5;
      }
    }

    else
    {
      a1 = 5;
    }
  }

  return a1;
}

id UINavigationItem.renameDelegate.getter()
{
  result = [v0 _renameHandler];
  if (result)
  {
    v2 = result;
    _s35_UINavigationItemSwiftRenameHandlerCMa();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      return Strong;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void _UIDataSourceUpdateFromCollectionViewUpdateItem(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    LODWORD(v8) = 0;
    *a2 = 2;
    *(a2 + 8) = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  v4 = a1[10];
  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 3)
      {
        v6 = a1[3];
        v5 = a1[4];
        goto LABEL_10;
      }

      v4 = 0;
    }

    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v4 = 2;
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
  *a2 = v4;
  v7 = a1[5];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!HIDWORD(v7))
    {
      goto LABEL_13;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v10 handleFailureInFunction:v11 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v7}];
  }

  LODWORD(v7) = -1;
LABEL_13:
  *(a2 + 8) = v7;
  v8 = a1[6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    LODWORD(v8) = -1;
    goto LABEL_16;
  }

  if (HIDWORD(v8))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v12 handleFailureInFunction:v13 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v8}];

    goto LABEL_14;
  }

LABEL_16:
  *(a2 + 12) = v8;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_17:
    LODWORD(v6) = -1;
    goto LABEL_19;
  }

  if (HIDWORD(v6))
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v14 handleFailureInFunction:v15 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v6}];

    goto LABEL_17;
  }

LABEL_19:
  *(a2 + 16) = v6;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_20:
    LODWORD(v5) = -1;
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v16 handleFailureInFunction:v17 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v5}];

    goto LABEL_20;
  }

LABEL_22:
  *(a2 + 20) = v5;
  if (a1)
  {
    v9 = a1[6] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 24) = v9;
}

void __copy_assignment_8_8_t0w8_sb8_sb16(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = _Block_copy(*(a2 + 8));
  v5 = a1[1];
  a1[1] = v4;

  v6 = _Block_copy(*(a2 + 16));
  v7 = a1[2];
  a1[2] = v6;
}

uint64_t _processInsertedIndexes(int a1, unsigned int a2, uint16x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _processInsertedIndexes(const _UIMapIndex, const _UIMapIndex, _UIFastIndexSet *const __strong, _UIMapIndex *, _UIMapIndex *, _UIMapIndex *)"}];
    [v28 handleFailureInFunction:v29 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:488 description:{@"Invalid parameter not satisfying: %@", @"insertedIndexesIncludingMoves != nil"}];

    if (a4)
    {
LABEL_3:
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_40:
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _processInsertedIndexes(const _UIMapIndex, const _UIMapIndex, _UIFastIndexSet *const __strong, _UIMapIndex *, _UIMapIndex *, _UIMapIndex *)"}];
      [v32 handleFailureInFunction:v33 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"oldIndexMap != NULL"}];

      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_41;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _processInsertedIndexes(const _UIMapIndex, const _UIMapIndex, _UIFastIndexSet *const __strong, _UIMapIndex *, _UIMapIndex *, _UIMapIndex *)"}];
  [v30 handleFailureInFunction:v31 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"moveSourceToDestMap != NULL"}];

  if (!a5)
  {
    goto LABEL_40;
  }

LABEL_4:
  if (a6)
  {
    goto LABEL_5;
  }

LABEL_41:
  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _processInsertedIndexes(const _UIMapIndex, const _UIMapIndex, _UIFastIndexSet *const __strong, _UIMapIndex *, _UIMapIndex *, _UIMapIndex *)"}];
  [v34 handleFailureInFunction:v35 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"newIndexMap != NULL"}];

LABEL_5:
  v11 = [(_UIFastIndexSet *)a3 firstIndex];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v11;
    if (!HIDWORD(v11))
    {
      v12 = v11;
      if (!a2)
      {
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v36 handleFailureInFunction:v37 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v13}];
  }

  v12 = 0xFFFFFFFFLL;
  if (a2)
  {
LABEL_10:
    v14 = 0;
    v15 = 0;
    do
    {
      if (v14 == v12)
      {
        *(a6 + 4 * v14) = -1;
        ++v15;
        if (!a3)
        {
          LODWORD(v17) = 0;
LABEL_17:
          v12 = v17;
          goto LABEL_18;
        }

        v16 = [(_UIFastIndexSet *)a3 indexGreaterThanOrEqualToIndex:?];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16;
          if (!HIDWORD(v16))
          {
            goto LABEL_17;
          }

          v39 = [MEMORY[0x1E696AAA8] currentHandler];
          v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
          [v39 handleFailureInFunction:v38 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v17}];
        }

        v12 = 0xFFFFFFFFLL;
      }

      else
      {
        *(a6 + 4 * v14) = v15;
      }

LABEL_18:
      ++v14;
    }

    while (a2 != v14);
  }

LABEL_22:
  if (a1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = *(a5 + 4 * v18);
      if (v21 != -1)
      {
        break;
      }

      v26 = *(a4 + 4 * v18);
      if (v26 != -1)
      {
        goto LABEL_32;
      }

LABEL_33:
      if (++v18 == a1)
      {
        return v19 & 1;
      }
    }

    if (v20 >= a2)
    {
      goto LABEL_35;
    }

    v22 = v20 + 1;
    v23 = (a6 + 4 * v20);
    do
    {
      v25 = *v23++;
      v24 = v25;
      ++v20;
      if (v22 >= a2)
      {
        break;
      }

      ++v22;
    }

    while (v24 == -1);
    if (v24 == -1)
    {
LABEL_35:
      v19 = 1;
      goto LABEL_33;
    }

    v26 = v24 + v21;
LABEL_32:
    *(a5 + 4 * v18) = v26;
    goto LABEL_33;
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t _UIBitSet<256ul>::front(unint64_t *a1)
{
  v1 = __clz(__rbit64(*a1));
  if (v1 < 0x40)
  {
    v3 = 0;
  }

  else
  {
    v1 = __clz(__rbit64(a1[1]));
    if (v1 < 0x40)
    {
      v3 = 64;
    }

    else
    {
      v1 = __clz(__rbit64(a1[2]));
      if (v1 < 0x40)
      {
        v3 = 128;
      }

      else
      {
        v1 = __clz(__rbit64(a1[3]));
        if (v1 > 0x3F)
        {
          return 256;
        }

        v3 = 192;
      }
    }
  }

  return v1 | v3;
}

double _UIDefaultIndexBarWidthForTraitCollection(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat _UIDefaultIndexBarWidthForTraitCollection(UITraitCollection *__strong)"];
    [v4 handleFailureInFunction:v5 file:@"UICollectionTableSharedSupport.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"traitCollection != nil"}];
  }

  v2 = 15.0;
  if ([v1 userInterfaceIdiom] == 1 && (objc_msgSend(v1, "horizontalSizeClass") != 1 || (dyld_program_sdk_at_least() & 1) == 0))
  {
    v2 = 30.0;
  }

  return v2;
}

double _UISheetContentContainerSize(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 _formSheetObeysContentContainerSize])
  {
    [v7 sizeForChildContentContainer:v8 withParentContainerSize:{a3, a4}];
    a3 = v9;
  }

  return a3;
}

double sub_188CED360(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3;
}

double sub_188CED3C4()
{
  v1 = COERCE_DOUBLE((*(v0 + 16))());
  result = 1.79769313e308;
  if ((v3 & 1) == 0)
  {
    return v1;
  }

  return result;
}

id _UITableCellFontForImage(void *a1)
{
  v1 = [a1 symbolConfiguration];
  v2 = v1;
  if (v1)
  {
    if (v1[10])
    {
      v3 = [v1 textStyle];
      v4 = [off_1E70ECC18 preferredFontForTextStyle:v3];
    }

    else
    {
      v6 = 0.0;
      [v1 _deriveGlyphSize:0 weight:0 pointSize:&v6];
      v4 = [off_1E70ECC18 systemFontOfSize:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double _UITableCellLineHeightCenteredViewInRect(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v12 = a2;
  v13 = [v11 viewForLastBaselineLayout];
  [v11 _baselineOffsetFromBottom];
  v15 = v14;
  [v11 alignmentRectInsets];
  v17 = v15 + v16;
  if (v13 && v13 != v11)
  {
    [v13 bounds];
    Height = CGRectGetHeight(v28);
    [v13 _baselineOffsetFromBottom];
    v20 = v19;
    [v13 alignmentRectInsets];
    [v13 convertPoint:v11 toView:{0.0, Height - (v20 + v21)}];
    v23 = v22;
    [v11 bounds];
    v17 = CGRectGetHeight(v29) - v23;
  }

  [v11 bounds];
  v26 = _UITableCellLineHeightCenteredSizeWithBaselineInRect(v12, v24, v25, v17, 1.0, a3, a4, a5, a6);

  return v26;
}

double _UITableCellLineHeightCenteredSizeWithBaselineInRect(void *a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v15 = a1;
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v39 = v17;

  v18 = v15;
  v19 = v18;
  if (v18)
  {
    [v18 lineHeight];
    v21 = v20;
    [v19 ascender];
    v23 = v22 - (a3 - a4);
  }

  else
  {
    v23 = 0.0;
    v21 = a3;
  }

  v44.origin.x = a6;
  v44.origin.y = a7;
  v44.size.width = a8;
  v44.size.height = a9;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = a6;
  v45.origin.y = a7;
  v45.size.width = a8;
  v45.size.height = a9;
  v25 = MinX + (CGRectGetWidth(v45) - a2) * 0.5;
  v46.origin.x = a6;
  v46.origin.y = a7;
  v46.size.width = a8;
  v46.size.height = a9;
  v26 = v23 + CGRectGetMinY(v46);
  v47.origin.x = a6;
  v47.origin.y = a7;
  v47.size.width = a8;
  v47.size.height = a9;
  v27 = v26 + (CGRectGetHeight(v47) - v21) * 0.5;
  if (fabs(a5 + -1.0) >= 2.22044605e-16)
  {
    memset(&v43, 0, sizeof(v43));
    v48.origin.x = a6;
    v48.origin.y = a7;
    v48.size.width = a8;
    v48.size.height = a9;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = a6;
    v49.origin.y = a7;
    v49.size.width = a8;
    v49.size.height = a9;
    MidY = CGRectGetMidY(v49);
    CGAffineTransformMakeTranslation(&v43, MidX, MidY);
    v41 = v43;
    CGAffineTransformScale(&v42, &v41, a5, a5);
    v43 = v42;
    v50.origin.x = a6;
    v50.origin.y = a7;
    v50.size.width = a8;
    v50.size.height = a9;
    v32 = -CGRectGetMidX(v50);
    v51.origin.x = a6;
    v51.origin.y = a7;
    v51.size.width = a8;
    v51.size.height = a9;
    v33 = CGRectGetMidY(v51);
    v41 = v43;
    CGAffineTransformTranslate(&v42, &v41, v32, -v33);
    v43 = v42;
    v52.origin.x = v25;
    v52.origin.y = v27;
    v52.size.height = a3;
    v52.size.width = a2;
    *(&v28 - 2) = CGRectApplyAffineTransform(v52, &v42);
    v25 = v34;
    v27 = v35;
  }

  else
  {
    v29 = a3;
    v28 = a2;
  }

  v36 = UIRectIntegralWithScale(v25, v27, v28, v29, v39);

  return v36;
}

uint64_t UIShape.inset(by:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = v5[1];
  v16[0] = *v5;
  v16[1] = v11;
  v17[0] = v5[2];
  *(v17 + 9) = *(v5 + 41);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = v5[1];
  *(v12 + 48) = *v5;
  *(v12 + 64) = v13;
  *(v12 + 80) = v5[2];
  *(v12 + 89) = *(v5 + 41);
  *a1 = v12;
  *(a1 + 56) = 4;
  return sub_188B20550(v16, &v15);
}

uint64_t sub_188CEDE00()
{
  sub_188B1F3A0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t static UIShape.rect(cornerRadius:cornerCurve:maskedCorners:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  *(a3 + 56) = 0;
  return result;
}

double _UITableCellLineHeightCenteredImageInRect(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v12 = _UITableCellFontForImage(v11);
  [v11 size];
  v14 = v13;
  v16 = v15;
  [v11 baselineOffsetFromBottom];
  v18 = v17;

  v19 = _UITableCellLineHeightCenteredSizeWithBaselineInRect(v12, v14, v16, v18, a2, a3, a4, a5, a6);
  return v19;
}

id _viewControllersWhoseOrientationsMustCoincide(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 presentingViewController];
  v6 = [v5 _presentationController];
  v7 = [v3 modalPresentationStyle];
  if ([v6 state] == 1)
  {
    v8 = 1;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [v6 state] == 2;
    if (v5)
    {
LABEL_3:
      if (v7 == 17 || v7 == 5 || !v7 && ([v5 _existingView], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "window"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0 || v8, v10, v9, !v11))
      {
        [v4 addObject:v5];
      }

      v12 = _viewControllersWhoseOrientationsMustCoincide(v5, v4);
      goto LABEL_21;
    }
  }

  v13 = [v3 _existingView];
  v14 = [v13 window];
  if (v14)
  {
    if (v7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v8;
    }

    if (!v15)
    {
      [v4 addObject:v3];
    }
  }

  else
  {
  }

  if ([v4 count] <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v4;
  }

  v12 = v16;
LABEL_21:
  v17 = v12;

  return v17;
}

void std::allocator_traits<std::allocator<_UIRegionSolveResult>>::destroy[abi:nn200100]<_UIRegionSolveResult,void,0>(void **a1)
{
  v2 = a1 + 15;
  std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = a1 + 12;
  std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t _UITableViewCellTextLabelUsesLeadingLayoutMargin()
{
  if (qword_1ED498E60 != -1)
  {
    dispatch_once(&qword_1ED498E60, &__block_literal_global_3_13);
  }

  return byte_1ED498E51;
}

void _UISwitchCommonInit(void *a1)
{
  v14 = a1;
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 addObserver:v14 selector:sel__showingOnOffLabelChanged name:@"UIAccessibilityOnOffSwitchLabelsDidChangeNotification" object:0];

  v2 = [v14 traitCollection];
  if ([v2 userInterfaceIdiom] == -1)
  {
    v3 = [objc_opt_self() mainScreen];
    v4 = [v3 traitCollection];

    v2 = v4;
  }

  [v14 preferredStyle];
  [v2 userInterfaceIdiom];
  v14[63] = 2;
  [v14 _refreshVisualElementForTraitCollection:v2 populatingAPIProperties:0];
  v5 = [v14 visualElement];
  v6 = objc_opt_class();

  if ([v6 isFixedSize])
  {
    [v14 frame];
    v8 = v7;
    v10 = v9;
    [v6 preferredContentSize];
    [v14 setFrame:{v8, v10, v11, v12}];
  }

  else
  {
    [v14 sizeToFit];
  }

  v13 = [v14 visualElement];
  [v13 setEnabled:1];
}

id UIListContentConfiguration.TextProperties.font.getter()
{
  v1 = [*(*v0 + 16) font];

  return v1;
}

uint64_t sub_188CEF124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_18A4A2B08();
  sub_18A4A7D38();
  v4 = [v1 dequeueConfiguredReusableCellWithRegistration:v2 forIndexPath:v3 item:sub_18A4A7D28()];

  swift_unknownObjectRelease();

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_188CEFC58(uint64_t a1, void *a2)
{
  v4 = sub_18A4A4CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v20 = *(a1 + 16);
  v18 = (a1 + 16);
  v19 = v20;
  if (v20 == 2)
  {
    v21 = [a2 layoutDirection];
    v22 = v5[13];
    v23 = MEMORY[0x1E697E7D0];
    v24 = MEMORY[0x1E697E7D8];
    if (v21)
    {
      if (v21 != 1)
      {
        v22(v17, *MEMORY[0x1E697E7D0], v4);
        v22(v7, *v24, v4);
        goto LABEL_7;
      }

      v23 = MEMORY[0x1E697E7D8];
    }

    v22(v10, *v23, v4);
    v28 = v22;
    v25 = v5[4];
    v25(v13, v10, v4);
    v25(v17, v13, v4);
    v28(v7, *MEMORY[0x1E697E7D8], v4);
LABEL_7:
    v19 = sub_18A4A4CC8();
    v26 = v5[1];
    v26(v7, v4);
    v26(v17, v4);
    swift_beginAccess();
    *v18 = v19 & 1;
  }

  return v19 & 1;
}

uint64_t sub_188CF0724()
{
  v1 = [v0 _baselineOffsetsAtSize_];

  return MEMORY[0x1EEDE1890](v1);
}

unint64_t sub_188CF0960(char a1)
{
  result = 0x69617274736E6F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x74756F79616CLL;
      break;
    case 3:
      result = 2002874980;
      break;
    case 4:
      result = 0x756F72676B636162;
      break;
    case 5:
      result = 0x7372656E726F63;
      break;
    case 7:
      result = 0x736E6F4377656976;
      break;
    case 8:
      result = 0x6C6C695777656976;
      break;
    case 9:
      result = 0x4C64694477656976;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 14:
    case 15:
    case 16:
      result = 0x72756769666E6F63;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void UIObservationTrackingFeedbackLoopDetected(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v3;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Observation tracking feedback loop detected! Make a symbolic breakpoint at UIObservationTrackingFeedbackLoopDetected to catch this in the debugger. Refer to the console logs for details about recent invalidations; you can also make a symbolic breakpoint at UIObservationTrackingInvalidated to catch invalidations in the debugger. Object receiving repeated [%@] invalidations: %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &UIObservationTrackingFeedbackLoopDetected___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Observation tracking feedback loop detected! Make a symbolic breakpoint at UIObservationTrackingFeedbackLoopDetected to catch this in the debugger. Refer to the console logs for details about recent invalidations; you can also make a symbolic breakpoint at UIObservationTrackingInvalidated to catch invalidations in the debugger. Object receiving repeated [%@] invalidations: %@", &v7, 0x16u);
    }
  }
}

__CFString *_cubicTimingProviderDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 animationCurve];
    if (v3 == 7)
    {
      v13 = @"cubic smooth;";
    }

    else
    {
      if (v3 == 6)
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        [v2 controlPoint1];
        v6 = v5;
        [v2 controlPoint1];
        v8 = v7;
        [v2 controlPoint2];
        v10 = v9;
        [v2 controlPoint2];
        v12 = [v4 initWithFormat:@"cubic custom %f %f, %f %f;", v6, v8, v10, v11];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"cubic curve %lu;", objc_msgSend(v2, "animationCurve"), v15, v16, v17];
      }

      v13 = v12;
    }
  }

  else
  {
    v13 = @"cubic unknown;";
  }

  return v13;
}

void *std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::__erase_unique<long>(void *a1, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::find<long>(a1, a2);
  if (result)
  {
    v4 = a1[1];
    v5 = result[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != result);
    if (v8 == a1 + 2)
    {
      goto LABEL_19;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v10 = *(*result + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_20:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *result;
    if (*result)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *result;
      }
    }

    *v8 = v11;
    *result = 0;
    --a1[3];
    v13[0] = result;
    v13[1] = a1;
    v14 = 1;
    memset(v15, 0, sizeof(v15));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](v13);
  }

  return result;
}

id mediaTimingFunctionForTimingProvider(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 timingCurveType] == 3 || !objc_msgSend(v2, "timingCurveType") || objc_msgSend(v2, "timingCurveType") == 1)
    {
      v3 = [v2 cubicTimingParameters];
      v4 = [v3 _mediaTimingFunction];
    }

    else
    {
      v3 = [v2 springTimingParameters];
      v6 = [v3 _mediaTimingFunction];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      }

      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void std::vector<_UIRegionSolveResult>::insert(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v31 = *a1;
    v32 = 0x86BCA1AF286BCA1BLL * ((v7 - *a1) >> 3) + 1;
    if (v32 > 0x1AF286BCA1AF286)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v33 = a2 - v31;
    v34 = 0x86BCA1AF286BCA1BLL * ((v6 - v31) >> 3);
    if (2 * v34 > v32)
    {
      v32 = 2 * v34;
    }

    if (v34 >= 0xD79435E50D7943)
    {
      v35 = 0x1AF286BCA1AF286;
    }

    else
    {
      v35 = v32;
    }

    v46 = a1;
    if (v35)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_UIRegionSolveResult>>(v35);
    }

    v36 = 8 * (v33 >> 3);
    v43 = 0;
    v44 = v36;
    v45 = v36;
    if (!(0x86BCA1AF286BCA1BLL * (v33 >> 3)))
    {
      if (v33 < 1)
      {
        if (v31 == a2)
        {
          v37 = 1;
        }

        else
        {
          v37 = 0xD79435E50D79436 * (v33 >> 3);
        }

        v47 = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<_UIRegionSolveResult>>(v37);
      }

      v36 -= 152 * ((1 - 0x79435E50D79435E5 * (v33 >> 3)) >> 1);
      v44 = v36;
      *&v45 = v36;
    }

    std::allocator_traits<std::allocator<_UIRegionSolveResult>>::construct[abi:nn200100]<_UIRegionSolveResult,_UIRegionSolveResult const&,void,0>(v36, a3);
    *&v45 = v45 + 152;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_UIRegionSolveResult>,_UIRegionSolveResult*>(a2, *(a1 + 8), v45);
    v38 = *a1;
    v39 = v44;
    *&v45 = v45 + *(a1 + 8) - a2;
    *(a1 + 8) = a2;
    v40 = v38 + v39 - a2;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_UIRegionSolveResult>,_UIRegionSolveResult*>(v38, a2, v40);
    v41 = *a1;
    *a1 = v40;
    v42 = *(a1 + 16);
    *(a1 + 8) = v45;
    *&v45 = v41;
    *(&v45 + 1) = v42;
    v43 = v41;
    v44 = v41;
    std::__split_buffer<_UIRegionSolveResult>::~__split_buffer(&v43);
  }

  else if (a2 == v7)
  {
    std::allocator_traits<std::allocator<_UIRegionSolveResult>>::construct[abi:nn200100]<_UIRegionSolveResult,_UIRegionSolveResult const&,void,0>(*(a1 + 8), a3);
    *(a1 + 8) = v7 + 152;
  }

  else
  {
    v8 = *(a1 + 8);
    if (v7 >= 0x98)
    {
      v9 = *(v7 - 136);
      *v7 = *(v7 - 152);
      *(v7 + 16) = v9;
      v10 = *(v7 - 120);
      v11 = *(v7 - 104);
      v12 = *(v7 - 72);
      *(v7 + 64) = *(v7 - 88);
      *(v7 + 80) = v12;
      *(v7 + 32) = v10;
      *(v7 + 48) = v11;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v7 + 96) = 0;
      *(v7 + 96) = *(v7 - 56);
      *(v7 + 112) = *(v7 - 40);
      *(v7 - 56) = 0;
      *(v7 - 48) = 0;
      *(v7 - 40) = 0;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 120) = *(v7 - 32);
      v13 = *(v7 - 8);
      *(v7 + 136) = *(v7 - 16);
      v8 = v7 + 152;
      *(v7 - 32) = 0;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *(v7 + 144) = v13;
    }

    *(a1 + 8) = v8;
    if (v7 != a2 + 152)
    {
      v14 = 0;
      v15 = a2 - v7 + 152;
      do
      {
        v16 = v7 + v14;
        v17 = *(v7 + v14 - 304);
        *(v16 - 136) = *(v7 + v14 - 288);
        *(v16 - 152) = v17;
        v18 = *(v7 + v14 - 272);
        v19 = *(v7 + v14 - 256);
        v20 = *(v7 + v14 - 240);
        *(v16 - 72) = *(v7 + v14 - 224);
        *(v16 - 88) = v20;
        *(v16 - 104) = v19;
        *(v16 - 120) = v18;
        std::vector<_UIAuxillarySolveResult>::__vdeallocate((v7 + v14 - 56));
        *(v16 - 56) = *(v16 - 208);
        *(v16 - 40) = *(v16 - 192);
        *(v16 - 208) = 0;
        *(v16 - 200) = 0;
        *(v16 - 192) = 0;
        std::vector<_UIAuxillarySolveResult>::__vdeallocate((v7 + v14 - 32));
        *(v16 - 32) = *(v16 - 184);
        *(v16 - 184) = 0;
        *(v16 - 176) = 0;
        v21 = *(v7 + v14 - 168);
        v22 = *(v7 + v14 - 160);
        *(v16 - 168) = 0;
        *(v16 - 160) = 0;
        v23 = *(v7 + v14 - 8);
        *(v16 - 16) = v21;
        *(v16 - 8) = v22;

        v14 -= 152;
      }

      while (v15 != v14);
      v8 = *(a1 + 8);
    }

    v24 = v8 <= a3 || a2 > a3;
    v25 = 152;
    if (v24)
    {
      v25 = 0;
    }

    v26 = a3 + v25;
    v27 = *(a3 + v25 + 16);
    *a2 = *(a3 + v25);
    *(a2 + 16) = v27;
    v28 = *(a3 + v25 + 32);
    v29 = *(a3 + v25 + 48);
    v30 = *(a3 + v25 + 80);
    *(a2 + 64) = *(a3 + v25 + 64);
    *(a2 + 80) = v30;
    *(a2 + 32) = v28;
    *(a2 + 48) = v29;
    if (a2 != a3 + v25)
    {
      std::vector<_UIAuxillarySolveResult>::__assign_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(a2 + 96, *(v26 + 96), *(v26 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 104) - *(v26 + 96)) >> 4));
      std::vector<_UIAuxillarySolveResult>::__assign_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(a2 + 120, *(v26 + 120), *(v26 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 128) - *(v26 + 120)) >> 4));
    }

    objc_storeStrong((a2 + 144), *(v26 + 144));
  }
}

void __activateActionListItem_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_UIUpdateCycleMainScheduler)
  {
    if (*(_UIUpdateCycleMainScheduler + 568) == 1)
    {
      v3 = _UIUpdateCycleMainScheduler + 576;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [[UIUpdateInfo alloc] initWithUpdateParameters:v3];
  (*(*(a2 + 8) + 16))();
}

void sub_188CF2214(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t anonymous namespace::EMA::update@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  if (*(result + 48))
  {
    v5 = *(result + 8);
    v3 = vaddq_f64(vmulq_n_f64(v3, v5), vmulq_n_f64(*(result + 32), 1.0 - v5));
    v4 = vaddq_f64(vmulq_n_f64(v4, v5), vmulq_n_f64(*(result + 16), 1.0 - v5));
    *(result + 16) = v4;
    *(result + 32) = v3;
  }

  else
  {
    *(result + 16) = v4;
    *(result + 32) = v3;
    *(result + 48) = 1;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

id sub_188CF241C(uint64_t a1, void *a2)
{
  v3 = [*(v2 + *a2) indexForSectionIdentifier_];
  swift_unknownObjectRelease();
  if (v3 == sub_18A4A2388())
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _UIStyledEffectConvertAutomaticStyle(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 <= 5001)
  {
    if (a1 <= 999)
    {
      v9 = 1;
      if (a2 == 2)
      {
        v9 = 2;
        v18 = 1;
      }

      else
      {
        v18 = 0;
      }

      v13 = 2 * v18;
      if (a1 != 5)
      {
        v13 = 0;
      }

      v14 = a1 == 4;
    }

    else
    {
      v9 = 2 * (a2 == 2);
      v10 = 4002;
      if ((a2 == 2) != a3)
      {
        v10 = 4007;
      }

      v11 = 4000;
      if ((a2 == 2) != a3)
      {
        v11 = 4005;
      }

      if (a1 == 5001)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (a1 == 5000)
      {
        v13 = v10;
      }

      else
      {
        v13 = v12;
      }

      v14 = a1 == 1000;
    }

    if (v14)
    {
      return v9;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    if (a1 > 5004)
    {
      v3 = 5005;
      v4 = 4014;
      if ((a2 == 2) != a3)
      {
        v4 = 4015;
      }

      v5 = 5006;
      v6 = 4012;
      if ((a2 == 2) != a3)
      {
        v6 = 4013;
      }

      v7 = 5007;
      v8 = 4017;
      if ((a2 == 2) != a3)
      {
        v8 = 4018;
      }
    }

    else
    {
      v3 = 5002;
      v4 = 4001;
      if ((a2 == 2) != a3)
      {
        v4 = 4006;
      }

      v5 = 5003;
      v6 = 4003;
      if ((a2 == 2) != a3)
      {
        v6 = 4008;
      }

      v7 = 5004;
      v8 = 4004;
      if ((a2 == 2) != a3)
      {
        v8 = 4009;
      }
    }

    if (a1 == v7)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    if (a1 == v5)
    {
      v16 = v6;
    }

    else
    {
      v16 = v15;
    }

    if (a1 == v3)
    {
      return v4;
    }

    else
    {
      return v16;
    }
  }
}

void sub_188CF2944(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v4 = *a1;
  if ((*a1 & 0x10) != 0)
  {
    *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewNeedsUpdate) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setNeedsUpdateProperties];
    }
  }

  v7 = v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewAndSubview;
  swift_beginAccess();
  if (*(v7 + 16))
  {
    if (a2)
    {
      return;
    }

LABEL_16:
    if ((v4 & 0xC) != 0)
    {
      goto LABEL_33;
    }

    v10 = 1;
LABEL_18:
    if (*(v7 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!a2)
  {
    if (v8)
    {
      swift_unknownObjectRelease();
      v10 = 1;
      if (*(v7 + 16))
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRelease();
    v10 = 0;
    if ((v4 & 0xC) != 0 && v9 == a2)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  v10 = 0;
  if (*(v7 + 16))
  {
LABEL_19:
    if ((v4 & 0xA) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if ((v11 & 1) == 0)
    {
      return;
    }

LABEL_33:
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      [v14 setNeedsUpdateProperties];
    }

    return;
  }

LABEL_25:
  v12 = swift_unknownObjectWeakLoadStrong();
  if ((v10 & 1) == 0)
  {
    if (!v12)
    {
      return;
    }

    v13 = v12;
    swift_unknownObjectRelease();
    if ((v4 & 0xA) == 0 || v13 != a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v12)
  {
    swift_unknownObjectRelease();
    return;
  }

  if ((v4 & 0xA) != 0)
  {
    goto LABEL_33;
  }
}

float _RelativeQuaternionFromReference(float32x4_t a1, float a2, float32_t a3, int32x4_t a4, float32x4_t a5, float32_t a6, float a7, float a8)
{
  a5.f32[1] = a6;
  a5.i64[1] = __PAIR64__(LODWORD(a8), LODWORD(a7));
  v8 = vmulq_f32(a5, a5);
  v8.i64[0] = vpaddq_f32(v8, v8).u64[0];
  v9 = veorq_s8(vmulq_n_f32(a5, 1.0 / vpadd_f32(*v8.f32, *v8.f32).f32[0]), xmmword_18A6808D0);
  v10 = a4;
  *&v10.i32[1] = a2;
  v11 = vzip1q_s32(v10, v10);
  v11.i32[2] = a4.i32[0];
  v12 = v9;
  v12.i32[1] = v9.i32[3];
  v13 = vmulq_f32(v11, v12);
  v14 = a1;
  v14.i32[1] = a4.i32[0];
  v14.f32[3] = a3;
  v15 = vextq_s8(v14, v10, 8uLL);
  v14.i32[2] = a1.i32[0];
  v16 = vuzp2q_s32(v13, vrev64q_s32(v13));
  v17 = v9;
  v17.i32[2] = v9.i32[3];
  v18 = vmulq_f32(v14, v17);
  v19 = vaddq_f32(v16, v18);
  v20 = vtrn2q_s32(v10, v15);
  v20.i32[2] = a1.i32[0];
  v21 = vextq_s8(vtrn1q_s32(v19, vextq_s8(v19, v19, 0xCuLL)), vsubq_f32(v16, v18), 4uLL);
  v22 = v9;
  v22.i32[3] = v9.i32[1];
  v23 = vmulq_f32(v20, v22);
  v24 = vaddq_f32(v21, v23);
  v25 = vuzp2q_s32(vextq_s8(v24, v24, 4uLL), vsubq_f32(v21, v23));
  v25.i32[2] = v24.i32[1];
  v9.i32[3] = v9.i32[2];
  LODWORD(result) = vsubq_f32(v25, vmulq_f32(vextq_s8(vextq_s8(*&v20, *&v20, 0xCuLL), *&v20, 8uLL), v9)).i32[2];
  return result;
}

uint64_t _fromValuesAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v3 animations];
    v8 = [v4 animations];
    v9 = [v7 count];
    if (v9 == [v8 count])
    {
      if ([v7 count])
      {
        v10 = 0;
        do
        {
          v11 = [v7 objectAtIndexedSubscript:v10];
          v12 = [v8 objectAtIndexedSubscript:v10];
          v6 = _fromValuesAreEqual(v11, v12);

          if ((v6 & 1) == 0)
          {
            break;
          }

          ++v10;
        }

        while ([v7 count] > v10);
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v3 fromValue];
    v8 = [v4 fromValue];
    v6 = [v7 isEqual:v8];
LABEL_14:

    goto LABEL_15;
  }

LABEL_2:
  v6 = 0;
LABEL_15:

  return v6;
}

__n128 _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEE9push_backERKS1_(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v5 - v4) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = a1[3];
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17 = a1;
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIPDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m(v12);
    }

    a1[4] = v8 - 128;
    *&v16 = *v4;
    a1[1] = v4 + 8;
    _ZNSt3__114__split_bufferIPDv3_dNS_9allocatorIS2_EEE12emplace_backIJRS2_EEEvDpOT_(a1, &v16);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = (*&v4[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  result = *a2;
  v15 = *(a2 + 16);
  *v13 = *a2;
  v13[1] = v15;
  ++a1[5];
  return result;
}

void sub_188CF3784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::Gaussian::update(uint64_t a1@<X0>, _OWORD *a2@<X1>, float64x2_t *a3@<X8>)
{
  v5 = a2[1];
  v33[0] = *a2;
  v33[1] = v5;
  _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEE9push_backERKS1_((a1 + 48), v33);
  v6 = *(a1 + 88);
  if (v6 > *(a1 + 12))
  {
    v7 = *(a1 + 80) + 1;
    *(a1 + 80) = v7;
    *(a1 + 88) = v6 - 1;
    if (v7 >= 0x100)
    {
      operator delete(**(a1 + 56));
      *(a1 + 56) += 8;
      *(a1 + 80) -= 128;
    }
  }

  if (*(a1 + 96) == 1)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v9 = *(a1 + 8);
    if ((v9 & 0x80000000) != 0)
    {
      v12 = 0.0;
    }

    else
    {
      v10 = -v9;
      v11 = *(a1 + 32);
      v12 = 0.0;
      do
      {
        v13 = exp((v10 * v10) * -0.5 / (*(a1 + 16) * *(a1 + 16)));
        v14 = v13;
        v15 = *(a1 + 40);
        if (v11 >= v15)
        {
          v16 = *(a1 + 24);
          v17 = v11 - v16;
          v18 = (v11 - v16) >> 3;
          v19 = v18 + 1;
          if ((v18 + 1) >> 61)
          {
            std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
          }

          v20 = v15 - v16;
          if (v20 >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
          }

          v22 = (v11 - v16) >> 3;
          v23 = (8 * v18);
          v24 = (8 * v18 - 8 * v22);
          *v23 = v13;
          v11 = v23 + 1;
          memcpy(v24, v16, v17);
          *(a1 + 24) = v24;
          *(a1 + 32) = v11;
          *(a1 + 40) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v11++ = v13;
        }

        *(a1 + 32) = v11;
        v12 = v12 + v14;
      }

      while (v10++ < *(a1 + 8));
    }

    v8 = *(a1 + 12);
    if (v8 >= 1)
    {
      v26 = *(a1 + 24);
      v27 = *(a1 + 12);
      do
      {
        *v26 = *v26 / v12;
        ++v26;
        --v27;
      }

      while (v27);
    }

    *(a1 + 96) = 1;
  }

  if (v8 < 1)
  {
    v29 = 0uLL;
    v30 = 0uLL;
  }

  else
  {
    v28 = 0;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      if (v28 < *(a1 + 88))
      {
        v31 = *(*(a1 + 24) + 8 * v28);
        v32 = (*(*(a1 + 56) + (((v28 + *(a1 + 80)) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v28 + *(a1 + 80)) & 0x7F));
        v30 = vaddq_f64(v30, vmulq_n_f64(v32[1], v31));
        v29 = vaddq_f64(v29, vmulq_n_f64(*v32, v31));
      }

      ++v28;
    }

    while (v8 != v28);
  }

  *a3 = v29;
  a3[1] = v30;
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIPDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

void *_ZNSt3__114__split_bufferIPDv3_dNS_9allocatorIS2_EEE12emplace_backIJRS2_EEEvDpOT_(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIPDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t sub_188CF3CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1)
  {
    v15 = *(a1 + 16);
    v16 = _UISizeValueForAxis(v15, *(a1 + 160), *(a1 + 168));
    v17 = _UISizeValueForAxis(v15, *(a1 + 224), *(a1 + 232));
    v47 = *(a1 + 72);
  }

  else
  {
    v47 = 0.0;
    v16 = _UISizeValueForAxis(0, 0.0, 0.0);
    v17 = _UISizeValueForAxis(0, 0.0, 0.0);
    v15 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection_block_invoke;
  aBlock[3] = &unk_1E70FAD70;
  *&aBlock[5] = v16;
  *&aBlock[6] = v17;
  *&aBlock[7] = a4;
  *&aBlock[8] = a5;
  *&aBlock[9] = a6;
  *&aBlock[10] = a7;
  aBlock[4] = a1;
  *&aBlock[11] = a2;
  *&aBlock[12] = a3;
  aBlock[13] = v15;
  v18 = _Block_copy(aBlock);
  if (!a1)
  {
    v43 = *MEMORY[0x1E695EFF8];
    v44 = *(MEMORY[0x1E695EFF8] + 8);
    v45 = _UIPointValueForAxis(v15, a2, a3);
    v23 = _UISetPointValueForAxis(v15, v43, v44, v45);
    v25 = v46;
    v26 = a8;
    goto LABEL_19;
  }

  v19 = *(a1 + 24);
  v20 = *MEMORY[0x1E695EFF8];
  v21 = *(MEMORY[0x1E695EFF8] + 8);
  v22 = _UIPointValueForAxis(v15, a2, a3);
  v23 = _UISetPointValueForAxis(v15, v20, v21, v22);
  v25 = v24;
  v26 = a8;
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v37 = v18[2](v18);
LABEL_18:
      v23 = v37;
      v25 = v38;
      goto LABEL_19;
    }

    if (v19 == 4)
    {
      goto LABEL_13;
    }

    if (v19 != 5)
    {
LABEL_15:
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint _UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection(CGPoint, _UICollectionLayoutSectionDescriptor *const __strong, CGRect, CGFloat)"}];
      [v39 handleFailureInFunction:v40 file:@"_UICollectionLayoutHelpers.m" lineNumber:1038 description:@"Unknown orthogonal scrolling behavior. Please file a bug on UIKit."];

      goto LABEL_19;
    }

    v27 = *(a1 + 64);
    UIRoundToScale((v47 + v17 - v27) * 0.5, a8);
    v29 = v28;
    v30 = _UISetPointValueForAxis(v15, v20, v21, v28);
    v32 = (v18[2])(v18, v23 + v30, v25 + v31, v27, v29);
    v34 = v33;
    v23 = v32 + _UISetPointValueForAxis(v15, v20, v21, -v29);
    v25 = v34 + v35;
  }

  else if (v19)
  {
    if (v19 == 1)
    {
      v36 = v18[2];
      goto LABEL_17;
    }

    if (v19 != 2)
    {
      goto LABEL_15;
    }

LABEL_13:
    v36 = v18[2];
LABEL_17:
    v37 = v36(v18);
    goto LABEL_18;
  }

LABEL_19:
  v41 = UIPointRoundToScale(v23, v25, v26);

  return v41;
}

unint64_t *std::uninitialized_copy[abi:nn200100]<_UIBitSetIterator<unsigned long,256ul>,unsigned long *>(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = a1[1];
  if (v3 != a2)
  {
    v4 = *a1;
    v5 = *(a1 + 16);
    do
    {
      *a3 = v3;
      v6 = v3 >> 6;
      if (v3 >> 6 == 4)
      {
LABEL_7:
        v3 = 256;
      }

      else
      {
        v7 = v3 & 0x3F;
        v8 = -64 * v6;
        while (1)
        {
          v9 = __clz(__rbit64((*(v4 + 8 * v6) ^ -(v5 ^ 1u)) & (-1 << v7)));
          if (v9 < 0x40)
          {
            break;
          }

          v7 = 0;
          ++v6;
          v8 -= 64;
          if (v6 == 4)
          {
            goto LABEL_7;
          }
        }

        v3 = v9 - v8;
      }

      v5 = (v5 & 1) == 0;
      ++a3;
    }

    while (v3 != a2);
  }

  return a3;
}

uint64_t sub_188CF454C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = *(v2 + *a1);
  v6 = sub_18A4A2B08();
  v7 = [v5 itemIdentifierForIndexPath_];

  if (v7)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v8 = *(v4 + 88);
  v9 = swift_dynamicCast();
  return (*(*(v8 - 8) + 56))(a2, v9 ^ 1u, 1, v8);
}

void sub_188CF4A54(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups) & 1) == 0)
    {
      *(Strong + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections) = 0;
      v10 = Strong;

      sub_18907A694();
      v4 = [a1 _isImplicitlyGenerated];
      v3 = v10;
      if ((v4 & 1) == 0)
      {
        v5 = &v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate];
        v6 = swift_unknownObjectWeakLoadStrong();
        v3 = v10;
        if (v6)
        {
          v7 = v6;
          v8 = *(v5 + 1);
          ObjectType = swift_getObjectType();
          (*(v8 + 16))(ObjectType, v8);

          v3 = v10;
        }
      }
    }
  }
}

void _processDeletedIndexes(int a1, uint16x8_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processDeletedIndexes(const _UIMapIndex, _UIFastIndexSet *const __strong, _UIMapIndex *)"}];
    [v13 handleFailureInFunction:v14 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"deletedIndexesIncludingMoves != nil"}];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processDeletedIndexes(const _UIMapIndex, _UIFastIndexSet *const __strong, _UIMapIndex *)"}];
  [v15 handleFailureInFunction:v16 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"oldIndexMap != NULL"}];

LABEL_3:
  v6 = [(_UIFastIndexSet *)a2 firstIndex];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_4;
  }

  v8 = v6;
  if (HIDWORD(v6))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v17 handleFailureInFunction:v18 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v8}];

LABEL_4:
    v7 = 0xFFFFFFFFLL;
    if (!a1)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = v6;
  if (a1)
  {
LABEL_8:
    v9 = 0;
    v10 = 0;
    do
    {
      if (v9 == v7)
      {
        *(a3 + 4 * v9) = -1;
        ++v10;
        if (!a2)
        {
          LODWORD(v12) = 0;
LABEL_15:
          v7 = v12;
          goto LABEL_16;
        }

        v11 = [(_UIFastIndexSet *)a2 indexGreaterThanOrEqualToIndex:?];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v11;
          if (!HIDWORD(v11))
          {
            goto LABEL_15;
          }

          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
          [v20 handleFailureInFunction:v19 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v12}];
        }

        v7 = 0xFFFFFFFFLL;
      }

      else
      {
        *(a3 + 4 * v9) -= v10;
      }

LABEL_16:
      ++v9;
    }

    while (a1 != v9);
  }
}

id sub_188CF4DF4()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_188CF4EB4();
    swift_unknownObjectRelease();
  }

  sub_188AED2B0(__src);
  memcpy(__dst, &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
  memcpy(&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
  sub_188A3F5FC(__dst, &unk_1EA9362C0);
  return [v0 setNeedsLayout];
}

void sub_188CF4EB4()
{
  v1 = [v0 stack];
  v2 = [v1 state];

  if (!v2)
  {
    v3 = [v0 stack];
    v4 = [v3 topItem];

    if (v4)
    {
      [v4 _setEffectiveTopBarSectionsNeedsUpdate];
      v5 = [v0 navigationBar];
      [v5 setNeedsLayout];
    }
  }
}

uint64_t sub_188CF54E4()
{
  sub_188AFC388(&qword_1EA92E7C8, type metadata accessor for TraitKey);
  sub_188AFC388(&qword_1EA92E7B0, type metadata accessor for TraitKey);

  return sub_18A4A8518();
}

void sub_188CF57A4(id a1, unint64_t a2)
{
  v3 = v2;
  if (a2 >> 62)
  {
    v6 = sub_18A4A7F68();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    __break(1u);
    goto LABEL_12;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_188E49ABC(i, a2);
    }

    else
    {
      v8 = *(a2 + 8 * i + 32);
    }

    v9 = v8;
    [v8 _relinquishOwnership_];
  }

LABEL_10:
  [a1 _items];
  sub_188A34624(0, &qword_1ED48E8C0);
  sub_18A4A7528();
LABEL_12:
  __break(1u);
}

void sub_188CF5A10(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections) = 0;

    sub_18907A694();
    if (([a1 _isImplicitlyGenerated] & 1) == 0)
    {
      v3 = v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = *(v3 + 8);
        v7 = Strong;
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
      }
    }
  }
}

uint64_t UICollectionViewListCell.accessories.getter()
{
  v1 = [v0 accessories];
  sub_188A34624(0, &qword_1ED48BEB8);
  v2 = sub_18A4A7548();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_35:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_18A4A7F68();
  if (!v3)
  {
    goto LABEL_35;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  sub_188CFB090(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E49A80(v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = 0;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v8 = 8;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v8 = 2;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v8 = 3;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v8 = 4;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v8 = 5;
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v8 = 6;
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v8 = 7;
                    }

                    else
                    {
                      objc_opt_self();
                      v9 = swift_dynamicCastObjCClass();
                      if (v9)
                      {
                        v8 = [v9 customView];
                      }

                      else
                      {
                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v8 = 1;
                        }

                        else
                        {
                          objc_opt_self();
                          if (!swift_dynamicCastObjCClass())
                          {
                            goto LABEL_38;
                          }

                          v8 = 9;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_188CFB090((v10 > 1), v11 + 1, 1);
      }

      ++v4;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
    }

    while (v3 != v4);

    return v5;
  }

  __break(1u);
LABEL_38:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t IndexPath.item.getter()
{
  result = sub_18A4A2B28();
  if (result < 1)
  {
    __break(1u);
  }

  else if (sub_18A4A2B28() < 2)
  {

    return sub_18A4A2388();
  }

  else
  {

    return sub_18A4A2B58();
  }

  return result;
}

uint64_t sub_188CF6108(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FloatingTabBarConfiguration.ItemDisplayMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 9);
  if (v8 == 3)
  {
    if (qword_1EA930098 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EA9300A0 style];
    if (v12 == 2)
    {
      LOBYTE(v8) = 2;
    }

    else
    {
      LOBYTE(v8) = v12 == 1;
    }
  }

  if (a2 == 2)
  {
    if (qword_1EA930098 != -1)
    {
      swift_once();
    }

    a2 = [qword_1EA9300A0 isHidden];
    if ((v11 & 1) == 0)
    {
LABEL_9:
      v13 = a4;
      if (a4)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (qword_1EA930098 != -1)
  {
    swift_once();
  }

  [qword_1EA9300A0 reservedLayoutWidth];
  if (v14 == 0.0)
  {
    v10 = 1;
    v9 = 0.0;
    v13 = a4;
    if (a4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v14 == -1.79769313e308)
    {
      v9 = COERCE_DOUBLE(1);
    }

    else
    {
      v9 = v14;
    }

    v10 = v14 == -1.79769313e308;
    v13 = a4;
    if (a4)
    {
      goto LABEL_26;
    }
  }

LABEL_23:
  if (qword_1EA930098 != -1)
  {
    swift_once();
  }

  v13 = [qword_1EA9300A0 tintColor];
LABEL_26:
  v15 = qword_1EA930098;
  v16 = a4;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = a2 & 1;
  v18 = qword_1EA9300A0;
  v19 = [v18 _monochromaticTreatment];

  *a5 = v8;
  v20 = v19 == 0;
  *(a5 + 1) = v17;
  if (v19 == 1)
  {
    v20 = 2;
  }

  *(a5 + 8) = v9;
  *(a5 + 16) = v10 & 1;
  *(a5 + 24) = v13;
  *(a5 + 32) = 0;
  *(a5 + 40) = v20;
}

id sub_188CF6920()
{
  result = [objc_allocWithZone(UICellAccessoryOutlineDisclosure) init];
  qword_1EA9300A0 = result;
  return result;
}

id static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 1);
  v11 = a2[16];
  v13 = *(a2 + 3);
  v12 = *(a2 + 4);
  v17 = a2[40];
  v14 = [objc_allocWithZone(UICellAccessoryOutlineDisclosure) init];
  if (a3)
  {
    v23 = a3;
    v24 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_188A4A8F0;
    v22 = &block_descriptor_13_0;
    a3 = _Block_copy(&aBlock);
    v16 = v12;
  }

  [v14 setActionHandler_];
  _Block_release(a3);
  LOBYTE(aBlock) = v8;
  BYTE1(aBlock) = v9;
  v20 = v10;
  LOBYTE(v21) = v11;
  v22 = v13;
  v23 = v12;
  LOBYTE(v24) = v17;
  v25 = v7;
  result = sub_188CF7028(&aBlock, &v25);
  *a5 = 1;
  a5[1] = v14;
  return result;
}

id sub_188CF7028(double *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 40);
  [v2 setDisplayedState_];
  [v2 setStyle_];
  [v2 setTintColor_];
  [v2 setHidden_];
  v10 = v5;
  v11 = -1.79769313e308;
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  if (v6)
  {
    v10 = v11;
  }

  [v2 setReservedLayoutWidth_];
  [v2 _setCustomImage_];

  return [v2 _setMonochromaticTreatment_];
}

void sub_188CF7254(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, id *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 9);
  if (a1 != 2)
  {
    v15 = a1;
    if ((*(a2 + 9) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (*a5 != -1)
    {
      swift_once();
    }

    [*a6 reservedLayoutWidth];
    if (v19 == 0.0)
    {
      v12 = 0.0;
      v27 = 1;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v19 == -1.79769313e308)
      {
        v12 = COERCE_DOUBLE(1);
      }

      else
      {
        v12 = v19;
      }

      v27 = v19 == -1.79769313e308;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    v16 = a3;
    if (a4)
    {
      v17 = a3;
      v16 = a3;
      v18 = a4;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = [*a6 isHidden];
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_3:
  v27 = v13;
  if (a3)
  {
    goto LABEL_4;
  }

LABEL_13:
  if (*a5 != -1)
  {
    swift_once();
  }

  v16 = [*a6 tintColor];
  v18 = a4;
  if (!a4)
  {
LABEL_16:
    v20 = *a5;
    v21 = a3;
    if (v20 != -1)
    {
      swift_once();
    }

    v18 = [*a6 backgroundColor];
  }

LABEL_19:
  v22 = *a5;
  v23 = a4;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = *a6;
  v25 = [v24 _monochromaticTreatment];

  v26 = v25 == 0;
  *a7 = v15 & 1;
  *(a7 + 8) = v12;
  *(a7 + 16) = v27;
  if (v25 == 1)
  {
    v26 = 2;
  }

  *(a7 + 24) = v16;
  *(a7 + 32) = v18;
  *(a7 + 40) = v26;
}

id sub_188CF74A8()
{
  result = [objc_allocWithZone(UICellAccessoryMultiselect) init];
  qword_1EA930158 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit15UICellAccessoryV0C4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id static UICellAccessory.multiselect(displayed:options:)@<X0>(unsigned __int8 *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 40);
  v11 = [objc_allocWithZone(UICellAccessoryMultiselect) init];
  LOBYTE(v14[0]) = v5;
  v14[1] = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v13 = v4;
  result = sub_188CF7A1C(v14, &v13);
  *a3 = 6;
  a3[1] = v11;
  return result;
}

id sub_188CF7A1C(double *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = *(a1 + 40);
  [v2 setDisplayedState_];
  [v2 setTintColor_];
  [v2 setBackgroundColor_];
  [v2 setHidden_];
  v9 = v4;
  v10 = -1.79769313e308;
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  if (v5)
  {
    v9 = v10;
  }

  [v2 setReservedLayoutWidth_];

  return [v2 _setMonochromaticTreatment_];
}

uint64_t getEnumTagSinglePayload for FloatingTabBarConfiguration.ItemDisplayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _UICellAccessoryOutlineDisclosureBehavesAsDisplayedForCurrentState(void *a1, uint64_t a2)
{
  v3 = a1;
  if (dyld_program_sdk_at_least())
  {
    v4 = [v3 _isDisplayedForEditingState:a2];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id UICollectionViewCell.configurationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_18922BC3C;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18922BC7C;
    v9[3] = &block_descriptor_159;
    v7 = _Block_copy(v9);

    [v3 setConfigurationUpdateHandler_];
    _Block_release(v7);
    return sub_188A55B8C(a1);
  }

  else
  {

    return [v2 setConfigurationUpdateHandler_];
  }
}

uint64_t sub_188CF8034()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id _accessoryAsClass(void *a1, objc_class *a2)
{
  v3 = a1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"__kindof UICellAccessory * _Nonnull _accessoryAsClass(UICellAccessory * _Nonnull __strong, Class  _Nonnull __unsafe_unretained)"}];
    v7 = NSStringFromClass(a2);
    [v5 handleFailureInFunction:v6 file:@"UICollectionViewListCell.m" lineNumber:1361 description:{@"Accessory is not of expected class (%@): %@", v7, v3}];
  }

  return v3;
}

uint64_t sub_188CF8570()
{

  return swift_deallocClassInstance();
}

uint64_t UITraitOverrides.subscript.setter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(*v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    *v4 = v10;
  }

  v11 = v9;
  [v11 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

void sub_188CF8B40(uint64_t a1)
{
  sub_188CAFA64();
  if (*(*(a1 + 144) + 16))
  {
    v2 = sub_188BE08C4(*(a1 + 144));

    *(a1 + 144) = v2;
  }
}

id sub_188CF9104()
{
  result = [objc_allocWithZone(UICellAccessoryDelete) init];
  qword_1EA930170 = result;
  return result;
}

id sub_188CF91AC@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Class *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = a2[16];
  v15 = *(a2 + 3);
  v16 = *(a2 + 4);
  v20 = a2[40];
  v21 = *a1;
  v17 = [objc_allocWithZone(*a5) init];
  if (a3)
  {
    v27 = a3;
    v28 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_188A4A8F0;
    v26 = a6;
    v18 = _Block_copy(&aBlock);
  }

  else
  {
    v18 = 0;
  }

  [v17 setActionHandler_];
  _Block_release(v18);
  LOBYTE(aBlock) = v12;
  v24 = v13;
  LOBYTE(v25) = v14;
  v26 = v15;
  v27 = v16;
  LOBYTE(v28) = v20;
  v29 = v21;
  result = sub_188CF7A1C(&aBlock, &v29);
  *a8 = a7;
  a8[1] = v17;
  return result;
}

id sub_188CF9320()
{
  result = [objc_allocWithZone(UICellAccessoryDetail) init];
  qword_1EA92EDA0 = result;
  return result;
}

id static UICellAccessory.detail(displayed:options:actionHandler:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = a2[16];
  v12 = *(a2 + 3);
  v13 = a2[32];
  v14 = [objc_allocWithZone(UICellAccessoryDetail) init];
  if (a3)
  {
    v20 = a3;
    v21 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_188A4A8F0;
    v19 = &block_descriptor_5;
    a3 = _Block_copy(&aBlock);
  }

  [v14 setActionHandler_];
  _Block_release(a3);
  LOBYTE(aBlock) = v9;
  v17 = v10;
  LOBYTE(v18) = v11;
  v19 = v12;
  LOBYTE(v20) = v13;
  v22 = v8;
  result = sub_188CDA188(&aBlock, &v22);
  *a5 = 8;
  a5[1] = v14;
  return result;
}

void UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  if (a1 == 2)
  {
    if (qword_1EA9304B8 != -1)
    {
      swift_once();
    }

    v11 = [qword_1EA9304C0 isHidden];
    if ((v10 & 1) == 0)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (qword_1EA9304B8 != -1)
      {
        swift_once();
      }

      v12 = [qword_1EA9304C0 tintColor];
      if (a4 == 2)
      {
        goto LABEL_5;
      }

LABEL_18:
      v16 = a3;
      goto LABEL_19;
    }
  }

  else
  {
    v11 = a1;
    if ((*(a2 + 9) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EA9304B8 != -1)
  {
    swift_once();
  }

  [qword_1EA9304C0 reservedLayoutWidth];
  if (v15 == 0.0)
  {
    v9 = 1;
    v8 = 0.0;
    if (!a3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v15 == -1.79769313e308)
    {
      v8 = COERCE_DOUBLE(1);
    }

    else
    {
      v8 = v15;
    }

    v9 = v15 == -1.79769313e308;
    if (!a3)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v12 = a3;
  if (a4 != 2)
  {
    goto LABEL_18;
  }

LABEL_5:
  v13 = qword_1EA9304B8;
  v14 = a3;
  if (v13 != -1)
  {
    swift_once();
  }

  a4 = [qword_1EA9304C0 showsVerticalSeparator];
LABEL_19:
  if (qword_1EA9304B8 != -1)
  {
    swift_once();
  }

  v17 = a4 & 1;
  v18 = v11 & 1;
  v19 = qword_1EA9304C0;
  v20 = [v19 _monochromaticTreatment];

  v21 = v20 == 0;
  *a5 = v18;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  if (v20 == 1)
  {
    v21 = 2;
  }

  *(a5 + 24) = v12;
  *(a5 + 32) = v17;
  *(a5 + 33) = v21;
}

id sub_188CF9884()
{
  result = [objc_allocWithZone(UICellAccessoryReorder) init];
  qword_1EA9304C0 = result;
  return result;
}

id static UICellAccessory.reorder(displayed:options:)@<X0>(unsigned __int8 *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = *(a2 + 3);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = [objc_allocWithZone(UICellAccessoryReorder) init];
  LOBYTE(v14[0]) = v5;
  v14[1] = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v13 = v4;
  result = sub_188CF9AF4(v14, &v13);
  *a3 = 5;
  a3[1] = v11;
  return result;
}

id sub_188CF9AF4(double *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 3);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  [v2 setDisplayedState_];
  [v2 setTintColor_];
  [v2 setShowsVerticalSeparator_];
  [v2 setHidden_];
  v9 = v4;
  v10 = -1.79769313e308;
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  if (v5)
  {
    v9 = v10;
  }

  [v2 setReservedLayoutWidth_];

  return [v2 _setMonochromaticTreatment_];
}

unint64_t sub_188CF9CB8()
{
  result = qword_1EA92EDA8[0];
  if (!qword_1EA92EDA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA92EDA8);
  }

  return result;
}

id UICellAccessory.accessoryType.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_188CF9DE4(v2);
}

id sub_188CF9DE4(id result)
{
  if (result >= 0xA)
  {
    return result;
  }

  return result;
}

uint64_t sub_188CF9DF4()
{
  sub_18A4A8888();
  UICellAccessory.AccessoryType.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t UICellAccessory.AccessoryType.hash(into:)()
{
  v1 = *v0;
  if (*v0 > 4)
  {
    if (v1 <= 6)
    {
      if (v1 == 5)
      {
        v2 = 5;
        return MEMORY[0x18CFE37E0](v2);
      }

      if (v1 == 6)
      {
        v2 = 6;
        return MEMORY[0x18CFE37E0](v2);
      }
    }

    else
    {
      switch(v1)
      {
        case 7:
          v2 = 7;
          return MEMORY[0x18CFE37E0](v2);
        case 8:
          v2 = 9;
          return MEMORY[0x18CFE37E0](v2);
        case 9:
          v2 = 10;
          return MEMORY[0x18CFE37E0](v2);
      }
    }
  }

  else if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x18CFE37E0](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x18CFE37E0](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = 2;
        return MEMORY[0x18CFE37E0](v2);
      case 3:
        v2 = 3;
        return MEMORY[0x18CFE37E0](v2);
      case 4:
        v2 = 4;
        return MEMORY[0x18CFE37E0](v2);
    }
  }

  MEMORY[0x18CFE37E0](8);
  return sub_18A4A7C98();
}

BOOL _s5UIKit15UICellAccessoryV0C4TypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 4)
  {
    if (v2 <= 6)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

      if (v2 == 6)
      {
        return v3 == 6;
      }
    }

    else
    {
      switch(v2)
      {
        case 7:
          return v3 == 7;
        case 8:
          return v3 == 8;
        case 9:
          return v3 == 9;
      }
    }
  }

  else if (v2 <= 1)
  {
    if (!v2)
    {
      return v3 == 0;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 0xA)
  {
    return 0;
  }

  sub_188A34624(0, &qword_1ED490230);
  v5 = v3;
  v6 = sub_18A4A7C88();
  sub_188E6F008(v3);
  return v6 & 1;
}

id UIListContentConfiguration.TextProperties.numberOfLines.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setNumberOfLines_];
}

id UIListContentConfiguration.TextProperties.lineBreakMode.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setLineBreakMode_];
}

void (*UIListContentConfiguration.secondaryTextProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) secondaryTextProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &qword_1EA930C48);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_188CFA864;
}

void (*UIListContentConfiguration.imageProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) imageProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &qword_1EA930C18);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_188CFAA9C;
}

id sub_188CFA99C(SEL *a1, double a2, double a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    [*(v8 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v9 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v10 = swift_allocObject();
    *(v10 + 16) = v12;

    *v3 = v10;
  }

  return [v9 *a1];
}

double _sSo023UITableViewHeaderFooterB0C5UIKitE20contentConfigurationAC09UIContentG0_pSgvg_0@<D0>(uint64_t a1@<X8>)
{
  if (![v1 contentConfiguration])
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    *(a1 + 24) = &type metadata for UIListContentConfiguration;
    *(a1 + 32) = &protocol witness table for UIListContentConfiguration;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *a1 = v5;
    return result;
  }

  type metadata accessor for _UICustomContentConfiguration();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_9:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_188A53994(v7 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, a1);

  swift_unknownObjectRelease();
  return result;
}

id UIListContentConfiguration.image.getter()
{
  v1 = [*(*v0 + 16) image];

  return v1;
}

char *sub_188CFAF84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188CFB090(char *a1, int64_t a2, char a3)
{
  result = sub_188CFAF84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  if (a1 == 2)
  {
    if (qword_1EA92F9F8 != -1)
    {
      swift_once();
    }

    a1 = [qword_1EA92FA00 isHidden];
  }

  v13 = a1;
  if (v12)
  {
    if (qword_1EA92F9F8 != -1)
    {
      swift_once();
    }

    [qword_1EA92FA00 reservedLayoutWidth];
    if (v14 == 0.0)
    {
      v11 = 1;
      v10 = 0;
    }

    else
    {
      v10 = *&v14;
      if (v14 == -1.79769313e308)
      {
        v11 = 1;
        v10 = 1;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  v28 = v11 & 1;
  if (a3)
  {
    v15 = a3;
    if (a4)
    {
LABEL_15:
      v16 = a3;
      v17 = a4;
      goto LABEL_22;
    }
  }

  else
  {
    if (qword_1EA92F9F8 != -1)
    {
      swift_once();
    }

    v15 = [qword_1EA92FA00 tintColor];
    if (a4)
    {
      goto LABEL_15;
    }
  }

  v18 = qword_1EA92F9F8;
  v19 = a3;
  if (v18 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EA92FA00 font];
LABEL_22:
  if (a5 == 2)
  {
    v20 = qword_1EA92F9F8;
    v21 = a4;
    if (v20 != -1)
    {
      swift_once();
    }

    a5 = [qword_1EA92FA00 adjustsFontForContentSizeCategory];
  }

  else
  {
    v22 = a4;
  }

  if (qword_1EA92F9F8 != -1)
  {
    swift_once();
  }

  v23 = a5 & 1;
  v24 = v13 & 1;
  v25 = qword_1EA92FA00;
  v26 = [v25 _monochromaticTreatment];

  v27 = v26 == 0;
  *a6 = v24;
  if (v26 == 1)
  {
    v27 = 2;
  }

  *(a6 + 8) = v10;
  *(a6 + 16) = v28;
  *(a6 + 24) = v15;
  *(a6 + 32) = 0;
  *(a6 + 40) = v17;
  *(a6 + 48) = v23;
  *(a6 + 49) = v27;
}

void sub_188CFB39C()
{
  v0 = objc_allocWithZone(UICellAccessoryLabel);
  v1 = sub_18A4A7258();
  v2 = [v0 initWithText_];

  qword_1EA92FA00 = v2;
}

id static UICellAccessory.label(text:displayed:options:)@<X0>(unsigned __int8 *a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v11[2] = *(a2 + 32);
  v12 = *(a2 + 48);
  v6 = objc_allocWithZone(UICellAccessoryLabel);
  v7 = sub_18A4A7258();
  v8 = [v6 initWithText_];

  v10 = v4;
  result = sub_188CFB51C(v11, &v10);
  *a3 = 7;
  a3[1] = v8;
  return result;
}

id sub_188CFB51C(double *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 48);
  v10 = *(a1 + 49);
  [v2 setDisplayedState_];
  [v2 setTintColor_];
  [v2 setBackgroundColor_];
  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setHidden_];
  v11 = v4;
  v12 = -1.79769313e308;
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  if (v5)
  {
    v11 = v12;
  }

  [v2 setReservedLayoutWidth_];

  return [v2 _setMonochromaticTreatment_];
}

void _UIDateLabelUpdateLocaleInfo()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v0 dateFormatFromTemplate:@"j" options:0 locale:v1];

  v2 = [v14 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;
  byte_1ED49AE81 = v2;
  _MergedGlobals_7_14 = 0;
  v3 = [v14 rangeOfString:@"a"];
  v4 = v14;
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v14 rangeOfString:@"B"];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
      goto LABEL_16;
    }

    v3 = v5;
    _MergedGlobals_7_14 = 1;
    v4 = v14;
  }

  v7 = [v4 rangeOfString:@"h" options:1];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v14 rangeOfString:@"k" options:1];
  }

  v6 = v7 != 0x7FFFFFFFFFFFFFFFLL && v3 < v7;
LABEL_16:
  byte_1ED49AE82 = v6;
  v9 = qword_1ED49AE88;
  qword_1ED49AE88 = 0;

  v10 = qword_1ED49AE90;
  qword_1ED49AE90 = 0;

  v11 = qword_1ED49AE98;
  qword_1ED49AE98 = 0;

  v12 = qword_1ED49AEA0;
  qword_1ED49AEA0 = 0;

  v13 = qword_1ED49AEA8;
  qword_1ED49AEA8 = 0;
}

void sub_188CFBD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates, @"CompositionalLayoutShouldOverrideInitialAttributesDuringUpdates");
    if (byte_1EA95E194)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void static UIView.Invalidating.subscript.getter(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v8 = a1;
  v5 = a1;
  v6 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a3);
  v6(v7, 0);
}

uint64_t sub_188CFC724(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188B0944C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA2E5C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_188B42904(v16, a4 & 1);
    v11 = sub_188B0944C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_188CFC86C(a1, v22);
  }

  else
  {
    sub_188F15A3C(v11, a2, a3, a1, v21);
  }
}

void *std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample*,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample**,long,28l>::operator+=[abi:nn200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x71C71C71C71C71C7 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 27 - v3;
      v6 = &v2[-(v5 / 0x1C)];
      *result = v6;
      v4 = *v6 + 144 * (28 * (v5 / 0x1C) - v5) + 3888;
    }

    else
    {
      *result = &v2[v3 / 0x1C];
      v4 = v2[v3 / 0x1C] + 144 * (v3 % 0x1C);
    }

    result[1] = v4;
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<_UIVelocityIntegratorDataSample *,std::__deque_iterator<_UIVelocityIntegratorDataSample,_UIVelocityIntegratorDataSample *,_UIVelocityIntegratorDataSample&,_UIVelocityIntegratorDataSample **,long,28l>,0>(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = 0x8E38E38E38E38E39 * (&a5[-v10] >> 4);
      if ((0x8E38E38E38E38E39 * ((v11 - a2) >> 4)) < v12)
      {
        v12 = 0x8E38E38E38E38E39 * ((v11 - a2) >> 4);
      }

      v11 -= 144 * v12;
      a5 -= 144 * v12;
      if (v12)
      {
        result = memmove(a5, v11, 144 * v12);
      }

      if (v11 == a2)
      {
        break;
      }

      v13 = *--v6;
      v10 = v13;
      a5 = (v13 + 4032);
    }

    if ((*v6 + 4032) == a5)
    {
      v14 = v6[1];
      ++v6;
      a5 = v14;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

CFCharacterSetRef __ParseBracesWithDelimiter_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(0, @"{[]}");
  _MergedGlobals_1144 = result;
  return result;
}

void ___downgradeToTextKit1IfNecessary_block_invoke()
{
  v0 = qword_1ED499908;
  qword_1ED499908 = &unk_1EFE34B08;
}

void sub_188CFDD6C()
{

  JUMPOUT(0x18CFEA6E0);
}

uint64_t sub_188CFE278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = sub_188E3FE50;
  }

  else
  {
    v9 = signpost_c2_entryLock_start;
    v8 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188EB2CAC;
  *(v13 + 24) = v10;
  v24 = sub_188E5C7F8;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A968;
  v23 = &block_descriptor_155;
  v18 = _Block_copy(&aBlock);
  sub_188A52E38(a1);

  sub_188A52E38(a3);

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = 0;
  *(v14 + 32) = sub_188CFE644;
  *(v14 + 40) = 0;
  v24 = sub_188CFE610;
  v25 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A8F0;
  v23 = &block_descriptor_161;
  v15 = _Block_copy(&aBlock);

  v24 = sub_188E5C82C;
  v25 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188ABD010;
  v23 = &block_descriptor_164;
  v16 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];

  _Block_release(v16);
  _Block_release(v15);
  _Block_release(v18);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_188CFE730(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_11:

LABEL_12:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    return;
  }

  v9 = *(a2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_edge);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      v14 = v8;
      [v8 center];
      v16 = v21;
      [v7 bounds];
      MidY = CGRectGetMidY(v27);
    }

    else
    {
      if (v9 != 8)
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = v8;
      [v8 center];
      v16 = v15;
      [v7 bounds];
      MidY = CGRectGetMidX(v25);
    }

    v22 = MidY;

    v20 = v22 < v16;
    goto LABEL_17;
  }

  if (v9 == 1)
  {
    v10 = v8;
    [v8 center];
    v12 = v18;
    [v7 bounds];
    MidX = CGRectGetMidY(v26);
    goto LABEL_14;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  v10 = v8;
  [v8 center];
  v12 = v11;
  [v7 bounds];
  MidX = CGRectGetMidX(v24);
LABEL_14:
  v19 = MidX;

  v20 = v12 < v19;
LABEL_17:
  v23 = v20;
  sub_188CFE8BC(a1, a3);
  *(a3 + 16) = v23;
}