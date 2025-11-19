@interface PXSharedAlbumsActivityEntryLayout
- (PXSharedAlbumsActivityEntryLayout)initWithItem:(id)a3;
- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)displayScaleDidChange;
- (void)referenceSizeDidChange;
- (void)update;
@end

@implementation PXSharedAlbumsActivityEntryLayout

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  [(PXSharedAlbumsActivityEntryItem *)self->_item assets:a3];
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetFetchResultFromArray();
}

- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntryViewController.m" lineNumber:458 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_countsSpriteIndex == a3)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(PXSharedAlbumsActivityEntryItem *)self->_item assets];
    v10 = [v8 localizedStringWithFormat:@"%lu", objc_msgSend(v9, "count")];

    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (_TextAttributesForCounts_predicate != -1)
    {
      dispatch_once(&_TextAttributesForCounts_predicate, &__block_literal_global_534);
    }

    v12 = _TextAttributesForCounts__textAttributes;
LABEL_13:
    v16 = [v11 initWithString:v10 attributes:v12];
    goto LABEL_14;
  }

  if (self->_contributorSpriteIndex != a3)
  {
    if (self->_messageSpriteIndex != a3)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntryViewController.m" lineNumber:453 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = [(PXSharedAlbumsActivityEntryItem *)self->_item message];
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (_TextAttributesForMessage_predicate != -1)
    {
      dispatch_once(&_TextAttributesForMessage_predicate, &__block_literal_global_541);
    }

    v12 = _TextAttributesForMessage__textAttributes;
    goto LABEL_13;
  }

  v10 = [(PXSharedAlbumsActivityEntryItem *)self->_item contributorDisplayName];
  v13 = [(PXSharedAlbumsActivityEntryItem *)self->_item albumName];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ / %@", v10, v13];
  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (_TextAttributesForContributor_predicate != -1)
  {
    dispatch_once(&_TextAttributesForContributor_predicate, &__block_literal_global_539);
  }

  v16 = [v15 initWithString:v14 attributes:_TextAttributesForContributor__textAttributes];

LABEL_14:

  return v16;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntryViewController.m" lineNumber:437 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (colorAtIndex_inLayout__predicate != -1)
  {
    dispatch_once(&colorAtIndex_inLayout__predicate, &__block_literal_global_410);
  }

  if (self->_backgroundSpriteIndex == a3)
  {
    v8 = &colorAtIndex_inLayout___backgroundColor;
  }

  else if (self->_assetSpriteIndex == a3)
  {
    v8 = &colorAtIndex_inLayout___assetBackgroundColor;
  }

  else
  {
    if (self->_countsBackgroundSpriteIndex != a3)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntryViewController.m" lineNumber:430 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = &colorAtIndex_inLayout___countsBackgroundColor;
  }

  v9 = *v8;
  v10 = *v8;

  return v9;
}

void __59__PXSharedAlbumsActivityEntryLayout_colorAtIndex_inLayout___block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:0.95 alpha:1.0];
  v1 = colorAtIndex_inLayout___backgroundColor;
  colorAtIndex_inLayout___backgroundColor = v0;

  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.85 alpha:1.0];
  v3 = colorAtIndex_inLayout___assetBackgroundColor;
  colorAtIndex_inLayout___assetBackgroundColor = v2;

  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.85 alpha:1.0];
  v5 = colorAtIndex_inLayout___countsBackgroundColor;
  colorAtIndex_inLayout___countsBackgroundColor = v4;
}

- (void)update
{
  [(PXSharedAlbumsActivityEntryItem *)self->_item type];
  [(PXSharedAlbumsActivityEntryLayout *)self displayScale];
  [(PXSharedAlbumsActivityEntryLayout *)self referenceSize];
  PXRectWithSize();
}

