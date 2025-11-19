@interface MRCroppingSpriteVBO
- (BOOL)getVerticesCoordinates:(CGPoint *)(a3 withMatrix:;
- (BOOL)hitAtPoint:(CGPoint)a3 withInverseMatrix:(float)a4[16] localPoint:(CGPoint *)a5;
- (CGPoint)position;
- (CGPoint)spriteCoordinatesOffset;
- (CGRect)innerRect;
- (CGRect)outerRect;
- (CGSize)halfSize;
- (CGSize)spriteCoordinatesFactor;
- (MRCroppingSpriteVBO)init;
- (MRCroppingSpriteVBO)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 context:(id)a6;
- (MRCroppingSpriteVBO)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 innerRect:(CGRect)a6 context:(id)a7;
- (void)fakeRenderInContext:(id)a3 atPosition:(CGPoint)a4 andSize:(CGSize)a5 zRotation:(float)a6;
- (void)getOpaquePosition:(CGPoint *)a3 andHalfSize:(CGSize *)a4;
- (void)initWithPosition:(double)a3 size:(double)a4 zRotation:(double)a5 innerRect:(float)a6 outerRect:(uint64_t)a7 context:(uint64_t)a8;
- (void)renderImageInner:(id)a3 inContext:(id)a4;
- (void)renderImageMiddle:(id)a3 inContext:(id)a4;
- (void)renderImageOuter:(id)a3 inContext:(id)a4;
- (void)reset;
- (void)setInnerRect:(CGRect)a3;
- (void)setOuterRect:(CGRect)a3;
- (void)updateVBOsInContext:(id)a3;
@end

@implementation MRCroppingSpriteVBO

- (MRCroppingSpriteVBO)init
{
  v8.receiver = self;
  v8.super_class = MRCroppingSpriteVBO;
  result = [(MRCroppingSpriteVBO *)&v8 init];
  if (result)
  {
    result->mInnerRect.origin.x = 0.0;
    result->mInnerRect.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    result->mInnerRect.size = _Q0;
    result->mOuterRect.origin.x = 0.0;
    result->mOuterRect.origin.y = 0.0;
    result->mOuterRect.size = _Q0;
    *&result->mPreservesImageAspectRatio = 257;
    result->mSpriteCoordinatesFactor = _Q0;
    *&result->mPositionWasUpdated = 257;
  }

  return result;
}

- (MRCroppingSpriteVBO)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 context:(id)a6
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v12 = [(MRCroppingSpriteVBO *)self init];
  v14 = v12;
  if (v12)
  {
    *&v13 = a5;
    [(MRCroppingSpriteVBO *)v12 fakeRenderInContext:a6 atPosition:x andSize:y zRotation:width, height, v13];
  }

  return v14;
}

- (MRCroppingSpriteVBO)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 innerRect:(CGRect)a6 context:(id)a7
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v13 = [(MRCroppingSpriteVBO *)self init];
  v15 = v13;
  if (v13)
  {
    *&v14 = a5;
    [(MRCroppingSpriteVBO *)v13 fakeRenderInContext:a7 atPosition:x andSize:y zRotation:width, height, v14];
    [(MRCroppingSpriteVBO *)v15 setInnerRect:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  }

  return v15;
}

- (void)initWithPosition:(double)a3 size:(double)a4 zRotation:(double)a5 innerRect:(float)a6 outerRect:(uint64_t)a7 context:(uint64_t)a8
{
  v27 = [a1 init];
  v29 = v27;
  if (v27)
  {
    *&v28 = a6;
    [v27 fakeRenderInContext:a8 atPosition:a2 andSize:a3 zRotation:{a4, a5, v28}];
    [v29 setInnerRect:{a12, a13, a14, a15}];
    [v29 setOuterRect:{a16, a17, a18, a19}];
  }

  return v29;
}

- (void)reset
{
  self->mPosition = CGPointZero;
  self->mHalfSize = CGSizeZero;
  self->mRotation = 0.0;
  self->mPositionWasUpdated = 1;
}

