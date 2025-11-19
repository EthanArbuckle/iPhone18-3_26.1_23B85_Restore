@interface NEBloomFilter
+ (BOOL)mmapFromFile:(const char *)a3 bloomFilter:(ne_bloom_filter *)a4;
+ (char)mmapToFile:(const char *)a3 data:(char *)a4 dataLength:(unsigned int)a5 numberOfBits:(unsigned int)a6 numberOfHashes:(unsigned int)a7 murmurSeed:(unsigned int)a8 tag:(id)a9;
+ (double)getFalsePositiveProbability:(unsigned int)a3 numberOfBits:(unsigned int)a4 numberOfHashes:(unsigned int)a5;
+ (uint64_t)mmapCleanup:(uint64_t)a1;
- (BOOL)contains:(id)a3;
- (NEBloomFilter)initWithData:(id)a3 numberOfBits:(unsigned int)a4 numberOfHashes:(unsigned int)a5 murmurSeed:(unsigned int)a6 mmapFilename:(id)a7 tag:(id)a8;
- (id)getFilterTag;
- (id)initFromFile:(id)a3;
- (void)insert:(id)a3;
@end

@implementation NEBloomFilter

- (id)getFilterTag
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_tag encoding:4];

  return v2;
}

- (BOOL)contains:(id)a3
{
  bitVectorBuffer = self->_bitVectorBuffer;
  v5 = a3;
  v6 = [(NSData *)bitVectorBuffer bytes];
  numberOfBits = self->_numberOfBits;
  numberOfHashes = self->_numberOfHashes;
  murmurSeed = self->_murmurSeed;
  v10 = [v5 UTF8String];

  return [NEBloomFilter containsWithBitmap:v6 numberOfBits:numberOfBits numberOfHashes:numberOfHashes murmurSeed:murmurSeed value:v10];
}

- (void)insert:(id)a3
{
  bitVectorBuffer = self->_bitVectorBuffer;
  v5 = a3;
  v6 = [(NSData *)bitVectorBuffer bytes];
  numberOfBits = self->_numberOfBits;
  numberOfHashes = self->_numberOfHashes;
  murmurSeed = self->_murmurSeed;
  v10 = [v5 UTF8String];

  [NEBloomFilter insertWithBitmap:v6 numberOfBits:numberOfBits numberOfHashes:numberOfHashes murmurSeed:murmurSeed value:v10];
}

- (id)initFromFile:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NEBloomFilter;
  v5 = [(NEBloomFilter *)&v21 init];
  if (!v5)
  {
    v16 = 0;
    goto LABEL_22;
  }

  if (!v4)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v28 = 138412290;
      *&v28[4] = v5;
      _os_log_error_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_ERROR, "%@ - initFromFile: Invalid params", v28, 0xCu);
    }

    goto LABEL_17;
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *v28 = 0u;
  if (+[NEBloomFilter mmapFromFile:bloomFilter:](NEBloomFilter, "mmapFromFile:bloomFilter:", [v4 UTF8String], v28))
  {
    if (v31 && HIDWORD(v29))
    {
      *(v5 + 12) = v29;
      *(v5 + 5) = DWORD2(v29);
      v6 = objc_alloc(MEMORY[0x1E695DEF0]);
      v7 = [v6 initWithBytes:v31 length:HIDWORD(v29)];
      v8 = *(v5 + 5);
      *(v5 + 5) = v7;

      v9 = -[NEBitVector initWithBitMap:bitmapSize:bitCount:]([NEBitVector alloc], "initWithBitMap:bitmapSize:bitCount:", [*(v5 + 5) bytes], objc_msgSend(*(v5 + 5), "length"), *(v5 + 3));
      v10 = *(v5 + 6);
      *(v5 + 6) = v9;

      if (v30 && *(&v30 + 1))
      {
        v11 = objc_alloc(MEMORY[0x1E695DEF0]);
        v12 = [v11 initWithBytes:*(&v30 + 1) length:v30];
        v13 = *(v5 + 4);
        *(v5 + 4) = v12;
      }

      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(v5 + 4);
        *buf = 138412802;
        v23 = v5;
        v24 = 2112;
        v25 = v4;
        v26 = 2112;
        v27 = v15;
        _os_log_debug_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_DEBUG, "%@ - initFromFile: retrieved bloom filter data from mmap file %@ tag <%@>", buf, 0x20u);
      }
    }

    else
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v5;
        v24 = 2112;
        v25 = v4;
        _os_log_error_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_ERROR, "%@ - initFromFile: failed to get bloom filter data from mmap file %@", buf, 0x16u);
      }

      v14 = *(v5 + 5);
      *(v5 + 5) = 0;
    }

