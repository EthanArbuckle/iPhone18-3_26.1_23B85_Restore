@interface SABinaryLoadInfo
+ (id)addBinaryLoadInfoForDyldImage:(void *)a3 toLoadInfos:(int)a4 isKernel:(int)a5 dataGatheringOptions:;
+ (id)binaryLoadInfoForAddress:(unint64_t)a3 inBinaryLoadInfos:(id)a4;
+ (id)binaryLoadInfoForAddress:(unint64_t)a3 inBinaryLoadInfos:(id)a4 libraryCache:(id)a5;
+ (id)binaryLoadInfoForSymbolicator:(uint64_t)a1 isKernel:(uint64_t)a2 dataGatheringOptions:(uint64_t)a3 excludeRange:(uint64_t)a4 ignoreSharedCache:(char)a5;
+ (id)binaryLoadInfoWithBinary:(uint64_t)a3 loadAddress:(int)a4 isInKernelAddressSpace:(void *)a5 exclave:;
+ (id)binaryLoadInfoWithSegment:(uint64_t)a3 loadAddress:(int)a4 isInKernelAddressSpace:(void *)a5 exclave:;
+ (id)loadInfosForSegmentsInBinary:(uint64_t)a3 binaryBaseAddress:(int)a4 isInKernelAddressSpace:(void *)a5 exclave:;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
+ (void)binaryLoadInfoWithoutReferencesFromPAStyleSerializedImageInfo:(uint64_t)a1;
- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (NSString)debugDescription;
- (SABinaryLoadInfo)initWithBinary:(id)a3 segment:(id)a4 loadAddress:(unint64_t)a5;
- (id)instructionAtOffsetIntoLoadInfo:(unint64_t)a3;
- (unint64_t)length;
- (unint64_t)textSegmentLoadAddress;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
- (void)populateReferencesUsingPAStyleSerializedImageInfo:(void *)a3 andDeserializationDictionary:(void *)a4 andDataBufferDictionary:;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SABinaryLoadInfo

- (unint64_t)length
{
  segment = self->_segment;
  if (!segment)
  {
    segment = self->_binary;
  }

  return [segment length];
}

- (SABinaryLoadInfo)initWithBinary:(id)a3 segment:(id)a4 loadAddress:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = SABinaryLoadInfo;
  v8 = [(SABinaryLoadInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_binary, a3);
    objc_storeStrong(&v9->_segment, a4);
    v9->_loadAddress = a5;
  }

  return v9;
}

