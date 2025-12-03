@interface NSCoder(VG)
- (CVPixelBufferRef)vg_createDecodedPixelBufferForKey:()VG;
- (__n128)vg_decodeRectForKey:()VG;
- (__n128)vg_decodeViewportForKey:()VG;
- (__n64)vg_decodeUshort2ForKey:()VG;
- (double)vg_decodeFloat2ForKey:()VG;
- (double)vg_decodeFloat3ForKey:()VG;
- (double)vg_decodeFloat4ForKey:()VG;
- (float)vg_decodeFloatForKey:()VG;
- (id)_vg_decodeSurfaceForKey:()VG;
- (id)vg_decodeArrayOfSurfacesForKey:()VG;
- (id)vg_decodeDictionaryOfSurfacesForKey:()VG;
- (id)vg_decodePixelBufferForKey:()VG;
- (id)vg_decodeRasterizationRateMapDescriptorForKey:()VG;
- (id)vg_decodeSurfaceForKey:()VG;
- (uint64_t)vg_decodeUint64ForKey:()VG;
- (uint64_t)vg_decodeUnsignedIntegerForKey:()VG;
- (uint64_t)vg_encodeFloat3x3:()VG forKey:;
- (uint64_t)vg_encodeFloat4x4:()VG forKey:;
- (uint64_t)vg_encodeRect:()VG forKey:;
- (uint64_t)vg_encodeUlong4:()VG forKey:;
- (void)vg_decodeFloat3x3ForKey:()VG;
- (void)vg_decodeFloat4x4ForKey:()VG;
- (void)vg_decodeUlong4ForKey:()VG;
- (void)vg_encodeArrayOfSurfaces:()VG forKey:;
- (void)vg_encodeDictionaryOfSurfaces:()VG forKey:;
- (void)vg_encodeFloat:()VG forKey:;
- (void)vg_encodePixelBuffer:()VG forKey:;
- (void)vg_encodeRasterizationRateMapDescriptor:()VG forKey:;
- (void)vg_encodeSurface:()VG forKey:;
- (void)vg_encodeUint64:()VG forKey:;
- (void)vg_encodeUnsignedInteger:()VG forKey:;
@end

@implementation NSCoder(VG)

- (__n64)vg_decodeUshort2ForKey:()VG
{
  __dst = 0;
  v6 = 0;
  v3 = [self decodeBytesForKey:a3 returnedLength:&v6];
  if (v3)
  {
    if (v6 >= 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = v6;
    }

    memcpy(&__dst, v3, v4);
    result.n64_u16[2] = HIWORD(__dst);
    result.n64_u16[0] = __dst;
  }

  else
  {
    return 0;
  }

  return result;
}

- (uint64_t)vg_encodeUlong4:()VG forKey:
{
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return [self encodeBytes:v6 length:32 forKey:a4];
}

- (void)vg_decodeUlong4ForKey:()VG
{
  __dst = 0u;
  v10 = 0u;
  v8 = 0;
  result = [self decodeBytesForKey:a2 returnedLength:&v8];
  if (result)
  {
    if (v8 >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v8;
    }

    result = memcpy(&__dst, result, v5);
    v7 = __dst;
    v6 = v10;
  }

  else
  {
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a3 = v7;
  a3[1] = v6;
  return result;
}

- (double)vg_decodeFloat2ForKey:()VG
{
  v3 = 0.0;
  __dst = 0.0;
  v7 = 0;
  v4 = [self decodeBytesForKey:a3 returnedLength:&v7];
  if (v4)
  {
    if (v7 >= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = v7;
    }

    memcpy(&__dst, v4, v5);
    return __dst;
  }

  return v3;
}

- (double)vg_decodeFloat3ForKey:()VG
{
  __dst = 0uLL;
  v6 = 0;
  v3 = [self decodeBytesForKey:a3 returnedLength:&v6];
  if (!v3)
  {
    return 0.0;
  }

  if (v6 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v6;
  }

  memcpy(&__dst, v3, v4);
  return *&__dst;
}

- (double)vg_decodeFloat4ForKey:()VG
{
  __dst = 0u;
  v6 = 0;
  v3 = [self decodeBytesForKey:a3 returnedLength:&v6];
  result = 0.0;
  if (v3)
  {
    if (v6 >= 0x10)
    {
      v5 = 16;
    }

    else
    {
      v5 = v6;
    }

    memcpy(&__dst, v3, v5);
    return *&__dst;
  }

  return result;
}

- (uint64_t)vg_encodeFloat4x4:()VG forKey:
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  return [self encodeBytes:v8 length:64 forKey:a7];
}

