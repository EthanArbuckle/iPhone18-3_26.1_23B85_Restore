@interface VMUClassInfoMap
+ (void)_destroyRetainedLinearArray:(id *)array withCount:(unsigned int)count;
- (BOOL)hasClassInfosDerivedFromStackBacktraces;
- (VMUClassInfoMap)init;
- (VMUClassInfoMap)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)_retainedLinearArrayWithReturnedCount:(unsigned int *)count;
- (id)classInfoForAddress:(unint64_t)address;
- (id)classInfoForIndex:(unsigned int)index;
- (id)fieldInfoForIndex:(unsigned int)index;
- (id)swiftFieldWithName:(const char *)name offset:(unsigned int)offset kind:(unsigned int)kind typeref:(unint64_t)typeref;
- (unsigned)addClassInfo:(id)info forAddress:(unint64_t)address;
- (unsigned)addFieldInfo:(id)info;
- (unsigned)indexForClassInfo:(id)info;
- (unsigned)indexForFieldInfo:(id)info;
- (void)_applyTypeOverlay:(id)overlay;
- (void)_applyTypeOverlayRules:(void *)rules toMutableInfo:;
- (void)addClassInfosFromMap:(id)map;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateInfosWithBlock:(id)block;
- (void)memoizeSwiftField:(id)field withName:(const char *)name offset:(unsigned int)offset kind:(unsigned int)kind typeref:(unint64_t)typeref;
@end

@implementation VMUClassInfoMap

+ (void)_destroyRetainedLinearArray:(id *)array withCount:(unsigned int)count
{
  if (array)
  {
    if (count)
    {
      countCopy = count;
      arrayCopy = array;
      do
      {
        v7 = *arrayCopy;
        *arrayCopy++ = 0;

        --countCopy;
      }

      while (countCopy);
    }

    free(array);
  }
}

- (VMUClassInfoMap)init
{
  v8.receiver = self;
  v8.super_class = VMUClassInfoMap;
  v2 = [(VMUClassInfoMap *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    linearClassInfos = v2->_linearClassInfos;
    v2->_linearClassInfos = v3;

    v5 = objc_opt_new();
    linearFieldInfos = v2->_linearFieldInfos;
    v2->_linearFieldInfos = v5;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v33 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    __assert_rtn("[VMUClassInfoMap encodeWithCoder:]", "VMUClassInfoMap.mm", 131, "[coder allowsKeyedCoding]");
  }

  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_linearClassInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __35__VMUClassInfoMap_encodeWithCoder___block_invoke;
        v26[3] = &unk_1E827A030;
        v26[4] = self;
        [v10 enumerateTypeFieldsWithBlock:v26];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  [v5 serialize32:{-[NSMutableArray count](self->_linearFieldInfos, "count")}];
  [v5 serialize32:{-[VMUClassInfoMap count](self, "count")}];
  version = [objc_opt_class() version];
  [v5 serialize32:version];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_linearFieldInfos;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v13)
  {
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v22 + 1) + 8 * v15++) serializeWithClassMap:self simpleSerializer:v5 version:{version, v22}];
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v13);
  }

  v16 = objc_opt_new();
  for (i = 0; [(NSMutableArray *)self->_linearClassInfos count]> i; ++i)
  {
    v18 = [(NSMutableArray *)self->_linearClassInfos objectAtIndexedSubscript:i];
    [v18 serializeWithClassMap:self simpleSerializer:v5 version:version];
    if ([v18 isDerivedFromStackBacktrace])
    {
      [v16 addIndex:i];
    }
  }

  copyContiguousData = [v5 copyContiguousData];
  [coderCopy encodeObject:copyContiguousData forKey:@"simpleSerializerData"];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  [coderCopy encodeObject:v20 forKey:@"classMapVersion"];

  if ([v16 count])
  {
    [coderCopy encodeObject:v16 forKey:@"classInfosDerivedFromStackBacktraces"];
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __35__VMUClassInfoMap_encodeWithCoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) addFieldInfo:a2];
  *a4 = 0;
  return result;
}

