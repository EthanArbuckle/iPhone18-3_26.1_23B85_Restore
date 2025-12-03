@interface RTDeletionRequestRecordIDTransformer
- (BOOL)dataCompressedWithOriginalSize:(unint64_t)size compressedSize:(unint64_t)compressedSize;
- (id)compressData:(id)data algorithm:(int)algorithm;
- (id)decompressData:(id)data algorithm:(int)algorithm;
- (id)deprecatedDecompressData:(id)data algorithm:(int)algorithm;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation RTDeletionRequestRecordIDTransformer

- (id)transformedValue:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTDeletionRequestRecordIDTransformer transformedValue:]";
      v21 = 1024;
      v22 = 51;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Object is not of dictionary type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = valueCopy;
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    allKeys = [v6 allKeys];
    v9 = [v7 initWithCapacity:{objc_msgSend(allKeys, "count")}];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__RTDeletionRequestRecordIDTransformer_transformedValue___block_invoke;
    v17[3] = &unk_2788CDC88;
    v10 = v9;
    v18 = v10;
    [v6 enumerateKeysAndObjectsUsingBlock:v17];
    v16 = 0;
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:&v16];
    v12 = v16;
    if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_fault_impl(&dword_2304B3000, v13, OS_LOG_TYPE_FAULT, "error while encoding json object, %@", buf, 0xCu);
      }
    }

    v14 = [(RTDeletionRequestRecordIDTransformer *)self compressData:v11 algorithm:2049];
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14;
}

void __57__RTDeletionRequestRecordIDTransformer_transformedValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 allObjects];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) UUIDString];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKey:v5];
}

- (id)reverseTransformedValue:(id)value
{
  v26 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTDeletionRequestRecordIDTransformer reverseTransformedValue:]";
      v24 = 1024;
      v25 = 88;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(RTDeletionRequestRecordIDTransformer *)self decompressData:valueCopy algorithm:2049];
    v21 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v21];
    v8 = v21;
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_fault_impl(&dword_2304B3000, v9, OS_LOG_TYPE_FAULT, "error while decoding json object, %@", buf, 0xCu);
      }
    }

    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    allKeys = [v7 allKeys];
    v12 = [v10 initWithCapacity:{objc_msgSend(allKeys, "count")}];

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __64__RTDeletionRequestRecordIDTransformer_reverseTransformedValue___block_invoke;
    v19 = &unk_2788CFA48;
    v20 = v12;
    v13 = v12;
    [v7 enumerateKeysAndObjectsUsingBlock:&v16];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v13, v16, v17, v18, v19}];
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14;
}

void __64__RTDeletionRequestRecordIDTransformer_reverseTransformedValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = objc_alloc(MEMORY[0x277CCAD78]);
        v15 = [v14 initWithUUIDString:{v13, v18}];
        [v7 addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *(a1 + 32);
  v17 = [MEMORY[0x277CBEB98] setWithSet:v7];
  [v16 setObject:v17 forKey:v5];
}

- (id)compressData:(id)data algorithm:(int)algorithm
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy)
  {
    v8 = [dataCopy length];
    v9 = malloc_type_malloc(v8, 0x1B6B2FEDuLL);
    v10 = compression_encode_scratch_buffer_size(algorithm);
    v11 = malloc_type_realloc(0, v10, 0x26E3655FuLL);
    v12 = compression_encode_buffer(v9, v8, [v7 bytes], objc_msgSend(v7, "length"), v11, algorithm);
    v13 = -[RTDeletionRequestRecordIDTransformer dataCompressedWithOriginalSize:compressedSize:](self, "dataCompressedWithOriginalSize:compressedSize:", [v7 length], v12);
    v14 = [v7 length];
    v15 = v14;
    if (v13)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    if (v13)
    {
      v17 = v12;
    }

    else
    {
      v17 = v14;
    }

    v18 = malloc_type_malloc(v17 + 21, 0xEE39B012uLL);
    *v18 = -17958194;
    *(v18 + 4) = v15;
    *(v18 + 12) = v16;
    v18[20] = v13;
    bytes = v9;
    v20 = v12;
    if (!v13)
    {
      bytes = [v7 bytes];
      v20 = [v7 length];
    }

    memcpy(v18 + 21, bytes, v20);
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:v17 + 21];
    free(v18);
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v22)
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v29 = 134218496;
          v30 = v15;
          v31 = 2048;
          v32 = v12;
          v33 = 2048;
          v34 = (v15 / v12);
          v24 = "compressed deletion request data, original data length, %llu, compressed data length, %llu, compression ratio, %.2fx";
          v25 = v23;
          v26 = 32;