- (void)vg_decodeFloat4x4ForKey:()VG
{
  v8 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v6 = 0;
  result = [self decodeBytesForKey:a3 returnedLength:&v6];
  if (result)
  {
    if (v6 >= 0x40)
    {
      v4 = 64;
    }

    else
    {
      v4 = v6;
    }

    result = memcpy(__dst, result, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)vg_encodeFloat3x3:()VG forKey:
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  return [self encodeBytes:v7 length:48 forKey:a6];
}

- (void)vg_decodeFloat3x3ForKey:()VG
{
  v8 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v6 = 0;
  result = [self decodeBytesForKey:a3 returnedLength:&v6];
  if (result)
  {
    if (v6 >= 0x30)
    {
      v4 = 48;
    }

    else
    {
      v4 = v6;
    }

    result = memcpy(__dst, result, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)vg_encodeUnsignedInteger:()VG forKey:
{
  v7 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [self encodeObject:v6 forKey:v7];
}

- (uint64_t)vg_decodeUnsignedIntegerForKey:()VG
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)vg_encodeUint64:()VG forKey:
{
  v7 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [self encodeObject:v6 forKey:v7];
}

- (uint64_t)vg_decodeUint64ForKey:()VG
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)vg_encodeFloat:()VG forKey:
{
  v8 = a4;
  *&v6 = a2;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [self encodeObject:v7 forKey:v8];
}

- (float)vg_decodeFloatForKey:()VG
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)vg_encodeSurface:()VG forKey:
{
  v16 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self encodeObject:v16 forKey:v6];
  }

  else if (v16)
  {
    allAttachments = [v16 allAttachments];
    v8 = [allAttachments objectForKeyedSubscript:@"CreationProperties"];
    v9 = [v8 mutableCopy];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "bytesPerRow")}];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD2968]];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "allocationSize")}];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD2948]];

    v12 = [v6 stringByAppendingPathExtension:@"surfaceProperties"];
    [self encodeObject:v9 forKey:v12];

    [v16 lockWithOptions:1 seed:0];
    baseAddress = [v16 baseAddress];
    allocationSize = [v16 allocationSize];
    v15 = subkey(v6, sel_baseAddress);
    [self encodeBytes:baseAddress length:allocationSize forKey:v15];

    [v16 unlockWithOptions:1 seed:0];
  }
}

- (id)vg_decodeSurfaceForKey:()VG
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
  }

  else
  {
    v6 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
    decodedSurface = [v6 decodedSurface];
    v8 = decodedSurface;
    if (decodedSurface)
    {
      v9 = decodedSurface;
    }

    else
    {
      v9 = [self _vg_decodeSurfaceForKey:v4];
    }

    v5 = v9;
  }

  return v5;
}

