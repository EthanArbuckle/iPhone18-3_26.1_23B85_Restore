@interface PFLLayoutProvider
- (PFLLayoutProvider)initWithTimePosition:(unint64_t)a3;
- (id)generateOrientedLayoutsForFullExtent:(CGRect)a3 layoutConfiguration:(id)a4 layoutRegions:(id)a5 segmentationMatteImage:(id)a6 segmentationClassification:(unint64_t)a7 error:(id *)a8;
- (void)invalidateResults;
@end

@implementation PFLLayoutProvider

- (PFLLayoutProvider)initWithTimePosition:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = PFLLayoutProvider;
  v4 = [(PFLLayoutProvider *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_timePosition = a3;
    v4->_resultsAreValid = 0;
    watchLayout = v4->_watchLayout;
    v4->_watchLayout = 0;
  }

  v7 = pfl_layout_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    timePosition = v5->_timePosition;
    *buf = 138412546;
    v12 = v5;
    v13 = 2048;
    v14 = timePosition;
    _os_log_impl(&dword_22D2ED000, v7, OS_LOG_TYPE_DEFAULT, "PFL: PFLLayoutProvider(%@): CREATED for time position %ld.", buf, 0x16u);
  }

  return v5;
}

- (void)invalidateResults
{
  self->_resultsAreValid = 0;
  self->_watchLayout = 0;
  MEMORY[0x2821F96F8]();
}

