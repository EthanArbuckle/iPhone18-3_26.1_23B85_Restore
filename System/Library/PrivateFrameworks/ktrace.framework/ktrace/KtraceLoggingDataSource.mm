@interface KtraceLoggingDataSource
- (KtraceLoggingDataSource)initWithKtraceFile:(ktrace_file *)file;
- (id)nextEventDataChunk;
- (void)dealloc;
@end

@implementation KtraceLoggingDataSource

- (void)dealloc
{
  [(KtraceLoggingDataSource *)self set_metadata:0];
  v3.receiver = self;
  v3.super_class = KtraceLoggingDataSource;
  [(KtraceLoggingDataSource *)&v3 dealloc];
}

- (KtraceLoggingDataSource)initWithKtraceFile:(ktrace_file *)file
{
  v8.receiver = self;
  v8.super_class = KtraceLoggingDataSource;
  v4 = [(KtraceLoggingDataSource *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_ktfile = file;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__KtraceLoggingDataSource_initWithKtraceFile___block_invoke;
    v7[3] = &unk_27886DF68;
    v7[4] = v4;
    if (ktrace_file_iterate(file, 0, v7) || !v5->_metadata)
    {
      [(KtraceLoggingDataSource *)v5 set_metadata:0];
      return 0;
    }
  }

  return v5;
}

BOOL __46__KtraceLoggingDataSource_initWithKtraceFile___block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = ktrace_chunk_tag(a2);
  if (v4 == 32786)
  {
    v5 = ktrace_chunk_size_t(a2);
    v6 = malloc_type_malloc(v5, 0xDAF1C3B1uLL);
    if (!v6)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v7 = v6;
    if (ktrace_chunk_copy_data(a2, 0, v6, v5))
    {
      free(v7);
    }

    else
    {
      [*(a1 + 32) set_metadata:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:", v7, v5)}];
    }
  }

  return v4 != 32786;
}

- (id)nextEventDataChunk
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  ktfile = self->_ktfile;
  nextChunk = self->_nextChunk;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__KtraceLoggingDataSource_nextEventDataChunk__block_invoke;
  v7[3] = &unk_27886DF90;
  v7[4] = self;
  v7[5] = &v8;
  v4 = ktrace_file_iterate(ktfile, nextChunk, v7);
  v5 = v9[5];
  if (v4)
  {

    v5 = 0;
    v9[5] = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __45__KtraceLoggingDataSource_nextEventDataChunk__block_invoke(uint64_t a1, uint64_t *a2)
{
  *(*(a1 + 32) + 24) = a2;
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    *(v2 + 8) = 0;
    return 1;
  }

  if (ktrace_chunk_tag(a2) != 32785)
  {
    return 1;
  }

  v5 = ktrace_chunk_size_t(a2);
  v6 = malloc_type_malloc(v5, 0xBA2EB58DuLL);
  if (!v6)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = v6;
  if (ktrace_chunk_copy_data(a2, 0, v6, v5))
  {
    free(v7);
    return 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v5];
    result = 0;
    *(*(*(a1 + 40) + 8) + 40) = v9;
    *(*(a1 + 32) + 8) = 1;
  }

  return result;
}

@end