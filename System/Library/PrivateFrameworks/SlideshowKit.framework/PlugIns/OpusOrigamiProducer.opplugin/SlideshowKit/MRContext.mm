@interface MRContext
- ($85CD2974BE96D4886BB301820D1C36C2)clippedSizeWithSize:(CGSize)size;
- (BOOL)commitShaderChange;
- (CGColorSpace)colorSpace;
- (CGColorSpace)monochromaticColorSpace;
- (CGPoint)pixelOffset;
- (CGSize)pixelSize;
- (CGSize)size;
- (MRContext)initWithEAGLContext:(id)context andAssetManager:(id)manager;
- (float)aspectRatio;
- (id)beginLocalContextWithSize:(CGSize)size backgroundColor:(const float *)color state:(id *)state;
- (id)imageSetOnTextureUnit:(unint64_t)unit;
- (id)initLocalWithContext:(id)context glContext:(id)glContext andSize:(CGSize)size;
- (id)initLocalWithContext:(id)context texture:(id)texture andSize:(CGSize)size;
- (id)retainedByUserImageByEndingLocalContext:(id)context andRestoreState:(id *)state;
- (unsigned)bindBuffer:(unsigned int)buffer;
- (unsigned)createVBO;
- (unsigned)maxDimension;
- (void)_commitOuterToInner;
- (void)_computeProjectionMatrixWithOrientationCorrection;
- (void)_updateTextureOnUnit:(unint64_t)unit;
- (void)blend:(int)blend;
- (void)cleanup;
- (void)clear:(int)clear;
- (void)composeForeColor:(const float *)color saveTo:(float *)to;
- (void)composeForeColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha saveTo:(float *)to;
- (void)composeModelViewMatrix:(float)matrix[16] saveTo:(float *)to;
- (void)cull:(int)cull;
- (void)dealloc;
- (void)deleteVBO:(unsigned int)o;
- (void)drawIndexedTriangleStrip:(const unsigned __int16 *)strip count:(unint64_t)count;
- (void)drawLinesFromOffset:(unint64_t)offset count:(unint64_t)count;
- (void)drawTriangleFanFromOffset:(unint64_t)offset count:(unint64_t)count;
- (void)drawTriangleStripFromOffset:(unint64_t)offset count:(unint64_t)count;
- (void)drawTrianglesFromOffset:(unint64_t)offset count:(unint64_t)count;
- (void)flush;
- (void)setBackColor:(const float *)color saveTo:(float *)to;
- (void)setBackColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha saveTo:(float *)to;
- (void)setDimensionalMode:(int)mode;
- (void)setForeColor:(const float *)color saveTo:(float *)to;
- (void)setForeColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha saveTo:(float *)to;
- (void)setImage:(id)image onTextureUnit:(unint64_t)unit withReferenceAspectRatio:(float)ratio state:(id *)state;
- (void)setIsFlipped:(BOOL)flipped;
- (void)setModelViewMatrix:(float)matrix[16] saveTo:(float *)to;
- (void)setNormal:(float)normal :(float)a4 :(float)a5;
- (void)setScissorRect:(const int *)rect saveTo:(int *)to;
- (void)setShader:(id)shader;
- (void)setShaderUniformFloat:(float)float forKey:(id)key;
- (void)setShaderUniformInt:(int)int forKey:(id)key;
- (void)setShaderUniformMat3:(float)mat3[16] forKey:(id)key;
- (void)setShaderUniformMat4:(float)mat4[16] forKey:(id)key;
- (void)setShaderUniformVec2:(float)vec2 :(float)a4 forKey:(id)key;
- (void)setShaderUniformVec3:(float)vec3 :(float)a4 :(float)a5 forKey:(id)key;
- (void)setShaderUniformVec4:(float)vec4 :(float)a4 :(float)a5 :(float)a6 forKey:(id)key;
- (void)setTextureMatrix:(float)matrix[16] onTextureUnit:(unint64_t)unit;
- (void)setVertex2DPointer:(const float *)pointer;
- (void)setVertex3DPointer:(const float *)pointer;
- (void)setVertexAttributePointer:(const float *)pointer ofSize:(unint64_t)size forKey:(id)key;
- (void)setVertexBuffer2D:(unsigned int)d withFeatures:(unint64_t)features;
- (void)setVertexBuffer2D:(unsigned int)d withStride:(unint64_t)stride inSpriteCoordinatesOffset:(unint64_t)offset texture0CoordinatesOffset:(unint64_t)coordinatesOffset;
- (void)setVertexPointer:(float *)pointer flags:(unsigned __int16)flags;
- (void)snapshotWithTextureName:(int)name offset:(CGPoint)offset size:(CGSize)size;
- (void)translateModelViewMatrixByX:(float)x Y:(float)y Z:(float)z saveTo:(float *)to;
- (void)unsetImage:(id)image onTextureUnit:(unint64_t)unit state:(id *)state;
- (void)unsetShader;
- (void)unsetVertexPointer;
- (void)updateGeometry;
- (void)uploadBuffer:(void *)buffer withSize:(int)size toVertexBuffer2D:(unsigned int)d usage:(unsigned int)usage;
@end

@implementation MRContext

- (MRContext)initWithEAGLContext:(id)context andAssetManager:(id)manager
{
  v6 = [(MRContext *)self init];
  v7 = v6;
  if (v6)
  {
    v6->mBaseContext = v6;
    v6->mGLContext = context;
    v7->mRenderBuffer = -1;
    v7->mAssetManager = manager;
    v7->mImageManager = [[MRImageManager alloc] initWithBaseContext:v7];
    v7->mOuterState = objc_alloc_init(MRContextState);
    v7->mInnerState = objc_alloc_init(MRContextState);
    v8 = +[EAGLContext currentContext];
    v9 = v8;
    if (v8 != v7->mGLContext)
    {
      [EAGLContext setCurrentContext:?];
    }

    glGetIntegerv(0xD33u, &v7->mMaxTextureSize);
    for (i = 0; i != 10; ++i)
    {
      glDisableVertexAttribArray(i);
    }

    glClearColor(0.0, 0.0, 0.0, 0.0);
    glDisable(0xB71u);
    glDisable(0xBE2u);
    glDisable(0xB44u);
    glCullFace(0x405u);
    v11 = -4;
    v12 = 33987;
    do
    {
      glActiveTexture(v12);
      glBindTexture(0xDE1u, 0);
      --v12;
    }

    while (!__CFADD__(v11++, 1));
    glUseProgram(0);
    if (+[EAGLContext currentContext]!= v8)
    {
      [EAGLContext setCurrentContext:v8];
    }

    v14 = [(MRImageManager *)v7->mImageManager retainedByUserImageWithSize:v7->mOuterState->backColor andColor:1.0, 1.0];
    v7->mBlackImage = v14;
    [(MRImage *)v14 setLabel:@"Marimba Context BlackImage"];
    [(MRImage *)v7->mBlackImage setClampMode:2];
    v7->mOrientation = 0;
    v7->mFieldOfViewFactor = 1.0;
  }

  return v7;
}

- (id)initLocalWithContext:(id)context glContext:(id)glContext andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = [(MRContext *)self init];
  if (v9)
  {
    v9->mBaseContext = [context baseContext];
    v9->mGLContext = glContext;
    v9->mAssetManager = *(context + 26);
    v9->mImageManager = *(context + 27);
    v9->mVRAM = [(MRContext *)v9->mBaseContext vram];
    v9->mMaxTextureSize = v9->mBaseContext->mMaxTextureSize;
    *&v9->mIsLocalContext = 257;
    v10 = width * *(context + 17);
    [context pixelSize];
    *&v11 = v10 / v11;
    v9->mFieldOfViewFactor = *&v11;
    v9->mPixelSize.width = width;
    v9->mPixelSize.height = height;
    v9->mOrientation = 4;
    v9->mOuterState = objc_alloc_init(MRContextState);
    v9->mInnerState = objc_alloc_init(MRContextState);
    [(MRContext *)v9 updateGeometry];
    v9->mBlackImage = [context retainedByUserBlackImage];
    v9->mActiveTextureUnit = -1;
  }

  return v9;
}

- (id)initLocalWithContext:(id)context texture:(id)texture andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = [(MRContext *)self init];
  if (v9)
  {
    v9->mBaseContext = [context baseContext];
    v9->mGLContext = [texture glContext];
    v9->mAssetManager = *(context + 26);
    v9->mImageManager = *(context + 27);
    v9->mVRAM = [(MRContext *)v9->mBaseContext vram];
    v9->mMaxTextureSize = v9->mBaseContext->mMaxTextureSize;
    *&v9->mIsLocalContext = 257;
    v10 = width * *(context + 17);
    [context pixelSize];
    *&v11 = v10 / v11;
    v9->mFieldOfViewFactor = *&v11;
    v9->mPixelSize.width = width;
    v9->mPixelSize.height = height;
    v9->mOrientation = 4;
    v9->mOuterState = objc_alloc_init(MRContextState);
    v9->mInnerState = [texture innerState];
    [(MRContext *)v9 updateGeometry];
    v9->mBlackImage = [context retainedByUserBlackImage];
    v9->mActiveTextureUnit = -1;
  }

  return v9;
}