- (VMUClassInfoMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VMUClassInfoMap *)self init];
  if (v5)
  {
    if ([coderCopy allowsKeyedCoding] && (v6 = 0x1E696A000uLL, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"classMapVersion"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "unsignedIntValue"), v7, v8 >= 2))
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"simpleSerializerData"];
      v10 = [[VMUSimpleDeserializer alloc] initWithData:v9];
      v11 = v10;
      if (v8 == 2)
      {
        v12 = 0;
      }

      else
      {
        v49[0] = 0;
        v12 = [(VMUSimpleDeserializer *)v10 deserialize32WithError:v49];
        v17 = v49[0];
        if (v17)
        {
LABEL_16:

          v15 = 0;
          goto LABEL_10;
        }
      }

      v35 = v9;
      v48 = 0;
      v36 = objc_opt_new();
      v18 = [(VMUSimpleDeserializer *)v11 deserialize32WithError:&v48];
      v19 = v48;
      if (v19 || (v34 = v18, v47 = 0, v37 = [(VMUSimpleDeserializer *)v11 deserialize32WithError:&v47], (v19 = v47) != 0))
      {
        v17 = v19;
LABEL_15:

        v9 = v35;
        goto LABEL_16;
      }

      if (v12)
      {
        v20 = 0;
        v33 = v11;
        do
        {
          v21 = objc_autoreleasePoolPush();
          v46 = 0;
          v22 = [VMUFieldInfo alloc];
          v45 = 0;
          v23 = [(VMUFieldInfo *)v22 initWithSerializer:v11 classMap:v5 version:v37 returnedDestinationLayoutClassInfoIndex:&v46 error:&v45];
          v17 = v45;
          if (!v17)
          {
            [(NSMutableArray *)v5->_linearFieldInfos addObject:v23];
            remoteIsa = v23;
            v44 = v20 + 1;
            std::__hash_table<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::hash<VMUFieldInfo * {__strong}>,std::equal_to<VMUFieldInfo * {__strong}>,true>,std::__unordered_map_equal<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::equal_to<VMUFieldInfo * {__strong}>,std::hash<VMUFieldInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUFieldInfo * {__strong},std::pair<VMUFieldInfo * {__strong},unsigned int>>(&v5->_fieldInfoToIndexMap.__table_.__bucket_list_.__ptr_, &remoteIsa);

            if (v46)
            {
              v24 = [*(v6 + 3480) numberWithUnsignedInt:?];
              v25 = v6;
              v26 = [*(v6 + 3480) numberWithUnsignedInt:v20];
              [v36 setObject:v24 forKeyedSubscript:v26];

              v6 = v25;
              v11 = v33;
            }
          }

          objc_autoreleasePoolPop(v21);
          if (v17)
          {
            goto LABEL_15;
          }

          v20 = (v20 + 1);
        }

        while (v12 != v20);
      }

      if (v34)
      {
        v27 = 1;
        do
        {
          v28 = objc_autoreleasePoolPush();
          v29 = [VMUClassInfo alloc];
          v42 = 0;
          v30 = [(VMUClassInfo *)v29 initWithSerializer:v11 classMap:v5 version:v37 error:&v42];
          v17 = v42;
          if (!v17)
          {
            [(NSMutableArray *)v5->_linearClassInfos addObject:v30];
            v31 = v30;
            remoteIsa = v31;
            v44 = v27;
            std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUClassInfo * {__strong},std::pair<VMUClassInfo * {__strong},unsigned int>>(&v5->_classInfoToIndexMap.__table_.__bucket_list_.__ptr_, &remoteIsa);

            if ([(VMUClassInfo *)v31 remoteIsa])
            {
              remoteIsa = [(VMUClassInfo *)v31 remoteIsa];
              v44 = v27;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned int>>(&v5->_isaAddressToIndexMap.__table_.__bucket_list_.__ptr_, &remoteIsa);
            }
          }

          objc_autoreleasePoolPop(v28);
          if (v17)
          {
            goto LABEL_15;
          }
        }

        while (++v27 - v34 != 1);
      }

      v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classInfosDerivedFromStackBacktraces"];
      if ([v32 count])
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __33__VMUClassInfoMap_initWithCoder___block_invoke;
        v40[3] = &unk_1E827A058;
        v41 = v5;
        [v32 enumerateIndexesUsingBlock:v40];
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __33__VMUClassInfoMap_initWithCoder___block_invoke_2;
      v38[3] = &unk_1E827A080;
      v39 = v5;
      [v36 enumerateKeysAndObjectsUsingBlock:v38];
    }

    else
    {
      v46 = 0;
      remoteIsa = 0;
      [coderCopy decodeValueOfObjCType:"I" at:&v46 size:4];
      if (v46)
      {
        for (i = 0; i < v46; ++i)
        {
          [coderCopy decodeValueOfObjCType:"Q" at:&remoteIsa size:8];
          decodeObject = [coderCopy decodeObject];
          [(VMUClassInfoMap *)v5 addClassInfo:decodeObject forAddress:remoteIsa];
        }
      }
    }
  }

  v15 = v5;
