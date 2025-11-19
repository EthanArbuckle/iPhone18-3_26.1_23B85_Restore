@interface RPBHost_Delegate
- (BOOL)getRemoteProcessingBlockParameter:(float *)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8;
- (BOOL)getRemoteProcessingBlockParameterInfo:(id)a3 forScope:(unsigned int)a4 object:(id)a5 withError:(id *)a6;
- (BOOL)getRemoteProcessingBlockProperty:(id *)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8;
- (BOOL)getRemoteProcessingBlockPropertyInfo:(id)a3 forScope:(unsigned int)a4 object:(id)a5 withError:(id *)a6;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)setRemoteProcessingBlockParameter:(float)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8;
- (BOOL)setRemoteProcessingBlockProperty:(id)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8;
- (id).cxx_construct;
@end

@implementation RPBHost_Delegate

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  return self;
}

- (BOOL)setRemoteProcessingBlockProperty:(id)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a7;
  if (v14)
  {
    CFRetain(v14);
    v26 = v14;
    if (a5 < 8)
    {
      CFRetain(v14);
      goto LABEL_5;
    }

LABEL_14:
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_cast::bad_cast(exception);
  }

  v26 = 0;
  if (a5 >= 8)
  {
    goto LABEL_14;
  }

LABEL_5:
  cf = v14;
  std::function<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,applesauce::CF::TypeRef)>::operator()(&v22, self->set_property_callback.__f_.__f_, a4, a5, a6, &cf);
  v20 = a8;
  vp::Expected<void,vp::rpb::Error>::on_error<vp::rpb::handle_error(NSError * {__autoreleasing}*)::{lambda(vp::rpb::Error const&)#1}>(&v24, &v22, &v20);
  v16 = v25;
  if (!v25)
  {
    vp::objc::ID::~ID(&v24);
  }

  if ((v23 & 1) == 0)
  {
    vp::objc::ID::~ID(&v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v16;
}

- (BOOL)getRemoteProcessingBlockProperty:(id *)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8
{
  v14 = a7;
  if (a5 >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(&v22, self->get_property_callback.__f_.__f_, a4, a5, a6);
  if (v23 == 1)
  {
    caulk::expected<applesauce::CF::TypeRef,vp::rpb::Error>::value(&v22);
    v15 = v22;
    v22 = 0;
    if (a3)
    {
      *a3 = v15;
    }

    else if (v15)
    {
      CFRelease(v15);
    }
  }

  LOBYTE(v24) = 0;
  v16 = v23;
  v25 = v23;
  if (v23 == 1)
  {
    v24 = v22;
    v22 = 0;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    vp::objc::ID::ID(&v24, &v22);
    v16 = v25;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  if (a8 && v24)
  {
    *a8 = v24;
    v16 = v25;
  }

LABEL_14:
  LOBYTE(v26) = 0;
  v27 = v16;
  if (v16)
  {
    v17 = v24;
    v26 = v24;
    v24 = 0;
LABEL_18:
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v17);
    v18 = 1;
    goto LABEL_20;
  }

  vp::objc::ID::ID(&v26, &v24);
  if (v27)
  {
    v17 = v26;
    goto LABEL_18;
  }

  vp::objc::ID::~ID(&v26);
  v18 = 0;
LABEL_20:
  if (v25 == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v24);
  }

  else
  {
    vp::objc::ID::~ID(&v24);
  }

  if (v23 == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v22);
  }

  else
  {
    vp::objc::ID::~ID(&v22);
  }

  return v18;
}

- (BOOL)getRemoteProcessingBlockPropertyInfo:(id)a3 forScope:(unsigned int)a4 object:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (a4 >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(&v22, self->get_property_info_callback.__f_.__f_, a4);
  if (v24 == 1)
  {
    caulk::expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::value(&v22);
    v12 = v22;
    for (i = v23; v12 != i; v12 += 4)
    {
      v14 = [MEMORY[0x277D46128] createWithPropertyID:*v12];
      v15 = v12[1];
      [v14 setName:v15];

      v16 = v12[2];
      [v14 setDescription:v16];

      [v14 setReadable:*(v12 + 24)];
      [v14 setWritable:*(v12 + 25)];
      v17 = [v14 copy];
      [v10 addObject:v17];
    }
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v25, &v22);
  if ((v26 & 1) == 0 && a6 && v25[0])
  {
    *a6 = v25[0];
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v27, v25);
  v18 = v28;
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(v27);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(v25);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(&v22);

  return v18;
}

- (BOOL)setRemoteProcessingBlockParameter:(float)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8
{
  v14 = a7;
  if (a5 >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_cast::bad_cast(exception);
  }

  LODWORD(v20) = a4;
  v26 = a6;
  v27 = a5;
  v25 = a3;
  f = self->set_parameter_callback.__f_.__f_;
  if (!f)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*f + 48))(&v21);
  v20 = a8;
  vp::Expected<void,vp::rpb::Error>::on_error<vp::rpb::handle_error(NSError * {__autoreleasing}*)::{lambda(vp::rpb::Error const&)#1}>(&v23, &v21, &v20);
  v16 = v24;
  if (!v24)
  {
    vp::objc::ID::~ID(&v23);
  }

  if ((v22 & 1) == 0)
  {
    vp::objc::ID::~ID(&v21);
  }

  return v16;
}