- (void)dealloc
{
  self->mOuterState = 0;

  self->mInnerState = 0;
  [(MRContext *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRContext;
  [(MRContext *)&v3 dealloc];
}

- (void)cleanup
{
  if (self->mImageManager)
  {
    mCurrentShader = self->mCurrentShader;
    if (mCurrentShader)
    {

      self->mCurrentShader = 0;
    }

    if (!self->mIsLocalContext)
    {
      [(MRContext *)self purgeResources:1];
    }

    [(MRImage *)self->mBlackImage releaseByUser];
    self->mBlackImage = 0;

    self->mGLContext = 0;
    mVertexAttributes = self->mVertexAttributes;
    if (mVertexAttributes)
    {

      self->mVertexAttributes = 0;
    }

    self->mBaseContext = 0;

    self->mAssetManager = 0;
    self->mImageManager = 0;
  }
}

- (void)updateGeometry
{
  v3 = +[EAGLContext currentContext];
  v4 = v3;
  if (v3 != self->mGLContext)
  {
    [EAGLContext setCurrentContext:?];
  }

  if (!self->mIsLocalContext)
  {
    [(MRContext *)self purgeResources:1];
  }

  width = self->mPixelSize.width;
  if ((self->mOrientation - 3) >= 2)
  {
    v6 = 24;
  }

  else
  {
    v6 = 32;
  }

  if ((self->mOrientation - 3) >= 2)
  {
    height = self->mPixelSize.height;
  }

  else
  {
    height = self->mPixelSize.width;
  }

  if ((self->mOrientation - 3) >= 2)
  {
    v8 = 32;
  }

  else
  {
    width = self->mPixelSize.height;
    v8 = 24;
  }

  v9 = height;
  v10 = width;
  glViewport(*(&self->super.isa + v8), *(&self->super.isa + v6), height, width);
  glScissor(*(&self->super.isa + v8), *(&self->super.isa + v6), v9, v10);
  v11 = *(&self->super.isa + v6);
  self->mScissorRect[0] = *(&self->super.isa + v8);
  self->mScissorRect[1] = v11;
  self->mScissorRect[2] = v9;
  self->mScissorRect[3] = v10;
  v12 = tan(0.52359879) * self->mFieldOfViewFactor;
  v13 = self->mPixelSize.width;
  v14 = self->mPixelSize.height;
  v15 = v13 / v14;
  if (self->mIsFlipped)
  {
    v16 = v12 * 0.1;
  }

  else
  {
    v16 = -(v12 * 0.1);
  }

  if (self->mIsFlipped)
  {
    v17 = -(v12 * 0.1);
  }

  else
  {
    v17 = v12 * 0.1;
  }

  MRMatrix_Frustum(self->mProjectionMatrix, -(v12 * 0.1), v12 * 0.1, v16 / v15, v17 / v15, 0.1, 100.0);
  *&self->mProjectionMatrix[14] = vcvt_f32_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(1.0 / v12), 0), vcvtq_f64_f32(*&self->mProjectionMatrix[14])));
  if (self->mIsFlipped)
  {
    v18 = 2304;
  }

  else
  {
    v18 = 2305;
  }

  glFrontFace(v18);
  [(MRContext *)self _computeProjectionMatrixWithOrientationCorrection];
  MRMatrix_Clear(self->mOuterState->modelViewMatrix);
  mInnerState = self->mInnerState;
  *&mInnerState->modelViewMatrix[12] = 0u;
  *&mInnerState->modelViewMatrix[8] = 0u;
  *&mInnerState->modelViewMatrix[4] = 0u;
  *mInnerState->modelViewMatrix = 0u;
  if (+[EAGLContext currentContext]!= v3)
  {
    [EAGLContext setCurrentContext:v3];
  }

  v20 = self->mPixelSize.width / self->mPixelSize.height;
  self->mLocalAspectRatio = v20;
}

- (void)_computeProjectionMatrixWithOrientationCorrection
{
  v6 = 0;
  v7 = xmmword_1635C0;
  v8 = 0x4066800000000000;
  v9 = 0;
  v3 = *(&v6 + self->mOrientation);
  if (v3 == 0.0)
  {
    *self->mProjectionMatrixWithOrientationCorrection = *self->mProjectionMatrix;
    *&self->mProjectionMatrixWithOrientationCorrection[4] = *&self->mProjectionMatrix[4];
    *&self->mProjectionMatrixWithOrientationCorrection[8] = *&self->mProjectionMatrix[8];
    *&self->mProjectionMatrixWithOrientationCorrection[12] = *&self->mProjectionMatrix[12];
  }

  else
  {
    v4 = v3;
    memset(v5, 0, sizeof(v5));
    MRMatrix_SetRotationFromAnglesXYZDeg(v5, 0.0, 0.0, v4);
    MRMatrix_MultiplyWithMatrix(self->mProjectionMatrix, v5, self->mProjectionMatrixWithOrientationCorrection);
  }
}

- (void)setDimensionalMode:(int)mode
{
  if (self->_dimensionalMode == mode)
  {
    return;
  }

  v5 = +[EAGLContext currentContext];
  v6 = v5;
  if (v5 != self->mGLContext)
  {
    [EAGLContext setCurrentContext:?];
  }

  v16 = 0u;
  *v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (mode <= 1)
  {
    if (!mode)
    {
      [(MRContext *)self setPixelSize:self->mPixelSize.width, self->mPixelSize.height, v14, v15, v16];
      glViewport(0, 0, self->mPixelSize.width, self->mPixelSize.height);
      width = self->mPixelSize.width;
      height = self->mPixelSize.height;
      goto LABEL_16;
    }

    if (mode != 1)
    {
      goto LABEL_18;
    }

    [(MRContext *)self setPixelSize:self->mPixelSize.width, self->mPixelSize.height, v14, v15, v16];
    glViewport(0, 0, (self->mPixelSize.width * 0.5), self->mPixelSize.height);
    glScissor(0, 0, (self->mPixelSize.width * 0.5), self->mPixelSize.height);
    MRMatrix_Clear(&v14);
    MRMatrix_SetRotationFromAnglesYXZDeg(&v14, 3.0, 0.0, 0.0);
    v10 = v17[0];
    v11 = -0.08;
LABEL_13:
    v17[0] = v10 + v11;
    [(MRContext *)self _computeProjectionMatrixWithOrientationCorrection:MRMatrix_PreMultiply(&v14];
    goto LABEL_18;
  }

  switch(mode)
  {
    case 2:
      [(MRContext *)self setPixelSize:self->mPixelSize.width, self->mPixelSize.height, v14, v15, v16];
      glViewport((self->mPixelSize.width * 0.5), 0, (self->mPixelSize.width * 0.5), self->mPixelSize.height);
      glScissor((self->mPixelSize.width * 0.5), 0, (self->mPixelSize.width * 0.5), self->mPixelSize.height);
      MRMatrix_SetRotationFromAnglesYXZDeg(&v14, -3.0, 0.0, 0.0);
      v10 = v17[0];
      v11 = 0.08;
      goto LABEL_13;
    case 3:
      [(MRContext *)self setPixelSize:self->mPixelSize.width, self->mPixelSize.height, v14, v15, v16];
      glViewport(0, 0, (self->mPixelSize.width * 0.5), self->mPixelSize.height);
      height = self->mPixelSize.height;
      width = self->mPixelSize.width * 0.5;
LABEL_16:
      v9 = width;
      v8 = height;
      v7 = 0;
      goto LABEL_17;
    case 4:
      [(MRContext *)self setPixelSize:self->mPixelSize.width, self->mPixelSize.height, v14, v15, v16];
      glViewport((self->mPixelSize.width * 0.5), 0, (self->mPixelSize.width * 0.5), self->mPixelSize.height);
      v7 = (self->mPixelSize.width * 0.5);
      v8 = self->mPixelSize.height;
      v9 = v7;
LABEL_17:
      glScissor(v7, 0, v9, v8);
      break;
  }

LABEL_18:
  if ([EAGLContext currentContext:v14]!= v5)
  {
    [EAGLContext setCurrentContext:v5];
  }
}

- (CGSize)size
{
  width = self->mPixelSize.width;
  if (width <= 0.0)
  {
    v4 = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    height = (self->mPixelSize.height + self->mPixelSize.height) / width;
    v4 = 2.0;
  }

  result.height = height;
  result.width = v4;
  return result;
}

- (float)aspectRatio
{
  width = self->mPixelSize.width;
  height = self->mPixelSize.height;
  return width / height;
}

- (CGColorSpace)colorSpace
{
  result = qword_1EF3D0;
  if (!qword_1EF3D0)
  {
    result = CGColorSpaceCreateDeviceRGB();
    qword_1EF3D0 = result;
  }

  return result;
}

- (CGColorSpace)monochromaticColorSpace
{
  result = qword_1EF3D8;
  if (!qword_1EF3D8)
  {
    result = CGColorSpaceCreateDeviceGray();
    qword_1EF3D8 = result;
  }

  return result;
}

- (unsigned)maxDimension
{
  width = self->mPixelSize.width;
  if (width < self->mPixelSize.height)
  {
    width = self->mPixelSize.height;
  }

  if (width < 1536.0)
  {
    return 1024;
  }

  else
  {
    return 2048;
  }
}

- ($85CD2974BE96D4886BB301820D1C36C2)clippedSizeWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.width;
  v7 = size.height;
  maxDimension = [(MRContext *)self maxDimension];
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    mMaxTextureSize = self->mMaxTextureSize;
    if (width / height >= 2.0)
    {
      if (mMaxTextureSize < v6)
      {
        v6 = self->mMaxTextureSize;
      }
    }

    else
    {
      if (maxDimension < v6)
      {
        v6 = maxDimension;
      }

      if (width / height <= 0.5)
      {
        if (mMaxTextureSize >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = mMaxTextureSize;
        }

        return (v6 | (v7 << 32));
      }
    }

    if (maxDimension >= v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = maxDimension;
    }
  }

  return (v6 | (v7 << 32));
}

