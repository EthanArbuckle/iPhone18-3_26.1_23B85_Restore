@interface WBSDictionaryInt64
- (WBSDictionaryInt64)init;
- (WBSDictionaryInt64)initWithCoder:(id)a3;
- (WBSDictionaryInt64)initWithMap:(const void *)a3;
- (WBSDictionaryInt64)initWithMovableMap:(void *)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
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

- (WBSDictionaryInt64)initWithMap:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = WBSDictionaryInt64;
  v4 = [(WBSDictionaryInt64 *)&v9 init];
  v5 = v4;
  if (v4)
  {
    p_map = &v4->_map;
    if (&v5->_map != a3)
    {
      v5->_map.__table_.__max_load_factor_ = *(a3 + 8);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<long long,long long>,void *> *>>(p_map, *(a3 + 2), 0);
    }

    v7 = v5;
  }

  return v5;
}

- (WBSDictionaryInt64)initWithMovableMap:(void *)a3
{
  v8.receiver = self;
  v8.super_class = WBSDictionaryInt64;
  v4 = [(WBSDictionaryInt64 *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__move_assign(&v4->_map, a3);
    v6 = v5;
  }

  return v5;
}

- (WBSDictionaryInt64)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WBSDictionaryInt64;
  v5 = [(WBSDictionaryInt64 *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v7 = [v6 length];
    if (v7 >= 0x10)
    {
      v8 = v7 >> 4;
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(&v5->_map, vcvtps_u32_f32((v7 >> 4) / v5->_map.__table_.__max_load_factor_));
      v9 = [v6 bytes];
      do
      {
        v12 = *v9;
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::pair<long long,long long>>(&v5->_map.__table_.__bucket_list_.__ptr_, &v12);
        ++v9;
        --v8;
      }

      while (v8);
    }

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  size = self->_map.__table_.__size_;
  if (size)
  {
    v5 = [MEMORY[0x1E695DF88] dataWithLength:16 * size];
    v6 = [v5 mutableBytes];
    for (i = self->_map.__table_.__first_node_.__next_; i; i = *i)
    {
      *v6 = i[2];
      v6[1] = i[3];
      v6 += 2;
    }

    [v8 encodeObject:v5 forKey:@"data"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] data];
    [v8 encodeObject:v5 forKey:@"data"];
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