LABEL_17:
  }

  if (*(v5 + 6))
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  v16 = v18;
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (NEBloomFilter)initWithData:(id)a3 numberOfBits:(unsigned int)a4 numberOfHashes:(unsigned int)a5 murmurSeed:(unsigned int)a6 mmapFilename:(id)a7 tag:(id)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v30.receiver = self;
  v30.super_class = NEBloomFilter;
  v17 = [(NEBloomFilter *)&v30 init];
  if (!v17)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v18 = [v14 length];
  if (!a6 || !a5 || !a4 || !v18)
  {
    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v17;
      _os_log_error_impl(&dword_1C0DA5000, p_super, OS_LOG_TYPE_ERROR, "%@ - initWithData: Invalid params", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v17->_numberOfBits = a4;
  v17->_numberOfHashes = a5;
  v17->_murmurSeed = a6;
  if (!v15)
  {
    v22 = v14;
LABEL_15:
    bitVectorBuffer = v17->_bitVectorBuffer;
    v17->_bitVectorBuffer = v22;
    goto LABEL_19;
  }

  v19 = +[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:](NEBloomFilter, "mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:", [v15 UTF8String], objc_msgSend(v14, "bytes"), objc_msgSend(v14, "length"), v17->_numberOfBits, v17->_numberOfHashes, v17->_murmurSeed, v16);
  v20 = ne_log_obj();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v17;
      _os_log_debug_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_DEBUG, "%@ - initWithData: saved bloom filter data to mmap file", buf, 0xCu);
    }

    v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v19 length:{objc_msgSend(v14, "length")}];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v32 = v17;
    _os_log_error_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_ERROR, "%@ - initWithData: failed to save bloom filter data to mmap file", buf, 0xCu);
  }

  bitVectorBuffer = v17->_bitVectorBuffer;
  v17->_bitVectorBuffer = 0;