- (void)flush
{
  v7 = +[EAGLContext currentContext];
  v3 = v7;
  if (v7 != self->mGLContext)
  {
    [EAGLContext setCurrentContext:?];
  }

  mRenderBuffer = self->mRenderBuffer;
  if (mRenderBuffer < 0)
  {
    glGetIntegerv(0x8CA7u, &self->mRenderBuffer);
    mRenderBuffer = self->mRenderBuffer;
  }

  if (mRenderBuffer <= 0)
  {
    glFlush();
  }

  else
  {
    [(EAGLContext *)self->mGLContext presentRenderbuffer:36161];
  }

  v5 = +[EAGLContext currentContext];
  v6 = v7;
  if (v5 != v7)
  {
    v5 = [EAGLContext setCurrentContext:v7];
    v6 = v7;
  }

  _objc_release_x1(v5, v6);
}

- (id)beginLocalContextWithSize:(CGSize)size backgroundColor:(const float *)color state:(id *)state
{
  height = size.height;
  width = size.width;
  v10 = [(MRImageManager *)self->mImageManager retainedByUserImageWithSize:0 andColor:?];
  state->var0 = v10;
  [v10 setLabel:@"Marimba Local Context"];
  v11 = -[MRContext initLocalWithContext:texture:andSize:]([MRContext alloc], "initLocalWithContext:texture:andSize:", self, [state->var0 texture], width, height);
  v12 = +[EAGLContext currentContext];
  v13 = v12;
  if (v12 != [v11 glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [v11 glContext]);
  }

  if (color)
  {
    [v11 setBackColor:color saveTo:0];
    [v11 clear:1];
  }

  if (+[EAGLContext currentContext]!= v12)
  {
    [EAGLContext setCurrentContext:v12];
  }

  return v11;
}

- (id)retainedByUserImageByEndingLocalContext:(id)context andRestoreState:(id *)state
{
  v6 = +[EAGLContext currentContext];
  v7 = v6;
  if (v6 != [context glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [context glContext]);
  }

  glFlush();
  [context cleanup];
  if (+[EAGLContext currentContext]!= v6)
  {
    [EAGLContext setCurrentContext:v6];
  }

  [objc_msgSend(state->var0 "texture")];
  return state->var0;
}

- (void)setIsFlipped:(BOOL)flipped
{
  if (self->mIsFlipped != flipped)
  {
    self->mIsFlipped = flipped;
    self->mProjectionMatrix[5] = -self->mProjectionMatrix[5];
    [(MRContext *)self _computeProjectionMatrixWithOrientationCorrection];
  }
}

- (void)blend:(int)blend
{
  mOuterState = self->mOuterState;
  if (blend)
  {
    mOuterState->blendingIsEnabled = 1;
    if (blend != 1)
    {
      self->mOuterState->blendingType = blend;
    }
  }

  else
  {
    mOuterState->blendingIsEnabled = 0;
  }
}

- (void)cull:(int)cull
{
  mOuterState = self->mOuterState;
  if (cull)
  {
    mOuterState->cullingIsEnabled = 1;
    self->mOuterState->cullFrontfacing = cull == 2;
  }

  else
  {
    mOuterState->cullingIsEnabled = 0;
  }
}

- (void)clear:(int)clear
{
  clearCopy = clear;
  mOuterState = self->mOuterState;
  mInnerState = self->mInnerState;
  v7 = mOuterState->backColor[0];
  v8 = mOuterState->backColor[1];
  if (v7 != mInnerState->backColor[0] || v8 != mInnerState->backColor[1] || mOuterState->backColor[2] != mInnerState->backColor[2] || mOuterState->backColor[3] != mInnerState->backColor[3])
  {
    glClearColor(v7, v8, mOuterState->backColor[2], mOuterState->backColor[3]);
    *self->mInnerState->backColor = *self->mOuterState->backColor;
  }

  if ((clearCopy & 2) != 0)
  {
    if (!self->mInnerState->depthTestIsEnabled)
    {
      glDepthMask(1u);
    }

    glClear(((clearCopy & 1) << 14) | 0x100);
    if (!self->mInnerState->depthTestIsEnabled)
    {

      glDepthMask(0);
    }
  }

  else
  {

    glClear((clearCopy & 1) << 14);
  }
}

- (void)setScissorRect:(const int *)rect saveTo:(int *)to
{
  if (to)
  {
    x = self->mPixelOffset.x;
    y = self->mPixelOffset.y;
    *to = (self->mScissorRect[0] - x);
    to[1] = (self->mScissorRect[1] - y);
    to[2] = self->mScissorRect[2];
    to[3] = self->mScissorRect[3];
  }

  else
  {
    x = self->mPixelOffset.x;
  }

  v7 = x + *rect;
  if (v7 == self->mScissorRect[0])
  {
    v8 = self->mPixelOffset.y;
    if (v8 + rect[1] == self->mScissorRect[1] && self->mScissorRect[2] == rect[2] && self->mScissorRect[3] == rect[3])
    {
      return;
    }
  }

  else
  {
    v8 = self->mPixelOffset.y;
  }

  self->mScissorRect[0] = v7;
  v9 = (v8 + rect[1]);
  self->mScissorRect[1] = v9;
  v10 = rect[2];
  self->mScissorRect[2] = v10;
  v11 = rect[3];
  self->mScissorRect[3] = v11;
  v12 = v7 <= 0 && v9 <= 0;
  if (v12 && self->mPixelSize.width <= (v10 + v7) && self->mPixelSize.height <= (v11 + v9))
  {

    glDisable(0xC11u);
  }

  else
  {
    glEnable(0xC11u);
    if (self->mOrientation == 3)
    {
      v13 = self->mScissorRect[2];
      v14 = (self->mPixelSize.width - self->mScissorRect[0] - v13);
      v15 = self->mScissorRect[3];
      v16 = (self->mPixelSize.height - self->mScissorRect[1] - v15);
    }

    else
    {
      v14 = self->mScissorRect[0];
      v16 = self->mScissorRect[1];
      v13 = self->mScissorRect[2];
      v15 = self->mScissorRect[3];
    }

    glScissor(v14, v16, v13, v15);
  }
}

- (void)setForeColor:(const float *)color saveTo:(float *)to
{
  if (to)
  {
    *to = *self->mOuterState->foreColor;
  }

  *self->mOuterState->foreColor = *color;
}

- (void)setForeColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha saveTo:(float *)to
{
  if (to)
  {
    *to = *self->mOuterState->foreColor;
  }

  self->mOuterState->foreColor[0] = red;
  self->mOuterState->foreColor[1] = green;
  self->mOuterState->foreColor[2] = blue;
  self->mOuterState->foreColor[3] = alpha;
}

- (void)composeForeColor:(const float *)color saveTo:(float *)to
{
  if (to)
  {
    *to = *self->mOuterState->foreColor;
  }

  self->mOuterState->foreColor[0] = *color * self->mOuterState->foreColor[0];
  self->mOuterState->foreColor[1] = color[1] * self->mOuterState->foreColor[1];
  self->mOuterState->foreColor[2] = color[2] * self->mOuterState->foreColor[2];
  self->mOuterState->foreColor[3] = color[3] * self->mOuterState->foreColor[3];
}

- (void)composeForeColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha saveTo:(float *)to
{
  if (to)
  {
    *to = *self->mOuterState->foreColor;
  }

  self->mOuterState->foreColor[0] = self->mOuterState->foreColor[0] * red;
  self->mOuterState->foreColor[1] = self->mOuterState->foreColor[1] * green;
  self->mOuterState->foreColor[2] = self->mOuterState->foreColor[2] * blue;
  self->mOuterState->foreColor[3] = self->mOuterState->foreColor[3] * alpha;
}

- (void)setBackColor:(const float *)color saveTo:(float *)to
{
  if (to)
  {
    *to = *self->mOuterState->backColor;
  }

  *self->mOuterState->backColor = *color;
}

- (void)setBackColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha saveTo:(float *)to
{
  if (to)
  {
    *to = *self->mOuterState->backColor;
  }

  self->mOuterState->backColor[0] = red;
  self->mOuterState->backColor[1] = green;
  self->mOuterState->backColor[2] = blue;
  self->mOuterState->backColor[3] = alpha;
}

- (void)setImage:(id)image onTextureUnit:(unint64_t)unit withReferenceAspectRatio:(float)ratio state:(id *)state
{
  texture = [image texture];
  textureName = [texture textureName];
  textureTarget = [texture textureTarget];
  if (texture && textureName && textureTarget)
  {
    self->mOuterState->textureTargetOnUnit[unit] = textureTarget;
    self->mOuterState->textureNameOnUnit[unit] = textureName;
    [texture timestamp];
    self->mOuterState->textureTimestampOnUnit[unit] = v13;
    memset(v15, 0, sizeof(v15));
    [image getMatrix:v15 forReferenceAspectRatio:COERCE_DOUBLE(LODWORD(ratio))];
    [(MRContext *)self setTextureMatrix:v15 onTextureUnit:unit];
    filterID = [image filterID];
    if (filterID != [(MRImage *)self->mTextureUnitImages[unit] filterID])
    {
      self->mForceShaderUpdate = 1;
    }

    self->mTextureUnitImages[unit] = [image retainByUser];
  }
}

- (void)unsetImage:(id)image onTextureUnit:(unint64_t)unit state:(id *)state
{
  v7 = (&self->super.isa + unit);
  [v7[36] releaseByUser];
  v7[36] = 0;
  self->mOuterState->textureNameOnUnit[unit] = 0;
}

