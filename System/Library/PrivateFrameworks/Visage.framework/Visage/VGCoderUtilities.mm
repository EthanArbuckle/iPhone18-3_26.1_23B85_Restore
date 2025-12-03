@interface VGCoderUtilities
+ (BOOL)hasPixelBufferForKey:(id)key decoder:(id)decoder;
+ (__CVBuffer)decodePixelBufferForKey:(id)key decoder:(id)decoder;
+ (void)encodePixelBuffer:(__CVBuffer *)buffer forKey:(id)key encoder:(id)encoder;
@end

@implementation VGCoderUtilities

+ (void)encodePixelBuffer:(__CVBuffer *)buffer forKey:(id)key encoder:(id)encoder
{
  keyCopy = key;
  encoderCopy = encoder;
  v8 = CVPixelBufferGetIOSurface(buffer);
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A0] format:@"Only supports IOSurface backed pixel buffer"];
  }

  allAttachments = [v8 allAttachments];
  v10 = [allAttachments objectForKeyedSubscript:@"CreationProperties"];
  v11 = [v10 mutableCopy];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "bytesPerRow")}];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD2968]];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "allocationSize")}];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD2948]];

  v14 = [keyCopy stringByAppendingPathExtension:@"properties"];
  [encoderCopy encodeObject:v11 forKey:v14];

  [v8 lockWithOptions:1 seed:0];
  baseAddress = [v8 baseAddress];
  allocationSize = [v8 allocationSize];
  v17 = [keyCopy stringByAppendingPathExtension:@"bytes"];
  [encoderCopy encodeBytes:baseAddress length:allocationSize forKey:v17];

  [v8 unlockWithOptions:1 seed:0];
}

+ (__CVBuffer)decodePixelBufferForKey:(id)key decoder:(id)decoder
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  decoderCopy = decoder;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v12 = [keyCopy stringByAppendingPathExtension:@"properties"];
  v13 = [decoderCopy decodeObjectOfClasses:v11 forKey:v12];

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
  v15 = decoderCopy;
  v16 = [keyCopy stringByAppendingPathExtension:@"bytes"];
  v17 = [decoderCopy decodeBytesForKey:v16 returnedLength:&v27];

  v18 = v27;
  if (v18 != [v14 allocationSize])
  {
    v22 = __VGLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v27;
      allocationSize = [v14 allocationSize];
      *pixelBufferOut = 134218240;
      *&pixelBufferOut[4] = v23;
      v29 = 2048;
      v30 = allocationSize;
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

+ (BOOL)hasPixelBufferForKey:(id)key decoder:(id)decoder
{
  keyCopy = key;
  decoderCopy = decoder;
  v7 = [keyCopy stringByAppendingPathExtension:@"properties"];
  if ([decoderCopy containsValueForKey:v7])
  {
    v8 = [keyCopy stringByAppendingPathExtension:@"bytes"];
    v9 = [decoderCopy containsValueForKey:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end