LABEL_19:

  if (v17->_bitVectorBuffer)
  {
    v26 = [[NEBitVector alloc] initWithBitMap:[(NSData *)v17->_bitVectorBuffer bytes] bitmapSize:[(NSData *)v17->_bitVectorBuffer length] bitCount:v17->_numberOfBits];
    p_super = &v17->_bitVector->super;
    v17->_bitVector = v26;
LABEL_21:
  }

  if (v17->_bitVector)
  {
    v27 = v17;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)mmapFromFile:(const char *)a3 bloomFilter:(ne_bloom_filter *)a4
{
  v83 = *MEMORY[0x1E69E9840];
  memset(&v63, 0, sizeof(v63));
  getpid();
  if (!sandbox_check())
  {
    getpid();
    if (!sandbox_check())
    {
      v9 = open(a3, 0, a3);
      if (v9 < 0)
      {
        v13 = *__error();
        if (strerror_r(v13, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          *v64 = 136316162;
          v65 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
          v66 = 1024;
          v67 = getpid();
          v68 = 2080;
          v69 = a3;
          v70 = 1024;
          v71 = v13;
          v72 = 2080;
          v73 = buf;
          _os_log_fault_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_FAULT, "%s: NEBloomFilter - <pid %d> Failed to open file %s: [%d] %s", v64, 0x2Cu);
        }

        goto LABEL_5;
      }

      v10 = v9;
      if (fstat(v9, &v63) == -1 || !v63.st_size)
      {
        v14 = *__error();
        if (strerror_r(v14, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v15 = ne_log_obj();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_40;
        }

        v16 = getpid();
        *v64 = 136316162;
        v65 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
        v66 = 1024;
        v67 = v16;
        v68 = 2080;
        v69 = a3;
        v70 = 1024;
        v71 = v14;
        v72 = 2080;
        v73 = buf;
        v17 = "%s: NEBloomFilter - <pid %d> Failed to get file stats for file %s: [%d] %s";
      }

      else
      {
        v11 = v63.st_atimespec.tv_nsec / 1000000000.0 + v63.st_atimespec.tv_sec;
        if (a4->var3 && a4->var0.var5 && a4->var7 == v11)
        {
          close(v10);
          v12 = ne_log_obj();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
LABEL_15:

            result = 1;
            goto LABEL_7;
          }

          v38 = getpid();
          *buf = 136315650;
          v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
          v76 = 1024;
          v77 = v38;
          v78 = 2080;
          *v79 = a3;
          v39 = "%s: NEBloomFilter - <pid %d> no update needed for %s";
LABEL_52:
          _os_log_debug_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEBUG, v39, buf, 0x1Cu);
          goto LABEL_15;
        }

        if ((v63.st_size - 0x100000000) <= 0xFFFFFFFF0000001FLL)
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v18 = getpid();
            *buf = 136315906;
            v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
            v76 = 1024;
            v77 = v18;
            v78 = 2048;
            *v79 = v63.st_size;
            *&v79[8] = 2080;
            *&v79[10] = a3;
            _os_log_error_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_ERROR, "%s: NEBloomFilter - <pid %d> invalid file size %lld for file %s", buf, 0x26u);
          }

          goto LABEL_40;
        }

        v19 = mmap(0, v63.st_size, 1, 2, v10, 0);
        if (v19 != -1)
        {
          v20 = v19;
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v40 = getpid();
            *buf = 136316162;
            v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
            v76 = 1024;
            v77 = v40;
            v78 = 1024;
            *v79 = v10;
            *&v79[4] = 2048;
            *&v79[6] = v63.st_size;
            *&v79[14] = 2080;
            *&v79[16] = a3;
            _os_log_debug_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - <pid %d> read mmap <fd %d, size %lld> for file %s", buf, 0x2Cu);
          }

          var4 = a4->var4;
          v23 = v20[1];
          *&a4->var0.var0 = *v20;
          *&a4->var0.var2 = v23;
          if (a4->var0.var0 == 0x5061747269636961)
          {
            var1 = a4->var0.var1;
            if (var1 - 1 < 2)
            {
              if (var1 == 1)
              {
                v25 = ne_log_obj();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  v52 = getpid();
                  var2 = a4->var0.var2;
                  var3 = a4->var0.var3;
                  v55 = a4->var0.var4;
                  var5 = a4->var0.var5;
                  *buf = 136316418;
                  v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
                  v76 = 1024;
                  v77 = v52;
                  v78 = 1024;
                  *v79 = var2;
                  *&v79[4] = 1024;
                  *&v79[6] = var3;
                  *&v79[10] = 1024;
                  *&v79[12] = v55;
                  *&v79[16] = 1024;
                  *&v79[18] = var5;
                  _os_log_debug_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - <pid %d> read from mmap <numberOfBits %d numberOfHashes %d murmurSeed %d bitmapSize %d>", buf, 0x2Au);
                }

                v26 = 0;
                LODWORD(v27) = 0;
                v28 = 32;
              }

              else
              {
                v27 = *(v20 + 8);
                if (v27)
                {
                  v26 = v20 + 36;
                }

                else
                {
                  v26 = 0;
                }

                if (v27)
                {
                  v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 + 36 length:v27];
                }

                else
                {
                  v25 = 0;
                }

                v41 = ne_log_obj();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v57 = getpid();
                  v58 = a4->var0.var2;
                  v59 = a4->var0.var3;
                  v60 = a4->var0.var4;
                  v61 = a4->var0.var5;
                  *buf = 136316930;
                  v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
                  v76 = 1024;
                  v77 = v57;
                  v78 = 1024;
                  *v79 = v58;
                  *&v79[4] = 1024;
                  *&v79[6] = v59;
                  *&v79[10] = 1024;
                  *&v79[12] = v60;
                  *&v79[16] = 1024;
                  *&v79[18] = v61;
                  *&v79[22] = 1024;
                  v80 = v27;
                  v81 = 2112;
                  v82 = v25;
                  _os_log_debug_impl(&dword_1C0DA5000, v41, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - <pid %d> read from mmap <numberOfBits %d numberOfHashes %d murmurSeed %d bitmapSize %d tagSize %d><%@>", buf, 0x3Au);
                }

                v28 = v27 + 36;
              }

              v42 = a4->var0.var5 + v28;
              if (v63.st_size == v42)
              {
                a4->var1 = v27;
                a4->var2 = v26;
                a4->var3 = v20 + v28;
                if (var4)
                {
LABEL_61:
                  a4->var7 = v11;
                  a4->var4 = var4;
                  a4->var5 = v20;
                  a4->var6 = v42;
                  close(v10);
                  v12 = ne_log_obj();
                  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_15;
                  }

                  v46 = getpid();
                  *buf = 136315650;
                  v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
                  v76 = 1024;
                  v77 = v46;
                  v78 = 2080;
                  *v79 = a3;
                  v39 = "%s: NEBloomFilter - <pid %d> update done for %s";
                  goto LABEL_52;
                }

                v43 = strlen(a3);
                v44 = v43;
                v45 = malloc_type_malloc(((v43 << 32) + 0x100000000) >> 32, 0x100004077774924uLL);
                if (v45)
                {
                  var4 = v45;
                  strncpy(v45, a3, v44)[v44] = 0;
                  LODWORD(v42) = v63.st_size;
                  goto LABEL_61;
                }

                v50 = *__error();
                if (strerror_r(v50, buf, 0x80uLL))
                {
                  buf[0] = 0;
                }

                v51 = ne_log_obj();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
                {
                  v62 = getpid();
                  *v64 = 136316162;
                  v65 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
                  v66 = 1024;
                  v67 = v62;
                  v68 = 2080;
                  v69 = a3;
                  v70 = 1024;
                  v71 = v50;
                  v72 = 2080;
                  v73 = buf;
                  _os_log_fault_impl(&dword_1C0DA5000, v51, OS_LOG_TYPE_FAULT, "%s: NEBloomFilter - <pid %d> mmap failed to malloc for filename %s: [%d] %s", v64, 0x2Cu);
                }

