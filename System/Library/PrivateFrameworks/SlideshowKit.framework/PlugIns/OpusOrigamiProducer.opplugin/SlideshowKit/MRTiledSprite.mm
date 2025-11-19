@interface MRTiledSprite
- (BOOL)getVerticesCoordinates:(CGPoint *)(a3 withMatrix:;
- (BOOL)hitAtPoint:(CGPoint)a3 withInverseMatrix:(float)a4[16] localPoint:(CGPoint *)a5;
- (CGPoint)position;
- (CGRect)innerRect;
- (CGRect)outerRect;
- (CGSize)halfSize;
- (double)initWithPosition:(double)a3 size:(double)a4 zRotation:(double)a5 innerRect:(float)a6 outerRect:(uint64_t)a7 context:(void *)a8;
- (void)dealloc;
- (void)getOpaquePosition:(CGPoint *)a3 andHalfSize:(CGSize *)a4;
- (void)renderDumbImage:(id)a3 inContext:(id)a4;
- (void)renderImage:(id)a3 inContext:(id)a4;
- (void)renderImageInner:(id)a3 inContext:(id)a4;
- (void)renderImageMiddle:(id)a3 inContext:(id)a4;
- (void)renderImageOuter:(id)a3 inContext:(id)a4;
- (void)seal;
- (void)setSpriteCoordinatesFactor:(CGSize)a3 andOffset:(CGPoint)a4;
- (void)setTextureCoordinatesFactor:(CGSize)a3 andOffset:(CGPoint)a4 onTextureUnit:(unint64_t)a5;
- (void)subtractOpaqueSpriteWithPosition:(CGPoint)a3 halfSize:(CGSize)a4 andRotation:(float)a5;
- (void)subtractSprite:(id)a3;
- (void)subtractSpriteAtPosition:(CGPoint)a3 withSize:(CGSize)a4 zRotation:(float)a5 andOpaqueRect:(CGRect)a6 inContext:(id)a7;
- (void)subtractTriangle:(double)a3[6] fromTriangle:(double)a4[6] addTrianglesTo:(id)a5;
- (void)updateInSpriteCoordinates;
@end

@implementation MRTiledSprite

- (double)initWithPosition:(double)a3 size:(double)a4 zRotation:(double)a5 innerRect:(float)a6 outerRect:(uint64_t)a7 context:(void *)a8
{
  v27 = [a1 init];
  v28 = v27;
  if (v27)
  {
    v27[1] = a2;
    [a8 localAspectRatio];
    v28[2] = a3 / v29;
    v28[3] = a4 * 0.5;
    [a8 localAspectRatio];
    v30 = 0;
    v28[4] = a5 * 0.5 / v31;
    *(v28 + 10) = a6;
    *(v28 + 6) = a14;
    *(v28 + 7) = a15;
    *(v28 + 8) = a16;
    *(v28 + 9) = a17;
    *(v28 + 10) = a18;
    *(v28 + 11) = a19;
    *(v28 + 12) = a20;
    *(v28 + 13) = a21;
    v28[39] = 1.0;
    v28[40] = 1.0;
    do
    {
      *&v28[v30 + 43] = *(v28 + 39);
      v30 += 2;
    }

    while (v30 != 8);
    *(v28 + 472) = 1;
    *(v28 + 56) = 1;
    *(v28 + 478) = 1;
    v32 = objc_alloc_init(NSMutableArray);
    *(v28 + 15) = v32;
    v33 = __sincosf_stret(*(v28 + 10));
    cosval = v33.__cosval;
    sinval = v33.__sinval;
    v37 = v28[3];
    v36 = v28[4];
    v38 = v37 * v33.__cosval;
    v39 = v37 * v33.__sinval;
    v40 = -(v36 * v33.__sinval);
    v41 = v36 * v33.__cosval;
    v42 = v28[6];
    if (v42 == 0.0)
    {
      v43 = v28[7];
      v44 = 1.0;
      if (v43 == 0.0 && v28[8] == 1.0)
      {
        if (v28[9] == 1.0)
        {
          v104 = v28[1];
          v105 = v28[2];
          v147 = v104 - v38 - v40;
          v148 = v105 - v39 - v41;
          v106 = v38 + v104;
          v107 = v39 + v105;
          v149 = v106 - v40;
          v150 = v107 - v41;
          v151 = v106 - v36 * v33.__sinval;
          v152 = v41 + v107;
          [v32 addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v147, 48)}];
          v108 = v28[1];
          v109 = v28[2];
          *&v123 = v40 + v38 + v108;
          *(&v123 + 1) = v41 + v39 + v109;
          v110 = v108 - v38;
          v111 = v109 - v39;
          *&v124 = v40 + v110;
          *(&v124 + 1) = v41 + v111;
          *&v125 = v110 - v40;
          *(&v125 + 1) = v111 - v41;
          [*(v28 + 15) addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v123, 48)}];
          return v28;
        }
      }

      else
      {
        v44 = v28[8];
      }
    }

    else
    {
      v43 = v28[7];
      v44 = v28[8];
    }

    v46 = v37 * (v42 * 2.0 + -1.0);
    v47 = v37 * ((v42 + v44) * 2.0 + -1.0);
    v49 = v28[9];
    v48 = v28[10];
    v50 = v36 * (v43 * 2.0 + -1.0);
    v51 = v36 * ((v43 + v49) * 2.0 + -1.0);
    if (v42 == v48)
    {
      v52 = v28[11];
      v53 = v28[12];
      if (v43 == v52 && v44 == v53 && v49 == v28[13])
      {
        v54 = v28[1];
        v55 = v28[2];
        v56 = v54 - v38;
        v57 = v55 - v39;
        v147 = v54 - v38 - v40;
        v148 = v55 - v39 - v41;
        v58 = v54 + v46 * cosval;
        v59 = v58 - v50 * sinval;
        v60 = v55 + v46 * sinval;
        v61 = v60 + v50 * cosval;
        v149 = v59;
        v150 = v61;
        v62 = v38 + v54;
        v151 = v38 + v54 - v40;
        v152 = v39 + v55 - v41;
        v63 = v54 + v47 * cosval;
        v64 = v55 + v47 * sinval;
        *&v153 = v63 - v50 * sinval;
        *(&v153 + 1) = v64 + v50 * cosval;
        v154 = v40 + v62;
        v155 = v41 + v39 + v55;
        v65 = v63 - v51 * sinval;
        v66 = v64 + v51 * cosval;
        v156 = v65;
        v157 = v66;
        v158 = v40 + v56;
        v159 = v41 + v57;
        v67 = v58 - v51 * sinval;
        v68 = v60 + v51 * cosval;
        v160 = v67;
        v161 = v68;
        v162 = v147;
        v163 = v148;
        v164 = v59;
        v165 = v61;
        *&v123 = v59;
        *(&v123 + 1) = v61;
        v124 = v153;
        *&v125 = v65;
        *(&v125 + 1) = v66;
        [v32 addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v123, 48)}];
        v142 = v65;
        v143 = v66;
        *&v144 = v67;
        *(&v144 + 1) = v68;
        v145 = v59;
        v146 = v61;
        [*(v28 + 15) addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v142, 48)}];
        v69 = 0;
        *(v28 + 31) = objc_alloc_init(NSMutableArray);
        do
        {
          v70 = *(&v149 + v69);
          v139 = *(&v147 + v69);
          v140 = v70;
          v141 = *(&v151 + v69);
          [*(v28 + 31) addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v139, 48)}];
          v69 += 16;
        }

        while (v69 != 128);
        return v28;
      }
    }

    else
    {
      v52 = v28[11];
      v53 = v28[12];
    }

    v118 = v37 * cosval;
    v119 = v37 * sinval;
    v120 = -(v36 * sinval);
    v121 = v36 * cosval;
    v71 = v37 * (v48 * 2.0 + -1.0);
    v72 = v37 * ((v48 + v53) * 2.0 + -1.0);
    v73 = v36 * (v52 * 2.0 + -1.0);
    v74 = v36 * ((v52 + v28[13]) * 2.0 + -1.0);
    v75 = v28[1];
    v76 = v28[2];
    v77 = v75 + v71 * cosval;
    v78 = v77 - v73 * sinval;
    v79 = v76 + v71 * sinval;
    v80 = v79 + v73 * cosval;
    v147 = v78;
    v148 = v80;
    v81 = v75 + v46 * cosval;
    v82 = v81 - v50 * sinval;
    v83 = v76 + v46 * sinval;
    v84 = v83 + v50 * cosval;
    v149 = v82;
    v150 = v84;
    v85 = v75 + v72 * cosval;
    v86 = v76 + v72 * sinval;
    v117 = v85 - v73 * sinval;
    v151 = v117;
    v152 = v86 + v73 * cosval;
    v87 = v75 + v47 * cosval;
    v88 = v76 + v47 * sinval;
    *&v153 = v87 - v50 * sinval;
    *(&v153 + 1) = v88 + v50 * cosval;
    v154 = v85 - v74 * sinval;
    v155 = v86 + v74 * cosval;
    v89 = v87 - v51 * sinval;
    v90 = v88 + v51 * cosval;
    v156 = v89;
    v157 = v90;
    v158 = v77 - v74 * sinval;
    v159 = v79 + v74 * cosval;
    v91 = v81 - v51 * sinval;
    v92 = v83 + v51 * cosval;
    v160 = v91;
    v161 = v92;
    v162 = v78;
    v163 = v80;
    v164 = v82;
    v165 = v84;
    v142 = v82;
    v143 = v84;
    v144 = v153;
    v145 = v89;
    v146 = v90;
    [v32 addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v142, 48, *&v159, *&v158, *&v155, *&v154, *&v152)}];
    *&v139 = v89;
    *(&v139 + 1) = v90;
    *&v140 = v91;
    *(&v140 + 1) = v92;
    *&v141 = v82;
    *(&v141 + 1) = v84;
    [*(v28 + 15) addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v139, 48)}];
    v93 = 0;
    *(v28 + 23) = objc_alloc_init(NSMutableArray);
    do
    {
      v94 = *(&v149 + v93);
      v123 = *(&v147 + v93);
      v124 = v94;
      v125 = *(&v151 + v93);
      [*(v28 + 23) addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v123, 48)}];
      v93 += 16;
    }

    while (v93 != 128);
    v95 = v28[1];
    v96 = v28[2];
    v97 = v95 - v118;
    v98 = v96 - v119;
    *&v123 = v95 - v118 - v120;
    *(&v123 + 1) = v96 - v119 - v121;
    *&v124 = v78;
    *(&v124 + 1) = v80;
    v99 = v118 + v95;
    v100 = v119 + v96;
    *&v125 = v99 - v120;
    *(&v125 + 1) = v100 - v121;
    v126 = v117;
    v127 = v116;
    v128 = v120 + v99;
    v129 = v121 + v100;
    v130 = v115;
    v131 = v114;
    v132 = v120 + v97;
    v133 = v121 + v98;
    v134 = v113;
    v135 = v112;
    v136 = v123;
    v137 = v78;
    v138 = v80;
    v101 = 0;
    *(v28 + 31) = objc_alloc_init(NSMutableArray);
    do
    {
      v102 = *(&v123 + v101 + 16);
      v122[0] = *(&v123 + v101);
      v122[1] = v102;
      v122[2] = *(&v125 + v101);
      [*(v28 + 31) addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v122, 48)}];
      v101 += 16;
    }

    while (v101 != 128);
  }

  return v28;
}

