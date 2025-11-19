@interface TSCH3DTSPImageData
+ (id)dataWithTSPImageData:(id)a3;
- (BOOL)canLoadCachedDataForDataCache:(id)a3;
- (BOOL)hasCompleteData;
- (CGImage)newCGImage;
- (TSCH3DTSPImageData)initWithTSPImageData:(id)a3;
- (id)databufferForDataCache:(id)a3;
- (id)p_decodeCachedData:(id)a3 imageSize:(void *)a4;
- (id)p_encodeImageSize:(void *)a3 andMipmapData:(id)a4;
- (id)p_generateMipmapsBuffer;
- (id)uniqueFilename;
- (void)setParent:(id)a3;
@end

@implementation TSCH3DTSPImageData

+ (id)dataWithTSPImageData:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithTSPImageData_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DTSPImageData)initWithTSPImageData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DTSPImageData;
  v6 = [(TSCH3DTSPImageData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (void)setParent:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DTSPImageData setParent:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 127, 0, "expected nil value for '%{public}s'", "_parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (!obj)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DTSPImageData setParent:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 128, 0, "invalid nil value for '%{public}s'", "p");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  objc_storeWeak(&self->_parent, obj);
}

- (BOOL)hasCompleteData
{
  data = self->_data;
  if (data)
  {
    LOBYTE(data) = objc_msgSend_needsDownload(data, a2, v2, v3, v4) ^ 1;
  }

  return data;
}

- (CGImage)newCGImage
{
  if (!self->_data)
  {
    return 0;
  }

  v6 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], a2, v2, v3, v4);
  objc_msgSend_addInterestInProviderForData_(v6, v7, v8, v9, v10, self->_data);
  v11 = objc_alloc(MEMORY[0x277D802D8]);
  v15 = objc_msgSend_initWithContentsScale_wantsHDR_(v11, v12, 1.0, v13, v14, 0);
  v20 = objc_msgSend_CGImageForImageData_renderingConfiguration_(MEMORY[0x277D801D0], v16, v17, v18, v19, self->_data, v15);
  v25 = v20;
  if (v20)
  {
    CGImageRetain(v20);
  }

  objc_msgSend_removeInterestInProviderForData_(v6, v21, v22, v23, v24, self->_data);

  if (v25)
  {
    Width = CGImageGetWidth(v25);
    Height = CGImageGetHeight(v25);
    if (Width >= 0)
    {
      v31 = Width;
    }

    else
    {
      v31 = -Width;
    }

    v32 = Width;
    if ((v31 & (v31 - 1)) != 0)
    {
      if (Width)
      {
        v33 = Width;
        do
        {
          v32 = v33;
          v34 = v33 & -v33;
          v33 ^= v34;
        }

        while (v34 != v32);
      }

      else
      {
        v32 = 0;
      }

      if (2 * v32 - Width < Width - v32)
      {
        v32 *= 2;
      }
    }

    if (Height >= 0)
    {
      v35 = Height;
    }

    else
    {
      v35 = -Height;
    }

    v36 = Height;
    if ((v35 & (v35 - 1)) != 0)
    {
      if (Height)
      {
        v37 = Height;
        do
        {
          v36 = v37;
          v38 = v37 & -v37;
          v37 ^= v38;
        }

        while (v38 != v36);
      }

      else
      {
        v36 = 0;
      }

      if (2 * v36 - Height < Height - v36)
      {
        v36 *= 2;
      }
    }

    v41[0] = v32;
    v41[1] = v36;
    if (v32 != Width || v36 != Height)
    {
      v39 = sub_2761D7ED0(v25, v41, v28, v29, v30);
      CGImageRelease(v25);
      return v39;
    }
  }

  return v25;
}

- (id)p_encodeImageSize:(void *)a3 andMipmapData:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB28];
  v11 = objc_msgSend_length(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_dataWithCapacity_(v6, v12, v13, v14, v15, v11 + 16);
  objc_msgSend_appendData_(v16, v17, v18, v19, v20, v5);
  objc_msgSend_appendBytes_length_(v16, v21, v22, v23, v24, a3, 16);

  return v16;
}

- (id)p_decodeCachedData:(id)a3 imageSize:(void *)a4
{
  v5 = a3;
  v6 = v5;
  v11 = objc_msgSend_bytes(v6, v7, v8, v9, v10);
  v17 = objc_msgSend_length(v5, v12, v13, v14, v15);
  if (v17 <= 0xF)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DTSPImageData p_decodeCachedData:imageSize:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 172, 0, "too few bytes in cached data");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  *a4 = *(v11 + v17 - 16);

  return v5;
}