LABEL_67:
                munmap(v20, v63.st_size);
                *&a4->var0.var0 = 0u;
                *&a4->var0.var2 = 0u;
                *&a4->var1 = 0u;
                *&a4->var3 = 0u;
                *&a4->var5 = 0u;
                a4->var7 = 0.0;
                goto LABEL_41;
              }

              v30 = ne_log_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v47 = getpid();
                v48 = a4->var0.var5;
                *buf = 136316162;
                v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
                v76 = 1024;
                v77 = v47;
                v78 = 1024;
                *v79 = v63.st_size;
                *&v79[4] = 1024;
                *&v79[6] = v48;
                *&v79[10] = 1024;
                *&v79[12] = v28;
                v33 = "%s: NEBloomFilter - <pid %d> invalid mmap file size <%d> <bitmapSize %d data_memory_offset %d>";
                v34 = v30;
                v35 = 36;
                goto LABEL_65;
              }

LABEL_66:

              goto LABEL_67;
            }

            v30 = ne_log_obj();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_66;
            }

            v36 = getpid();
            v37 = a4->var0.var1;
            *buf = 136316162;
            v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
            v76 = 1024;
            v77 = v36;
            v78 = 2048;
            *v79 = v37;
            *&v79[8] = 1024;
            *&v79[10] = 1;
            *&v79[14] = 1024;
            *&v79[16] = 2;
            v33 = "%s: NEBloomFilter - <pid %d> format version (%llu) does not equal any valid version (%u or %u)";
            v34 = v30;
            v35 = 40;
          }

          else
          {
            v30 = ne_log_obj();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_66;
            }

            v31 = getpid();
            var0 = a4->var0.var0;
            *buf = 136315906;
            v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
            v76 = 1024;
            v77 = v31;
            v78 = 2048;
            *v79 = var0;
            *&v79[8] = 2048;
            *&v79[10] = 0x5061747269636961;
            v33 = "%s: NEBloomFilter - <pid %d> magic number (%llx) does not equal the expected value (%llx)";
            v34 = v30;
            v35 = 38;
          }

LABEL_65:
          _os_log_error_impl(&dword_1C0DA5000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
          goto LABEL_66;
        }

        v29 = *__error();
        if (strerror_r(v29, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v15 = ne_log_obj();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_40;
        }

        v49 = getpid();
        *v64 = 136316162;
        v65 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
        v66 = 1024;
        v67 = v49;
        v68 = 2080;
        v69 = a3;
        v70 = 1024;
        v71 = v29;
        v72 = 2080;
        v73 = buf;
        v17 = "%s: NEBloomFilter - <pid %d> mmap failed for file %s: [%d] %s";
      }

      _os_log_fault_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_FAULT, v17, v64, 0x2Cu);
LABEL_40:

LABEL_41:
      close(v10);
      goto LABEL_6;
    }
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v75 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
    v76 = 1024;
    v77 = getpid();
    v78 = 2080;
    *v79 = a3;
    _os_log_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEFAULT, "%s: NEBloomFilter - <pid %d> No read permission to file %s", buf, 0x1Cu);
  }

LABEL_5:

LABEL_6:
  result = 0;
LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

