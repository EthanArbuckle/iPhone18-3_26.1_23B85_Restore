@interface CLKUIAtlasBacking
+ (id)atlasBackingWithArt:(id)art uuid:(id)uuid;
+ (id)atlasBackingWithBytes:(const void *)bytes length:(unint64_t)length mmapFile:(id)file uuid:(id)uuid;
+ (id)atlasBackingWithImage:(id)image uuid:(id)uuid mipmap:(BOOL)mipmap;
+ (id)atlasBackingWithUuid:(id)uuid structure:(CLKUIAtlasBackingStructure *)structure data:(id)data;
- (BOOL)writeToFile:(id)file error:(id *)error;
- (CLKUIAtlasBacking)initWithUuid:(id)uuid structure:(CLKUIAtlasBackingStructure *)structure data:(id)data;
- (CLKUIAtlasBacking)initWithUuid:(id)uuid structure:(CLKUIAtlasBackingStructure *)structure mmapFile:(id)file;
- (CLKUIAtlasBackingStructure)structure;
@end

@implementation CLKUIAtlasBacking

+ (id)atlasBackingWithImage:(id)image uuid:(id)uuid mipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  imageCopy = image;
  uuidCopy = uuid;
  if (!imageCopy)
  {
    v12 = 0;
    goto LABEL_43;
  }

  cGImage = [imageCopy CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v12 = 0;
  if (Width - 8193 >= 0xFFFFE000)
  {
    v13 = Height;
    if (Height - 8193 >= 0xFFFFE000)
    {
      imageOrientation = [imageCopy imageOrientation];
      v15 = xmmword_1BCE3A870;
      v16 = xmmword_1BCE3A880;
      v17 = 0.0;
      if (imageOrientation > 3)
      {
        if (imageOrientation > 5)
        {
          if (imageOrientation == 6)
          {
            v18 = v13;
            v15 = xmmword_1BCE3A890;
            v16 = xmmword_1BCE3A8A0;
            v17 = Width;
            goto LABEL_23;
          }

          if (imageOrientation != 7)
          {
            goto LABEL_22;
          }

          v15 = xmmword_1BCE3A880;
          v16 = xmmword_1BCE3A870;
        }

        else
        {
          if (imageOrientation == 4)
          {
            v16 = xmmword_1BCE3A890;
            v18 = Width;
            goto LABEL_23;
          }

          v15 = xmmword_1BCE3A8A0;
          v17 = v13;
        }
      }

      else
      {
        if (imageOrientation <= 1)
        {
          v18 = 0.0;
          if (!imageOrientation)
          {
LABEL_23:
            v34 = v16;
            v35 = v15;
            v32 = Width;
            v33 = v13;
            v19 = vmovn_s64(vcvtq_u64_f64(vrndaq_f64(vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v15, v13), v16, Width)))));
            if (mipmapCopy)
            {
              v20 = v19.i32[0];
              if (v19.i32[1] >= 1 && v19.i32[0] >= 1 && (v19.i32[1] != 1 || v19.i32[0] != 1))
              {
                if (v19.i32[0] <= v19.i32[1])
                {
                  v20 = v19.i32[1];
                }

                v19 = vdup_n_s32(1 << -__clz(v20 - 1));
              }

              v31 = 4 * v19.i32[1] * v19.i32[0];
              v36 = v19;
              v23 = 0;
              if (v19.i32[0] >= 1)
              {
                v24 = 1;
                do
                {
                  v23 += 4 * v24 * v24;
                  v24 *= 2;
                }

                while (v24 <= v19.i32[0]);
              }
            }

            else
            {
              v23 = 4 * v19.i32[1] * v19.i32[0];
              v31 = v23;
              v36 = v19;
            }

            v25 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
            v26 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v23];
            mutableBytes = [v26 mutableBytes];
            v28 = CGBitmapContextCreate(mutableBytes, v36.i32[0], v36.i32[1], 8uLL, 4 * v36.i32[0], v25, 0x4001u);
            CGColorSpaceRelease(v25);
            CGContextTranslateCTM(v28, 0.0, v36.i32[1]);
            CGContextScaleCTM(v28, 1.0, -1.0);
            *&transform.a = v34;
            *&transform.c = v35;
            transform.tx = v18;
            transform.ty = v17;
            CGContextConcatCTM(v28, &transform);
            v39.origin.x = 0.0;
            v39.origin.y = 0.0;
            v39.size.width = v32;
            v39.size.height = v33;
            CGContextDrawImage(v28, v39, cGImage);
            CGContextRelease(v28);
            if (mipmapCopy)
            {
              _CLKUIRawImageGenerateMipmapsSRGB8(mutableBytes, v36.i32[0]);
            }

            v29 = [CLKUIAtlasBacking alloc];
            *&transform.a = mutableBytes;
            LODWORD(transform.b) = v23;
            *(&transform.b + 4) = v36;
            HIDWORD(transform.c) = 1;
            LODWORD(transform.d) = v31;
            *(&transform.d + 4) = 4;
            WORD2(transform.tx) = 2;
            BYTE6(transform.tx) = 0;
            HIBYTE(transform.tx) = mipmapCopy;
            v12 = [(CLKUIAtlasBacking *)v29 initWithUuid:uuidCopy structure:&transform data:v26];

            goto LABEL_43;
          }

          if (imageOrientation == 1)
          {
            v18 = Width;
            v15 = xmmword_1BCE3A8A0;
            v16 = xmmword_1BCE3A890;
            v17 = v13;
            goto LABEL_23;
          }

LABEL_22:
          v16 = *MEMORY[0x1E695EFD0];
          v15 = *(MEMORY[0x1E695EFD0] + 16);
          v18 = *(MEMORY[0x1E695EFD0] + 32);
          v17 = *(MEMORY[0x1E695EFD0] + 40);
          goto LABEL_23;
        }

        if (imageOrientation == 2)
        {
          v15 = xmmword_1BCE3A890;
          v16 = xmmword_1BCE3A870;
          v18 = v13;
          goto LABEL_23;
        }

        v15 = xmmword_1BCE3A880;
        v16 = xmmword_1BCE3A8A0;
        v17 = Width;
      }

      v18 = 0.0;
      goto LABEL_23;
    }
  }

