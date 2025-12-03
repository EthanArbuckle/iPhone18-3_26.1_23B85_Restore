@interface TSCH3DTSPImageDataTexture
+ (TSCH3DTSPImageDataTexture)textureWithImageData:(id)data colorFill:(id)fill optimizedMipmapData:(id)mipmapData textureSetId:(id)id imageName:(id)name;
+ (TSCH3DTSPImageDataTexture)textureWithImageData:(id)data colorFill:(id)fill textureSetId:(id)id imageName:(id)name;
+ (TSCH3DTSPImageDataTexture)textureWithImageData:(id)data optimizedMipmapData:(id)mipmapData textureSetId:(id)id imageName:(id)name;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)hasCompleteData;
- (BOOL)isEqual:(id)equal;
- (TSCH3DTSPImageDataTexture)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCH3DTSPImageDataTexture)initWithImageData:(id)data colorFill:(id)fill optimizedMipmapData:(id)mipmapData textureSetId:(id)id imageName:(id)name;
- (id)databufferForDataCache:(id)cache;
- (id)representativeColorBuffer;
- (unint64_t)hash;
- (void)p_setOptimizedMipMapData:(id)data;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCH3DTSPImageDataTexture

+ (TSCH3DTSPImageDataTexture)textureWithImageData:(id)data colorFill:(id)fill optimizedMipmapData:(id)mipmapData textureSetId:(id)id imageName:(id)name
{
  dataCopy = data;
  fillCopy = fill;
  mipmapDataCopy = mipmapData;
  idCopy = id;
  nameCopy = name;
  v17 = [self alloc];
  v22 = objc_msgSend_initWithImageData_colorFill_optimizedMipmapData_textureSetId_imageName_(v17, v18, v19, v20, v21, dataCopy, fillCopy, mipmapDataCopy, idCopy, nameCopy);

  return v22;
}

- (TSCH3DTSPImageDataTexture)initWithImageData:(id)data colorFill:(id)fill optimizedMipmapData:(id)mipmapData textureSetId:(id)id imageName:(id)name
{
  dataCopy = data;
  fillCopy = fill;
  mipmapDataCopy = mipmapData;
  idCopy = id;
  nameCopy = name;
  v42.receiver = self;
  v42.super_class = TSCH3DTSPImageDataTexture;
  v18 = [(TSCH3DTexture *)&v42 init];
  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x277D812A0]);
    cachedHashOnce = v18->_cachedHashOnce;
    v18->_cachedHashOnce = v19;

    objc_storeStrong(&v18->_data, data);
    objc_msgSend_setParent_(v18->_data, v21, v22, v23, v24, v18);
    objc_storeStrong(&v18->_optimizedMipmapData, mipmapData);
    objc_msgSend_setParent_(v18->_optimizedMipmapData, v25, v26, v27, v28, v18);
    v33 = objc_msgSend_copy(idCopy, v29, v30, v31, v32);
    textureSetId = v18->_textureSetId;
    v18->_textureSetId = v33;

    v39 = objc_msgSend_copy(nameCopy, v35, v36, v37, v38);
    imageName = v18->_imageName;
    v18->_imageName = v39;

    objc_storeStrong(&v18->_colorFill, fill);
  }

  return v18;
}

+ (TSCH3DTSPImageDataTexture)textureWithImageData:(id)data colorFill:(id)fill textureSetId:(id)id imageName:(id)name
{
  dataCopy = data;
  fillCopy = fill;
  idCopy = id;
  nameCopy = name;
  v14 = [self alloc];
  v19 = objc_msgSend_initWithImageData_colorFill_optimizedMipmapData_textureSetId_imageName_(v14, v15, v16, v17, v18, dataCopy, fillCopy, 0, idCopy, nameCopy);

  return v19;
}

