@interface MRShader
- (BOOL)caresAboutForeColor;
- (BOOL)caresAboutNormal;
- (MRShader)initWithShaderID:(id)a3 shaderKey:(id)a4 description:(id)a5 vertexShader:(unsigned int)a6 andFragmentShader:(unsigned int)a7 inContext:(id)a8;
- (int)_locationForUniform:(id)a3;
- (int)locationForAttribute:(id)a3;
- (void)dealloc;
- (void)setForeColor:(const float *)a3;
- (void)setModelViewProjectionMatrix:(float)a3[16];
- (void)setNormal:(float)a3 :(float)a4 :(float)a5;
- (void)setTextureMatrix:(float)a3[16] onTextureUnit:(unint64_t)a4;
- (void)setUniform:(id)a3 forKey:(id)a4;
- (void)setUniformFloat:(float)a3 forKey:(id)a4;
- (void)setUniformInt:(int)a3 forKey:(id)a4;
- (void)setUniformMat3:(float)a3[16] forKey:(id)a4;
- (void)setUniformMat4:(float)a3[16] forKey:(id)a4;
- (void)setUniformVec2:(float)a3 :(float)a4 forKey:(id)a5;
- (void)setUniformVec3:(float)a3 :(float)a4 :(float)a5 forKey:(id)a6;
- (void)setUniformVec4:(float)a3 :(float)a4 :(float)a5 :(float)a6 forKey:(id)a7;
- (void)setUseContext:(id)a3;
@end

@implementation MRShader