- (void)fakeRenderInContext:(id)a3 atPosition:(CGPoint)a4 andSize:(CGSize)a5 zRotation:(float)a6
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  [a3 localAspectRatio];
  *&y = y / v13;
  v14 = width * 0.5;
  [a3 localAspectRatio];
  v16 = height * 0.5 / v15;
  v17 = *&y;
  v18 = self->mPosition.x != x || self->mPosition.y != v17 || self->mHalfSize.width != v14 || self->mHalfSize.height != v16 || self->mRotation != a6;
  self->mPositionWasUpdated |= v18;
  self->mPosition.x = x;
  self->mPosition.y = v17;
  self->mHalfSize.width = v14;
  self->mHalfSize.height = v16;
  self->mRotation = a6;
}

- (void)setInnerRect:(CGRect)a3
{
  y = 0.0;
  if (a3.origin.x >= 0.0)
  {
    x = a3.origin.x;
  }

  else
  {
    x = 0.0;
  }

  if (a3.origin.y >= 0.0)
  {
    y = a3.origin.y;
  }

  v5 = fmin(a3.origin.x + a3.size.width, 1.0) - x;
  v6 = fmin(a3.origin.y + a3.size.height, 1.0) - y;
  v7 = self->mInnerRect.origin.x != x || self->mInnerRect.origin.y != y || self->mInnerRect.size.width != v5 || self->mInnerRect.size.height != v6;
  self->mRectsWereUpdated |= v7;
  self->mInnerRect.origin.x = x;
  self->mInnerRect.origin.y = y;
  self->mInnerRect.size.width = v5;
  self->mInnerRect.size.height = v6;
}