- (void)dealloc
{
  self->mTriangles = 0;

  self->mMiddleTriangles = 0;
  self->mOuterTriangles = 0;
  mVertices = self->mVertices;
  if (mVertices)
  {
    free(mVertices);
    self->mVertices = 0;
  }

  mMiddleVertices = self->mMiddleVertices;
  if (mMiddleVertices)
  {
    free(mMiddleVertices);
    self->mMiddleVertices = 0;
  }

  mOuterVertices = self->mOuterVertices;
  if (mOuterVertices)
  {
    free(mOuterVertices);
    self->mOuterVertices = 0;
  }

  mBasicTextureCoordinates = self->mBasicTextureCoordinates;
  if (mBasicTextureCoordinates)
  {
    free(mBasicTextureCoordinates);
    self->mBasicTextureCoordinates = 0;
  }

  mMiddleBasicTextureCoordinates = self->mMiddleBasicTextureCoordinates;
  if (mMiddleBasicTextureCoordinates)
  {
    free(mMiddleBasicTextureCoordinates);
    self->mMiddleBasicTextureCoordinates = 0;
  }

  mOuterBasicTextureCoordinates = self->mOuterBasicTextureCoordinates;
  if (mOuterBasicTextureCoordinates)
  {
    free(mOuterBasicTextureCoordinates);
    self->mOuterBasicTextureCoordinates = 0;
  }

  mInSpriteCoordinates = self->mInSpriteCoordinates;
  if (mInSpriteCoordinates)
  {
    free(mInSpriteCoordinates);
    self->mInSpriteCoordinates = 0;
  }

  mMiddleInSpriteCoordinates = self->mMiddleInSpriteCoordinates;
  if (mMiddleInSpriteCoordinates)
  {
    free(mMiddleInSpriteCoordinates);
    self->mMiddleInSpriteCoordinates = 0;
  }

  mOuterInSpriteCoordinates = self->mOuterInSpriteCoordinates;
  if (mOuterInSpriteCoordinates)
  {
    free(mOuterInSpriteCoordinates);
    self->mOuterInSpriteCoordinates = 0;
  }

  for (i = 0; i != 4; ++i)
  {
    v13 = self + i * 8;
    v14 = self->mTextureCoordinates[i];
    if (v14)
    {
      free(v14);
      *(v13 + 19) = 0;
    }

    v15 = *(v13 + 27);
    if (v15)
    {
      free(v15);
      *(v13 + 27) = 0;
    }

    v16 = self->mOuterTextureCoordinates[i];
    if (v16)
    {
      free(v16);
      self->mOuterTextureCoordinates[i] = 0;
    }
  }

  v17.receiver = self;
  v17.super_class = MRTiledSprite;
  [(MRTiledSprite *)&v17 dealloc];
}