LABEL_20:
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, v24, &v29, v26);
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else if (v22)
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        v24 = "did not compress deletion request data";
        v25 = v23;
        v26 = 2;
        goto LABEL_20;
      }

LABEL_21:
    }

    if (v9)
    {
      free(v9);
    }

    if (v11)
    {
      free(v11);
    }

    goto LABEL_26;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v29) = 0;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataToCompress", &v29, 2u);
  }

  v21 = 0;
LABEL_26:

  return v21;
}

- (BOOL)dataCompressedWithOriginalSize:(unint64_t)size compressedSize:(unint64_t)compressedSize
{
  if (compressedSize)
  {
    v4 = compressedSize >= size;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (id)decompressData:(id)data algorithm:(int)algorithm
{
  v4 = *&algorithm;
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  if (!dataCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataToDecompress", buf, 2u);
    }

    goto LABEL_7;
  }

  v23 = 0;
  [dataCopy getBytes:&v23 length:4];
  if (v23 == -559038737)
  {
    v8 = [(RTDeletionRequestRecordIDTransformer *)self deprecatedDecompressData:v7 algorithm:v4];
LABEL_10:
    v10 = v8;
    goto LABEL_11;
  }

  if (v23 == 123)
  {
    v8 = v7;
    goto LABEL_10;
  }

  if (v23 != -17958194)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138412290;
      v25 = v21;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Unhandled header version in %@", buf, 0xCu);
    }

LABEL_7:
    v10 = 0;
    goto LABEL_11;
  }

  *v22 = 0;
  *&v22[8] = 0;
  *&v22[13] = 0;
  [v7 getBytes:v22 length:21];
  if (!v22[20])
  {
    v8 = [v7 subdataWithRange:{21, *&v22[4]}];
    goto LABEL_10;
  }

  v12 = malloc_type_malloc(*&v22[4], 0xC3BA6074uLL);
  v13 = compression_decode_scratch_buffer_size(v4);
  v14 = malloc_type_realloc(0, v13, 0x3E72ADBBuLL);
  v15 = [v7 subdataWithRange:{21, *&v22[12]}];
  v16 = *&v22[4];
  bytes = [v15 bytes];
  if (compression_decode_buffer(v12, v16, bytes, *&v22[12], v14, v4))
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v12 length:*&v22[4] freeWhenDone:1];
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v25 = *&v22[4];
      v26 = 2048;
      v27 = *&v22[12];
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "failed to decompress deletion record data that was compresssed. original data length, %llu, compressed data length, %llu", buf, 0x16u);
    }

    if (v12)
    {
      free(v12);
    }

    v10 = 0;
  }

  if (v14)
  {
    free(v14);
  }

LABEL_11:

  return v10;
}

- (id)deprecatedDecompressData:(id)data algorithm:(int)algorithm
{
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    size = 0;
    [dataCopy getBytes:&size range:{4, 8}];
    v7 = HIDWORD(size);
    if (HIDWORD(size))
    {
      v8 = size;
      *buf = size;
    }

    else
    {
      *buf = size;
      [v6 getBytes:buf range:{4, 8}];
      v8 = *buf;
    }

    v11 = malloc_type_malloc(v8, 0xDCE7B0B3uLL);
    v12 = compression_encode_scratch_buffer_size(algorithm);
    if (v12)
    {
      v13 = malloc_type_malloc(v12, 0x858CBCD3uLL);
    }

    else
    {
      v13 = 0;
    }

    if (v7)
    {
      v14 = 8;
    }

    else
    {
      v14 = 12;
    }

    v15 = [v6 subdataWithRange:{v14, objc_msgSend(v6, "length") - v14}];
    if (compression_decode_buffer(v11, *buf, [v15 bytes], objc_msgSend(v15, "length"), v13, algorithm))
    {
      v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:*buf freeWhenDone:1];
      if (!v13)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *v18 = 0;
        _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Failure to decompress legacy buffer that was compresssed", v18, 2u);
      }

      if (v11)
      {
        free(v11);
      }

      v10 = 0;
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    free(v13);
    goto LABEL_17;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataToDecompress", buf, 2u);
  }

  v10 = 0;
LABEL_18:

  return v10;
}

@end