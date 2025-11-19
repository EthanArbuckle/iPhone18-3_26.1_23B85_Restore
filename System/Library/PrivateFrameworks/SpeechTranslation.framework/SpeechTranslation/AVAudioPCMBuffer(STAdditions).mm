@interface AVAudioPCMBuffer(STAdditions)
+ (_DWORD)_st_createAudioBufferListWithAllocator:()STAdditions serializedData:description:;
+ (id)st_deserializeData:()STAdditions withBufferAllocator:;
+ (uint64_t)_st_deserializedInstanceIsValid:()STAdditions;
- (__CFData)_st_serializeBufferWithAllocator:()STAdditions format:;
- (id)st_serializeWithBufferAllocator:()STAdditions;
@end

@implementation AVAudioPCMBuffer(STAdditions)

- (id)st_serializeWithBufferAllocator:()STAdditions
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = [a1 format];
  v6 = [a1 _st_serializeBufferWithAllocator:a3 format:v5];
  v7 = v6;
  if (v6)
  {
    v18[0] = @"AVAudioPCMBufferFormat";
    v18[1] = @"AVAudioPCMBufferData";
    v19[0] = v5;
    v19[1] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v17 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v17];
    v10 = v17;
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v14 = v9;
    }

    else
    {
      v13 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AVAudioPCMBuffer(STAdditions) st_serializeWithBufferAllocator:];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)st_deserializeData:()STAdditions withBufferAllocator:
{
  v36[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CCAAC8];
  v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v27 = 0;
  v12 = [v10 unarchivedDictionaryWithKeysOfClasses:v11 objectsOfClasses:v9 fromData:v6 error:&v27];
  v13 = v27;

  if (!v12 || v13)
  {
    v21 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[AVAudioPCMBuffer(STAdditions) st_deserializeData:withBufferAllocator:];
    }

    goto LABEL_11;
  }

  if (![a1 _st_deserializedInstanceIsValid:v12])
  {
LABEL_11:
    v19 = 0;
    goto LABEL_14;
  }

  v14 = [v12 objectForKeyedSubscript:@"AVAudioPCMBufferFormat"];
  v15 = [v12 objectForKeyedSubscript:@"AVAudioPCMBufferData"];
  v16 = [a1 _st_createAudioBufferListWithAllocator:a4 serializedData:v15 description:{objc_msgSend(v14, "streamDescription")}];
  if (v16)
  {
    v17 = v16;
    v18 = [a1 alloc];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__AVAudioPCMBuffer_STAdditions__st_deserializeData_withBufferAllocator___block_invoke;
    v26[3] = &__block_descriptor_48_e49_v16__0r__AudioBufferList_I_1_AudioBuffer_II_v___8l;
    v26[4] = a4;
    v26[5] = v17;
    v19 = [v18 initWithPCMFormat:v14 bufferListNoCopy:v17 deallocator:v26];
    if (!v19)
    {
      v20 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = v20;
        v25 = STAudioUtilitiesFormatToString([v14 streamDescription]);
        *buf = 138544130;
        v29 = v14;
        v30 = 2114;
        v31 = v25;
        v32 = 2048;
        v33 = v17;
        v34 = 2114;
        v35 = v15;
        _os_log_error_impl(&dword_26B5BC000, v24, OS_LOG_TYPE_ERROR, "Failed to create PCM buffer with format: %{public}@ description: %{public}@ audioBufferList: %p serializedBufferData: %{public}@", buf, 0x2Au);
      }

      CFAllocatorDeallocate(a4, v17);
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (uint64_t)_st_deserializedInstanceIsValid:()STAdditions
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AVAudioPCMBufferFormat"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 objectForKeyedSubscript:@"AVAudioPCMBufferData"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {

      v6 = 1;
    }

    else
    {

      v8 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AVAudioPCMBuffer(STAdditions) *)v3 _st_deserializedInstanceIsValid:v8];
      }

      v6 = 0;
    }
  }

  else
  {

    v7 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AVAudioPCMBuffer(STAdditions) *)v3 _st_deserializedInstanceIsValid:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (__CFData)_st_serializeBufferWithAllocator:()STAdditions format:
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 audioBufferList];
  v8 = v7;
  v9 = *v7;
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = 0;
  v11 = 3;
  do
  {
    v10 += v7[v11];
    v11 += 4;
    --v9;
  }

  while (v9);
  if (!v10)
  {
LABEL_11:
    v20 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = *v8;
      v28 = v20;
      v29 = STAudioUtilitiesFormatToString([v6 streamDescription]);
      v30 = 138544130;
      v31 = a1;
      v32 = 2048;
      *v33 = 0;
      *&v33[8] = 1024;
      *&v33[10] = v27;
      *&v33[14] = 2114;
      *&v33[16] = v29;
      _os_log_error_impl(&dword_26B5BC000, v28, OS_LOG_TYPE_ERROR, "Aborting serialization because this buffer: %{public}@ is empty dataSize: %zu numberBuffers: %u description: %{public}@", &v30, 0x26u);
    }

    goto LABEL_13;
  }

  Mutable = CFDataCreateMutable(a3, v10);
  if (!Mutable)
  {
    v23 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *v8;
      v25 = v23;
      v26 = STAudioUtilitiesFormatToString([v6 streamDescription]);
      v30 = 134219010;
      v31 = v10;
      v32 = 2114;
      *v33 = a3;
      *&v33[8] = 2114;
      *&v33[10] = a1;
      *&v33[18] = 1024;
      *&v33[20] = v24;
      v34 = 2114;
      v35 = v26;
      _os_log_error_impl(&dword_26B5BC000, v25, OS_LOG_TYPE_ERROR, "Failed to allocate dataSize: %zu from allocator: %{public}@ buffer: %{public}@ numberBuffers: %u description: %{public}@", &v30, 0x30u);
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = Mutable;
  if (*v8)
  {
    v14 = 0;
    v15 = (v8 + 4);
    do
    {
      CFDataAppendBytes(v13, *v15, *(v15 - 1));
      ++v14;
      v15 += 2;
    }

    while (v14 < *v8);
  }

  v16 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = *v8;
    v18 = v16;
    v19 = STAudioUtilitiesFormatToString([v6 streamDescription]);
    v30 = 138544386;
    v31 = a1;
    v32 = 1024;
    *v33 = v17;
    *&v33[4] = 2048;
    *&v33[6] = v10;
    *&v33[14] = 2114;
    *&v33[16] = v19;
    v34 = 2114;
    v35 = v13;
    _os_log_debug_impl(&dword_26B5BC000, v18, OS_LOG_TYPE_DEBUG, "Serializing buffer: %{public}@ with numberBuffers: %u dataSize: %zu description: %{public}@ data: %{public}@", &v30, 0x30u);
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (_DWORD)_st_createAudioBufferListWithAllocator:()STAdditions serializedData:description:
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [v7 length];
  v9 = v8;
  if ((*(a5 + 12) & 0x20) != 0)
  {
    v10 = *(a5 + 28);
  }

  else
  {
    v10 = 1;
  }

  v11 = 16 * (v10 - 1) + 24;
  v12 = MEMORY[0x26D67B490](a3, v11 + v8, 3471998901, 0);
  v13 = v12;
  if (v12)
  {
    v14 = v10;
    v15 = v9 / v10;
    if ((*(a5 + 12) & 0x20) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(a5 + 28);
    }

    v18 = v12 + v11;
    [v7 getBytes:v12 + v11 length:v9];
    *v13 = v10;
    if (v10)
    {
      v19 = (v13 + 4);
      do
      {
        *v19 = v18;
        v18 += v15;
        *(v19 - 2) = v16;
        *(v19 - 1) = v15;
        v19 += 2;
        --v14;
      }

      while (v14);
    }

    v20 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = v20;
      v24 = STAudioUtilitiesFormatToString(a5);
      v25[0] = 67110402;
      v25[1] = v10;
      v26 = 2048;
      v27 = v9;
      v28 = 1024;
      v29 = v9 / v10;
      v30 = 1024;
      v31 = v16;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = v7;
      _os_log_debug_impl(&dword_26B5BC000, v23, OS_LOG_TYPE_DEBUG, "bufferList created with numberOfBuffers: %u byteCount: %lu bytesPerPacket: %u channelsPerBuffer: %u description: %{public}@ data: %{public}@", v25, 0x32u);
    }
  }

  else
  {
    v17 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AVAudioPCMBuffer(STAdditions) _st_createAudioBufferListWithAllocator:a3 serializedData:v11 + v9 description:v17];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)st_serializeWithBufferAllocator:()STAdditions .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26B5BC000, v0, v1, "Failed to serialize dictionary: %{public}@ with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)st_deserializeData:()STAdditions withBufferAllocator:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26B5BC000, v0, v1, "Failed to deserialize data: %{public}@ with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_st_deserializedInstanceIsValid:()STAdditions .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"AVAudioPCMBufferData"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_26B5BC000, v5, v6, "Failed to receive valid deserializedInstance: %{public}@ missing serializedBufferData: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_st_deserializedInstanceIsValid:()STAdditions .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"AVAudioPCMBufferFormat"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_26B5BC000, v5, v6, "Failed to receive valid deserializedInstance: %{public}@ missing format: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_st_createAudioBufferListWithAllocator:()STAdditions serializedData:description:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2048;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_26B5BC000, a2, a3, "Failed to allocate audioBufferList with allocator: %{public}@ size: %zu", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end