LABEL_43:

  return v12;
}

+ (id)atlasBackingWithArt:(id)art uuid:(id)uuid
{
  uuidCopy = uuid;
  if (art)
  {
    v6 = [CLKUIMmapFile mmapFileWithPath:art];
    v7 = v6;
    if (v6)
    {
      v8 = +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:](CLKUIAtlasBacking, "atlasBackingWithBytes:length:mmapFile:uuid:", [v6 bytes], objc_msgSend(v6, "length"), v6, uuidCopy);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)atlasBackingWithBytes:(const void *)bytes length:(unint64_t)length mmapFile:(id)file uuid:(id)uuid
{
  MEMORY[0x1EEE9AC00](self);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v71 = *MEMORY[0x1E69E9840];
  v13 = v12;
  v49 = v7;
  if (v9 <= 7)
  {
    v14 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
    }
  }

  v15 = *v11;
  v48 = v11[1];
  v16 = *(v11 + 1);
  v17 = *(v11 + 2);
  v18 = *(v11 + 3);
  v19 = (v17 - 8193) < 0xFFFFE000;
  if ((v17 - 8193) <= 0xFFFFDFFF)
  {
    v20 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
    }
  }

  if ((v18 - 8193) <= 0xFFFFDFFF)
  {
    v21 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
    }

    v19 = 1;
  }

  v22 = v16 & 7;
  if (v22 != 1 && v22 != 6)
  {
    v24 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
    }

    v19 = 1;
  }

  if (v15 >= 0x43)
  {
    v25 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
    }

    v19 = 1;
  }

  if (v16 >> 14 == 3)
  {
    v26 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
    }

    if (v48 < 4)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v48 > 3)
  {
LABEL_30:
    v27 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CLKUIAtlasBacking atlasBackingWithBytes:v48 length:v49 mmapFile:v27 uuid:?];
    }