- (BOOL)getRemoteProcessingBlockParameter:(float *)a3 forID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 object:(id)a7 withError:(id *)a8
{
  v14 = a7;
  if (a5 >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(&v20, self->get_parameter_callback.__f_.__f_, a4, a5, a6);
  if (v21 == 1)
  {
    caulk::expected<float,vp::rpb::Error>::value(&v20);
    if (a3)
    {
      *a3 = v20;
    }
  }

  LOBYTE(v22) = 0;
  v15 = v21;
  v23 = v21;
  if (v21 == 1)
  {
    LODWORD(v22) = v20;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
    vp::objc::ID::ID(&v22, &v20);
    v15 = v23;
    if (v23)
    {
      goto LABEL_12;
    }
  }

  if (a8 && v22)
  {
    *a8 = v22;
    v15 = v23;
  }

LABEL_12:
  LOBYTE(v24) = 0;
  v25 = v15;
  if (v15)
  {
    LODWORD(v24) = v22;
LABEL_15:
    v16 = 1;
    goto LABEL_17;
  }

  vp::objc::ID::ID(&v24, &v22);
  if (v25)
  {
    goto LABEL_15;
  }

  vp::objc::ID::~ID(&v24);
  v16 = 0;
LABEL_17:
  if ((v23 & 1) == 0)
  {
    vp::objc::ID::~ID(&v22);
  }

  if ((v21 & 1) == 0)
  {
    vp::objc::ID::~ID(&v20);
  }

  return v16;
}

- (BOOL)getRemoteProcessingBlockParameterInfo:(id)a3 forScope:(unsigned int)a4 object:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (a4 >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(&v22, self->get_parameter_info_callback.__f_.__f_, a4);
  if (v24 == 1)
  {
    caulk::expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::value(&v22);
    v12 = v22;
    for (i = v23; v12 != i; v12 += 4)
    {
      v14 = [MEMORY[0x277D46120] createWithParameterID:*v12];
      v15 = v12[1];
      [v14 setName:v15];

      v16 = v12[2];
      [v14 setDescription:v16];

      [v14 setReadable:*(v12 + 24)];
      [v14 setWritable:*(v12 + 25)];
      v17 = [v14 copy];
      [v10 addObject:v17];
    }
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v25, &v22);
  if ((v26 & 1) == 0 && a6 && v25[0])
  {
    *a6 = v25[0];
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v27, v25);
  v18 = v28;
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(v27);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(v25);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(&v22);

  return v18;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_getRemoteProcessingBlockParameterInfo_forScope_object_withError_ == a3)
  {
    f = self->get_parameter_info_callback.__f_.__f_;
  }

  else if (sel_getRemoteProcessingBlockParameter_forID_scope_element_object_withError_ == a3)
  {
    f = self->get_parameter_callback.__f_.__f_;
  }

  else if (sel_setRemoteProcessingBlockParameter_forID_scope_element_object_withError_ == a3)
  {
    f = self->set_parameter_callback.__f_.__f_;
  }

  else if (sel_getRemoteProcessingBlockPropertyInfo_forScope_object_withError_ == a3)
  {
    f = self->get_property_info_callback.__f_.__f_;
  }

  else if (sel_getRemoteProcessingBlockProperty_forID_scope_element_object_withError_ == a3)
  {
    f = self->get_property_callback.__f_.__f_;
  }

  else
  {
    if (sel_setRemoteProcessingBlockProperty_forID_scope_element_object_withError_ != a3)
    {
      v8 = v3;
      v9 = v4;
      v7.receiver = self;
      v7.super_class = RPBHost_Delegate;
      return [(RPBHost_Delegate *)&v7 respondsToSelector:?];
    }

    f = self->set_property_callback.__f_.__f_;
  }

  return f != 0;
}

@end