- (void)subtractTriangle:(double)a3[6] fromTriangle:(double)a4[6] addTrianglesTo:(id)a5
{
  if (TrianglesAreDisjoint(a3, a4) || (v8 = *a3, v9 = a3[1], v10 = a3[2] - *a3, v11 = a3[3] - v9, v12 = a3[4] - *a3, v13 = a3[5] - v9, v14 = v10 * v13 - v12 * v11, v15 = fabs(v14), v15 < 0.00001))
  {
LABEL_3:
    v16 = [NSData dataWithBytes:a4 length:48];

    [a5 addObject:v16];
    return;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  LODWORD(v22) = 0;
  v23 = *a4;
  v24 = a4[1];
  v179 = a4[3];
  v181 = a4[2];
  v25 = v181 - *a4;
  v26 = v179 - v24;
  v183 = a4[5];
  v185 = a4[4];
  v27 = v185 - *a4;
  v28 = v183 - v24;
  v29 = v25 * (v183 - v24) - v27 * (v179 - v24);
  v30 = v15 * 0.00001;
  v31 = fabs(v29) * 0.00001;
  v32 = 0.0;
  LOBYTE(v33) = -1;
  v34 = 0.0;
  v35 = 1;
  do
  {
    v36 = v22;
    v37 = a4[2 * v17];
    v38 = (2 * (v17 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v39 = a4[v38];
    v40 = v37 - v8;
    v41 = v39 - v9;
    if (v37 - v8 == v10 && v41 == v11)
    {
      v44 = 24;
      goto LABEL_20;
    }

    if (v40 == v12 && v41 == v13)
    {
      v44 = 48;
      goto LABEL_20;
    }

    if (v40 == 0.0 && v41 == 0.0)
    {
      v44 = 40;
LABEL_20:
      v32 = v32 + v37;
      v34 = v34 + v39;
      ++v21;
      ++v20;
      goto LABEL_21;
    }

    v61 = v14 > 0.0;
    v62 = v40 * v13 - v41 * v12;
    v63 = v41 * v10 - v40 * v11;
    v64 = fabs(v62);
    v65 = v62 <= 0.0;
    v67 = v63 + v62;
    v68 = fabs(v63);
    if (v64 < v30)
    {
      v69 = 1;
    }

    else
    {
      v69 = v61 ^ v65;
    }

    v66 = v63 <= 0.0;
    v70 = v61 ^ v66;
    v71 = vabdd_f64(v67, v14);
    if (v68 < v30)
    {
      v72 = 1;
    }

    else
    {
      v72 = v61 ^ v66;
    }

    v73 = v69 & v72;
    if (v71 < v30)
    {
      v74 = 1;
    }

    else
    {
      v74 = v61 ^ (v67 - v14 >= 0.0);
    }

    v75 = v73 & v74;
    if (v61 == v65 || v64 < v30)
    {
      v77 = 0;
      if (v75)
      {
        goto LABEL_127;
      }
    }

    else
    {
      if (v68 < v30)
      {
        v70 = 0;
      }

      v77 = v70 & (v61 ^ (v67 - v14 >= 0.0));
      if (v71 < v30)
      {
        v77 = 0;
      }

      if (v75)
      {
LABEL_127:
        v44 = (8 * (v68 < v30)) | (32 * (v64 < v30)) | (16 * (v71 < v30));
        v32 = v32 + v37;
        v34 = v34 + v39;
        ++v21;
        ++v20;
        if (v77)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

      if (v77)
      {
        v44 = 0;
        goto LABEL_29;
      }
    }

    v44 = 0;
LABEL_21:
    v45 = v44 | (1 << v17) | (1 << (v33 + v18 + 3));
    v46 = 0;
    if (v22)
    {
      v47 = 1;
      while (vabdd_f64(v196[0].f64[v47 - 1], v37) >= 0.00001 || vabdd_f64(v196[0].f64[v47], v39) >= 0.00001)
      {
        ++v46;
        v47 += 2;
        if (v22 == v46)
        {
          v46 = v22;
          goto LABEL_27;
        }
      }

      v195[v46] |= v45;
    }

    else
    {
LABEL_27:
      v196[0].f64[(2 * v22)] = v37;
      v196[0].f64[(2 * v22) | 1u] = v39;
      v195[v46] = v45;
      v36 = v22 + 1;
    }

LABEL_29:
    v22 = v36;
    v48 = a3[2 * v17];
    v49 = a3[v38];
    v50 = v48 - v23;
    v51 = v49 - v24;
    if (v48 - v23 == v25 && v51 == v26)
    {
      v44 = 3;
      goto LABEL_42;
    }

    if (v50 == v27 && v51 == v28)
    {
      v44 = 6;
      goto LABEL_42;
    }

    if (v50 == 0.0 && v51 == 0.0)
    {
      v44 = 5;
LABEL_42:
      v54 = a3[2 * v17];
      v55 = a3[v38];
      goto LABEL_43;
    }

    v78 = v29 > 0.0;
    v79 = v50 * v28 - v51 * v27;
    v80 = v51 * v25 - v50 * v26;
    v81 = fabs(v79);
    v82 = v79 <= 0.0;
    v83 = v80 + v79 - v29;
    v84 = v78 ^ v82;
    if (v81 < v31)
    {
      v84 = 0;
    }

    v85 = fabs(v80);
    if (v81 < v31)
    {
      v86 = 1;
    }

    else
    {
      v86 = v84;
    }

    v87 = v78 ^ (v80 <= 0.0);
    if (v85 < v31)
    {
      v87 = 0;
    }

    v88 = fabs(v83);
    if (v85 < v31)
    {
      v87 = 1;
    }

    v89 = v78 ^ (v83 >= 0.0);
    v90 = v86 & v87;
    if (v88 < v31)
    {
      v89 = 1;
    }

    v91 = v90 & v89;
    if (v91 == 1)
    {
      v44 = (v85 < v31) | (4 * (v81 < v31)) | (2 * (v88 < v31));
    }

    v92 = v81 < v31 && v85 < v31;
    v55 = v24;
    v54 = v23;
    if (!v92)
    {
      v93 = v81 < v31 && v88 < v31;
      v55 = v183;
      v54 = v185;
      if (!v93)
      {
        if (v85 >= v31 || v88 >= v31)
        {
          v55 = v49;
        }

        else
        {
          v55 = v179;
        }

        if (v85 >= v31 || v88 >= v31)
        {
          v54 = a3[2 * v17];
        }

        else
        {
          v54 = v181;
        }
      }
    }

    if ((v91 & 1) == 0)
    {
      v56 = 8 << v17;
LABEL_96:
      v60 = v17;
      goto LABEL_97;
    }

LABEL_43:
    v56 = 8 << v17;
    v57 = (1 << (v33 + v18 + 6)) | v44 | (8 << v17);
    v58 = 0;
    if (v22)
    {
      v59 = 1;
      while (vabdd_f64(v196[0].f64[v59 - 1], v54) >= 0.00001 || vabdd_f64(v196[0].f64[v59], v55) >= 0.00001)
      {
        ++v58;
        v59 += 2;
        if (v22 == v58)
        {
          v58 = v22;
          goto LABEL_49;
        }
      }

      v195[v58] |= v57;
      goto LABEL_96;
    }

LABEL_49:
    v32 = v32 + v54;
    v34 = v34 + v55;
    ++v21;
    v196[0].f64[(2 * v22)] = v54;
    v196[0].f64[(2 * v22) | 1u] = v55;
    v195[v58] = v57;
    LODWORD(v22) = v22 + 1;
    v60 = v17;
LABEL_97:
    v94 = 0;
    v95 = a3[2 * v35];
    v96 = v95 - v48;
    v97 = 1;
    v98 = a3[(2 * v35) | 1];
    v99 = v98 - v49;
    do
    {
      v100 = a4[2 * v97];
      v101 = (2 * v97) | 1;
      if (v95 != v100 || v98 != a4[v101])
      {
        v102 = &a4[2 * v94];
        v103 = v102[1];
        v104 = *v102 - v100;
        v105 = v103 - a4[v101];
        v106 = v104 * -(v98 - v49) + v96 * v105;
        if (fabs(v106) >= 0.00001)
        {
          v107 = v103 - v49;
          v108 = *v102 - v48;
          v109 = (v108 * v105 - v107 * v104) / v106;
          if (v109 > 0.00001 && v109 < 0.99999)
          {
            v110 = -(v108 * v99 - v107 * v96) / v106;
            if (v110 > 0.00001 && v110 < 0.99999)
            {
              v111 = v48 + v109 * v96;
              v112 = v49 + v109 * v99;
              v113 = (1 << v94) | v56;
              v114 = 0;
              if (v22)
              {
                v115 = 1;
                while (vabdd_f64(v196[0].f64[v115 - 1], v111) >= 0.00001 || vabdd_f64(v196[0].f64[v115], v112) >= 0.00001)
                {
                  ++v114;
                  v115 += 2;
                  if (v22 == v114)
                  {
                    v114 = v22;
                    goto LABEL_111;
                  }
                }

                v195[v114] |= v113;
              }

              else
              {
LABEL_111:
                v196[0].f64[(2 * v22)] = v111;
                v32 = v32 + v111;
                v196[0].f64[(2 * v22) | 1u] = v112;
                v19 = 1;
                v34 = v34 + v112;
                v195[v114] = v113;
                ++v21;
                LODWORD(v22) = v22 + 1;
              }
            }
          }
        }
      }

      ++v94;
      if (v97 < 2)
      {
        ++v97;
      }

      else
      {
        v97 = 0;
      }
    }

    while (v94 != 3);
    ++v17;
    if (v35 < 2)
    {
      ++v35;
    }

    else
    {
      v35 = 0;
    }

    v18 = ~v60;
    v33 = -v35;
  }

  while (v17 != 3);
  if (((v20 == 3) & ~v19) != 0 || v22 < 3)
  {
    return;
  }

  if (v21 <= 2)
  {
    goto LABEL_3;
  }

  if (v22 == 3)
  {
    if ((v195[0] & 0x38) == 0 || (v195[1] & 0x38) == 0 || (v195[2] & 0x38) == 0)
    {
      [a5 addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v196, 48)}];
    }
  }

  else
  {
    v116 = 0;
    v117 = 0;
    do
    {
      v118 = v195[v117++];
      v116 -= 2;
    }

    while ((v118 & 0x38) == 0);
    LODWORD(v119) = v117 - 1;
    v120 = v196[0].f64[~v116] - v34 / v21;
    v121 = v196[0].f64[-2 - v116] - v32 / v21;
    v122 = atan2f(v120, v121);
    v123 = 0;
    v171 = 0;
    __nel = (v22 - 1);
    v169 = v22 - 2;
    v124 = -1;
    v125 = 0uLL;
    v182 = -1;
    v180 = -1;
    v186 = v22;
    obj = a5;
LABEL_143:
    v126 = 0;
    v127 = 0;
    v177 = v124;
    v194[8] = v125;
    v194[9] = v125;
    v128 = v119;
    v176 = v119 + 1;
    v194[6] = v125;
    v194[7] = v125;
    v194[4] = v125;
    v194[5] = v125;
    v194[2] = v125;
    v194[3] = v125;
    v184 = &v196[0].f64[(2 * v119)];
    v129 = 1;
    v130 = (2 * v119) | 1;
    v131 = v194;
    v194[0] = v125;
    v194[1] = v125;
    do
    {
      if (v128 != v126)
      {
        v132 = v196[0].f64[v129 - 1] - *v184;
        v133 = v196[0].f64[v129] - v196[0].f64[v130];
        v134 = atan2f(v133, v132);
        *v131 = fmodf((v134 - v122) + 12.566, 6.2832);
        v131[9] = -sqrtf((v133 * v133) + (v132 * v132));
        *(&v194[9] + v126) = v195[v128] & v195[v126];
        __base[v127++] = v126;
      }

      ++v126;
      ++v131;
      v129 += 2;
    }

    while (v186 != v126);
    v135 = __nel;
    qsort_r(__base, __nel, 4uLL, v194, SortByAngleAndDistance);
    v136 = v176;
    if (v176 == v117)
    {
      v137 = v169;
      v138 = obj;
      if ((v169 & 0x80000000) == 0)
      {
        v137 = v169;
        while ((v195[__base[v137]] & 0x38) == 0)
        {
          if (v137-- <= 0)
          {
            v137 = -1;
            break;
          }
        }
      }
    }

    else
    {
      v137 = -1;
      v140 = __base;
      v138 = obj;
      do
      {
        v141 = *v140++;
        ++v137;
      }

      while (v141 != v123);
    }

    LODWORD(v119) = __base[v137];
    if (v176 == v117)
    {
      v142 = __base[v137];
    }

    else
    {
      v142 = v177;
    }

    if (v171 == 10)
    {
      NSLog(@"SubtractTriangle Error2\n");
LABEL_214:
      NSLog(@"Triangle 1: {%1.20f, %1.20f, %1.20f, %1.20f, %1.20f, %1.20f}\n", *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5));
      NSLog(@"Triangle 2: {%1.20f, %1.20f, %1.20f, %1.20f, %1.20f, %1.20f}\n", *a4, *(a4 + 1), *(a4 + 2), *(a4 + 3), *(a4 + 4), *(a4 + 5));
    }

    else
    {
      ++v171;
      v172 = v142;
      while (1)
      {
        v123 = v119;
        v137 = (v137 + 1) % v135;
        v143 = __base[v137];
        v144 = v180;
        v145 = v182;
        v146 = v143 == v180 && v119 == v182;
        v147 = v177;
        if (!v146)
        {
          v147 = __base[v137];
        }

        if (v180 == -1)
        {
          v148 = __base[v137];
        }

        else
        {
          v148 = v180;
        }

        if (v182 == -1)
        {
          v149 = __base[v137];
        }

        else
        {
          v149 = v182;
        }

        if (v182 == -1)
        {
          v148 = v180;
        }

        if (v136 == v117)
        {
          v145 = v149;
        }

        v182 = v145;
        if (v136 == v117)
        {
          v144 = v148;
        }

        v180 = v144;
        v119 = v136 == v117 ? v143 : v147;
        if (v119 + 1 == v117)
        {
          break;
        }

        v150 = *(v196 + 8 * (2 * v119));
        v151 = v196[v123];
        v152 = *v184;
        v192[1] = v150;
        v192[2] = v151;
        v192[0] = v152;
        v153 = v195[v119];
        if (((v195[v123] & v195[v128]) & v153) == 0)
        {
          v174 = v151;
          v175 = v150;
          v154 = *(v194 + v119) - *(v194 + v123) + 6.28318548;
          v173 = v195[v119];
          v155 = fmodf(v154, 6.2832);
          v142 = v172;
          v153 = v173;
          v151 = v174;
          v150 = v175;
          v136 = v176;
          if (v155 < 3.1416)
          {
            v189 = 0u;
            v190 = 0u;
            v187 = 0u;
            v188 = 0u;
            v156 = [v138 countByEnumeratingWithState:&v187 objects:v191 count:16];
            if (v156)
            {
              v157 = v156;
              v158 = *v188;
              while (2)
              {
                for (i = 0; i != v157; i = i + 1)
                {
                  if (*v188 != v158)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (TrianglesAreEqual(v192, [*(*(&v187 + 1) + 8 * i) bytes]))
                  {
                    NSLog(@"SubtractTriangle Error\n");
                    goto LABEL_214;
                  }
                }

                v138 = obj;
                v157 = [obj countByEnumeratingWithState:&v187 objects:v191 count:16];
                if (v157)
                {
                  continue;
                }

                break;
              }
            }

            [v138 addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v192, 48)}];
            v135 = __nel;
            v136 = v176;
            v142 = v172;
            v153 = v173;
            v151 = v174;
            v150 = v175;
          }
        }

        if (v128 == v142 && v119 == v182)
        {
          break;
        }

        if (v119 == v142 && v123 == v182)
        {
          break;
        }

        if ((v153 & 0x38) != 0)
        {
          v161 = v142;
          v162 = vsubq_f64(v151, v150);
          v163 = v162.f64[1];
          *v162.f64 = v162.f64[0];
          v122 = atan2f(v163, *v162.f64);
          v164 = *(v194 + v119) - *(v194 + v123) + 12.566371;
          if (fmodf(v164, 6.2832) >= 3.14158274)
          {
            if (v137 + 1 == v135)
            {
              v165 = 0;
            }

            else
            {
              v165 = v137 + 1;
            }

            v166 = __base[v165];
            if (v166 + 1 == v117)
            {
              return;
            }

            v167 = (v122 + 3.1416) + -0.000001;
            v168 = fmodf(v167, 6.2832);
            v124 = v161;
            v122 = v168;
            if ((v195[v166] & 0x38) != 0)
            {
              v123 = v119;
            }

            else
            {
              v123 = v166;
            }

            if ((v195[v166] & 0x38) != 0)
            {
              LODWORD(v119) = v166;
            }
          }

          else
          {
            v124 = v161;
          }

          v125 = 0uLL;
          if (v119 + 1 != v117)
          {
            goto LABEL_143;
          }

          return;
        }
      }
    }
  }
}

