@interface MRCroppingSprite
+ (void)renderDumbImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7;
+ (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 withReferenceAspectRatio:(float)a7 andJustifications:(CGPoint)a8;
+ (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7;
+ (void)renderImage:(id)a3 withMask:(id)a4 inContext:(id)a5 atPosition:(CGPoint)a6 andSize:(CGSize)a7 zRotation:(float)a8;
- (BOOL)getVerticesCoordinates:(CGPoint *)(a3 withMatrix:;
- (BOOL)hitAtPoint:(CGPoint)a3 withInverseMatrix:(float)a4[16] localPoint:(CGPoint *)a5;
- (CGPoint)position;
- (CGPoint)spriteCoordinatesOffset;
- (CGRect)innerRect;
- (CGRect)outerRect;
- (CGSize)halfSize;
- (CGSize)spriteCoordinatesFactor;
- (MRCroppingSprite)init;
- (MRCroppingSprite)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 context:(id)a6;
- (MRCroppingSprite)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 innerRect:(CGRect)a6 context:(id)a7;
- (void)fakeRenderInContext:(id)a3 atPosition:(CGPoint)a4 andSize:(CGSize)a5 zRotation:(float)a6;
- (void)getOpaquePosition:(CGPoint *)a3 andHalfSize:(CGSize *)a4;
- (void)initWithPosition:(double)a3 size:(double)a4 zRotation:(double)a5 innerRect:(float)a6 outerRect:(uint64_t)a7 context:(uint64_t)a8;
- (void)renderDumbImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7;
- (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 withReferenceAspectRatio:(float)a7 andJustifications:(CGPoint)a8;
- (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7;
- (void)renderImage:(id)a3 withMask:(id)a4 inContext:(id)a5 atPosition:(CGPoint)a6 andSize:(CGSize)a7 zRotation:(float)a8;
- (void)renderImageInner:(id)a3 inContext:(id)a4;
- (void)renderImageInner:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7;
- (void)renderImageMiddle:(id)a3 inContext:(id)a4;
- (void)renderImageMiddle:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7;
- (void)renderImageOuter:(id)a3 inContext:(id)a4;
- (void)renderImageOuter:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7;
- (void)reset;
- (void)setInnerRect:(CGRect)a3;
- (void)setOuterRect:(CGRect)a3;
@end

@implementation MRCroppingSprite

- (MRCroppingSprite)init
{
  v8.receiver = self;
  v8.super_class = MRCroppingSprite;
  result = [(MRCroppingSprite *)&v8 init];
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
  }

  return result;
}

- (MRCroppingSprite)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 context:(id)a6
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v12 = [(MRCroppingSprite *)self init];
  v14 = v12;
  if (v12)
  {
    *&v13 = a5;
    [(MRCroppingSprite *)v12 fakeRenderInContext:a6 atPosition:x andSize:y zRotation:width, height, v13];
  }

  return v14;
}

- (MRCroppingSprite)initWithPosition:(CGPoint)a3 size:(CGSize)a4 zRotation:(float)a5 innerRect:(CGRect)a6 context:(id)a7
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v13 = [(MRCroppingSprite *)self init];
  v15 = v13;
  if (v13)
  {
    *&v14 = a5;
    [(MRCroppingSprite *)v13 fakeRenderInContext:a7 atPosition:x andSize:y zRotation:width, height, v14];
    [(MRCroppingSprite *)v15 setInnerRect:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
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
}

- (void)fakeRenderInContext:(id)a3 atPosition:(CGPoint)a4 andSize:(CGSize)a5 zRotation:(float)a6
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  [a3 localAspectRatio];
  v17 = y / v12;
  [a3 localAspectRatio];
  v14.f64[0] = x;
  v14.f64[1] = v17;
  self->mPosition = vcvtq_f64_f32(vcvt_f32_f64(v14));
  v14.f64[0] = width * 0.5;
  v14.f64[1] = height * 0.5 / v13;
  self->mHalfSize = vcvtq_f64_f32(vcvt_f32_f64(v14));
  self->mRotation = a6;
  if (self->_usesOwnMatrixForHitTest)
  {
    v15 = [a3 modelViewMatrix];
    v16 = [a3 projectionMatrix];

    MRMatrix_MultiplyWithMatrix(v15, v16, self->mModelViewProjectionMatrix);
  }
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

  self->mInnerRect.origin.x = x;
  self->mInnerRect.origin.y = y;
  self->mInnerRect.size.width = fmin(a3.origin.x + a3.size.width, 1.0) - x;
  self->mInnerRect.size.height = fmin(a3.origin.y + a3.size.height, 1.0) - y;
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

  self->mOuterRect.origin.x = x;
  self->mOuterRect.origin.y = y;
  self->mOuterRect.size.width = fmin(a3.origin.x + a3.size.width, 1.0) - x;
  self->mOuterRect.size.height = fmin(a3.origin.y + a3.size.height, 1.0) - y;
}

- (void)getOpaquePosition:(CGPoint *)a3 andHalfSize:(CGSize *)a4
{
  x = self->mOuterRect.origin.x;
  y = self->mOuterRect.origin.y;
  width = self->mHalfSize.width;
  height = self->mHalfSize.height;
  v11 = width * (x * 2.0 + -1.0);
  v12 = width * ((x + self->mOuterRect.size.width) * 2.0 + -1.0);
  v13 = height * (y * 2.0 + -1.0);
  v14 = height * ((y + self->mOuterRect.size.height) * 2.0 + -1.0);
  v15 = self->mPosition.x;
  mRotation = self->mRotation;
  v17 = __sincosf_stret(mRotation);
  a3->x = v15 + ((v11 + v12) * v17.__cosval - (v13 + v14) * v17.__sinval) * 0.5;
  v18 = self->mPosition.y;
  v19 = self->mRotation;
  v20 = __sincosf_stret(v19);
  a3->y = v18 + ((v11 + v12) * v20.__sinval + (v13 + v14) * v20.__cosval) * 0.5;
  a4->width = (v12 - v11) * 0.5;
  a4->height = (v14 - v13) * 0.5;
}

- (void)renderDumbImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  [MRCroppingSprite fakeRenderInContext:"fakeRenderInContext:atPosition:andSize:zRotation:" atPosition:a4 andSize:? zRotation:?];
  *&v14 = a7;

  [MRCroppingSprite renderDumbImage:a3 inContext:a4 atPosition:x andSize:y zRotation:width, height, v14];
}

- (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  [MRCroppingSprite fakeRenderInContext:"fakeRenderInContext:atPosition:andSize:zRotation:" atPosition:a4 andSize:? zRotation:?];
  *&v14 = a7;

  [MRCroppingSprite renderImage:a3 inContext:a4 atPosition:x andSize:y zRotation:width, height, v14];
}

- (void)renderImage:(id)a3 withMask:(id)a4 inContext:(id)a5 atPosition:(CGPoint)a6 andSize:(CGSize)a7 zRotation:(float)a8
{
  height = a7.height;
  width = a7.width;
  y = a6.y;
  x = a6.x;
  [MRCroppingSprite fakeRenderInContext:"fakeRenderInContext:atPosition:andSize:zRotation:" atPosition:a5 andSize:? zRotation:?];
  *&v16 = a8;

  [MRCroppingSprite renderImage:a3 withMask:a4 inContext:a5 atPosition:x andSize:y zRotation:width, height, v16];
}

- (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 withReferenceAspectRatio:(float)a7 andJustifications:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  height = a6.height;
  width = a6.width;
  v13 = a5.y;
  v14 = a5.x;
  [(MRCroppingSprite *)self fakeRenderInContext:a4 atPosition:a5.x andSize:a5.y zRotation:a6.width, a6.height, 0.0];
  *&v17 = a7;

  [MRCroppingSprite renderImage:a3 inContext:a4 atPosition:v14 andSize:v13 withReferenceAspectRatio:width andJustifications:height, v17, x, y];
}

- (void)renderImageInner:(id)a3 inContext:(id)a4
{
  y = self->mPosition.y;
  width = self->mHalfSize.width;
  height = self->mHalfSize.height;
  x = self->mPosition.x;
  mRotation = self->mRotation;
  v10 = __sincosf_stret(mRotation);
  v20 = -1.0;
  v11 = self->mInnerRect.origin.x;
  v12 = self->mInnerRect.origin.y;
  v13 = v11 * 2.0 + -1.0;
  v14 = (v11 + self->mInnerRect.size.width) * 2.0 + -1.0;
  v15 = v12 * 2.0 + -1.0;
  v16 = (v12 + self->mInnerRect.size.height) * 2.0 + -1.0;
  v17 = width;
  v18 = height;
  *&v20 = v13;
  v19 = v15;
  v62[0] = LODWORD(v20);
  *&v62[1] = v19;
  *&v11 = v16;
  v62[2] = LODWORD(v20);
  v62[3] = LODWORD(v11);
  *&v20 = v14;
  v62[4] = LODWORD(v20);
  *&v62[5] = v19;
  v62[6] = LODWORD(v20);
  v62[7] = LODWORD(v11);
  v58 = 0;
  if (a3)
  {
    if (self->mPreservesImageAspectRatio)
    {
      *&v20 = width / height;
    }

    else
    {
      [a3 aspectRatio];
      *&v20 = v20;
    }

    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v58 state:v20];
    [a4 setTextureCoordinatesPointer:v62 onTextureUnit:0];
  }

  v21 = 0;
  *&v22 = x;
  *&v23 = y;
  v53 = __PAIR64__(v23, v22);
  v24 = v13 * v17;
  v25 = v14 * v17;
  v26 = v15 * v18;
  v27 = v16 * v18;
  __asm { FMOV            V1.2D, #1.0 }

  v33 = 1;
  __asm { FMOV            V0.2D, #0.5 }

  v55 = _Q0;
  v57 = _Q1;
  do
  {
    v35 = [a4 imageSetOnTextureUnit:{v33, v53}];
    if (v35)
    {
      if ([v35 preservesAspectRatio])
      {
        v36 = v62;
      }

      else
      {
        for (i = 0; i != 8; i += 4)
        {
          v36 = v61;
          *&v61[i * 4] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(*&v62[i]), v57), v55)), vmulq_f64(vaddq_f64(vcvt_hight_f64_f32(*&v62[i]), v57), v55));
        }
      }

      v21 |= 1 << v33;
      [a4 setTextureCoordinatesPointer:v36 onTextureUnit:v33];
    }

    ++v33;
  }

  while (v33 != 4);
  if (self->mNeedsInSpriteCoordinates)
  {
    for (j = 0; j != 8; ++j)
    {
      if (j)
      {
        v39 = 128;
      }

      else
      {
        v39 = 120;
      }

      v40 = *(&self->super.isa + v39);
      if (j)
      {
        v41 = 144;
      }

      else
      {
        v41 = 136;
      }

      v42 = *(&self->super.isa + v41) + (*&v62[j] + 1.0) * 0.5 * v40;
      v60[j] = v42;
    }

    [a4 setInSpriteCoordinatesPointer:{v60, 1.0, 0.5}];
  }

  v43 = *&v53 + v24 * v10.__cosval;
  v44 = v43 - v26 * v10.__sinval;
  v45 = *(&v53 + 1) + v24 * v10.__sinval;
  v46 = v45 + v26 * v10.__cosval;
  *v59 = v44;
  *&v59[1] = v46;
  *&v43 = v43 - v27 * v10.__sinval;
  v47 = v45 + v27 * v10.__cosval;
  v59[2] = LODWORD(v43);
  *&v59[3] = v47;
  v48 = *&v53 + v25 * v10.__cosval;
  *&v43 = v48 - v26 * v10.__sinval;
  v49 = *(&v53 + 1) + v25 * v10.__sinval;
  v50 = v49 + v26 * v10.__cosval;
  v59[4] = LODWORD(v43);
  *&v59[5] = v50;
  *&v48 = v48 - v27 * v10.__sinval;
  v51 = v49 + v27 * v10.__cosval;
  v59[6] = LODWORD(v48);
  *&v59[7] = v51;
  [a4 setVertex2DPointer:v59];
  [a4 drawTriangleStripFromOffset:0 count:4];
  [a4 unsetVertexPointer];
  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 unsetInSpriteCoordinatesPointer];
  }

  v52 = -3;
  do
  {
    if ((v21 & (1 << (v52 + 4))) != 0)
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:1];
    }
  }

  while (!__CFADD__(v52++, 1));
  if (a3)
  {
    [a4 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [a3 unsetOnContext:a4 onTextureUnit:0 state:&v58];
  }
}

