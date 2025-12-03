@interface TSCH3DTextureAtlas
+ (id)atlasWithSamples:(float)samples;
- (TSCH3DTextureAtlas)initWithSamples:(float)samples;
- (id)textureAtIndex:(int64_t)index;
- (tvec2<int>)textureSizeAtIndex:(int64_t)index;
- (tvec3<int>)p_addLabel:(id)label;
- (tvec3<int>)positionForLabel:(id)label;
@end

@implementation TSCH3DTextureAtlas

+ (id)atlasWithSamples:(float)samples
{
  v4 = [self alloc];
  *&v5 = samples;
  v9 = objc_msgSend_initWithSamples_(v4, v6, v5, v7, v8);

  return v9;
}

- (TSCH3DTextureAtlas)initWithSamples:(float)samples
{
  v10.receiver = self;
  v10.super_class = TSCH3DTextureAtlas;
  v4 = [(TSCH3DTextureAtlas *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textures = v4->_textures;
    v4->_textures = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedLabels = v4->_cachedLabels;
    v4->_cachedLabels = v7;

    v4->_samples = samples;
  }

  return v4;
}

- (tvec2<int>)textureSizeAtIndex:(int64_t)index
{
  v9 = v3;
  if (objc_msgSend_count(self->_textures, a2, v4, v5, v6) <= index)
  {
    v14 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DTextureAtlas textureSizeAtIndex:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureAtlas.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v21, v22, v23, v34, v19, 90, 0, "invalid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_objectAtIndexedSubscript_(self->_textures, v10, v11, v12, v13, index);
  v35 = v28;
  if (v28)
  {
    objc_msgSend_size(v28, v29, v30, v31, v32);
  }

  else
  {
    *v9 = 0;
  }

  return v33;
}

- (id)textureAtIndex:(int64_t)index
{
  if (index < 0 || objc_msgSend_count(self->_textures, a2, v3, v4, v5) <= index)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DTextureAtlas textureAtIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureAtlas.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 97, 0, "invalid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_objectAtIndexedSubscript_(self->_textures, a2, v3, v4, v5, index);
  v28 = objc_msgSend_resource(v23, v24, v25, v26, v27);

  return v28;
}

- (tvec3<int>)p_addLabel:(id)label
{
  v5 = v3;
  labelCopy = label;
  v11 = labelCopy;
  if (labelCopy)
  {
    objc_msgSend_clampedLabelSampledSize(labelCopy, v7, v8, v9, v10);
  }

  else
  {
    v64 = 0;
  }

  *v5 = -1;
  *(v5 + 8) = -1;
  v13 = objc_msgSend_count(self->_textures, v7, NAN, v9, v10);
  if (v13 < 1)
  {
LABEL_12:
    samples = self->_samples;
    v28 = [TSCH3DTextureAtlasTexture alloc];
    *&v31 = fminf(fmaxf(samples * 256.0, 128.0), 512.0);
    v32 = *&v31;
    v34 = v64 > *&v31 || SHIDWORD(v64) > v32;
    v35 = !v34;
    if (v34)
    {
      v36 = v64;
    }

    else
    {
      v36 = *&v31;
    }

    if (!v35)
    {
      LODWORD(v32) = HIDWORD(v64);
    }

    v63 = __PAIR64__(v32, v36);
    v23 = objc_msgSend_initWithSize_(v28, v29, v31, 3.68934975e19, v30, &v63);
    objc_msgSend_addObject_(self->_textures, v37, v38, v39, v40, v23);
    if (v23)
    {
      objc_msgSend_addLabel_(v23, v41, v42, v43, v44, v11);
    }

    else
    {
      v63 = 0;
    }

    v45 = objc_msgSend_count(self->_textures, v41, v42, v43, v44, v63);
    *v5 = v63;
    *(v5 + 8) = v45 - 1;
  }

  else
  {
    while (1)
    {
      v17 = v13 - 1;
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->_textures, v12, v14, v15, v16, v13 - 1);
      v23 = v18;
      if (!v18)
      {
        break;
      }

      objc_msgSend_addLabel_(v18, v19, v20, v21, v22, v11);
      v24 = v63;
      v25 = HIDWORD(v63);
      if (v63 != -1 || HIDWORD(v63) != -1)
      {
        goto LABEL_28;
      }

      --v13;
      if ((v17 + 1) <= 1)
      {
        goto LABEL_12;
      }
    }

    v24 = 0;
    v25 = 0;
LABEL_28:
    *v5 = v24;
    *(v5 + 4) = v25;
    *(v5 + 8) = v13 - 1;
  }

  cachedLabels = self->_cachedLabels;
  v51 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v47, v48, v49, v50, v5, "{tvec3<int>=(?=iii)(?=iii)(?=iii)}");
  v56 = objc_msgSend_attributes(v11, v52, v53, v54, v55);
  objc_msgSend_setObject_forKey_(cachedLabels, v57, v58, v59, v60, v51, v56);

  result.var0 = v61;
  result.var1 = *(&v61 + 4);
  result.var2 = v62;
  return result;
}

- (tvec3<int>)positionForLabel:(id)label
{
  v5 = v3;
  labelCopy = label;
  cachedLabels = self->_cachedLabels;
  v24 = labelCopy;
  v12 = objc_msgSend_attributes(labelCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_objectForKey_(cachedLabels, v13, v14, v15, v16, v12);

  if (v17)
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    objc_msgSend_getValue_(v17, v18, v19, v20, v21, v5);
  }

  else
  {
    objc_msgSend_p_addLabel_(self, v18, v19, v20, v21, v24);
  }

  result.var0 = v22;
  result.var1 = *(&v22 + 4);
  result.var2 = v23;
  return result;
}

@end