+ (id)binaryLoadInfoWithSegment:(uint64_t)a3 loadAddress:(int)a4 isInKernelAddressSpace:(void *)a5 exclave:
{
  v48 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = [a2 binary];
  if (!v9)
  {
    v16 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      a5 = [a2 debugDescription];
      *buf = 136315138;
      v43 = [a5 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "Getting a load info for segment %s when the binary has already been deallcoated", buf, 0xCu);
    }

    *__error() = v16;
    a2 = [a2 debugDescription];
    v17 = [a2 UTF8String];
    _SASetCrashLogMessage(2857, "Getting a load info for segment %s when the binary has already been deallcoated", v18, v19, v20, v21, v22, v23, v17);

    _os_crash();
    __break(1u);
LABEL_16:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v10 debugDescription];
      v27 = [v26 UTF8String];
      v28 = [a2 debugDescription];
      v29 = [v28 UTF8String];
      v30 = [a5 debugDescription];
      v31 = [v30 UTF8String];
      *buf = 136315650;
      v43 = v27;
      v44 = 2080;
      v45 = v29;
      v46 = 2080;
      v47 = v31;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "%s segment %s has exclave %s in user space", buf, 0x20u);
    }

    *__error() = v24;
    v32 = [v10 debugDescription];
    v33 = [v32 UTF8String];
    v34 = [a2 debugDescription];
    [v34 UTF8String];
    v35 = [a5 debugDescription];
    [v35 UTF8String];
    _SASetCrashLogMessage(2858, "%s segment %s has exclave %s in user space", v36, v37, v38, v39, v40, v41, v33);

    _os_crash();
    __break(1u);
  }

  v10 = v9;
  if (a5 && (a4 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    if (a5)
    {
      v11 = [[SAExclaveBinaryLoadInfo alloc] initWithBinary:v9 segment:a2 loadAddress:a3 exclave:a5];
      goto LABEL_10;
    }

    v12 = SAKernelBinaryLoadInfo;
  }

  else
  {
    v12 = SAUserBinaryLoadInfo;
  }

  v11 = [[v12 alloc] initWithBinary:v10 segment:a2 loadAddress:a3];
LABEL_10:
  v13 = v11;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)binaryLoadInfoWithBinary:(uint64_t)a3 loadAddress:(int)a4 isInKernelAddressSpace:(void *)a5 exclave:
{
  v31 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a5 && (a4 & 1) == 0)
  {
    v13 = *__error();
    v14 = _sa_logt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [a2 debugDescription];
      v16 = [v15 UTF8String];
      v17 = [a5 debugDescription];
      *buf = 136315394;
      v28 = v16;
      v29 = 2080;
      v30 = [v17 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "%s has exclave %s in user space", buf, 0x16u);
    }

    *__error() = v13;
    v18 = [a2 debugDescription];
    v19 = [v18 UTF8String];
    v20 = [a5 debugDescription];
    [v20 UTF8String];
    _SASetCrashLogMessage(2873, "%s has exclave %s in user space", v21, v22, v23, v24, v25, v26, v19);

    _os_crash();
    __break(1u);
  }

  if (a4)
  {
    if (a5)
    {
      v9 = [[SAExclaveBinaryLoadInfo alloc] initWithBinary:a2 segment:0 loadAddress:a3 exclave:a5];
      goto LABEL_9;
    }

    v10 = SAKernelBinaryLoadInfo;
  }

  else
  {
    v10 = SAUserBinaryLoadInfo;
  }

  v9 = [[v10 alloc] initWithBinary:a2 segment:0 loadAddress:a3];
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)binaryLoadInfoForAddress:(unint64_t)a3 inBinaryLoadInfos:(id)a4
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__SABinaryLoadInfo_binaryLoadInfoForAddress_inBinaryLoadInfos___block_invoke;
  v14[3] = &__block_descriptor_40_e26_q16__0__SABinaryLoadInfo_8l;
  v14[4] = a3;
  v6 = SABinarySearchArray(a4, 1536, v14);
  if (v6)
  {
    v7 = [a4 objectAtIndexedSubscript:v6 - 1];
    v8 = [v7 segment];
    v9 = [v8 length];
    if (!v9)
    {
      v10 = [v7 binary];
      v11 = [v10 length];
      if (v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = 0x10000000;
      }
    }

    if ([v7 loadAddress] + v9 <= a3)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __63__SABinaryLoadInfo_binaryLoadInfoForAddress_inBinaryLoadInfos___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 loadAddress];
  v4 = *(a1 + 32);
  v5 = v4 >= v3;
  v6 = v4 > v3;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