- (MRShader)initWithShaderID:(id)a3 shaderKey:(id)a4 description:(id)a5 vertexShader:(unsigned int)a6 andFragmentShader:(unsigned int)a7 inContext:(id)a8
{
  v20.receiver = self;
  v20.super_class = MRShader;
  v14 = [(MRShader *)&v20 init];
  if (v14)
  {
    *(v14 + 1) = a3;
    *(v14 + 2) = a4;
    *(v14 + 3) = a5;
    *(v14 + 4) = a8;
    *(v14 + 11) = a6;
    *(v14 + 12) = a7;
    Program = glCreateProgram();
    *(v14 + 10) = Program;
    v16 = *(v14 + 11);
    if (v16)
    {
      glAttachShader(Program, v16);
      Program = *(v14 + 10);
    }

    v17 = *(v14 + 12);
    if (v17)
    {
      glAttachShader(Program, v17);
      Program = *(v14 + 10);
    }

    glBindAttribLocation(Program, 0, "aVertex");
    glBindAttribLocation(*(v14 + 10), 1u, "aColor");
    glBindAttribLocation(*(v14 + 10), 2u, "aNormal");
    glBindAttribLocation(*(v14 + 10), 3u, "aTextureCoordinates0");
    glBindAttribLocation(*(v14 + 10), 4u, "aTextureCoordinates1");
    glBindAttribLocation(*(v14 + 10), 5u, "aTextureCoordinates2");
    glBindAttribLocation(*(v14 + 10), 6u, "aTextureCoordinates3");
    glBindAttribLocation(*(v14 + 10), 7u, "aInSpriteCoordinates");
    glBindAttribLocation(*(v14 + 10), 8u, "aAttributes");
    [*(v14 + 57) setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", 8), @"aAttributes"}];
    glBindAttribLocation(*(v14 + 10), 9u, "aParameter");
    [*(v14 + 57) setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", 9), @"aParameter"}];
    glLinkProgram(*(v14 + 10));
    *(v14 + 107) = -2;
    *(v14 + 54) = 0x100000001;
    *&v18 = 0x100000001;
    *(&v18 + 1) = 0x100000001;
    *(v14 + 412) = v18;
    *(v14 + 55) = objc_alloc_init(NSMutableDictionary);
    *(v14 + 57) = objc_alloc_init(NSMutableDictionary);
    *(v14 + 56) = objc_alloc_init(NSMutableDictionary);
  }

  return v14;
}

- (void)dealloc
{
  v3 = +[EAGLContext currentContext];
  v4 = v3;
  if (v3 != [(MRContext *)self->mContext glContext])
  {
    [EAGLContext setCurrentContext:[(MRContext *)self->mContext glContext]];
  }

  mVertexShader = self->mVertexShader;
  if (mVertexShader)
  {
    glDetachShader(self->mProgram, mVertexShader);
    self->mVertexShader = 0;
  }

  mFragmentShader = self->mFragmentShader;
  if (mFragmentShader)
  {
    glDetachShader(self->mProgram, mFragmentShader);
    self->mFragmentShader = 0;
  }

  glDeleteProgram(self->mProgram);
  self->mProgram = 0;
  if (+[EAGLContext currentContext]!= v3)
  {
    [EAGLContext setCurrentContext:v3];
  }

  self->mShaderID = 0;
  self->mShaderKey = 0;

  self->mDescription = 0;
  self->mContext = 0;

  self->mUniformLocations = 0;
  self->mAttributeLocations = 0;

  self->mUniforms = 0;
  v7.receiver = self;
  v7.super_class = MRShader;
  [(MRShader *)&v7 dealloc];
}

- (void)setUseContext:(id)a3
{
  if (self->mUseContext != a3)
  {
    self->mUseContext = a3;
    self->mModelViewProjectionMatrix[0] = -1.0e37;
    self->mNormal[0] = -1.0e37;
    self->mTextureMatrix[3][0] = -1.0e37;
    self->mTextureMatrix[2][0] = -1.0e37;
    self->mTextureMatrix[1][0] = -1.0e37;
    self->mTextureMatrix[0][0] = -1.0e37;
    self->mForeColor[0] = -1.0e37;
  }
}

- (void)setModelViewProjectionMatrix:(float)a3[16]
{
  v4 = 0;
  mModelViewProjectionMatrix = self->mModelViewProjectionMatrix;
  while (mModelViewProjectionMatrix[v4] == a3[v4])
  {
    if (++v4 == 16)
    {
      return;
    }
  }

  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = *(a3 + 3);
  *&self->mModelViewProjectionMatrix[8] = *(a3 + 2);
  *&self->mModelViewProjectionMatrix[12] = v8;
  *mModelViewProjectionMatrix = v6;
  *&self->mModelViewProjectionMatrix[4] = v7;
  mModelViewProjectionMatrixLocation = self->mModelViewProjectionMatrixLocation;
  if (mModelViewProjectionMatrixLocation == -2)
  {
    mModelViewProjectionMatrixLocation = glGetUniformLocation(self->mProgram, "uModelViewProjectionMatrix");
    self->mModelViewProjectionMatrixLocation = mModelViewProjectionMatrixLocation;
  }

  glUniformMatrix4fv(mModelViewProjectionMatrixLocation, 1, 0, mModelViewProjectionMatrix);
}

- (BOOL)caresAboutNormal
{
  mNormalLocation = self->mNormalLocation;
  if (mNormalLocation == -2)
  {
    mNormalLocation = glGetUniformLocation(self->mProgram, "uNormal");
    self->mNormalLocation = mNormalLocation;
  }

  return mNormalLocation >= 0;
}

- (void)setNormal:(float)a3 :(float)a4 :(float)a5
{
  mNormal = self->mNormal;
  if (self->mNormal[0] != a3 || self->mNormal[1] != a4 || self->mNormal[2] != a5)
  {
    self->mNormal[0] = a3;
    self->mNormal[1] = a4;
    self->mNormal[2] = a5;
    mNormalLocation = self->mNormalLocation;
    if (mNormalLocation == -2)
    {
      mNormalLocation = glGetUniformLocation(self->mProgram, "uNormal");
      self->mNormalLocation = mNormalLocation;
    }

    if ((mNormalLocation & 0x80000000) == 0)
    {

      glUniform3fv(mNormalLocation, 1, mNormal);
    }
  }
}

- (void)setTextureMatrix:(float)a3[16] onTextureUnit:(unint64_t)a4
{
  v5 = 0;
  v6 = self->mTextureMatrix[a4];
  while (v6[v5] == a3[v5])
  {
    if (++v5 == 16)
    {
      return;
    }
  }

  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 3);
  *&self->mTextureMatrix[a4][8] = *(a3 + 2);
  *&self->mTextureMatrix[a4][12] = v9;
  *v6 = v7;
  *&self->mTextureMatrix[a4][4] = v8;
  mTextureMatrixLocation = self->mTextureMatrixLocation;
  UniformLocation = self->mTextureMatrixLocation[a4];
  if (UniformLocation == -2)
  {
    UniformLocation = glGetUniformLocation(self->mProgram, off_1AB400[a4]);
    mTextureMatrixLocation[a4] = UniformLocation;
  }

  if ((UniformLocation & 0x80000000) == 0)
  {

    glUniformMatrix4fv(UniformLocation, 1, 0, v6);
  }
}

- (BOOL)caresAboutForeColor
{
  mForeColorLocation = self->mForeColorLocation;
  if (mForeColorLocation == -2)
  {
    mForeColorLocation = glGetUniformLocation(self->mProgram, "uColor");
    self->mForeColorLocation = mForeColorLocation;
  }

  return mForeColorLocation >= 0;
}

- (void)setForeColor:(const float *)a3
{
  v4 = 0;
  mForeColor = self->mForeColor;
  while (mForeColor[v4] == a3[v4])
  {
    if (++v4 == 4)
    {
      return;
    }
  }

  *mForeColor = *a3;
  mForeColorLocation = self->mForeColorLocation;
  if (mForeColorLocation == -2)
  {
    mForeColorLocation = glGetUniformLocation(self->mProgram, "uColor");
    self->mForeColorLocation = mForeColorLocation;
  }

  if ((mForeColorLocation & 0x80000000) == 0)
  {

    glUniform4fv(mForeColorLocation, 1, mForeColor);
  }
}

- (int)_locationForUniform:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mUniformLocations objectForKey:?];
  if (v5)
  {

    return [v5 intValue];
  }

  else
  {
    UniformLocation = glGetUniformLocation(self->mProgram, [a3 UTF8String]);
    v8 = UniformLocation;
    [(NSMutableDictionary *)self->mUniformLocations setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:?], a3];
    return v8;
  }
}