+ (TSCH3DTSPImageDataTexture)textureWithImageData:(id)data optimizedMipmapData:(id)mipmapData textureSetId:(id)id imageName:(id)name
{
  dataCopy = data;
  mipmapDataCopy = mipmapData;
  idCopy = id;
  nameCopy = name;
  v14 = [self alloc];
  v19 = objc_msgSend_initWithImageData_colorFill_optimizedMipmapData_textureSetId_imageName_(v14, v15, v16, v17, v18, dataCopy, 0, mipmapDataCopy, idCopy, nameCopy);

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v80 = 1;
    goto LABEL_15;
  }

  objc_opt_class();
  v5 = TSUSpecificCast();
  v6 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = *(v5 + 48);
  v8 = self->_textureSetId;
  v9 = v7;
  if (v8 | v9)
  {
    v14 = v9;
    isEqual = objc_msgSend_isEqual_(v8, v10, v11, v12, v13, v9);

    if (!isEqual)
    {
      goto LABEL_12;
    }
  }

  v16 = *(v6 + 56);
  v17 = self->_imageName;
  v18 = v16;
  if (v17 | v18)
  {
    v23 = v18;
    v24 = objc_msgSend_isEqual_(v17, v19, v20, v21, v22, v18);

    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v25 = objc_msgSend_data(self->_data, v19, v20, v21, v22);
  v30 = objc_msgSend_data(*(v6 + 16), v26, v27, v28, v29);

  if (v25 == v30)
  {
    v80 = 1;
    goto LABEL_13;
  }

  v35 = objc_msgSend_uniqueFilename(self->_data, v31, v32, v33, v34);
  v40 = objc_msgSend_uniqueFilename(*(v6 + 16), v36, v37, v38, v39);
  v45 = objc_msgSend_isEqual_(v35, v41, v42, v43, v44, v40);

  if ((v45 & 1) != 0 && (objc_msgSend_data(self->_data, v46, v47, v48, v49), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend_context(v50, v51, v52, v53, v54), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend_data(*(v6 + 16), v56, v57, v58, v59), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend_context(v60, v61, v62, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), v65, v60, v55, v50, v55 == v65) && (v82.receiver = self, v82.super_class = TSCH3DTSPImageDataTexture, [(TSCH3DTexture *)&v82 isEqual:equalCopy]))
  {
    v70 = objc_msgSend_data(self->_data, v66, v67, v68, v69);
    v75 = objc_msgSend_data(*(v6 + 16), v71, v72, v73, v74);
    v80 = objc_msgSend_isEqual_(v70, v76, v77, v78, v79, v75);
  }

  else
  {
LABEL_12:
    v80 = 0;
  }

LABEL_13:

LABEL_15:
  return v80;
}

- (unint64_t)hash
{
  cachedHashOnce = self->_cachedHashOnce;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2761D72C0;
  v11[3] = &unk_27A6B6888;
  v11[4] = self;
  objc_msgSend_performBlockOnce_(cachedHashOnce, a2, COERCE_DOUBLE(3221225472), v2, v3, v11);
  return objc_msgSend_unsignedIntegerValue(self->_cachedHash, v6, v7, v8, v9);
}

- (BOOL)hasCompleteData
{
  data = self->_data;
  if (data)
  {
    return objc_msgSend_hasCompleteData(data, a2, v2, v3, v4);
  }

  else
  {
    return 1;
  }
}

- (id)databufferForDataCache:(id)cache
{
  cacheCopy = cache;
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    v16 = objc_msgSend_imageData(self, v12, v13, v14, v15);
    NSLog(&cfstr_P.isa, v10, self, v11, v16);
  }

  v17 = objc_msgSend_imageData(self, v5, v7, v8, v9);

  if (v17)
  {
    objc_msgSend_databufferForDataCache_(self->_data, v18, v19, v20, v21, cacheCopy);
  }

  else
  {
    objc_msgSend_representativeColorBuffer(self, v18, v19, v20, v21);
  }
  v22 = ;

  return v22;
}