- (id)imageSetOnTextureUnit:(unint64_t)unit
{
  if (unit > 3)
  {
    return 0;
  }

  v3 = self->mTextureUnitImages[unit];
  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

- (void)_updateTextureOnUnit:(unint64_t)unit
{
  v3 = &self->super.isa + unit;
  v4 = v3[36];
  if (!v4)
  {
    return;
  }

  texture = [(objc_class *)v3[36] texture];
  if (!texture)
  {
    return;
  }

  v8 = texture;
  v38 = 0;
  v39 = 0;
  if ([(objc_class *)v4 clampMode]== 1)
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    if ([(objc_class *)v4 usesBackgroundColorAsBorderColor])
    {
      isPremultiplied = [v8 isPremultiplied];
      mOuterState = self->mOuterState;
      v12 = mOuterState->backColor[0];
      if (isPremultiplied)
      {
        v9 = mOuterState->backColor[3];
        v12 = v12 * v9;
        v11 = v9 * mOuterState->backColor[1];
        v38 = __PAIR64__(LODWORD(v11), LODWORD(v12));
        v10 = v9 * mOuterState->backColor[2];
        *&v39 = v10;
      }

      else
      {
        v11 = mOuterState->backColor[1];
        *&v38 = mOuterState->backColor[0];
        *(&v38 + 1) = v11;
        v10 = mOuterState->backColor[2];
        *&v39 = v10;
        v9 = mOuterState->backColor[3];
      }

      *(&v39 + 1) = v9;
    }

    borderColor = [v8 borderColor];
    *&v17 = v12;
    *&v18 = v11;
    *&v19 = v10;
    *&v20 = v9;
    [(MRShader *)self->mCurrentShader setUniformVec4:@"uTexture0BorderColor" forKey:v17];
    LODWORD(v21) = *borderColor;
    if (*borderColor != v12 || (LODWORD(v21) = borderColor[1], *&v21 != v11) || (LODWORD(v21) = borderColor[2], *&v21 != v10) || (LODWORD(v21) = borderColor[3], *&v21 != v9))
    {
      [v8 setBorderColor:{&v38, v21}];
    }
  }

  else
  {
    if ([(objc_class *)v4 clampMode]== 3)
    {
      if ([v8 textureTarget] == 3553 && (objc_msgSend(v8, "isPowerOfTwo") & 1) == 0)
      {
        NSLog(@"Using REPEAT clamp mode with NPOT texture is not supported");
      }

      v15 = 10497;
      goto LABEL_25;
    }

    if ([(objc_class *)v4 clampMode]== 4)
    {
      if ([v8 textureTarget] == 3553 && (objc_msgSend(v8, "isPowerOfTwo") & 1) == 0)
      {
        NSLog(@"Using MIRRORED_REPEAT clamp mode with NPOT texture is not supported");
      }

      v15 = 33648;
      goto LABEL_25;
    }

    if (![(objc_class *)v4 clampMode])
    {
      NSLog(@"texture's clamp mode is not set, defaulting to ClampToEdge");
    }
  }

  v15 = 33071;
LABEL_25:
  filtersNearest = [(objc_class *)v4 filtersNearest];
  usesMipmap = [(objc_class *)v4 usesMipmap];
  mipmapFiltersNearest = [(objc_class *)v4 mipmapFiltersNearest];
  if (usesMipmap)
  {
    v25 = mipmapFiltersNearest;
    if (([v8 hasMipmap] & 1) == 0)
    {
      NSLog(@"Using mipmapping on a texture that doesn't have mipmaps");
    }

    v26 = filtersNearest == 0;
    if (v25)
    {
      v27 = 9984;
    }

    else
    {
      v27 = 9986;
    }
  }

  else
  {
    v26 = filtersNearest == 0;
    v27 = 9728;
  }

  if (v26)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = v27;
  }

  if (filtersNearest)
  {
    v29 = 9728;
  }

  else
  {
    v29 = 9729;
  }

  wrapS = [v8 wrapS];
  wrapT = [v8 wrapT];
  minFilter = [v8 minFilter];
  magFilter = [v8 magFilter];
  v34 = magFilter;
  if (v15 != wrapS || v15 != wrapT || v28 != minFilter || v29 != magFilter)
  {
    textureTarget = [v8 textureTarget];
    unitCopy = unit;
    v37 = textureTarget;
    if (self->mActiveTextureUnit != unitCopy)
    {
      self->mActiveTextureUnit = unitCopy;
      glActiveTexture(unitCopy + 33984);
    }

    if (v15 != wrapS)
    {
      glTexParameteri(v37, 0x2802u, v15);
      [v8 setWrapS:v15];
    }

    if (v15 != wrapT)
    {
      glTexParameteri(v37, 0x2803u, v15);
      [v8 setWrapT:v15];
    }

    if (v28 != minFilter)
    {
      glTexParameteri(v37, 0x2801u, v28);
      [v8 setMinFilter:v28];
    }

    if (v29 != v34)
    {
      glTexParameteri(v37, 0x2800u, v29);
      [v8 setMagFilter:v29];
    }
  }
}

- (void)snapshotWithTextureName:(int)name offset:(CGPoint)offset size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = offset.y;
  x = offset.x;
  if (self->mActiveTextureUnit)
  {
    self->mActiveTextureUnit = 0;
    glActiveTexture(0x84C0u);
  }

  self->mInnerState->textureNameOnUnit[0] = name;
  glBindTexture(0xDE1u, name);

  glCopyTexSubImage2D(0xDE1u, 0, 0, 0, x, y, width, height);
}

- (BOOL)commitShaderChange
{
  if ([(MRContextState *)self->mOuterState shaderID])
  {
    goto LABEL_2;
  }

  filterID = [(MRImage *)self->mTextureUnitImages[0] filterID];
  shader = [(MRImage *)self->mTextureUnitImages[0] shader];
  v6 = [(NSDictionary *)shader objectForKey:@"id"];
  if (filterID)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = @"FittingFilter";
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    NSLog(@"Shader required");
LABEL_2:
    [(MRContext *)self _commitOuterToInner];
    return 0;
  }

  [(MRContext *)self setShader:?];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(NSDictionary *)shader countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  v11 = *v25;
  do
  {
    v12 = 0;
    do
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(shader);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      if (!NSStringIsEqual(v13, "id") && !NSStringHasPrefix(v13, "."))
      {
        if ([v13 characterAtIndex:0] == 95)
        {
          -[MRContext setShaderUniformInt:forKey:](self, "setShaderUniformInt:forKey:", [-[NSDictionary objectForKey:](shader objectForKey:{v13), "intValue"}], v13);
          goto LABEL_23;
        }

        if (NSStringHasSuffix(v13, "enter") || NSStringHasSuffix(v13, "oint"))
        {
          [-[NSDictionary objectForKey:](shader objectForKey:{v13), "CGPointValue"}];
LABEL_22:
          *&v14 = v14;
          *&v15 = v15;
          [(MRContext *)self setShaderUniformVec2:v13 forKey:v14];
          goto LABEL_23;
        }

        if (NSStringHasSuffix(v13, "ize") || NSStringHasSuffix(v13, "invRadii"))
        {
          [-[NSDictionary objectForKey:](shader objectForKey:{v13), "CGSizeValue"}];
          goto LABEL_22;
        }

        HasSuffix = NSStringHasSuffix(v13, "olor");
        v17 = [(NSDictionary *)shader objectForKey:v13];
        if (HasSuffix)
        {
          Components = CGColorGetComponents(v17);
          v19 = Components[3];
          v20 = *Components * v19;
          *&v20 = v20;
          v21 = v19 * Components[1];
          *&v21 = v21;
          v22 = v19 * Components[2];
          *&v22 = v22;
          *&v19 = v19;
          [(MRContext *)self setShaderUniformVec4:v13 forKey:v20];
        }

        else
        {
          [(CGColor *)v17 floatValue];
          [(MRContext *)self setShaderUniformFloat:v13 forKey:?];
        }
      }

LABEL_23:
      ++v12;
    }

    while (v10 != v12);
    v23 = [(NSDictionary *)shader countByEnumeratingWithState:&v24 objects:v28 count:16];
    v10 = v23;
  }

  while (v23);
LABEL_33:
  [(MRContext *)self _commitOuterToInner];
  [(MRContext *)self unsetShader];
  return 1;
}

