@interface PXGDecorationTextureProvider
- (PXGDecorationTextureProvider)initWithBadgeDrawingHelper:(id)a3;
- (PXGViewSource)overlayViewSource;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForDecorationInfo:(PXGDecorationBadgeInfo *)a3 drawingHelper:(id)a4 solidColorOverlay:(id)a5 debugDecoration:(id)a6 targetSize:(CGSize)a7 cornerRadius:(id)a8 screenScale:(double)a9 requestID:(int)a10 viewEnvironment:(id)a11 userInterfaceDirection:(unint64_t)a12;
- (void)_requestViewTextureForDecorationInfo:(PXGDecorationBadgeInfo *)a3 customViewClass:(Class)a4 userData:(id)a5 decorationOptions:(unint64_t)a6 requestID:(int)a7;
@end

@implementation PXGDecorationTextureProvider

- (PXGViewSource)overlayViewSource
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayViewSource);

  return WeakRetained;
}

- (void)_requestViewTextureForDecorationInfo:(PXGDecorationBadgeInfo *)a3 customViewClass:(Class)a4 userData:(id)a5 decorationOptions:(unint64_t)a6 requestID:(int)a7
{
  v7 = *&a7;
  v13 = a5;
  if ([(PXGTextureProvider *)self isRequestActive:v7])
  {
    if (a3->var0)
    {
      v12 = [[PXGDecorationViewPayload alloc] initWithDecorationOptions:a6 viewClass:a4 userData:v13];
      [(PXGTextureProvider *)self providePayload:v12 forRequestID:v7];
    }

    else
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v7];
    }
  }
}

