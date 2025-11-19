@interface SFUSecureFlipBookAsset
- (BOOL)writeFlipBookToDirectory:(id)a3 error:(id *)a4;
- (SFUSecureFlipBookAsset)initWith:(id)a3 metadata:(id)a4 constraints:(id)a5 blob:(id)a6;
- (id)diffWith:(id)a3 policy:(id)a4;
- (id)initFromURL:(id)a3 flipbookName:(id)a4 constraintSuffix:(id)a5;
- (id)mtlTextureFor:(unsigned int)a3 withDevice:(id)a4;
@end

@implementation SFUSecureFlipBookAsset

- (SFUSecureFlipBookAsset)initWith:(id)a3 metadata:(id)a4 constraints:(id)a5 blob:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  flipBookName = self->_flipBookName;
  self->_flipBookName = v10;
  v15 = v10;

  metadata = self->_metadata;
  self->_metadata = v11;
  v17 = v11;

  constraints = self->_constraints;
  self->_constraints = v12;
  v19 = v12;

  blob = self->_blob;
  self->_blob = v13;

  return self;
}

- (id)initFromURL:(id)a3 flipbookName:(id)a4 constraintSuffix:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = 0;
  v12 = [v11 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:4 error:&v33];
  v13 = v33;

  if (!v12)
  {
    v14 = [v13 localizedDescription];
    v15 = v14;
    v16 = [v14 UTF8String];

    v17 = os_log_get();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v24 = [v8 path];
      v25 = v24;
      v26 = [v24 UTF8String];
      v27 = "";
      if (v16)
      {
        v27 = v16;
      }

      *buf = 136315394;
      v35 = v26;
      v36 = 2080;
      v37 = v27;
      _os_log_error_impl(&dword_26C632000, v17, OS_LOG_TYPE_ERROR, "Failed to read Secure Asset at %s : '%s'", buf, 0x16u);
    }
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68__SFUSecureFlipBookAsset_initFromURL_flipbookName_constraintSuffix___block_invoke;
  v28[3] = &unk_279D425C8;
  v18 = v9;
  v29 = v18;
  v19 = v8;
  v30 = v19;
  v20 = v10;
  v31 = v20;
  v21 = self;
  v32 = v21;
  [v12 enumerateObjectsUsingBlock:v28];
  if (v21->_metadata && v21->_blob)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __68__SFUSecureFlipBookAsset_initFromURL_flipbookName_constraintSuffix___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v32 = a2;
  v6 = [v32 pathExtension];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"plist"];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v32];
    v10 = [v9 objectForKeyedSubscript:@"indicators"];
    if ([v10 count])
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v11 objectForKeyedSubscript:@"name"];
      v13 = [v12 isEqualToString:*(a1 + 32)];

      if (v13)
      {
        v14 = [v11 objectForKeyedSubscript:@"blobName"];
        v15 = objc_alloc(MEMORY[0x277CBEA90]);
        v16 = MEMORY[0x277CCACA8];
        v17 = [*(a1 + 40) path];
        v18 = [v16 stringWithFormat:@"%@/%@", v17, v14];
        v19 = [v15 initWithContentsOfFile:v18];

        v20 = MEMORY[0x277CCACA8];
        v21 = [v32 path];
        v22 = [v21 stringByDeletingPathExtension];
        v23 = v22;
        v24 = *(a1 + 48);
        if (!v24)
        {
          v24 = @"_constraints";
        }

        v25 = [v20 stringWithFormat:@"%@%@.plist", v22, v24];

        v26 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v25];
        objc_storeStrong((*(a1 + 56) + 8), *(a1 + 32));
        objc_storeStrong((*(a1 + 56) + 16), v9);
        v27 = *(a1 + 56);
        v28 = *(v27 + 24);
        *(v27 + 24) = v26;
        v29 = v26;

        v30 = *(a1 + 56);
        v31 = *(v30 + 32);
        *(v30 + 32) = v19;

        *a4 = 1;
      }
    }
  }
}

- (BOOL)writeFlipBookToDirectory:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 path];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v7 isWritableFileAtPath:v6])
  {
    v8 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"indicators"];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"blobName"];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.plist", self->_flipBookName];
      v12 = write_plist(v6, v11, self->_metadata, a4);

      if (v12)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_constraints.plist", self->_flipBookName];
        v14 = write_plist(v6, v13, self->_constraints, a4);

        if (v14)
        {
          v15 = self->_blob;
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, v10];
          v17 = [(NSData *)v15 writeToFile:v16 options:0 error:a4];