- (void)subtractSprite:(id)a3
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [a3 getOpaquePosition:&v9 andHalfSize:&v7];
  [a3 rotation];
  LODWORD(v6) = v5;
  [(MRTiledSprite *)self subtractOpaqueSpriteWithPosition:v9 halfSize:v10 andRotation:v7, v8, v6];
}

- (void)subtractSpriteAtPosition:(CGPoint)a3 withSize:(CGSize)a4 zRotation:(float)a5 andOpaqueRect:(CGRect)a6 inContext:(id)a7
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  [a7 localAspectRatio];
  v13 = width * 0.5;
  v14 = y / v12;
  [a7 localAspectRatio];
  v16 = height * 0.5 / v15;
  v17 = v13 * (a6.origin.x * 2.0 + -1.0);
  v22 = v13 * ((a6.origin.x + a6.size.width) * 2.0 + -1.0);
  v18 = (a6.origin.y * 2.0 + -1.0) * v16;
  v19 = ((a6.origin.y + a6.size.height) * 2.0 + -1.0) * v16;
  v20 = x + (v17 + v22) * 0.5;
  v21 = (v22 - v17) * 0.5;
  *&v22 = a5;

  [(MRTiledSprite *)self subtractOpaqueSpriteWithPosition:v20 halfSize:v14 + (v19 + v18) * 0.5 andRotation:v21, (v19 - v18) * 0.5, v22];
}

