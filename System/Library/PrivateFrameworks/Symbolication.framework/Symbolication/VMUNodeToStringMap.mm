@interface VMUNodeToStringMap
- (VMUNodeToStringMap)init;
- (VMUNodeToStringMap)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)description;
- (id)stringForNode:(unsigned int)node;
- (unsigned)_indexForString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateHexAddressesInStrings:(id)strings;
- (void)resymbolicateObjectDescriptionStringsWithGraph:(id)graph;
- (void)setString:(id)string forNode:(unsigned int)node;
@end

@implementation VMUNodeToStringMap

- (VMUNodeToStringMap)init
{
  v6.receiver = self;
  v6.super_class = VMUNodeToStringMap;
  v2 = [(VMUNodeToStringMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    strings = v2->_strings;
    v2->_strings = v3;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [coderCopy encodeObject:v5 forKey:@"classVersion"];

  v6 = objc_opt_new();
  [v6 serialize32:{-[VMUNodeToStringMap count](self, "count")}];
  p_first_node = &self->_nodeToStringIndexMap.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    next_high = HIDWORD(p_first_node[2].__next_);
    [v6 serialize32:LODWORD(p_first_node[2].__next_)];
    [v6 serialize32:next_high];
  }

  [v6 serialize32:{-[VMUNodeToStringMap uniquedStringCount](self, "uniquedStringCount")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_strings;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [v6 serializeString:{*(*(&v15 + 1) + 8 * v12++), v15}];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  copyContiguousData = [v6 copyContiguousData];
  [coderCopy encodeObject:copyContiguousData forKey:@"simpleSerializerData"];

  v14 = *MEMORY[0x1E69E9840];
}

- (VMUNodeToStringMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VMUNodeToStringMap *)self init];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classVersion"];
  unsignedIntValue = [v6 unsignedIntValue];

  if (unsignedIntValue == 1)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"simpleSerializerData"];
    v9 = [[VMUSimpleDeserializer alloc] initWithData:v8];
    v30 = 0;
    v10 = [(VMUSimpleDeserializer *)v9 deserialize32WithError:&v30];
    v11 = v30;
    if (v11)
    {
      goto LABEL_4;
    }

    v14 = v10;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(&v5->_nodeToStringIndexMap, vcvtps_u32_f32(v10 / v5->_nodeToStringIndexMap.__table_.__max_load_factor_));
    if (v10)
    {
      do
      {
        v29 = 0;
        v15 = [(VMUSimpleDeserializer *)v9 deserialize32WithError:&v29];
        v11 = v29;
        LODWORD(v25) = v15;
        if (v11)
        {
          goto LABEL_4;
        }

        v27 = 0;
        v16 = [(VMUSimpleDeserializer *)v9 deserialize32WithError:&v27];
        v11 = v27;
        v28 = v16;
        if (v11)
        {
          goto LABEL_4;
        }

        std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int &,unsigned int &>(&v5->_nodeToStringIndexMap.__table_.__bucket_list_.__ptr_, &v25);
      }

      while (--v10);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(&v5->_stringToIndexMap, vcvtps_u32_f32(v14 / v5->_stringToIndexMap.__table_.__max_load_factor_));
    v26 = 0;
    v17 = [(VMUSimpleDeserializer *)v9 deserialize32WithError:&v26];
    v11 = v26;
    if (v11)
    {
LABEL_4:
      v12 = v11;

      goto LABEL_5;
    }

    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v17];
    strings = v5->_strings;
    v5->_strings = v18;

    v28 = 0;
    if (v17)
    {
      while (1)
      {
        v24 = 0;
        v20 = [(VMUSimpleDeserializer *)v9 copyDeserializedStringWithError:&v24];
        v21 = v24;
        v25 = v20;
        if (v21)
        {
          break;
        }

        if (!v20)
        {
          v25 = &stru_1F461F9C8;

          v20 = v25;
        }

        [(NSMutableArray *)v5->_strings addObject:v20];
        std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,unsigned int &>(&v5->_stringToIndexMap.__table_.__bucket_list_.__ptr_, &v25);

        if (++v28 >= v17)
        {
          goto LABEL_16;
        }
      }

      v23 = v21;

      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v13 = v5;
    goto LABEL_18;
  }

LABEL_5:
  v13 = 0;
LABEL_18:

  return v13;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  for (i = self->_nodeToStringIndexMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = *(i + 4);
    v5 = *(i + 5);
    v7 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:v5];
    [string appendFormat:@"%u  stringID %u %@\n", v6, v5, v7];
  }

  return string;
}

- (unsigned)_indexForString:(id)string
{
  stringCopy = string;
  v4 = std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::find<NSString * {__strong}>(&self->_stringToIndexMap.__table_.__bucket_list_.__ptr_, &stringCopy);
  if (v4)
  {
    v5 = (v4 + 3);
  }

  else
  {
    [(NSMutableArray *)self->_strings addObject:stringCopy];
    v8 = [(NSMutableArray *)self->_strings count]- 1;
    v5 = &v8;
    std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,unsigned int &>(&self->_stringToIndexMap.__table_.__bucket_list_.__ptr_, &stringCopy);
  }

  v6 = *v5;

  return v6;
}

- (void)setString:(id)string forNode:(unsigned int)node
{
  stringCopy = string;
  nodeCopy = node;
  if (stringCopy)
  {
    [(VMUNodeToStringMap *)self _indexForString:stringCopy];
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int &,unsigned int &>(&self->_nodeToStringIndexMap.__table_.__bucket_list_.__ptr_, &nodeCopy);
  }
}

- (id)stringForNode:(unsigned int)node
{
  nodeCopy = node;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&self->_nodeToStringIndexMap.__table_.__bucket_list_.__ptr_, &nodeCopy);
  if (v4)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&self->_nodeToStringIndexMap.__table_.__bucket_list_.__ptr_, &nodeCopy);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v4 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:*(v5 + 5)];
  }

  return v4;
}

- (void)resymbolicateObjectDescriptionStringsWithGraph:(id)graph
{
  graphCopy = graph;
  selfCopy = self;
  LODWORD(self) = [(NSMutableArray *)self->_strings count];
  v5 = malloc_type_calloc(1uLL, ((self + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v5 = self;
  symbolStore = [graphCopy symbolStore];
  [symbolStore symbolicator];

  next = selfCopy->_nodeToStringIndexMap.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = v5 + 1;
    while (1)
    {
      v9 = *(next + 4);
      v10 = *(next + 5);
      if (*v5 <= v10)
      {
        goto LABEL_6;
      }

      v11 = *(v8 + (v10 >> 3));
      v12 = 1 << (v10 & 7);
      if ((v12 & v11) == 0)
      {
        break;
      }

LABEL_8:
      next = *next;
      if (!next)
      {
        goto LABEL_9;
      }
    }

    *(v8 + (v10 >> 3)) = v11 | v12;
LABEL_6:
    if (graphCopy)
    {
      [graphCopy nodeDetails:v9];
    }

    goto LABEL_8;
  }

LABEL_9:
  free(v5);
}

- (void)enumerateHexAddressesInStrings:(id)strings
{
  v21 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_strings;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 rangeOfString:@" " options:4];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = [v9 substringFromIndex:v10 + 1];
          if (checkStringIsValidHexAddress(v12))
          {
            v13 = v12;
            v14 = strtoll([v12 UTF8String], 0, 16);
            stringsCopy[2](stringsCopy, v14);
          }

          objc_autoreleasePoolPop(v11);
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end