void __43__PXSharedAlbumsActivityEntryLayout_update__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (a3[2] + 32 * *(*(a1 + 32) + 860));
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v131.origin.x = v6;
  v131.origin.y = v7;
  v131.size.width = v8;
  v131.size.height = v9;
  MidX = CGRectGetMidX(v131);
  v132.origin.x = v6;
  v132.origin.y = v7;
  v132.size.width = v8;
  v132.size.height = v9;
  MidY = CGRectGetMidY(v132);
  v133.origin.x = v6;
  v133.origin.y = v7;
  v133.size.width = v8;
  v133.size.height = v9;
  Width = CGRectGetWidth(v133);
  v134.origin.x = v6;
  v134.origin.y = v7;
  v134.size.width = v8;
  v134.size.height = v9;
  Height = CGRectGetHeight(v134);
  v13.f64[0] = Width;
  v13.f64[1] = Height;
  *v5 = MidX;
  *&v5[1] = MidY;
  v5[2] = 0xBFB99999A0000000;
  v5[3] = vcvt_f32_f64(v13);
  v14 = (a3[3] + 160 * *(*(a1 + 32) + 860));
  v128 = *(off_1E7722048 + 1);
  v130 = *off_1E7722048;
  *v14 = *off_1E7722048;
  v14[1] = v128;
  v126 = *(off_1E7722048 + 4);
  v127 = *(off_1E7722048 + 5);
  v14[4] = v126;
  v14[5] = v127;
  v124 = *(off_1E7722048 + 2);
  v125 = *(off_1E7722048 + 3);
  v14[2] = v124;
  v14[3] = v125;
  v122 = *(off_1E7722048 + 8);
  v123 = *(off_1E7722048 + 9);
  v14[8] = v122;
  v14[9] = v123;
  v120 = *(off_1E7722048 + 6);
  v121 = *(off_1E7722048 + 7);
  v14[6] = v120;
  v14[7] = v121;
  __asm { FMOV            V0.4S, #20.0 }

  *(a3[3] + 160 * *(*(a1 + 32) + 860) + 36) = _Q0;
  v20 = a3[4];
  v21 = v20 + 40 * *(*(a1 + 32) + 860);
  ++*(v21 + 32);
  *(v20 + 40 * *(*(a1 + 32) + 860) + 1) = 5;
  __asm { FMOV            V14.2S, #1.0 }

  *(v20 + 40 * *(*(a1 + 32) + 860) + 8) = _D14;
  v23 = (a3[2] + 32 * *(*(a1 + 32) + 856));
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  *&_Q0 = v24;
  v13.f64[0] = v25;
  v28 = v26;
  v29 = v27;
  v30 = CGRectGetMidX(*(&v13 - 8));
  v135.origin.x = v24;
  v135.origin.y = v25;
  v135.size.width = v26;
  v135.size.height = v27;
  v31 = CGRectGetMidY(v135);
  v136.origin.x = v24;
  v136.origin.y = v25;
  v136.size.width = v26;
  v136.size.height = v27;
  v115 = CGRectGetWidth(v136);
  v137.origin.x = v24;
  v137.origin.y = v25;
  v137.size.width = v26;
  v137.size.height = v27;
  v32 = CGRectGetHeight(v137);
  v33.f64[0] = v115;
  v33.f64[1] = v32;
  *v23 = v30;
  *&v23[1] = v31;
  v23[2] = 0xBFC99999A0000000;
  v23[3] = vcvt_f32_f64(v33);
  v34 = (a3[3] + 160 * *(*(a1 + 32) + 856));
  *v34 = v130;
  v34[1] = v128;
  v34[4] = v126;
  v34[5] = v127;
  v34[2] = v124;
  v34[3] = v125;
  v34[8] = v122;
  v34[9] = v123;
  v34[6] = v120;
  v34[7] = v121;
  v35 = a3[3] + 160 * *(*(a1 + 32) + 856);
  v36 = 10;
  if (!*(a1 + 272))
  {
    v36 = 5;
  }

  v37 = 0.0;
  if (*(a1 + 272))
  {
    v38 = 20.0;
  }

  else
  {
    v38 = 0.0;
  }

  if ((v36 & 4) != 0)
  {
    v37 = 20.0;
  }

  __asm { FMOV            V3.2S, #20.0 }

  *(v35 + 36) = vbic_s8(_D3, vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s64(v36), xmmword_1A52F8E10))));
  *(v35 + 44) = v37;
  *(v35 + 48) = v38;
  v40 = a3[4];
  v41 = v40 + 40 * *(*(a1 + 32) + 856);
  ++*(v41 + 32);
  if (*(a1 + 273) == 1)
  {
    *(a3[3] + 160 * *(*(a1 + 32) + 856) + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 104)), *(a1 + 120));
    *(a3[4] + 40 * *(*(a1 + 32) + 856) + 1) = 2;
    PXSizeScale();
  }

  *(v40 + 40 * *(*(a1 + 32) + 856) + 1) = 5;
  *(v40 + 40 * *(*(a1 + 32) + 856) + 8) = _D14;
  v42 = *(*(a1 + 32) + 864);
  v43 = a3[2];
  v44 = MEMORY[0x1E695F060];
  v45 = MEMORY[0x1E695EFF8];
  if (*(a1 + 274) == 1)
  {
    v46 = (v43 + 32 * v42);
    v47 = *(a1 + 144);
    v48 = *(a1 + 152);
    v49 = *(a1 + 160);
    v50 = *(a1 + 168);
    v138.origin.x = v47;
    v138.origin.y = v48;
    v138.size.width = v49;
    v138.size.height = v50;
    v51 = CGRectGetMidX(v138);
    v139.origin.x = v47;
    v139.origin.y = v48;
    v139.size.width = v49;
    v139.size.height = v50;
    v52 = CGRectGetMidY(v139);
    v140.origin.x = v47;
    v140.origin.y = v48;
    v140.size.width = v49;
    v140.size.height = v50;
    v116 = CGRectGetWidth(v140);
    v141.origin.x = v47;
    v141.origin.y = v48;
    v141.size.width = v49;
    v141.size.height = v50;
    v53 = CGRectGetHeight(v141);
    v54.f64[0] = v116;
    v54.f64[1] = v53;
    *v46 = v51;
    *&v46[1] = v52;
    v46[2] = 0xBFD3333340000000;
    v46[3] = vcvt_f32_f64(v54);
    v55 = (a3[3] + 160 * *(*(a1 + 32) + 864));
    *v55 = v130;
    v55[1] = v128;
    v55[4] = v126;
    v55[5] = v127;
    v55[2] = v124;
    v55[3] = v125;
    v55[8] = v122;
    v55[9] = v123;
    v55[6] = v120;
    v55[7] = v121;
    __asm { FMOV            V0.4S, #5.0 }

    *(a3[3] + 160 * *(*(a1 + 32) + 864) + 36) = _Q0;
    v57 = a3[4];
    v58 = v57 + 40 * *(*(a1 + 32) + 864);
    ++*(v58 + 32);
    *(v57 + 40 * *(*(a1 + 32) + 864) + 1) = 5;
    __asm { FMOV            V0.2S, #1.0 }

    *(v57 + 40 * *(*(a1 + 32) + 864) + 8) = _Q0;
    v59 = (a3[2] + 32 * *(*(a1 + 32) + 868));
    v60 = *(a1 + 176);
    v61 = *(a1 + 184);
    v62 = *(a1 + 192);
    v63 = *(a1 + 200);
    *&_Q0 = v60;
    v54.f64[0] = v61;
    v64 = v62;
    v65 = v63;
    v66 = CGRectGetMidX(*(&v54 - 8));
    v142.origin.x = v60;
    v142.origin.y = v61;
    v142.size.width = v62;
    v142.size.height = v63;
    v67 = CGRectGetMidY(v142);
    v143.origin.x = v60;
    v143.origin.y = v61;
    v143.size.width = v62;
    v143.size.height = v63;
    v117 = CGRectGetWidth(v143);
    v144.origin.x = v60;
    v144.origin.y = v61;
    v144.size.width = v62;
    v144.size.height = v63;
    v68 = CGRectGetHeight(v144);
    v69.f64[0] = v117;
    v69.f64[1] = v68;
    *v59 = v66;
    *&v59[1] = v67;
    v59[2] = 0xBFD99999A0000000;
    v59[3] = vcvt_f32_f64(v69);
    v70 = (a3[3] + 160 * *(*(a1 + 32) + 868));
    *v70 = v130;
    v70[1] = v128;
    v70[4] = v126;
    v70[5] = v127;
    v70[2] = v124;
    v70[3] = v125;
    v70[8] = v122;
    v70[9] = v123;
    v70[6] = v120;
    v70[7] = v121;
    *(a3[4] + 40 * *(*(a1 + 32) + 868) + 1) = 3;
    PXSizeScale();
  }

  v71 = a3[3];
  v72 = a3[4];
  v73 = vcvt_f32_f64(*MEMORY[0x1E695F060]);
  v74 = (v43 + 32 * v42);
  v74[3] = v73;
  v75 = *v45;
  v76 = v45[1];
  *v74 = *v45;
  v74[1] = v76;
  v74[2] = 0;
  v77 = (v71 + 160 * v42);
  v77[4] = v126;
  v77[5] = v127;
  v77[2] = v124;
  v77[3] = v125;
  v77[8] = v122;
  v77[9] = v123;
  v77[6] = v120;
  v77[7] = v121;
  *v77 = v130;
  v77[1] = v128;
  *v77 = 0;
  *(v72 + 40 * v42 + 1) = 0;
  v78 = *(*(a1 + 32) + 868);
  v79 = a3[3];
  v80 = a3[4];
  v81 = (a3[2] + 32 * v78);
  v81[3] = v73;
  *v81 = v75;
  v81[1] = v76;
  v81[2] = 0;
  v82 = (v79 + 160 * v78);
  *v82 = v130;
  v82[1] = v128;
  v82[4] = v126;
  v82[5] = v127;
  v82[2] = v124;
  v82[3] = v125;
  v82[8] = v122;
  v82[9] = v123;
  v82[6] = v120;
  v82[7] = v121;
  *v82 = 0;
  *(v80 + 40 * v78 + 1) = 0;
  v83 = *(*(a1 + 32) + 872);
  v84 = a3[2];
  if (*(a1 + 275) == 1)
  {
    v85 = (v84 + 32 * v83);
    v86 = *(a1 + 208);
    v87 = *(a1 + 216);
    v88 = *(a1 + 224);
    v89 = *(a1 + 232);
    v145.origin.x = v86;
    v145.origin.y = v87;
    v145.size.width = v88;
    v145.size.height = v89;
    v90 = CGRectGetMidX(v145);
    v146.origin.x = v86;
    v146.origin.y = v87;
    v146.size.width = v88;
    v146.size.height = v89;
    v91 = CGRectGetMidY(v146);
    v147.origin.x = v86;
    v147.origin.y = v87;
    v147.size.width = v88;
    v147.size.height = v89;
    v118 = CGRectGetWidth(v147);
    v148.origin.x = v86;
    v148.origin.y = v87;
    v148.size.width = v88;
    v148.size.height = v89;
    v92 = CGRectGetHeight(v148);
    v93.f64[0] = v118;
    v93.f64[1] = v92;
    *v85 = v90;
    *&v85[1] = v91;
    v85[2] = 0xBFD3333340000000;
    v85[3] = vcvt_f32_f64(v93);
    v94 = (a3[3] + 160 * *(*(a1 + 32) + 872));
    *v94 = v130;
    v94[1] = v128;
    v94[4] = v126;
    v94[5] = v127;
    v94[2] = v124;
    v94[3] = v125;
    v94[8] = v122;
    v94[9] = v123;
    v94[6] = v120;
    v94[7] = v121;
    *(a3[4] + 40 * *(*(a1 + 32) + 872) + 1) = 3;
    PXSizeScale();
  }

  v95 = a3[3];
  v96 = a3[4];
  v97 = v84 + 32 * v83;
  *(v97 + 24) = vcvt_f32_f64(*v44);
  *v97 = *v45;
  *(v97 + 16) = 0;
  v98 = (v95 + 160 * v83);
  v98[4] = v126;
  v98[5] = v127;
  v98[2] = v124;
  v98[3] = v125;
  v98[8] = v122;
  v98[9] = v123;
  v98[6] = v120;
  v98[7] = v121;
  *v98 = v130;
  v98[1] = v128;
  *v98 = 0;
  *(v96 + 40 * v83 + 1) = 0;
  v99 = *(*(a1 + 32) + 876);
  v100 = a3[2];
  if (*(a1 + 276) == 1)
  {
    v101 = (v100 + 32 * v99);
    v102 = *(a1 + 240);
    v103 = *(a1 + 248);
    v104 = *(a1 + 256);
    v105 = *(a1 + 264);
    v149.origin.x = v102;
    v149.origin.y = v103;
    v149.size.width = v104;
    v149.size.height = v105;
    v106 = CGRectGetMidX(v149);
    v150.origin.x = v102;
    v150.origin.y = v103;
    v150.size.width = v104;
    v150.size.height = v105;
    v107 = CGRectGetMidY(v150);
    v151.origin.x = v102;
    v151.origin.y = v103;
    v151.size.width = v104;
    v151.size.height = v105;
    v119 = CGRectGetWidth(v151);
    v152.origin.x = v102;
    v152.origin.y = v103;
    v152.size.width = v104;
    v152.size.height = v105;
    v108 = CGRectGetHeight(v152);
    v109.f64[0] = v119;
    v109.f64[1] = v108;
    *v101 = v106;
    *&v101[1] = v107;
    v101[2] = 0xBFD3333340000000;
    v101[3] = vcvt_f32_f64(v109);
    v110 = (a3[3] + 160 * *(*(a1 + 32) + 876));
    *v110 = v130;
    v110[1] = v128;
    v110[4] = v126;
    v110[5] = v127;
    v110[2] = v124;
    v110[3] = v125;
    v110[8] = v122;
    v110[9] = v123;
    v110[6] = v120;
    v110[7] = v121;
    *(a3[4] + 40 * *(*(a1 + 32) + 876) + 1) = 3;
    PXSizeScale();
  }

  v111 = a3[3];
  v112 = a3[4];
  v113 = v100 + 32 * v99;
  *(v113 + 24) = vcvt_f32_f64(*v44);
  *v113 = *v45;
  *(v113 + 16) = 0;
  v114 = (v111 + 160 * v99);
  v114[4] = v126;
  v114[5] = v127;
  v114[2] = v124;
  v114[3] = v125;
  v114[8] = v122;
  v114[9] = v123;
  v114[6] = v120;
  v114[7] = v121;
  *v114 = v130;
  v114[1] = v128;
  *v114 = 0;
  *(v112 + 40 * v99 + 1) = 0;
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXSharedAlbumsActivityEntryLayout;
  [(PXSharedAlbumsActivityEntryLayout *)&v3 displayScaleDidChange];
  [(PXSharedAlbumsActivityEntryLayout *)self setNeedsUpdate];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXSharedAlbumsActivityEntryLayout;
  [(PXSharedAlbumsActivityEntryLayout *)&v3 referenceSizeDidChange];
  [(PXSharedAlbumsActivityEntryLayout *)self setNeedsUpdate];
}

- (PXSharedAlbumsActivityEntryLayout)initWithItem:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntryViewController.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedAlbumsActivityEntryLayout;
  v7 = [(PXSharedAlbumsActivityEntryLayout *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_item, a3);
    v8->_assetSpriteIndex = [(PXSharedAlbumsActivityEntryLayout *)v8 addSpriteWithInitialState:0];
    v8->_backgroundSpriteIndex = [(PXSharedAlbumsActivityEntryLayout *)v8 addSpriteWithInitialState:0];
    v8->_countsBackgroundSpriteIndex = [(PXSharedAlbumsActivityEntryLayout *)v8 addSpriteWithInitialState:0];
    v8->_countsSpriteIndex = [(PXSharedAlbumsActivityEntryLayout *)v8 addSpriteWithInitialState:0];
    v8->_contributorSpriteIndex = [(PXSharedAlbumsActivityEntryLayout *)v8 addSpriteWithInitialState:0];
    v8->_messageSpriteIndex = [(PXSharedAlbumsActivityEntryLayout *)v8 addSpriteWithInitialState:0];
    [(PXSharedAlbumsActivityEntryLayout *)v8 setContentSource:v8];
    [(PXSharedAlbumsActivityEntryLayout *)v8 setNeedsUpdate];
  }

  return v8;
}

@end