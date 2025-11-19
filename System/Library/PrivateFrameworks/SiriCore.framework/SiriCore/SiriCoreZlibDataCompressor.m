@interface SiriCoreZlibDataCompressor
- (SiriCoreZlibDataCompressor)init;
- (id)compressedDataForData:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation SiriCoreZlibDataCompressor

- (id)compressedDataForData:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6 && dispatch_data_get_size(v6))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__2930;
    v27 = __Block_byref_object_dispose__2931;
    v8 = MEMORY[0x277D85CC8];
    v9 = MEMORY[0x277D85CC8];
    v28 = v8;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __58__SiriCoreZlibDataCompressor_compressedDataForData_error___block_invoke;
    applier[3] = &unk_279BD63A8;
    applier[4] = self;
    applier[5] = &v19;
    applier[6] = &v23;
    dispatch_data_apply(v7, applier);
    v10 = *(v20 + 6);
    if (v10 >= 2)
    {
      v11 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
      {
        msg = self->_deflateStream.msg;
        *buf = 136315650;
        v30 = "[SiriCoreZlibDataCompressor compressedDataForData:error:]";
        v31 = 1026;
        v32 = v10;
        v33 = 2080;
        v34 = msg;
        _os_log_error_impl(&dword_2669D1000, v11, OS_LOG_TYPE_ERROR, "%s Deflate finished with unexpected status %{public}d. %s", buf, 0x1Cu);
      }

      v12 = v24[5];
      v24[5] = 0;

      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreDataCompressorErrorDomain" code:*(v20 + 6) userInfo:0];
      }
    }

    v13 = v24[5];
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = MEMORY[0x277D85CC8];
    v14 = MEMORY[0x277D85CC8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __58__SiriCoreZlibDataCompressor_compressedDataForData_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1[4] + 8) = a4;
  *(a1[4] + 16) = a5;
  v6 = a1[4];
  while (1)
  {
    *(v6 + 32) = v6 + 120;
    *(a1[4] + 40) = 0x2000;
    *(*(a1[5] + 8) + 24) = deflate((a1[4] + 8), 2);
    if (*(*(a1[5] + 8) + 24) > 1u)
    {
      break;
    }

    v7 = dispatch_data_create((a1[4] + 120), 0x2000 - *(a1[4] + 40), 0, 0);
    concat = dispatch_data_create_concat(*(*(a1[6] + 8) + 40), v7);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = concat;

    if (*(*(a1[5] + 8) + 24))
    {
      break;
    }

    v6 = a1[4];
    if (*(v6 + 40))
    {
      return 1;
    }
  }

  return 0;
}

- (void)dealloc
{
  deflateEnd(&self->_deflateStream);
  v3.receiver = self;
  v3.super_class = SiriCoreZlibDataCompressor;
  [(SiriCoreZlibDataCompressor *)&v3 dealloc];
}

- (SiriCoreZlibDataCompressor)init
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SiriCoreZlibDataCompressor;
  v2 = [(SiriCoreZlibDataCompressor *)&v10 init];
  v3 = v2;
  if (v2 && (v2->_deflateStream.zfree = 0, v2->_deflateStream.opaque = 0, v2->_deflateStream.zalloc = 0, (v4 = deflateInit_(&v2->_deflateStream, 9, "1.2.12", 112)) != 0))
  {
    v5 = v4;
    v6 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[SiriCoreZlibDataCompressor init]";
      v13 = 1026;
      v14 = v5;
      _os_log_error_impl(&dword_2669D1000, v6, OS_LOG_TYPE_ERROR, "%s inflateInit failed with status %{public}d", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

@end