- (void)subtractOpaqueSpriteWithPosition:(CGPoint)a3 halfSize:(CGSize)a4 andRotation:(float)a5
{
  if (!self->mIsSealed)
  {
    height = a4.height;
    width = a4.width;
    y = a3.y;
    x = a3.x;
    v10 = __sincosf_stret(a5);
    v11 = width * v10.__cosval;
    v12 = width * v10.__sinval;
    v13 = -(height * v10.__sinval);
    v14 = height * v10.__cosval;
    v15 = x - v11;
    v16 = y - v12;
    v80 = x - v11 - v13;
    v81 = y - v12 - v14;
    v17 = x + v11;
    v18 = y + v12;
    v82 = v17 - v13;
    v83 = v18 - v14;
    v84 = v17 - height * v10.__sinval;
    v85 = v14 + v18;
    *v79 = v80;
    *&v79[1] = v81;
    *&v79[2] = v15 - height * v10.__sinval;
    *&v79[3] = v14 + v16;
    *&v79[4] = v84;
    *&v79[5] = v14 + v18;
    v19 = objc_alloc_init(NSMutableArray);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    mTriangles = self->mTriangles;
    v21 = [(NSMutableArray *)mTriangles countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v70;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v70 != v23)
          {
            objc_enumerationMutation(mTriangles);
          }

          -[MRTiledSprite subtractTriangle:fromTriangle:addTrianglesTo:](self, "subtractTriangle:fromTriangle:addTrianglesTo:", &v80, [*(*(&v69 + 1) + 8 * i) bytes], v19);
        }

        v22 = [(NSMutableArray *)mTriangles countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v22);
    }

    [(NSMutableArray *)self->mTriangles removeAllObjects];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v25 = [v19 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v66;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v66 != v27)
          {
            objc_enumerationMutation(v19);
          }

          -[MRTiledSprite subtractTriangle:fromTriangle:addTrianglesTo:](self, "subtractTriangle:fromTriangle:addTrianglesTo:", v79, [*(*(&v65 + 1) + 8 * j) bytes], self->mTriangles);
        }

        v26 = [v19 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v26);
    }

    if (self->mMiddleTriangles)
    {
      v29 = objc_alloc_init(NSMutableArray);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      mMiddleTriangles = self->mMiddleTriangles;
      v31 = [(NSMutableArray *)mMiddleTriangles countByEnumeratingWithState:&v61 objects:v76 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v62;
        do
        {
          for (k = 0; k != v32; k = k + 1)
          {
            if (*v62 != v33)
            {
              objc_enumerationMutation(mMiddleTriangles);
            }

            -[MRTiledSprite subtractTriangle:fromTriangle:addTrianglesTo:](self, "subtractTriangle:fromTriangle:addTrianglesTo:", &v80, [*(*(&v61 + 1) + 8 * k) bytes], v29);
          }

          v32 = [(NSMutableArray *)mMiddleTriangles countByEnumeratingWithState:&v61 objects:v76 count:16];
        }

        while (v32);
      }

      [(NSMutableArray *)self->mMiddleTriangles removeAllObjects];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v35 = [v29 countByEnumeratingWithState:&v57 objects:v75 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v58;
        do
        {
          for (m = 0; m != v36; m = m + 1)
          {
            if (*v58 != v37)
            {
              objc_enumerationMutation(v29);
            }

            -[MRTiledSprite subtractTriangle:fromTriangle:addTrianglesTo:](self, "subtractTriangle:fromTriangle:addTrianglesTo:", v79, [*(*(&v57 + 1) + 8 * m) bytes], self->mMiddleTriangles);
          }

          v36 = [v29 countByEnumeratingWithState:&v57 objects:v75 count:16];
        }

        while (v36);
      }
    }

    if (self->mOuterTriangles)
    {
      v39 = objc_alloc_init(NSMutableArray);
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      mOuterTriangles = self->mOuterTriangles;
      v41 = [(NSMutableArray *)mOuterTriangles countByEnumeratingWithState:&v53 objects:v74 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v54;
        do
        {
          for (n = 0; n != v42; n = n + 1)
          {
            if (*v54 != v43)
            {
              objc_enumerationMutation(mOuterTriangles);
            }

            -[MRTiledSprite subtractTriangle:fromTriangle:addTrianglesTo:](self, "subtractTriangle:fromTriangle:addTrianglesTo:", &v80, [*(*(&v53 + 1) + 8 * n) bytes], v39);
          }

          v42 = [(NSMutableArray *)mOuterTriangles countByEnumeratingWithState:&v53 objects:v74 count:16];
        }

        while (v42);
      }

      [(NSMutableArray *)self->mOuterTriangles removeAllObjects];
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v45 = [v39 countByEnumeratingWithState:&v49 objects:v73 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v50;
        do
        {
          for (ii = 0; ii != v46; ii = ii + 1)
          {
            if (*v50 != v47)
            {
              objc_enumerationMutation(v39);
            }

            -[MRTiledSprite subtractTriangle:fromTriangle:addTrianglesTo:](self, "subtractTriangle:fromTriangle:addTrianglesTo:", v79, [*(*(&v49 + 1) + 8 * ii) bytes], self->mOuterTriangles);
          }

          v46 = [v39 countByEnumeratingWithState:&v49 objects:v73 count:16];
        }

        while (v46);
      }
    }
  }
}