- (void)renderImageMiddle:(id)a3 inContext:(id)a4
{
  x = self->mInnerRect.origin.x;
  v8 = self->mOuterRect.origin.x;
  if (x == v8)
  {
    y = self->mInnerRect.origin.y;
    v10 = self->mOuterRect.origin.y;
    if (y == v10 && self->mInnerRect.size.width == self->mOuterRect.size.width && self->mInnerRect.size.height == self->mOuterRect.size.height)
    {
      return;
    }
  }

  else
  {
    v10 = self->mOuterRect.origin.y;
    y = self->mInnerRect.origin.y;
  }

  v11 = self->mPosition.y;
  width = self->mHalfSize.width;
  height = self->mHalfSize.height;
  v135 = self->mPosition.x;
  mRotation = self->mRotation;
  v17 = __sincosf_stret(mRotation);
  v18 = v8 * 2.0 + -1.0;
  v19 = (v8 + self->mOuterRect.size.width) * 2.0 + -1.0;
  v20 = v10 * 2.0 + -1.0;
  v21 = (v10 + self->mOuterRect.size.height) * 2.0 + -1.0;
  v22 = x * 2.0 + -1.0;
  v23 = (x + self->mInnerRect.size.width) * 2.0 + -1.0;
  v24 = y * 2.0 + -1.0;
  v25 = (y + self->mInnerRect.size.height) * 2.0 + -1.0;
  mMeshType = self->mMeshType;
  v137 = v11;
  if (mMeshType == 3)
  {
    v30 = v19;
    v28 = v24;
    v27 = v23;
    v32 = v25;
    v37 = v22;
    v29 = v28;
    v33 = v27;
    v34 = v32;
    v35 = v27;
    v36 = v32;
    v31 = v28;
    v38 = v37;
    v39 = v28;
    v41 = v28;
    v40 = v18;
    v143[0] = v30;
    v42 = v37;
    v43 = v32;
    v44 = v40;
    v45 = v32;
  }

  else if (mMeshType == 2)
  {
    v27 = v22;
    v28 = v20;
    v29 = v24;
    v30 = v23;
    v31 = v25;
    v32 = v28;
    v33 = v30;
    v34 = v29;
    v35 = v30;
    v36 = v29;
    v37 = v27;
    v38 = v27;
    v39 = v31;
    v40 = v27;
    v41 = v21;
    v143[0] = v27;
    v42 = v30;
    v43 = v31;
    v44 = v30;
    v45 = v41;
  }

  else
  {
    v28 = v20;
    v27 = v22;
    v29 = v24;
    v30 = v19;
    v33 = v23;
    v36 = v21;
    v31 = v25;
    v32 = v28;
    v34 = v29;
    v35 = v30;
    v37 = v33;
    v39 = v36;
    v40 = v27;
    v41 = v31;
    v38 = v18;
    v143[0] = v38;
    v42 = v38;
    v43 = v28;
    v44 = v27;
    v45 = v29;
  }

  v46 = width;
  v47 = height;
  v143[1] = v28;
  v143[2] = v27;
  v143[3] = v29;
  v143[4] = v30;
  v143[5] = v32;
  v143[6] = v33;
  v143[7] = v34;
  v143[8] = v35;
  v143[9] = v36;
  v143[10] = v37;
  v143[11] = v31;
  v143[12] = v38;
  v143[13] = v39;
  v143[14] = v40;
  v143[15] = v41;
  v143[16] = v42;
  v143[17] = v43;
  v143[18] = v44;
  v143[19] = v45;
  v139 = 0;
  if (a3)
  {
    *&v16 = height;
    *&v15 = width;
    v131 = v21;
    v133 = v23;
    v48 = v25;
    v49 = v24;
    v50 = v22;
    v51 = v20;
    v52 = v19;
    v53 = v8 * 2.0 + -1.0;
    if (self->mPreservesImageAspectRatio)
    {
      *&v15 = *&v15 / *&v16;
    }

    else
    {
      [a3 aspectRatio];
      *&v15 = v15;
    }

    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v139 state:v15];
    [a4 setTextureCoordinatesPointer:v143 onTextureUnit:0];
    v18 = v53;
    v19 = v52;
    v20 = v51;
    v22 = v50;
    v24 = v49;
    v25 = v48;
    v21 = v131;
    v23 = v133;
  }

  v54 = 0;
  v55 = v135;
  v132 = v55;
  v56 = v137;
  v134 = v56;
  v57 = v18 * v46;
  v130 = v19 * v46;
  v58 = v20 * v47;
  v59 = v21 * v47;
  v60 = v22 * v46;
  v61 = v23 * v46;
  __asm { FMOV            V1.2D, #1.0 }

  v67 = 1;
  v68 = v24 * v47;
  v69 = v25 * v47;
  __asm { FMOV            V0.2D, #0.5 }

  v136 = _Q0;
  v138 = _Q1;
  do
  {
    v71 = [a4 imageSetOnTextureUnit:{v67, *&v130}];
    if (v71)
    {
      if ([v71 preservesAspectRatio])
      {
        v72 = v143;
      }

      else
      {
        for (i = 0; i != 20; i += 4)
        {
          v72 = v142;
          *&v142[i * 4] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(*&v143[i]), v138), v136)), vmulq_f64(vaddq_f64(vcvt_hight_f64_f32(*&v143[i]), v138), v136));
        }
      }

      v54 |= 1 << v67;
      [a4 setTextureCoordinatesPointer:v72 onTextureUnit:v67];
    }

    ++v67;
  }

  while (v67 != 4);
  if (self->mNeedsInSpriteCoordinates)
  {
    for (j = 0; j != 20; ++j)
    {
      if (j)
      {
        v75 = 128;
      }

      else
      {
        v75 = 120;
      }

      v76 = *(&self->super.isa + v75);
      if (j)
      {
        v77 = 144;
      }

      else
      {
        v77 = 136;
      }

      v78 = *(&self->super.isa + v77) + (v143[j] + 1.0) * 0.5 * v76;
      v141[j] = v78;
    }

    [a4 setInSpriteCoordinatesPointer:{v141, 1.0, 0.5}];
  }

  v79 = self->mMeshType;
  v80 = v132;
  cosval = v17.__cosval;
  sinval = v17.__sinval;
  v83 = v134;
  if (v79 == 3)
  {
    v104 = v80 + v130 * cosval;
    v85 = v104 - v68 * sinval;
    v105 = v83 + v130 * sinval;
    v87 = v105 + v68 * cosval;
    v106 = v80 + v61 * cosval;
    v88 = v106 - v68 * sinval;
    v107 = v83 + v61 * sinval;
    v89 = v107 + v68 * cosval;
    v91 = v104 - v69 * sinval;
    v93 = v105 + v69 * cosval;
    v94 = v106 - v69 * sinval;
    v95 = v107 + v69 * cosval;
    v108 = v80 + v60 * cosval;
    v96 = v108 - v68 * sinval;
    v109 = v83 + v60 * sinval;
    v97 = v109 + v68 * cosval;
    v110 = v80 + v57 * cosval;
    v98 = v110 - v68 * sinval;
    v111 = v83 + v57 * sinval;
    v99 = v111 + v68 * cosval;
    v100 = v108 - v69 * sinval;
    v101 = v109 + v69 * cosval;
    v102 = v110 - v69 * sinval;
    v103 = v111 + v69 * cosval;
  }

  else
  {
    if (v79 != 2)
    {
      v117 = v80 + v57 * cosval;
      v100 = v117 - v58 * sinval;
      v118 = v83 + v57 * sinval;
      v87 = v118 + v58 * cosval;
      v119 = v80 + v60 * cosval;
      v88 = v119 - v68 * sinval;
      v120 = v83 + v60 * sinval;
      v89 = v120 + v68 * cosval;
      v121 = v80 + v130 * cosval;
      v91 = v121 - v58 * sinval;
      v122 = v83 + v130 * sinval;
      v93 = v122 + v58 * cosval;
      v123 = v80 + v61 * cosval;
      v94 = v123 - v68 * sinval;
      v124 = v83 + v61 * sinval;
      v95 = v124 + v68 * cosval;
      v113 = v121 - v59 * sinval;
      v114 = v122 + v59 * cosval;
      v96 = v123 - v69 * sinval;
      v97 = v124 + v69 * cosval;
      v115 = v117 - v59 * sinval;
      v116 = v118 + v59 * cosval;
      v98 = v119 - v69 * sinval;
      v99 = v120 + v69 * cosval;
      *v140 = v100;
      v101 = v87;
      v102 = v88;
      v112 = v89;
      goto LABEL_41;
    }

    v84 = v80 + v60 * cosval;
    v85 = v84 - v58 * sinval;
    v86 = v83 + v60 * sinval;
    v87 = v86 + v58 * cosval;
    v88 = v84 - v68 * sinval;
    v89 = v86 + v68 * cosval;
    v90 = v80 + v61 * cosval;
    v91 = v90 - v58 * sinval;
    v92 = v83 + v61 * sinval;
    v93 = v92 + v58 * cosval;
    v94 = v90 - v68 * sinval;
    v95 = v92 + v68 * cosval;
    v96 = v84 - v69 * sinval;
    v97 = v86 + v69 * cosval;
    v98 = v84 - v59 * sinval;
    v99 = v86 + v59 * cosval;
    v100 = v90 - v69 * sinval;
    v101 = v92 + v69 * cosval;
    v102 = v90 - v59 * sinval;
    v103 = v92 + v59 * cosval;
  }

  v112 = v103;
  *v140 = v85;
  v113 = v94;
  v114 = v95;
  v115 = v96;
  v116 = v97;
