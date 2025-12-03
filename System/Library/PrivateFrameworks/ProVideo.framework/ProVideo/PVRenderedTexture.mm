@interface PVRenderedTexture
- (CGRect)bitmapRect;
- (CGRect)textureRect;
- (CGSize)textureSize;
- (PVRenderedTexture)initWithHGGLTexture:(HGRef<HGGLTexture>)texture;
@end

@implementation PVRenderedTexture

- (PVRenderedTexture)initWithHGGLTexture:(HGRef<HGGLTexture>)texture
{
  v9.receiver = self;
  v9.super_class = PVRenderedTexture;
  v4 = [(PVRenderedTexture *)&v9 init];
  v5 = v4;
  if (v4)
  {
    m_Obj = v4->_glTexture.m_Obj;
    v7 = *texture.m_Obj;
    if (m_Obj != *texture.m_Obj)
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(v5->_glTexture.m_Obj);
        v7 = *texture.m_Obj;
      }

      v5->_glTexture.m_Obj = v7;
      if (v7)
      {
        (*(*v7 + 16))(v7);
      }
    }
  }

  return v5;
}

- (CGSize)textureSize
{
  TextureRect = HGGLTexture::GetTextureRect(self->_glTexture.m_Obj);
  v5 = (v4 - TextureRect);
  v6 = HGGLTexture::GetTextureRect(self->_glTexture.m_Obj);
  v8 = (v7 - HIDWORD(v6));
  v9 = v5;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGRect)textureRect
{
  TextureRect = HGGLTexture::GetTextureRect(self->_glTexture.m_Obj);
  v4 = (HGGLTexture::GetTextureRect(self->_glTexture.m_Obj) >> 32);
  v5 = HGGLTexture::GetTextureRect(self->_glTexture.m_Obj);
  v7 = (v6 - v5);
  v8 = HGGLTexture::GetTextureRect(self->_glTexture.m_Obj);
  v10 = (v9 - HIDWORD(v8));
  v11 = TextureRect;
  v12 = v4;
  v13 = v7;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)bitmapRect
{
  m_Obj = self->_glTexture.m_Obj;
  v3 = *(m_Obj + 5);
  v4 = *(m_Obj + 6);
  v5 = v3;
  v6 = v4;
  v7 = (*(m_Obj + 7) - v3);
  v8 = (*(m_Obj + 8) - v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end