- (void)seal
{
  if (!self->mIsSealed)
  {
    width = self->mHalfSize.width;
    height = self->mHalfSize.height;
    v5 = __sincosf_stret(self->mRotation);
    v6 = 24 * [(NSMutableArray *)self->mTriangles count];
    self->mVertices = malloc_type_malloc(v6, 0x100004052888210uLL);
    v7 = 0;
    v8 = 0;
    self->mBasicTextureCoordinates = malloc_type_malloc(v6, 0x100004052888210uLL);
    mNeedsTextureCoordinates = self->mNeedsTextureCoordinates;
    y = CGPointZero.y;
    do
    {
      if (mNeedsTextureCoordinates[v8])
      {
        v11 = &mNeedsTextureCoordinates[v7];
        v12 = *&mNeedsTextureCoordinates[v7 - 128] == 1.0 && *&mNeedsTextureCoordinates[v7 - 120] == 1.0;
        if (!v12 || (*(v11 - 8) == CGPointZero.x ? (v13 = *(v11 - 7) == y) : (v13 = 0), !v13))
        {
          *&mNeedsTextureCoordinates[8 * v8 - 320] = malloc_type_malloc(v6, 0x100004052888210uLL);
        }
      }

      ++v8;
      v7 += 16;
    }

    while (v8 != 4);
    v14 = 1.0 / width;
    cosval = v5.__cosval;
    sinval = v5.__sinval;
    v17 = 1.0 / height;
    self->mInSpriteCoordinates = malloc_type_malloc(v6, 0x100004052888210uLL);
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    mTriangles = self->mTriangles;
    v19 = [(NSMutableArray *)mTriangles countByEnumeratingWithState:&v157 objects:v163 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v158;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v158 != v22)
          {
            objc_enumerationMutation(mTriangles);
          }

          v24 = [*(*(&v157 + 1) + 8 * i) bytes];
          v25 = 0;
          x = self->mPosition.x;
          v27 = self->mPosition.y;
          mVertices = self->mVertices;
          mBasicTextureCoordinates = self->mBasicTextureCoordinates;
          mInSpriteCoordinates = self->mInSpriteCoordinates;
          v31 = self->mInSpriteCoordinatesFactor.width;
          v32 = self->mInSpriteCoordinatesFactor.height;
          v33 = self->mInSpriteCoordinatesOffset.x;
          v34 = self->mInSpriteCoordinatesOffset.y;
          do
          {
            v35 = 0;
            v36 = (6 * v21 + 2 * v25);
            v37 = v36 | 1;
            v38 = &v24[16 * v25];
            v39 = *v38;
            v40 = v38[1];
            v41 = *v38;
            mVertices[v36] = v41;
            v42 = v40;
            mVertices[v37] = v42;
            v43 = v39 - x;
            v44 = v40 - v27;
            v45 = v14 * (v44 * sinval + v43 * cosval);
            mBasicTextureCoordinates[v36] = v45;
            *&v43 = v17 * (v44 * cosval - v43 * sinval);
            mBasicTextureCoordinates[v37] = *&v43;
            v46 = v45;
            v47 = *&v43;
            p_y = &self->mTextureCoordinatesOffset[0].y;
            do
            {
              v49 = self->mTextureCoordinates[v35];
              if (v49)
              {
                v50 = *(p_y - 8);
                v51 = *p_y;
                v52 = *(p_y - 1) + v46 * *(p_y - 9);
                v49[v36] = v52;
                v53 = v51 + v47 * v50;
                v49[v37] = v53;
              }

              ++v35;
              p_y += 2;
            }

            while (v35 != 4);
            v54 = v33 + (v46 + 1.0) * 0.5 * v31;
            mInSpriteCoordinates[v36] = v54;
            v55 = v34 + (v47 + 1.0) * 0.5 * v32;
            mInSpriteCoordinates[v37] = v55;
            ++v25;
          }

          while (v25 != 3);
          ++v21;
        }

        v20 = [(NSMutableArray *)mTriangles countByEnumeratingWithState:&v157 objects:v163 count:16];
      }

      while (v20);
    }

    mMiddleTriangles = self->mMiddleTriangles;
    if (mMiddleTriangles)
    {
      v57 = 24 * [(NSMutableArray *)mMiddleTriangles count];
      self->mMiddleVertices = malloc_type_malloc(v57, 0x100004052888210uLL);
      v58 = 0;
      v59 = 0;
      self->mMiddleBasicTextureCoordinates = malloc_type_malloc(v57, 0x100004052888210uLL);
      do
      {
        if (mNeedsTextureCoordinates[v59])
        {
          v60 = &mNeedsTextureCoordinates[v58];
          v61 = *&mNeedsTextureCoordinates[v58 - 128] == 1.0 && *&mNeedsTextureCoordinates[v58 - 120] == 1.0;
          if (!v61 || (*(v60 - 8) == CGPointZero.x ? (v62 = *(v60 - 7) == y) : (v62 = 0), !v62))
          {
            *&mNeedsTextureCoordinates[8 * v59 - 256] = malloc_type_malloc(v57, 0x100004052888210uLL);
          }
        }

        ++v59;
        v58 += 16;
      }

      while (v59 != 4);
      self->mMiddleInSpriteCoordinates = malloc_type_malloc(v57, 0x100004052888210uLL);
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v63 = self->mMiddleTriangles;
      v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v153 objects:v162 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = 0;
        v67 = *v154;
        do
        {
          for (j = 0; j != v65; j = j + 1)
          {
            if (*v154 != v67)
            {
              objc_enumerationMutation(v63);
            }

            v69 = [*(*(&v153 + 1) + 8 * j) bytes];
            v70 = 0;
            v71 = self->mPosition.x;
            v72 = self->mPosition.y;
            mMiddleVertices = self->mMiddleVertices;
            mMiddleBasicTextureCoordinates = self->mMiddleBasicTextureCoordinates;
            mMiddleInSpriteCoordinates = self->mMiddleInSpriteCoordinates;
            v76 = self->mInSpriteCoordinatesFactor.width;
            v77 = self->mInSpriteCoordinatesFactor.height;
            v78 = self->mInSpriteCoordinatesOffset.x;
            v79 = self->mInSpriteCoordinatesOffset.y;
            do
            {
              v80 = (6 * v66 + 2 * v70);
              v81 = &v69[16 * v70];
              v82 = *v81;
              v83 = v81[1];
              v84 = *v81;
              mMiddleVertices[v80] = v84;
              v85 = v80 | 1;
              v86 = v83;
              mMiddleVertices[v85] = v86;
              v87 = v82 - v71;
              v88 = v83 - v72;
              v89 = v14 * (v88 * sinval + v87 * cosval);
              *&v87 = v17 * (v88 * cosval - v87 * sinval);
              mMiddleBasicTextureCoordinates[v80] = v89;
              mMiddleBasicTextureCoordinates[v85] = *&v87;
              v90 = v89;
              v91 = *&v87;
              v92 = &self->mTextureCoordinatesOffset[0].y;
              mMiddleTextureCoordinates = self->mMiddleTextureCoordinates;
              v94 = 4;
              do
              {
                v95 = *mMiddleTextureCoordinates;
                if (*mMiddleTextureCoordinates)
                {
                  v96 = *(v92 - 8);
                  v97 = *v92;
                  v98 = *(v92 - 1) + v90 * *(v92 - 9);
                  v95[v80] = v98;
                  v99 = v97 + v91 * v96;
                  v95[v85] = v99;
                }

                ++mMiddleTextureCoordinates;
                v92 += 2;
                --v94;
              }

              while (v94);
              v100 = v78 + (v90 + 1.0) * 0.5 * v76;
              mMiddleInSpriteCoordinates[v80] = v100;
              v101 = v79 + (v91 + 1.0) * 0.5 * v77;
              mMiddleInSpriteCoordinates[v85] = v101;
              ++v70;
            }

            while (v70 != 3);
            ++v66;
          }

          v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v153 objects:v162 count:16];
        }

        while (v65);
      }
    }

    mOuterTriangles = self->mOuterTriangles;
    if (mOuterTriangles)
    {
      v103 = 24 * [(NSMutableArray *)mOuterTriangles count];
      self->mOuterVertices = malloc_type_malloc(v103, 0x100004052888210uLL);
      v104 = 0;
      v105 = 0;
      self->mOuterBasicTextureCoordinates = malloc_type_malloc(v103, 0x100004052888210uLL);
      mOuterTextureCoordinates = self->mOuterTextureCoordinates;
      do
      {
        if (*(mOuterTextureCoordinates + v105 + 192) == 1)
        {
          v107 = &mOuterTextureCoordinates[v104];
          v108 = *&mOuterTextureCoordinates[v104 + 8] == 1.0 && *&mOuterTextureCoordinates[v104 + 9] == 1.0;
          if (!v108 || (*(v107 + 16) == CGPointZero.x ? (v109 = *(v107 + 17) == y) : (v109 = 0), !v109))
          {
            mOuterTextureCoordinates[v105] = malloc_type_malloc(v103, 0x100004052888210uLL);
          }
        }

        ++v105;
        v104 += 2;
      }

      while (v105 != 4);
      self->mOuterInSpriteCoordinates = malloc_type_malloc(v103, 0x100004052888210uLL);
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v110 = self->mOuterTriangles;
      v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v149 objects:v161 count:16];
      if (v111)
      {
        v112 = v111;
        v113 = 0;
        v114 = *v150;
        do
        {
          for (k = 0; k != v112; k = k + 1)
          {
            if (*v150 != v114)
            {
              objc_enumerationMutation(v110);
            }

            v116 = [*(*(&v149 + 1) + 8 * k) bytes];
            v117 = 0;
            v118 = self->mPosition.x;
            v119 = self->mPosition.y;
            mOuterVertices = self->mOuterVertices;
            mOuterBasicTextureCoordinates = self->mOuterBasicTextureCoordinates;
            mOuterInSpriteCoordinates = self->mOuterInSpriteCoordinates;
            v123 = self->mInSpriteCoordinatesFactor.width;
            v124 = self->mInSpriteCoordinatesFactor.height;
            v125 = self->mInSpriteCoordinatesOffset.x;
            v126 = self->mInSpriteCoordinatesOffset.y;
            do
            {
              v127 = (6 * v113 + 2 * v117);
              v128 = &v116[16 * v117];
              v129 = *v128;
              v130 = v128[1];
              v131 = *v128;
              mOuterVertices[v127] = v131;
              v132 = v127 | 1;
              v133 = v130;
              mOuterVertices[v132] = v133;
              v134 = v129 - v118;
              v135 = v130 - v119;
              v136 = v14 * (v135 * sinval + v134 * cosval);
              *&v134 = v17 * (v135 * cosval - v134 * sinval);
              mOuterBasicTextureCoordinates[v127] = v136;
              mOuterBasicTextureCoordinates[v132] = *&v134;
              v137 = v136;
              v138 = *&v134;
              v139 = &self->mTextureCoordinatesOffset[0].y;
              v140 = self->mOuterTextureCoordinates;
              v141 = 4;
              do
              {
                v142 = *v140;
                if (*v140)
                {
                  v143 = *(v139 - 8);
                  v144 = *v139;
                  v145 = *(v139 - 1) + v137 * *(v139 - 9);
                  v142[v127] = v145;
                  v146 = v144 + v138 * v143;
                  v142[v132] = v146;
                }

                ++v140;
                v139 += 2;
                --v141;
              }

              while (v141);
              v147 = v125 + (v137 + 1.0) * 0.5 * v123;
              mOuterInSpriteCoordinates[v127] = v147;
              v148 = v126 + (v138 + 1.0) * 0.5 * v124;
              mOuterInSpriteCoordinates[v132] = v148;
              ++v117;
            }

            while (v117 != 3);
            ++v113;
          }

          v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v149 objects:v161 count:16];
        }

        while (v112);
      }
    }

    self->mIsSealed = 1;
    self->mNeedsToUpdateInSpriteCoordinates = 0;
  }
}

- (void)updateInSpriteCoordinates
{
  v3 = [(NSMutableArray *)self->mTriangles count];
  if (v3 >= 1)
  {
    v4 = 0;
    width = self->mInSpriteCoordinatesFactor.width;
    height = self->mInSpriteCoordinatesFactor.height;
    x = self->mInSpriteCoordinatesOffset.x;
    y = self->mInSpriteCoordinatesOffset.y;
    v9 = self->mInSpriteCoordinates + 1;
    v10 = self->mBasicTextureCoordinates + 1;
    do
    {
      v11 = v10;
      v12 = v9;
      v13 = 3;
      do
      {
        v14 = x + (*(v11 - 1) + 1.0) * 0.5 * width;
        *(v12 - 1) = v14;
        v15 = *v11;
        v11 += 2;
        v16 = y + (v15 + 1.0) * 0.5 * height;
        *v12 = v16;
        v12 += 2;
        --v13;
      }

      while (v13);
      ++v4;
      v9 += 6;
      v10 += 6;
    }

    while (v4 != v3);
  }

  mMiddleTriangles = self->mMiddleTriangles;
  if (mMiddleTriangles)
  {
    v18 = [(NSMutableArray *)mMiddleTriangles count];
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = self->mInSpriteCoordinatesFactor.width;
      v21 = self->mInSpriteCoordinatesFactor.height;
      v22 = self->mInSpriteCoordinatesOffset.x;
      v23 = self->mInSpriteCoordinatesOffset.y;
      v24 = self->mMiddleInSpriteCoordinates + 1;
      v25 = self->mMiddleBasicTextureCoordinates + 1;
      do
      {
        v26 = v25;
        v27 = v24;
        v28 = 3;
        do
        {
          v29 = v22 + (*(v26 - 1) + 1.0) * 0.5 * v20;
          *(v27 - 1) = v29;
          v30 = *v26;
          v26 += 2;
          v31 = v23 + (v30 + 1.0) * 0.5 * v21;
          *v27 = v31;
          v27 += 2;
          --v28;
        }

        while (v28);
        ++v19;
        v24 += 6;
        v25 += 6;
      }

      while (v19 != v18);
    }
  }

  mOuterTriangles = self->mOuterTriangles;
  if (mOuterTriangles)
  {
    v33 = [(NSMutableArray *)mOuterTriangles count];
    if (v33 >= 1)
    {
      v34 = 0;
      v35 = self->mInSpriteCoordinatesFactor.width;
      v36 = self->mInSpriteCoordinatesFactor.height;
      v37 = self->mInSpriteCoordinatesOffset.x;
      v38 = self->mInSpriteCoordinatesOffset.y;
      v39 = self->mOuterInSpriteCoordinates + 1;
      v40 = self->mOuterBasicTextureCoordinates + 1;
      do
      {
        v41 = v40;
        v42 = v39;
        v43 = 3;
        do
        {
          v44 = v37 + (*(v41 - 1) + 1.0) * 0.5 * v35;
          *(v42 - 1) = v44;
          v45 = *v41;
          v41 += 2;
          v46 = v38 + (v45 + 1.0) * 0.5 * v36;
          *v42 = v46;
          v42 += 2;
          --v43;
        }

        while (v43);
        ++v34;
        v39 += 6;
        v40 += 6;
      }

      while (v34 != v33);
    }
  }

  self->mNeedsToUpdateInSpriteCoordinates = 0;
}