- (id)_vg_decodeSurfaceForKey:()VG
{
  v44[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = 0;
  selfCopy = self;
  v6 = subkey(v4, sel_baseAddress);
  v7 = [self decodeBytesForKey:v6 returnedLength:&v42];

  v8 = [(NSString *)v4 stringByAppendingPathExtension:@"surfaceProperties"];
  v9 = [self containsValueForKey:v8];

  if (v9)
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [(NSString *)v4 stringByAppendingPathExtension:@"surfaceProperties"];
    v16 = [self decodeObjectOfClasses:v14 forKey:v15];
  }

  else
  {
    v17 = objc_opt_class();
    v18 = subkey(v4, sel_pixelFormat);
    v14 = [self decodeObjectOfClass:v17 forKey:v18];

    if (!v14)
    {
      goto LABEL_11;
    }

    v19 = subkey(v4, sel_width);
    v20 = [self decodeIntegerForKey:v19];

    v21 = subkey(v4, sel_height);
    v22 = [self decodeIntegerForKey:v21];

    v23 = subkey(v4, sel_bytesPerElement);
    v24 = [self decodeIntegerForKey:v23];

    v25 = subkey(v4, sel_bytesPerRow);
    v26 = [self decodeIntegerForKey:v25];

    v43[0] = *MEMORY[0x277CD2928];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
    v44[0] = v15;
    v43[1] = *MEMORY[0x277CD28D0];
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
    v44[1] = v27;
    v43[2] = *MEMORY[0x277CD28A8];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    v29 = *MEMORY[0x277CD28D8];
    v44[2] = v28;
    v44[3] = v14;
    v30 = *MEMORY[0x277CD28B8];
    v43[3] = v29;
    v43[4] = v30;
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
    v44[4] = v31;
    v43[5] = *MEMORY[0x277CD28B0];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
    v44[5] = v32;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:6];
  }

  v33 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v16];
  v14 = v33;
  if (v33)
  {
    [v33 lockWithOptions:0 seed:0];
    v34 = v14;
    baseAddress = [v14 baseAddress];
    v36 = v42;
    allocationSize = [v14 allocationSize];
    if (allocationSize >= v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = allocationSize;
    }

    memcpy(baseAddress, v7, v38);
    [v14 unlockWithOptions:0 seed:0];
    v39 = v14;
  }

LABEL_11:
  v40 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)vg_encodeArrayOfSurfaces:()VG forKey:
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 count];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_count", v6];
  [self vg_encodeUnsignedInteger:v7 forKey:v8];

  for (i = 0; i < [v12 count]; ++i)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_surface_%lu", v6, i];
    v11 = [v12 objectAtIndexedSubscript:i];
    [self vg_encodeSurface:v11 forKey:v10];
  }
}

- (id)vg_decodeArrayOfSurfacesForKey:()VG
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_count", v4];
  v6 = [self vg_decodeUnsignedIntegerForKey:v5];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_surface_%lu", v4, i];
      v10 = [self vg_decodeSurfaceForKey:v9];
      [v7 addObject:v10];
    }
  }

  return v7;
}

- (void)vg_encodeDictionaryOfSurfaces:()VG forKey:
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 count];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_count", v6];
  [self vg_encodeUnsignedInteger:v7 forKey:v8];

  allKeys = [v15 allKeys];
  for (i = 0; i < [v15 count]; ++i)
  {
    v11 = [allKeys objectAtIndexedSubscript:i];
    v12 = [v15 objectForKeyedSubscript:v11];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_surface_k_%lu", v6, i];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_surface_v_%lu", v6, i];
    [self encodeObject:v11 forKey:v13];
    [self vg_encodeSurface:v12 forKey:v14];
  }
}

- (id)vg_decodeDictionaryOfSurfacesForKey:()VG
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_count", v4];
  v6 = [self vg_decodeUnsignedIntegerForKey:v5];

  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v6];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_surface_k_%lu", v4, i];
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_surface_v_%lu", v4, i];
      v11 = [self decodeObjectOfClass:objc_opt_class() forKey:v9];
      v12 = [self vg_decodeSurfaceForKey:v10];
      [v7 setObject:v12 forKey:v11];
    }
  }

  return v7;
}

- (void)vg_encodePixelBuffer:()VG forKey:
{
  v7 = a4;
  v6 = CVPixelBufferGetIOSurface(a3);
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A0] format:@"Only supports IOSurface backed pixel buffers"];
  }

  [self vg_encodeSurface:v6 forKey:v7];
}

- (id)vg_decodePixelBufferForKey:()VG
{
  v1 = [self vg_createDecodedPixelBufferForKey:?];

  return v1;
}

- (CVPixelBufferRef)vg_createDecodedPixelBufferForKey:()VG
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [self vg_decodeSurfaceForKey:?];
  v6 = 0;
  v7 = @"PixelFormatDescription";
  v8[0] = MEMORY[0x277CBEC10];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v1, v2, &v6);
  v3 = v6;

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)vg_encodeRect:()VG forKey:
{
  a2.n128_f64[1] = a3;
  a4.n128_f64[1] = a5;
  v8[0] = a2;
  v8[1] = a4;
  return [self encodeBytes:v8 length:32 forKey:a7];
}