+ (id)binaryLoadInfoForAddress:(unint64_t)a3 inBinaryLoadInfos:(id)a4 libraryCache:(id)a5
{
  if (!a5)
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v8 = [a5 binaryLoadInfos];
  if (!v8)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = [a5 startAddress];
  v10 = 0;
  if (v9 != -1 && v9 <= a3)
  {
    if ([a5 endAddress] > a3)
    {
      v10 = [SABinaryLoadInfo binaryLoadInfoForAddress:a3 inBinaryLoadInfos:v8];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:

  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v10)
  {
    v11 = [SABinaryLoadInfo binaryLoadInfoForAddress:a3 inBinaryLoadInfos:a4];
    v10 = v11;
    if (a5)
    {
      if (v11)
      {
        if ([a5 startAddress] != -1)
        {
          v12 = [v10 loadAddress];
          if (v12 < [a5 startAddress] && objc_msgSend(a5, "startAddress") <= a3)
          {

            v10 = 0;
          }
        }
      }
    }
  }

LABEL_18:

  return v10;
}

+ (id)binaryLoadInfoForSymbolicator:(uint64_t)a1 isKernel:(uint64_t)a2 dataGatheringOptions:(uint64_t)a3 excludeRange:(uint64_t)a4 ignoreSharedCache:(char)a5
{
  v5 = ~a5;
  objc_opt_self();
  v6 = objc_autoreleasePoolPush();
  if ((v5 & 5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = +[SABinaryLocator sharedBinaryLocator];
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v9 = v7;
  v10 = v8;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  [v9 done];
  objc_opt_self();
  [v10 sortUsingComparator:&__block_literal_global_361];
  v11 = [v10 copy];

  objc_autoreleasePoolPop(v6);

  return v11;
}

void __111__SABinaryLoadInfo_binaryLoadInfoForSymbolicator_isKernel_dataGatheringOptions_excludeRange_ignoreSharedCache___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) != 1 || (CSSymbolOwnerIsDyldSharedCache() & 1) == 0)
  {
    v17[0] = 0;
    v17[1] = 0;
    IsContiguous = SASymbolOwnerIsContiguous(a2, a3, v17, 0);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    if ((CSRangeContainsRange() & 1) == 0)
    {
      v9 = [SABinary binaryWithSymbolOwner:a2 fromDisk:a3, IsContiguous];
      v10 = v9;
      if (v9)
      {
        if (IsContiguous)
        {
          BaseAddress = CSSymbolOwnerGetBaseAddress();
          v12 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v10 loadAddress:BaseAddress isInKernelAddressSpace:*(a1 + 65) exclave:0];
          [*(a1 + 32) addObject:v12];
        }

        else
        {
          v15 = *(a1 + 48);
          v13 = v9;
          v16 = *(a1 + 65);
          v14 = *(a1 + 32);
          SASymbolOwnerForeachSegment();

          v12 = v13;
        }

        if (*(a1 + 40))
        {
          if ((CSSymbolOwnerIsDsym() & 1) == 0)
          {
            [SABinaryLocator addURLForSymbolOwner:?];
          }
        }
      }
    }
  }
}