- (id)generateOrientedLayoutsForFullExtent:(CGRect)a3 layoutConfiguration:(id)a4 layoutRegions:(id)a5 segmentationMatteImage:(id)a6 segmentationClassification:(unint64_t)a7 error:(id *)a8
{
  height = a3.size.height;
  width = a3.size.width;
  v180 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = pfl_layout_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].a) = 138412290;
    *(&buf[0].a + 4) = self;
    _os_log_impl(&dword_22D2ED000, v16, OS_LOG_TYPE_DEFAULT, "PFL: PFLLayoutProvider(%@): generateOrientedLayout CALLED.", buf, 0xCu);
  }

  v162 = height;
  v163 = width;

  v17 = MEMORY[0x277CBF740];
  v18 = v15;
  v19 = [v17 context];
  [v18 extent];
  v20 = [v19 createCGImage:v18 fromRect:?];

  v21 = [v14 faceRegions];
  v22 = flipYNormalizedRects(v21);

  v23 = [v14 petRegions];
  v24 = flipYNormalizedRects(v23);

  v25 = pfl_layout_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v13;
    v27 = [v22 count];
    v28 = [v24 count];
    LODWORD(buf[0].a) = 134218496;
    *(&buf[0].a + 4) = v27;
    v13 = v26;
    WORD2(buf[0].b) = 2048;
    *(&buf[0].b + 6) = v28;
    HIWORD(buf[0].c) = 2048;
    *&buf[0].d = v20;
    _os_log_impl(&dword_22D2ED000, v25, OS_LOG_TYPE_DEFAULT, "PFL:   %ld face rects, %ld pet rects, mask == %p", buf, 0x20u);
  }

  [v13 timeRect];
  v33 = flipYNormalizedRect(v29, v30, v31, v32);
  v164 = v34;
  v165 = v33;
  v36 = v35;
  v38 = v37;
  [v14 preferredCropRect];
  flipYNormalizedRect(v39, v40, v41, v42);
  [v14 acceptableCropRect];
  v47 = flipYNormalizedRect(v43, v44, v45, v46);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  [v13 screenSize];
  v55 = v54;
  v57 = v56;
  [(PFLLayoutProvider *)self timePosition];
  v155 = v38;
  v156 = v36;
  v147 = v57;
  v58 = v163;
  v59 = PFLCCalculateLayout();
  CGImageRelease(v20);
  [v59 visibleRect];
  if (CGRectIsEmpty(v182))
  {
    v60 = pfl_layout_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].a) = 0;
      _os_log_impl(&dword_22D2ED000, v60, OS_LOG_TYPE_DEFAULT, "PFL: Using backup", buf, 2u);
    }

    [v13 screenSize];
    v159 = v62;
    v160 = v61;
    v63 = *MEMORY[0x277D3B3B8] * 0.5;
    v161 = [v22 count];
    v151 = v49;
    v152 = v47;
    v149 = v53;
    v150 = v51;
    if (v161)
    {
      v64 = v22;
      v65 = *MEMORY[0x277CBF348];
      v66 = *(MEMORY[0x277CBF348] + 8);
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v67 = [v64 countByEnumeratingWithState:&v170 objects:buf count:16];
      if (v67)
      {
        v68 = v67;
        v148 = v63;
        v153 = v24;
        v157 = v13;
        v69 = 0;
        v70 = *v171;
        v71 = v66;
        v72 = v65;
        do
        {
          for (i = 0; i != v68; ++i)
          {
            if (*v171 != v70)
            {
              objc_enumerationMutation(v64);
            }

            [*(*(&v170 + 1) + 8 * i) rectValue];
            v72 = v72 + v75 + v74 * 0.5;
            v71 = v71 + v77 + v76 * 0.5;
          }

          v69 += v68;
          v68 = [v64 countByEnumeratingWithState:&v170 objects:buf count:16];
        }

        while (v68);
        if (v69)
        {
          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v78 = v64;
          v79 = [v78 countByEnumeratingWithState:&v166 objects:&v175 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = v69;
            v82 = v72 / v69;
            v83 = *v167;
            v84 = 1.79769313e308;
            v85 = v71 / v81;
            do
            {
              for (j = 0; j != v80; ++j)
              {
                if (*v167 != v83)
                {
                  objc_enumerationMutation(v78);
                }

                [*(*(&v166 + 1) + 8 * j) rectValue];
                v89 = v88 + v87 * 0.5;
                v92 = (v91 + v90 * 0.5 - v85) * (v91 + v90 * 0.5 - v85);
                if (v92 + (v89 - v82) * (v89 - v82) < v84)
                {
                  v84 = v92 + (v89 - v82) * (v89 - v82);
                  v65 = v89;
                }
              }

              v80 = [v78 countByEnumeratingWithState:&v166 objects:&v175 count:16];
            }

            while (v80);
          }

          v13 = v157;
          v24 = v153;
          v58 = v163;
        }

        else
        {
          v13 = v157;
          v24 = v153;
        }

        v63 = v148;
      }
    }

    else
    {
      v183.origin.x = v47;
      v183.origin.y = v49;
      v183.size.width = v51;
      v183.size.height = v53;
      if (CGRectIsEmpty(v183))
      {
        v65 = 0.5;
      }

      else
      {
        v65 = v47 + v51 * 0.5;
      }
    }

    v93 = reduceRectToAspectRatioWithCushion(0.0, 0.0, v58, v162, v160 / v159, v63, v58 * v65);
    v95 = v94;
    v97 = v96;
    v99 = v98;
    CGAffineTransformMakeScale(buf, 1.0 / v58, 1.0 / v162);
    v184.origin.x = v93;
    v184.origin.y = v95;
    v184.size.width = v97;
    v184.size.height = v99;
    v185 = CGRectApplyAffineTransform(v184, buf);
    x = v185.origin.x;
    y = v185.origin.y;
    v102 = v185.size.width;
    v103 = v185.size.height;
    v104 = pfl_layout_log();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = _rectAsString(x, y, v102, v103);
      LODWORD(buf[0].a) = 138412290;
      *(&buf[0].a + 4) = v105;
      _os_log_impl(&dword_22D2ED000, v104, OS_LOG_TYPE_DEFAULT, "PFL: Backup crop == %@", buf, 0xCu);
    }

    v106 = renormalizeRect(v165, v164, v156, v155, x, y, v102, v103);
    v108 = v107;
    v110 = v109;
    v112 = v111;
    if (v161)
    {
      v113 = v22;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v114 = [v113 countByEnumeratingWithState:&v175 objects:buf count:16];
      if (v114)
      {
        v115 = v114;
        v154 = v24;
        v158 = v13;
        v116 = 0;
        v117 = *v176;
        do
        {
          for (k = 0; k != v115; ++k)
          {
            if (*v176 != v117)
            {
              objc_enumerationMutation(v113);
            }

            [*(*(&v175 + 1) + 8 * k) rectValue];
            v189.origin.x = v119;
            v189.origin.y = v120;
            v189.size.width = v121;
            v189.size.height = v122;
            v186.origin.x = v106;
            v186.origin.y = v108;
            v186.size.width = v110;
            v186.size.height = v112;
            v116 += CGRectIntersectsRect(v186, v189);
          }

          v115 = [v113 countByEnumeratingWithState:&v175 objects:buf count:16];
        }

        while (v115);
        v123 = v116 * 0.1;
        v13 = v158;
        v24 = v154;
      }

      else
      {
        v123 = 0.0;
      }

      v124 = 0.1 - v123 / v161;
    }

    else
    {
      v187.origin.x = v152;
      v187.origin.y = v151;
      v187.size.width = v150;
      v187.size.height = v149;
      if (CGRectIsEmpty(v187))
      {
        v124 = 0.1;
      }

      else
      {
        v188.origin.x = v106;
        v188.origin.y = v108;
        v188.size.width = v110;
        v188.size.height = v112;
        v190.origin.x = v152;
        v190.origin.y = v151;
        v190.size.width = v150;
        v190.size.height = v149;
        if (CGRectIntersectsRect(v188, v190))
        {
          v124 = 0.0;
        }

        else
        {
          v124 = 0.1;
        }
      }
    }

    v125 = [objc_alloc(MEMORY[0x277D3B3E0]) initWithCropScore:0 layoutScore:v124 foregroundCoverage:0.0 visibleRect:0.0 usesMask:{x, y, v102, v103}];

    v59 = v125;
  }

  [v59 visibleRect];
  v130 = flipYNormalizedRect(v126, v127, v128, v129);
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v137 = objc_alloc(MEMORY[0x277D3B468]);
  [v59 cropScore];
  v139 = v138;
  [v59 layoutScore];
  v141 = [v137 initWithVisibleRect:v130 cropScore:v132 layoutScore:{v134, v136, v139, v140}];
  self->_resultsAreValid = 1;
  watchLayout = self->_watchLayout;
  self->_watchLayout = v59;
  v143 = v59;

  v144 = pfl_layout_log();
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].a) = 138412290;
    *(&buf[0].a + 4) = self;
    _os_log_impl(&dword_22D2ED000, v144, OS_LOG_TYPE_DEFAULT, "PFL: PFLLayoutProvider(%@): generateOrientedLayout DONE", buf, 0xCu);
  }

  v174 = v141;
  v145 = [MEMORY[0x277CBEA60] arrayWithObjects:&v174 count:1];

  return v145;
}

@end