LABEL_12:
          goto LABEL_13;
        }
      }
    }

    else if (a4)
    {
      v19 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"Invalid blob name";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a4 = [v19 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:6 userInfo:v20];
    }

    v17 = 0;
    goto LABEL_12;
  }

  if (a4)
  {
    v18 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Path not writable";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v18 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:5 userInfo:v10];
    *a4 = v17 = 0;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (id)mtlTextureFor:(unsigned int)a3 withDevice:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = a4;
  v6 = [(SFUSecureFlipBookAsset *)self metadata];
  v7 = [v6 objectForKeyedSubscript:@"indicators"];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v8 objectForKeyedSubscript:@"extent"];
  v10 = [v9 unsignedIntValue];

  v11 = [v8 objectForKeyedSubscript:@"Bpr"];
  v12 = [v11 unsignedIntValue];

  v13 = [v8 objectForKeyedSubscript:@"frames"];
  v14 = a3;
  if ([v13 count] <= a3)
  {
    v26 = os_log_get();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      -[SFUSecureFlipBookAsset mtlTextureFor:withDevice:].cold.1([v13 count], buf, a3, v26);
    }

    v28 = 0;
  }

  else
  {
    if (!self->_decomp_buffer)
    {
      v15 = [MEMORY[0x277CBEB28] dataWithLength:v12 * v10];
      decomp_buffer = self->_decomp_buffer;
      self->_decomp_buffer = v15;
    }

    v17 = [v13 objectAtIndexedSubscript:a3];
    v18 = [v17 objectForKeyedSubscript:@"dataSize"];
    v19 = [v18 unsignedIntValue];

    v20 = [v13 objectAtIndexedSubscript:v14];
    v21 = [v20 objectForKeyedSubscript:@"dataOffset"];
    v22 = [v21 unsignedIntValue];

    v23 = [(SFUSecureFlipBookAsset *)self blob];
    if ([v23 length] < (v22 + v19))
    {
      __assert_rtn("[SFUSecureFlipBookAsset mtlTextureFor:withDevice:]", "SFUSecureFlipBookRecorder.mm", 1591, "offset + compressed_size <= self.blob.length");
    }

    v24 = [(SFUSecureFlipBookAsset *)self blob];
    v25 = [v24 bytes];

    if (!compression_decode_buffer([(NSMutableData *)self->_decomp_buffer bytes], v12 * v10, (v25 + v22), v19, 0, COMPRESSION_LZFSE))
    {
      __assert_rtn("[SFUSecureFlipBookAsset mtlTextureFor:withDevice:]", "SFUSecureFlipBookRecorder.mm", 1596, "res != 0");
    }

    v26 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v26 setPixelFormat:80];
    v27 = v10;
    [v26 setWidth:v10];
    [v26 setHeight:v10];
    [v26 setUsage:3];
    v28 = [v30 newTextureWithDescriptor:v26];
    if (!v28)
    {
      __assert_rtn("[SFUSecureFlipBookAsset mtlTextureFor:withDevice:]", "SFUSecureFlipBookRecorder.mm", 1604, "texture != nil");
    }

    *buf = 0;
    v32 = 0;
    v33 = 0;
    v34 = v27;
    v35 = v27;
    v36 = 1;
    [v28 replaceRegion:buf mipmapLevel:0 withBytes:-[NSMutableData bytes](self->_decomp_buffer bytesPerRow:{"bytes"), v12}];
  }

  return v28;
}