- (void)_commitOuterToInner
{
  shaderArguments = [(MRContextState *)self->mInnerState shaderArguments];
  filter0 = [(MRShaderArguments *)shaderArguments filter0];
  if (filter0 == [(MRImage *)self->mTextureUnitImages[0] filterID]&& (v5 = [(MRShaderArguments *)shaderArguments filter1], v5 == [(MRImage *)self->mTextureUnitImages[1] filterID]) && (v6 = [(MRShaderArguments *)shaderArguments filter2], v6 == [(MRImage *)self->mTextureUnitImages[2] filterID]))
  {
    v7 = &self->mTextureUnitImages[1];
    filter3 = [(MRShaderArguments *)shaderArguments filter3];
    filterID = [(MRImage *)self->mTextureUnitImages[3] filterID];
    v39 = self->mTextureUnitImages[0];
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = filter3 == filterID;
    }

    LOBYTE(v41) = !v40;
    if (v39 && filter3 == filterID)
    {
      v42 = [(MRImage *)v39 clampMode]== 1;
      v41 = v42 ^ [(MRShaderArguments *)shaderArguments texture0ClampsToBorder];
    }

    LOBYTE(v8) = (*v7 != 0) | v41;
    if (*v7 && (v41 & 1) == 0)
    {
      v43 = [*v7 clampMode] == 1;
      v8 = v43 ^ [(MRShaderArguments *)shaderArguments texture1ClampsToBorder];
    }
  }

  else
  {
    v7 = &self->mTextureUnitImages[1];
    LOBYTE(v8) = 1;
  }

  v9 = +[MRShaderManager sharedManager];
  shaderID = [(MRContextState *)self->mOuterState shaderID];
  shaderID2 = [(MRContextState *)self->mInnerState shaderID];
  if (!self->mForceShaderUpdate)
  {
    v12 = shaderID2;
    mCurrentShader = self->mCurrentShader;
    if (mCurrentShader)
    {
      if (shaderID == v12)
      {
        if ((v8 & 1) == 0)
        {
LABEL_28:
          if ([(MRShader *)mCurrentShader useContext]!= self)
          {
            [(MRShader *)self->mCurrentShader setUseContext:self];
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      else if (!(v8 & 1 | ![(NSString *)shaderID isEqualToString:?]))
      {
        mCurrentShader = self->mCurrentShader;
        goto LABEL_28;
      }
    }
  }

  self->mForceShaderUpdate = 0;
  [(MRContextState *)self->mInnerState setShaderID:shaderID];
  if (!shaderArguments)
  {
    shaderArguments = objc_alloc_init(MRShaderArguments);
    [(MRContextState *)self->mInnerState setShaderArguments:shaderArguments];
  }

  [(MRShaderArguments *)shaderArguments setFilter0:[(MRImage *)self->mTextureUnitImages[0] filterID]];
  [(MRShaderArguments *)shaderArguments setFilter1:[(MRImage *)self->mTextureUnitImages[1] filterID]];
  [(MRShaderArguments *)shaderArguments setFilter2:[(MRImage *)self->mTextureUnitImages[2] filterID]];
  [(MRShaderArguments *)shaderArguments setFilter3:[(MRImage *)self->mTextureUnitImages[3] filterID]];
  v14 = self->mTextureUnitImages[0];
  if (v14)
  {
    v15 = [(MRImage *)v14 clampMode]== 1;
  }

  else
  {
    v15 = 0;
  }

  [(MRShaderArguments *)shaderArguments setTexture0ClampsToBorder:v15];
  if (*v7)
  {
    v16 = [*v7 clampMode] == 1;
  }

  else
  {
    v16 = 0;
  }

  [(MRShaderArguments *)shaderArguments setTexture1ClampsToBorder:v16];
  v17 = self->mCurrentShader;
  if (v17)
  {
  }

  v18 = [v9 shaderForShaderID:shaderID inContext:self withArguments:shaderArguments];
  self->mCurrentShader = v18;
  if (!v18)
  {
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  program = [(MRShader *)v18 program];
  glUseProgram(program);
  if ([(MRShader *)self->mCurrentShader textureUnitsAreBound])
  {
LABEL_30:
    v22 = 1;
    goto LABEL_32;
  }

  for (i = 0; i != 4; ++i)
  {
    UniformLocation = glGetUniformLocation(program, off_1AB6A8[i]);
    if ((UniformLocation & 0x80000000) == 0)
    {
      glUniform1i(UniformLocation, i);
    }
  }

  v22 = 1;
  [(MRShader *)self->mCurrentShader setTextureUnitsAreBound:1];
LABEL_32:
  mOuterState = self->mOuterState;
  mInnerState = self->mInnerState;
  depthTestIsEnabled = mOuterState->depthTestIsEnabled;
  if (depthTestIsEnabled != mInnerState->depthTestIsEnabled)
  {
    mInnerState->depthTestIsEnabled = depthTestIsEnabled;
    if (self->mOuterState->depthTestIsEnabled)
    {
      glEnable(0xB71u);
    }

    else
    {
      glDisable(0xB71u);
    }

    glDepthMask(self->mOuterState->depthTestIsEnabled);
    mOuterState = self->mOuterState;
    mInnerState = self->mInnerState;
  }

  if (mOuterState->blendingIsEnabled == mInnerState->blendingIsEnabled)
  {
    v26 = 0;
    if (!mOuterState->blendingIsEnabled)
    {
      goto LABEL_87;
    }

LABEL_50:
    blendingType = mOuterState->blendingType;
    v30 = mInnerState->blendingType;
    if (blendingType == v30)
    {
      goto LABEL_87;
    }

    v32 = blendingType == 2 || blendingType == 4;
    v34 = v30 == 2 || v30 == 4;
    v26 |= v32 ^ v34;
    if (blendingType <= 3)
    {
      if (blendingType == 2)
      {
        v35 = 1;
        goto LABEL_83;
      }

      if (blendingType == 3)
      {
        v35 = 770;
LABEL_83:
        glBlendFunc(v35, 0x303u);
      }

LABEL_86:
      self->mInnerState->blendingType = self->mOuterState->blendingType;
      mOuterState = self->mOuterState;
      mInnerState = self->mInnerState;
      goto LABEL_87;
    }

    if (blendingType == 4)
    {
      v36 = 1;
    }

    else
    {
      if (blendingType != 5)
      {
        goto LABEL_86;
      }

      v36 = 770;
    }

    glBlendFuncSeparate(v36, 0x303u, 0, 1u);
    goto LABEL_86;
  }

  if (mOuterState->blendingIsEnabled)
  {
    glEnable(0xBE2u);
  }

  else
  {
    glDisable(0xBE2u);
  }

  self->mInnerState->blendingIsEnabled = self->mOuterState->blendingIsEnabled;
  mOuterState = self->mOuterState;
  mInnerState = self->mInnerState;
  v27 = mOuterState->blendingType;
  v26 = v27 == 2 || v27 == 4;
  if (mOuterState->blendingIsEnabled)
  {
    goto LABEL_50;
  }

LABEL_87:
  if (mOuterState->cullingIsEnabled == mInnerState->cullingIsEnabled)
  {
    if (!mOuterState->cullingIsEnabled)
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (mOuterState->cullingIsEnabled)
    {
      glEnable(0xB44u);
    }

    else
    {
      glDisable(0xB44u);
    }

    self->mInnerState->cullingIsEnabled = self->mOuterState->cullingIsEnabled;
    mOuterState = self->mOuterState;
    if (!mOuterState->cullingIsEnabled)
    {
      goto LABEL_99;
    }
  }

  cullFrontfacing = mOuterState->cullFrontfacing;
  if (cullFrontfacing != self->mInnerState->cullFrontfacing)
  {
    if (cullFrontfacing)
    {
      v45 = 1028;
    }

    else
    {
      v45 = 1029;
    }

    glCullFace(v45);
    self->mInnerState->cullFrontfacing = self->mOuterState->cullFrontfacing;
  }

LABEL_99:
  v46 = 0;
  mTextureUnitImages = self->mTextureUnitImages;
  do
  {
    v49 = self->mOuterState;
    v48 = self->mInnerState;
    v50 = v49 + 4 * v46;
    v51 = v48 + 4 * v46;
    if (*(v50 + 118) != *(v51 + 118) || *(v50 + 114) != *(v51 + 114) || v49->textureTimestampOnUnit[v46] != v48->textureTimestampOnUnit[v46])
    {
      if (v46 != self->mActiveTextureUnit)
      {
        self->mActiveTextureUnit = v46;
        glActiveTexture(v46 | 0x84C0);
        v49 = self->mOuterState;
        v48 = self->mInnerState;
      }

      v52 = v49->textureTargetOnUnit[v46];
      v53 = v48 + 4 * v46;
      v54 = *(v53 + 114);
      if (v52 != v54 && *(v53 + 118))
      {
        glBindTexture(v54, 0);
        v49 = self->mOuterState;
        v52 = v49->textureTargetOnUnit[v46];
      }

      if (v52)
      {
        glBindTexture(v52, v49->textureNameOnUnit[v46]);
        v55 = self->mOuterState->textureTargetOnUnit[v46];
      }

      else
      {
        v55 = 0;
      }

      self->mInnerState->textureTargetOnUnit[v46] = v55;
      self->mInnerState->textureNameOnUnit[v46] = self->mOuterState->textureNameOnUnit[v46];
      self->mInnerState->textureTimestampOnUnit[v46] = self->mOuterState->textureTimestampOnUnit[v46];
    }

    [(MRContext *)self _updateTextureOnUnit:v46++];
  }

  while (v46 != 4);
  v57 = self->mOuterState;
  v56 = self->mInnerState;
  if ((v22 & 1) == 0)
  {
    v62 = 0;
    while (v57->modelViewMatrix[v62] == v56->modelViewMatrix[v62])
    {
      if (++v62 == 16)
      {
        goto LABEL_118;
      }
    }
  }

  v58 = *v57->modelViewMatrix;
  v59 = *&v57->modelViewMatrix[4];
  v60 = *&v57->modelViewMatrix[8];
  *&v56->modelViewMatrix[12] = *&v57->modelViewMatrix[12];
  *&v56->modelViewMatrix[8] = v60;
  *&v56->modelViewMatrix[4] = v59;
  *v56->modelViewMatrix = v58;
  memset(v149, 0, sizeof(v149));
  *&v61 = MRMatrix_MultiplyWithMatrix(self->mOuterState->modelViewMatrix, self->mProjectionMatrixWithOrientationCorrection, v149);
  [(MRShader *)self->mCurrentShader setModelViewProjectionMatrix:v149, v61];
LABEL_118:
  if ([(MRShader *)self->mCurrentShader caresAboutForeColor])
  {
    v63 = self->mOuterState;
    if (((v22 | v26) & 1) != 0 || (v64 = self->mInnerState, v63->foreColor[0] != v64->foreColor[0]) || v63->foreColor[1] != v64->foreColor[1] || v63->foreColor[2] != v64->foreColor[2] || v64->foreColor[3] != v63->foreColor[3])
    {
      v65 = v63->blendingType;
      if (v65 == 4 || v65 == 2)
      {
        v67 = *&v63->foreColor[2];
        v68 = vrev64_s32(v67);
        LODWORD(v149[0]) = vmuls_lane_f32(v63->foreColor[0], v67, 1);
        HIDWORD(v149[0]) = v67.i32[1];
        v67.i32[0] = LODWORD(v63->foreColor[1]);
        *(v149 + 4) = vmul_f32(v67, v68);
        v69 = self->mCurrentShader;
        foreColor = v149;
      }

      else
      {
        v69 = self->mCurrentShader;
        foreColor = v63->foreColor;
      }

      [(MRShader *)v69 setForeColor:foreColor];
      *self->mInnerState->foreColor = *self->mOuterState->foreColor;
    }
  }

  if ([(MRShader *)self->mCurrentShader caresAboutNormal])
  {
    v74 = self->mOuterState;
    *&v71 = v74->normal[0];
    *&v72 = v74->normal[1];
    *&v73 = v74->normal[2];
    [(MRShader *)self->mCurrentShader setNormal:v71];
  }

  v75 = 0;
  for (j = 72; j != 328; j += 64)
  {
    if (mTextureUnitImages[v75])
    {
      [(MRShader *)self->mCurrentShader setTextureMatrix:self->mOuterState + j onTextureUnit:v75];
    }

    ++v75;
  }

  if (*mTextureUnitImages && [(MRShader *)self->mCurrentShader shaderID]== @"FittingFilter")
  {
    v77 = self->mCurrentShader;
    [(MRImage *)self->mTextureUnitImages[0] width];
    v79 = v78;
    [(MRImage *)self->mTextureUnitImages[0] height];
    *&v81 = v80;
    *&v80 = v79;
    [(MRShader *)v77 setUniformVec2:@"textureSize" forKey:v80];
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  temporaryUniforms = [(MRContextState *)self->mOuterState temporaryUniforms];
  v83 = [(NSMutableDictionary *)temporaryUniforms countByEnumeratingWithState:&v141 objects:v148 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v142;
    do
    {
      for (k = 0; k != v84; k = k + 1)
      {
        if (*v142 != v85)
        {
          objc_enumerationMutation(temporaryUniforms);
        }

        [(MRShader *)self->mCurrentShader setUniform:[(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] objectForKey:*(*(&v141 + 1) + 8 * k)] forKey:*(*(&v141 + 1) + 8 * k)];
      }

      v84 = [(NSMutableDictionary *)temporaryUniforms countByEnumeratingWithState:&v141 objects:v148 count:16];
    }

    while (v84);
  }

  v87 = self->mOuterState;
  v88 = self->mInnerState;
  vbo = v87->vbo;
  v90 = v88->vbo;
  vertexFlags = v87->vertexFlags;
  v92 = v88->vertexFlags;
  if (vbo != v90)
  {
    glBindBuffer(0x8892u, v87->vbo);
    self->mInnerState->vbo = self->mOuterState->vbo;
  }

  if (vertexFlags != v92)
  {
    self->mInnerState->vertexFlags = self->mOuterState->vertexFlags;
  }

  if (!self->_meshIsBound)
  {
    v93 = self->mOuterState;
    if (v93->vertexArrayIsEnabled == self->mInnerState->vertexArrayIsEnabled)
    {
      if (!v93->vertexArrayIsEnabled)
      {
        goto LABEL_167;
      }
    }

    else
    {
      if (v93->vertexArrayIsEnabled)
      {
        glEnableVertexAttribArray(0);
      }

      else
      {
        glDisableVertexAttribArray(0);
      }

      self->mInnerState->vertexArrayIsEnabled = self->mOuterState->vertexArrayIsEnabled;
      v93 = self->mOuterState;
      if (!v93->vertexArrayIsEnabled)
      {
        goto LABEL_167;
      }
    }

    vertexStride = v93->vertexStride;
    if (vbo != v90 || (v95 = self->mInnerState, vertexStride != v95->vertexStride) || v93->vertexPointer != v95->vertexPointer || vertexFlags != v92)
    {
      if (v93->vertexFlags)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      glVertexAttribPointer(0, v96, 0x1406u, 0, vertexStride, v93->vertexPointer);
      self->mInnerState->vertexPointer = self->mOuterState->vertexPointer;
      self->mInnerState->vertexStride = self->mOuterState->vertexStride;
      v93 = self->mOuterState;
    }

LABEL_167:
    v97 = self->mInnerState;
    if (v93->normalArrayIsEnabled == v97->normalArrayIsEnabled)
    {
      if (!v93->normalArrayIsEnabled)
      {
        goto LABEL_178;
      }
    }

    else
    {
      if (v93->normalArrayIsEnabled)
      {
        glEnableVertexAttribArray(2u);
      }

      else
      {
        glDisableVertexAttribArray(2u);
      }

      self->mInnerState->normalArrayIsEnabled = self->mOuterState->normalArrayIsEnabled;
      v93 = self->mOuterState;
      v97 = self->mInnerState;
      if (!v93->normalArrayIsEnabled)
      {
        goto LABEL_178;
      }
    }

    normalsPointer = v93->normalsPointer;
    if (normalsPointer != v97->normalsPointer || vbo != v90 && (v93->vertexFlags & 2) != 0)
    {
      glVertexAttribPointer(2u, 3, 0x1406u, 0, v93->vertexStride, normalsPointer);
      self->mInnerState->normalsPointer = self->mOuterState->normalsPointer;
      v93 = self->mOuterState;
      v97 = self->mInnerState;
    }

LABEL_178:
    if (v93->foreColorArrayIsEnabled == v97->foreColorArrayIsEnabled)
    {
      if (!v93->foreColorArrayIsEnabled)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v93->foreColorArrayIsEnabled)
      {
        glEnableVertexAttribArray(1u);
      }

      else
      {
        glDisableVertexAttribArray(1u);
      }

      self->mInnerState->foreColorArrayIsEnabled = self->mOuterState->foreColorArrayIsEnabled;
      v93 = self->mOuterState;
      v97 = self->mInnerState;
      if (!v93->foreColorArrayIsEnabled)
      {
        goto LABEL_189;
      }
    }

    colorsPointer = v93->colorsPointer;
    if (colorsPointer != v97->colorsPointer || vbo != v90 && (v93->vertexFlags & 0x80) != 0)
    {
      glVertexAttribPointer(1u, 4, 0x1406u, 0, v93->vertexStride, colorsPointer);
      self->mInnerState->colorsPointer = self->mOuterState->colorsPointer;
      v93 = self->mOuterState;
      v97 = self->mInnerState;
    }

LABEL_189:
    inSpriteCoordinatesArrayIsEnabled = v93->inSpriteCoordinatesArrayIsEnabled;
    if (inSpriteCoordinatesArrayIsEnabled == v97->inSpriteCoordinatesArrayIsEnabled)
    {
      if (!inSpriteCoordinatesArrayIsEnabled)
      {
LABEL_200:
        v102 = 0;
        while (1)
        {
          v103 = self->mOuterState;
          if (v103->textureCoordinatesArrayIsEnabled[v102] == self->mInnerState->textureCoordinatesArrayIsEnabled[v102])
          {
            if (v103->textureCoordinatesArrayIsEnabled[v102])
            {
              goto LABEL_208;
            }
          }

          else
          {
            v104 = v102 + 3;
            if (v103->textureCoordinatesArrayIsEnabled[v102])
            {
              glEnableVertexAttribArray(v104);
            }

            else
            {
              glDisableVertexAttribArray(v104);
            }

            self->mInnerState->textureCoordinatesArrayIsEnabled[v102] = self->mOuterState->textureCoordinatesArrayIsEnabled[v102];
            v103 = self->mOuterState;
            if (v103->textureCoordinatesArrayIsEnabled[v102])
            {
LABEL_208:
              v105 = v103->textureCoordinatesPointer[v102];
              if (vbo != v90 || v105 != self->mInnerState->textureCoordinatesPointer[v102] || ((v103->vertexFlags >> v102) & 4) != 0)
              {
                glVertexAttribPointer(v102 + 3, 2, 0x1406u, 0, v103->vertexStride, v105);
                self->mInnerState->textureCoordinatesPointer[v102] = self->mOuterState->textureCoordinatesPointer[v102];
              }
            }
          }

          if (++v102 == 4)
          {
            [(NSMutableDictionary *)[(MRContextState *)self->mOuterState vertexAttributes] removeAllObjects];
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            mVertexAttributes = self->mVertexAttributes;
            v107 = [(NSMutableDictionary *)mVertexAttributes countByEnumeratingWithState:&v137 objects:v147 count:16];
            if (v107)
            {
              v108 = v107;
              v109 = *v138;
              do
              {
                for (m = 0; m != v108; m = m + 1)
                {
                  if (*v138 != v109)
                  {
                    objc_enumerationMutation(mVertexAttributes);
                  }

                  v111 = *(*(&v137 + 1) + 8 * m);
                  v112 = [(MRShader *)self->mCurrentShader locationForAttribute:v111];
                  if ((v112 & 0x80000000) == 0)
                  {
                    [(NSMutableDictionary *)[(MRContextState *)self->mOuterState vertexAttributes] setObject:[(NSMutableDictionary *)self->mVertexAttributes objectForKey:v111] forKey:[NSNumber numberWithUnsignedInteger:v112]];
                  }
                }

                v108 = [(NSMutableDictionary *)mVertexAttributes countByEnumeratingWithState:&v137 objects:v147 count:16];
              }

              while (v108);
            }

            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            vertexAttributes = [(MRContextState *)self->mInnerState vertexAttributes];
            v114 = [(NSMutableDictionary *)vertexAttributes countByEnumeratingWithState:&v133 objects:v146 count:16];
            if (v114)
            {
              v115 = v114;
              v116 = *v134;
              do
              {
                for (n = 0; n != v115; n = n + 1)
                {
                  if (*v134 != v116)
                  {
                    objc_enumerationMutation(vertexAttributes);
                  }

                  v118 = *(*(&v133 + 1) + 8 * n);
                  v119 = [(NSMutableDictionary *)[(MRContextState *)self->mInnerState vertexAttributes] objectForKey:v118];
                  if (v119[24] == 1)
                  {
                    v120 = v119;
                    if (![(NSMutableDictionary *)[(MRContextState *)self->mOuterState vertexAttributes] objectForKey:v118])
                    {
                      v120[24] = 0;
                      glDisableVertexAttribArray([v118 unsignedIntValue]);
                    }
                  }
                }

                v115 = [(NSMutableDictionary *)vertexAttributes countByEnumeratingWithState:&v133 objects:v146 count:16];
              }

              while (v115);
            }

            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            vertexAttributes2 = [(MRContextState *)self->mOuterState vertexAttributes];
            v122 = [(NSMutableDictionary *)vertexAttributes2 countByEnumeratingWithState:&v129 objects:v145 count:16];
            if (v122)
            {
              v123 = v122;
              v124 = *v130;
              do
              {
                for (ii = 0; ii != v123; ii = ii + 1)
                {
                  if (*v130 != v124)
                  {
                    objc_enumerationMutation(vertexAttributes2);
                  }

                  v126 = *(*(&v129 + 1) + 8 * ii);
                  v127 = [(NSMutableDictionary *)[(MRContextState *)self->mOuterState vertexAttributes] objectForKey:v126];
                  v128 = [(NSMutableDictionary *)[(MRContextState *)self->mInnerState vertexAttributes] objectForKey:v126];
                  if (!v128)
                  {
                    v128 = objc_alloc_init(MRContextVertexAttributes);
                    [(NSMutableDictionary *)[(MRContextState *)self->mInnerState vertexAttributes] setObject:v128 forKey:v126];
                  }

                  if (!v128->enabled)
                  {
                    glEnableVertexAttribArray([v126 unsignedIntValue]);
                    v128->enabled = 1;
                  }

                  if (v128->pointer != *(v127 + 1) || v128->size != *(v127 + 2))
                  {
                    glVertexAttribPointer([v126 unsignedIntValue], *(v127 + 4), 0x1406u, 0, 0, *(v127 + 1));
                    v128->pointer = *(v127 + 1);
                    v128->size = *(v127 + 2);
                  }
                }

                v123 = [(NSMutableDictionary *)vertexAttributes2 countByEnumeratingWithState:&v129 objects:v145 count:16];
              }

              while (v123);
            }

            goto LABEL_246;
          }
        }
      }
    }

    else
    {
      if (v93->inSpriteCoordinatesArrayIsEnabled)
      {
        glEnableVertexAttribArray(7u);
      }

      else
      {
        glDisableVertexAttribArray(7u);
      }

      self->mInnerState->inSpriteCoordinatesArrayIsEnabled = self->mOuterState->inSpriteCoordinatesArrayIsEnabled;
      v93 = self->mOuterState;
      if (!v93->inSpriteCoordinatesArrayIsEnabled)
      {
        goto LABEL_200;
      }
    }

    inSpriteCoordinatesPointer = v93->inSpriteCoordinatesPointer;
    if (vbo != v90 || inSpriteCoordinatesPointer != self->mInnerState->inSpriteCoordinatesPointer || (v93->vertexFlags & 0x40) != 0)
    {
      glVertexAttribPointer(7u, 2, 0x1406u, 0, v93->vertexStride, inSpriteCoordinatesPointer);
      self->mInnerState->inSpriteCoordinatesPointer = self->mOuterState->inSpriteCoordinatesPointer;
    }

    goto LABEL_200;
  }

LABEL_246:
  self->mCurrentVBOWasUpdated = 0;
}

- (void)setShader:(id)shader
{
  if ([(MRContextState *)self->mOuterState shaderID])
  {
    if (NSStringIsEqual([(MRContextState *)self->mOuterState shaderID], "ColoredTexture") || [(MRContextState *)self->mOuterState shaderID]== @"FittingFilter")
    {
      [(MRContext *)self unsetShader];
    }

    else
    {
      NSLog(@"Trying to set shader %@ on context but shader %@ is already set", shader, [(MRContextState *)self->mOuterState shaderID]);
    }
  }

  mOuterState = self->mOuterState;

  [(MRContextState *)mOuterState setShaderID:shader];
}

- (void)unsetShader
{
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] removeAllObjects];
  mOuterState = self->mOuterState;

  [(MRContextState *)mOuterState setShaderID:0];
}

- (void)setShaderUniformInt:(int)int forKey:(id)key
{
  v6 = [[MRUniform alloc] initWithI:int];
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] setObject:v6 forKey:key];
}