- (void)renderDumbImage:(id)a3 inContext:(id)a4
{
  if (self->mIsSealed)
  {
    if (self->mNeedsToUpdateInSpriteCoordinates)
    {
      [(MRTiledSprite *)self updateInSpriteCoordinates];
    }
  }

  else
  {
    [(MRTiledSprite *)self seal];
  }

  v9 = 0;
  if (a3)
  {
    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v9 state:0.0];
  }

  for (i = 0; i != 4; ++i)
  {
    if (a3 && !i || [a4 imageSetOnTextureUnit:i])
    {
      [a4 setTextureCoordinatesPointer:self->mInSpriteCoordinates onTextureUnit:i];
    }
  }

  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 setInSpriteCoordinatesPointer:self->mInSpriteCoordinates];
  }

  [a4 setVertex2DPointer:self->mVertices];
  [a4 drawTrianglesFromOffset:0 count:{3 * -[NSMutableArray count](self->mTriangles, "count")}];
  [a4 unsetVertexPointer];
  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 unsetInSpriteCoordinatesPointer];
  }

  for (j = 0; j != 4; ++j)
  {
    if (a3 && !j || [a4 imageSetOnTextureUnit:j])
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:j];
    }
  }

  if (a3)
  {
    [a3 unsetOnContext:a4 onTextureUnit:0 state:&v9];
  }
}

- (void)renderImageInner:(id)a3 inContext:(id)a4
{
  if (self->mIsSealed)
  {
    if (self->mNeedsToUpdateInSpriteCoordinates)
    {
      [(MRTiledSprite *)self updateInSpriteCoordinates];
    }
  }

  else
  {
    [(MRTiledSprite *)self seal];
  }

  v11 = 0;
  if (a3)
  {
    if (self->mPreservesImageAspectRatio)
    {
      v7 = self->mHalfSize.width / self->mHalfSize.height;
    }

    else
    {
      [a3 aspectRatio];
    }

    *&v7 = v7;
    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v11 state:v7];
  }

  for (i = 0; i != 4; ++i)
  {
    if (a3 && !i || [a4 imageSetOnTextureUnit:i])
    {
      mBasicTextureCoordinates = self->mTextureCoordinates[i];
      if (!mBasicTextureCoordinates)
      {
        mBasicTextureCoordinates = self->mBasicTextureCoordinates;
      }

      [a4 setTextureCoordinatesPointer:mBasicTextureCoordinates onTextureUnit:i];
    }
  }

  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 setInSpriteCoordinatesPointer:self->mInSpriteCoordinates];
  }

  [a4 setVertex2DPointer:self->mVertices];
  [a4 drawTrianglesFromOffset:0 count:{3 * -[NSMutableArray count](self->mTriangles, "count")}];
  [a4 unsetVertexPointer];
  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 unsetInSpriteCoordinatesPointer];
  }

  for (j = 0; j != 4; ++j)
  {
    if (a3 && !j || [a4 imageSetOnTextureUnit:j])
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:j];
    }
  }

  if (a3)
  {
    [a3 unsetOnContext:a4 onTextureUnit:0 state:&v11];
  }
}

- (void)renderImageMiddle:(id)a3 inContext:(id)a4
{
  if (self->mMiddleTriangles)
  {
    if (self->mIsSealed)
    {
      if (self->mNeedsToUpdateInSpriteCoordinates)
      {
        [(MRTiledSprite *)self updateInSpriteCoordinates];
      }
    }

    else
    {
      [(MRTiledSprite *)self seal];
    }

    v11 = 0;
    if (a3)
    {
      if (self->mPreservesImageAspectRatio)
      {
        v7 = self->mHalfSize.width / self->mHalfSize.height;
      }

      else
      {
        [a3 aspectRatio];
      }

      *&v7 = v7;
      [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v11 state:v7];
    }

    for (i = 0; i != 4; ++i)
    {
      if (a3 && !i || [a4 imageSetOnTextureUnit:i])
      {
        mMiddleBasicTextureCoordinates = self->mMiddleTextureCoordinates[i];
        if (!mMiddleBasicTextureCoordinates)
        {
          mMiddleBasicTextureCoordinates = self->mMiddleBasicTextureCoordinates;
        }

        [a4 setTextureCoordinatesPointer:mMiddleBasicTextureCoordinates onTextureUnit:i];
      }
    }

    if (self->mNeedsInSpriteCoordinates)
    {
      [a4 setInSpriteCoordinatesPointer:self->mMiddleInSpriteCoordinates];
    }

    [a4 setVertex2DPointer:self->mMiddleVertices];
    [a4 drawTrianglesFromOffset:0 count:{3 * -[NSMutableArray count](self->mMiddleTriangles, "count")}];
    [a4 unsetVertexPointer];
    if (self->mNeedsInSpriteCoordinates)
    {
      [a4 unsetInSpriteCoordinatesPointer];
    }

    for (j = 0; j != 4; ++j)
    {
      if (a3 && !j || [a4 imageSetOnTextureUnit:j])
      {
        [a4 unsetTextureCoordinatesPointerOnTextureUnit:j];
      }
    }

    if (a3)
    {
      [a3 unsetOnContext:a4 onTextureUnit:0 state:&v11];
    }
  }
}

- (void)renderImageOuter:(id)a3 inContext:(id)a4
{
  if (self->mOuterTriangles)
  {
    if (self->mIsSealed)
    {
      if (self->mNeedsToUpdateInSpriteCoordinates)
      {
        [(MRTiledSprite *)self updateInSpriteCoordinates];
      }
    }

    else
    {
      [(MRTiledSprite *)self seal];
    }

    v11 = 0;
    if (a3)
    {
      if (self->mPreservesImageAspectRatio)
      {
        v7 = self->mHalfSize.width / self->mHalfSize.height;
      }

      else
      {
        [a3 aspectRatio];
      }

      *&v7 = v7;
      [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v11 state:v7];
    }

    for (i = 0; i != 4; ++i)
    {
      if (a3 && !i || [a4 imageSetOnTextureUnit:i])
      {
        mOuterBasicTextureCoordinates = self->mOuterTextureCoordinates[i];
        if (!mOuterBasicTextureCoordinates)
        {
          mOuterBasicTextureCoordinates = self->mOuterBasicTextureCoordinates;
        }

        [a4 setTextureCoordinatesPointer:mOuterBasicTextureCoordinates onTextureUnit:i];
      }
    }

    if (self->mNeedsInSpriteCoordinates)
    {
      [a4 setInSpriteCoordinatesPointer:self->mOuterInSpriteCoordinates];
    }

    [a4 setVertex2DPointer:self->mOuterVertices];
    [a4 drawTrianglesFromOffset:0 count:{3 * -[NSMutableArray count](self->mOuterTriangles, "count")}];
    [a4 unsetVertexPointer];
    if (self->mNeedsInSpriteCoordinates)
    {
      [a4 unsetInSpriteCoordinatesPointer];
    }

    for (j = 0; j != 4; ++j)
    {
      if (a3 && !j || [a4 imageSetOnTextureUnit:j])
      {
        [a4 unsetTextureCoordinatesPointerOnTextureUnit:j];
      }
    }

    if (a3)
    {
      [a3 unsetOnContext:a4 onTextureUnit:0 state:&v11];
    }
  }
}

