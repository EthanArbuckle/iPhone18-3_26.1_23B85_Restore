@interface VGCoderUtilities
+ (BOOL)hasPixelBufferForKey:(id)a3 decoder:(id)a4;
+ (__CVBuffer)decodePixelBufferForKey:(id)a3 decoder:(id)a4;
+ (void)encodePixelBuffer:(__CVBuffer *)a3 forKey:(id)a4 encoder:(id)a5;
@end

@implementation VGCoderUtilities

+ (void)encodePixelBuffer:(__CVBuffer *)a3 forKey:(id)a4 encoder:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = CVPixelBufferGetIOSurface(a3);
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A0] format:@"Only supports IOSurface backed pixel buffer"];
  }

  v9 = [v8 allAttachments];
  v10 = [v9 objectForKeyedSubscript:@"CreationProperties"];
  v11 = [v10 mutableCopy];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "bytesPerRow")}];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD2968]];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "allocationSize")}];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD2948]];

  v14 = [v18 stringByAppendingPathExtension:@"properties"];
  [v7 encodeObject:v11 forKey:v14];

  [v8 lockWithOptions:1 seed:0];
  v15 = [v8 baseAddress];
  v16 = [v8 allocationSize];
  v17 = [v18 stringByAppendingPathExtension:@"bytes"];
  [v7 encodeBytes:v15 length:v16 forKey:v17];

  [v8 unlockWithOptions:1 seed:0];
}

+ (__CVBuffer)decodePixelBufferForKey:(id)a3 decoder:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v5 stringByAppendingPathExtension:@"properties"];
  v13 = [v6 decodeObjectOfClasses:v11 forKey:v12];

  v14 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v13];
  if (!v14)
  {
    v21 = __VGLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *pixelBufferOut = 138412290;
      *&pixelBufferOut[4] = v13;
      _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, " Failed to create iosurface with properties %@ ", pixelBufferOut, 0xCu);
    }

    goto LABEL_10;
  }

  v27 = 0;
  v15 = v6;
  v16 = [v5 stringByAppendingPathExtension:@"bytes"];
  v17 = [v6 decodeBytesForKey:v16 returnedLength:&v27];

  v18 = v27;
  if (v18 != [v14 allocationSize])
  {
    v22 = __VGLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v27;
      v24 = [v14 allocationSize];
      *pixelBufferOut = 134218240;
      *&pixelBufferOut[4] = v23;
      v29 = 2048;
      v30 = v24;
      _os_log_impl(&dword_270F06000, v22, OS_LOG_TYPE_ERROR, " Failed to decode iosurface data [%ld != %ld] ", pixelBufferOut, 0x16u);
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  [v14 lockWithOptions:0 seed:0];
  v19 = v14;
  memcpy([v14 baseAddress], v17, objc_msgSend(v14, "allocationSize"));
  [v14 unlockWithOptions:0 seed:0];
  *pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v14, 0, pixelBufferOut);
  v20 = *pixelBufferOut;
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)hasPixelBufferForKey:(id)a3 decoder:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 stringByAppendingPathExtension:@"properties"];
  if ([v6 containsValueForKey:v7])
  {
    v8 = [v5 stringByAppendingPathExtension:@"bytes"];
    v9 = [v6 containsValueForKey:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end