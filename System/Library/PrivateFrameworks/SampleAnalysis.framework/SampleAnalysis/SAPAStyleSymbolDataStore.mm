@interface SAPAStyleSymbolDataStore
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAPAStyleSymbolDataStore

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolDataStore" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolDataStore" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolDataStore" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if ((*buffer - 324506182) >= 3)
  {
    v7 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolDataStore magic" userInfo:0, v4, v5];
    objc_exception_throw(v7);
  }

  return objc_alloc_init(SAPAStyleSymbolDataStore);
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v138 = *MEMORY[0x1E69E9840];
  v6 = *buffer - 324506182;
  if (v6 >= 3)
  {
    bufferDictionary = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolDataStore magic" userInfo:0, bufferDictionary];
    objc_exception_throw(bufferDictionary);
  }

  bufferCopy = buffer;
  v10 = buffer + qword_1E0F282B8[v6];
  v11 = *(buffer + 1);
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = SASerializableNewMutableDictionaryFromIndexList(v10, v11, dictionary, bufferDictionary, v12, v13);
    v15 = 24 * bufferCopy[1];
  }

  else
  {
    v15 = 0;
  }

  v16 = bufferCopy[2];
  if (v16)
  {
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = SASerializableNewMutableDictionaryOfArraysFromIndexList(&v10[v15], v16, dictionary, bufferDictionary, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  if (*bufferCopy > 0x13579246uLL)
  {
    if (*bufferCopy != 324506183)
    {
      v20 = bufferCopy[5];
      v21 = objc_opt_class();
      v22 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v20, dictionary, bufferDictionary, v21, 0);
      v24 = v22;
      if (v22)
      {
        v25 = [objc_getProperty(v22 v23];
        [v25 uuid];
        v27 = v26 = v19;
        v29 = +[SAKernelCache kernelCacheWithUUID:loadAddress:](SAKernelCache, "kernelCacheWithUUID:loadAddress:", v27, [objc_getProperty(v24 v28]);
        kernelCache = self->_kernelCache;
        self->_kernelCache = v29;

        v19 = v26;
      }
    }

    v31 = bufferCopy[3];
    v32 = objc_opt_class();
    Property = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v31, dictionary, bufferDictionary, v32, 0);
    selfa = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v34, 8, 1);
    }

    binary = [Property binary];
    uuid = [binary uuid];

    v119 = uuid;
    if (uuid)
    {
      v37 = [v19 objectForKeyedSubscript:uuid];
      v38 = v37;
      if (v37)
      {
        v117 = v37;
        v38 = v37;
        if ([v37 count])
        {
          v112 = bufferCopy;
          dictionaryCopy = dictionary;
          v115 = v19;
          v125 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v38, "count")}];
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          obj = v38;
          v39 = [obj countByEnumeratingWithState:&v132 objects:v137 count:16];
          if (v39)
          {
            v41 = v39;
            v123 = *v133;
            do
            {
              v42 = 0;
              do
              {
                if (*v133 != v123)
                {
                  objc_enumerationMutation(obj);
                }

                v43 = *(*(&v132 + 1) + 8 * v42);
                if (v43)
                {
                  v44 = objc_getProperty(*(*(&v132 + 1) + 8 * v42), v40, 8, 1);
                }

                else
                {
                  v44 = 0;
                }

                binary2 = [v44 binary];
                v47 = -[SABinary segmentWithCleanName:length:offsetIntoBinary:](binary2, @"__TEXT", [binary2 length], 0x7FFFFFFFFFFFFFFFLL);
                if (v43)
                {
                  v48 = objc_getProperty(v43, v46, 8, 1);
                }

                else
                {
                  v48 = 0;
                }

                loadAddress = [v48 loadAddress];
                v51 = selfa;
                if (selfa)
                {
                  v51 = objc_getProperty(selfa, v49, 8, 1);
                }

                loadAddress2 = [v51 loadAddress];
                if (v43)
                {
                  isInKernelAddressSpace = [objc_getProperty(v43 v52];
                  v56 = objc_getProperty(v43, v55, 8, 1);
                }

                else
                {
                  isInKernelAddressSpace = [0 isInKernelAddressSpace];
                  v56 = 0;
                }

                exclave = [v56 exclave];
                v58 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v47 loadAddress:loadAddress2 + loadAddress isInKernelAddressSpace:isInKernelAddressSpace exclave:exclave];
                [v125 addObject:v58];

                ++v42;
              }

              while (v41 != v42);
              v59 = [obj countByEnumeratingWithState:&v132 objects:v137 count:16];
              v41 = v59;
            }

            while (v59);
          }

          if (selfa)
          {
            v61 = objc_getProperty(selfa, v60, 8, 1);
          }

          else
          {
            v61 = 0;
          }

          binary3 = [v61 binary];
          uuid2 = [binary3 uuid];
          dictionary = dictionaryCopy;
          bufferCopy = v112;
          if (selfa)
          {
            v65 = objc_getProperty(selfa, v63, 8, 1);
          }

          else
          {
            v65 = 0;
          }

          loadAddress3 = [v65 loadAddress];
          v67 = [v125 copy];
          v68 = [SASharedCache sharedCacheWithUUID:uuid2 slide:loadAddress3 binaryLoadInfos:v67];
          sharedCache64Bit = self->_sharedCache64Bit;
          self->_sharedCache64Bit = v68;

          v19 = v115;
          v38 = v117;
        }
      }
    }

    v70 = bufferCopy[4];
    v71 = objc_opt_class();
    v72 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v70, dictionary, bufferDictionary, v71, 0);
    v74 = v72;
    if (v72)
    {
      v72 = objc_getProperty(v72, v73, 8, 1);
    }

    binary4 = [v72 binary];
    uuid3 = [binary4 uuid];

    if (uuid3)
    {
      v77 = [v19 objectForKeyedSubscript:uuid3];
      v78 = v77;
      if (v77 && [v77 count])
      {
        v116 = v19;
        v118 = uuid3;
        v126 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v78, "count")}];
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v114 = v78;
        obja = v78;
        v79 = [obja countByEnumeratingWithState:&v128 objects:v136 count:16];
        if (v79)
        {
          v81 = v79;
          v124 = *v129;
          do
          {
            v82 = 0;
            do
            {
              if (*v129 != v124)
              {
                objc_enumerationMutation(obja);
              }

              v83 = *(*(&v128 + 1) + 8 * v82);
              if (v83)
              {
                v84 = objc_getProperty(*(*(&v128 + 1) + 8 * v82), v80, 8, 1);
              }

              else
              {
                v84 = 0;
              }

              binary5 = [v84 binary];
              v87 = -[SABinary segmentWithCleanName:length:offsetIntoBinary:](binary5, @"__TEXT", [binary5 length], 0x7FFFFFFFFFFFFFFFLL);
              if (v83)
              {
                v88 = objc_getProperty(v83, v86, 8, 1);
              }

              else
              {
                v88 = 0;
              }

              loadAddress4 = [v88 loadAddress];
              if (v74)
              {
                v91 = objc_getProperty(v74, v89, 8, 1);
              }

              else
              {
                v91 = 0;
              }

              loadAddress5 = [v91 loadAddress];
              if (v83)
              {
                isInKernelAddressSpace2 = [objc_getProperty(v83 v92];
                v96 = objc_getProperty(v83, v95, 8, 1);
              }

              else
              {
                isInKernelAddressSpace2 = [0 isInKernelAddressSpace];
                v96 = 0;
              }

              exclave2 = [v96 exclave];
              v98 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v87 loadAddress:loadAddress5 + loadAddress4 isInKernelAddressSpace:isInKernelAddressSpace2 exclave:exclave2];
              [v126 addObject:v98];

              ++v82;
            }

            while (v81 != v82);
            v99 = [obja countByEnumeratingWithState:&v128 objects:v136 count:16];
            v81 = v99;
          }

          while (v99);
        }

        if (v74)
        {
          v101 = objc_getProperty(v74, v100, 8, 1);
        }

        else
        {
          v101 = 0;
        }

        uuid3 = v118;
        binary6 = [v101 binary];
        uuid4 = [binary6 uuid];
        if (v74)
        {
          v105 = objc_getProperty(v74, v103, 8, 1);
        }

        else
        {
          v105 = 0;
        }

        v78 = v114;
        loadAddress6 = [v105 loadAddress];
        v107 = [v126 copy];
        v108 = [SASharedCache sharedCacheWithUUID:uuid4 slide:loadAddress6 binaryLoadInfos:v107];
        sharedCache32Bit = self->_sharedCache32Bit;
        self->_sharedCache32Bit = v108;

        v19 = v116;
      }
    }
  }

  v110 = *MEMORY[0x1E69E9840];
}

@end