LABEL_41:
  v125 = v99;
  v126 = v98;
  v127 = v93;
  *&v140[1] = v87;
  *&v140[2] = v88;
  v128 = v91;
  *&v140[3] = v89;
  *&v140[4] = v128;
  *&v140[5] = v127;
  *&v140[6] = v94;
  *&v140[7] = v95;
  *&v140[8] = v113;
  *&v140[9] = v114;
  *&v140[10] = v96;
  *&v140[11] = v97;
  *&v140[12] = v115;
  *&v140[13] = v116;
  *&v140[14] = v126;
  *&v140[15] = v125;
  *&v140[16] = v100;
  *&v140[17] = v101;
  *&v140[18] = v102;
  *&v140[19] = v112;
  [a4 setVertex2DPointer:v140];
  [a4 drawTriangleStripFromOffset:0 count:10];
  [a4 unsetVertexPointer];
  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 unsetInSpriteCoordinatesPointer];
  }

  v129 = -3;
  do
  {
    if ((v54 & (1 << (v129 + 4))) != 0)
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:1];
    }
  }

  while (!__CFADD__(v129++, 1));
  if (a3)
  {
    [a4 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [a3 unsetOnContext:a4 onTextureUnit:0 state:&v139];
  }
}

- (void)renderImageOuter:(id)a3 inContext:(id)a4
{
  if (self->mInnerRect.origin.x == 0.0 && self->mInnerRect.origin.y == 0.0 && self->mInnerRect.size.width == 1.0 && self->mInnerRect.size.height == 1.0)
  {
    return;
  }

  x = self->mOuterRect.origin.x;
  if (x == 0.0 && self->mOuterRect.origin.y == 0.0 && self->mOuterRect.size.width == 1.0 && self->mOuterRect.size.height == 1.0)
  {
    v8 = 1;
    v9 = 176;
    v10 = 168;
    v11 = 160;
    x = self->mInnerRect.origin.x;
  }

  else
  {
    v8 = 0;
    v9 = 208;
    v10 = 200;
    v11 = 192;
  }

  v12 = *(&self->super.isa + v11);
  v13 = *(&self->super.isa + v10);
  v14 = *(&self->super.isa + v9);
  width = self->mHalfSize.width;
  v192.f64[0] = self->mPosition.y;
  v16 = width;
  height = self->mHalfSize.height;
  mRotation = self->mRotation;
  v191.f64[0] = self->mPosition.x;
  *&mRotation = mRotation;
  v19 = __sincosf_stret(*&mRotation);
  cosval = v19.__cosval;
  sinval = v19.__sinval;
  v187 = &v179;
  v20.f64[0] = -1.0;
  v21 = x * 2.0 + -1.0;
  v22 = (x + v13) * 2.0 + -1.0;
  v23 = v12 * 2.0 + -1.0;
  v24 = (v12 + v14) * 2.0 + -1.0;
  if (self->mMeshType == 1)
  {
    v25 = 48;
  }

  else
  {
    v25 = 20;
  }

  v26 = &v179 - (4 * v25);
  mMeshType = self->mMeshType;
  if (mMeshType == 3)
  {
    v47 = v12 * 2.0 + -1.0;
    v20.f64[0] = (v12 + v14) * 2.0 + -1.0;
    if ((v8 & 1) == 0)
    {
      y = self->mInnerRect.origin.y;
      v47 = y * 2.0 + -1.0;
      v20.f64[0] = (y + self->mInnerRect.size.height) * 2.0 + -1.0;
    }

    *v26 = -1082130432;
    v181 = v47;
    v49 = v47;
    v179 = v20.f64[0];
    *v20.f64 = v20.f64[0];
    *(v26 + 1) = v49;
    v50 = v21;
    v51 = v22;
    *(v26 + 2) = -1082130432;
    *(v26 + 3) = LODWORD(v20.f64[0]);
    *(v26 + 4) = v50;
    *(v26 + 5) = v49;
    *(v26 + 6) = v50;
    *(v26 + 7) = LODWORD(v20.f64[0]);
    *(v26 + 8) = v50;
    *(v26 + 9) = LODWORD(v20.f64[0]);
    *(v26 + 10) = v51;
    *(v26 + 11) = v49;
    *(v26 + 12) = v51;
    *(v26 + 13) = v49;
    *(v26 + 14) = v51;
    *(v26 + 15) = LODWORD(v20.f64[0]);
    *(v26 + 16) = 1065353216;
    *(v26 + 18) = 1065353216;
    v39 = 76;
    v182 = v22;
    v180 = x * 2.0 + -1.0;
    *(v26 + 17) = v49;
  }

  else if (mMeshType == 2)
  {
    v40 = v22;
    v41 = x * 2.0 + -1.0;
    if ((v8 & 1) == 0)
    {
      v42 = self->mInnerRect.origin.x;
      v41 = v42 * 2.0 + -1.0;
      v20.f64[0] = v42 + self->mInnerRect.size.width;
      v40 = v20.f64[0] * 2.0 + -1.0;
    }

    v180 = v41;
    v43 = v41;
    *v26 = v43;
    v44 = v23;
    *(v26 + 1) = -1082130432;
    v182 = v40;
    v45 = v40;
    v46 = v24;
    *(v26 + 2) = v43;
    *(v26 + 3) = v44;
    *(v26 + 4) = v45;
    *(v26 + 5) = -1082130432;
    *(v26 + 6) = v45;
    *(v26 + 7) = v44;
    *(v26 + 8) = v45;
    *(v26 + 9) = v44;
    *(v26 + 10) = v43;
    *(v26 + 11) = v46;
    *(v26 + 12) = v43;
    *(v26 + 13) = v46;
    *(v26 + 14) = v43;
    *(v26 + 15) = 1065353216;
    LODWORD(v20.f64[0]) = 1.0;
    *(v26 + 16) = v45;
    *(v26 + 17) = v46;
    v39 = 76;
    v181 = v12 * 2.0 + -1.0;
    v179 = (v12 + v14) * 2.0 + -1.0;
    *(v26 + 18) = v45;
  }

  else
  {
    v28 = v21;
    v29 = v24;
    v30 = v22;
    __asm { FMOV            V2.2S, #-1.0 }

    if (mMeshType == 1)
    {
      v36 = v23;
      *v26 = _D2;
      *(v26 + 2) = v28;
      *(v26 + 3) = v36;
      *(v26 + 4) = -1082130432;
      *(v26 + 5) = v36;
      *(v26 + 6) = v28;
      *(v26 + 7) = v29;
      *(v26 + 8) = -1082130432;
      *(v26 + 9) = v29;
      __asm { FMOV            V0.4S, #-1.0 }

      *(v26 + 40) = vnegq_f64(_Q0);
      *(v26 + 14) = v28;
      *(v26 + 15) = v29;
      *(v26 + 16) = v28;
      *(v26 + 17) = 1065353216;
      *(v26 + 18) = v30;
      *(v26 + 19) = v29;
      *(v26 + 20) = v30;
      __asm { FMOV            V0.4S, #1.0 }

      *(v26 + 84) = _Q0;
      *(v26 + 25) = 1065353216;
      *(v26 + 26) = v30;
      *(v26 + 27) = v29;
      *(v26 + 28) = 1065353216;
      *(v26 + 29) = v29;
      *(v26 + 30) = v30;
      *(v26 + 31) = v36;
      *(v26 + 32) = 1065353216;
      *(v26 + 33) = v36;
      v20 = vnegq_f64(_Q0);
      *(v26 + 136) = v20;
      *(v26 + 38) = v30;
      *(v26 + 39) = v36;
      *(v26 + 40) = v30;
      *(v26 + 41) = -1082130432;
      LODWORD(v20.f64[0]) = -1.0;
      *(v26 + 42) = v28;
      *(v26 + 43) = v36;
      v39 = 188;
      v181 = v12 * 2.0 + -1.0;
      v182 = v22;
      *(v26 + 44) = v28;
      v179 = (v12 + v14) * 2.0 + -1.0;
      v180 = x * 2.0 + -1.0;
      *(v26 + 180) = _D2;
    }

    else
    {
      *v20.f64 = v23;
      *v26 = _D2;
      *(v26 + 2) = v28;
      *(v26 + 3) = LODWORD(v20.f64[0]);
      __asm { FMOV            V5.2S, #1.0 }

      *(v26 + 2) = -_D5;
      *(v26 + 6) = v30;
      *(v26 + 7) = LODWORD(v20.f64[0]);
      *(v26 + 4) = _D5;
      *(v26 + 10) = v30;
      *(v26 + 11) = v29;
      *(v26 + 6) = -_D2;
      *(v26 + 14) = v28;
      *(v26 + 15) = v29;
      v39 = 76;
      v181 = v12 * 2.0 + -1.0;
      v182 = v22;
      *(v26 + 8) = _D2;
      v179 = (v12 + v14) * 2.0 + -1.0;
      v180 = x * 2.0 + -1.0;
      *(v26 + 18) = v28;
    }
  }

  v53 = v16;
  v54 = height;
  *&v26[v39] = LODWORD(v20.f64[0]);
  v193 = 0;
  if (a3)
  {
    v55 = v12 * 2.0 + -1.0;
    if (self->mPreservesImageAspectRatio)
    {
      *v20.f64 = v16 / height;
    }

    else
    {
      [a3 aspectRatio];
      *v20.f64 = v20.f64[0];
    }

    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v193 state:{v20.f64[0], *&v179}];
    [a4 setTextureCoordinatesPointer:&v179 - (4 * v25) onTextureUnit:0];
    v23 = v55;
  }

  v188 = a3;
  v56 = 0;
  v57 = v191.f64[0];
  v58 = v192.f64[0];
  v186 = v58;
  v183 = cosval * v16;
  v184 = sinval * v16;
  v59 = cosval * height;
  v60 = sinval * height;
  v61 = v21 * v53;
  v185 = v22 * v53;
  __asm { FMOV            V1.2D, #1.0 }

  v63 = 1;
  v64 = v23 * v54;
  v65 = v24 * v54;
  __asm { FMOV            V0.2D, #0.5 }

  v191 = _Q0;
  v192 = _Q1;
  do
  {
    v67 = [a4 imageSetOnTextureUnit:{v63, *&v179}];
    if (v67)
    {
      v68 = [v67 preservesAspectRatio];
      v69 = &v179 - (4 * v25);
      if ((v68 & 1) == 0)
      {
        v70 = 0;
        v72 = v191;
        v71 = v192;
        do
        {
          v69 = v195;
          *&v195[v70] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(*&v26[v70]), v71), v72)), vmulq_f64(vaddq_f64(vcvt_hight_f64_f32(*&v26[v70]), v71), v72));
          v70 += 16;
        }

        while (4 * v25 != v70);
      }

      v56 |= 1 << v63;
      [a4 setTextureCoordinatesPointer:v69 onTextureUnit:v63];
    }

    ++v63;
  }

  while (v63 != 4);
  if (self->mNeedsInSpriteCoordinates)
  {
    for (i = 0; i != v25; ++i)
    {
      if (i)
      {
        v74 = 128;
      }

      else
      {
        v74 = 120;
      }

      v75 = *(&self->super.isa + v74);
      if (i)
      {
        v76 = 144;
      }

      else
      {
        v76 = 136;
      }

      v77 = *(&self->super.isa + v76) + (*&v26[4 * i] + 1.0) * 0.5 * v75;
      *&v194[i] = v77;
    }

    [a4 setInSpriteCoordinatesPointer:{v194, 1.0, 0.5}];
  }

  v78 = (&v179 - ((4 * v25 + 15) & 0x1F0));
  v79 = self->mMeshType;
  if (v79 == 3)
  {
    if (v8)
    {
      v163 = v64;
    }

    else
    {
      v163 = v181 * v54;
    }

    if (v8)
    {
      v164 = v65;
    }

    else
    {
      v164 = v179 * v54;
    }

    v165 = (v57 - v183);
    v158 = v165 - v163 * sinval;
    v166 = (v186 - v184);
    v123 = v166 + v163 * cosval;
    v124 = v165 - v164 * sinval;
    v125 = v166 + v164 * cosval;
    v167 = v57 + v61 * cosval;
    v126 = v167 - v163 * sinval;
    v168 = v186 + v61 * sinval;
    v127 = v168 + v163 * cosval;
    v108 = v167 - v164 * sinval;
    v112 = v168 + v164 * cosval;
    v169 = v57 + v185 * cosval;
    v153 = v169 - v163 * sinval;
    v170 = v186 + v185 * sinval;
    v154 = v170 + v163 * cosval;
    v120 = v169 - v164 * sinval;
    v121 = v170 + v164 * cosval;
    v171 = (v183 + v57);
    v130 = v171 - v163 * sinval;
    v172 = (v184 + v186);
    v131 = v172 + v163 * cosval;
    v80 = v171 - v164 * sinval;
    v132 = 19;
    v133 = 18;
    v134 = 17;
    v135 = 16;
    v136 = 15;
    v137 = 14;
    v138 = 13;
    v162 = v172 + v164 * cosval;
  }

  else
  {
    if (v79 != 2)
    {
      if (v79 == 1)
      {
        v80 = v60 + (v57 - v183);
        v81 = (v186 - v184) - v59;
        v82 = v57 + v61 * cosval;
        v83 = v82 - v64 * sinval;
        v84 = v186 + v61 * sinval;
        v85 = v84 + v64 * cosval;
        v86 = (v57 - v183);
        v87 = v86 - v64 * sinval;
        v88 = (v186 - v184);
        v89 = v88 + v64 * cosval;
        v90 = v82 - v65 * sinval;
        v91 = v84 + v65 * cosval;
        v92 = v86 - v65 * sinval;
        v93 = v88 + v65 * cosval;
        v94 = (v57 - v183) - v60;
        *&v86 = v59 + (v186 - v184);
        v95 = v57 + v185 * cosval;
        v96 = v95 - v65 * sinval;
        v97 = v186 + v185 * sinval;
        v98 = v97 + v65 * cosval;
        v99 = v183 + v57;
        v100 = v184 + v186;
        v101 = v99 - v65 * sinval;
        v102 = (v184 + v186) + v65 * cosval;
        v103 = v99 - v64 * sinval;
        v104 = v95 - v64 * sinval;
        v105 = (v184 + v186) + v64 * cosval;
        v106 = v97 + v64 * cosval;
        v107 = v99 - v60;
        v108 = v60 + v99;
        v109 = v60;
        v78[4] = v87;
        v78[5] = v89;
        v110 = v82 - v109;
        v111 = v59 + v100;
        v112 = v100 - v59;
        v113 = v59;
        v78[8] = v92;
        v78[9] = v93;
        v114 = v84 + v59;
        v115 = v82 + v109;
        v116 = v97 + v113;
        v117 = v97 - v113;
        v118 = v84 - v113;
        v78[11] = *&v86;
        v78[12] = v94;
        v78[10] = v94;
        *&v84 = v90;
        v119 = v91;
        v78[13] = *&v86;
        v78[14] = *&v84;
        v78[6] = *&v84;
        v78[7] = v119;
        *&v84 = v110;
        *&v90 = v114;
        v78[15] = v119;
        v78[16] = *&v84;
        v78[17] = *&v90;
        *&v84 = v95 - v109;
        *&v116 = v116;
        v78[20] = *&v84;
        v78[21] = *&v116;
        v78[22] = v107;
        v78[24] = v107;
        v120 = v83;
        v121 = v85;
        *&v114 = v96;
        v122 = v98;
        *&v101 = v101;
        v123 = v102;
        v124 = v104;
        v125 = v106;
        v126 = v103;
        v127 = v105;
        v128 = v95 + v109;
        v129 = v117;
        v130 = v115;
        v131 = v118;
        v132 = 47;
        v133 = 46;
        v134 = 45;
        *v78 = v80;
        v78[1] = v81;
        v135 = 44;
        v136 = 43;
        v137 = 42;
        v138 = 41;
        v78[2] = v120;
        v78[3] = v121;
        v139 = 40;
        v140 = 39;
        v141 = 38;
        v142 = 37;
        v78[18] = *&v114;
        v78[19] = v122;
        v78[23] = v111;
        v143 = 36;
        v144 = 35;
        v145 = 34;
        v146 = 33;
        v78[25] = v111;
        v78[26] = *&v114;
        v147 = 32;
        v148 = 31;
        v149 = 30;
        v150 = 29;
        v78[27] = v122;
        v78[28] = *&v101;
        v151 = v108;
        v152 = v112;
        v153 = v124;
        v154 = v125;
      }

      else
      {
        v130 = v60 + (v57 - v183);
        v123 = (v186 - v184) - v59;
        v173 = v57 + v61 * cosval;
        v124 = v173 - v64 * sinval;
        v174 = v186 + v61 * sinval;
        v125 = v174 + v64 * cosval;
        v126 = v60 + (v183 + v57);
        v127 = (v184 + v186) - v59;
        v175 = v57 + v185 * cosval;
        v108 = v175 - v64 * sinval;
        v176 = v186 + v185 * sinval;
        v112 = v176 + v64 * cosval;
        v151 = (v183 + v57) - v60;
        v152 = v59 + (v184 + v186);
        v153 = v175 - v65 * sinval;
        v154 = v176 + v65 * cosval;
        v128 = (v57 - v183) - v60;
        v129 = v59 + (v186 - v184);
        v120 = v173 - v65 * sinval;
        v132 = 19;
        v133 = 18;
        v134 = 17;
        v135 = 16;
        v136 = 15;
        v137 = 14;
        v138 = 13;
        v139 = 12;
        v140 = 11;
        v141 = 10;
        v142 = 9;
        v143 = 8;
        v144 = 7;
        v145 = 6;
        v146 = 5;
        v147 = 4;
        v148 = 3;
        v149 = 2;
        v121 = v174 + v65 * cosval;
        *v78 = v130;
        v150 = 1;
        v131 = v123;
        v80 = v124;
        v81 = v125;
      }

      goto LABEL_65;
    }

    v155 = v180 * v53;
    if (v8)
    {
      v155 = v61;
    }

    v156 = v185;
    if (!v8)
    {
      v156 = v182 * v53;
    }

    v157 = v57 + v155 * cosval;
    v158 = v157 + v60;
    v159 = v186 + v155 * sinval;
    v123 = v159 - v59;
    v124 = v157 - v64 * sinval;
    v125 = v159 + v64 * cosval;
    v160 = v57 + v156 * cosval;
    v126 = v160 + v60;
    v161 = v186 + v156 * sinval;
    v127 = v161 - v59;
    v108 = v160 - v64 * sinval;
    v112 = v161 + v64 * cosval;
    v153 = v157 - v65 * sinval;
    v154 = v159 + v65 * cosval;
    v120 = v157 - v60;
    v121 = v159 + v59;
    v130 = v160 - v65 * sinval;
    v131 = v161 + v65 * cosval;
    v80 = v160 - v60;
    v132 = 19;
    v133 = 18;
    v134 = 17;
    v135 = 16;
    v136 = 15;
    v137 = 14;
    v138 = 13;
    v162 = v161 + v59;
  }

  v139 = 12;
  v140 = 11;
  v141 = 10;
  v142 = 9;
  v143 = 8;
  v144 = 7;
  v145 = 6;
  v146 = 5;
  v147 = 4;
  v148 = 3;
  v149 = 2;
  v150 = 1;
  v81 = v162;
  *v78 = v158;
  v151 = v108;
  v152 = v112;
  v128 = v153;
  v129 = v154;
LABEL_65:
  v78[v150] = v123;
  v78[v149] = v124;
  v78[v148] = v125;
  v78[v147] = v126;
  v78[v146] = v127;
  v78[v145] = v108;
  v78[v144] = v112;
  v78[v143] = v151;
  v78[v142] = v152;
  v78[v141] = v153;
  v78[v140] = v154;
  v78[v139] = v128;
  v78[v138] = v129;
  v78[v137] = v120;
  v78[v136] = v121;
  v78[v135] = v130;
  v78[v134] = v131;
  v78[v133] = v80;
  v78[v132] = v81;
  [a4 setVertex2DPointer:?];
  [a4 drawTriangleStripFromOffset:0 count:v25 >> 1];
  [a4 unsetVertexPointer];
  if (self->mNeedsInSpriteCoordinates)
  {
    [a4 unsetInSpriteCoordinatesPointer];
  }

  v177 = -3;
  do
  {
    if ((v56 & (1 << (v177 + 4))) != 0)
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:1];
    }
  }

  while (!__CFADD__(v177++, 1));
  v178 = v188;
  if (v188)
  {
    [a4 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [v178 unsetOnContext:a4 onTextureUnit:0 state:&v193];
  }
}