void __111__SABinaryLoadInfo_binaryLoadInfoForSymbolicator_isKernel_dataGatheringOptions_excludeRange_ignoreSharedCache___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  CSRegionGetRange();
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if ((CSRangeIntersectsRange() & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    BaseAddress = CSSymbolOwnerGetBaseAddress();
    v12 = [(SABinary *)v8 segmentWithCSSegment:a2 symbolOwnerLayoutMatchesDisk:a3 symbolOwnerBaseAddress:0, BaseAddress];
    if (v12)
    {
      Range = CSRegionGetRange();
      v14 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v12 loadAddress:Range isInKernelAddressSpace:*(a1 + 80) exclave:0];
      [*(a1 + 40) addObject:v14];
    }

    else
    {
      v15 = *__error();
      v16 = _sa_logt();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        Name = CSRegionGetName();
        v19 = [*(a1 + 32) name];
        v20 = 136315394;
        v21 = Name;
        v22 = 2112;
        v23 = v19;
        _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "Unable to create SASegment for CSSegment %s (from %@)", &v20, 0x16u);
      }

      *__error() = v15;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)addBinaryLoadInfoForDyldImage:(void *)a3 toLoadInfos:(int)a4 isKernel:(int)a5 dataGatheringOptions:
{
  v50 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = objc_autoreleasePoolPush();
  v10 = [SABinary binaryForDyldImage:a2 options:a5];
  v11 = v10;
  if (v10)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = -1;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = -1;
    v12 = v10;
    v13 = DyldImageEnumerateSegments();
    if (v13 < 0 || (v14 = v27[3], v14 == -1) || !v14 || (v15 = v39[3], (v15 + 1) <= 1))
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = [v12 debugDescription];
        v23 = v27[3];
        v24 = v39[3];
        *buf = 138413058;
        v43 = v22;
        v44 = 2048;
        v45 = v23;
        v46 = 2048;
        v47 = v24;
        v48 = 1024;
        v49 = v13;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Bad segments in dyld image for %@: imageTextStartAddress:%llu, imageStartAddress:%llu, ret %d", buf, 0x26u);
      }

      v18 = 0;
      *__error() = v16;
    }

    else
    {
      if (v14 == v15 && v35[3] - v14 == v31[3])
      {
        v21 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v12 loadAddress:v14 isInKernelAddressSpace:a4 exclave:0];
        [a3 addObject:v21];
      }

      else
      {
        v25 = v12;
        DyldImageEnumerateSegments();
        v21 = v25;
      }

      v18 = v12;
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t __92__SABinaryLoadInfo_addBinaryLoadInfoForDyldImage_toLoadInfos_isKernel_dataGatheringOptions___block_invoke(uint64_t a1, char *__s1, unint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) debugDescription];
      v15 = 136315650;
      v16 = __s1;
      v17 = 2048;
      v18 = a4;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Segment %s load address is 0 (length 0x%llx) for %@", &v15, 0x20u);
    }

    *__error() = v8;
  }

  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 24) < a4 + a3)
  {
    *(v10 + 24) = a4 + a3;
  }

  v11 = *(*(a1 + 48) + 8);
  if (*(v11 + 24) > a3)
  {
    *(v11 + 24) = a3;
  }

  *(*(*(a1 + 56) + 8) + 24) += a4;
  result = strcmp(__s1, "__TEXT");
  if (!result)
  {
    *(*(*(a1 + 64) + 8) + 24) = a3;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __92__SABinaryLoadInfo_addBinaryLoadInfoForDyldImage_toLoadInfos_isKernel_dataGatheringOptions___block_invoke_358(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = *(a1 + 32);
  v8 = SANSStringForCString(a2);
  v10 = [(SABinary *)v7 segmentWithName:v8 length:a4 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];

  v9 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v10 loadAddress:a3 isInKernelAddressSpace:*(a1 + 48) exclave:0];
  [*(a1 + 40) addObject:v9];
}

+ (id)loadInfosForSegmentsInBinary:(uint64_t)a3 binaryBaseAddress:(int)a4 isInKernelAddressSpace:(void *)a5 exclave:
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = [a2 segments];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 hasOffsetIntoBinary])
        {
          v17 = +[SABinaryLoadInfo binaryLoadInfoWithSegment:loadAddress:isInKernelAddressSpace:exclave:](SABinaryLoadInfo, v16, [v16 offsetIntoBinary] + a3, a4, a5);
          [v10 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)instructionAtOffsetIntoLoadInfo:(unint64_t)a3
{
  segment = self->_segment;
  if (segment)
  {
    [(SASegment *)segment instructionAtOffsetIntoSegment:a3];
  }

  else
  {
    [(SABinary *)self->_binary instructionAtOffsetIntoBinary:a3];
  }
  v5 = ;

  return v5;
}

uint64_t __40__SABinaryLoadInfo_sortBinaryLoadInfos___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 loadAddress];
  if (v5 < [a3 loadAddress])
  {
    return -1;
  }

  v7 = [a2 loadAddress];
  return v7 > [a3 loadAddress];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SABinaryLoadInfo *)self isInKernelAddressSpace];
  segment = self->_segment;
  loadAddress = self->_loadAddress;
  if (!segment)
  {
    segment = self->_binary;
  }

  v7 = [segment debugDescription];
  v8 = v7;
  v9 = @" ";
  if (v4)
  {
    v9 = @"*";
  }

  v10 = [v3 initWithFormat:@"%@0x%llx: %@", v9, loadAddress, v7];

  return v10;
}