- (void)setUniformInt:(int)a3 forKey:(id)a4
{
  if (NSStringHasPrefix(self->mShaderID, "PhotoprintMiddle") || (v7 = [(NSMutableDictionary *)self->mUniforms objectForKey:a4]) == 0 || v7[10] != a3)
  {
    v8 = [[MRUniform alloc] initWithI:a3];
    [(NSMutableDictionary *)self->mUniforms setObject:v8 forKey:a4];

    v9 = [(MRShader *)self _locationForUniform:a4];
    if ((v9 & 0x80000000) == 0)
    {

      glUniform1i(v9, a3);
    }
  }
}

- (void)setUniformFloat:(float)a3 forKey:(id)a4
{
  if (NSStringHasPrefix(self->mShaderID, "PhotoprintMiddle") || (v7 = [(NSMutableDictionary *)self->mUniforms objectForKey:a4]) == 0 || v7[4] != a3)
  {
    v8 = [[MRUniform alloc] initWithFloat:a3];
    [(NSMutableDictionary *)self->mUniforms setObject:v8 forKey:a4];

    v9 = [(MRShader *)self _locationForUniform:a4];
    if ((v9 & 0x80000000) == 0)
    {

      glUniform1f(v9, a3);
    }
  }
}

- (void)setUniformVec2:(float)a3 :(float)a4 forKey:(id)a5
{
  if (NSStringHasPrefix(self->mShaderID, "PhotoprintMiddle") || (v9 = [(NSMutableDictionary *)self->mUniforms objectForKey:a5]) == 0 || v9[4] != a3 || v9[5] != a4)
  {
    v10 = [[MRUniform alloc] initWithVec2:a3];
    [(NSMutableDictionary *)self->mUniforms setObject:v10 forKey:a5];

    v11 = [(MRShader *)self _locationForUniform:a5];
    if ((v11 & 0x80000000) == 0)
    {

      glUniform2f(v11, a3, a4);
    }
  }
}

- (void)setUniformVec3:(float)a3 :(float)a4 :(float)a5 forKey:(id)a6
{
  if (NSStringHasPrefix(self->mShaderID, "PhotoprintMiddle") || (v11 = [(NSMutableDictionary *)self->mUniforms objectForKey:a6]) == 0 || v11[4] != a3 || v11[5] != a4 || v11[6] != a5)
  {
    v12 = [[MRUniform alloc] initWithVec3:a3];
    [(NSMutableDictionary *)self->mUniforms setObject:v12 forKey:a6];

    v13 = [(MRShader *)self _locationForUniform:a6];
    if ((v13 & 0x80000000) == 0)
    {

      glUniform3f(v13, a3, a4, a5);
    }
  }
}

