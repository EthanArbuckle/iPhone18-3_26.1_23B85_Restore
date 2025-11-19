@interface VMUSimpleDeserializer
- (VMUSimpleDeserializer)initWithData:(id)a3;
- (const)copyDeserializedNullTerminatedBytesWithError:(id *)a3;
- (id).cxx_construct;
- (id)copyDeserializedStringWithError:(id *)a3;
- (id)copyDeserializedStringWithID:(unsigned int)a3 error:(id *)a4;
- (unint64_t)deserialize64WithError:(id *)a3;
- (unsigned)_deserializeValues:(unsigned int)a3 error:(id *)a4;
@end

@implementation VMUSimpleDeserializer

- (VMUSimpleDeserializer)initWithData:(id)a3
{
  v5 = a3;
  v6 = [(VMUSimpleDeserializer *)self init];
  if (v6)
  {
    v7 = [v5 length];
    if (v7 > 0xF && (objc_storeStrong(&v6->_data, a3), v8 = [v5 bytes], v9 = v8[3], v7 >= v9) && (v11 = v8[1], v12 = v8[2], v13 = v12 >= v11, v14 = v12 - v11, v13) && v12 <= v9)
    {
      v6->super._intRegCapacity = v14;
      v6->super._stringRegCapacity = v8[3] - v8[2];
      v15 = v8 + v8[2];
      v6->super._intRegion = v8 + v8[1];
      v6->super._stringRegion = v15;
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)deserialize64WithError:(id *)a3
{
  Field = _nextField(self->super._intRegion, self->super._intRegCapacity, &self->super._cursor, a3);
  if (a3)
  {
    if (*a3)
    {
      return 0;
    }

    v6 = _nextField(self->super._intRegion, self->super._intRegCapacity, &self->super._cursor, a3);
    if (*a3)
    {
      return 0;
    }
  }

  else
  {
    v6 = _nextField(self->super._intRegion, self->super._intRegCapacity, &self->super._cursor, 0);
  }

  return v6 | (Field << 32);
}

- (id)copyDeserializedStringWithID:(unsigned int)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v27 = a3;
  if (a3 == -1)
  {
LABEL_11:
    v21 = 0;
LABEL_12:
    v22 = *MEMORY[0x1E69E9840];
    return v21;
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&self->_stringCache.__table_.__bucket_list_.__ptr_, &v27);
  if (v27 >= self->super._stringRegCapacity)
  {
    v10 = serializerLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _nextField(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    if (a4)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = OOBDOMAIN;
      v28 = *MEMORY[0x1E696A578];
      v29[0] = @"Out-of-bound access.";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *a4 = [v18 errorWithDomain:v19 code:1 userInfo:v20];
    }

    goto LABEL_11;
  }

  if (!v6)
  {
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    v24 = [v23 initWithUTF8String:&self->super._stringRegion[v27]];
    v25 = v27;
    v21 = v24;
    v26 = v21;
    std::__hash_table<std::__hash_value_type<unsigned int,NSString * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,NSString * {__strong}>>(&self->_stringCache.__table_.__bucket_list_.__ptr_, &v25);

    goto LABEL_12;
  }

  v7 = v6[3];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyDeserializedStringWithError:(id *)a3
{
  Field = _nextField(self->super._intRegion, self->super._intRegCapacity, &self->super._cursor, a3);
  if (a3 && *a3)
  {
    return 0;
  }

  return [(VMUSimpleDeserializer *)self copyDeserializedStringWithID:Field error:a3];
}

- (const)copyDeserializedNullTerminatedBytesWithError:(id *)a3
{
  Field = _nextField(self->super._intRegion, self->super._intRegCapacity, &self->super._cursor, a3);
  if (a3)
  {
    if (*a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = Field == -1;
    }

    if (!v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (Field == -1)
  {
    return 0;
  }

LABEL_9:
  stringRegCapacity = self->super._stringRegCapacity;
  v9 = stringRegCapacity - Field;
  if (stringRegCapacity <= Field)
  {
    [VMUSimpleDeserializer copyDeserializedNullTerminatedBytesWithError:];
  }

  v10 = &self->super._stringRegion[Field];

  return strndup(v10, v9);
}

- (unsigned)_deserializeValues:(unsigned int)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  cursor = self->super._cursor;
  v5 = cursor + 4 * a3;
  if (v5 <= self->super._intRegCapacity)
  {
    v18 = &self->super._intRegion[cursor];
    self->super._cursor = v5;
  }

  else
  {
    v7 = serializerLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _nextField(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    if (a4)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = OOBDOMAIN;
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"Out-of-bound access.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a4 = [v15 errorWithDomain:v16 code:1 userInfo:v17];
    }

    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 18) = 1065353216;
  return self;
}

@end