- (void)renderImageInner:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7
{
  [(MRCroppingSprite *)self fakeRenderInContext:a4 atPosition:a5.x andSize:a5.y zRotation:a6.width, a6.height];

  [(MRCroppingSprite *)self renderImageInner:a3 inContext:a4];
}

- (void)renderImageMiddle:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7
{
  [(MRCroppingSprite *)self fakeRenderInContext:a4 atPosition:a5.x andSize:a5.y zRotation:a6.width, a6.height];

  [(MRCroppingSprite *)self renderImageMiddle:a3 inContext:a4];
}

- (void)renderImageOuter:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7
{
  [(MRCroppingSprite *)self fakeRenderInContext:a4 atPosition:a5.x andSize:a5.y zRotation:a6.width, a6.height];

  [(MRCroppingSprite *)self renderImageOuter:a3 inContext:a4];
}

- (BOOL)hitAtPoint:(CGPoint)a3 withInverseMatrix:(float)a4[16] localPoint:(CGPoint *)a5
{
  if (self->mHitIsActive)
  {
    y = a3.y;
    x = a3.x;
    memset(v30, 0, sizeof(v30));
    if (self->_usesOwnMatrixForHitTest)
    {
      MRMatrix_Invert(self->mModelViewProjectionMatrix, v30);
      if (self->_usesOwnMatrixForHitTest)
      {
        a4 = v30;
      }
    }

    v28 = MRMatrix_UnprojectPoint(a4, x, y) - self->mPosition.x;
    v29 = v10 - self->mPosition.y;
    mRotation = self->mRotation;
    v12 = __sincosf_stret(mRotation);
    v13.f64[0] = v28;
    v14 = vcvtq_f64_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)));
    v15 = vmulq_n_f64(v14, v29);
    v13.f64[1] = -v28;
    v16 = vdivq_f64(vmlaq_f64(vextq_s8(v15, v15, 8uLL), v14, v13), self->mHalfSize);
    __asm
    {
      FMOV            V1.2D, #1.0
      FMOV            V2.2D, #0.5
    }

    v23 = vmulq_f64(vaddq_f64(v16, _Q1), _Q2);
    if (a5)
    {
      *a5 = v23;
    }

    v24.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(_Q1, v23)), *&v23.x).u32[0];
    v25 = vmovn_s64(vcgezq_f64(v23));
    v24.i32[1] = vuzp1_s16(v25, v25).i32[1];
    v26 = vminv_u16(v24);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

