@interface SFUSecureFlipBookAsset
- (BOOL)writeFlipBookToDirectory:(id)directory error:(id *)error;
- (SFUSecureFlipBookAsset)initWith:(id)with metadata:(id)metadata constraints:(id)constraints blob:(id)blob;
- (id)diffWith:(id)with policy:(id)policy;
- (id)initFromURL:(id)l flipbookName:(id)name constraintSuffix:(id)suffix;
- (id)mtlTextureFor:(unsigned int)for withDevice:(id)device;
@end

@implementation SFUSecureFlipBookAsset

- (SFUSecureFlipBookAsset)initWith:(id)with metadata:(id)metadata constraints:(id)constraints blob:(id)blob
{
  withCopy = with;
  metadataCopy = metadata;
  constraintsCopy = constraints;
  blobCopy = blob;
  flipBookName = self->_flipBookName;
  self->_flipBookName = withCopy;
  v15 = withCopy;

  metadata = self->_metadata;
  self->_metadata = metadataCopy;
  v17 = metadataCopy;

  constraints = self->_constraints;
  self->_constraints = constraintsCopy;
  v19 = constraintsCopy;

  blob = self->_blob;
  self->_blob = blobCopy;

  return self;
}

- (id)initFromURL:(id)l flipbookName:(id)name constraintSuffix:(id)suffix
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  suffixCopy = suffix;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v33 = 0;
  v12 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:4 error:&v33];
  v13 = v33;

  if (!v12)
  {
    localizedDescription = [v13 localizedDescription];
    v15 = localizedDescription;
    uTF8String = [localizedDescription UTF8String];

    v17 = os_log_get();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      v25 = path;
      uTF8String2 = [path UTF8String];
      v27 = "";
      if (uTF8String)
      {
        v27 = uTF8String;
      }

      *buf = 136315394;
      v35 = uTF8String2;
      v36 = 2080;
      v37 = v27;
      _os_log_error_impl(&dword_26C632000, v17, OS_LOG_TYPE_ERROR, "Failed to read Secure Asset at %s : '%s'", buf, 0x16u);
    }
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68__SFUSecureFlipBookAsset_initFromURL_flipbookName_constraintSuffix___block_invoke;
  v28[3] = &unk_279D425C8;
  v18 = nameCopy;
  v29 = v18;
  v19 = lCopy;
  v30 = v19;
  v20 = suffixCopy;
  v31 = v20;
  selfCopy = self;
  v32 = selfCopy;
  [v12 enumerateObjectsUsingBlock:v28];
  if (selfCopy->_metadata && selfCopy->_blob)
  {
    v22 = selfCopy;
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

- (BOOL)writeFlipBookToDirectory:(id)directory error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  path = [directory path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager isWritableFileAtPath:path])
  {
    v8 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"indicators"];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"blobName"];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.plist", self->_flipBookName];
      v12 = write_plist(path, v11, self->_metadata, error);

      if (v12)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_constraints.plist", self->_flipBookName];
        v14 = write_plist(path, v13, self->_constraints, error);

        if (v14)
        {
          v15 = self->_blob;
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", path, v10];
          v17 = [(NSData *)v15 writeToFile:v16 options:0 error:error];

LABEL_12:
          goto LABEL_13;
        }
      }
    }

    else if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"Invalid blob name";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *error = [v19 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:6 userInfo:v20];
    }

    v17 = 0;
    goto LABEL_12;
  }

  if (error)
  {
    v18 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Path not writable";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v18 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:5 userInfo:v10];
    *error = v17 = 0;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (id)mtlTextureFor:(unsigned int)for withDevice:(id)device
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  metadata = [(SFUSecureFlipBookAsset *)self metadata];
  v7 = [metadata objectForKeyedSubscript:@"indicators"];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v8 objectForKeyedSubscript:@"extent"];
  unsignedIntValue = [v9 unsignedIntValue];

  v11 = [v8 objectForKeyedSubscript:@"Bpr"];
  unsignedIntValue2 = [v11 unsignedIntValue];

  v13 = [v8 objectForKeyedSubscript:@"frames"];
  forCopy = for;
  if ([v13 count] <= for)
  {
    v26 = os_log_get();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      -[SFUSecureFlipBookAsset mtlTextureFor:withDevice:].cold.1([v13 count], buf, for, v26);
    }

    v28 = 0;
  }

  else
  {
    if (!self->_decomp_buffer)
    {
      v15 = [MEMORY[0x277CBEB28] dataWithLength:unsignedIntValue2 * unsignedIntValue];
      decomp_buffer = self->_decomp_buffer;
      self->_decomp_buffer = v15;
    }

    v17 = [v13 objectAtIndexedSubscript:for];
    v18 = [v17 objectForKeyedSubscript:@"dataSize"];
    unsignedIntValue3 = [v18 unsignedIntValue];

    v20 = [v13 objectAtIndexedSubscript:forCopy];
    v21 = [v20 objectForKeyedSubscript:@"dataOffset"];
    unsignedIntValue4 = [v21 unsignedIntValue];

    blob = [(SFUSecureFlipBookAsset *)self blob];
    if ([blob length] < (unsignedIntValue4 + unsignedIntValue3))
    {
      __assert_rtn("[SFUSecureFlipBookAsset mtlTextureFor:withDevice:]", "SFUSecureFlipBookRecorder.mm", 1591, "offset + compressed_size <= self.blob.length");
    }

    blob2 = [(SFUSecureFlipBookAsset *)self blob];
    bytes = [blob2 bytes];

    if (!compression_decode_buffer([(NSMutableData *)self->_decomp_buffer bytes], unsignedIntValue2 * unsignedIntValue, (bytes + unsignedIntValue4), unsignedIntValue3, 0, COMPRESSION_LZFSE))
    {
      __assert_rtn("[SFUSecureFlipBookAsset mtlTextureFor:withDevice:]", "SFUSecureFlipBookRecorder.mm", 1596, "res != 0");
    }

    v26 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v26 setPixelFormat:80];
    v27 = unsignedIntValue;
    [v26 setWidth:unsignedIntValue];
    [v26 setHeight:unsignedIntValue];
    [v26 setUsage:3];
    v28 = [deviceCopy newTextureWithDescriptor:v26];
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
    [v28 replaceRegion:buf mipmapLevel:0 withBytes:-[NSMutableData bytes](self->_decomp_buffer bytesPerRow:{"bytes"), unsignedIntValue2}];
  }

  return v28;
}