- (void)setOuterRect:(CGRect)a3
{
  y = 0.0;
  if (a3.origin.x >= 0.0)
  {
    x = a3.origin.x;
  }

  else
  {
    x = 0.0;
  }

  if (a3.origin.y >= 0.0)
  {
    y = a3.origin.y;
  }

  v5 = fmin(a3.origin.x + a3.size.width, 1.0) - x;
  v6 = fmin(a3.origin.y + a3.size.height, 1.0) - y;
  v7 = self->mInnerRect.origin.x != x || self->mInnerRect.origin.y != y || self->mInnerRect.size.width != v5 || self->mInnerRect.size.height != v6;
  self->mRectsWereUpdated |= v7;
  self->mOuterRect.origin.x = x;
  self->mOuterRect.origin.y = y;
  self->mOuterRect.size.width = v5;
  self->mOuterRect.size.height = v6;
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

- (void)updateVBOsInContext:(id)a3
{
  if (self->mHalfSize.width == 0.0 || self->mHalfSize.height == 0.0 || !self->mPositionWasUpdated && !self->mRectsWereUpdated)
  {
    return;
  }

  x = self->mOuterRect.origin.x;
  if (x == 0.0 && self->mOuterRect.origin.y == 0.0 && self->mOuterRect.size.width == 1.0 && self->mOuterRect.size.height == 1.0)
  {
    p_y = &self->mInnerRect.origin.y;
    p_size = &self->mInnerRect.size;
    p_height = &self->mInnerRect.size.height;
    v9 = self->mInnerRect.origin.x;
    x = v9;
  }

  else
  {
    p_y = &self->mOuterRect.origin.y;
    p_size = &self->mOuterRect.size;
    p_height = &self->mOuterRect.size.height;
    v9 = self->mInnerRect.origin.x;
  }

  v149 = x * 2.0 + -1.0;
  v10 = (x + p_size->width) * 2.0 + -1.0;
  v11 = (*p_y + *p_height) * 2.0 + -1.0;
  v12 = v9 * 2.0 + -1.0;
  y = self->mInnerRect.origin.y;
  v144 = *p_y * 2.0 + -1.0;
  v145 = (v9 + self->mInnerRect.size.width) * 2.0 + -1.0;
  v14 = y * 2.0 + -1.0;
  v147 = (y + self->mInnerRect.size.height) * 2.0 + -1.0;
  *&self->mMiddleOffset = 3588;
  if (self->mMeshType == 1)
  {
    v15 = 38;
  }

  else
  {
    v15 = 24;
  }

  self->mNumberOfVertices = v15;
  v16 = malloc_type_malloc(16 * (2 * v15), 0x100004052888210uLL);
  v17 = self->mPosition.x;
  v18 = self->mPosition.y;
  width = self->mHalfSize.width;
  height = self->mHalfSize.height;
  v21 = __sincosf_stret(self->mRotation);
  v22 = v149 * width;
  v23 = v10 * width;
  v24 = height;
  v25 = v144 * height;
  v26 = v11 * height;
  v27 = v12 * width;
  v28 = v14 * height;
  v146 = v17;
  cosval = v21.__cosval;
  sinval = v21.__sinval;
  v148 = v18;
  v31 = v17 + v23 * v21.__cosval;
  v32 = v31 - v25 * v21.__sinval;
  v33 = v18 + v23 * v21.__sinval;
  *&v23 = v33 + v25 * v21.__cosval;
  *&v235[12] = v32;
  v235[13] = LODWORD(v23);
  v34 = v17 + v27 * v21.__cosval;
  v35 = v34 - v28 * v21.__sinval;
  v36 = v18 + v27 * v21.__sinval;
  *&v31 = v31 - v26 * v21.__sinval;
  *&v33 = v33 + v26 * v21.__cosval;
  v235[16] = LODWORD(v31);
  v235[17] = LODWORD(v33);
  v37 = v17 + v22 * v21.__cosval;
  v38 = v37 - v25 * v21.__sinval;
  v39 = v18 + v22 * v21.__sinval;
  v40 = v39 + v25 * v21.__cosval;
  v41 = v37 - v26 * v21.__sinval;
  v42 = v39 + v26 * v21.__cosval;
  v43 = v36 + v28 * v21.__cosval;
  *v235 = v35;
  *&v235[1] = v43;
  v44 = v145 * width;
  v45 = v41;
  *&v42 = v42;
  *&v235[20] = v45;
  v235[21] = LODWORD(v42);
  v46 = v147 * height;
  v143 = v34;
  v47 = v34 - v46 * v21.__sinval;
  v48 = v38;
  *&v42 = v40;
  *&v235[8] = v48;
  v235[9] = LODWORD(v42);
  *&v235[24] = v48;
  v235[25] = LODWORD(v42);
  v49 = v36 + v46 * v21.__cosval;
  *&v235[2] = v47;
  *&v235[3] = v49;
  v50 = v17 + v44 * v21.__cosval;
  v51 = v50 - v28 * v21.__sinval;
  v52 = v18 + v44 * v21.__sinval;
  v53 = v52 + v28 * v21.__cosval;
  *&v235[4] = v51;
  *&v235[5] = v53;
  v54 = v144;
  v55 = v10;
  *&v234[12] = v55;
  v56 = v11;
  *&v234[16] = v55;
  *&v234[17] = v56;
  v57 = v149;
  *&v234[20] = v57;
  *&v234[21] = v56;
  v58 = v50 - v46 * v21.__sinval;
  v59 = v52 + v46 * v21.__cosval;
  *&v235[6] = v58;
  *&v235[7] = v59;
  *&v235[10] = v35;
  *&v235[11] = v43;
  *&v235[14] = v51;
  *&v235[15] = v53;
  *&v235[18] = v58;
  *&v235[19] = v59;
  *&v235[22] = v47;
  *&v235[23] = v49;
  *&v235[26] = v35;
  *&v235[27] = v43;
  *&v234[8] = v57;
  *&v234[24] = v57;
  v60 = v12;
  v150 = v14;
  v61 = v14;
  *v234 = v60;
  *&v234[1] = v61;
  *&v234[9] = v54;
  *&v234[13] = v54;
  *&v234[25] = v54;
  v62 = v21.__cosval * width;
  v63 = v21.__sinval * width;
  v64 = v21.__cosval * height;
  v65 = v21.__sinval * height;
  v66 = v147;
  *&v234[2] = v60;
  *&v234[3] = v66;
  v67 = v145;
  *&v234[4] = v67;
  *&v234[5] = v61;
  *&v234[6] = v67;
  *&v234[7] = v66;
  *&v234[10] = v60;
  *&v234[11] = v61;
  *&v234[14] = v67;
  *&v234[15] = v61;
  *&v234[18] = v67;
  *&v234[19] = v66;
  *&v234[22] = v60;
  *&v234[23] = v66;
  *&v234[26] = v60;
  *&v234[27] = v61;
  if (self->mOuterOffset)
  {
    v68 = 0;
    mSpriteCoordinatesFactor = self->mSpriteCoordinatesFactor;
    mSpriteCoordinatesOffset = self->mSpriteCoordinatesOffset;
    v71 = v16;
    do
    {
      v72 = *&v234[2 * v68];
      __asm { FMOV            V15.2D, #1.0 }

      v78 = vaddq_f64(vcvtq_f64_f32(v72), _Q15);
      __asm { FMOV            V15.2D, #0.5 }

      v80 = vmulq_f64(v78, _Q15);
      *v71 = *&v235[2 * v68];
      v71[1] = vcvt_f32_f64(vmlaq_f64(mSpriteCoordinatesOffset, mSpriteCoordinatesFactor, v80));
      v81 = v71 + 4;
      v71[2] = v72;
      v71[3] = vcvt_f32_f64(v80);
      ++v68;
      mOuterOffset = self->mOuterOffset;
      v71 += 4;
    }

    while (v68 < mOuterOffset);
  }

  else
  {
    LODWORD(mOuterOffset) = 0;
    v81 = v16;
  }

  v83 = v146 - v62;
  v84 = v65 + (v146 - v62);
  v85 = v148 - v63;
  if (self->mMeshType == 1)
  {
    v86 = v62 + v146;
    v151 = -(v150 * v24);
    v87 = v83 + v151 * sinval;
    v88 = v52;
    v89 = v50;
    v90 = v36;
    v91 = v85 + v28 * cosval;
    v190 = v87;
    v191 = v91;
    v92 = -(v147 * v24);
    v93 = v83 + v92 * sinval;
    v94 = v85 + v46 * cosval;
    v194 = v93;
    v186 = v84;
    v187 = (v148 - v63) - v64;
    v188 = v35;
    v189 = v43;
    v192 = v47;
    v193 = v49;
    v195 = v94;
    v196 = v83 - v65;
    v197 = v64 + v85;
    v198 = v83 - v65;
    v199 = v64 + v85;
    v200 = v47;
    v201 = v49;
    v95 = v143 - v65;
    v96 = v90 + v64;
    v202 = v95;
    v203 = v96;
    v204 = v58;
    v205 = v59;
    v97 = v89 - v65;
    v98 = v88 + v64;
    v206 = v97;
    v207 = v98;
    v208 = v86 - v65;
    v209 = v64 + (v63 + v148);
    v210 = v86 - v65;
    v211 = v209;
    v212 = v58;
    v213 = v59;
    *&v92 = v86 + v92 * sinval;
    v99 = (v63 + v148) + v46 * cosval;
    v214 = LODWORD(v92);
    v215 = v99;
    v216 = v51;
    v217 = v53;
    v100 = v86 + v151 * sinval;
    v101 = (v63 + v148) + v28 * cosval;
    v218 = v100;
    v219 = v101;
    v220 = v65 + v86;
    v221 = (v63 + v148) - v64;
    v222 = v65 + v86;
    v223 = v221;
    v224 = v51;
    v225 = v53;
    v102 = v89 + v65;
    v103 = v88 - v64;
    v226 = v102;
    v227 = v103;
    v228 = v35;
    v229 = v43;
    v104 = v143 + v65;
    v105 = v90 - v64;
    v230 = v104;
    v231 = v105;
    v232 = v84;
    v233 = v187;
    __asm { FMOV            V2.2S, #-1.0 }

    v152 = _D2;
    v153 = v60;
    v154 = v61;
    LODWORD(v155) = -1082130432;
    *(&v155 + 1) = v61;
    v156 = v60;
    v157 = v147;
    LODWORD(v158) = -1082130432;
    *(&v158 + 1) = v147;
    __asm { FMOV            V3.4S, #-1.0 }

    v159 = vnegq_f64(_Q3);
    v160 = v60;
    v161 = v147;
    v162 = LODWORD(v60) | 0x3F80000000000000;
    v163 = v145;
    v164 = v147;
    v165 = v145;
    __asm { FMOV            V3.4S, #1.0 }

    v166 = _Q3;
    v167 = 1065353216;
    v168 = v145;
    v169 = v147;
    v170 = 1065353216;
    v171 = v147;
    v172 = v145;
    v173 = v61;
    v174 = 1065353216;
    v176 = vnegq_f64(_Q3);
    v175 = v61;
    v177 = v145;
    v178 = v61;
    v179 = v145;
    v180 = -1082130432;
    v181 = v60;
    v182 = v61;
    v183 = v60;
    v184 = _D2;
    v185 = -1082130432;
    LODWORD(mOuterOffset) = self->mNumberOfVertices;
    if (mOuterOffset != self->mOuterOffset)
    {
      v109 = 0;
      v110 = self->mSpriteCoordinatesFactor.width;
      v111 = self->mSpriteCoordinatesFactor.height;
      v112 = self->mSpriteCoordinatesOffset.x;
      v113 = self->mSpriteCoordinatesOffset.y;
      v114 = &v187;
      v115 = &v152 + 1;
      do
      {
        v81->f32[0] = *(v114 - 1);
        v116 = *v114;
        v114 += 2;
        v81->i32[1] = v116;
        v117 = *(v115 - 1);
        v118 = (v117 + 1.0) * 0.5;
        v119 = v112 + v118 * v110;
        v81[1].f32[0] = v119;
        v120 = *v115;
        v115 += 2;
        v121 = (v120 + 1.0) * 0.5;
        v122 = v113 + v121 * v111;
        v81[1].f32[1] = v122;
        v81[2].f32[0] = v117;
        v123 = v118;
        v81[2].f32[1] = v120;
        v81[3].f32[0] = v123;
        v124 = v121;
        v81[3].f32[1] = v124;
        ++v109;
        mNumberOfVertices = self->mNumberOfVertices;
        v81 += 4;
      }

      while (v109 < mNumberOfVertices - self->mOuterOffset);
LABEL_27:
      LODWORD(mOuterOffset) = mNumberOfVertices;
    }
  }

  else
  {
    v186 = v65 + (v146 - v62);
    v187 = (v148 - v63) - v64;
    v188 = v34 - v28 * v21.__sinval;
    v189 = v36 + v28 * v21.__cosval;
    v190 = v65 + (v62 + v146);
    v191 = (v63 + v148) - v64;
    v192 = v50 - v28 * v21.__sinval;
    v193 = v52 + v28 * v21.__cosval;
    v194 = (v62 + v146) - v65;
    v195 = v64 + (v63 + v148);
    v196 = v50 - v46 * v21.__sinval;
    v197 = v52 + v46 * v21.__cosval;
    v198 = v83 - v65;
    v199 = v64 + v85;
    v200 = v34 - v46 * v21.__sinval;
    v201 = v36 + v46 * v21.__cosval;
    v202 = v186;
    v203 = v187;
    v204 = v188;
    v205 = v189;
    __asm { FMOV            V2.2S, #-1.0 }

    v152 = _D2;
    v153 = v60;
    v154 = v61;
    __asm { FMOV            V3.2S, #1.0 }

    v155 = -_D3;
    v156 = v145;
    v157 = v61;
    v158 = _D3;
    *v159.f64 = v145;
    *(v159.f64 + 1) = v147;
    v159.f64[1] = -_D2;
    v160 = v60;
    v161 = v147;
    v162 = *&_D2;
    v163 = v60;
    v164 = v61;
    if (self->mNumberOfVertices != mOuterOffset)
    {
      v128 = 0;
      v129 = self->mSpriteCoordinatesFactor.width;
      v130 = self->mSpriteCoordinatesFactor.height;
      v131 = self->mSpriteCoordinatesOffset.x;
      v132 = self->mSpriteCoordinatesOffset.y;
      v133 = &v152 + 1;
      do
      {
        *v81 = *(&v186 + 2 * v128);
        v134 = *(v133 - 1);
        v135 = (v134 + 1.0) * 0.5;
        v136 = v131 + v135 * v129;
        v81[1].f32[0] = v136;
        v137 = *v133;
        v133 += 2;
        v138 = (v137 + 1.0) * 0.5;
        v139 = v132 + v138 * v130;
        v81[1].f32[1] = v139;
        v81[2].f32[0] = v134;
        v140 = v135;
        v81[2].f32[1] = v137;
        v81[3].f32[0] = v140;
        v141 = v138;
        v81[3].f32[1] = v141;
        ++v128;
        mNumberOfVertices = self->mNumberOfVertices;
        v81 += 4;
      }

      while (v128 < mNumberOfVertices - self->mOuterOffset);
      goto LABEL_27;
    }
  }

  mVBO = self->mVBO;
  if (!mVBO)
  {
    glGenBuffers(1, &self->mVBO);
    LODWORD(mOuterOffset) = self->mNumberOfVertices;
    mVBO = self->mVBO;
  }

  [a3 uploadBuffer:v16 withSize:(32 * mOuterOffset) toVertexBuffer2D:mVBO usage:{35044, *&v143}];
  free(v16);
  *&self->mPositionWasUpdated = 0;
}

- (void)renderImageInner:(id)a3 inContext:(id)a4
{
  v12 = 0;
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
    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v12 state:v7];
  }

  [(MRCroppingSpriteVBO *)self updateVBOsInContext:a4];
  if (a3)
  {
    mNeedsInSpriteCoordinates = self->mNeedsInSpriteCoordinates | 2;
  }

  else
  {
    mNeedsInSpriteCoordinates = self->mNeedsInSpriteCoordinates;
  }

  for (i = 1; i != 4; ++i)
  {
    v10 = [a4 imageSetOnTextureUnit:i];
    v11 = (1 << i);
    if (!v10)
    {
      v11 = 0;
    }

    mNeedsInSpriteCoordinates |= v11;
  }

  [a4 setVertexBuffer2D:self->mVBO withFeatures:mNeedsInSpriteCoordinates];
  [a4 drawTriangleStripFromOffset:0 count:self->mMiddleOffset];
  [a4 unsetVertexPointer];
  if (a3)
  {
    [a3 unsetOnContext:a4 onTextureUnit:0 state:&v12];
  }
}

- (void)renderImageMiddle:(id)a3 inContext:(id)a4
{
  if (self->mInnerRect.origin.x != self->mOuterRect.origin.x || self->mInnerRect.origin.y != self->mOuterRect.origin.y || self->mInnerRect.size.width != self->mOuterRect.size.width || self->mInnerRect.size.height != self->mOuterRect.size.height)
  {
    v12 = 0;
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
      [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v12 state:v7];
    }

    [(MRCroppingSpriteVBO *)self updateVBOsInContext:a4];
    if (a3)
    {
      mNeedsInSpriteCoordinates = self->mNeedsInSpriteCoordinates | 2;
    }

    else
    {
      mNeedsInSpriteCoordinates = self->mNeedsInSpriteCoordinates;
    }

    for (i = 1; i != 4; ++i)
    {
      v10 = [a4 imageSetOnTextureUnit:i];
      v11 = (1 << i);
      if (!v10)
      {
        v11 = 0;
      }

      mNeedsInSpriteCoordinates |= v11;
    }

    [a4 setVertexBuffer2D:self->mVBO withFeatures:mNeedsInSpriteCoordinates];
    [a4 drawTriangleStripFromOffset:self->mMiddleOffset count:self->mOuterOffset - self->mMiddleOffset];
    [a4 unsetVertexPointer];
    if (a3)
    {
      [a3 unsetOnContext:a4 onTextureUnit:0 state:&v12];
    }
  }
}

- (void)renderImageOuter:(id)a3 inContext:(id)a4
{
  if (self->mInnerRect.origin.x != 0.0 || self->mInnerRect.origin.y != 0.0 || self->mInnerRect.size.width != 1.0 || self->mInnerRect.size.height != 1.0)
  {
    v12 = 0;
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
      [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v12 state:v7];
    }

    [(MRCroppingSpriteVBO *)self updateVBOsInContext:a4];
    if (a3)
    {
      mNeedsInSpriteCoordinates = self->mNeedsInSpriteCoordinates | 2;
    }

    else
    {
      mNeedsInSpriteCoordinates = self->mNeedsInSpriteCoordinates;
    }

    for (i = 1; i != 4; ++i)
    {
      v10 = [a4 imageSetOnTextureUnit:i];
      v11 = (1 << i);
      if (!v10)
      {
        v11 = 0;
      }

      mNeedsInSpriteCoordinates |= v11;
    }

    [a4 setVertexBuffer2D:self->mVBO withFeatures:mNeedsInSpriteCoordinates];
    [a4 drawTriangleStripFromOffset:self->mOuterOffset count:self->mNumberOfVertices - self->mOuterOffset];
    [a4 unsetVertexPointer];
    if (a3)
    {
      [a3 unsetOnContext:a4 onTextureUnit:0 state:&v12];
    }
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

- (CGSize)spriteCoordinatesFactor
{
  width = self->mSpriteCoordinatesFactor.width;
  height = self->mSpriteCoordinatesFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)spriteCoordinatesOffset
{
  x = self->mSpriteCoordinatesOffset.x;
  y = self->mSpriteCoordinatesOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end