- (void)setShaderUniformFloat:(float)float forKey:(id)key
{
  v6 = [[MRUniform alloc] initWithFloat:float];
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] setObject:v6 forKey:key];
}

- (void)setShaderUniformVec2:(float)vec2 :(float)a4 forKey:(id)key
{
  v7 = [[MRUniform alloc] initWithVec2:vec2];
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] setObject:v7 forKey:key];
}

- (void)setShaderUniformVec3:(float)vec3 :(float)a4 :(float)a5 forKey:(id)key
{
  v8 = [[MRUniform alloc] initWithVec3:vec3];
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] setObject:v8 forKey:key];
}

- (void)setShaderUniformVec4:(float)vec4 :(float)a4 :(float)a5 :(float)a6 forKey:(id)key
{
  v9 = [[MRUniform alloc] initWithVec4:vec4];
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] setObject:v9 forKey:key];
}

- (void)setShaderUniformMat3:(float)mat3[16] forKey:(id)key
{
  v6 = [[MRUniform alloc] initWithMat4ForMat3:mat3];
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] setObject:v6 forKey:key];
}

- (void)setShaderUniformMat4:(float)mat4[16] forKey:(id)key
{
  v6 = [[MRUniform alloc] initWithMat4:mat4];
  [(NSMutableDictionary *)[(MRContextState *)self->mOuterState temporaryUniforms] setObject:v6 forKey:key];
}