- (BOOL)getVerticesCoordinates:(CGPoint *)(a3 withMatrix:
{
  width = self->mHalfSize.width;
  mRotation = self->mRotation;
  v9 = __sincosf_stret(mRotation);
  v10 = width * v9.__cosval;
  height = self->mHalfSize.height;
  v12 = height * v9.__sinval;
  v13 = width * v9.__sinval;
  v14 = height * v9.__cosval;
  if (self->_usesOwnMatrixForHitTest)
  {
    mModelViewProjectionMatrix = self->mModelViewProjectionMatrix;
  }

  else
  {
    mModelViewProjectionMatrix = a4;
  }

  v16 = v10;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  (*a3)[0].x = MRMatrix_ProjectPoint(mModelViewProjectionMatrix, self->mPosition.x - v10 + v12, self->mPosition.y - v13 - v14);
  (*a3)[0].y = v20;
  if (self->_usesOwnMatrixForHitTest)
  {
    v21 = self->mModelViewProjectionMatrix;
  }

  else
  {
    v21 = a4;
  }

  (*a3)[1].x = MRMatrix_ProjectPoint(v21, self->mPosition.x + v16 + v17, self->mPosition.y + v18 - v19);
  (*a3)[1].y = v22;
  if (self->_usesOwnMatrixForHitTest)
  {
    v23 = self->mModelViewProjectionMatrix;
  }

  else
  {
    v23 = a4;
  }

  (*a3)[2].x = MRMatrix_ProjectPoint(v23, self->mPosition.x + v16 - v17, self->mPosition.y + v18 + v19);
  (*a3)[2].y = v24;
  if (self->_usesOwnMatrixForHitTest)
  {
    v25 = self->mModelViewProjectionMatrix;
  }

  else
  {
    v25 = a4;
  }

  (*a3)[3].x = MRMatrix_ProjectPoint(v25, self->mPosition.x - v16 - v17, self->mPosition.y - v18 + v19);
  (*a3)[3].y = v26;
  return 1;
}

+ (void)renderDumbImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  if (a3 || [a4 shaderIsSet])
  {
    v14 = x;
    [a4 localAspectRatio];
    v16 = y / v15;
    v17 = width * 0.5;
    [a4 localAspectRatio];
    v19 = height * 0.5 / v18;
    v20 = __sincosf_stret(a7);
    v21 = v20.__cosval * v17;
    v22 = v20.__sinval * v17;
    v23 = v20.__cosval * v19;
    v24 = v20.__sinval * v19;
    v27[0] = xmmword_164020;
    v27[1] = unk_164030;
    v25 = 0;
    if (a3)
    {
      [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v25 state:0.0];
      [a4 setTextureCoordinatesPointer:v27 onTextureUnit:0];
    }

    v26[0] = (v14 - v21) + v24;
    v26[1] = (v16 - v23) - v22;
    v26[2] = (v14 - v21) - v24;
    v26[3] = (v23 + v16) - v22;
    v26[4] = (v21 + v14) + v24;
    v26[5] = v22 + (v16 - v23);
    v26[6] = (v21 + v14) - v24;
    v26[7] = v22 + (v23 + v16);
    [a4 setVertex2DPointer:v26];
    [a4 drawTriangleStripFromOffset:0 count:4];
    [a4 unsetVertexPointer];
    if (a3)
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a3 unsetOnContext:a4 onTextureUnit:0 state:&v25];
    }
  }
}