LABEL_32:

LABEL_33:
    v28 = 0;
    goto LABEL_34;
  }

  if (v19)
  {
    goto LABEL_33;
  }

  v45 = v13;
  v47 = s_artFormatsBpp[v15];
  v30 = _CLKUIDeterminePlaneLength(v15, v17, v18, v47);
  v46 = v30;
  if (v17 && (v16 & 8) != 0 && v18 && (v17 != 1 || v18 != 1))
  {
    v31 = v18;
    v32 = v17;
    do
    {
      if (v32 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 >>= 1;
      }

      if (v31 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 >>= 1;
      }

      v30 += _CLKUIDeterminePlaneLength(v15, v32, v31, v47);
    }

    while (v31 != 1 || v32 != 1);
  }

  v33 = v30 * v22;
  v34 = (v16 >> 4) & 3;
  if (v34)
  {
    v44 = (v30 * v22);
    memset(&stream, 0, sizeof(stream));
    v13 = v45;
    if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, atlasBackingWithBytes_length_mmapFile_uuid__algorithms[v34]) == COMPRESSION_STATUS_ERROR)
    {
      v27 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
      }

      goto LABEL_32;
    }

    stream.src_ptr = v11 + 8;
    stream.src_size = (v9 - 8);
    stream.dst_ptr = buf;
    stream.dst_size = 4096;
    v35 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v44];
    while (1)
    {
      v36 = compression_stream_process(&stream, 0);
      if (v36)
      {
        break;
      }

      if (stream.dst_size)
      {
        v42 = CLKLoggingObjectForDomain();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      [v35 appendBytes:buf length:4096];
      stream.dst_ptr = buf;
      stream.dst_size = 4096;
    }

    if (v36 == COMPRESSION_STATUS_ERROR)
    {
      v42 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
LABEL_77:
        +[CLKUIAtlasBacking atlasBackingWithBytes:length:mmapFile:uuid:];
      }

LABEL_78:

      goto LABEL_79;
    }

    if (v36 == COMPRESSION_STATUS_END && stream.dst_ptr > buf)
    {
      [v35 appendBytes:buf length:stream.dst_ptr - buf];
    }

    compression_stream_destroy(&stream);
    v37 = [v35 length];
    if (v44 == v37)
    {
      mutableBytes = [v35 mutableBytes];
      v39 = v35;
      v40 = [CLKUIAtlasBacking alloc];
      *v51 = mutableBytes;
      *&v51[8] = v44;
      v52 = __PAIR64__(v18, v17);
      v53 = v16 & 7;
      v54 = v46;
      v55 = v47;
      v56 = (v16 >> 8) & 0x3F;
      v57 = v15;
      v58 = v48;
      v59 = v16 >> 14;
      v60 = (v16 & 8) != 0;
      v28 = [(CLKUIAtlasBacking *)v40 initWithUuid:v49 structure:v51 data:v39];

      goto LABEL_80;
    }

    v43 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v51 = 138412802;
      *&v51[4] = v49;
      LOWORD(v52) = 1024;
      *(&v52 + 2) = v44;
      HIWORD(v52) = 1024;
      v53 = v37;
      _os_log_error_impl(&dword_1BC940000, v43, OS_LOG_TYPE_ERROR, "%@: Unexpected length %d != %d", v51, 0x18u);
    }

LABEL_79:
    v28 = 0;