LABEL_10:

  return v15;
}

void __33__VMUClassInfoMap_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 88) objectAtIndexedSubscript:a2];
  [v2 setIsDerivedFromStackBacktrace:1];
}

void __33__VMUClassInfoMap_initWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [*(*(a1 + 32) + 176) objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntValue")}];
  v6 = [*(a1 + 32) classInfoForIndex:{objc_msgSend(v7, "unsignedIntValue")}];
  [v5 setDestinationLayout:v6];
}

- (void)addClassInfosFromMap:(id)map
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__VMUClassInfoMap_addClassInfosFromMap___block_invoke;
  v3[3] = &unk_1E827A0A8;
  v3[4] = self;
  [map enumerateInfosWithBlock:v3];
}

- (unsigned)addClassInfo:(id)info forAddress:(unint64_t)address
{
  infoCopy = info;
  addressCopy = address;
  if (infoCopy)
  {
    v6 = std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::find<VMUClassInfo * {__strong}>(&self->_classInfoToIndexMap.__table_.__bucket_list_.__ptr_, &infoCopy);
    if (!v6)
    {
      superclassInfo = [infoCopy superclassInfo];

      if (superclassInfo)
      {
        superclassInfo2 = [infoCopy superclassInfo];
        superclassInfo3 = [infoCopy superclassInfo];
        -[VMUClassInfoMap addClassInfo:forAddress:](self, "addClassInfo:forAddress:", superclassInfo2, [superclassInfo3 remoteIsa]);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__VMUClassInfoMap_addClassInfo_forAddress___block_invoke;
      v12[3] = &unk_1E827A030;
      v12[4] = self;
      [infoCopy enumerateTypeFieldsWithBlock:v12];
      v13 = [(VMUClassInfoMap *)self count]+ 1;
      v13 = *(std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUClassInfo * {__strong},VMUClassInfo * {__strong}&,unsigned int &>(&self->_classInfoToIndexMap.__table_.__bucket_list_.__ptr_, &infoCopy) + 6);
      if (addressCopy)
      {
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,unsigned int &>(&self->_isaAddressToIndexMap.__table_.__bucket_list_.__ptr_, &addressCopy);
      }

      [(NSMutableArray *)self->_linearClassInfos addObject:infoCopy];
      goto LABEL_11;
    }

    v7 = *(v6 + 6);
    v13 = v7;
    if (address)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,unsigned int &>(&self->_isaAddressToIndexMap.__table_.__bucket_list_.__ptr_, &addressCopy);
LABEL_11:
      v7 = v13;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __43__VMUClassInfoMap_addClassInfo_forAddress___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 destinationLayout];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 destinationLayout];
    [v4 indexForClassInfo:v5];
  }
}