+ (char)mmapToFile:(const char *)a3 data:(char *)a4 dataLength:(unsigned int)a5 numberOfBits:(unsigned int)a6 numberOfHashes:(unsigned int)a7 murmurSeed:(unsigned int)a8 tag:(id)a9
{
  *(&v54[12] + 2) = *MEMORY[0x1E69E9840];
  v15 = a9;
  v16 = open(a3, 518, 420);
  if (v16 < 0)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v38 = *__error();
      v39 = __error();
      v40 = strerror(*v39);
      *buf = 136315906;
      v48 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v49 = 2080;
      v50 = a3;
      v51 = 1024;
      v52 = v38;
      v53 = 2080;
      v54[0] = v40;
      _os_log_error_impl(&dword_1C0DA5000, v19, OS_LOG_TYPE_ERROR, "%s: NEBloomFilter - failed to open mmap file %s <errno %d - %s>", buf, 0x26u);
    }

    goto LABEL_11;
  }

  v17 = v16;
  if (v15)
  {
    v18 = [v15 length] + 36;
  }

  else
  {
    v18 = 36;
  }

  v20 = v18 + a5;
  if (ftruncate(v17, v20))
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      close(v17);
LABEL_11:
      v22 = 0;
      goto LABEL_12;
    }

    v35 = *__error();
    v36 = __error();
    v37 = strerror(*v36);
    *buf = 136316162;
    v48 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v49 = 2080;
    v50 = a3;
    v51 = 1024;
    v52 = v20;
    v53 = 1024;
    LODWORD(v54[0]) = v35;
    WORD2(v54[0]) = 2080;
    *(v54 + 6) = v37;
    v31 = "%s: NEBloomFilter - failed to ftruncate mmap file <%s> to %d bytes <errno %d - %s>";
    v32 = v21;
    v33 = 44;
LABEL_31:
    _os_log_error_impl(&dword_1C0DA5000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    goto LABEL_10;
  }

  v25 = mmap(0, v20, 3, 1, v17, 0);
  if (v25 == -1)
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315906;
    v48 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v49 = 2080;
    v50 = a3;
    v51 = 1024;
    v52 = v17;
    v53 = 1024;
    LODWORD(v54[0]) = v20;
    v31 = "%s: NEBloomFilter - Failed mmap file <%s> <fd %d, size %d>";
    v32 = v21;
    v33 = 34;
    goto LABEL_31;
  }

  v26 = v25;
  *v25 = xmmword_1C0DDA9C0;
  *(v25 + 4) = a6;
  *(v25 + 5) = a7;
  *(v25 + 6) = a8;
  *(v25 + 7) = a5;
  if (v15 && [v15 length] && (objc_msgSend(v15, "dataUsingEncoding:", 4), (v27 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v28 = v27;
    v29 = [v27 length];
    *(v26 + 8) = v29;
    v22 = v26 + 36;
    if (v29)
    {
      memcpy(v26 + 36, [v28 bytes], v29);
      v22 += v29;
    }
  }

  else
  {
    v28 = 0;
    *(v26 + 8) = 0;
    v22 = v26 + 36;
  }

  memcpy(v22, a4, a5);
  if (msync(v26, v20, 16) == -1)
  {
    v34 = *__error();
    if (strerror_r(v34, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *v41 = 136315650;
      v42 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v43 = 1024;
      v44 = v34;
      v45 = 2080;
      v46 = buf;
      _os_log_fault_impl(&dword_1C0DA5000, v30, OS_LOG_TYPE_FAULT, "%s: NEBloomFilter - Failed msync: [%d] %s", v41, 0x1Cu);
    }
  }

  else
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v48 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      _os_log_debug_impl(&dword_1C0DA5000, v30, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - done msync", buf, 0xCu);
    }
  }

  munmap(v26, v20);
  close(v17);

LABEL_12:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (double)getFalsePositiveProbability:(unsigned int)a3 numberOfBits:(unsigned int)a4 numberOfHashes:(unsigned int)a5
{
  v5 = a5;
  v6 = 1.0 - pow(2.71828183, -(a5 * a3) / a4);

  return pow(v6, v5);
}

+ (uint64_t)mmapCleanup:(uint64_t)a1
{
  v12 = *MEMORY[0x1E69E9840];
  result = objc_opt_self();
  if (*(a2 + 64))
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a2 + 56);
      v8 = 136315394;
      v9 = "+[NEBloomFilter mmapCleanup:]";
      v10 = 2080;
      v11 = v7;
      _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "%s: Cleaning up bloom filter for %s", &v8, 0x16u);
    }

    v5 = *(a2 + 56);
    if (v5)
    {
      free(v5);
    }

    result = munmap(*(a2 + 64), *(a2 + 72));
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end