- (id)p_generateMipmapsBuffer
{
  v6 = objc_msgSend_newCGImage(self, a2, v2, v3, v4);
  v47 = objc_opt_class();
  v48 = 0;
  if (v6)
  {
    v10 = sub_2761D44DC(&v47, v6, v7, v8, v9);
    CGImageRelease(v6);
    v15 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v11, v12, v13, v14);
    MipmapLevel = objc_msgSend_skipFirstMipmapLevel(v15, v16, v17, v18, v19);

    v25 = objc_msgSend_mipmapsWithBuffer_skipFirstLevel_(TSCH3DTextureMipmapper, v21, v22, v23, v24, v10, MipmapLevel);
    if (v25)
    {
      objc_opt_class();
      v26 = TSUCheckedDynamicCast();
      v31 = v26;
      if (v26)
      {
        objc_msgSend_dimension(v26, v27, v28, v29, v30);
        v32 = v44;
        v33 = v45;
      }

      else
      {
        v33 = 0;
        v44 = 0.0;
        v45 = 0;
        v32 = 0.0;
        v46 = 0;
      }

      v41 = v32;
      v42 = v33;
      v43 = 1;
      v35 = objc_msgSend_NSData(v31, v27, v32, v29, v30);
      v34 = objc_msgSend_p_encodeImageSize_andMipmapData_(self, v36, v37, v38, v39, &v41, v35);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (BOOL)canLoadCachedDataForDataCache:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_uniqueFilename(self, v5, v6, v7, v8);
  if (v10)
  {
    v14 = objc_msgSend_dataFromCache_forFile_group_generateBlock_(TSCH3DDocumentDataCache, v9, v11, v12, v13, v4, v10, @"TSCH3DMipmapsBackHeader", &unk_28851D188);
    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)databufferForDataCache:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_uniqueFilename(self, v5, v6, v7, v8);
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = objc_autoreleasePoolPush();
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = sub_2761D4A8C;
  v110[3] = &unk_27A6B68D0;
  v110[4] = self;
  v15 = objc_msgSend_dataFromCache_forFile_group_generateBlock_(TSCH3DDocumentDataCache, v11, COERCE_DOUBLE(3221225472), v12, v13, v4, v9, @"TSCH3DMipmapsBackHeader", v110);
  if (v15)
  {
    v108 = 0;
    v109 = 0;
    v105 = objc_msgSend_p_decodeCachedData_imageSize_(self, v14, v16, v17, v18, v15, &v108);
    v104 = v10;
    v23 = HIDWORD(v109);
    v24 = v109;
    v26 = v108;
    v25 = HIDWORD(v108);
    v106[0] = v108;
    v106[1] = v109;
    v107 = HIDWORD(v109) != 0;
    if ((v109 - 5) > 0xFFFFFFFB)
    {
      v56 = objc_msgSend_length(v105, v19, v20, v21, v22);
      v61 = 0;
      v62 = 0;
      do
      {
        v63 = v25 * v26;
        if (v62)
        {
          if (!v23)
          {
            break;
          }

          v63 = (v25 >> v62) * (v26 >> v62);
        }

        v61 += v24 * v63;
        if (v62 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v62;
      }

      while (v24 * v63);
      if (v56 != v61 + 16)
      {
        v101 = MEMORY[0x277D81150];
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "[TSCH3DTSPImageData databufferForDataCache:]");
        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
        v72 = objc_msgSend_length(v105, v68, v69, v70, v71);
        v77 = 0;
        v78 = 0;
        do
        {
          v79 = v25 * v26;
          if (v78)
          {
            if (!v23)
            {
              break;
            }

            v79 = (v25 >> v78) * (v26 >> v78);
          }

          v77 += v24 * v79;
          if (v78 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          ++v78;
        }

        while (v24 * v79);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v73, v74, v75, v76, v102, v103, 241, 0, "size mismatch between data and image size %lu, %lu", v72, v77);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83);
      }

      v84 = [TSCH3DNSData2DDataBuffer alloc];
      v55 = objc_msgSend_initWithCapacityDimension_data_(v84, v85, v86, v87, v88, v106, v105);
    }

    else
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCH3DTSPImageData databufferForDataCache:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
      v34 = MEMORY[0x277CCACA8];
      v99 = v109;
      v100 = HIDWORD(v109);
      sub_276152FD4("ivec4(%d, %d, %d, %d)", v35, v36, v37, v38, v39, v40, v41, v108);
      if (v113 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v34, v42, v43, v44, v45, &v111);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v34, v42, v43, v44, v45, v111);
      }
      v47 = ;
      if (v113 < 0)
      {
        operator delete(v111);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v46, v48, v49, v50, v28, v33, 235, 0, "Invalid component count %lu and image size %@. Will not create a new TSCH3DNSData2DDataBuffer from the mipmapData", v24, v47, v99, v100);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
      v55 = 0;
    }

    v10 = v104;
  }

  else
  {
    v55 = 0;
  }

  objc_autoreleasePoolPop(v10);
  if (!v55)
  {
LABEL_28:
    v111 = objc_opt_class();
    v112 = 0;
    v93 = objc_msgSend_newCGImage(self, v89, v90, v91, v92);
    if (v93)
    {
      v55 = sub_2761D44DC(&v111, v93, v94, v95, v96);
      CGImageRelease(v93);
    }

    else
    {
      data = self->_data;
      v106[0] = 0x10000000100;
      v55 = sub_2761D4A94(&v111, data, v106, 4);
    }
  }

  return v55;
}

- (id)uniqueFilename
{
  data = self->_data;
  if (data && (objc_msgSend_digestString(data, a2, v2, v3, v4), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v12 = MEMORY[0x277CCAB68];
    v13 = objc_msgSend_digestString(self->_data, v8, v9, v10, v11);
    v18 = objc_msgSend_stringWithString_(v12, v14, v15, v16, v17, v13);

    v23 = objc_msgSend_filename(self->_data, v19, v20, v21, v22);
    v28 = objc_msgSend_pathExtension(v23, v24, v25, v26, v27);

    if (objc_msgSend_length(v28, v29, v30, v31, v32))
    {
      objc_msgSend_appendFormat_(v18, v33, v34, v35, v36, @".%@", v28);
    }

    v37 = objc_msgSend_copy(v18, v33, v34, v35, v36);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

@end