- (id)representativeColorBuffer
{
  objc_opt_class();
  v2 = TSUCheckedDynamicCast();
  if (v2)
  {
    v6 = objc_opt_class();
    v7 = 0;
    v5 = 0x10000000100;
    v3 = sub_2761D68A0(&v6, v2, &v5, 4);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSCH3DTSPImageDataTexture alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, archive, unarchiverCopy);

  return v11;
}

- (void)p_setOptimizedMipMapData:(id)data
{
  dataCopy = data;
  if (self->_optimizedMipmapData)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DTSPImageDataTexture(PersistenceAdditions) p_setOptimizedMipMapData:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 380, 0, "expected nil value for '%{public}s'", "_optimizedMipmapData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (dataCopy)
  {
    v23 = [TSCH3DTSPMipmapData alloc];
    v28 = objc_msgSend_initWithTSPData_(v23, v24, v25, v26, v27, dataCopy);
    optimizedMipmapData = self->_optimizedMipmapData;
    self->_optimizedMipmapData = v28;

    objc_msgSend_setParent_(self->_optimizedMipmapData, v30, v31, v32, v33, self);
  }
}

- (TSCH3DTSPImageDataTexture)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v54.receiver = self;
  v54.super_class = TSCH3DTSPImageDataTexture;
  v7 = [(TSCH3DTexture *)&v54 init];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [TSCH3DTSPImageData alloc];
  v13 = objc_msgSend_initWithTSPImageData_(v8, v9, v10, v11, v12, 0);
  data = v7->_data;
  v7->_data = v13;

  v19 = *(archive + 4);
  if (v19)
  {
    v25 = *(archive + 3);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_2761D7B30;
    v52[3] = &unk_27A6B68F8;
    v53 = v7;
    v26 = unarchiverCopy;
    v27 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v26, v28, v29, v30, v31, v25, v27, 0, v52);

    v20 = v53;
    goto LABEL_6;
  }

  if ((v19 & 4) != 0)
  {
    v20 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v15, v16, v17, v18, *(archive + 5));
    objc_msgSend_setData_(v7->_data, v21, v22, v23, v24, v20);
LABEL_6:
  }

  objc_msgSend_setParent_(v7->_data, v15, v16, v17, v18, v7);
  v36 = *(archive + 4);
  if ((v36 & 2) != 0)
  {
    v42 = *(archive + 4);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_2761D7BA8;
    v50[3] = &unk_27A6B68F8;
    v51 = v7;
    v43 = unarchiverCopy;
    v44 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v43, v45, v46, v47, v48, v42, v44, 0, v50);

    v37 = v51;
    goto LABEL_11;
  }

  if ((v36 & 8) != 0)
  {
    v37 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v32, v33, v34, v35, *(archive + 6));
    objc_msgSend_p_setOptimizedMipMapData_(v7, v38, v39, v40, v41, v37);
LABEL_11:
  }

LABEL_12:

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v10 = objc_msgSend_data(self->_data, v6, v7, v8, v9);

  if (v10)
  {
    v16 = objc_msgSend_data(self->_data, v11, v12, v13, v14);
    *(archive + 4) |= 4u;
    v20 = *(archive + 5);
    if (!v20)
    {
      v21 = *(archive + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C97B10](v21);
      *(archive + 5) = v20;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v15, v17, v18, v19, v16, v20);
  }

  v22 = objc_msgSend_data(self->_optimizedMipmapData, v11, v12, v13, v14);

  if (v22)
  {
    v28 = objc_msgSend_data(self->_optimizedMipmapData, v23, v24, v25, v26);
    *(archive + 4) |= 8u;
    v32 = *(archive + 6);
    if (!v32)
    {
      v33 = *(archive + 1);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C97B10](v33);
      *(archive + 6) = v32;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v27, v29, v30, v31, v28, v32);
  }
}

@end