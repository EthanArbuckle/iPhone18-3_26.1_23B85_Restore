@interface VMUSimpleSerializer
- (id).cxx_construct;
- (id)copyContiguousData;
- (unsigned)serializeNullTerminatedBytes:(const char *)bytes;
- (unsigned)serializeString:(id)string;
- (void)dealloc;
- (void)serialize64:(unint64_t)serialize64;
@end

@implementation VMUSimpleSerializer

- (void)dealloc
{
  intRegion = self->super._intRegion;
  if (intRegion)
  {
    free(intRegion);
    self->super._intRegion = 0;
  }

  stringRegion = self->super._stringRegion;
  if (stringRegion)
  {
    free(stringRegion);
    self->super._stringRegion = 0;
  }

  v5.receiver = self;
  v5.super_class = VMUSimpleSerializer;
  [(VMUSimpleSerializer *)&v5 dealloc];
}

- (void)serialize64:(unint64_t)serialize64
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = __ROR8__(serialize64, 32);
  self->super._intRegion = _appendToBuffer(self->super._intRegion, &self->super._intRegCapacity, &self->super._cursor, v4, 8uLL);
  v3 = *MEMORY[0x1E69E9840];
}

- (unsigned)serializeString:(id)string
{
  stringCopy = string;
  v5 = objc_autoreleasePoolPush();
  LODWORD(self) = -[VMUSimpleSerializer serializeNullTerminatedBytes:](self, "serializeNullTerminatedBytes:", [stringCopy UTF8String]);
  objc_autoreleasePoolPop(v5);

  return self;
}

- (unsigned)serializeNullTerminatedBytes:(const char *)bytes
{
  LODWORD(v4) = -1;
  __src = -1;
  if (bytes)
  {
    bytesCopy = bytes;
    v6 = std::__hash_table<std::__hash_value_type<char const*,unsigned int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,unsigned int>,cstring_callbacks,cstring_callbacks,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,unsigned int>,cstring_callbacks,cstring_callbacks,true>,std::allocator<std::__hash_value_type<char const*,unsigned int>>>::__emplace_unique_key_args<char const*,char const*,unsigned int &>(&self->_internMap.__table_.__bucket_list_.__ptr_, &bytesCopy);
    v7 = v6;
    if (v8)
    {
      __src = self->_internCursor;
      v4 = __src;
      v9 = strlen(bytes);
      v10 = _appendToBuffer(self->super._stringRegion, &self->super._stringRegCapacity, &self->_internCursor, bytes, (v9 + 1));
      v11 = &v10[v4];
      if (strcmp(&v10[v4], bytes))
      {
        [VMUSimpleSerializer serializeNullTerminatedBytes:];
      }

      v7[2] = v11;
      v12 = v10 - self->super._stringRegion;
      if (v12)
      {
        for (i = self->_internMap.__table_.__first_node_.__next_; i; i = *i)
        {
          v14 = i[2];
          if (v14 != v11)
          {
            i[2] = &v14[v12];
          }
        }

        self->super._stringRegion = v10;
      }
    }

    else
    {
      LODWORD(v4) = *(v6 + 6);
      __src = v4;
    }
  }

  self->super._intRegion = _appendToBuffer(self->super._intRegion, &self->super._intRegCapacity, &self->super._cursor, &__src, 4uLL);
  return v4;
}

- (id)copyContiguousData
{
  v3 = self->super._cursor + self->_internCursor + 16;
  LODWORD(v7) = [objc_opt_class() version];
  HIDWORD(v7) = 16;
  LODWORD(v8) = self->super._cursor + 16;
  HIDWORD(v8) = v3;
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{v3, v7, v8}];
  [v4 replaceBytesInRange:0 withBytes:{16, &v7}];
  cursor = self->super._cursor;
  [v4 replaceBytesInRange:16 withBytes:{cursor, self->super._intRegion}];
  [v4 replaceBytesInRange:cursor + 16 withBytes:{self->_internCursor, self->super._stringRegion}];
  return v4;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 18) = 1065353216;
  return self;
}

@end