@interface TSCH3DMaterialShaderVariables
+ (TSCH3DMaterialShaderVariables)variablesWithTexture:(id)texture intensity:(id)intensity factor:(id)factor textureColor:(id)color color:(id)a7 modulation:(id)modulation texcoords:(id)texcoords textureMatrix:(id)self0;
- (BOOL)isEqual:(id)equal;
- (TSCH3DMaterialShaderVariables)initWithTexture:(id)texture intensity:(id)intensity factor:(id)factor textureColor:(id)color color:(id)a7 modulation:(id)modulation texcoords:(id)texcoords textureMatrix:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TSCH3DMaterialShaderVariables

+ (TSCH3DMaterialShaderVariables)variablesWithTexture:(id)texture intensity:(id)intensity factor:(id)factor textureColor:(id)color color:(id)a7 modulation:(id)modulation texcoords:(id)texcoords textureMatrix:(id)self0
{
  textureCopy = texture;
  intensityCopy = intensity;
  factorCopy = factor;
  colorCopy = color;
  v20 = a7;
  modulationCopy = modulation;
  texcoordsCopy = texcoords;
  matrixCopy = matrix;
  v24 = [self alloc];
  v29 = objc_msgSend_initWithTexture_intensity_factor_textureColor_color_modulation_texcoords_textureMatrix_(v24, v25, v26, v27, v28, textureCopy, intensityCopy, factorCopy, colorCopy, v20, modulationCopy, texcoordsCopy, matrixCopy);

  return v29;
}

- (TSCH3DMaterialShaderVariables)initWithTexture:(id)texture intensity:(id)intensity factor:(id)factor textureColor:(id)color color:(id)a7 modulation:(id)modulation texcoords:(id)texcoords textureMatrix:(id)self0
{
  textureCopy = texture;
  intensityCopy = intensity;
  factorCopy = factor;
  colorCopy = color;
  v23 = a7;
  modulationCopy = modulation;
  texcoordsCopy = texcoords;
  matrixCopy = matrix;
  v28.receiver = self;
  v28.super_class = TSCH3DMaterialShaderVariables;
  v18 = [(TSCH3DMaterialShaderVariables *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_texture, texture);
    objc_storeStrong(&v19->_intensity, intensity);
    objc_storeStrong(&v19->_factor, factor);
    objc_storeStrong(&v19->_textureColor, color);
    objc_storeStrong(&v19->_color, a7);
    objc_storeStrong(&v19->_modulation, modulation);
    objc_storeStrong(&v19->_texcoords, texcoords);
    objc_storeStrong(&v19->_textureMatrix, matrix);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  return objc_msgSend_initWithTexture_intensity_factor_textureColor_color_modulation_texcoords_textureMatrix_(v10, v11, v12, v13, v14, self->_texture, self->_intensity, self->_factor, self->_textureColor, self->_color, self->_modulation, self->_texcoords, self->_textureMatrix);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUSpecificCast();
  v10 = v5;
  if (v5)
  {
    texture = self->_texture;
    v13 = objc_msgSend_texture(v5, v6, v7, v8, v9);
    if (texture == v13)
    {
      intensity = self->_intensity;
      v20 = objc_msgSend_intensity(v10, v12, v14, v15, v16);
      if (intensity == v20)
      {
        factor = self->_factor;
        v26 = objc_msgSend_factor(v10, v19, v21, v22, v23);
        if (factor == v26)
        {
          textureColor = self->_textureColor;
          v32 = objc_msgSend_textureColor(v10, v25, v27, v28, v29);
          if (textureColor == v32)
          {
            color = self->_color;
            v38 = objc_msgSend_color(v10, v31, v33, v34, v35);
            if (color == v38)
            {
              modulation = self->_modulation;
              v44 = objc_msgSend_modulation(v10, v37, v39, v40, v41);
              if (modulation == v44)
              {
                texcoords = self->_texcoords;
                v49 = objc_msgSend_texcoords(v10, v43, v45, v46, v47);
                if (texcoords == v49)
                {
                  v54 = v49;
                  textureMatrix = self->_textureMatrix;
                  v56 = objc_msgSend_textureMatrix(v10, v50, v51, v52, v53);
                  v17 = textureMatrix == v56;

                  v49 = v54;
                }

                else
                {
                  v17 = 0;
                }
              }

              else
              {
                v17 = 0;
              }
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_texture, a2, v2, v3, v4);
  v11 = objc_msgSend_hash(self->_intensity, v7, v8, v9, v10) ^ v6;
  v16 = objc_msgSend_hash(self->_factor, v12, v13, v14, v15);
  v21 = v11 ^ v16 ^ objc_msgSend_hash(self->_textureColor, v17, v18, v19, v20);
  v26 = objc_msgSend_hash(self->_color, v22, v23, v24, v25);
  v31 = v26 ^ objc_msgSend_hash(self->_modulation, v27, v28, v29, v30);
  v36 = v21 ^ v31 ^ objc_msgSend_hash(self->_texcoords, v32, v33, v34, v35);
  return v36 ^ objc_msgSend_hash(self->_textureMatrix, v37, v38, v39, v40);
}

@end