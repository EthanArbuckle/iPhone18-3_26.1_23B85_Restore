@interface VMURangeToStringMap
- (VMURangeToStringMap)init;
- (VMURangeToStringMap)initWithCoder:(id)coder;
- (_VMURange)rangeContainingAddress:(unint64_t)address;
- (_VMURange)rangeForString:(id)string startingAtAddress:(unint64_t)address;
- (id).cxx_construct;
- (id)description;
- (id)stringForAddress:(unint64_t)address;
- (unsigned)indexForString:(id)string insertIfMissing:(BOOL)missing;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateHexAddressesInStrings:(id)strings;
- (void)enumerateRanges:(id)ranges;
- (void)resymbolicateStringsWithSymbolicator:(_CSTypeRef)symbolicator;
- (void)setString:(id)string forRange:(_VMURange)range;
- (void)sort;
@end

@implementation VMURangeToStringMap

- (VMURangeToStringMap)init
{
  v6.receiver = self;
  v6.super_class = VMURangeToStringMap;
  v2 = [(VMURangeToStringMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    strings = v2->_strings;
    v2->_strings = v3;

    v2->_sorted = 1;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [coderCopy encodeObject:v5 forKey:@"classVersion"];

  v6 = objc_opt_new();
  [v6 serialize32:{-[VMURangeToStringMap count](self, "count")}];
  begin = self->_rangeAndStringVector.__begin_;
  end = self->_rangeAndStringVector.__end_;
  while (begin != end)
  {
    v9 = *(begin + 1);
    v10 = *(begin + 4);
    [v6 serialize64:*begin];
    [v6 serialize64:v9];
    [v6 serialize32:v10];
    begin = (begin + 24);
  }

  [v6 serialize32:{-[VMURangeToStringMap uniquedStringCount](self, "uniquedStringCount")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_strings;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v6 serializeString:{*(*(&v17 + 1) + 8 * v14++), v17}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  copyContiguousData = [v6 copyContiguousData];
  [coderCopy encodeObject:copyContiguousData forKey:@"simpleSerializerData"];

  v16 = *MEMORY[0x1E69E9840];
}

- (VMURangeToStringMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VMURangeToStringMap *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  v5->_sorted = 0;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classVersion"];
  unsignedIntValue = [v7 unsignedIntValue];

  if (unsignedIntValue == 1)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"simpleSerializerData"];
    v10 = [[VMUSimpleDeserializer alloc] initWithData:v9];
    v34 = 0;
    v11 = [(VMUSimpleDeserializer *)v10 deserialize32WithError:&v34];
    v12 = v34;
    if (v12)
    {
      goto LABEL_4;
    }

    if (v11)
    {
      v15 = v11;
      do
      {
        v31 = 0;
        v16 = [(VMUSimpleDeserializer *)v10 deserialize64WithError:&v31];
        v12 = v31;
        *&v32 = v16;
        if (v12)
        {
          goto LABEL_4;
        }

        v30 = 0;
        v17 = [(VMUSimpleDeserializer *)v10 deserialize64WithError:&v30];
        v12 = v30;
        *(&v32 + 1) = v17;
        if (v12)
        {
          goto LABEL_4;
        }

        v29 = 0;
        v18 = [(VMUSimpleDeserializer *)v10 deserialize32WithError:&v29];
        v12 = v29;
        v33 = v18;
        if (v12)
        {
          goto LABEL_4;
        }

        std::vector<RangeAndString>::push_back[abi:ne200100](&v6->_rangeAndStringVector, &v32);
      }

      while (--v15);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(&v6->_stringToIndexMap, vcvtps_u32_f32(v11 / v6->_stringToIndexMap.__table_.__max_load_factor_));
    v28 = 0;
    v19 = [(VMUSimpleDeserializer *)v10 deserialize32WithError:&v28];
    v12 = v28;
    if (v12)
    {
LABEL_4:
      v13 = v12;

      goto LABEL_5;
    }

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v19];
    strings = v6->_strings;
    v6->_strings = v20;

    v27 = 0;
    if (v19)
    {
      while (1)
      {
        v26 = 0;
        v22 = [(VMUSimpleDeserializer *)v10 copyDeserializedStringWithError:&v26];
        v23 = v26;
        *&v32 = v22;
        if (v23)
        {
          break;
        }

        [(NSMutableArray *)v6->_strings addObject:v22];
        std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,unsigned int &>(&v6->_stringToIndexMap.__table_.__bucket_list_.__ptr_, &v32);

        if (++v27 >= v19)
        {
          goto LABEL_16;
        }
      }

      v25 = v23;

      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v14 = v6;
    goto LABEL_18;
  }

LABEL_5:
  v14 = 0;
LABEL_18:

  return v14;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  for (i = self->_rangeAndStringVector.__begin_; i != self->_rangeAndStringVector.__end_; i = (i + 24))
  {
    v5 = *i;
    v6 = *(i + 1);
    v7 = *(i + 4);
    v8 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:v7];
    [string appendFormat:@"%#llx-%#llx[%llu] stringID %u %@\n", v5, v6 + v5, v6, v7, v8];
  }

  return string;
}

- (void)sort
{
  if (!self->_sorted)
  {
    begin = self->_rangeAndStringVector.__begin_;
    end = self->_rangeAndStringVector.__end_;
    v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3));
    v8 = CompareRangeAndString;
    if (end == begin)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,false>(begin, end, &v8, v7, 1, v2);
    self->_sorted = 1;
  }
}