- (__n128)vg_decodeRectForKey:()VG
{
  memset(__dst, 0, sizeof(__dst));
  v6 = 0;
  v3 = [self decodeBytesForKey:a3 returnedLength:&v6];
  if (v3)
  {
    if (v6 >= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = v6;
    }

    memcpy(__dst, v3, v4);
    return __dst[0];
  }

  else
  {
    return 0;
  }
}

- (void)vg_encodeRasterizationRateMapDescriptor:()VG forKey:
{
  v6 = a3;
  v7 = a4;
  layerCount = [v6 layerCount];
  v8 = subkey(v7, sel_layerCount);
  [self vg_encodeUnsignedInteger:layerCount forKey:v8];

  if (v6)
  {
    [v6 screenSize];
    v9 = v25;
  }

  else
  {
    v9 = 0;
    v25 = 0;
    v26 = 0;
  }

  v10 = subkey(v7, sel_width);
  [self vg_encodeUnsignedInteger:v9 forKey:v10];

  if (v6)
  {
    [v6 screenSize];
    v11 = v26;
  }

  else
  {
    v11 = 0;
    v25 = 0;
    v26 = 0;
  }

  v12 = subkey(v7, sel_height);
  v23 = v6;
  [self vg_encodeUnsignedInteger:v11 forKey:v12];

  if (layerCount)
  {
    for (i = 0; i != layerCount; ++i)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_layer_%lu", v7, i];
      layers = [v23 layers];
      v16 = [layers objectAtIndexedSubscript:i];

      horizontalSampleStorage = [v16 horizontalSampleStorage];
      if (v16)
      {
        [v16 sampleCount];
        v18 = 4 * v25;
      }

      else
      {
        v18 = 0;
        v25 = 0;
        v26 = 0;
      }

      v19 = subkey(v14, sel_horizontalSampleStorage);
      [self encodeBytes:horizontalSampleStorage length:v18 forKey:v19];

      verticalSampleStorage = [v16 verticalSampleStorage];
      if (v16)
      {
        [v16 sampleCount];
        v21 = 4 * v26;
      }

      else
      {
        v21 = 0;
        v25 = 0;
        v26 = 0;
      }

      v22 = subkey(v14, sel_verticalSampleStorage);
      [self encodeBytes:verticalSampleStorage length:v21 forKey:v22];
    }
  }
}

- (id)vg_decodeRasterizationRateMapDescriptorForKey:()VG
{
  v22 = a3;
  v4 = subkey(v22, sel_layerCount);
  v5 = [self vg_decodeUnsignedIntegerForKey:v4];

  v6 = subkey(v22, sel_width);
  v7 = [self vg_decodeUnsignedIntegerForKey:v6];

  v8 = subkey(v22, sel_height);
  v9 = [self vg_decodeUnsignedIntegerForKey:v8];

  v10 = objc_alloc_init(MEMORY[0x277CD6F28]);
  v25 = v7;
  v26 = v9;
  v27 = 1;
  [v10 setScreenSize:&v25];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_layer_%lu", v22, i];
      v23 = 0;
      v24 = 0;
      selfCopy = self;
      v14 = subkey(v12, sel_horizontalSampleStorage);
      v15 = [self decodeBytesForKey:v14 returnedLength:&v24];

      selfCopy2 = self;
      v17 = subkey(v12, sel_verticalSampleStorage);
      v18 = [self decodeBytesForKey:v17 returnedLength:&v23];

      v19 = objc_alloc(MEMORY[0x277CD6F10]);
      v25 = v24;
      v26 = v23;
      v27 = 0;
      v20 = [v19 initWithSampleCount:&v25 horizontal:v15 vertical:v18];
      [v10 setLayer:v20 atIndex:i];
    }
  }

  return v10;
}

- (__n128)vg_decodeViewportForKey:()VG
{
  v7 = 0;
  v4 = [self decodeBytesForKey:a2 returnedLength:&v7];
  v5 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v5;
  result = *(v4 + 32);
  *(a3 + 32) = result;
  return result;
}

@end