+ (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 zRotation:(float)a7
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  if (a3 || [a4 shaderIsSet])
  {
    v14 = x;
    [a4 localAspectRatio];
    v16 = y / v15;
    v17 = width * 0.5;
    [a4 localAspectRatio];
    v19 = height * 0.5 / v18;
    v21 = __sincosf_stret(a7);
    v22 = v21.__cosval * v17;
    v23 = v21.__sinval * v17;
    v24 = v21.__cosval * v19;
    v25 = v21.__sinval * v19;
    v28[0] = xmmword_164000;
    v28[1] = unk_164010;
    v26 = 0;
    if (a3)
    {
      *&v20 = v17 / v19;
      [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v26 state:v20];
      [a4 setTextureCoordinatesPointer:v28 onTextureUnit:0];
    }

    v27[0] = (v14 - v22) + v25;
    v27[1] = (v16 - v24) - v23;
    v27[2] = (v14 - v22) - v25;
    v27[3] = (v24 + v16) - v23;
    v27[4] = (v22 + v14) + v25;
    v27[5] = v23 + (v16 - v24);
    v27[6] = (v22 + v14) - v25;
    v27[7] = v23 + (v24 + v16);
    [a4 setVertex2DPointer:v27];
    [a4 drawTriangleStripFromOffset:0 count:4];
    [a4 unsetVertexPointer];
    if (a3)
    {
      [a4 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a3 unsetOnContext:a4 onTextureUnit:0 state:&v26];
    }
  }
}