- (void)renderImage:(id)a3 inContext:(id)a4
{
  if (self->mIsSealed)
  {
    if (self->mNeedsToUpdateInSpriteCoordinates)
    {
      [(MRTiledSprite *)self updateInSpriteCoordinates];
    }
  }

  else
  {
    [(MRTiledSprite *)self seal];
  }

  v15 = 0;
  if (a3)
  {
    if (self->mPreservesImageAspectRatio)
    {
      v7 = self->mHalfSize.width / self->mHalfSize.height;
    }

    else
    {
      [a3 aspectRatio];
    }

    *&v7 = v7;
    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v15 state:v7];
  }

  for (i = 0; i != 4; ++i)
  {
    if (a3 && !i || [a4 imageSetOnTextureUnit:i])
    {
      mBasicTextureCoordinates = self->mTextureCoordinates[i];
      if (!mBasicTextureCoordinates)
      {
        mBasicTextureCoordinates = self->mBasicTextureCoordinates;
      }

      [a4 setTextureCoordinatesPointer:mBasicTextureCoordinates onTextureUnit:i];
    }
  }

  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 setInSpriteCoordinatesPointer:self->mInSpriteCoordinates];
  }

  [a4 setVertex2DPointer:self->mVertices];
  [a4 drawTrianglesFromOffset:0 count:{3 * -[NSMutableArray count](self->mTriangles, "count")}];
  if (self->mMiddleVertices)
  {
    for (j = 0; j != 4; ++j)
    {
      if (a3 && !j || [a4 imageSetOnTextureUnit:j])
      {
        mMiddleBasicTextureCoordinates = self->mMiddleTextureCoordinates[j];
        if (!mMiddleBasicTextureCoordinates)
        {
          mMiddleBasicTextureCoordinates = self->mMiddleBasicTextureCoordinates;
        }

        [a4 setTextureCoordinatesPointer:mMiddleBasicTextureCoordinates onTextureUnit:j];
      }
    }

    if (self->mNeedsInSpriteCoordinates)
    {
      [a4 setInSpriteCoordinatesPointer:self->mMiddleInSpriteCoordinates];
    }

    [a4 setVertex2DPointer:self->mMiddleVertices];
    [a4 drawTrianglesFromOffset:0 count:{3 * -[NSMutableArray count](self->mMiddleTriangles, "count")}];
  }

  if (self->mOuterVertices)
  {
    for (k = 0; k != 4; ++k)
    {
      if (a3 && !k || [a4 imageSetOnTextureUnit:k])
      {
        mOuterBasicTextureCoordinates = self->mOuterTextureCoordinates[k];
        if (!mOuterBasicTextureCoordinates)
        {
          mOuterBasicTextureCoordinates = self->mOuterBasicTextureCoordinates;
        }

        [a4 setTextureCoordinatesPointer:mOuterBasicTextureCoordinates onTextureUnit:k];
      }
    }

    if (self->mNeedsInSpriteCoordinates)
    {
      [a4 setInSpriteCoordinatesPointer:self->mOuterInSpriteCoordinates];
    }

    [a4 setVertex2DPointer:self->mOuterVertices];
    [a4 drawTrianglesFromOffset:0 count:{3 * -[NSMutableArray count](self->mOuterTriangles, "count")}];
  }

  [a4 unsetVertexPointer];
  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 unsetInSpriteCoordinatesPointer];
  }

  for (m = 0; m != 4; ++m)
  {
    if (a3 && !m || [a4 imageSetOnTextureUnit:m])
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:m];
    }
  }

  if (a3)
  {
    [a3 unsetOnContext:a4 onTextureUnit:0 state:&v15];
  }
}

- (void)setTextureCoordinatesFactor:(CGSize)a3 andOffset:(CGPoint)a4 onTextureUnit:(unint64_t)a5
{
  v5 = self + 16 * a5;
  *(v5 + 344) = a3;
  *(v5 + 408) = a4;
}

- (void)setSpriteCoordinatesFactor:(CGSize)a3 andOffset:(CGPoint)a4
{
  v4 = a3.width == self->mInSpriteCoordinatesFactor.width && a3.height == self->mInSpriteCoordinatesFactor.height;
  if (!v4 || (a4.x == self->mInSpriteCoordinatesOffset.x ? (v5 = a4.y == self->mInSpriteCoordinatesOffset.y) : (v5 = 0), !v5))
  {
    self->mInSpriteCoordinatesFactor = a3;
    self->mInSpriteCoordinatesOffset = a4;
    self->mNeedsToUpdateInSpriteCoordinates = 1;
  }
}

- (BOOL)hitAtPoint:(CGPoint)a3 withInverseMatrix:(float)a4[16] localPoint:(CGPoint *)a5
{
  if (self->mHitIsActive)
  {
    v24 = MRMatrix_UnprojectPoint(a4, a3.x, a3.y) - self->mPosition.x;
    v25 = v7 - self->mPosition.y;
    v8 = __sincosf_stret(self->mRotation);
    v9.f64[0] = v24;
    v10 = vcvtq_f64_f32(__PAIR64__(LODWORD(v8.__sinval), LODWORD(v8.__cosval)));
    v11 = vmulq_n_f64(v10, v25);
    v9.f64[1] = -v24;
    v12 = vdivq_f64(vmlaq_f64(vextq_s8(v11, v11, 8uLL), v10, v9), self->mHalfSize);
    __asm
    {
      FMOV            V1.2D, #1.0
      FMOV            V2.2D, #0.5
    }

    v19 = vmulq_f64(vaddq_f64(v12, _Q1), _Q2);
    if (a5)
    {
      *a5 = v19;
    }

    v20.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(_Q1, v19)), *&v19.x).u32[0];
    v21 = vmovn_s64(vcgezq_f64(v19));
    v20.i32[1] = vuzp1_s16(v21, v21).i32[1];
    v22 = vminv_u16(v20);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (BOOL)getVerticesCoordinates:(CGPoint *)(a3 withMatrix:
{
  width = self->mHalfSize.width;
  v8 = __sincosf_stret(self->mRotation);
  v9 = width * v8.__cosval;
  height = self->mHalfSize.height;
  v11 = height * v8.__sinval;
  v12 = width * v8.__sinval;
  v13 = height * v8.__cosval;
  v14 = v9;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  (*a3)[0].x = MRMatrix_ProjectPoint(a4, self->mPosition.x - v9 + v11, self->mPosition.y - v12 - v13);
  (*a3)[0].y = v18;
  (*a3)[1].x = MRMatrix_ProjectPoint(a4, self->mPosition.x + v14 + v15, self->mPosition.y + v16 - v17);
  (*a3)[1].y = v19;
  (*a3)[2].x = MRMatrix_ProjectPoint(a4, self->mPosition.x + v14 - v15, self->mPosition.y + v16 + v17);
  (*a3)[2].y = v20;
  (*a3)[3].x = MRMatrix_ProjectPoint(a4, self->mPosition.x - v14 - v15, self->mPosition.y - v16 + v17);
  (*a3)[3].y = v21;
  return 1;
}

- (void)getOpaquePosition:(CGPoint *)a3 andHalfSize:(CGSize *)a4
{
  x = self->mPosition.x;
  v8 = __sincosf_stret(self->mRotation);
  _D1 = v8.__cosval;
  y = self->mPosition.y;
  mHalfSize = self->mHalfSize;
  __asm
  {
    FMOV            V4.2D, #2.0
    FMOV            V5.2D, #-1.0
  }

  origin = self->mOuterRect.origin;
  v19 = vmulq_f64(mHalfSize, vmlaq_f64(_Q5, _Q4, origin));
  v20 = vmulq_f64(mHalfSize, vmlaq_f64(_Q5, _Q4, vaddq_f64(origin, self->mOuterRect.size)));
  _Q4 = vaddq_f64(v19, v20);
  __asm { FMLA            D0, D1, V4.D[1] }

  a3->x = x + (_Q4.f64[0] * v8.__cosval - _Q4.f64[1] * v8.__sinval) * 0.5;
  a3->y = y + _D0 * 0.5;
  __asm { FMOV            V1.2D, #0.5 }

  *a4 = vmulq_f64(vsubq_f64(v20, v19), _Q1);
}

- (CGPoint)position
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)halfSize
{
  width = self->mHalfSize.width;
  height = self->mHalfSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)innerRect
{
  x = self->mInnerRect.origin.x;
  y = self->mInnerRect.origin.y;
  width = self->mInnerRect.size.width;
  height = self->mInnerRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)outerRect
{
  x = self->mOuterRect.origin.x;
  y = self->mOuterRect.origin.y;
  width = self->mOuterRect.size.width;
  height = self->mOuterRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end