- (void)_requestTextureForDecorationInfo:(PXGDecorationBadgeInfo *)a3 drawingHelper:(id)a4 solidColorOverlay:(id)a5 debugDecoration:(id)a6 targetSize:(CGSize)a7 cornerRadius:(id)a8 screenScale:(double)a9 requestID:(int)a10 viewEnvironment:(id)a11 userInterfaceDirection:(unint64_t)a12
{
  v16 = *&a8.var0.var1[2];
  v17 = *&a8.var0.var0.var0;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = LODWORD(a9);
  height = a7.height;
  width = a7.width;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = v16;
  if ([(PXGTextureProvider *)self isRequestActive:v17])
  {
    if (a3->var0)
    {
      IsZero = PXPixelSizeAreaIsZero();
      if (v31 || (IsZero & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (v31)
    {
LABEL_5:
      v38 = *&a3->var2;
      v60[0] = *&a3->var0;
      v60[1] = v38;
      v60[2] = *&a3->var4;
      LODWORD(v33) = v22;
      LODWORD(v34) = v21;
      LODWORD(v35) = v20;
      LODWORD(v36) = v19;
      v39 = [v29 cacheKeyForDecorationInfo:v60 solidColorOverlay:v30 debugDecoration:v31 targetSize:v32 cornerRadius:*&a10 screenScale:width viewEnvironment:height userInterfaceDirection:{v33, v34, v35, v36, v18}];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke;
      v44[3] = &unk_2782AC5D8;
      v49 = width;
      v50 = height;
      v45 = v29;
      v40 = *&a3->var2;
      v51 = *&a3->var0;
      v52 = v40;
      v53 = *&a3->var4;
      v46 = v30;
      v47 = v31;
      v56 = v22;
      v57 = v21;
      v58 = v20;
      v59 = v19;
      v54 = v18;
      v48 = v32;
      v55 = *&a10;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke_3;
      v41[3] = &unk_2782AC600;
      v43 = 0;
      v41[4] = self;
      v42 = v17;
      [(PXGCGImageTextureProvider *)self requestCGImageWithCacheKey:v39 imageProvider:v44 resultHandler:v41];

      goto LABEL_8;
    }

    [(PXGTextureProvider *)self provideNothingForRequestID:v17];
  }

LABEL_8:
}

uint64_t __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v8 = PXCreateCGImageWithDrawBlock();

  return v8;
}

uint64_t __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  v12 = 0;
  v13 = 0;
  v2 = *(a1 + 44);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = xmmword_21AE2D320;
  v7 = v2;
  v10 = 1065353216;
  v11 = 0;
  return [v3 provideCGImage:a2 options:&v6 forRequestID:v4];
}

uint64_t __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = a6;
  v7 = a5;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 112);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 120);
  v16 = *(a1 + 80);
  v19[0] = *(a1 + 64);
  v19[1] = v16;
  v20 = *(a1 + 96);
  HIDWORD(v17) = DWORD1(v20);
  LODWORD(v17) = *(a1 + 128);
  LODWORD(v16) = *(a1 + 132);
  LODWORD(a5) = *(a1 + 136);
  LODWORD(a6) = *(a1 + 140);
  return [v11 drawWithDecorationInfo:v19 solidColorOverlay:v10 debugDecoration:v13 cornerRadius:a2 context:v14 viewport:v15 screenScale:v17 viewEnvironment:*&v16 userInterfaceDirection:{a5, a6, a3, a4, v7, v6, v12}];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v197 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v191.receiver = self;
  v191.super_class = PXGDecorationTextureProvider;
  v89 = a6;
  v70 = [(PXGTextureProvider *)&v191 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v68 = v13;
  v100 = v12;
  v94 = [v100 numberOfDecoratingSpritesPerDecoratedSprite];
  if (v94)
  {
    v14 = [v100 decoratedLayout];
    v15 = [v14 displayAssetSource];
    v97 = HIDWORD(*&a3);
    v98 = [v15 displayAssetFetchResultForSpritesInRange:(a3.location / v94) | (((a3.location + a3.length - 1) / v94 - a3.location / v94 + 1) << 32) inLayout:v14];

    v16 = [v100 assetBadgeDecorationSource];
    v92 = [v100 assetProgressDecorationSource];
    v17 = [v100 selectionDecorationSource];
    v73 = [v100 highlightDecorationSource];
    v71 = [v100 solidColorOverlayDecorationSource];
    v72 = [v100 dragDecorationSource];
    queuea = [v100 debugDecorationSource];
    v83 = [v100 viewDecorationSource];
    v69 = [(PXGDecorationTextureProvider *)self overlayViewSource];
    v87 = [v17 selectedSpriteIndexesInLayout:v14];
    v86 = [v73 highlightedSpriteIndexesInLayout:v14];
    v84 = [v72 draggingSpriteIndexesInLayout:v14];
    v81 = [v71 solidColorOverlayForLayout:v14];
    v80 = [v100 debugDecorationIndex];
    v76 = objc_opt_respondsToSelector();
    v74 = objc_opt_respondsToSelector();
    v187 = 0;
    v188 = &v187;
    v189 = 0x2020000000;
    v190 = -1;
    *buf = 0;
    *&v193 = buf;
    *(&v193 + 1) = 0x4010000000;
    v194 = "";
    v195 = 0u;
    v196 = 0u;
    v181 = 0;
    v182 = &v181;
    v183 = 0x3032000000;
    v184 = __Block_byref_object_copy__19254;
    v185 = __Block_byref_object_dispose__19255;
    v186 = 0;
    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = 3221225472;
    v180[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
    v180[3] = &unk_2782AC4C0;
    v180[4] = &v181;
    v18 = MEMORY[0x21CEE40A0](v180);
    v176 = 0;
    v177 = &v176;
    v178 = 0x2020000000;
    v179 = 0x7FFFFFFFFFFFFFFFLL;
    v172 = 0;
    v173 = &v172;
    v174 = 0x2020000000;
    v175 = 0;
    v168 = 0;
    v169 = &v168;
    v170 = 0x2020000000;
    v171 = 0;
    v164 = 0;
    v165 = &v164;
    v166 = 0x2020000000;
    v167 = 0;
    v162[0] = 0;
    v162[1] = v162;
    v162[2] = 0x3032000000;
    v162[3] = __Block_byref_object_copy__19254;
    v162[4] = __Block_byref_object_dispose__19255;
    v163 = 0;
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2;
    v144[3] = &unk_2782AC4E8;
    v155 = &v187;
    v77 = v98;
    v145 = v77;
    v95 = v16;
    v146 = v95;
    v156 = buf;
    v96 = v14;
    v147 = v96;
    v61 = v92;
    v148 = v61;
    v67 = v18;
    v154 = v67;
    v157 = v162;
    v63 = queuea;
    v149 = v63;
    v158 = &v176;
    v62 = v17;
    v150 = v62;
    v159 = &v172;
    v64 = v87;
    v151 = v64;
    v160 = &v168;
    v65 = v86;
    v152 = v65;
    v161 = &v164;
    v66 = v84;
    v153 = v66;
    v93 = MEMORY[0x21CEE40A0](v144);
    objc_initWeak(&location, self);
    queue = [(PXGTextureProvider *)self requestQueue];
    [v100 displayScale];
    v20 = v19;
    [v100 textureScale];
    v22 = v21;
    v82 = [v100 viewEnvironment];
    v79 = [v100 userInterfaceDirection];
    v88 = [v100 decorationSizeClass];
    v99 = [(PXGDecorationTextureProvider *)self badgeDrawingHelper];
    if (HIDWORD(*&a3))
    {
      v23 = v20 * v22;
      v24 = v83;
      if (v69)
      {
        v24 = v69;
      }

      v78 = v24;
      v75 = v74 & (v77 != 0);
      v25 = v70;
      do
      {
        v26 = (v89 + 40 * a3.location);
        v27 = v26[1];
        v28 = [v100 decoratingTypeForSpriteIndex:a3];
        v93[2](v93, a3.location / v94);
        v141 = 0u;
        v142 = 0u;
        v140 = 0u;
        if (v99)
        {
          v29 = *(v165 + 24);
          v30 = *(v169 + 24);
          v31 = *(v173 + 24);
          v32 = v177[3];
          v33 = *(v188 + 6);
          v34 = *(v193 + 48);
          v139[0] = *(v193 + 32);
          v139[1] = v34;
          BYTE1(v60) = v29;
          LOBYTE(v60) = v30;
          [v99 decorationSpriteInfoForDecoratedSpriteIndex:v33 decorationType:v28 decoratingLayout:v100 assetDecorationInfo:v139 overallSelectionOrder:v32 isItemSelected:v31 isItemHighlighted:v60 isItemDragged:?];
        }

        v35 = [v96 spriteDataStore];
        v36 = v35;
        v37 = [v35 styles];
        v139[0] = *(v37 + 160 * *(v188 + 6) + 36);

        *(&v140 + 1) = v88;
        if (v26->i8[0] == 1)
        {
          v38 = v83;
          if (v28 == 3)
          {
            v38 = v78;
          }

          v39 = v38;
          v40 = [v39 viewClassForSpriteAtIndex:a3 inLayout:v100];
          if (v40)
          {
            v85 = [v100 captionDecorationSource];
            v41 = [v85 wantsCaptionDecorationsInLayout:v96];
            v42 = [v95 wantsInteractiveFavoriteBadgesInLayout:v96];
            v43 = [v95 wantsFileSizeBadgesInLayout:v96];
            v44 = *(v173 + 24);
            v45 = [v95 hidesTopLeadingBadgesInLayout:v96];
            v46 = v41;
            if (v42)
            {
              v46 = v41 | 2;
            }

            if (v43)
            {
              v46 |= 8uLL;
            }

            if (v44)
            {
              v46 |= 4uLL;
            }

            if (v45)
            {
              v47 = v46 | 0x20;
            }

            else
            {
              v47 = v46;
            }

            if (v75)
            {
              v48 = [v77 objectAtIndex:*(v188 + 6)];
              v49 = [v95 wantsSensitiveWarningBadgesInLayout:v96];
              if (v48)
              {
                v50 = v49;
              }

              else
              {
                v50 = 0;
              }

              if (v50 == 1)
              {
                [v95 assetDecorationInfoForAsset:v48 atSpriteIndex:*(v188 + 6) inLayout:v96];
                v51 = v193;
                v52 = v138;
                *(v193 + 32) = v137;
                *(v51 + 48) = v52;
                v47 |= (2 * *(v51 + 32)) & 0x40;
              }
            }

            if (v76)
            {
              v53 = [v77 objectAtIndex:*(v188 + 6)];
              if (v53 && [v95 shouldShowSavedToLibraryBadgeForAsset:v53 inLayout:v100])
              {
                v47 |= 0x10uLL;
              }
            }

            v54 = [v39 viewUserDataForSpriteAtIndex:a3 inLayout:v100];
            v55 = [v54 copyWithZone:0];

            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3;
            block[3] = &unk_2782AC510;
            v129 = v55;
            v56 = v55;
            objc_copyWeak(&v130, &location);
            v131 = v140;
            v132 = v141;
            v133 = v142;
            v134 = v40;
            v135 = v47;
            v136 = v25;
            dispatch_async(queue, block);
            objc_destroyWeak(&v130);
          }

          else if ([PXGAssetDecorationView wantsDecorationViewForConfiguration:v182[5]])
          {
            v122[0] = MEMORY[0x277D85DD0];
            v122[1] = 3221225472;
            v122[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_4;
            v122[3] = &unk_2782AC538;
            objc_copyWeak(&v123, &location);
            v124 = v140;
            v125 = v141;
            v126 = v142;
            v122[4] = &v181;
            v127 = v25;
            dispatch_async(queue, v122);
            objc_destroyWeak(&v123);
          }

          else
          {
            *&v140 = 0;
            v116[0] = MEMORY[0x277D85DD0];
            v116[1] = 3221225472;
            v116[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_5;
            v116[3] = &unk_2782AC560;
            objc_copyWeak(&v117, &location);
            v118 = v140;
            v119 = v141;
            v120 = v142;
            v121 = v25;
            dispatch_async(queue, v116);
            objc_destroyWeak(&v117);
          }
        }

        else
        {
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_6;
          v101[3] = &unk_2782AC588;
          v105 = v162;
          v106[1] = v28;
          v113 = v80;
          objc_copyWeak(v106, &location);
          v107 = v140;
          v108 = v141;
          v109 = v142;
          v102 = v99;
          v103 = v81;
          v110 = vcvtq_f64_f32(v27);
          v114 = v139[0];
          v111 = v23;
          v115 = v25;
          v104 = v82;
          v112 = v79;
          dispatch_async(queue, v101);

          objc_destroyWeak(v106);
        }

        ++v25;
        a3 = (a3.location + 1);
        --v97;
      }

      while (v97);
    }

    objc_destroyWeak(&location);
    _Block_object_dispose(v162, 8);

    _Block_object_dispose(&v164, 8);
    _Block_object_dispose(&v168, 8);
    _Block_object_dispose(&v172, 8);
    _Block_object_dispose(&v176, 8);

    _Block_object_dispose(&v181, 8);
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v187, 8);

    v57 = v96;
  }

  else
  {
    v57 = PXAssertGetLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      LOWORD(v193) = 2112;
      *(&v193 + 2) = v100;
      _os_log_fault_impl(&dword_21AD38000, v57, OS_LOG_TYPE_FAULT, "unexpected numberOfDecoratingSpritesPerDecoratedSprite %i for decoratingLayout %@, failing gracefully", buf, 0x12u);
    }
  }

  v58 = v70;
  v59 = v68;
  result.length = v59;
  result.location = v58;
  return result;
}

id __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(PXGAssetDecorationViewConfiguration);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v2;
}

