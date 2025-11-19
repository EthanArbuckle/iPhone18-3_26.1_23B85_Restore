@interface TSCH3DTextureVariables
+ (id)variablesWithTexture:(id)a3 texcoords:(id)a4 textureMatrix:(id)a5;
- (TSCH3DTextureVariables)initWithTexture:(id)a3 texcoords:(id)a4 textureMatrix:(id)a5;
@end

@implementation TSCH3DTextureVariables

+ (id)variablesWithTexture:(id)a3 texcoords:(id)a4 textureMatrix:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 alloc];
  v16 = objc_msgSend_initWithTexture_texcoords_textureMatrix_(v11, v12, v13, v14, v15, v8, v9, v10);

  return v16;
}

- (TSCH3DTextureVariables)initWithTexture:(id)a3 texcoords:(id)a4 textureMatrix:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = TSCH3DTextureVariables;
  v12 = [(TSCH3DTextureVariables *)&v31 init];
  if (v12)
  {
    v16 = objc_msgSend_copy(v8, v11, v13, v14, v15);
    texture = v12->_texture;
    v12->_texture = v16;

    v22 = objc_msgSend_copy(v9, v18, v19, v20, v21);
    texcoords = v12->_texcoords;
    v12->_texcoords = v22;

    v28 = objc_msgSend_copy(v10, v24, v25, v26, v27);
    textureMatrix = v12->_textureMatrix;
    v12->_textureMatrix = v28;
  }

  return v12;
}

@end