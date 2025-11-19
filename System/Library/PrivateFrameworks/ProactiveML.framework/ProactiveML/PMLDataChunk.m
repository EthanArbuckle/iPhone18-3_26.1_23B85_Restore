@interface PMLDataChunk
+ (id)chunkOfType:(unsigned int)a3 data:(id)a4 superdata:(id)a5;
+ (id)chunksFromData:(id)a3;
+ (id)chunksFromFileAtPath:(id)a3;
+ (id)serializeChunks:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PMLDataChunk)initWithData:(id)a3;
@end

@implementation PMLDataChunk

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSData *)self->_backingData isEqualToData:v4->_backingData];
  }

  return v5;
}

- (PMLDataChunk)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLDataChunk;
  v6 = [(PMLDataChunk *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingData, a3);
  }

  return v7;
}

+ (id)serializeChunks:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PMLDataChunk.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"chunks"}];
  }

  v6 = objc_opt_new();
  v38 = 1563411470;
  v39 = [v5 count];
  [v6 appendBytes:&v38 length:8];
  v7 = v39;
  v8 = 12 * v39;
  memptr = 0;
  v37 = 0;
  if (v39 > 0x15)
  {
    v29 = malloc_type_posix_memalign(&memptr, 8uLL, 12 * v39, 0xD8BCACDFuLL);
    LOBYTE(v37) = 0;
    if (v29)
    {
      goto LABEL_29;
    }

    v9 = memptr;
    v10 = v39;
  }

  else
  {
    v9 = &v32 - ((v8 + 15) & 0x1FFFFFFFF0);
    bzero(v9, 12 * v39);
    v10 = v7;
  }

  v11 = 4 * v10;
  v12 = (4 * v10) | 3;
  memptr = 0;
  v37 = 0;
  v33 = v12;
  v34 = v7;
  v35 = v8;
  if (v12 <= 0x100)
  {
    v13 = &v32 - ((v12 + 15) & 0x7FFFFFFF0);
    bzero(v13, v12);
    goto LABEL_7;
  }

  v30 = malloc_type_posix_memalign(&memptr, 8uLL, 4 * v10, 0x606FC830uLL);
  LOBYTE(v37) = 0;
  if (v30)
  {
LABEL_29:
    v31 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v31);
  }

  v13 = memptr;
LABEL_7:
  bzero(v13, v11);
  if ([v5 count])
  {
    v14 = 0;
    v15 = v35 + 8;
    v16 = 1;
    do
    {
      if ((v15 & 0x1F) != 0)
      {
        v17 = v15 | 0xFFFFFFE0;
        v15 -= v15 | 0xFFFFFFE0;
        *&v13[4 * v14] -= v17;
      }

      v18 = &v9[12 * v14];
      *v18 = v15;
      v19 = [v5 objectAtIndexedSubscript:v14];
      *(v18 + 1) = [v19[1] length];

      v20 = [v5 objectAtIndexedSubscript:v14];
      *(v18 + 2) = [objc_opt_class() dataChunkType];

      v15 += *(v18 + 1);
      v14 = v16;
    }

    while ([v5 count] > v16++);
  }

  [v6 appendBytes:v9 length:v35];
  if ([v5 count])
  {
    v22 = 0;
    v23 = 0;
    do
    {
      if (*&v13[4 * v22])
      {
        v24 = 0;
        do
        {
          [v6 appendBytes:&unk_260DB28D8 length:1];
          ++v24;
        }

        while (v24 < *&v13[4 * v22]);
      }

      v25 = [v5 objectAtIndexedSubscript:v22];
      [v6 appendData:v25[1]];

      v22 = ++v23;
    }

    while ([v5 count] > v23);
  }

  if (v34 >= 0x16)
  {
    free(v9);
  }

  if (v33 >= 0x101)
  {
    free(v13);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)chunksFromData:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];
  if (v5 < 8 || *v4 != 1563411470)
  {
    goto LABEL_5;
  }

  v6 = v4[1];
  if (v6)
  {
    v7 = v5;
    v8 = 12 * v6;
    v9 = v8 + 8;
    if (v8 + 8 > v5)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_6;
    }

    v13 = malloc_type_malloc(v8 + 8, 0x3D3618B9uLL);
    memcpy(v13, v4, v9);
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13[1]];
    if (v13[1])
    {
      v14 = 0;
      v15 = v13 + 2;
      while (1)
      {
        v16 = v15[1] + *v15;
        if (v16 > v7)
        {
          break;
        }

        v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v4 + *v15 length:v15[1] freeWhenDone:0];
        v18 = [PMLDataChunk chunkOfType:v15[2] data:v17 superdata:v3];
        if (!v18)
        {
          v20 = PML_LogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = 67109120;
            LODWORD(v22) = v14;
            _os_log_error_impl(&dword_260D68000, v20, OS_LOG_TYPE_ERROR, "Could not parse chunk %u; bailing out", &v21, 8u);
          }

          goto LABEL_21;
        }

        v19 = v18;
        [v10 addObject:v18];

        ++v14;
        v15 += 3;
        if (v14 >= v13[1])
        {
          goto LABEL_22;
        }
      }

      v17 = PML_LogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = 134218240;
        v22 = v16;
        v23 = 2048;
        v24 = v7;
        _os_log_error_impl(&dword_260D68000, v17, OS_LOG_TYPE_ERROR, "Chunk descriptor out of bounds: ends at %llu in data of length %llu", &v21, 0x16u);
      }

LABEL_21:

      v10 = 0;
    }

LABEL_22:
    free(v13);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)chunksFromFileAtPath:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:1 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [PMLDataChunk chunksFromData:v4];
  }

  else
  {
    v7 = PML_LogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_260D68000, v7, OS_LOG_TYPE_ERROR, "Could not open chunk file at %@: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)chunkOfType:(unsigned int)a3 data:(id)a4 superdata:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc(*off_279AC06E0[a3]);
  }

  v10 = [v9 initWithData:v7];
  [v10 setSuperdata:v8];

  return v10;
}

@end