LABEL_80:
  }

  else
  {
    v13 = v45;
    if (v33 != v9 - 8)
    {
      v41 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = v49;
        LOWORD(v62) = 1024;
        *(&v62 + 2) = v33;
        HIWORD(v62) = 1024;
        v63 = v9 - 8;
        _os_log_error_impl(&dword_1BC940000, v41, OS_LOG_TYPE_ERROR, "%@: Unexpected length %d != %d", buf, 0x18u);
      }

      goto LABEL_33;
    }

    *buf = v11 + 8;
    *&buf[8] = v33;
    v62 = __PAIR64__(v18, v17);
    v63 = v16 & 7;
    v64 = v46;
    v65 = v47;
    v66 = (v16 >> 8) & 0x3F;
    v67 = v15;
    v68 = v48;
    v69 = v16 >> 14;
    v70 = (v16 & 8) != 0;
    v28 = [[CLKUIAtlasBacking alloc] initWithUuid:v49 structure:buf mmapFile:v45];
  }

LABEL_34:

  return v28;
}

+ (id)atlasBackingWithUuid:(id)uuid structure:(CLKUIAtlasBackingStructure *)structure data:(id)data
{
  v36 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  dataCopy = data;
  v9 = structure->width - 8193;
  v10 = v9 < 0xFFFFE000;
  if (v9 <= 0xFFFFDFFF)
  {
    v11 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
    }
  }

  if (structure->height - 8193 <= 0xFFFFDFFF)
  {
    v12 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
    }

    v10 = 1;
  }

  planes = structure->planes;
  if (planes != 1 && planes != 6)
  {
    v14 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
    }

    v10 = 1;
  }

  if (structure->format >= 0x43u)
  {
    v15 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
    }

    v10 = 1;
  }

  if (structure->wrap >= 3u)
  {
    v16 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
    }

    v10 = 1;
  }

  if (structure->filter >= 4u)
  {
    v17 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
    }

    v10 = 1;
  }

  if (dataCopy)
  {
    bytes = [dataCopy bytes];
    v19 = [dataCopy length];
    if (structure->bytes < bytes || structure->bytes + structure->bytesLength > &bytes[v19])
    {
      v20 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
      }

      v10 = 1;
    }
  }

  bytesPerPixel = structure->bytesPerPixel;
  if (bytesPerPixel != s_artFormatsBpp[structure->format])
  {
    v22 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[CLKUIAtlasBacking atlasBackingWithUuid:structure:data:];
    }

    bytesPerPixel = structure->bytesPerPixel;
    v10 = 1;
  }

  if (bytesPerPixel && structure->planeLength != structure->width * bytesPerPixel * structure->height)
  {
    v26 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      width = structure->width;
      height = structure->height;
      planeLength = structure->planeLength;
      v31 = structure->bytesPerPixel;
      *buf = 138413314;
      *&buf[4] = uuidCopy;
      *&buf[12] = 1024;
      *&buf[14] = planeLength;
      *&buf[18] = 1024;
      *&buf[20] = width;
      *&buf[24] = 1024;
      *&buf[26] = height;
      *&buf[30] = 1024;
      LODWORD(v35) = v31;
      _os_log_error_impl(&dword_1BC940000, v26, OS_LOG_TYPE_ERROR, "%@: Invalid art plane length (%d) [width = %d, height = %d, bytesPerPixel = %d]", buf, 0x24u);
    }
  }

  else if (!v10)
  {
    v23 = *&structure->height;
    *buf = *&structure->bytes;
    *&buf[16] = v23;
    v35 = *&structure->mipCount;
    v24 = dataCopy;
    v32[0] = *buf;
    v32[1] = *&buf[16];
    v33 = v35;
    v25 = [[CLKUIAtlasBacking alloc] initWithUuid:uuidCopy structure:v32 data:v24];

    goto LABEL_44;
  }

  v25 = 0;
LABEL_44:

  return v25;
}

- (CLKUIAtlasBacking)initWithUuid:(id)uuid structure:(CLKUIAtlasBackingStructure *)structure data:(id)data
{
  uuidCopy = uuid;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = CLKUIAtlasBacking;
  v11 = [(CLKUIAtlasBacking *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, uuid);
    v13 = *&structure->bytes;
    v14 = *&structure->height;
    *&v12->_structure.mipCount = *&structure->mipCount;
    *&v12->_structure.bytes = v13;
    *&v12->_structure.height = v14;
    objc_storeStrong(&v12->_data, data);
  }

  return v12;
}

