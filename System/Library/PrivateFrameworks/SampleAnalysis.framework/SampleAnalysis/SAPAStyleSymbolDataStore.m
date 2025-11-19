@interface SAPAStyleSymbolDataStore
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4;
- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)a3;
- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6;
@end

@implementation SAPAStyleSymbolDataStore

- (BOOL)addSelfToBuffer:(void *)a3 bufferLength:(unint64_t)a4 withCompletedSerializationDictionary:(id)a5
{
  v5 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolDataStore" userInfo:0];
  objc_exception_throw(v5);
}

- (void)addSelfToSerializationDictionary:(id)a3
{
  v3 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolDataStore" userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v2 = [SAException exceptionWithName:@"Encoding failure" reason:@"Trying to encode SAPAStyleSymbolDataStore" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)a3 bufferLength:(unint64_t)a4
{
  if ((*a3 - 324506182) >= 3)
  {
    v7 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolDataStore magic" userInfo:0, v4, v5];
    objc_exception_throw(v7);
  }

  return objc_alloc_init(SAPAStyleSymbolDataStore);
}

- (void)populateReferencesUsingBuffer:(const void *)a3 bufferLength:(unint64_t)a4 andDeserializationDictionary:(id)a5 andDataBufferDictionary:(id)a6
{
  v138 = *MEMORY[0x1E69E9840];
  v6 = *a3 - 324506182;
  if (v6 >= 3)
  {
    v111 = [SAException exceptionWithName:@"Decoding failure" reason:@"Bad PASymbolDataStore magic" userInfo:0, a6];
    objc_exception_throw(v111);
  }

  v9 = a3;
  v10 = a3 + qword_1E0F282B8[v6];
  v11 = *(a3 + 1);
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = SASerializableNewMutableDictionaryFromIndexList(v10, v11, a5, a6, v12, v13);
    v15 = 24 * v9[1];
  }

  else
  {
    v15 = 0;
  }

  v16 = v9[2];
  if (v16)
  {
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = SASerializableNewMutableDictionaryOfArraysFromIndexList(&v10[v15], v16, a5, a6, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  if (*v9 > 0x13579246uLL)
  {
    if (*v9 != 324506183)
    {
      v20 = v9[5];
      v21 = objc_opt_class();
      v22 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v20, a5, a6, v21, 0);
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

    v31 = v9[3];
    v32 = objc_opt_class();
    Property = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v31, a5, a6, v32, 0);
    selfa = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v34, 8, 1);
    }

    v35 = [Property binary];
    v36 = [v35 uuid];

    v119 = v36;
    if (v36)
    {
      v37 = [v19 objectForKeyedSubscript:v36];
      v38 = v37;
      if (v37)
      {
        v117 = v37;
        v38 = v37;
        if ([v37 count])
        {
          v112 = v9;
          v113 = a5;
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

                v45 = [v44 binary];
                v47 = -[SABinary segmentWithCleanName:length:offsetIntoBinary:](v45, @"__TEXT", [v45 length], 0x7FFFFFFFFFFFFFFFLL);
                if (v43)
                {
                  v48 = objc_getProperty(v43, v46, 8, 1);
                }

                else
                {
                  v48 = 0;
                }

                v50 = [v48 loadAddress];
                v51 = selfa;
                if (selfa)
                {
                  v51 = objc_getProperty(selfa, v49, 8, 1);
                }

                v53 = [v51 loadAddress];
                if (v43)
                {
                  v54 = [objc_getProperty(v43 v52];
                  v56 = objc_getProperty(v43, v55, 8, 1);
                }

                else
                {
                  v54 = [0 isInKernelAddressSpace];
                  v56 = 0;
                }

                v57 = [v56 exclave];
                v58 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v47 loadAddress:v53 + v50 isInKernelAddressSpace:v54 exclave:v57];
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

          v62 = [v61 binary];
          v64 = [v62 uuid];
          a5 = v113;
          v9 = v112;
          if (selfa)
          {
            v65 = objc_getProperty(selfa, v63, 8, 1);
          }

          else
          {
            v65 = 0;
          }

          v66 = [v65 loadAddress];
          v67 = [v125 copy];
          v68 = [SASharedCache sharedCacheWithUUID:v64 slide:v66 binaryLoadInfos:v67];
          sharedCache64Bit = self->_sharedCache64Bit;
          self->_sharedCache64Bit = v68;

          v19 = v115;
          v38 = v117;
        }
      }
    }

    v70 = v9[4];
    v71 = objc_opt_class();
    v72 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v70, a5, a6, v71, 0);
    v74 = v72;
    if (v72)
    {
      v72 = objc_getProperty(v72, v73, 8, 1);
    }

    v75 = [v72 binary];
    v76 = [v75 uuid];

    if (v76)
    {
      v77 = [v19 objectForKeyedSubscript:v76];
      v78 = v77;
      if (v77 && [v77 count])
      {
        v116 = v19;
        v118 = v76;
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

              v85 = [v84 binary];
              v87 = -[SABinary segmentWithCleanName:length:offsetIntoBinary:](v85, @"__TEXT", [v85 length], 0x7FFFFFFFFFFFFFFFLL);
              if (v83)
              {
                v88 = objc_getProperty(v83, v86, 8, 1);
              }

              else
              {
                v88 = 0;
              }

              v90 = [v88 loadAddress];
              if (v74)
              {
                v91 = objc_getProperty(v74, v89, 8, 1);
              }

              else
              {
                v91 = 0;
              }

              v93 = [v91 loadAddress];
              if (v83)
              {
                v94 = [objc_getProperty(v83 v92];
                v96 = objc_getProperty(v83, v95, 8, 1);
              }

              else
              {
                v94 = [0 isInKernelAddressSpace];
                v96 = 0;
              }

              v97 = [v96 exclave];
              v98 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v87 loadAddress:v93 + v90 isInKernelAddressSpace:v94 exclave:v97];
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

        v76 = v118;
        v102 = [v101 binary];
        v104 = [v102 uuid];
        if (v74)
        {
          v105 = objc_getProperty(v74, v103, 8, 1);
        }

        else
        {
          v105 = 0;
        }

        v78 = v114;
        v106 = [v105 loadAddress];
        v107 = [v126 copy];
        v108 = [SASharedCache sharedCacheWithUUID:v104 slide:v106 binaryLoadInfos:v107];
        sharedCache32Bit = self->_sharedCache32Bit;
        self->_sharedCache32Bit = v108;

        v19 = v116;
      }
    }
  }

  v110 = *MEMORY[0x1E69E9840];
}

@end