- (unint64_t)textSegmentLoadAddress
{
  if (self->_segment)
  {
    return self->_loadAddress;
  }

  v3 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
    if (!v4)
    {
LABEL_7:

      return self->_loadAddress;
    }
  }

  if (([v4 hasOffsetIntoBinary] & 1) == 0)
  {
    goto LABEL_7;
  }

  loadAddress = self->_loadAddress;
  v6 = [v4 offsetIntoBinary] + loadAddress;

  return v6;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  v5 = [(SABinary *)self->_binary uuid];
  v6 = [v5 UUIDString];
  SAJSONWriteDictionaryFirstEntry(a3, @"binary", v6);

  segment = self->_segment;
  if (segment)
  {
    v8 = [(SASegment *)segment name];
    SAJSONWriteDictionaryEntry(a3, @"segment", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loadAddress];
  SAJSONWriteDictionaryEntry(a3, @"loadAddress", v9);

  if ([(SABinaryLoadInfo *)self isInKernelAddressSpace])
  {
    SAJSONWriteDictionaryEntry(a3, @"isInKernelAddressSpace", MEMORY[0x1E695E118]);
    v10 = [(SABinaryLoadInfo *)self exclave];

    if (v10)
    {
      v11 = [(SABinaryLoadInfo *)self exclave];
      v12 = [v11 name];
      if (v12)
      {
        SAJSONWriteDictionaryEntry(a3, @"exclave", v12);
      }

      else
      {
        v13 = MEMORY[0x1E696AD98];
        v14 = [(SABinaryLoadInfo *)self exclave];
        v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v14, "identifier")}];
        SAJSONWriteDictionaryEntry(a3, @"exclave", v15);
      }
    }
  }

  v16 = [(SABinary *)self->_binary path];
  if (v16)
  {
    v17 = v16;
    v18 = [(SABinary *)self->_binary uuid];
    v19 = [SABinary haveMultipleBinariesWithUUID:v18];

    if (v19)
    {
      v20 = [(SABinary *)self->_binary path];
      SAJSONWriteDictionaryEntry(a3, @"binaryPath", v20);
    }
  }
}