- (CLKUIAtlasBacking)initWithUuid:(id)uuid structure:(CLKUIAtlasBackingStructure *)structure mmapFile:(id)file
{
  uuidCopy = uuid;
  fileCopy = file;
  v16.receiver = self;
  v16.super_class = CLKUIAtlasBacking;
  v11 = [(CLKUIAtlasBacking *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, uuid);
    v13 = *&structure->bytes;
    v14 = *&structure->height;
    *&v12->_structure.mipCount = *&structure->mipCount;
    *&v12->_structure.bytes = v13;
    *&v12->_structure.height = v14;
    objc_storeStrong(&v12->_mmapFile, file);
  }

  return v12;
}

- (BOOL)writeToFile:(id)file error:(id *)error
{
  v6 = MEMORY[0x1E695DF88];
  fileCopy = file;
  v8 = [[v6 alloc] initWithLength:{-[CLKUIAtlasBacking bytesLength](self, "bytesLength") + 8}];
  mutableBytes = [v8 mutableBytes];
  *mutableBytes = [(CLKUIAtlasBacking *)self format];
  *(mutableBytes + 1) = [(CLKUIAtlasBacking *)self filter];
  *(mutableBytes + 2) = *(mutableBytes + 2) & 0xFFF8 | [(CLKUIAtlasBacking *)self planes]& 7;
  if ([(CLKUIAtlasBacking *)self mipmaps])
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  *(mutableBytes + 2) = *(mutableBytes + 2) & 0xFF07 | v10;
  *(mutableBytes + 2) = (([(CLKUIAtlasBacking *)self mipCount]& 0x3F) << 8) | *(mutableBytes + 2) & 0xC0FF;
  *(mutableBytes + 2) = *(mutableBytes + 2) & 0x3FFF | ([(CLKUIAtlasBacking *)self wrap]<< 14);
  *(mutableBytes + 4) = [(CLKUIAtlasBacking *)self width];
  *(mutableBytes + 6) = [(CLKUIAtlasBacking *)self height];
  memcpy((mutableBytes + 8), [(CLKUIAtlasBacking *)self bytes], [(CLKUIAtlasBacking *)self bytesLength]);
  v11 = [v8 writeToFile:fileCopy options:1 error:error];

  return v11;
}

- (CLKUIAtlasBackingStructure)structure
{
  v3 = *&self[1].bytesLength;
  *&retstr->bytes = *&self->mipCount;
  *&retstr->height = v3;
  *&retstr->mipCount = *&self[1].planeLength;
  return self;
}

+ (void)atlasBackingWithBytes:length:mmapFile:uuid:.cold.9()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  v2 = 3;
  _os_log_error_impl(&dword_1BC940000, v0, OS_LOG_TYPE_ERROR, "%@: Invalid art header wrap %d", v1, 0x12u);
}

+ (void)atlasBackingWithBytes:(NSObject *)a3 length:mmapFile:uuid:.cold.10(unsigned __int8 a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a2;
  WORD6(v3) = 1024;
  HIWORD(v3) = a1;
  OUTLINED_FUNCTION_2_3(&dword_1BC940000, a2, a3, "%@: Invalid art header filter %d", v3, 0, *MEMORY[0x1E69E9840]);
}

+ (void)atlasBackingWithUuid:structure:data:.cold.4()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_3(&dword_1BC940000, v0, v1, "%@: Invalid art structure format %d");
}

+ (void)atlasBackingWithUuid:structure:data:.cold.5()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_3(&dword_1BC940000, v0, v1, "%@: Invalid art structure wrap %d");
}

+ (void)atlasBackingWithUuid:structure:data:.cold.6()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_3(&dword_1BC940000, v0, v1, "%@: Invalid art structure filter %d");
}

@end