- (unsigned)indexForClassInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::find<VMUClassInfo * {__strong}>(&self->_classInfoToIndexMap.__table_.__bucket_list_.__ptr_, &infoCopy);
    if (v4)
    {
      v5 = *(v4 + 6);
    }

    else
    {
      v5 = -[VMUClassInfoMap addClassInfo:forAddress:](self, "addClassInfo:forAddress:", infoCopy, [infoCopy remoteIsa]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)classInfoForAddress:(unint64_t)address
{
  addressCopy = address;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(&self->_isaAddressToIndexMap.__table_.__bucket_list_.__ptr_, &addressCopy);
  if (v4)
  {
    v4 = [(NSMutableArray *)self->_linearClassInfos objectAtIndexedSubscript:(v4[6] - 1)];
  }

  return v4;
}

- (id)classInfoForIndex:(unsigned int)index
{
  if (index)
  {
    if ([(NSMutableArray *)self->_linearClassInfos count]>= index)
    {
      v6 = [(NSMutableArray *)self->_linearClassInfos objectAtIndexedSubscript:index - 1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enumerateInfosWithBlock:(id)block
{
  blockCopy = block;
  v5 = self->_linearClassInfos;
  v6 = blockCopy;
  v7 = [(NSMutableArray *)v5 count];
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      v9 = v7 + 1;
      v10 = malloc_type_malloc(8 * (v7 + 1), 0x80040B8603338uLL);
      *v10 = 0;
      [(NSMutableArray *)v5 getObjects:v10 + 1 range:0, v8];
      v11 = malloc_type_calloc(1uLL, ((v8 + 8) >> 3) + 4, 0xB2EC2458uLL);
      *v11 = v9;
      v12 = v11 + 1;
      v17 = 0;
      p_first_node = &self->_isaAddressToIndexMap.__table_.__first_node_;
      while (1)
      {
        p_first_node = p_first_node->__next_;
        if (!p_first_node)
        {
          break;
        }

        next_low = LODWORD(p_first_node[3].__next_);
        if (*v11 > next_low)
        {
          *(v12 + (next_low >> 3)) |= 1 << (next_low & 7);
          next_low = LODWORD(p_first_node[3].__next_);
        }

        v6[2](v6, p_first_node[2].__next_, v10[next_low], next_low, &v17);
        if (v17)
        {
          goto LABEL_16;
        }
      }

      v15 = 1;
      do
      {
        if (*v11 > v15 && ((*(v12 + (v15 >> 3)) >> (v15 & 7)) & 1) != 0)
        {
          v16 = 0;
        }

        else
        {
          v6[2](v6, [v10[v15] remoteIsa], v10[v15], v15, &v17);
          v16 = v17;
        }

        v15 = (v15 + 1);
      }

      while (v15 <= v8 && (v16 & 1) == 0);
LABEL_16:
      free(v11);
      free(v10);
    }
  }
}

- (id)_retainedLinearArrayWithReturnedCount:(unsigned int *)count
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_linearClassInfos count]+ 1;
  v6 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_linearClassInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    v10 = 1;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        objc_storeStrong(&v6[v10++], *(*(&v14 + 1) + 8 * v11++));
      }

      while (v8 != v11);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  *count = v5;
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unsigned)addFieldInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  v16[0] = info;
  v16[2] = v16;
  v4 = std::__hash_table<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::hash<VMUFieldInfo * {__strong}>,std::equal_to<VMUFieldInfo * {__strong}>,true>,std::__unordered_map_equal<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::equal_to<VMUFieldInfo * {__strong}>,std::hash<VMUFieldInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUFieldInfo * {__strong},std::piecewise_construct_t const&,std::tuple<VMUFieldInfo * const {__strong}&>,std::tuple<>>(&self->_fieldInfoToIndexMap.__table_.__bucket_list_.__ptr_, v16);
  v5 = *(v4 + 6);
  if (!v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subFieldArray = [v16[0] subFieldArray];
    v7 = [subFieldArray countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(subFieldArray);
          }

          [(VMUClassInfoMap *)self addFieldInfo:*(*(&v12 + 1) + 8 * i)];
        }

        v7 = [subFieldArray countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_linearFieldInfos addObject:v16[0]];
    v5 = [(NSMutableArray *)self->_linearFieldInfos count];
    *(v4 + 6) = v5;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unsigned)indexForFieldInfo:(id)info
{
  infoCopy = info;
  v4 = std::__hash_table<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::hash<VMUFieldInfo * {__strong}>,std::equal_to<VMUFieldInfo * {__strong}>,true>,std::__unordered_map_equal<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::equal_to<VMUFieldInfo * {__strong}>,std::hash<VMUFieldInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>>>::find<VMUFieldInfo * {__strong}>(&self->_fieldInfoToIndexMap.__table_.__bucket_list_.__ptr_, &infoCopy);
  if (v4)
  {
    v5 = *(v4 + 6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fieldInfoForIndex:(unsigned int)index
{
  if (index)
  {
    if ([(NSMutableArray *)self->_linearFieldInfos count]>= index)
    {
      v6 = [(NSMutableArray *)self->_linearFieldInfos objectAtIndexedSubscript:index - 1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)swiftFieldWithName:(const char *)name offset:(unsigned int)offset kind:(unsigned int)kind typeref:(unint64_t)typeref
{
  std::string::basic_string[abi:ne200100]<0>(&__p, name);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    offsetCopy2 = offset;
    kindCopy2 = kind;
    typerefCopy2 = typeref;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = __p;
    offsetCopy2 = offset;
    kindCopy2 = kind;
    typerefCopy2 = typeref;
  }

  v10 = std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::find<SwiftFieldKey>(&self->_swiftFieldToIndexMap.__table_.__bucket_list_.__ptr_, &v14);
  if (v10)
  {
    v11 = [(NSMutableArray *)self->_linearFieldInfos objectAtIndexedSubscript:(*(v10 + 16) - 1)];
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v11;
}

- (void)memoizeSwiftField:(id)field withName:(const char *)name offset:(unsigned int)offset kind:(unsigned int)kind typeref:(unint64_t)typeref
{
  fieldCopy = field;
  std::string::basic_string[abi:ne200100]<0>(&__p, name);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    offsetCopy2 = offset;
    kindCopy2 = kind;
    typerefCopy2 = typeref;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = __p;
    offsetCopy2 = offset;
    kindCopy2 = kind;
    typerefCopy2 = typeref;
  }

  v13 = [(VMUClassInfoMap *)self addFieldInfo:fieldCopy];
  v19 = &v15;
  *(std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::__emplace_unique_key_args<SwiftFieldKey,std::piecewise_construct_t const&,std::tuple<SwiftFieldKey const&>,std::tuple<>>(&self->_swiftFieldToIndexMap.__table_.__bucket_list_.__ptr_, &v15) + 16) = v13;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

- (BOOL)hasClassInfosDerivedFromStackBacktraces
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__VMUClassInfoMap_hasClassInfosDerivedFromStackBacktraces__block_invoke;
  v4[3] = &unk_1E827A0D0;
  v4[4] = &v5;
  [(VMUClassInfoMap *)self enumerateInfosWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __58__VMUClassInfoMap_hasClassInfosDerivedFromStackBacktraces__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = [a3 isDerivedFromStackBacktrace];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)_applyTypeOverlayRules:(void *)rules toMutableInfo:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  rulesCopy = rules;
  if (self)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v13 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__VMUClassInfoMap__applyTypeOverlayRules_toMutableInfo___block_invoke;
    v12[3] = &unk_1E827A030;
    v12[4] = self;
    [rulesCopy enumerateTypeFieldsWithBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __56__VMUClassInfoMap__applyTypeOverlayRules_toMutableInfo___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 destinationLayout];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 destinationLayout];
    [v4 addClassInfo:v5 forAddress:0];
  }
}

- (void)_applyTypeOverlay:(id)overlay
{
  v33 = *MEMORY[0x1E69E9840];
  overlayCopy = overlay;
  if (overlayCopy)
  {
    v27 = overlayCopy;
    refinementRules = [overlayCopy refinementRules];
    if ([refinementRules count])
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [(NSMutableArray *)self->_linearClassInfos count];
      v8 = v7 + 1;
      v9 = malloc_type_calloc(v7 + 1, 8uLL, 0x80040B8603338uLL);
      context = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = self->_linearClassInfos;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = *v29;
        v13 = 1;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v28 + 1) + 8 * i) mutableCopy];
            v16 = v9[v13];
            v9[v13] = v15;

            ++v13;
          }

          v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v11);
      }

      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v9 + 1 count:v7];
      if (v8 >= 2)
      {
        v17 = 1;
        v18 = v7;
        while (1)
        {
          superclassInfo = [v9[v17] superclassInfo];
          v20 = superclassInfo == 0;

          if (!v20)
          {
            superclassInfo2 = [v9[v17] superclassInfo];
            v22 = [(VMUClassInfoMap *)self indexForClassInfo:superclassInfo2];

            if (v8 <= v22 || v17 == v22)
            {
              __assert_rtn("[VMUClassInfoMap _applyTypeOverlay:]", "VMUClassInfoMap.mm", 483, "replacementIndex < linearCount + 1 && replacementIndex != i");
            }

            [v9[v17] setSuperclassInfo:v9[v22]];
          }

          ++v17;
          if (!--v18)
          {
            std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::clear(&self->_classInfoToIndexMap);
            v9[1];
            std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__emplace_unique_impl<std::pair<VMUMutableClassInfo * {__strong},unsigned int>>();
          }
        }
      }

      std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::clear(&self->_classInfoToIndexMap);
      objc_storeStrong(&self->_linearClassInfos, v26);
      free(v9);

      objc_autoreleasePoolPop(context);
    }

    overlayCopy = v27;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  return self;
}

@end