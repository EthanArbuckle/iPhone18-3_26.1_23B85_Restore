@interface TSCH3DTextureMipmapper
+ (BOOL)p_generateMipmapsBuffer:(id)buffer level0Buffer:(id)level0Buffer skipFirstLevel:(BOOL)level;
+ (DataBuffer2DDimension)p_mapDimensionWithBuffer:(SEL)buffer skipFirstLevel:(id)level;
+ (id)mipmapsWithBuffer:(id)buffer skipFirstLevel:(BOOL)level;
@end

@implementation TSCH3DTextureMipmapper

+ (id)mipmapsWithBuffer:(id)buffer skipFirstLevel:(BOOL)level
{
  levelCopy = level;
  bufferCopy = buffer;
  objc_msgSend_p_mapDimensionWithBuffer_skipFirstLevel_(self, v7, v8, v9, v10, bufferCopy, levelCopy);
  v11 = objc_opt_class();
  v16 = objc_msgSend_bufferWithCapacityDimension_(v11, v12, v13, v14, v15, v27);
  objc_msgSend_fillCapacity(v16, v17, v18, v19, v20);
  if (objc_msgSend_p_generateMipmapsBuffer_level0Buffer_skipFirstLevel_(self, v21, v22, v23, v24, v16, bufferCopy, levelCopy))
  {
    v25 = v16;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (DataBuffer2DDimension)p_mapDimensionWithBuffer:(SEL)buffer skipFirstLevel:(id)level
{
  v5 = a5;
  levelCopy = level;
  v12 = levelCopy;
  if (levelCopy)
  {
    objc_msgSend_dimension(levelCopy, v8, v9, v10, v11);
    if (v35)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DTextureMipmapper p_mapDimensionWithBuffer:skipFirstLevel:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 69, 0, "invalid mipmap for original image %@", v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  retstr->_size = vshl_s32(v33, vneg_s32(vdup_n_s32(v5)));
  retstr->_components = v34;
  retstr->_hasLevels = 1;

  return result;
}

+ (BOOL)p_generateMipmapsBuffer:(id)buffer level0Buffer:(id)level0Buffer skipFirstLevel:(BOOL)level
{
  levelCopy = level;
  bufferCopy = buffer;
  level0BufferCopy = level0Buffer;
  v13 = objc_msgSend_data(level0BufferCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_mutableData(bufferCopy, v14, v15, v16, v17);
  v23 = v18;
  if (v13)
  {
    v24 = v18 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  if (!v24)
  {
    if (level0BufferCopy)
    {
      objc_msgSend_dimension(level0BufferCopy, v19, v20, v21, v22);
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v26 = levelCopy - 1;
    v27 = levelCopy;
    if (!levelCopy)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v28 = v32 * (SHIDWORD(v31) >> (v26 + 1)) * (v31 >> (v26 + 1));
      if (!v28)
      {
        break;
      }

      sub_2761D3A48(v31 >> v26, (SHIDWORD(v31) >> v26), v32, v13, v23, v20, v21, v22);
      while (1)
      {
        v13 = v23;
        v23 += v28;
        ++v26;
        if (++v27)
        {
          break;
        }

LABEL_14:
        v29 = SHIDWORD(v31) * v31;
        v28 = v32 * v29;
        if (!(v32 * v29))
        {
          goto LABEL_18;
        }

        memcpy(v23, v13, v32 * v29);
      }
    }
  }

LABEL_18:

  return v25;
}

@end