- (unsigned)indexForString:(id)string insertIfMissing:(BOOL)missing
{
  missingCopy = missing;
  stringCopy = string;
  if (!stringCopy)
  {
    return -1;
  }

  v6 = std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::find<NSString * {__strong}>(&self->_stringToIndexMap.__table_.__bucket_list_.__ptr_, &stringCopy);
  if (v6)
  {
    v7 = *(v6 + 6);
  }

  else if (missingCopy)
  {
    [(NSMutableArray *)self->_strings addObject:stringCopy];
    v9 = [(NSMutableArray *)self->_strings count]- 1;
    std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,unsigned int &>(&self->_stringToIndexMap.__table_.__bucket_list_.__ptr_, &stringCopy);
    v7 = v9;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)setString:(id)string forRange:(_VMURange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (stringCopy)
  {
    *(&v8 + 1) = length;
    *&v8 = location;
    v9 = [(VMURangeToStringMap *)self indexForString:stringCopy insertIfMissing:1];
    if (self->_sorted && [(VMURangeToStringMap *)self count]&& location < *(self->_rangeAndStringVector.__end_ - 2) + *(self->_rangeAndStringVector.__end_ - 3))
    {
      self->_sorted = 0;
    }

    std::vector<RangeAndString>::push_back[abi:ne200100](&self->_rangeAndStringVector, &v8);
  }
}

- (id)stringForAddress:(unint64_t)address
{
  if (!self->_sorted)
  {
    [(VMURangeToStringMap *)self sort];
  }

  begin = self->_rangeAndStringVector.__begin_;
  end = self->_rangeAndStringVector.__end_;
  if (end != begin)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    end = self->_rangeAndStringVector.__begin_;
    do
    {
      v8 = v7 >> 1;
      v9 = (end + 24 * (v7 >> 1));
      v11 = *v9;
      v10 = (v9 + 3);
      v7 += ~(v7 >> 1);
      if (v11 > address)
      {
        v7 = v8;
      }

      else
      {
        end = v10;
      }
    }

    while (v7);
  }

  if (end == begin || address - *(end - 3) >= *(end - 2))
  {
    v12 = 0;
  }

  else
  {
    v12 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:*(end - 2)];
  }

  return v12;
}

- (_VMURange)rangeContainingAddress:(unint64_t)address
{
  if (!self->_sorted)
  {
    [(VMURangeToStringMap *)self sort];
  }

  begin = self->_rangeAndStringVector.__begin_;
  end = self->_rangeAndStringVector.__end_;
  if (end != begin)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    end = self->_rangeAndStringVector.__begin_;
    do
    {
      v8 = v7 >> 1;
      v9 = (end + 24 * (v7 >> 1));
      v11 = *v9;
      v10 = (v9 + 3);
      v7 += ~(v7 >> 1);
      if (v11 > address)
      {
        v7 = v8;
      }

      else
      {
        end = v10;
      }
    }

    while (v7);
  }

  if (end == begin || (v12 = *(end - 3), v13 = *(end - 2), address - v12 >= v13))
  {
    v13 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v13;
  result.location = v12;
  return result;
}

- (_VMURange)rangeForString:(id)string startingAtAddress:(unint64_t)address
{
  stringCopy = string;
  v7 = [(VMURangeToStringMap *)self indexForString:stringCopy insertIfMissing:0];
  if (v7 != -1)
  {
    if (!self->_sorted)
    {
      [(VMURangeToStringMap *)self sort];
    }

    begin = self->_rangeAndStringVector.__begin_;
    end = self->_rangeAndStringVector.__end_;
    if (end != begin)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      do
      {
        v11 = v10 >> 1;
        v12 = (begin + 24 * (v10 >> 1));
        v14 = *v12;
        v13 = (v12 + 3);
        v10 += ~(v10 >> 1);
        if (v14 > address)
        {
          v10 = v11;
        }

        else
        {
          begin = v13;
        }
      }

      while (v10);
      while (begin != end)
      {
        if (*(begin + 4) == v7)
        {
          v16 = *begin;
          v15 = *(begin + 1);
          goto LABEL_15;
        }

        begin = (begin + 24);
      }
    }
  }

  v15 = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:

  v17 = v16;
  v18 = v15;
  result.length = v18;
  result.location = v17;
  return result;
}

- (void)resymbolicateStringsWithSymbolicator:(_CSTypeRef)symbolicator
{
  v4 = [(NSMutableArray *)self->_strings count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:i];
      if ([v7 hasPrefix:@"0x"])
      {
        v8 = [v7 rangeOfString:@" "];
        v9 = [v7 substringToIndex:v8];
        if (checkStringIsValidHexAddress(v9))
        {
          strtoll([v9 UTF8String], 0, 16);
          CSSymbolicatorGetSymbolWithAddressAtTime();
          if ((CSIsNull() & 1) == 0 && (CSSymbolIsUnnamed() & 1) == 0)
          {
            v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolGetName()];
            v11 = [v7 stringByReplacingCharactersInRange:0 withString:{v8, v10}];

            [(NSMutableArray *)self->_strings setObject:v11 atIndexedSubscript:i];
          }
        }
      }
    }
  }
}

- (void)enumerateRanges:(id)ranges
{
  rangesCopy = ranges;
  begin = self->_rangeAndStringVector.__begin_;
  for (i = self->_rangeAndStringVector.__end_; begin != i; begin = (begin + 24))
  {
    (*(rangesCopy + 2))(rangesCopy, *begin, *(begin + 1));
  }
}

- (void)enumerateHexAddressesInStrings:(id)strings
{
  v20 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_strings;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 hasPrefix:{@"0x", v15}])
        {
          v10 = [v9 rangeOfString:@" "];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = [v9 substringToIndex:v10];
            if (checkStringIsValidHexAddress(v11))
            {
              v12 = v11;
              v13 = strtoll([v11 UTF8String], 0, 16);
              stringsCopy[2](stringsCopy, v13);
            }
          }
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

@end