+ (void)renderImage:(id)a3 withMask:(id)a4 inContext:(id)a5 atPosition:(CGPoint)a6 andSize:(CGSize)a7 zRotation:(float)a8
{
  height = a7.height;
  width = a7.width;
  y = a6.y;
  x = a6.x;
  [a5 localAspectRatio];
  v17 = width * 0.5;
  v18 = y / v16;
  [a5 localAspectRatio];
  v20 = height * 0.5 / v19;
  v21 = __sincosf_stret(a8);
  [a5 setShader:@"Mask"];
  HIDWORD(v22) = -1082130432;
  v32[0] = xmmword_164000;
  v32[1] = unk_164010;
  v29 = 0;
  if (a3)
  {
    *&v22 = v17 / v20;
    [a3 setOnContext:a5 onTextureUnit:0 withReferenceAspectRatio:&v29 + 1 state:v22];
    [a5 setTextureCoordinatesPointer:v32 onTextureUnit:0];
  }

  v23 = x;
  v24 = v18;
  v25 = v21.__cosval * v17;
  v26 = v21.__sinval * v17;
  v27 = v21.__cosval * v20;
  v28 = v21.__sinval * v20;
  v31[0] = xmmword_164020;
  v31[1] = unk_164030;
  if (a4)
  {
    [a4 setOnContext:a5 onTextureUnit:1 withReferenceAspectRatio:&v29 state:0.0];
    [a5 setTextureCoordinatesPointer:v31 onTextureUnit:1];
  }

  v30[0] = (v23 - v25) + v28;
  v30[1] = (v24 - v27) - v26;
  v30[2] = (v23 - v25) - v28;
  v30[3] = (v27 + v24) - v26;
  v30[4] = (v25 + v23) + v28;
  v30[5] = v26 + (v24 - v27);
  v30[6] = (v25 + v23) - v28;
  v30[7] = v26 + (v27 + v24);
  [a5 setVertex2DPointer:v30];
  [a5 drawTriangleStripFromOffset:0 count:4];
  [a5 unsetVertexPointer];
  if (a4)
  {
    [a5 unsetTextureCoordinatesPointerOnTextureUnit:1];
    [a4 unsetOnContext:a5 onTextureUnit:1 state:&v29];
  }

  if (a3)
  {
    [a5 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [a3 unsetOnContext:a5 onTextureUnit:0 state:&v29 + 1];
  }

  [a5 unsetShader];
}

+ (void)renderImage:(id)a3 inContext:(id)a4 atPosition:(CGPoint)a5 andSize:(CGSize)a6 withReferenceAspectRatio:(float)a7 andJustifications:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  height = a6.height;
  width = a6.width;
  v13 = a5.y;
  v14 = a5.x;
  [a4 localAspectRatio];
  v18 = width * 0.5;
  v19 = v13 / v17;
  [a4 localAspectRatio];
  v21 = height * 0.5 / v20;
  v22 = v18 / v21;
  if (a7 > 0.0)
  {
    v22 = a7;
  }

  v23 = 0.0;
  if (y <= 0.0 || x <= 0.0)
  {
    v23 = x;
  }

  if (v23 == 0.0)
  {
    v25 = y;
    v26 = 1.0;
    v27 = 0.0;
    v28 = -1.0;
    if (y <= 1)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          v29 = 1.0 - (v21 + v21) * v22 / v18;
LABEL_18:
          v27 = 1.0;
          v26 = 1.0;
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      v27 = 1.0;
      goto LABEL_26;
    }

    if (v25 != 2)
    {
      if (v25 != 3)
      {
LABEL_24:
        v29 = 0.0;
        goto LABEL_30;
      }

      v27 = (v21 + v21) * v22 / v18 + -1.0;
      goto LABEL_23;
    }

    v27 = (v22 * v21) / v18;
    v29 = -(v21 * v22) / v18;
  }

  else
  {
    v30 = v23;
    v27 = 1.0;
    if (v30 < 2)
    {
      v26 = (v18 + v18) / (v22 * v21) + -1.0;
LABEL_23:
      v28 = -1.0;
LABEL_26:
      v29 = -1.0;
      goto LABEL_30;
    }

    v29 = -1.0;
    if (v30 == 2)
    {
      v28 = -v18 / (v22 * v21);
      v26 = v18 / (v22 * v21);
    }

    else
    {
      v28 = 0.0;
      if (v30 == 3)
      {
        v28 = 1.0 - (v18 + v18) / (v22 * v21);
        goto LABEL_18;
      }

      v26 = 0.0;
    }
  }

LABEL_30:
  v31 = v14;
  v32 = v19;
  *v35 = v28;
  *&v35[1] = v29;
  *&v35[2] = v28;
  *&v35[3] = v27;
  *&v35[4] = v26;
  *&v35[5] = v29;
  *&v35[6] = v26;
  *&v35[7] = v27;
  v33 = 0;
  if (a3)
  {
    [a3 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v33 state:?];
    [a4 setTextureCoordinatesPointer:v35 onTextureUnit:0];
  }

  v34[0] = v31 - v18;
  v34[1] = v32 - v21;
  v34[2] = v31 - v18;
  v34[3] = v32 + v21;
  v34[4] = v31 + v18;
  v34[5] = v32 - v21;
  v34[6] = v31 + v18;
  v34[7] = v32 + v21;
  [a4 setVertex2DPointer:v34];
  [a4 drawTriangleStripFromOffset:0 count:4];
  [a4 unsetVertexPointer];
  if (a3)
  {
    [a4 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [a3 unsetOnContext:a4 onTextureUnit:0 state:&v33];
  }
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