- (void)setUniformVec4:(float)a3 :(float)a4 :(float)a5 :(float)a6 forKey:(id)a7
{
  if (NSStringHasPrefix(self->mShaderID, "PhotoprintMiddle") || (v13 = [(NSMutableDictionary *)self->mUniforms objectForKey:a7]) == 0 || v13[4] != a3 || v13[5] != a4 || v13[6] != a5 || v13[7] != a6)
  {
    v14 = [[MRUniform alloc] initWithVec4:a3];
    [(NSMutableDictionary *)self->mUniforms setObject:v14 forKey:a7];

    v15 = [(MRShader *)self _locationForUniform:a7];
    if ((v15 & 0x80000000) == 0)
    {

      glUniform4f(v15, a3, a4, a5, a6);
    }
  }
}

- (void)setUniformMat3:(float)a3[16] forKey:(id)a4
{
  v6 = [[MRUniform alloc] initWithMat4ForMat3:a3];
  [(NSMutableDictionary *)self->mUniforms setObject:v6 forKey:a4];

  v7 = [(MRShader *)self _locationForUniform:a4];
  if ((v7 & 0x80000000) == 0)
  {

    glUniformMatrix3fv(v7, 1, 0, v6->m);
  }
}

- (void)setUniformMat4:(float)a3[16] forKey:(id)a4
{
  v6 = [[MRUniform alloc] initWithMat4:a3];
  [(NSMutableDictionary *)self->mUniforms setObject:v6 forKey:a4];

  v7 = [(MRShader *)self _locationForUniform:a4];
  if ((v7 & 0x80000000) == 0)
  {

    glUniformMatrix4fv(v7, 1, 0, v6->m);
  }
}

- (void)setUniform:(id)a3 forKey:(id)a4
{
  v7 = [(NSMutableDictionary *)self->mUniforms objectForKey:a4];
  if (v7)
  {
    v8 = v7 == a3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v7 == a3)
    {
      return;
    }

    goto LABEL_13;
  }

  v9 = *(v7 + 11);
  if (v9 != *(a3 + 11) || *(v7 + 10) != *(a3 + 10))
  {
LABEL_13:
    [(NSMutableDictionary *)self->mUniforms setObject:a3 forKey:a4];
    v13 = [(MRShader *)self _locationForUniform:a4];
    if ((v13 & 0x80000000) == 0)
    {
      v14 = *(a3 + 11);
      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            v16 = *(a3 + 4);

            glUniform1f(v13, v16);
          }

          else if (v14 == 2)
          {

            glUniform2fv(v13, 1, a3 + 4);
          }
        }

        else
        {
          v15 = *(a3 + 20);

          glUniform1i(v13, v15);
        }
      }

      else if (v14 > 8)
      {
        if (v14 == 9)
        {

          glUniformMatrix3fv(v13, 1, 0, a3 + 4);
        }

        else if (v14 == 16)
        {

          glUniformMatrix4fv(v13, 1, 0, a3 + 4);
        }
      }

      else if (v14 == 3)
      {

        glUniform3fv(v13, 1, a3 + 4);
      }

      else if (v14 == 4)
      {

        glUniform4fv(v13, 1, a3 + 4);
      }
    }

    return;
  }

  v10 = a3;
  while (v9)
  {
    v11 = *(v7 + 4);
    v12 = v10[4];
    --v9;
    ++v10;
    v7 += 4;
    if (v11 != v12)
    {
      goto LABEL_13;
    }
  }
}

- (int)locationForAttribute:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mAttributeLocations objectForKey:?];
  if (v5)
  {

    return [v5 intValue];
  }

  else
  {
    AttribLocation = glGetAttribLocation(self->mProgram, [a3 UTF8String]);
    v8 = AttribLocation;
    [(NSMutableDictionary *)self->mAttributeLocations setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:?], a3];
    return v8;
  }
}

@end