uint64_t __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2(uint64_t result, int a2)
{
  v2 = *(*(result + 112) + 8);
  if (*(v2 + 24) != a2)
  {
    v3 = result;
    *(v2 + 24) = a2;
    v4 = *(*(*(result + 112) + 8) + 24);
    if ([*(result + 32) count] > v4)
    {
      v5 = [*(v3 + 32) objectAtIndex:*(*(*(v3 + 112) + 8) + 24)];
      v6 = *(v3 + 40);
      if (v6)
      {
        [v6 assetDecorationInfoForAsset:v5 atSpriteIndex:*(*(*(v3 + 112) + 8) + 24) inLayout:*(v3 + 48)];
        v7 = *(*(v3 + 120) + 8);
        *(v7 + 32) = v17;
        *(v7 + 48) = v18;
      }

      v8 = *(v3 + 56);
      if (v8)
      {
        v9 = [v8 loadStatusForAsset:v5 atSpriteIndex:*(*(*(v3 + 112) + 8) + 24) inLayout:*(v3 + 48)];
        v10 = (*(*(v3 + 104) + 16))();
        [v10 setLoadStatus:v9];
      }

      v11 = [*(v3 + 64) debugDecorationAtSpriteIndex:*(*(*(v3 + 112) + 8) + 24) asset:v5 inLayout:*(v3 + 48)];
      v12 = [v11 copy];
      v13 = *(*(v3 + 128) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = *(v3 + 72);
    if (v15)
    {
      v16 = [v15 overallSelectionOrderAtSpriteIndex:*(*(*(v3 + 112) + 8) + 24) inLayout:*(v3 + 48)];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(*(*(v3 + 136) + 8) + 24) = v16;
    *(*(*(v3 + 144) + 8) + 24) = [*(v3 + 80) containsIndex:*(*(*(v3 + 112) + 8) + 24)];
    *(*(*(v3 + 152) + 8) + 24) = [*(v3 + 88) containsIndex:*(*(*(v3 + 112) + 8) + 24)];
    result = [*(v3 + 96) containsIndex:*(*(*(v3 + 112) + 8) + 24)];
    *(*(*(v3 + 160) + 8) + 24) = result;
  }

  return result;
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) prepareForRender];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v7;
  v8[2] = *(a1 + 80);
  [WeakRetained _requestViewTextureForDecorationInfo:v8 customViewClass:v4 userData:v3 decorationOptions:v5 requestID:v6];
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_opt_class();
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *(a1 + 96);
  v6 = *(a1 + 64);
  v7[0] = *(a1 + 48);
  v7[1] = v6;
  v7[2] = *(a1 + 80);
  [WeakRetained _requestViewTextureForDecorationInfo:v7 customViewClass:v3 userData:v4 decorationOptions:0 requestID:v5];
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 88);
  v4 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v4;
  v5[2] = *(a1 + 72);
  [WeakRetained _requestViewTextureForDecorationInfo:v5 customViewClass:0 userData:0 decorationOptions:0 requestID:v3];
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_6(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2 && *(a1 + 72) == *(a1 + 160))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 180);
  v8 = *(a1 + 48);
  v9 = *(a1 + 152);
  v10 = *(a1 + 96);
  v15[0] = *(a1 + 80);
  v15[1] = v10;
  v15[2] = *(a1 + 112);
  LODWORD(v11) = *(a1 + 164);
  LODWORD(v12) = *(a1 + 168);
  LODWORD(v13) = *(a1 + 172);
  LODWORD(v14) = *(a1 + 176);
  [WeakRetained _requestTextureForDecorationInfo:v15 drawingHelper:v5 solidColorOverlay:v6 debugDecoration:v3 targetSize:v7 cornerRadius:v8 screenScale:*(a1 + 128) requestID:*(a1 + 136) viewEnvironment:v11 userInterfaceDirection:{v12, v13, v14, *(a1 + 144), v9}];
}

- (PXGDecorationTextureProvider)initWithBadgeDrawingHelper:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXGDecorationTextureProvider;
  v5 = [(PXGCGImageTextureProvider *)&v8 init];
  if (v5)
  {
    v6 = v4;
    if (!v4)
    {
      v6 = objc_alloc_init(PXGDecorationDefaultBadgeDrawingHelper);
    }

    objc_storeStrong(&v5->_badgeDrawingHelper, v6);
    if (!v4)
    {
    }
  }

  return v5;
}

@end