- (id)diffWith:(id)a3 policy:(id)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v85 = self;
  v86 = v6;
  v74 = v7;
  if (self == v6)
  {
    v12 = 0;
  }

  else
  {
    v8 = [v7 objectForKeyedSubscript:@"diffImageThreshold"];
    v9 = v8;
    if (v8)
    {
      [v8 floatValue];
      v11 = v10;
    }

    else
    {
      v11 = 0.05;
    }

    v13 = [v74 objectForKeyedSubscript:@"maxTotalImageCountDelta"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 intValue];
    }

    else
    {
      v15 = 5;
    }

    v77 = [MEMORY[0x277CBEB38] dictionary];
    v16 = [(SFUSecureFlipBookAsset *)self constraints];
    v17 = [(SFUSecureFlipBookAsset *)v6 constraints];
    v18 = compare_dic(v16, v17, 0);

    if (v18)
    {
      [v77 addEntriesFromDictionary:v18];
    }

    v19 = [(SFUSecureFlipBookAsset *)v85 metadata];
    v20 = [v19 objectForKeyedSubscript:@"indicators"];
    v21 = [v20 objectAtIndexedSubscript:0];

    v22 = [(SFUSecureFlipBookAsset *)v86 metadata];
    v23 = [v22 objectForKeyedSubscript:@"indicators"];
    v24 = [v23 objectAtIndexedSubscript:0];

    v75 = v21;
    v76 = v24;
    v25 = [MEMORY[0x277CBEB38] dictionary];
    v87 = [v75 objectForKeyedSubscript:@"flipbook"];
    v26 = [v76 objectForKeyedSubscript:@"flipbook"];
    v27 = [MEMORY[0x277CBEB98] setWithArray:&unk_287D27520];
    v28 = compare_dic(v87, v26, v27);
    if (v28)
    {
      [v25 addEntriesFromDictionary:v28];
    }

    v29 = [v75 objectForKeyedSubscript:@"frames"];
    v30 = [v76 objectForKeyedSubscript:@"frames"];
    v31 = [v29 count];
    v32 = v31 - [v30 count];
    if (v32 < 0)
    {
      v32 = -v32;
    }

    if (v32 > v15)
    {
      v93 = @"modified";
      v91 = @"frameCount";
      v100 = @"from";
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
      v95 = v33;
      v101 = @"to";
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
      v96 = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v100 count:2];
      v92 = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v94 = v36;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      [v25 addEntriesFromDictionary:v37];
    }

    if ([v25 count])
    {
      v38 = v25;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    if (v39)
    {
      [v77 addEntriesFromDictionary:v39];
    }

    v40 = [v77 objectForKeyedSubscript:@"modified"];
    v41 = [v40 objectForKeyedSubscript:@"frameCount"];
    v42 = v41 == 0;

    if (v42)
    {
      v84 = MTLCreateSystemDefaultDevice();
      v83 = [v84 newCommandQueue];
      v72 = objc_alloc_init(MEMORY[0x277CD7058]);
      [v72 setPixelFormat:125];
      v43 = [v75 objectForKeyedSubscript:@"extent"];
      v44 = [v43 unsignedIntValue];
      [v72 setHeight:v44];
      [v72 setWidth:v44];

      [v72 setUsage:3];
      v82 = [v84 newTextureWithDescriptor:v72];
      [v72 setHeight:1];
      [v72 setWidth:1];
      v81 = [v84 newTextureWithDescriptor:v72];
      v70 = [v75 objectForKeyedSubscript:@"frames"];
      v71 = [v76 objectForKeyedSubscript:@"frames"];
      v45 = [v70 count];
      v46 = [v71 count];
      if (v46 < v45)
      {
        v45 = v46;
      }

      v78 = [MEMORY[0x277CBEB18] array];
      v80 = v45;
      if (v45)
      {
        v47 = 0;
        v73 = vdupq_n_s64(1uLL);
        do
        {
          v79 = [(SFUSecureFlipBookAsset *)v85 mtlTextureFor:v47 withDevice:v84];
          v48 = [(SFUSecureFlipBookAsset *)v86 mtlTextureFor:v47 withDevice:v84];
          v88 = v83;
          v49 = v79;
          v50 = v48;
          v51 = v82;
          v52 = v81;
          v53 = v52;
          if (v49 && v50)
          {
            v54 = [(NSDictionary *)v88 commandBuffer];
            v55 = objc_alloc(MEMORY[0x277CD7590]);
            v56 = [(NSDictionary *)v88 device];
            v57 = [v55 initWithDevice:v56];

            [v57 encodeToCommandBuffer:v54 primaryTexture:v49 secondaryTexture:v50 destinationTexture:v51];
            v58 = objc_alloc(MEMORY[0x277CD7578]);
            v59 = [v54 device];
            v60 = [v58 initWithDevice:v59];

            [v60 encodeToCommandBuffer:v54 sourceTexture:v51 destinationTexture:v53];
            [v54 commit];
            [v54 waitUntilCompleted];
            v100 = 0;
            v101 = 0;
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = v73;
            v99 = 1;
            [v53 getBytes:&v100 bytesPerRow:16 fromRegion:&v95 mipmapLevel:0];
            v61 = 0;
            do
            {
              v62 = fabsf(*(&v100 + v61));
              v63 = v62 > v11 || v61 == 12;
              v61 += 4;
            }

            while (!v63);
            v64 = v62 <= v11;

            if (v64)
            {
              goto LABEL_39;
            }
          }

          else
          {
          }

          v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v47];
          [v78 addObject:v65];

LABEL_39:
          v47 = (v47 + 1);
        }

        while (v80 > v47);
      }

      if ([v78 count])
      {
        v66 = [v77 objectForKeyedSubscript:@"modified"];
        v89 = @"modifiedFrames";
        v90 = v78;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        [v66 addObject:v67];
      }
    }

    if ([v77 count])
    {
      v68 = v77;
    }

    else
    {
      v68 = 0;
    }

    v12 = v68;
  }

  return v12;
}

- (void)mtlTextureFor:(int)a3 withDevice:(os_log_t)log .cold.1(int a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a3;
  *(buf + 4) = 1024;
  *(buf + 10) = a1;
  _os_log_error_impl(&dword_26C632000, log, OS_LOG_TYPE_ERROR, "Frame %u > frame count %u\n", buf, 0xEu);
}

@end