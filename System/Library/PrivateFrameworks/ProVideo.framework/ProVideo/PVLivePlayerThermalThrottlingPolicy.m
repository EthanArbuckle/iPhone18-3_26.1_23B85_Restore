@interface PVLivePlayerThermalThrottlingPolicy
- (PVLivePlayerThermalThrottlingPolicy)init;
- (id).cxx_construct;
- (id)controlParametersForThermalLevel:(int)a3;
- (id)description;
- (id)populatedControlParametersForCurrentThermalLevel;
- (id)populatedControlParametersForThermalLevel:(int)a3;
- (void)dealloc;
- (void)setThermalLevel:(int)a3 controlParameters:(id)a4;
@end

@implementation PVLivePlayerThermalThrottlingPolicy

- (PVLivePlayerThermalThrottlingPolicy)init
{
  v3.receiver = self;
  v3.super_class = PVLivePlayerThermalThrottlingPolicy;
  if ([(PVLivePlayerThermalThrottlingPolicy *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  lock = self->_lock;
  if (lock)
  {
    (*(lock->var0 + 1))(lock, a2);
  }

  std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::destroy(&self->_policy, self->_policy.__tree_.__end_node_.__left_);
  self->_policy.__tree_.__begin_node_ = &self->_policy.__tree_.__end_node_;
  self->_policy.__tree_.__size_ = 0;
  self->_policy.__tree_.__end_node_.__left_ = 0;
  v4.receiver = self;
  v4.super_class = PVLivePlayerThermalThrottlingPolicy;
  [(PVLivePlayerThermalThrottlingPolicy *)&v4 dealloc];
}

- (void)setThermalLevel:(int)a3 controlParameters:(id)a4
{
  v9 = a3;
  v6 = a4;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  if (v6)
  {
    v10 = &v9;
    v8 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel const&>,std::tuple<>>(&self->_policy, &v9);
    objc_storeStrong(v8 + 5, a4);
  }

  else
  {
    std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>>>::__erase_unique<PVSPI_OSThermalPressureLevel>(&self->_policy, &v9);
  }

  HGSynchronizable::Unlock(lock);
}

- (id)controlParametersForThermalLevel:(int)a3
{
  v7 = a3;
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  v8 = &v7;
  v5 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel const&>,std::tuple<>>(&self->_policy, &v7)[5];
  HGSynchronizable::Unlock(lock);

  return v5;
}

- (id)populatedControlParametersForThermalLevel:(int)a3
{
  v16 = a3;
  lock = self->_lock;
  v14 = lock;
  v15 = 0;
  HGSynchronizable::Lock(lock);
  v17 = &v16;
  v5 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel const&>,std::tuple<>>(&self->_policy, &v16)[5];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 copy];
  }

  else
  {
    v7 = [PVLivePlayerThrottlingControlParameters CreateControllerParameters:0];
  }

  v8 = v16;
  v13 = v16;
  if (v7)
  {
    v9 = [v7 hasNilParameter] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 1 && (v9 & 1) == 0)
  {
    do
    {
      v13 = PVThermalMonitorPreviousLevel(v8);
      v17 = &v13;
      v10 = std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::__map_value_compare<PVSPI_OSThermalPressureLevel,std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>,std::less<PVSPI_OSThermalPressureLevel>,true>,std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel,PVLivePlayerThrottlingControlParameters * {__strong}>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel,std::piecewise_construct_t const&,std::tuple<PVSPI_OSThermalPressureLevel const&>,std::tuple<>>(&self->_policy, &v13)[5];
      [v7 updateNilsFrom:v10];
      if (v7)
      {
        v11 = [v7 hasNilParameter] ^ 1;
      }

      else
      {
        v11 = 0;
      }

      v8 = v13;
    }

    while (v13 >= 1 && (v11 & 1) == 0);
  }

  HGSynchronizable::Unlock(lock);

  return v7;
}

- (id)populatedControlParametersForCurrentThermalLevel
{
  v3 = +[PVThermalMonitor sharedInstance];
  v4 = -[PVLivePlayerThermalThrottlingPolicy populatedControlParametersForThermalLevel:](self, "populatedControlParametersForThermalLevel:", [v3 thermalLevel]);

  return v4;
}

- (id)description
{
  v2 = self;
  v34 = 0;
  v3 = 0uLL;
  *__src = 0u;
  p_policy = &self->_policy;
  begin_node = self->_policy.__tree_.__begin_node_;
  p_end_node = &self->_policy.__tree_.__end_node_;
  if (begin_node != &self->_policy.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      v8 = begin_node[5].__left_;
      v9 = __src[1];
      if (__src[1] >= v34)
      {
        v11 = __src[0];
        v12 = __src[1] - __src[0];
        v13 = (__src[1] - __src[0]) >> 2;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v15 = v34 - __src[0];
        if ((v34 - __src[0]) >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(__src, v16);
        }

        *(4 * v13) = left;
        v10 = (4 * v13 + 4);
        memcpy(0, v11, v12);
        v17 = __src[0];
        __src[0] = 0;
        __src[1] = v10;
        v34 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *__src[1] = left;
        v10 = v9 + 4;
      }

      __src[1] = v10;

      v18 = begin_node[1].__left_;
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = v18->__left_;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = begin_node[2].__left_;
          v20 = v19->__left_ == begin_node;
          begin_node = v19;
        }

        while (!v20);
      }

      begin_node = v19;
    }

    while (v19 != p_end_node);
    v3 = *__src;
    v2 = self;
  }

  v21 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 2);
  if (*(&v3 + 1) == v3)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PVSPI_OSThermalPressureLevel *,false>(v3, *(&v3 + 1), &v35, v22, 1);
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p>", objc_opt_class(), v2];
  v24 = [v23 mutableCopy];

  v25 = __src[0];
  for (i = __src[1]; v25 != i; ++v25)
  {
    v32 = *v25;
    v27 = PVThermalMonitorLevelName(v32);
    v28 = [v27 UTF8String];
    v35 = &v32;
    v29 = [std::__tree<std::__value_type<PVSPI_OSThermalPressureLevel PVLivePlayerThrottlingControlParameters * {:std::__map_value_compare<PVSPI_OSThermalPressureLevel :{std::__value_type<PVSPI_OSThermalPressureLevel, PVLivePlayerThrottlingControlParameters * {__strong}>, std::less<PVSPI_OSThermalPressureLevel>, true>, std::allocator<std::__value_type<PVSPI_OSThermalPressureLevel, PVLivePlayerThrottlingControlParameters * {__strong}>>>::__emplace_unique_key_args<PVSPI_OSThermalPressureLevel, std::piecewise_construct_t const&, std::tuple<PVSPI_OSThermalPressureLevel const&>, std::tuple<>>(p_policy, &v32)[5], "description"}strong}>];
    [v24 appendFormat:@"\n %15s - %@", v28, v29];
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  return v24;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 2) = self + 24;
  return self;
}

@end