- (void)setModelViewMatrix:(float)matrix[16] saveTo:(float *)to
{
  if (to)
  {
    mOuterState = self->mOuterState;
    v5 = *mOuterState->modelViewMatrix;
    v6 = *&mOuterState->modelViewMatrix[4];
    v7 = *&mOuterState->modelViewMatrix[12];
    *(to + 2) = *&mOuterState->modelViewMatrix[8];
    *(to + 3) = v7;
    *to = v5;
    *(to + 1) = v6;
  }

  modelViewMatrix = self->mOuterState->modelViewMatrix;
  if (modelViewMatrix != matrix)
  {
    v9 = *matrix;
    v10 = *(matrix + 1);
    v11 = *(matrix + 3);
    *&self->mOuterState->modelViewMatrix[8] = *(matrix + 2);
    *(modelViewMatrix + 3) = v11;
    *modelViewMatrix = v9;
    *(modelViewMatrix + 1) = v10;
  }
}

- (void)composeModelViewMatrix:(float)matrix[16] saveTo:(float *)to
{
  memset(v7, 0, sizeof(v7));
  *&v6 = MRMatrix_MultiplyWithMatrix(matrix, self->mOuterState->modelViewMatrix, v7);
  [(MRContext *)self setModelViewMatrix:v7 saveTo:to, v6];
}

- (void)translateModelViewMatrixByX:(float)x Y:(float)y Z:(float)z saveTo:(float *)to
{
  if (to)
  {
    mOuterState = self->mOuterState;
    v7 = *mOuterState->modelViewMatrix;
    v8 = *&mOuterState->modelViewMatrix[4];
    v9 = *&mOuterState->modelViewMatrix[12];
    *(to + 2) = *&mOuterState->modelViewMatrix[8];
    *(to + 3) = v9;
    *to = v7;
    *(to + 1) = v8;
  }

  self->mOuterState->modelViewMatrix[12] = self->mOuterState->modelViewMatrix[12] + x;
  self->mOuterState->modelViewMatrix[13] = self->mOuterState->modelViewMatrix[13] + y;
  self->mOuterState->modelViewMatrix[14] = self->mOuterState->modelViewMatrix[14] + z;
}

- (void)setNormal:(float)normal :(float)a4 :(float)a5
{
  self->mOuterState->normal[0] = normal;
  self->mOuterState->normal[1] = a4;
  self->mOuterState->normal[2] = a5;
}

- (void)setTextureMatrix:(float)matrix[16] onTextureUnit:(unint64_t)unit
{
  v4 = self->mOuterState->textureMatrix[unit];
  if (v4 != matrix)
  {
    v5 = *matrix;
    v6 = *(matrix + 1);
    v7 = *(matrix + 3);
    *&self->mOuterState->textureMatrix[unit][8] = *(matrix + 2);
    *(v4 + 3) = v7;
    *v4 = v5;
    *(v4 + 1) = v6;
  }
}