- (BOOL)addSelfToBuffer:(id *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SABinaryLoadInfo *)self sizeInBytesForSerializedVersion]!= a4)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(SABinaryLoadInfo *)self debugDescription];
      *buf = 136315650;
      v24 = [v14 UTF8String];
      v25 = 2048;
      v26 = [(SABinaryLoadInfo *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      v28 = a4;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v12;
    v15 = [(SABinaryLoadInfo *)self debugDescription];
    v16 = [v15 UTF8String];
    [(SABinaryLoadInfo *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(5141, "%s: size %lu != buffer length %lu", v17, v18, v19, v20, v21, v22, v16);

    _os_crash();
    __break(1u);
  }

  *&a3->var0 = 769;
  *(&a3->var2 + 2) = self->_loadAddress;
  BYTE2(a3->var3) = BYTE2(a3->var3) & 0xFE | [(SABinaryLoadInfo *)self isInKernelAddressSpace];
  *(&a3->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_binary, a5);
  *(&a3->var3 + 3) = SASerializableIndexForPointerFromSerializationDictionary(self->_segment, a5);
  v9 = [(SABinaryLoadInfo *)self exclave];
  *(&a3->var4.var1 + 3) = SASerializableIndexForPointerFromSerializationDictionary(v9, a5);

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v5 = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(a3, self, v5);

  if (v6)
  {
    [(SABinary *)self->_binary addSelfToSerializationDictionary:a3];
    [(SASegment *)self->_segment addSelfToSerializationDictionary:a3];
    v7 = [(SABinaryLoadInfo *)self exclave];
    [v7 addSelfToSerializationDictionary:a3];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_13;
  }

  if (a4 <= 0x12)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v19 = a4;
      v20 = 2048;
      v21 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(5171, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", v11, v12, v13, v14, v15, v16, a4);
    _os_crash();
    __break(1u);
LABEL_13:
    v17 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABinaryLoadInfo version" userInfo:0];
    objc_exception_throw(v17);
  }

  if (*(a3 + 18))
  {
    if (*(a3 + 1) < 3u || *(a3 + 27) == -1)
    {
      v6 = off_1E86F4D18;
    }

    else
    {
      v6 = off_1E86F4CC8;
    }
  }

  else
  {
    v6 = off_1E86F4E10;
  }

  result = objc_alloc_init(*v6);
  *(result + 3) = *(a3 + 10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v61 = *MEMORY[0x1E69E9840];
  if (*a3 >= 4u)
  {
    goto LABEL_29;
  }

  if (a4 <= 0x12)
  {
    v31 = *__error();
    v32 = _sa_logt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v58 = a4;
      v59 = 2048;
      v60 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", buf, 0x16u);
    }

    *__error() = v31;
    _SASetCrashLogMessage(5192, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", v33, v34, v35, v36, v37, v38, a4);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  v11 = *(a3 + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, a5, a6, v12);
  binary = self->_binary;
  self->_binary = v13;

  if (*(a3 + 1) < 2u)
  {
    v23 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
    }

    segment = self->_segment;
    self->_segment = v25;

    goto LABEL_13;
  }

  if (a4 <= 0x1A)
  {
LABEL_23:
    v39 = *__error();
    v40 = _sa_logt();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v58 = a4;
      v59 = 2048;
      v60 = 27;
      _os_log_error_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo v2 struct %lu", buf, 0x16u);
    }

    *__error() = v39;
    _SASetCrashLogMessage(5198, "bufferLength %lu < serialized SABinaryLoadInfo v2 struct %lu", v41, v42, v43, v44, v45, v46, a4);
    _os_crash();
    __break(1u);
LABEL_26:
    v47 = *__error();
    v48 = _sa_logt();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v58 = a4;
      v59 = 2048;
      v60 = 35;
      _os_log_error_impl(&dword_1E0E2F000, v48, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo v3 struct %lu", buf, 0x16u);
    }

    *__error() = v47;
    _SASetCrashLogMessage(5210, "bufferLength %lu < serialized SABinaryLoadInfo v3 struct %lu", v49, v50, v51, v52, v53, v54, a4);
    _os_crash();
    __break(1u);
LABEL_29:
    v55 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABinaryLoadInfo version" userInfo:0];
    objc_exception_throw(v55);
  }

  v15 = gSASerializationEncodedVersionBeingDecoded();
  if (*v15 <= 30)
  {
    v16 = self->_binary;
    v17 = gBinaryBeingDecoded(&gBinaryBeingDecoded);
    *v17 = v18;
  }

  v19 = *(a3 + 19);
  v20 = objc_opt_class();
  v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, a5, a6, v20, 0);
  v22 = self->_segment;
  self->_segment = v21;

  if (*v15 <= 30)
  {
    *gBinaryBeingDecoded(&gBinaryBeingDecoded) = 0;
  }

LABEL_13:
  if (*(a3 + 1) < 3u || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v30 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a4 <= 0x22)
  {
    goto LABEL_26;
  }

  v27 = *(a3 + 27);
  v28 = objc_opt_class();
  v56 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v27, a5, a6, v28);
  objc_storeWeak(&self[1].super.isa, v56);
  v29 = *MEMORY[0x1E69E9840];
}

+ (void)binaryLoadInfoWithoutReferencesFromPAStyleSerializedImageInfo:(uint64_t)a1
{
  objc_opt_self();
  if (*(a2 + 16) <= 0x8000000000000000)
  {
    v3 = off_1E86F4E10;
  }

  else
  {
    v3 = off_1E86F4D18;
  }

  v4 = objc_alloc_init(*v3);
  v4[3] = *(a2 + 16);

  return v4;
}

- (void)populateReferencesUsingPAStyleSerializedImageInfo:(void *)a3 andDeserializationDictionary:(void *)a4 andDataBufferDictionary:
{
  if (a1)
  {
    v7 = *(a2 + 8);
    v8 = objc_opt_class();
    v15 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v7, a3, a4, v8);
    v9 = [SABinary binaryWithUUID:"binaryWithUUID:absolutePath:" absolutePath:?];
    v10 = *(a1 + 8);
    *(a1 + 8) = v9;

    v11 = [(SABinary *)*(a1 + 8) checkForSegmentWithCleanName:?];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(SABinary *)*(a1 + 8) checkForSegmentWithCleanName:?];
    }

    v14 = *(a1 + 16);
    *(a1 + 16) = v13;
  }
}

@end