- (id)diffWith:(id)with policy:(id)policy
{
  v102 = *MEMORY[0x277D85DE8];
  withCopy = with;
  policyCopy = policy;
  selfCopy = self;
  v86 = withCopy;
  v74 = policyCopy;
  if (self == withCopy)
  {
    v12 = 0;
  }

  else
  {
    v8 = [policyCopy objectForKeyedSubscript:@"diffImageThreshold"];
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
      intValue = [v13 intValue];
    }

    else
    {
      intValue = 5;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    constraints = [(SFUSecureFlipBookAsset *)self constraints];
    constraints2 = [(SFUSecureFlipBookAsset *)withCopy constraints];
    v18 = compare_dic(constraints, constraints2, 0);

    if (v18)
    {
      [dictionary addEntriesFromDictionary:v18];
    }

    metadata = [(SFUSecureFlipBookAsset *)selfCopy metadata];
    v20 = [metadata objectForKeyedSubscript:@"indicators"];
    v21 = [v20 objectAtIndexedSubscript:0];

    metadata2 = [(SFUSecureFlipBookAsset *)v86 metadata];
    v23 = [metadata2 objectForKeyedSubscript:@"indicators"];
    v24 = [v23 objectAtIndexedSubscript:0];

    v75 = v21;
    v76 = v24;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v87 = [v75 objectForKeyedSubscript:@"flipbook"];
    v26 = [v76 objectForKeyedSubscript:@"flipbook"];
    v27 = [MEMORY[0x277CBEB98] setWithArray:&unk_287D27520];
    v28 = compare_dic(v87, v26, v27);
    if (v28)
    {
      [dictionary2 addEntriesFromDictionary:v28];
    }

    v29 = [v75 objectForKeyedSubscript:@"frames"];
    v30 = [v76 objectForKeyedSubscript:@"frames"];
    v31 = [v29 count];
    v32 = v31 - [v30 count];
    if (v32 < 0)
    {
      v32 = -v32;
    }

    if (v32 > intValue)
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
      [dictionary2 addEntriesFromDictionary:v37];
    }

    if ([dictionary2 count])
    {
      v38 = dictionary2;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    if (v39)
    {
      [dictionary addEntriesFromDictionary:v39];
    }

    v40 = [dictionary objectForKeyedSubscript:@"modified"];
    v41 = [v40 objectForKeyedSubscript:@"frameCount"];
    v42 = v41 == 0;

    if (v42)
    {
      v84 = MTLCreateSystemDefaultDevice();
      newCommandQueue = [v84 newCommandQueue];
      v72 = objc_alloc_init(MEMORY[0x277CD7058]);
      [v72 setPixelFormat:125];
      v43 = [v75 objectForKeyedSubscript:@"extent"];
      unsignedIntValue = [v43 unsignedIntValue];
      [v72 setHeight:unsignedIntValue];
      [v72 setWidth:unsignedIntValue];

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

      array = [MEMORY[0x277CBEB18] array];
      v80 = v45;
      if (v45)
      {
        v47 = 0;
        v73 = vdupq_n_s64(1uLL);
        do
        {
          v79 = [(SFUSecureFlipBookAsset *)selfCopy mtlTextureFor:v47 withDevice:v84];
          v48 = [(SFUSecureFlipBookAsset *)v86 mtlTextureFor:v47 withDevice:v84];
          v88 = newCommandQueue;
          v49 = v79;
          v50 = v48;
          v51 = v82;
          v52 = v81;
          v53 = v52;
          if (v49 && v50)
          {
            commandBuffer = [(NSDictionary *)v88 commandBuffer];
            v55 = objc_alloc(MEMORY[0x277CD7590]);
            device = [(NSDictionary *)v88 device];
            v57 = [v55 initWithDevice:device];

            [v57 encodeToCommandBuffer:commandBuffer primaryTexture:v49 secondaryTexture:v50 destinationTexture:v51];
            v58 = objc_alloc(MEMORY[0x277CD7578]);
            device2 = [commandBuffer device];
            v60 = [v58 initWithDevice:device2];

            [v60 encodeToCommandBuffer:commandBuffer sourceTexture:v51 destinationTexture:v53];
            [commandBuffer commit];
            [commandBuffer waitUntilCompleted];
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
          [array addObject:v65];

LABEL_39:
          v47 = (v47 + 1);
        }

        while (v80 > v47);
      }

      if ([array count])
      {
        v66 = [dictionary objectForKeyedSubscript:@"modified"];
        v89 = @"modifiedFrames";
        v90 = array;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        [v66 addObject:v67];
      }
    }

    if ([dictionary count])
    {
      v68 = dictionary;
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