- (void)setVertexBuffer2D:(unsigned int)d withStride:(unint64_t)stride inSpriteCoordinatesOffset:(unint64_t)offset texture0CoordinatesOffset:(unint64_t)coordinatesOffset
{
  self->mOuterState->vbo = d;
  self->mOuterState->vertexFlags = 0;
  self->mOuterState->vertexStride = 4 * stride;
  self->mOuterState->vertexPointer = 0;
  self->mOuterState->vertexArrayIsEnabled = 1;
  self->mOuterState->inSpriteCoordinatesArrayIsEnabled = offset != 0x7FFFFFFFFFFFFFFFLL;
  mOuterState = self->mOuterState;
  if (mOuterState->inSpriteCoordinatesArrayIsEnabled)
  {
    mOuterState->inSpriteCoordinatesPointer = (4 * offset);
    self->mOuterState->vertexFlags |= 0x40u;
    mOuterState = self->mOuterState;
  }

  mOuterState->textureCoordinatesArrayIsEnabled[0] = coordinatesOffset != 0x7FFFFFFFFFFFFFFFLL;
  v7 = self->mOuterState;
  if (v7->textureCoordinatesArrayIsEnabled[0])
  {
    v7->textureCoordinatesPointer[0] = (4 * coordinatesOffset);
    self->mOuterState->vertexFlags |= 4u;
    v7 = self->mOuterState;
  }

  v7->textureCoordinatesArrayIsEnabled[1] = 0;
  self->mOuterState->textureCoordinatesArrayIsEnabled[2] = 0;
  self->mOuterState->textureCoordinatesArrayIsEnabled[3] = 0;
}

- (void)setVertexBuffer2D:(unsigned int)d withFeatures:(unint64_t)features
{
  self->mOuterState->vbo = d;
  self->mOuterState->vertexFlags = 0;
  self->mOuterState->vertexStride = 32;
  self->mOuterState->vertexPointer = 0;
  self->mOuterState->vertexArrayIsEnabled = 1;
  self->mOuterState->inSpriteCoordinatesArrayIsEnabled = features & 1;
  mOuterState = self->mOuterState;
  if (mOuterState->inSpriteCoordinatesArrayIsEnabled)
  {
    mOuterState->inSpriteCoordinatesPointer = &dword_8;
    self->mOuterState->vertexFlags |= 0x40u;
  }

  for (i = 0; i != 4; ++i)
  {
    self->mOuterState->textureCoordinatesArrayIsEnabled[i] = ((1 << (i + 1)) & features) != 0;
    self->mOuterState->textureCoordinatesPointer[i] = 0;
  }
}

- (void)setVertexPointer:(float *)pointer flags:(unsigned __int16)flags
{
  self->mOuterState->vertexPointer = pointer;
  self->mOuterState->vbo = 0;
  self->mOuterState->vertexFlags = flags;
  self->mOuterState->vertexArrayIsEnabled = 1;
  v4 = 2;
  if (flags)
  {
    v4 = 3;
  }

  if ((flags & 2) != 0)
  {
    self->mOuterState->normalsPointer = &pointer[v4];
    self->mOuterState->normalArrayIsEnabled = 1;
    v4 += 3;
  }

  for (i = 0; i != 4; ++i)
  {
    if (((flags >> i) & 4) != 0)
    {
      self->mOuterState->textureCoordinatesPointer[i] = &pointer[v4];
      self->mOuterState->textureCoordinatesArrayIsEnabled[i] = 1;
      v4 += 2;
    }
  }

  if ((flags & 0x40) != 0)
  {
    self->mOuterState->inSpriteCoordinatesPointer = &pointer[v4];
    self->mOuterState->inSpriteCoordinatesArrayIsEnabled = 1;
    v4 += 2;
  }

  if ((flags & 0x80) != 0)
  {
    self->mOuterState->colorsPointer = &pointer[v4];
    self->mOuterState->foreColorArrayIsEnabled = 1;
    LODWORD(v4) = v4 + 4;
  }

  self->mOuterState->vertexStride = 4 * v4;
}

- (void)setVertex2DPointer:(const float *)pointer
{
  self->mOuterState->vertexPointer = pointer;
  self->mOuterState->vbo = 0;
  self->mOuterState->vertexFlags = 0;
  self->mOuterState->vertexStride = 0;
  self->mOuterState->vertexArrayIsEnabled = 1;
}

- (void)setVertex3DPointer:(const float *)pointer
{
  self->mOuterState->vertexPointer = pointer;
  self->mOuterState->vbo = 0;
  self->mOuterState->vertexFlags = 1;
  self->mOuterState->vertexStride = 0;
  self->mOuterState->vertexArrayIsEnabled = 1;
}

- (void)setVertexAttributePointer:(const float *)pointer ofSize:(unint64_t)size forKey:(id)key
{
  mVertexAttributes = self->mVertexAttributes;
  if (!mVertexAttributes)
  {
    self->mVertexAttributes = objc_alloc_init(NSMutableDictionary);
LABEL_5:
    v10 = objc_alloc_init(MRContextVertexAttributes);
    [(NSMutableDictionary *)self->mVertexAttributes setObject:v10 forKey:key];

    goto LABEL_6;
  }

  v10 = [(NSMutableDictionary *)mVertexAttributes objectForKey:key];
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10->pointer = pointer;
  v10->size = size;
}

- (void)unsetVertexPointer
{
  self->mOuterState->vertexArrayIsEnabled = 0;
  mOuterState = self->mOuterState;
  vertexFlags = mOuterState->vertexFlags;
  if ((vertexFlags & 2) != 0)
  {
    mOuterState->normalArrayIsEnabled = 0;
    mOuterState = self->mOuterState;
    vertexFlags = mOuterState->vertexFlags;
  }

  if ((vertexFlags & 0x40) != 0)
  {
    mOuterState->inSpriteCoordinatesArrayIsEnabled = 0;
  }

  for (i = 0; i != 4; ++i)
  {
    v5 = self->mOuterState;
    if (((v5->vertexFlags >> i) & 4) != 0)
    {
      v5->textureCoordinatesArrayIsEnabled[i] = 0;
    }
  }

  v6 = self->mOuterState;
  if ((v6->vertexFlags & 0x80) != 0)
  {
    v6->foreColorArrayIsEnabled = 0;
  }
}

- (unsigned)createVBO
{
  buffers = 0;
  glGenBuffers(1, &buffers);
  glLabelObjectEXT(0x9151u, buffers, 0, "Marimba Context VBO");
  return buffers;
}

- (void)deleteVBO:(unsigned int)o
{
  buffers = o;
  glDeleteBuffers(1, &buffers);
  if (self->mInnerState->vbo == buffers)
  {
    glBindBuffer(0x8892u, 0);
    self->mInnerState->vbo = 0;
  }
}

- (void)uploadBuffer:(void *)buffer withSize:(int)size toVertexBuffer2D:(unsigned int)d usage:(unsigned int)usage
{
  if (self->mInnerState->vbo != d)
  {
    glBindBuffer(0x8892u, d);
  }

  glBufferData(0x8892u, size, buffer, usage);
  vbo = self->mInnerState->vbo;
  if (vbo != d)
  {
    glBindBuffer(0x8892u, vbo);
  }

  self->mCurrentVBOWasUpdated = 1;
}

- (unsigned)bindBuffer:(unsigned int)buffer
{
  vbo = self->mInnerState->vbo;
  if (vbo != buffer)
  {
    glBindBuffer(0x8892u, buffer);
    self->mInnerState->vbo = buffer;
  }

  return vbo;
}

- (void)drawTriangleStripFromOffset:(unint64_t)offset count:(unint64_t)count
{
  countCopy = count;
  offsetCopy = offset;
  commitShaderChange = [(MRContext *)self commitShaderChange];
  glDrawArrays(5u, offsetCopy, countCopy);
  if (commitShaderChange)
  {

    [(MRContext *)self unsetShader];
  }
}

- (void)drawIndexedTriangleStrip:(const unsigned __int16 *)strip count:(unint64_t)count
{
  countCopy = count;
  commitShaderChange = [(MRContext *)self commitShaderChange];
  glDrawElements(5u, countCopy, 0x1403u, strip);
  if (commitShaderChange)
  {

    [(MRContext *)self unsetShader];
  }
}

- (void)drawTriangleFanFromOffset:(unint64_t)offset count:(unint64_t)count
{
  countCopy = count;
  offsetCopy = offset;
  commitShaderChange = [(MRContext *)self commitShaderChange];
  glDrawArrays(6u, offsetCopy, countCopy);
  if (commitShaderChange)
  {

    [(MRContext *)self unsetShader];
  }
}

- (void)drawTrianglesFromOffset:(unint64_t)offset count:(unint64_t)count
{
  countCopy = count;
  offsetCopy = offset;
  commitShaderChange = [(MRContext *)self commitShaderChange];
  glDrawArrays(4u, offsetCopy, countCopy);
  if (commitShaderChange)
  {

    [(MRContext *)self unsetShader];
  }
}

- (void)drawLinesFromOffset:(unint64_t)offset count:(unint64_t)count
{
  countCopy = count;
  offsetCopy = offset;
  commitShaderChange = [(MRContext *)self commitShaderChange];
  glDrawArrays(2u, offsetCopy, countCopy);
  if (commitShaderChange)
  {

    [(MRContext *)self unsetShader];
  }
}

- (CGPoint)pixelOffset
{
  x = self->mPixelOffset.x;
  y = self->mPixelOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)pixelSize
{
  width = self->mPixelSize.width;
  height = self->mPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end