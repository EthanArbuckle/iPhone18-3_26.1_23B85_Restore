@interface WBSSetInt64
- (WBSSetInt64)init;
- (WBSSetInt64)initWithCoder:(id)a3;
- (WBSSetInt64)initWithInt64:(int64_t)a3;
- (WBSSetInt64)initWithMovableSet:(void *)a3;
- (WBSSetInt64)initWithSet:(const void *)a3;
- (id).cxx_construct;
- (id)commaSeparatedValues;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSSetInt64

- (WBSSetInt64)init
{
  v6.receiver = self;
  v6.super_class = WBSSetInt64;
  v2 = [(WBSSetInt64 *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (WBSSetInt64)initWithInt64:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WBSSetInt64;
  v8 = a3;
  v3 = [(WBSSetInt64 *)&v7 init];
  v4 = v3;
  if (v3)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v3->_set.__table_.__bucket_list_.__ptr_, &v8);
    v5 = v4;
  }

  return v4;
}

- (WBSSetInt64)initWithSet:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = WBSSetInt64;
  v4 = [(WBSSetInt64 *)&v9 init];
  v5 = v4;
  if (v4)
  {
    p_set = &v4->_set;
    if (&v5->_set != a3)
    {
      v5->_set.__table_.__max_load_factor_ = *(a3 + 8);
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(p_set, *(a3 + 2), 0);
    }

    v7 = v5;
  }

  return v5;
}

- (WBSSetInt64)initWithMovableSet:(void *)a3
{
  v8.receiver = self;
  v8.super_class = WBSSetInt64;
  v4 = [(WBSSetInt64 *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__move_assign(&v4->_set, a3);
    v6 = v5;
  }

  return v5;
}

- (WBSSetInt64)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSSetInt64;
  v5 = [(WBSSetInt64 *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v7 = [v6 length];
    if (v7 >= 8)
    {
      v8 = v7 >> 3;
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(&v5->_set, vcvtps_u32_f32((v7 >> 3) / v5->_set.__table_.__max_load_factor_));
      v9 = [v6 bytes];
      do
      {
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v5->_set.__table_.__bucket_list_.__ptr_, v9++);
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
  size = self->_set.__table_.__size_;
  if (size)
  {
    v5 = [MEMORY[0x1E695DF88] dataWithLength:8 * size];
    v6 = [v5 mutableBytes];
    for (i = self->_set.__table_.__first_node_.__next_; i; i = *i)
    {
      *v6++ = i[2];
    }

    [v8 encodeObject:v5 forKey:@"data"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] data];
    [v8 encodeObject:v5 forKey:@"data"];
  }
}

- (id)commaSeparatedValues
{
  memset(&v12, 0, sizeof(v12));
  std::string::reserve(&v12, 3 * self->_set.__table_.__size_);
  next = self->_set.__table_.__first_node_.__next_;
  if (next)
  {
    v4 = 1;
    do
    {
      v5 = next[2];
      if ((v4 & 1) == 0)
      {
        std::string::append(&v12, ",", 1uLL);
      }

      std::to_string(&__p, v5);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v12, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = 0;
      next = *next;
    }

    while (next);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v12;
  }

  else
  {
    v8 = v12.__r_.__value_.__r.__words[0];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:1];
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end