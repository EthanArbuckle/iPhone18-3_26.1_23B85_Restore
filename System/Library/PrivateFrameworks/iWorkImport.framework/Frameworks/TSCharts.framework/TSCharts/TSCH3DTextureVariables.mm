@interface TSCH3DTextureVariables
+ (id)variablesWithTexture:(id)texture texcoords:(id)texcoords textureMatrix:(id)matrix;
- (TSCH3DTextureVariables)initWithTexture:(id)texture texcoords:(id)texcoords textureMatrix:(id)matrix;
@end

@implementation TSCH3DTextureVariables

+ (id)variablesWithTexture:(id)texture texcoords:(id)texcoords textureMatrix:(id)matrix
{
  textureCopy = texture;
  texcoordsCopy = texcoords;
  matrixCopy = matrix;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithTexture_texcoords_textureMatrix_(v11, v12, v13, v14, v15, textureCopy, texcoordsCopy, matrixCopy);

  return v16;
}

- (TSCH3DTextureVariables)initWithTexture:(id)texture texcoords:(id)texcoords textureMatrix:(id)matrix
{
  textureCopy = texture;
  texcoordsCopy = texcoords;
  matrixCopy = matrix;
  v31.receiver = self;
  v31.super_class = TSCH3DTextureVariables;
  v12 = [(TSCH3DTextureVariables *)&v31 init];
  if (v12)
  {
    v16 = objc_msgSend_copy(textureCopy, v11, v13, v14, v15);
    texture = v12->_texture;
    v12->_texture = v16;

    v22 = objc_msgSend_copy(texcoordsCopy, v18, v19, v20, v21);
    texcoords = v12->_texcoords;
    v12->_texcoords = v22;

    v28 = objc_msgSend_copy(matrixCopy, v24, v25, v26, v27);
    textureMatrix = v12->_textureMatrix;
    v12->_textureMatrix = v28;
  }

  return v12;
}

@end