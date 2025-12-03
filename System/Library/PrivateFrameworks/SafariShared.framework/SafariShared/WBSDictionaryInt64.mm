@interface WBSDictionaryInt64
- (WBSDictionaryInt64)init;
- (WBSDictionaryInt64)initWithCoder:(id)coder;
- (WBSDictionaryInt64)initWithMap:(const void *)map;
- (WBSDictionaryInt64)initWithMovableMap:(void *)map;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSDictionaryInt64

- (WBSDictionaryInt64)init
{
  v6.receiver = self;
  v6.super_class = WBSDictionaryInt64;
  v2 = [(WBSDictionaryInt64 *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (WBSDictionaryInt64)initWithMap:(const void *)map
{
  v9.receiver = self;
  v9.super_class = WBSDictionaryInt64;
  v4 = [(WBSDictionaryInt64 *)&v9 init];
  v5 = v4;
  if (v4)
  {
    p_map = &v4->_map;
    if (&v5->_map != map)
    {
      v5->_map.__table_.__max_load_factor_ = *(map + 8);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<long long,long long>,void *> *>>(p_map, *(map + 2), 0);
    }

    v7 = v5;
  }

  return v5;
}

- (WBSDictionaryInt64)initWithMovableMap:(void *)map
{
  v8.receiver = self;
  v8.super_class = WBSDictionaryInt64;
  v4 = [(WBSDictionaryInt64 *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__move_assign(&v4->_map, map);
    v6 = v5;
  }

  return v5;
}

- (WBSDictionaryInt64)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WBSDictionaryInt64;
  v5 = [(WBSDictionaryInt64 *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v7 = [v6 length];
    if (v7 >= 0x10)
    {
      v8 = v7 >> 4;
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(&v5->_map, vcvtps_u32_f32((v7 >> 4) / v5->_map.__table_.__max_load_factor_));
      bytes = [v6 bytes];
      do
      {
        v12 = *bytes;
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::pair<long long,long long>>(&v5->_map.__table_.__bucket_list_.__ptr_, &v12);
        ++bytes;
        --v8;
      }

      while (v8);
    }

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  size = self->_map.__table_.__size_;
  if (size)
  {
    data = [MEMORY[0x1E695DF88] dataWithLength:16 * size];
    mutableBytes = [data mutableBytes];
    for (i = self->_map.__table_.__first_node_.__next_; i; i = *i)
    {
      *mutableBytes = i[2];
      mutableBytes[1] = i[3];
      mutableBytes += 2;
    }

    [coderCopy encodeObject:data forKey:@"data"];
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
    [coderCopy encodeObject:data forKey:@"data"];
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end