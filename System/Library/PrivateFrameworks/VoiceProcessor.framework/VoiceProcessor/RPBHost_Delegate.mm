@interface RPBHost_Delegate
- (BOOL)getRemoteProcessingBlockParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockParameterInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockProperty:(id *)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockPropertyInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)setRemoteProcessingBlockParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)setRemoteProcessingBlockProperty:(id)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
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

- (BOOL)setRemoteProcessingBlockProperty:(id)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  propertyCopy = property;
  objectCopy = object;
  if (propertyCopy)
  {
    CFRetain(propertyCopy);
    v26 = propertyCopy;
    if (scope < 8)
    {
      CFRetain(propertyCopy);
      goto LABEL_5;
    }

LABEL_14:
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_cast::bad_cast(exception);
  }

  v26 = 0;
  if (scope >= 8)
  {
    goto LABEL_14;
  }

LABEL_5:
  cf = propertyCopy;
  std::function<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,applesauce::CF::TypeRef)>::operator()(&v22, self->set_property_callback.__f_.__f_, d, scope, element, &cf);
  errorCopy = error;
  vp::Expected<void,vp::rpb::Error>::on_error<vp::rpb::handle_error(NSError * {__autoreleasing}*)::{lambda(vp::rpb::Error const&)#1}>(&v24, &v22, &errorCopy);
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

  if (propertyCopy)
  {
    CFRelease(propertyCopy);
  }

  return v16;
}

- (BOOL)getRemoteProcessingBlockProperty:(id *)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  objectCopy = object;
  if (scope >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(&v22, self->get_property_callback.__f_.__f_, d, scope, element);
  if (v23 == 1)
  {
    caulk::expected<applesauce::CF::TypeRef,vp::rpb::Error>::value(&v22);
    v15 = v22;
    v22 = 0;
    if (property)
    {
      *property = v15;
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

  if (error && v24)
  {
    *error = v24;
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

- (BOOL)getRemoteProcessingBlockPropertyInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error
{
  infoCopy = info;
  objectCopy = object;
  if (scope >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(&v22, self->get_property_info_callback.__f_.__f_, scope);
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
      [infoCopy addObject:v17];
    }
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v25, &v22);
  if ((v26 & 1) == 0 && error && v25[0])
  {
    *error = v25[0];
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v27, v25);
  v18 = v28;
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(v27);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(v25);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(&v22);

  return v18;
}

- (BOOL)setRemoteProcessingBlockParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  objectCopy = object;
  if (scope >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_cast::bad_cast(exception);
  }

  LODWORD(errorCopy) = d;
  elementCopy = element;
  scopeCopy = scope;
  parameterCopy = parameter;
  f = self->set_parameter_callback.__f_.__f_;
  if (!f)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*f + 48))(&v21);
  errorCopy = error;
  vp::Expected<void,vp::rpb::Error>::on_error<vp::rpb::handle_error(NSError * {__autoreleasing}*)::{lambda(vp::rpb::Error const&)#1}>(&v23, &v21, &errorCopy);
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

- (BOOL)getRemoteProcessingBlockParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  objectCopy = object;
  if (scope >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(&v20, self->get_parameter_callback.__f_.__f_, d, scope, element);
  if (v21 == 1)
  {
    caulk::expected<float,vp::rpb::Error>::value(&v20);
    if (parameter)
    {
      *parameter = v20;
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

  if (error && v22)
  {
    *error = v22;
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

- (BOOL)getRemoteProcessingBlockParameterInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error
{
  infoCopy = info;
  objectCopy = object;
  if (scope >= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_cast::bad_cast(exception);
  }

  std::function<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(&v22, self->get_parameter_info_callback.__f_.__f_, scope);
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
      [infoCopy addObject:v17];
    }
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v25, &v22);
  if ((v26 & 1) == 0 && error && v25[0])
  {
    *error = v25[0];
  }

  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(v27, v25);
  v18 = v28;
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(v27);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(v25);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(&v22);

  return v18;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_getRemoteProcessingBlockParameterInfo_forScope_object_withError_ == selector)
  {
    f = self->get_parameter_info_callback.__f_.__f_;
  }

  else if (sel_getRemoteProcessingBlockParameter_forID_scope_element_object_withError_ == selector)
  {
    f = self->get_parameter_callback.__f_.__f_;
  }

  else if (sel_setRemoteProcessingBlockParameter_forID_scope_element_object_withError_ == selector)
  {
    f = self->set_parameter_callback.__f_.__f_;
  }

  else if (sel_getRemoteProcessingBlockPropertyInfo_forScope_object_withError_ == selector)
  {
    f = self->get_property_info_callback.__f_.__f_;
  }

  else if (sel_getRemoteProcessingBlockProperty_forID_scope_element_object_withError_ == selector)
  {
    f = self->get_property_callback.__f_.__f_;
  }

  else
  {
    if (sel_setRemoteProcessingBlockProperty_forID_scope_element_object_withError_ != selector)
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