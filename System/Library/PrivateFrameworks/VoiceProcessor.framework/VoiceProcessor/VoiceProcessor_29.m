void sub_2726BED30(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726BED1CLL);
}

void vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::parse_decision(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  vp::xml::Node::children(v13, a2);
  v15[0] = v13;
  v15[1] = 0;
  v16 = 0;
  v17 = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v11, v15, v5);
  while (v11)
  {
    v6 = *(a1 + 16);
    v7 = vp::xml::Node::content(v11, v12);
    vp::vx::database::v1::runtime::String_Pool::intern(&cf, v6, v7, v8);
    if (cf)
    {
      operator new();
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v11, v9);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v17 == 1 && v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  *a3 = 0;
}

uint64_t vp::vx::database::v1::syntax::decisions::Replace_4CC::Replace_4CC(uint64_t a1, const void *a2, const void **a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2881BE1F8;
  if (a2)
  {
    CFRetain(a2);
  }

  *(a1 + 16) = a2;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  *(a1 + 24) = v6;
  return a1;
}

uint64_t vp::vx::database::v1::syntax::decisions::Replace_4CC::evaluate(vp::vx::database::v1::syntax::decisions::Replace_4CC *this, const vp::vx::database::v1::Request *a2, vp::vx::database::v1::Response *a3)
{
  (*(**a2 + 16))(&cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5.i32[0] = bswap32(applesauce::CF::convert_to<unsigned int,0>(cf));
  v6 = vzip1_s8(v5, v5);
  v7.i64[0] = 0x1F0000001FLL;
  v7.i64[1] = 0x1F0000001FLL;
  v8.i64[0] = 0x5F0000005FLL;
  v8.i64[1] = 0x5F0000005FLL;
  v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
  v18 = 4;
  *bytes = vuzp1_s8(v9, v9).u32[0];
  bytes[4] = 0;
  v19 = CFStringCreateWithBytes(0, bytes, 4, 0x8000100u, 0);
  if (!v19)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
  }

  if (v18 < 0)
  {
    operator delete(*bytes);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *(this + 3);
  if (v10)
  {
    CFRetain(v10);
  }

  *bytes = v10;
  v11 = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  cf = v11;
  v12 = vp::vx::database::v1::Response::replace(*a3, bytes, &cf);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v12;
}

void sub_2726BF100(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::TypeRef::~TypeRef(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726BF070);
}

uint64_t vp::vx::database::v1::syntax::decisions::Replace_4CC::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v4 = this;
  v5 = vp::vx::database::v1::fbs::BuildString(a2, this + 2, a3);
  v7 = vp::vx::database::v1::fbs::BuildString(a2, v4 + 3, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v8 = v7;
  *(a2 + 70) = 1;
  v9 = *(a2 + 8);
  v10 = *(a2 + 12);
  v11 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v5);
  v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v9 - v10 + v11);
  v13 = v12;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::conditions::Feature_Enabled>(*(a2 + 4), *(a2 + 5), v12, 4u);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::conditions::Feature_Enabled>(*(a2 + 4), *(a2 + 5), v13, 6u);
  LODWORD(v4) = *(v4 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v14 = *(a2 + 8);
  v15 = *(a2 + 12);
  v16 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 4);
  v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v14 - v15 + v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v17);
  return v17;
}

void vp::vx::database::v1::syntax::decisions::Replace_4CC::~Replace_4CC(vp::vx::database::v1::syntax::decisions::Replace_4CC *this)
{
  *this = &unk_2881BE1F8;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BE1F8;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

void vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::~Parser(vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t *vp::vx::database::v1::syntax::decisions::Replace_Strings::Parser::parse_decision@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = 0;
  vp::xml::Node::children(v21, a2);
  v23[0] = v21;
  v23[1] = 0;
  v24 = 0;
  v25 = 0;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v19, v23, v5);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (v19)
  {
    v9 = vp::xml::Node::name(v19, v20);
    v12 = vp::vx::database::v1::syntax::constexpr_hash(v9, v10, v11);
    if (v12 == 0x56F98C19446556ACLL)
    {
      vp::vx::database::v1::syntax::decisions::detail::parse_string(&v18, &v19, *(a1 + 8));
      v7 = v18;
      v18 = v8;
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = v7;
    }

    else if (v12 == 0x539572566EA6738FLL)
    {
      vp::vx::database::v1::syntax::decisions::detail::parse_string(&v18, &v19, *(a1 + 8));
      v14 = v18;
      v18 = v6;
      if (v6)
      {
        CFRelease(v6);
      }

      v6 = v14;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v19, v13);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v25 == 1 && v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v6)
  {
    if (v7)
    {
      operator new();
    }

    v16 = v26;
    v26 = 0;
    *a3 = v16;
    CFRelease(v6);
  }

  else
  {
    v15 = v26;
    v26 = 0;
    *a3 = v15;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return std::unique_ptr<vp::vx::database::v1::syntax::decisions::Replace_Strings>::reset[abi:ne200100](&v26, 0);
}

void vp::vx::database::v1::syntax::decisions::detail::parse_string(void *a1, uint64_t *a2, unint64_t a3)
{
  vp::xml::Node::children(&v16, a2);
  v7 = v16;
  v6 = v17;
  v14 = v16;
  v15 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    while (1)
    {
      v8 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v7 + 2);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v9 = *(v7 + 2);
      }

      if (v9 == 3)
      {
        v10 = vp::xml::Node::content(v7, v8);
        vp::vx::database::v1::runtime::String_Pool::intern(&v13, a3, v10, v11);
        v12 = v13;
        if (v13)
        {
          break;
        }
      }

      v5.n128_f64[0] = vp::xml::Node_Iterator::increment(&v14, v5);
      v7 = v14;
      if (!v14)
      {
        v12 = 0;
        v8 = v15;
        break;
      }
    }
  }

  else
  {
    v12 = 0;
    v8 = v6;
  }

  *a1 = v12;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v6 = v17;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t *std::unique_ptr<vp::vx::database::v1::syntax::decisions::Replace_Strings>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::decisions::Replace_Strings::Replace_Strings(uint64_t a1, const void *a2, const void **a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2881BE250;
  if (a2)
  {
    CFRetain(a2);
  }

  *(a1 + 16) = a2;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  *(a1 + 24) = v6;
  return a1;
}

uint64_t vp::vx::database::v1::syntax::decisions::Replace_Strings::evaluate(vp::vx::database::v1::syntax::decisions::Replace_Strings *this, const vp::vx::database::v1::Request *a2, vp::vx::database::v1::Response *a3)
{
  v5 = *(this + 2);
  if (v5)
  {
    CFRetain(*(this + 2));
  }

  v10 = v5;
  v6 = *(this + 3);
  if (v6)
  {
    CFRetain(v6);
  }

  v9 = v6;
  v7 = vp::vx::database::v1::Response::replace(*a3, &v10, &v9);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

void sub_2726BF90C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726BF8E4);
}

uint64_t vp::vx::database::v1::syntax::decisions::Replace_Strings::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v4 = this;
  v5 = vp::vx::database::v1::fbs::BuildString(a2, this + 2, a3);
  v7 = vp::vx::database::v1::fbs::BuildString(a2, v4 + 3, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v8 = v7;
  *(a2 + 70) = 1;
  v9 = *(a2 + 8);
  v10 = *(a2 + 12);
  v11 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v5);
  v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v9 - v10 + v11);
  v13 = v12;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::conditions::Feature_Enabled>(*(a2 + 4), *(a2 + 5), v12, 4u);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::conditions::Feature_Enabled>(*(a2 + 4), *(a2 + 5), v13, 6u);
  LODWORD(v4) = *(v4 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v14 = *(a2 + 8);
  v15 = *(a2 + 12);
  v16 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 5);
  v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v14 - v15 + v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v17);
  return v17;
}

void vp::vx::database::v1::syntax::decisions::Replace_Strings::~Replace_Strings(vp::vx::database::v1::syntax::decisions::Replace_Strings *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t vp::vx::database::v1::Request::Property_List_Data::evaluate(vp::vx::database::v1::Request::Property_List_Data *this, id *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    CFRetain(*(this + 1));
    v4 = vp::cf::Predicate::evaluate(a2, v3);
    CFRelease(v3);
    return v4;
  }

  else
  {

    return vp::cf::Predicate::evaluate(a2, 0);
  }
}

uint64_t vp::vx::database::v1::Request::Property_List_Data::evaluate(CFDictionaryRef *this, const void **a2)
{
  vp::vx::database::v1::syntax::Constraint::get_value(&cf, a2[2]);
  v4 = cf;
  if (cf && ((v5 = CFGetTypeID(cf), v5 != CFBooleanGetTypeID()) ? (v6 = 0) : (v6 = -1), CFRelease(v4), (v6 & 1) != 0))
  {
    v7 = &vp::vx::database::v1::syntax::Constraint::evaluate(applesauce::CF::DictionaryRef const&)::$_1::operator() const(void)::s_evaluator;
  }

  else
  {
    vp::vx::database::v1::syntax::Constraint::get_value(&cf, a2[2]);
    v8 = cf;
    if (cf && ((v9 = CFGetTypeID(cf), v9 != CFNumberGetTypeID()) ? (v10 = 0) : (v10 = -1), CFRelease(v8), (v10 & 1) != 0))
    {
      v7 = &vp::vx::database::v1::syntax::Constraint::evaluate(applesauce::CF::DictionaryRef const&)::$_1::operator() const(void)::s_evaluator;
    }

    else
    {
      vp::vx::database::v1::syntax::Constraint::get_value(&cf, a2[2]);
      v11 = cf;
      v7 = &vp::vx::database::v1::syntax::Constraint::evaluate(applesauce::CF::DictionaryRef const&)::$_1::operator() const(void)::s_evaluator;
      if (cf)
      {
        v12 = CFGetTypeID(cf);
        if (v12 == CFStringGetTypeID())
        {
          v7 = &vp::vx::database::v1::syntax::Constraint::evaluate(applesauce::CF::DictionaryRef const&)::$_1::operator() const(void)::s_evaluator;
        }

        CFRelease(v11);
      }
    }
  }

  v13 = *(a2 + 2);
  v14 = 1;
  if (v13 > 3)
  {
    switch(v13)
    {
      case 4:
        if (this[1])
        {
          vp::vx::database::v1::syntax::Constraint::get_key(&v20, *a2);
          v19 = 0;
          applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, this[1], v20, &v19);
          vp::vx::database::v1::syntax::Constraint::get_value(&v18, a2[2]);
          v14 = ((*v7)[2])(v7, &cf, &v18);
          if (v18)
          {
            CFRelease(v18);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          v15 = v20;
          if (v20)
          {
            goto LABEL_68;
          }

          return v14;
        }

        break;
      case 5:
        if (this[1])
        {
          vp::vx::database::v1::syntax::Constraint::get_key(&v20, *a2);
          v19 = 0;
          applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, this[1], v20, &v19);
          vp::vx::database::v1::syntax::Constraint::get_value(&v18, a2[2]);
          v14 = ((*v7)[3])(v7, &cf, &v18);
          if (v18)
          {
            CFRelease(v18);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          v15 = v20;
          if (v20)
          {
            goto LABEL_68;
          }

          return v14;
        }

        break;
      case 6:
        if (this[1])
        {
          vp::vx::database::v1::syntax::Constraint::get_key(&v20, *a2);
          v19 = 0;
          applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, this[1], v20, &v19);
          vp::vx::database::v1::syntax::Constraint::get_value(&v18, a2[2]);
          v14 = ((*v7)[4])(v7, &cf, &v18);
          if (v18)
          {
            CFRelease(v18);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          v15 = v20;
          if (v20)
          {
            goto LABEL_68;
          }

          return v14;
        }

        break;
      default:
        return v14;
    }

    goto LABEL_69;
  }

  if (v13 == 1)
  {
    return 0;
  }

  if (v13 == 2)
  {
    if (this[1])
    {
      vp::vx::database::v1::syntax::Constraint::get_key(&v20, *a2);
      v19 = 0;
      applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, this[1], v20, &v19);
      vp::vx::database::v1::syntax::Constraint::get_value(&v18, a2[2]);
      v14 = (**v7)(v7, &cf, &v18);
      if (v18)
      {
        CFRelease(v18);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      v15 = v20;
      if (v20)
      {
        goto LABEL_68;
      }

      return v14;
    }

LABEL_69:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v13 != 3)
  {
    return v14;
  }

  if (!this[1])
  {
    goto LABEL_69;
  }

  vp::vx::database::v1::syntax::Constraint::get_key(&v20, *a2);
  v19 = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef>(&cf, this[1], v20, &v19);
  vp::vx::database::v1::syntax::Constraint::get_value(&v18, a2[2]);
  v14 = ((*v7)[1])(v7, &cf, &v18);
  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v15 = v20;
  if (v20)
  {
LABEL_68:
    CFRelease(v15);
  }

  return v14;
}

void vp::vx::database::v1::Request::Property_List_Data::fetch(vp::vx::database::v1::Request::Property_List_Data *this@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 1);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  cf = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(a3, v4, *a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFMutableDictionaryRef vp::vx::database::v1::detail::make_mutable_dictionary(vp::vx::database::v1::detail *this)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *this = result;
  return result;
}

CFMutableDictionaryRef vp::vx::database::v1::detail::make_key_path(vp::vx::database::v1::detail *a1, char *__s, size_t __n)
{
  while (1)
  {
    v6 = std::string_view::find[abi:ne200100](__s, __n);
    if (v6 == -1)
    {
      break;
    }

    if (__n >= v6)
    {
      __n = v6;
    }
  }

  vp::vx::database::v1::utility::parse_uint64(__s, __n);
  if (__n == 1)
  {
    v8 = *__s;
    v9 = (v8 == 43) | v7;
    v10 = v8 == 45;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if (v7)
    {
LABEL_13:
      result = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
      *a1 = result;
      return result;
    }
  }

  if (v10)
  {
    goto LABEL_13;
  }

  return vp::vx::database::v1::detail::make_mutable_dictionary(a1);
}

uint64_t std::string_view::find[abi:ne200100](char *__s, uint64_t __n)
{
  v2 = __s;
  v3 = &__s[__n];
  if (__n >= 1)
  {
    v4 = __n;
    do
    {
      v5 = memchr(__s, 58, v4);
      if (!v5)
      {
        break;
      }

      if (*v5 == 58)
      {
        goto LABEL_7;
      }

      __s = v5 + 1;
      v4 = v3 - __s;
    }

    while (v3 - __s > 0);
  }

  v5 = v3;
LABEL_7:
  if (v5 == v3)
  {
    return -1;
  }

  else
  {
    return v5 - v2;
  }
}

void vp::vx::database::v1::detail::get_value(void *a1, const void *ValueAtIndex, char *a3, size_t a4)
{
  while (1)
  {
    v8 = std::string_view::find[abi:ne200100](a3, a4);
    if (v8 == -1)
    {
      break;
    }

    v9 = v8;
    if (a4 <= v8)
    {
      std::__throw_out_of_range[abi:ne200100]("string_view::substr");
    }

    v10 = &a3[v8 + 1];
    a4 -= v8 + 1;
    v11 = vp::vx::database::v1::utility::parse_uint64(a3, v8);
    if ((v12 & 1) == 0)
    {
      v23 = CFGetTypeID(ValueAtIndex);
      if (v23 != CFDictionaryGetTypeID())
      {
        goto LABEL_69;
      }

      if (v9 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v9 >= 0x17)
        {
          operator new();
        }

        v38 = v9;
        if (v9)
        {
          memmove(&__p, a3, v9);
        }

        *(&__p + v9) = 0;
        if ((v38 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (p_p)
        {
          if ((v38 & 0x80u) == 0)
          {
            v26 = v38;
          }

          else
          {
            v26 = v37;
          }

          v27 = CFStringCreateWithBytes(0, p_p, v26, 0x8000100u, 0);
          v39 = v27;
          if (!v27)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          if ((v38 & 0x80) != 0)
          {
LABEL_40:
            operator delete(__p);
          }
        }

        else
        {
          v27 = 0;
          v39 = 0;
          if ((v38 & 0x80) != 0)
          {
            goto LABEL_40;
          }
        }

        if (CFDictionaryContainsKey(ValueAtIndex, v27))
        {
          Value = CFDictionaryGetValue(ValueAtIndex, v27);
          vp::vx::database::v1::detail::get_value(a1, Value, v10, a4);
          if (v27)
          {
            CFRelease(v27);
          }

          return;
        }

        if (v27)
        {
          CFRelease(v27);
        }

LABEL_69:
        *a1 = 0;
        return;
      }

LABEL_72:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v11;
    v14 = CFGetTypeID(ValueAtIndex);
    if (v14 != CFArrayGetTypeID())
    {
      goto LABEL_69;
    }

    v15 = v13 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v13;
    if (v15 >= CFArrayGetCount(ValueAtIndex))
    {
      goto LABEL_69;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, v15);
    a3 = v10;
  }

  v16 = vp::vx::database::v1::utility::parse_uint64(a3, a4);
  if ((v17 & 1) == 0)
  {
    v24 = CFGetTypeID(ValueAtIndex);
    if (v24 != CFDictionaryGetTypeID())
    {
      goto LABEL_69;
    }

    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_72;
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    v38 = a4;
    if (a4)
    {
      memmove(&__p, a3, a4);
    }

    *(&__p + a4) = 0;
    if ((v38 & 0x80u) == 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p;
    }

    if (v29)
    {
      if ((v38 & 0x80u) == 0)
      {
        v30 = v38;
      }

      else
      {
        v30 = v37;
      }

      v31 = CFStringCreateWithBytes(0, v29, v30, 0x8000100u, 0);
      v39 = v31;
      if (!v31)
      {
        v35 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v35, "Could not construct");
      }

      if ((v38 & 0x80) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v31 = 0;
      v39 = 0;
      if ((v38 & 0x80) == 0)
      {
        goto LABEL_60;
      }
    }

    operator delete(__p);
LABEL_60:
    if (!CFDictionaryContainsKey(ValueAtIndex, v31))
    {
      if (v31)
      {
        CFRelease(v31);
      }

      goto LABEL_69;
    }

    v32 = CFDictionaryGetValue(ValueAtIndex, v31);
    v33 = v32;
    if (v32)
    {
      CFRetain(v32);
    }

    *a1 = v33;
    if (v31)
    {
      CFRelease(v31);
    }

    return;
  }

  v18 = v16;
  v19 = CFGetTypeID(ValueAtIndex);
  if (v19 != CFArrayGetTypeID())
  {
    goto LABEL_69;
  }

  v20 = v18 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v18;
  if (v20 >= CFArrayGetCount(ValueAtIndex))
  {
    goto LABEL_69;
  }

  v21 = CFArrayGetValueAtIndex(ValueAtIndex, v20);
  v22 = v21;
  if (v21)
  {
    CFRetain(v21);
  }

  *a1 = v22;
}

void sub_2726C0918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t vp::vx::database::v1::detail::set_value(void *ValueAtIndex, char *a2, size_t a3, const void *a4)
{
  while (1)
  {
    v8 = std::string_view::find[abi:ne200100](a2, a3);
    if (v8 == -1)
    {
      v17 = vp::vx::database::v1::utility::parse_uint64(a2, a3);
      if (v18)
      {
        v19 = v17;
        v20 = CFGetTypeID(ValueAtIndex);
        if (v20 != CFArrayGetTypeID())
        {
          return 0;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21 >= CFArrayGetCount(ValueAtIndex))
        {
          while (CFArrayGetCount(ValueAtIndex) <= v21)
          {
            CFArrayAppendValue(ValueAtIndex, @"?");
          }

          CFArraySetValueAtIndex(ValueAtIndex, v21, a4);
        }

        return 1;
      }

      if (a3 == 1)
      {
        v27 = *a2;
        if (v27 == 45)
        {
          v37 = CFGetTypeID(ValueAtIndex);
          if (v37 != CFArrayGetTypeID())
          {
            return 0;
          }

          CFArrayInsertValueAtIndex(ValueAtIndex, 0, a4);
          return 1;
        }

        if (v27 == 43)
        {
          v28 = CFGetTypeID(ValueAtIndex);
          if (v28 != CFArrayGetTypeID())
          {
            return 0;
          }

          CFArrayAppendValue(ValueAtIndex, a4);
          return 1;
        }
      }

      v29 = CFGetTypeID(ValueAtIndex);
      if (v29 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      if (a3 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_90;
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      v46 = a3;
      if (a3)
      {
        memmove(&value, a2, a3);
      }

      *(&value + a3) = 0;
      if ((v46 & 0x80u) == 0)
      {
        p_value = &value;
      }

      else
      {
        p_value = value;
      }

      if (p_value)
      {
        if ((v46 & 0x80u) == 0)
        {
          v40 = v46;
        }

        else
        {
          v40 = v45;
        }

        v41 = CFStringCreateWithBytes(0, p_value, v40, 0x8000100u, 0);
        v47 = v41;
        if (!v41)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        if ((v46 & 0x80) == 0)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v41 = 0;
        v47 = 0;
        if ((v46 & 0x80) == 0)
        {
LABEL_82:
          CFDictionarySetValue(ValueAtIndex, v41, a4);
          if (v41)
          {
            CFRelease(v41);
          }

          return 1;
        }
      }

      operator delete(value);
      goto LABEL_82;
    }

    v9 = v8;
    if (a3 <= v8)
    {
      std::__throw_out_of_range[abi:ne200100]("string_view::substr");
    }

    v10 = &a2[v8 + 1];
    a3 -= v8 + 1;
    v11 = vp::vx::database::v1::utility::parse_uint64(a2, v8);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = v11;
    v14 = CFGetTypeID(ValueAtIndex);
    if (v14 != CFArrayGetTypeID())
    {
      return 0;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15 >= CFArrayGetCount(ValueAtIndex))
    {
      while (CFArrayGetCount(ValueAtIndex) <= v15)
      {
        CFArrayAppendValue(ValueAtIndex, @"?");
      }

      vp::vx::database::v1::detail::make_key_path(&value, v10, a3);
      v16 = value;
      if (!value)
      {
        return 0;
      }

      CFArraySetValueAtIndex(ValueAtIndex, v15, value);
      CFRelease(v16);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, v15);
    a2 = v10;
  }

  if (v9 != 1)
  {
    goto LABEL_28;
  }

  v22 = *a2;
  if (v22 != 45)
  {
    if (v22 == 43)
    {
      v23 = CFGetTypeID(ValueAtIndex);
      if (v23 == CFArrayGetTypeID())
      {
        vp::vx::database::v1::detail::make_key_path(&value, a2 + 2, a3);
        v24 = value;
        v25 = value != 0;
        if (value)
        {
          CFArrayAppendValue(ValueAtIndex, value);
          CFRelease(v24);
        }

        return v25;
      }

      return 0;
    }

LABEL_28:
    v26 = CFGetTypeID(ValueAtIndex);
    if (v26 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v9 >= 0x17)
      {
        operator new();
      }

      v46 = v9;
      if (v9)
      {
        memmove(&value, a2, v9);
      }

      *(&value + v9) = 0;
      if ((v46 & 0x80u) == 0)
      {
        v32 = &value;
      }

      else
      {
        v32 = value;
      }

      if (v32)
      {
        if ((v46 & 0x80u) == 0)
        {
          v33 = v46;
        }

        else
        {
          v33 = v45;
        }

        v34 = CFStringCreateWithBytes(0, v32, v33, 0x8000100u, 0);
        v47 = v34;
        if (!v34)
        {
          v42 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v42, "Could not construct");
        }

        if ((v46 & 0x80) != 0)
        {
LABEL_57:
          operator delete(value);
        }
      }

      else
      {
        v34 = 0;
        v47 = 0;
        if ((v46 & 0x80) != 0)
        {
          goto LABEL_57;
        }
      }

      if (CFDictionaryContainsKey(ValueAtIndex, v34))
      {
LABEL_61:
        v36 = CFDictionaryGetValue(ValueAtIndex, v34);
        v25 = vp::vx::database::v1::detail::set_value(v36, v10, a3, a4);
        if (!v34)
        {
          return v25;
        }
      }

      else
      {
        vp::vx::database::v1::detail::make_key_path(&value, v10, a3);
        v35 = value;
        if (value)
        {
          CFDictionarySetValue(ValueAtIndex, v34, value);
          CFRelease(v35);
          goto LABEL_61;
        }

        applesauce::CF::ObjectRef<void const*>::~ObjectRef(&value);
        v25 = 0;
        if (!v34)
        {
          return v25;
        }
      }

      CFRelease(v34);
      return v25;
    }

LABEL_90:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v30 = CFGetTypeID(ValueAtIndex);
  if (v30 != CFArrayGetTypeID())
  {
    return 0;
  }

  vp::vx::database::v1::detail::make_key_path(&value, a2 + 2, a3);
  v31 = value;
  v25 = value != 0;
  if (value)
  {
    CFArrayInsertValueAtIndex(ValueAtIndex, 0, value);
    CFRelease(v31);
  }

  return v25;
}

void sub_2726C0F80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

uint64_t vp::vx::database::v1::Response::replace(uint64_t result, const void **a2, const void **a3)
{
  if (result)
  {
    if (*a2 && *a3)
    {
      v5 = result;
      CFRetain(result);
      v10 = v5;
      v6 = *a2;
      if (v6)
      {
        CFRetain(v6);
      }

      v9 = v6;
      v7 = *a3;
      if (v7)
      {
        CFRetain(v7);
      }

      v8 = v7;
      vp::vx::database::v1::utility::replace(&v10, &v9, &v8);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      CFRelease(v5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2726C109C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va2);
  _Unwind_Resume(a1);
}

void vp::vx::database::v1::Response::set(void **a1, char *a2, const void *a3, char *a4)
{
  if (a3)
  {
    if (a4)
    {
      v8 = strlen(a4);
      vp::vx::database::v1::detail::get_value(&propertyList, a3, a4, v8);
      v9 = propertyList;
      if (propertyList)
      {
        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], propertyList, 2uLL);
        CFRelease(v9);
      }

      else
      {
        DeepCopy = 0;
      }
    }

    else
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], a3, 2uLL);
    }

    v11 = *a1;
    if (a2)
    {
      if (!v11)
      {
        vp::vx::database::v1::detail::make_mutable_dictionary(&propertyList);
        v12 = *a1;
        v11 = propertyList;
        *a1 = propertyList;
        propertyList = v12;
        if (v12)
        {
          CFRelease(v12);
          v11 = *a1;
        }
      }

      v13 = strlen(a2);
      vp::vx::database::v1::detail::set_value(v11, a2, v13, DeepCopy);
    }

    else
    {
      *a1 = DeepCopy;
      if (DeepCopy)
      {
        CFRetain(DeepCopy);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    if (DeepCopy)
    {
      CFRelease(DeepCopy);
    }
  }
}

CFPropertyListRef vp::vx::database::v1::Response::make_plist(vp::vx::database::v1::Response *this, const void *a2)
{
  if (a2)
  {
    result = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], a2, 0);
  }

  else
  {
    result = 0;
  }

  *this = result;
  return result;
}

void vp::vx::database::v1::syntax::Rule::evaluate(vp::vx::database::v1::syntax::Rule *this, const vp::vx::database::v1::Request *a2, vp::vx::database::v1::Response *a3)
{
  v103 = *MEMORY[0x277D85DE8];
  if (!*(this + 2))
  {
    goto LABEL_134;
  }

  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
    v8 = v98;
    v9 = v98;
    v10 = v97;
    v11 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (v9 >= 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      p_p = __p;
      if (v9 >= 0)
      {
        p_p = &__p;
      }

      if (v12)
      {
        v14 = " ";
      }

      else
      {
        v14 = "";
      }

      *buf = 136315394;
      v100 = p_p;
      v101 = 2080;
      v102 = v14;
      _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%s%sevaluate condition", buf, 0x16u);
      LOBYTE(v9) = v98;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v15 = (*(**(this + 2) + 24))(*(this + 2), a2);
  v16 = v15;
  v17 = vp::get_log(v15);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      v19 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
      v20 = v98;
      v21 = v98;
      v22 = v97;
      v23 = vp::get_log(v19);
      v18 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        if (v21 >= 0)
        {
          v24 = v20;
        }

        else
        {
          v24 = v22;
        }

        v25 = __p;
        if (v21 >= 0)
        {
          v25 = &__p;
        }

        if (v24)
        {
          v26 = " ";
        }

        else
        {
          v26 = "";
        }

        *buf = 136315394;
        v100 = v25;
        v101 = 2080;
        v102 = v26;
        _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_DEBUG, "%s%scondition evaluated to true", buf, 0x16u);
        LOBYTE(v21) = v98;
      }

      if ((v21 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    v27 = *(this + 3);
    v28 = vp::get_log(v18);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      if (v29)
      {
        v30 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
        v31 = v98;
        v32 = v98;
        v33 = v97;
        v34 = vp::get_log(v30);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          if (v32 >= 0)
          {
            v35 = v31;
          }

          else
          {
            v35 = v33;
          }

          v36 = __p;
          if (v32 >= 0)
          {
            v36 = &__p;
          }

          if (v35)
          {
            v37 = " ";
          }

          else
          {
            v37 = "";
          }

          *buf = 136315394;
          v100 = v36;
          v101 = 2080;
          v102 = v37;
          _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEBUG, "%s%sevaluate 'then' decision", buf, 0x16u);
          LOBYTE(v32) = v98;
        }

        if ((v32 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }

      v29 = (*(**(this + 3) + 24))(*(this + 3), a2, a3);
      if ((v29 & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v29)
    {
      v57 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
      v58 = v98;
      v59 = v98;
      v60 = v97;
      v61 = vp::get_log(v57);
      v29 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);
      if (v29)
      {
        if (v59 >= 0)
        {
          v62 = v58;
        }

        else
        {
          v62 = v60;
        }

        v63 = __p;
        if (v59 >= 0)
        {
          v63 = &__p;
        }

        if (v62)
        {
          v64 = " ";
        }

        else
        {
          v64 = "";
        }

        *buf = 136315394;
        v100 = v63;
        v101 = 2080;
        v102 = v64;
        _os_log_impl(&dword_2724B4000, v61, OS_LOG_TYPE_DEBUG, "%s%sfound no 'then' decision to evaluate", buf, 0x16u);
        LOBYTE(v59) = v98;
      }

      if ((v59 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    if (*(this + 5) != *(this + 6))
    {
      v65 = vp::get_log(v29);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v66 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
        v67 = v98;
        v68 = v98;
        v69 = v97;
        v70 = vp::get_log(v66);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          if (v68 >= 0)
          {
            v71 = v67;
          }

          else
          {
            v71 = v69;
          }

          v72 = __p;
          if (v68 >= 0)
          {
            v72 = &__p;
          }

          if (v71)
          {
            v73 = " ";
          }

          else
          {
            v73 = "";
          }

          *buf = 136315394;
          v100 = v72;
          v101 = 2080;
          v102 = v73;
          _os_log_impl(&dword_2724B4000, v70, OS_LOG_TYPE_DEBUG, "%s%sevaluate 'then' rules...", buf, 0x16u);
          LOBYTE(v68) = v98;
        }

        if ((v68 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }

      v75 = *(this + 5);
      v74 = *(this + 6);
      while (v75 != v74)
      {
        vp::vx::database::v1::syntax::Rule::evaluate(v75, a2, a3);
        v75 = (v75 + 88);
      }
    }

    goto LABEL_134;
  }

  if (v18)
  {
    v38 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
    v39 = v98;
    v40 = v98;
    v41 = v97;
    v42 = vp::get_log(v38);
    v18 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
    if (v18)
    {
      if (v40 >= 0)
      {
        v43 = v39;
      }

      else
      {
        v43 = v41;
      }

      v44 = __p;
      if (v40 >= 0)
      {
        v44 = &__p;
      }

      if (v43)
      {
        v45 = " ";
      }

      else
      {
        v45 = "";
      }

      *buf = 136315394;
      v100 = v44;
      v101 = 2080;
      v102 = v45;
      _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_DEBUG, "%s%scondition evaluated to false", buf, 0x16u);
      LOBYTE(v40) = v98;
    }

    if ((v40 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v46 = *(this + 4);
  v47 = vp::get_log(v18);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
  if (!v46)
  {
    if (v48)
    {
      v76 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
      v77 = v98;
      v78 = v98;
      v79 = v97;
      v80 = vp::get_log(v76);
      v48 = os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG);
      if (v48)
      {
        if (v78 >= 0)
        {
          v81 = v77;
        }

        else
        {
          v81 = v79;
        }

        v82 = __p;
        if (v78 >= 0)
        {
          v82 = &__p;
        }

        if (v81)
        {
          v83 = " ";
        }

        else
        {
          v83 = "";
        }

        *buf = 136315394;
        v100 = v82;
        v101 = 2080;
        v102 = v83;
        _os_log_impl(&dword_2724B4000, v80, OS_LOG_TYPE_DEBUG, "%s%sfound no 'else' decision to evaluate", buf, 0x16u);
        LOBYTE(v78) = v98;
      }

      if ((v78 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_117;
  }

  if (v48)
  {
    v49 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
    v50 = v98;
    v51 = v98;
    v52 = v97;
    v53 = vp::get_log(v49);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      if (v51 >= 0)
      {
        v54 = v50;
      }

      else
      {
        v54 = v52;
      }

      v55 = __p;
      if (v51 >= 0)
      {
        v55 = &__p;
      }

      if (v54)
      {
        v56 = " ";
      }

      else
      {
        v56 = "";
      }

      *buf = 136315394;
      v100 = v55;
      v101 = 2080;
      v102 = v56;
      _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_DEBUG, "%s%sevaluate 'else' decision", buf, 0x16u);
      LOBYTE(v51) = v98;
    }

    if ((v51 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v48 = (*(**(this + 4) + 24))(*(this + 4), a2, a3);
  if (v48)
  {
LABEL_117:
    if (*(this + 8) != *(this + 9))
    {
      v84 = vp::get_log(v48);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        v85 = vp::vx::database::v1::syntax::get_log_context_info(&__p, this);
        v86 = v98;
        v87 = v98;
        v88 = v97;
        v89 = vp::get_log(v85);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          if (v87 >= 0)
          {
            v90 = v86;
          }

          else
          {
            v90 = v88;
          }

          v91 = __p;
          if (v87 >= 0)
          {
            v91 = &__p;
          }

          if (v90)
          {
            v92 = " ";
          }

          else
          {
            v92 = "";
          }

          *buf = 136315394;
          v100 = v91;
          v101 = 2080;
          v102 = v92;
          _os_log_impl(&dword_2724B4000, v89, OS_LOG_TYPE_DEBUG, "%s%sevaluate 'else' rules...", buf, 0x16u);
          LOBYTE(v87) = v98;
        }

        if ((v87 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }

      v94 = *(this + 8);
      v93 = *(this + 9);
      while (v94 != v93)
      {
        vp::vx::database::v1::syntax::Rule::evaluate(v94, a2, a3);
        v94 = (v94 + 88);
      }
    }
  }

LABEL_134:
  v95 = *MEMORY[0x277D85DE8];
}

void sub_2726C1C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = RPBServer_Listener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void vp::rpb::Server::get_shared_instance(vp::rpb::Server *this)
{
  v2 = [MEMORY[0x277D46130] sharedInstance];
  *this = v2;
}

void vp::rpb::Server::add_host(vp::rpb::Server *this, id *a2)
{
  v4 = this;
  v3 = *a2;
  [(vp::rpb::Server *)v4 addHost:v3];
}

void vp::rpb::Server::add_host(vp::rpb::Server *this, id *a2, id *a3)
{
  v7 = this;
  v5 = *a2;
  v6 = *a3;
  [(vp::rpb::Server *)v7 addHost:v5 toItem:v6];
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t vp::rpb::Connection::Connection(uint64_t a1, id *a2, id *a3)
{
  v5 = vp::objc::ID::ID(a1, a2);
  vp::objc::ID::ID(v5 + 1, a3);
  if (*a1 && *(a1 + 8))
  {
    vp::rpb::Server::add_host(*a1, (a1 + 8));
  }

  return a1;
}

void sub_2726C1FC0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726C1FB0);
}

id *vp::rpb::Connection::operator=(id *a1)
{
  v3 = 0;
  v4 = 0;
  vp::objc::ID::ID(&v5, a1);
  vp::objc::ID::ID(&v6, a1 + 1);
  vp::objc::ID::operator=(a1, &v3);
  vp::objc::ID::operator=(a1 + 1, &v4);
  vp::objc::ID::operator=(&v3, &v5);
  vp::objc::ID::operator=(&v4, &v6);
  vp::rpb::Connection::~Connection(&v5);
  vp::rpb::Connection::~Connection(&v3);
  return a1;
}

void vp::rpb::Connection::~Connection(id *this)
{
  if (*this)
  {
    v2 = this + 1;
    if (this[1])
    {
      v3 = *this;
      v4 = *v2;
      [v3 removeHost:v4];

      vp::objc::ID::operator=(this + 1);
    }

    vp::objc::ID::operator=(this);
  }

  vp::objc::ID::~ID(this + 1);

  vp::objc::ID::~ID(this);
}

void sub_2726C20F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726C20CCLL);
}

uint64_t vp::vx::components::Share_Play::as_io_node_delegate_factory(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 240);
  }

  else
  {
    return 0;
  }
}

void vp::vx::components::Share_Play::configure(std::__shared_weak_count **this)
{
  v34 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Share_Play]", 30);
    v4 = BYTE7(v32);
    v5 = SBYTE7(v32);
    v6 = v31;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      p_p = __p;
      if (v5 >= 0)
      {
        p_p = &__p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = p_p;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = BYTE7(v32);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v11 = this[29];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = this[28];
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        v14 = *(this + 4);
        if (v14)
        {
          if (v14 == 3)
          {
            (v13->__on_zero_shared)(buf, v13, 87);
            v18 = *buf;
            v28 = *&buf[8];
            v29 = *&buf[8];
            *&buf[8] = 0;
            *&buf[16] = 0;
            vp::vx::data_flow::State<void>::~State(buf);
            v19 = this[1];
            __p = 0;
            v31 = v19;
            v32 = xmmword_272756720;
            v20 = (v19->__on_zero_shared)(v19, 72, 8);
            v26 = *(this + 13);
            v21 = v28;
            if (*(&v26 + 1))
            {
              atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
              v21 = v29;
            }

            *buf = v18;
            *&buf[8] = v21;
            *(v20 + 48) = &unk_2881C6630;
            operator new();
          }

          if (v14 != 2)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::string::basic_string<std::string_view,0>(buf, "vp::vx::components::Share_Play]", 0x1EuLL);
            if (buf[23] >= 0)
            {
              v23 = buf;
            }

            else
            {
              v23 = *buf;
            }

            v24 = *(this + 4) - 1;
            if (v24 > 2)
            {
              v25 = "iOS";
            }

            else
            {
              v25 = off_279E4A4E0[v24];
            }

            caulk::make_string("%s is not supported on %s", &__p, v23, v25);
            MEMORY[0x2743CB8B0](exception, &__p);
          }
        }

        (v13->__get_deleter)(buf, v13, 0);
        v15 = *buf;
        v27 = *&buf[8];
        *&buf[8] = 0;
        *&buf[16] = 0;
        vp::vx::data_flow::State<void>::~State(buf);
        v16 = this[1];
        __p = 0;
        v31 = v16;
        v32 = xmmword_2727565A0;
        v17 = (v16->__on_zero_shared)(v16, 56, 8);
        *buf = v15;
        *&buf[8] = v27;
        *(v17 + 32) = &unk_2881C6630;
        operator new();
      }
    }
  }

  _os_crash();
  __break(1u);
}

void sub_2726C26FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
    if ((v25 & 1) == 0)
    {
LABEL_8:
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v26);
  goto LABEL_8;
}

void *std::unique_ptr<vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate_Factory>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::data_flow::State<void>::~State((v2 + 8));
    *(v2 + 32) = &unk_2881C6630;
    v4 = *(v2 + 48);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::unique_ptr<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate_Factory>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::data_flow::State<void>::~State((v2 + 24));
    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    *(v2 + 48) = &unk_2881C6630;
    v5 = *(v2 + 64);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::components::Share_Play::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 232);
  *(a1 + 224) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Share_Play::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 216);
  *(a1 + 208) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Share_Play::~Share_Play(std::__shared_weak_count **this)
{
  vp::vx::components::Share_Play::~Share_Play(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Share_Play]", 30);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::io::Node_Delegate_Factory>>::reset[abi:ne200100](this + 30, 0);
  v11 = this[29];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[27];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  vp::Context::~Context((this + 2));
  v13 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::~AGC_Adaptive_Control_Delegate(vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate *this)
{
  vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::~AGC_Adaptive_Control_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::~AGC_Adaptive_Control_Delegate((this + *(*this - 24)));
}

void vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::~AGC_Adaptive_Control_Delegate(vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate *this)
{
  v20 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::unregister_listener(this + 10, *(this + 16));
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + 72, "vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate]", 61);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  *(this + 9) = &unk_2881C6630;
  v12 = *(this + 11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::~AGC_Adaptive_Control_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::process(vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate *this, int a2, vp::vx::io::Node *a3)
{
  if (a2)
  {
    return;
  }

  v5 = atomic_load(this + 37);
  if (v5)
  {
    vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::fetch_tuning_parameters(this, a3);
  }

  v6 = (*(*a3 + 8))(a3);
  if (v6)
  {
    (*(*v6 + 24))(&v23);
    if (v27)
    {
      caulk::expected<float,vp::vx::io::Error>::value(&v23);
      v8 = *&v23 == 1.0;
      goto LABEL_10;
    }
  }

  else
  {
    v31 = 0x1001880000000DLL;
    *&v32 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v33 = 0uLL;
    *(&v32 + 1) = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v34);
    v23 = 0x1001880000000DLL;
    v24 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v25 = 0uLL;
    v26 = v34;
    v27 = 0;
  }

  v7 = *(&v24 + 1);
  v9 = *(&v25 + 1);
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  v8 = 1;
  if (v9 < 0)
  {
    (*(*v26 + 24))(v26, v7, v9 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

LABEL_10:
  if ((v27 & 1) == 0 && SHIBYTE(v25) < 0)
  {
    (*(*v26 + 24))(v26, *(&v24 + 1), *(&v25 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  v30 = v8;
  v28 = &v30;
  v29 = 4;
  v10 = (*(*a3 + 16))(a3, v7);
  if (v10)
  {
    (*(*v10 + 40))(&v23);
    if (v27)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v31 = 0x1001CB0000000DLL;
    *&v32 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v33 = 0uLL;
    *(&v32 + 1) = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v34);
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = 0;
  }

  if (SHIBYTE(v25) < 0)
  {
    (*(*v26 + 24))(v26, *(&v24 + 1), *(&v25 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

LABEL_19:
  v11 = *(this + 5);
  if (v11)
  {
    *(this + 5) = v11 - 1;
    return;
  }

  v12 = (*(*a3 + 8))(a3);
  if (!v12)
  {
    v31 = 0x1001880000000DLL;
    *&v32 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v33 = 0uLL;
    *(&v32 + 1) = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v34);
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v13 = -200.0;
    v27 = 0;
    goto LABEL_29;
  }

  (*(*v12 + 24))(&v23);
  if (v27)
  {
    v13 = *&v23;
  }

  else
  {
    v13 = -200.0;
  }

  if ((v27 & 1) == 0)
  {
LABEL_29:
    if (SHIBYTE(v25) < 0)
    {
      (*(*v26 + 24))(v26, *(&v24 + 1), *(&v25 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }
  }

  v14 = *(this + 4);
  if (v13 > v14 && *(this + 36) == 1)
  {
    v15 = *(this + 7);
    v16 = (**a3)(a3);
    if (v16)
    {
      (*(*v16 + 32))(&v23, v15);
    }

    else
    {
      v31 = 0x1001910000000DLL;
      *&v32 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v34);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&v23, &v31);
      if (SHIBYTE(v33) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v34, *(&v32 + 1), *(&v33 + 1) & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    if ((v27 & 1) == 0 && SHIBYTE(v25) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, *(&v24 + 1), *(&v25 + 1) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v19 = *(this + 8);
    v20 = (**a3)(a3);
    if (v20)
    {
      (*(*v20 + 32))(&v23, v19);
    }

    else
    {
      v31 = 0x1001910000000DLL;
      *&v32 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v34);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&v23, &v31);
      if (SHIBYTE(v33) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v34, *(&v32 + 1), *(&v33 + 1) & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    if ((v27 & 1) == 0 && SHIBYTE(v25) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, *(&v24 + 1), *(&v25 + 1) & 0x7FFFFFFFFFFFFFFFLL);
    }

    *(this + 5) = *(this + 6);
    *(this + 36) = 0;
  }

  else if (v13 <= v14 && (*(this + 36) & 1) == 0)
  {
    v17 = *(this + 2);
    v18 = (**a3)(a3);
    if (v18)
    {
      (*(*v18 + 32))(&v23, v17);
    }

    else
    {
      v31 = 0x1001910000000DLL;
      *&v32 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v34);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&v23, &v31);
      if (SHIBYTE(v33) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v34, *(&v32 + 1), *(&v33 + 1) & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    if ((v27 & 1) == 0 && SHIBYTE(v25) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, *(&v24 + 1), *(&v25 + 1) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v21 = *(this + 3);
    v22 = (**a3)(a3);
    if (v22)
    {
      (*(*v22 + 32))(&v23, v21);
    }

    else
    {
      v31 = 0x1001910000000DLL;
      *&v32 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v34);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&v23, &v31);
      if (SHIBYTE(v33) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v34, *(&v32 + 1), *(&v33 + 1) & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    if ((v27 & 1) == 0 && SHIBYTE(v25) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, *(&v24 + 1), *(&v25 + 1) & 0x7FFFFFFFFFFFFFFFLL);
    }

    *(this + 5) = *(this + 6);
    *(this + 36) = 1;
  }
}

void *vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::fetch_tuning_parameters(vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate *this, const vp::vx::io::Node *a2)
{
  v4 = (*(*a2 + 8))(a2);
  if (!v4)
  {
    v22 = 0x1001880000000DLL;
    *&v23 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v24 = 0uLL;
    *(&v23 + 1) = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
    v17 = 0x1001880000000DLL;
    v18 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v19 = 0uLL;
    v20 = v25;
    v21 = 0;
    *(this + 4) = -1032821146;
LABEL_7:
    if (SHIBYTE(v19) < 0)
    {
      (*(*v20 + 24))(v20, *(&v18 + 1), *(&v19 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    goto LABEL_9;
  }

  (*(*v4 + 24))(&v17);
  v5 = *&v17;
  v6 = v21 & 1;
  if ((v21 & 1) == 0)
  {
    v5 = -60.1;
  }

  *(this + 4) = v5;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  v7 = (*(*a2 + 8))(a2);
  if (!v7)
  {
    v22 = 0x1001880000000DLL;
    *&v23 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v24 = 0uLL;
    *(&v23 + 1) = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = 0;
    *(this + 6) = 20;
LABEL_15:
    if (SHIBYTE(v19) < 0)
    {
      (*(*v20 + 24))(v20, *(&v18 + 1), *(&v19 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    goto LABEL_17;
  }

  (*(*v7 + 24))(&v17);
  v8 = *&v17;
  v9 = v21 & 1;
  if ((v21 & 1) == 0)
  {
    v8 = 20;
  }

  *(this + 6) = v8;
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_17:
  v10 = (*(*a2 + 8))(a2);
  if (!v10)
  {
    v22 = 0x1001880000000DLL;
    *&v23 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v24 = 0uLL;
    *(&v23 + 1) = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = 0;
    *(this + 7) = -1046950707;
LABEL_23:
    if (SHIBYTE(v19) < 0)
    {
      (*(*v20 + 24))(v20, *(&v18 + 1), *(&v19 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    goto LABEL_25;
  }

  (*(*v10 + 24))(&v17);
  v11 = *&v17;
  v12 = v21 & 1;
  if ((v21 & 1) == 0)
  {
    v11 = -19.1;
  }

  *(this + 7) = v11;
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_25:
  v13 = (*(*a2 + 8))(a2);
  if (!v13)
  {
    v22 = 0x1001880000000DLL;
    *&v23 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    v24 = 0uLL;
    *(&v23 + 1) = 0;
    result = vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = 0;
    *(this + 8) = 1078355558;
LABEL_31:
    if (SHIBYTE(v19) < 0)
    {
      return (*(*v20 + 24))(v20, *(&v18 + 1), *(&v19 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    return result;
  }

  result = (*(*v13 + 24))(&v17);
  v15 = *&v17;
  v16 = v21 & 1;
  if ((v21 & 1) == 0)
  {
    v15 = 3.1;
  }

  *(this + 8) = v15;
  if (!v16)
  {
    goto LABEL_31;
  }

  return result;
}

void *vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::notify(void *result, int a2, const vp::vx::io::Node *a3)
{
  if (!a2)
  {
    v4 = result;
    v5 = (*(*a3 + 8))(a3);
    if (v5)
    {
      (*(*v5 + 24))(&v24);
      v6 = v24;
      v7 = v28;
      if ((v28 & 1) == 0)
      {
        v6 = -1039899034;
      }
    }

    else
    {
      v19 = 0x1001880000000DLL;
      *&v20 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v21 = 0uLL;
      *(&v20 + 1) = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v22);
      v7 = 0;
      v24 = 0x1001880000000DLL;
      v25 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v26 = 0uLL;
      v27 = v22;
      v28 = 0;
      v6 = -1039899034;
    }

    *(v4 + 2) = v6;
    if ((v7 & 1) == 0 && SHIBYTE(v26) < 0)
    {
      (*(*v27 + 24))(v27, *(&v25 + 1), *(&v26 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    v8 = (*(*a3 + 8))(a3);
    if (v8)
    {
      (*(*v8 + 24))(&v24);
      v9 = v24;
      v10 = v28;
      if ((v28 & 1) == 0)
      {
        v9 = -1054762598;
      }
    }

    else
    {
      v19 = 0x1001880000000DLL;
      *&v20 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v21 = 0uLL;
      *(&v20 + 1) = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v22);
      v10 = 0;
      v24 = 0x1001880000000DLL;
      v25 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v26 = 0uLL;
      v27 = v22;
      v28 = 0;
      v9 = -1054762598;
    }

    *(v4 + 3) = v9;
    if ((v10 & 1) == 0 && SHIBYTE(v26) < 0)
    {
      (*(*v27 + 24))(v27, *(&v25 + 1), *(&v26 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    v11 = (*(*a3 + 8))(a3);
    if (!v11 || !(**v11)(v11, 1633905775))
    {
LABEL_32:
      v15 = (*(*a3 + 8))(a3);
      if (!v15 || !(**v15)(v15, 1634559855))
      {
        goto LABEL_46;
      }

      v16 = (*(*a3 + 8))(a3);
      if (!v16)
      {
        v19 = 0x1001880000000DLL;
        *&v20 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
        v21 = 0uLL;
        *(&v20 + 1) = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v22);
        v24 = v19;
        v25 = v20;
        v26 = v21;
        v27 = v22;
        v28 = 0;
        goto LABEL_44;
      }

      (*(*v16 + 24))(&v24);
      if ((v28 & 1) == 0)
      {
        goto LABEL_44;
      }

      v17 = *&v24;
      *(v4 + 3) = v24;
      v18 = (**a3)(a3);
      if (v18)
      {
        (*(*v18 + 32))(&v19, v17);
        if (v23)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v29 = 0x1001910000000DLL;
        *&v30 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
        v31 = 0uLL;
        *(&v30 + 1) = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v32);
        v19 = v29;
        v20 = v30;
        v21 = v31;
        v22 = v32;
        v23 = 0;
      }

      if (SHIBYTE(v21) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v22, *(&v20 + 1), *(&v21 + 1) & 0x7FFFFFFFFFFFFFFFLL);
      }

LABEL_43:
      if (v28)
      {
LABEL_46:
        result = vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::fetch_tuning_parameters(v4, a3);
        *(v4 + 36) = 1;
        *(v4 + 5) = 0;
        return result;
      }

LABEL_44:
      if (SHIBYTE(v26) < 0)
      {
        (*(*v27 + 24))(v27, *(&v25 + 1), *(&v26 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      goto LABEL_46;
    }

    v12 = (*(*a3 + 8))(a3);
    if (v12)
    {
      (*(*v12 + 24))(&v24);
      if (v28)
      {
        v13 = *&v24;
        *(v4 + 2) = v24;
        v14 = (**a3)(a3);
        if (v14)
        {
          (*(*v14 + 32))(&v19, v13);
          if (v23)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v29 = 0x1001910000000DLL;
          *&v30 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
          v31 = 0uLL;
          *(&v30 + 1) = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v32);
          v19 = v29;
          v20 = v30;
          v21 = v31;
          v22 = v32;
          v23 = 0;
        }

        if (SHIBYTE(v21) < 0)
        {
          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v22, *(&v20 + 1), *(&v21 + 1) & 0x7FFFFFFFFFFFFFFFLL);
        }

LABEL_29:
        if (v28)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v19 = 0x1001880000000DLL;
      *&v20 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v21 = 0uLL;
      *(&v20 + 1) = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v22);
      v24 = 0x1001880000000DLL;
      v25 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
      v26 = 0uLL;
      v27 = v22;
      v28 = 0;
    }

    if (SHIBYTE(v26) < 0)
    {
      (*(*v27 + 24))(v27, *(&v25 + 1), *(&v26 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    goto LABEL_32;
  }

  return result;
}

uint64_t vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::get_property_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 1835229540;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
  }

  return result;
}

uint64_t vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::get_parameter_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    qmemcpy(v4, "elcaegmabpsdfhcegmcetmcegtceedrmolcaogma", sizeof(v4));
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, v4, &v5, 0xAuLL);
  }

  else
  {
    *v4 = 0x616D676561636C65;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, v4, &v4[8], 2uLL);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726C4168(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate_Factory::~AGC_Adaptive_Control_Delegate_Factory(vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate_Factory *this)
{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 2);
  *(v1 + 4) = &unk_2881C6630;
  v2 = *(v1 + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 2);
  *(v1 + 4) = &unk_2881C6630;
  v2 = *(v1 + 6);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate_Factory::~AGC_Adaptive_Control_Delegate_Factory(vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate_Factory *this)
{
  vp::vx::data_flow::State<void>::~State(this + 2);
  *(this + 4) = &unk_2881C6630;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::data_flow::State<void>::~State(this + 2);
  *(this + 4) = &unk_2881C6630;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a5;
  v8 = (*(*a2 + 8))(a2);
  result = (*(*a2 + 24))(a2);
  if (v8)
  {
    v10 = result == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = result;
    v13 = 0;
    while (1)
    {
      result = (**v8)(v8, dword_27275A948[v13]);
      if ((result & 1) == 0)
      {
        break;
      }

      if (++v13 == 8)
      {
        result = (**v12)(v12, 1835229540);
        if (result)
        {
          v15 = 0;
          v16 = a3;
          v17 = xmmword_2727565F0;
          v14 = (*(*a3 + 16))(a3, 96, 8);
          vp::vx::data_flow::State<void>::State(&v20, (a1 + 8));
          *(v14 + 72) = &unk_2881C6630;
          operator new();
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726C4778(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate **std::unique_ptr<vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate,vp::Allocator_Delete<vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate>>::reset[abi:ne200100](vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate **result, vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::~AGC_Adaptive_Control_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__function::__func<vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::AGC_Adaptive_Control_Delegate(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Share_Play::AGC_Adaptive_Control_Delegate::AGC_Adaptive_Control_Delegate(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BE4F8;
  a2[1] = v2;
  return result;
}

void virtual thunk tovp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::~Dynamic_Ducking_Volume_Delegate(vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate *this)
{
  vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::~Dynamic_Ducking_Volume_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::~Dynamic_Ducking_Volume_Delegate((this + *(*this - 24)));
}

void vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::~Dynamic_Ducking_Volume_Delegate(vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v2 = caulk::concurrent::messenger::drain(v2);
  }

  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + 80, "vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate]", 63);
    v4 = v17;
    v5 = v17;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v19 = v10;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v17;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 12);
  v12 = *(this + 5);
  if (v12)
  {
    _Block_release(v12);
    *(this + 5) = 0;
  }

  v13 = *(this + 3);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  caulk::concurrent::shared_spin_lock::~shared_spin_lock((this + 8));
  *(this + 10) = &unk_2881C6630;
  v14 = *(this + 12);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::~Dynamic_Ducking_Volume_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_2726C4AB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unsigned int *vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::process(unsigned int *result, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v3 = result;
    v4 = (result + 2);
    v5 = atomic_load(result + 2);
    if (v5 <= 0x7FFFFFFE)
    {
      v7 = v5;
      while (1)
      {
        atomic_compare_exchange_strong(v4, &v7, v5 + 1);
        if (v7 == v5)
        {
          break;
        }

        v5 = v7;
        if (v7 >= 0x7FFFFFFF)
        {
          return result;
        }
      }

      v22 = 0;
      v20 = &v22;
      v21 = xmmword_2727567B0;
      v8 = (*(*a3 + 24))(a3);
      if (v8)
      {
        (*(*v8 + 32))(&v15);
        if (v19)
        {
          v9 = v22;
          if (v22 != v3[8])
          {
            if (v22 == 2)
            {
              vp::vx::io::Node::get_property<float,vp::vx::Graph_Property_ID>(&v15, a3);
              if (v19)
              {
                v10 = *&v15;
              }

              else
              {
                v10 = 0.63096;
              }

              if ((v19 & 1) == 0 && SHIBYTE(v17) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v18, *(&v16 + 1), *(&v17 + 1) & 0x7FFFFFFFFFFFFFFFLL);
              }

              vp::vx::io::Node::get_property<float,vp::vx::Graph_Property_ID>(&v15, a3);
              if (v19)
              {
                v11 = *&v15;
              }

              else
              {
                v11 = 1.0;
              }

              if ((v19 & 1) == 0 && SHIBYTE(v17) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v18, *(&v16 + 1), *(&v17 + 1) & 0x7FFFFFFFFFFFFFFFLL);
              }

              v12 = "unduck";
LABEL_41:
              v9 = v22;
              if (!v22)
              {
                return caulk::concurrent::shared_spin_lock::unlock_shared(v4);
              }

LABEL_44:
              v13 = *(v3 + 2);
              if (v13)
              {
                result = *MEMORY[0x277D7F098];
                if (!*MEMORY[0x277D7F098])
                {
                  __break(1u);
                  return result;
                }

                v14 = caulk::rt_safe_memory_resource::rt_allocate(result);
                *(v14 + 16) = 0;
                *(v14 + 24) = v3;
                *(v14 + 32) = v12;
                *(v14 + 40) = v10;
                *(v14 + 44) = v11;
                *v14 = &unk_2881BE608;
                *(v14 + 8) = 0;
                caulk::concurrent::messenger::enqueue(v13, v14);
                v9 = v22;
              }

              v3[8] = v9;
              return caulk::concurrent::shared_spin_lock::unlock_shared(v4);
            }

            if (v22 == 1)
            {
              vp::vx::io::Node::get_property<float,vp::vx::Graph_Property_ID>(&v15, a3);
              if (v19)
              {
                v10 = *&v15;
              }

              else
              {
                v10 = 0.63096;
              }

              if ((v19 & 1) == 0 && SHIBYTE(v17) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v18, *(&v16 + 1), *(&v17 + 1) & 0x7FFFFFFFFFFFFFFFLL);
              }

              vp::vx::io::Node::get_property<float,vp::vx::Graph_Property_ID>(&v15, a3);
              if (v19)
              {
                v11 = *&v15;
              }

              else
              {
                v11 = 0.25;
              }

              if ((v19 & 1) == 0 && SHIBYTE(v17) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v18, *(&v16 + 1), *(&v17 + 1) & 0x7FFFFFFFFFFFFFFFLL);
              }

              v12 = "duck";
              goto LABEL_41;
            }

            v12 = 0;
            v11 = 0.625;
            v10 = 0.63096;
            if (v22)
            {
              goto LABEL_44;
            }
          }

          return caulk::concurrent::shared_spin_lock::unlock_shared(v4);
        }
      }

      else
      {
        v23 = 0x1001B70000000DLL;
        *&v24 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
        v25 = 0uLL;
        *(&v24 + 1) = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
        v15 = v23;
        v16 = v24;
        v17 = v25;
        v18 = v26;
        v19 = 0;
      }

      if (SHIBYTE(v17) < 0)
      {
        (*(*v18 + 24))(v18, *(&v16 + 1), *(&v17 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      return caulk::concurrent::shared_spin_lock::unlock_shared(v4);
    }
  }

  return result;
}

void *vp::vx::io::Node::get_property<float,vp::vx::Graph_Property_ID>(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v14 = &v16;
  v15 = xmmword_2727567B0;
  v3 = (*(*a2 + 24))(a2);
  if (v3)
  {
    result = (*(*v3 + 32))(&v10);
    if (v13)
    {
      *a1 = v16;
      *(a1 + 48) = 1;
      return result;
    }
  }

  else
  {
    v17 = 0x1001B70000000DLL;
    *v18 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
    memset(&v18[8], 0, 24);
    result = vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v19);
    v10 = v17;
    *v11 = *v18;
    *&v11[16] = *&v18[16];
    v12 = v19;
    v13 = 0;
  }

  v5 = v10;
  v17 = v10;
  v6 = WORD2(v10);
  v7 = HIWORD(v10);
  v8 = *v11;
  v9 = v12;
  *v18 = *v11;
  v19 = v12;
  if ((v11[31] & 0x80000000) != 0)
  {
    result = std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(&v18[8], *&v11[8], *&v11[16]);
    v5 = v17;
    v6 = WORD2(v17);
    v7 = HIWORD(v17);
    v8 = *v18;
    v9 = v19;
  }

  else
  {
    *&v18[8] = *&v11[8];
    *&v18[24] = *&v11[24];
  }

  *a1 = v5;
  *(a1 + 4) = v6;
  *(a1 + 6) = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = *&v18[8];
  *(a1 + 32) = *&v18[24];
  *(a1 + 40) = v9;
  memset(&v18[8], 0, 24);
  *(a1 + 48) = 0;
  if ((v13 & 1) == 0 && (v11[31] & 0x80000000) != 0)
  {
    return (*(*v12 + 24))(v12, *&v11[8], *&v11[24] & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZZN2vp2vx10components10Share_Play31Dynamic_Ducking_Volume_Delegate23process_ducking_actionsERKNS4_2io4NodeEENK3__0clEvEUlT_T0_T1_E_JRPKcRfSK_EE7performEv(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v1 = *(a1 + 24);
  if (*(v1 + 40))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 44);
    log = vp::get_log(a1);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __p;
      vp::vx::io::get_log_context_info(__p, v1 + 80, "vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate]", 63);
      v7 = v18;
      LODWORD(v8) = v18;
      v9 = __p[1];
      v11 = vp::get_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (v8 >= 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = v9;
        }

        if (v8 < 0)
        {
          v6 = __p[0];
        }

        if (v12)
        {
          v8 = " ";
        }

        else
        {
          v8 = "";
        }

        v13 = log10f(v3);
        *buf = 136316162;
        v20 = v6;
        v21 = 2080;
        v22 = v8;
        v23 = 2080;
        v24 = v2;
        v25 = 2048;
        v26 = (v13 * 20.0);
        v27 = 2048;
        v28 = v4;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEFAULT, "%s%s%s other audio to %f dB over %f seconds", buf, 0x34u);
        LOBYTE(v8) = v18;
      }

      if ((v8 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(*(v1 + 40) + 16))(v3, v4);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void _ZN5caulk10concurrent7details15rt_message_callIZZN2vp2vx10components10Share_Play31Dynamic_Ducking_Volume_Delegate23process_ducking_actionsERKNS4_2io4NodeEENK3__0clEvEUlT_T0_T1_E_JRPKcRfSK_EED0Ev(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::notify(uint64_t a1, int a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      vp::vx::data_flow::State<void>::unregister_listener((a1 + 48), v3);
      v7[0] = 0;
      vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::update_state(a1, v7);
      if (v7[0])
      {
        _Block_release(v7[0]);
      }

      *(a1 + 72) = 0;
    }
  }

  else if (!a2 && !*(a1 + 72))
  {
    v5[0] = &unk_2881BE678;
    v5[1] = a1;
    v5[3] = v5;
    std::__function::__value_func<void ()(vp::Block<void({block_pointer})(float,float)> const&)>::__value_func[abi:ne200100](v6, v5);
    v7[3] = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2726C53B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

atomic_uint *vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::update_state(uint64_t a1, void **a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 8);
  v23 = a1 + 8;
  v24 = 1;
  v5 = caulk::concurrent::shared_spin_lock::lock((a1 + 8));
  v6 = (a1 + 40);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v5 = caulk::concurrent::messenger::drain(v5);
    }
  }

  log = vp::get_log(v5);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, a1 + 80, "vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate]", 63);
    v8 = v22;
    v9 = v22;
    v10 = __p[1];
    v12 = vp::get_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      v14 = __p[0];
      if (v9 >= 0)
      {
        v14 = __p;
      }

      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      v16 = *a2;
      *buf = 136315650;
      v26 = v14;
      v27 = 2080;
      v28 = v15;
      if (v16)
      {
        v17 = "added";
      }

      else
      {
        v17 = "removed";
      }

      v29 = 2080;
      v30 = v17;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%s%s%s dynamic ducking volume handler block", buf, 0x20u);
      LOBYTE(v9) = v22;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__destroy_at[abi:ne200100]<vp::Block<void ()(float,float)>,0>(v6);
  v18 = *a2;
  *a2 = 0;
  *v6 = v18;
  result = caulk::concurrent::shared_spin_lock::unlock(v4);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726C5568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2726C5530);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(vp::Block<void({block_pointer})(float,float)> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(vp::Block<void({block_pointer})(float,float)> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(float,float)>>::destroy_value(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    _Block_release(*a2);
    *a2 = 0;
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(float,float)>>::move_value(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  *a2 = v3;
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(float,float)>>::copy_value(uint64_t a1, void *a2, void **a3)
{
  result = *a3;
  if (*a3)
  {
    result = _Block_copy(result);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<void({block_pointer})(float,float)>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(float,float)> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BE630;
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(float,float)> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<void({block_pointer})(float,float)>>::register_listener(std::function<void ()(vp::Block<void({block_pointer})(float,float)> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BE630;
  std::__function::__value_func<void ()(vp::Block<void({block_pointer})(float,float)> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::register_state_listeners(void)::$_0,std::allocator<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::register_state_listeners(void)::$_0>,void ()(vp::Block<void({block_pointer})(float,float)> const&)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(a1 + 8);
  aBlock = v3;
  vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::update_state(v4, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

uint64_t std::__function::__func<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::register_state_listeners(void)::$_0,std::allocator<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::register_state_listeners(void)::$_0>,void ()(vp::Block<void({block_pointer})(float,float)> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BE678;
  a2[1] = v2;
  return result;
}

uint64_t vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::get_property_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  *&v5[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    qmemcpy(v4, "adcmaocmlucmudcmducm", sizeof(v4));
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, v4, v5, 5uLL);
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_2726C5BB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::get_parameter_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void virtual thunk tovp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate_Factory::~Dynamic_Ducking_Volume_Delegate_Factory(vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate_Factory *this)
{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 6);
  v2 = *(v1 + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(v1 + 6) = &unk_2881C6630;
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  vp::vx::data_flow::State<void>::~State(v1 + 6);
  v2 = *(v1 + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(v1 + 6) = &unk_2881C6630;
  v3 = *(v1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate_Factory::~Dynamic_Ducking_Volume_Delegate_Factory(vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate_Factory *this)
{
  vp::vx::data_flow::State<void>::~State(this + 6);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 6) = &unk_2881C6630;
  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::data_flow::State<void>::~State(this + 6);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 6) = &unk_2881C6630;
  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v13 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v7 = dword_27275A97C[v6];
    result = (*(*a2 + 24))(a2);
    if (!result)
    {
      break;
    }

    result = (*(*result + 8))(result, v7, 1);
    if ((result & 1) == 0)
    {
      break;
    }

    if (++v6 == 5)
    {
      v9 = (*(*a3 + 16))(a3, 104, 8);
      v10 = *(a1 + 8);
      if (*(&v10 + 1))
      {
        atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      vp::vx::data_flow::State<void>::State(&v12, (a1 + 24));
      *(v9 + 80) = &unk_2881C6630;
      operator new();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726C6110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate *a18)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](&a14);
    std::unique_ptr<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate,vp::Allocator_Delete<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate>>::reset[abi:ne200100](&a18, 0);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2726C60DCLL);
  }

  _Unwind_Resume(exception_object);
}

vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate **std::unique_ptr<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate,vp::Allocator_Delete<vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate>>::reset[abi:ne200100](vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate **result, vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Share_Play::Dynamic_Ducking_Volume_Delegate::~Dynamic_Ducking_Volume_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::components::Smart_Cover_Detector::~Smart_Cover_Detector(std::__shared_weak_count **this)
{
  vp::vx::components::Smart_Cover_Detector::~Smart_Cover_Detector(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Smart_Cover_Detector]", 40);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[3];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  this[4] = &unk_2881C6630;
  v12 = this[6];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t vp::vx::components::Speech_Activity_Event_Listener::as_io_node_delegate_factory(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 272);
  }
}

void vp::vx::components::Speech_Activity_Event_Listener::configure(std::__shared_weak_count **this)
{
  v30 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&v28, this, "vp::vx::components::Speech_Activity_Event_Listener]", 50);
    v4 = HIBYTE(v29);
    v5 = SHIBYTE(v29);
    v6 = v29;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = v28;
      if (v5 >= 0)
      {
        v9 = &v28;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *v27 = v9;
      *&v27[8] = 2080;
      *&v27[10] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v29);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(v28);
    }
  }

  v11 = this[29];
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = std::__shared_weak_count::lock(v11);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = this[28];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v14)
  {
    goto LABEL_30;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = this[31];
  if (!v15 || (v16 = std::__shared_weak_count::lock(v15), (v17 = v16) == 0) || (v18 = this[30], atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed), !v18))
  {
    while (1)
    {
      _os_crash();
      __break(1u);
      _os_crash();
      __break(1u);
      _os_crash();
      __break(1u);
LABEL_30:
      _os_crash();
      __break(1u);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v19 = this[33];
  if (!v19 || (v20 = std::__shared_weak_count::lock(v19), (v21 = v20) == 0) || (v22 = this[32], atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed), !v22))
  {
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  if ((this[14] & 1) == 0 && this[26])
  {
    (v22->__on_zero_shared)(&v28, v22, 86);
    *buf = v28;
    *&v27[4] = v29;
    v29 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    v23 = (this[1]->__on_zero_shared)(this[1], 112, 8);
    v25 = *(this + 13);
    if (*(&v25 + 1))
    {
      atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v28) = *buf;
    v29 = *&v27[4];
    *&v27[4] = 0;
    *&v27[12] = 0;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v23 + 88) = &unk_2881C6630;
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2726C69C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::IO_Speech_Activity_Event_Listener_Factory,vp::Allocator_Delete<vp::vx::IO_Speech_Activity_Event_Listener_Factory>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::data_flow::State<void>::~State((v2 + 64));
    vp::vx::data_flow::State<void>::~State((v2 + 40));
    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    *(v2 + 88) = &unk_2881C6630;
    v6 = *(v2 + 104);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components30Speech_Activity_Event_Listener9configureEvE3__0JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2) ^ 1;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components30Speech_Activity_Event_Listener9configureEvE3__0JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BE960;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::components::Speech_Activity_Event_Listener::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 264);
  *(a1 + 256) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Speech_Activity_Event_Listener::set_state_observer(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 248);
  *(a1 + 240) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Speech_Activity_Event_Listener::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 232);
  *(a1 + 224) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Speech_Activity_Event_Listener::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 216);
  *(a1 + 208) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Speech_Activity_Event_Listener::~Speech_Activity_Event_Listener(std::__shared_weak_count **this)
{
  vp::vx::components::Speech_Activity_Event_Listener::~Speech_Activity_Event_Listener(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Speech_Activity_Event_Listener]", 50);
    v4 = v17;
    v5 = v17;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v17;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::IO_Speech_Activity_Event_Listener_Factory,vp::Allocator_Delete<vp::vx::IO_Speech_Activity_Event_Listener_Factory>>::reset[abi:ne200100](this + 34, 0);
  v11 = this[33];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[31];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[29];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = this[27];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  vp::Context::~Context((this + 2));
  v15 = *MEMORY[0x277D85DE8];
}

int *vp::vx::data_flow::State<void>::State(int *a1, int *a2)
{
  *a1 = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  *(a1 + 1) = v3;
  *(a1 + 2) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *(a1 + 1);
  }

  if (v3)
  {
    v7 = *a1;
    v6[0] = v3;
    v6[1] = &v7;
    vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v3, "retain state", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::retain_state::$_0>, v6);
  }

  return a1;
}

int *vp::vx::data_flow::State<void>::~State(int *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    v6 = *a1;
    v5[0] = v2;
    v5[1] = &v6;
    vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v2, "release state", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::release_state::$_0>, v5);
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void vp::vx::data_flow::State<void>::get_value(int *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  if (v3)
  {
    v5 = *a1;
    v4[0] = v3;
    v4[1] = &v5;
    v4[2] = a2;
    vp::vx::data_flow::Engine::do_with_shared_state_lock(v3, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, v4);
  }
}

void vp::vx::data_flow::State<void>::set_value(int *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  if (v3)
  {
    v5 = *a1;
    v4[0] = v3;
    v4[1] = &v5;
    v4[2] = a2;
    vp::vx::data_flow::Engine::do_with_state_manager_lock(v3, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::set_state_value(unsigned int,vp::vx::data_flow::Value &&)::$_0>, v4);
  }
}

void ___ZN2vp2vx9data_flow5StateIvE9set_valueEONS1_5ValueEN10applesauce8dispatch2v15queueE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 1);
  if (v3)
  {
    v4 = *(a1 + 48);
    v6 = *v2;
    v5[0] = v3;
    v5[1] = &v6;
    v5[2] = v4;
    vp::vx::data_flow::Engine::do_with_state_manager_lock(v3, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::set_state_value(unsigned int,vp::vx::data_flow::Value &&)::$_0>, v5);
  }
}

void sub_2726C7078(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  std::exception_ptr::operator=((*(*(v10 + 32) + 8) + 40), &a10);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x2726C7068);
}

void vp::vx::data_flow::State<void>::set_value(int *a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 1);
  if (v4)
  {
    v5 = *a1;
    v7 = a3;
    v8 = v5;
    v6[0] = v4;
    v6[1] = &v8;
    v6[2] = &v7;
    v6[3] = a2;
    vp::vx::data_flow::Engine::do_with_unique_state_lock(v4, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::set_state_value(unsigned int,unsigned int,vp::vx::data_flow::Value &&)::$_0>, v6);
  }
}

std::__shared_mutex_base *vp::vx::data_flow::State<void>::register_listener(int *a1, uint64_t a2)
{
  result = *(a1 + 1);
  if (result)
  {
    v7 = *a1;
    v6 = 0;
    v5 = 0;
    v4[0] = &v6;
    v4[1] = result;
    v4[2] = &v7;
    v4[3] = a2;
    v4[4] = &v5;
    vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(result, "register listener", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::register_listener(unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)> &&,BOOL)::$_0>, v4);
    return v5;
  }

  return result;
}

{
  result = *(a1 + 1);
  if (result)
  {
    v7 = *a1;
    v6 = 1;
    v5 = 0;
    v4[0] = &v6;
    v4[1] = result;
    v4[2] = &v7;
    v4[3] = a2;
    v4[4] = &v5;
    vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(result, "register listener", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::register_listener(unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)> &&,BOOL)::$_0>, v4);
    return v5;
  }

  return result;
}

void vp::vx::data_flow::State<void>::unregister_listener(int *a1, int a2)
{
  v3 = *(a1 + 1);
  if (v3)
  {
    v4 = *a1;
    v6 = a2;
    v7 = v4;
    v5[0] = v3;
    v5[1] = &v7;
    v5[2] = &v6;
    vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v3, "unregister listener", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::unregister_listener(unsigned int,unsigned int)::$_0>, v5);
  }
}

void std::__shared_ptr_emplace<vp::vx::data_flow::Engine,vp::Allocator<vp::vx::data_flow::Engine>>::__on_zero_shared(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, a1 + 128, "vp::vx::data_flow::Engine]", 25);
    v4 = v19;
    v5 = v19;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v19;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(a1 + 528);
  if (v11)
  {
    v12 = (*(a1 + 520) + 72);
    do
    {
      --v11;
      v12 = boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector(v12) + 16;
    }

    while (v11);
  }

  if (*(a1 + 536))
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>::deallocate((a1 + 512), *(a1 + 520));
  }

  v13 = *(a1 + 480);
  if (v13)
  {
    do
    {
      v14 = *v13;
      boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,void>::~vector((v13 + 288));
      if (*(v13 + 264))
      {
        boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((v13 + 240), *(v13 + 248));
      }

      if (*(v13 + 216))
      {
        boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((v13 + 192), *(v13 + 200));
      }

      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v13 + 160);
      vp::vx::data_flow::Value::~Value((v13 + 136));
      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *>>>::deallocate[abi:ne200100](*(a1 + 488), v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = *(a1 + 456);
  *(a1 + 456) = 0;
  if (v15)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 472), v15, *(a1 + 464));
  }

  v16 = *(a1 + 432);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::mutex::~mutex((a1 + 360));
  std::mutex::~mutex((a1 + 296));
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 128));
  v17 = *MEMORY[0x277D85DE8];
}

void std::__shared_ptr_emplace<vp::vx::data_flow::Engine,vp::Allocator<vp::vx::data_flow::Engine>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881BE9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBF90);
}

void vp::vx::data_flow::State_Manager::set_delegate(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = (a1 + 296);
  v4 = *(a1 + 304);
  *v3 = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

__n128 vp::vx::data_flow::State_Manager::create_state(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = *a2;
  if (a2->n128_u64[1])
  {
    atomic_fetch_add_explicit((v6.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2->n128_u64[0];
  v8 = 0;
  v7[0] = &v8;
  v7[1] = v4;
  v7[2] = a3;
  vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v4, "create state", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::create_state(vp::vx::data_flow::Value &&)::$_0>, v7);
  *a1 = v8;
  result = v6;
  *(a1 + 8) = v6;
  return result;
}

double vp::vx::data_flow::State_Manager::create_state(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v15[0] = &v15[-2] - v8;
  v15[1] = v7;
  if (v7)
  {
    memmove(&v15[-2] - v8, v6, 4 * v7);
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  v14 = *a2;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  else
  {
    v11 = v9;
  }

  v17 = 0;
  v16[0] = &v17;
  v16[1] = v11;
  v16[2] = a3;
  v16[3] = v15;
  vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v11, "create state", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::create_state(std::function<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)> &&,std::span<unsigned int,18446744073709551615ul> const&)::$_0>, v16);
  *a1 = v17;
  result = *&v14;
  *(a1 + 8) = v14;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::data_flow::State_Manager::find_state(vp::vx::data_flow::State_Manager *this, __int128 *a2, int a3)
{
  v6 = *a2;
  v11 = a3;
  v10 = 0;
  v9[0] = v6;
  v9[1] = &v11;
  v9[2] = &v10;
  vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v6, "find and retain state", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::find_and_retain_state::$_0>, v9);
  if (v10 == 1)
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *this = a3;
    *(this + 8) = v7;
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

uint64_t vp::vx::data_flow::State_Transaction::State_Transaction(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = 0;
    v5[0] = &v6;
    v5[1] = v3;
    vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v3, "create state transaction", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::create_state_transaction(void)::$_0>, v5);
    *a1 = v6;
  }

  return a1;
}

void vp::vx::data_flow::State_Transaction::~State_Transaction(vp::vx::data_flow::State_Transaction *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v5 = *this;
    v4[0] = v2;
    v4[1] = &v5;
    vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v2, "release state transaction", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::release_state_transaction::$_0>, v4);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::data_flow::State_Transaction::commit(vp::vx::data_flow::State_Transaction *this, uint64_t a2)
{
  if (a2)
  {
    v3 = this;
    v2[0] = a2;
    v2[1] = &v3;
    vp::vx::data_flow::Engine::do_with_state_manager_lock(a2, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::commit_state_transaction::$_0>, v2);
  }
}

char *std::__itoa::__traits<unsigned long long>::__read[abi:ne200100](char *a1, char *a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = 19;
  do
  {
    v5 = *a1;
    if ((*a1 - 58) < 0xF6u)
    {
      break;
    }

    ++a1;
    v20[v4] = (v5 - 48);
    v6 = v4-- != 0;
    v7 = v6;
  }

  while (a1 != a2 && v7);
  v8 = v4 + 1;
  v9 = (v4 + 1) << 32;
  v10 = v20[v8];
  if (v8 <= 17)
  {
    v11 = (&v20[1] + (v9 >> 29));
    v12 = &qword_27275A998;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      v10 += v15 * v13;
    }

    while (v11 < v21);
  }

  *a3 = v10;
  v16 = *(&std::__itoa::__pow10_64 + ((0x1300000000 - v9) >> 29));
  v17 = !is_mul_ok(v21[0], v16);
  *a4 = v21[0] * v16;
  v18 = *MEMORY[0x277D85DE8];
  return &a1[-v17];
}

unint64_t vp::vx::database::v1::utility::parse_uint64(char *a1, uint64_t a2)
{
  v2 = &a1[a2];
  v3 = a1;
  if (a2)
  {
    while (*v3 == 48)
    {
      ++v3;
      if (!--a2)
      {
        v3 = v2;
        break;
      }
    }
  }

  if (v3 == v2 || *v3 - 48 >= 0xA)
  {
    v8 = 0;
    v5 = 0;
    v6 = 0;
    if (v3 != a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = std::__itoa::__traits<unsigned long long>::__read[abi:ne200100](v3, v2, &v10, &v9);
    if ((v4 == v2 || *v4 - 48 > 9) && !__CFADD__(v10, v9))
    {
      v8 = v10 + v9;
LABEL_13:
      v6 = v8 & 0xFFFFFFFFFFFFFF00;
      v5 = v8;
      return v6 | v5;
    }

    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void vp::vx::database::v1::runtime::String_Pool::intern(void *a1, unint64_t a2, UInt8 *bytes, CFIndex numBytes)
{
  *a1 = 0;
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, numBytes, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  v11 = v10;
  if (!v10)
  {
    v45 = 0;
    return;
  }

  v12 = CFGetTypeID(v10);
  if (v12 != CFStringGetTypeID())
  {
    v45 = 0;
    CFRelease(v11);
    return;
  }

  v43 = a1;
  v45 = v11;
  v13 = std::hash<applesauce::CF::StringRef>::operator()(v11);
  v14 = *(a2 + 8);
  if (v14)
  {
    v4 = v13;
    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    v16 = v15.u32[0];
    if (v15.u32[0] > 1uLL)
    {
      v17 = v13;
      v18 = a2;
      if (v13 >= *&v14)
      {
        v17 = v13 % *&v14;
      }
    }

    else
    {
      v17 = (*&v14 - 1) & v13;
      v18 = a2;
    }

    v19 = *(*v18 + 8 * v17);
    if (v19)
    {
      for (i = *v19; i; i = *i)
      {
        v21 = *(i + 8);
        if (v21 == v4)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(i + 16), &v45) == kCFCompareEqualTo)
          {
            v38 = v43;
            goto LABEL_64;
          }
        }

        else
        {
          if (v16 > 1)
          {
            if (v21 >= *&v14)
            {
              v21 %= *&v14;
            }
          }

          else
          {
            v21 &= *&v14 - 1;
          }

          if (v21 != v17)
          {
            break;
          }
        }
      }
    }
  }

  v22 = CFStringCreateWithBytes(v9, bytes, numBytes, 0x8000100u, 0);
  v23 = v22;
  if (v22)
  {
    v24 = CFGetTypeID(v22);
    if (v24 == CFStringGetTypeID())
    {
      v44 = v23;
      v25 = std::hash<applesauce::CF::StringRef>::operator()(v23);
      v26 = v25;
      v27 = *(a2 + 8);
      if (v27)
      {
        v28 = vcnt_s8(v27);
        v28.i16[0] = vaddlv_u8(v28);
        v29 = v28.u32[0];
        if (v28.u32[0] > 1uLL)
        {
          v4 = v25;
          if (v25 >= v27)
          {
            v4 = v25 % v27;
          }
        }

        else
        {
          v4 = (v27 - 1) & v25;
        }

        v30 = *(*a2 + 8 * v4);
        if (v30)
        {
          for (i = *v30; i; i = *i)
          {
            v31 = *(i + 8);
            if (v31 == v26)
            {
              if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(i + 16), &v44) == kCFCompareEqualTo)
              {
                v38 = v43;
                goto LABEL_63;
              }
            }

            else
            {
              if (v29 > 1)
              {
                if (v31 >= v27)
                {
                  v31 %= v27;
                }
              }

              else
              {
                v31 &= v27 - 1;
              }

              if (v31 != v4)
              {
                break;
              }
            }
          }
        }
      }

      i = (*(**(a2 + 32) + 16))(*(a2 + 32), 24, 8);
      *i = 0;
      *(i + 8) = v26;
      CFRetain(v23);
      *(i + 16) = v23;
      v32 = (*(a2 + 40) + 1);
      v33 = *(a2 + 48);
      if (!v27 || (v33 * v27) < v32)
      {
        v34 = 1;
        if (v27 >= 3)
        {
          v34 = (v27 & (v27 - 1)) != 0;
        }

        v35 = v34 | (2 * v27);
        v36 = vcvtps_u32_f32(v32 / v33);
        if (v35 <= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v35;
        }

        std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::__rehash<true>(a2, v37);
        v27 = *(a2 + 8);
        if ((v27 & (v27 - 1)) != 0)
        {
          if (v26 >= v27)
          {
            v4 = v26 % v27;
          }

          else
          {
            v4 = v26;
          }
        }

        else
        {
          v4 = (v27 - 1) & v26;
        }
      }

      v39 = *a2;
      v40 = *(*a2 + 8 * v4);
      if (v40)
      {
        *i = *v40;
        v38 = v43;
      }

      else
      {
        *i = *(a2 + 24);
        *(a2 + 24) = i;
        *(v39 + 8 * v4) = a2 + 24;
        v38 = v43;
        if (!*i)
        {
LABEL_62:
          ++*(a2 + 40);
LABEL_63:
          CFRelease(v23);
LABEL_64:
          v42 = *(i + 16);
          *v38 = v42;
          if (v42)
          {
            CFRetain(v42);
          }

          goto LABEL_66;
        }

        v41 = *(*i + 8);
        if ((v27 & (v27 - 1)) != 0)
        {
          if (v41 >= v27)
          {
            v41 %= v27;
          }
        }

        else
        {
          v41 &= v27 - 1;
        }

        v40 = (*a2 + 8 * v41);
      }

      *v40 = i;
      goto LABEL_62;
    }

    CFRelease(v23);
  }

LABEL_66:
  CFRelease(v11);
}

void sub_2726C7EA4(void *a1, const void **a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  std::pmr::polymorphic_allocator<std::__hash_node<applesauce::CF::StringRef,void *>>::destroy[abi:ne200100]<applesauce::CF::StringRef>(*(v4 + 16));
  std::allocator_traits<vp::Allocator<std::__hash_node<applesauce::CF::StringRef,void *>>>::deallocate[abi:ne200100](*(v3 + 32), v4);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  __cxa_begin_catch(a1);
  applesauce::CF::ObjectRef<__CFString const*>::operator=(a2);
  __cxa_end_catch();
  JUMPOUT(0x2726C7E7CLL);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::operator=(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t vp::utility::CASuperBowl(vp::utility *this, const std::__fs::filesystem::path *a2)
{
  v13[19] = *MEMORY[0x277D85DE8];
  memset(__p, 0, 24);
  std::string::append[abi:ne200100]<char const*,0>(__p, "CASuperBowl", "");
  std::__fs::filesystem::operator/[abi:ne200100](&v10, this, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(&v10, 0);
  if (__p[0].__r_.__value_.__s.__data_[0] == 1)
  {
    std::ifstream::basic_ifstream(__p);
    if (v12)
    {
      v9 = 0;
      v3 = MEMORY[0x2743CBA60](__p, &v9);
      if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = v9 & 0xFFFFFF00;
      }

      if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = v9;
      }

      v6 = ((*(v3 + *(*v3 - 24) + 32) & 5) == 0) << 32;
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v6 = 0;
    }

    __p[0].__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
    *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x2743CBA00](&__p[0].__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x2743CBE30](v13);
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
  }

  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  result = v6 | v4 | v5;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726C8180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    std::ifstream::~ifstream(&a17);
    MEMORY[0x2743CBE30](&a71);
    if (a16 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2726C814CLL);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(uint64_t *a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v7 = *(a2 + 3);
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a1[7];
  operator new();
}

uint64_t **std::unique_ptr<vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1},std::default_delete<vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v5 = v2;
    std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x2743CBFA0](v2, 0x20C40A759441BLL);
  }

  return a1;
}

uint64_t **applesauce::dispatch::v1::async<vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1}>(dispatch_queue_s *,vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v8 = a1;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v9[0] = std::pmr::get_default_resource(v3);
        v9[1] = 0;
        v9[2] = &vp::vx::data_flow::Value::type_id<std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>>(void)::s_type_id;
        storage = vp::vx::data_flow::Value::allocate_storage(v9);
        *storage = 0;
        storage[1] = 0;
        storage[2] = 0;
        storage[3] = *(a1 + 24);
        std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__init_with_size[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*,vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*>(storage, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
        vp::vx::data_flow::State<void>::set_value((v5 + 32), v9);
        vp::vx::data_flow::Value::~Value(v9);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return std::unique_ptr<vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1},std::default_delete<vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_2726C83EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, char a10)
{
  vp::vx::data_flow::Value::~Value(&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  std::unique_ptr<vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1},std::default_delete<vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>>::compare_value(uint64_t a1, uint64_t **a2, const __CFString ****a3)
{
  v3 = **a2;
  v4 = (*a2)[1];
  v5 = **a3;
  if (v4 - v3 != (*a3)[1] - v5)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  v6 = v3 + 8;
  do
  {
    v7 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v6 - 8), v5);
    result = v7 == kCFCompareEqualTo;
    ++v5;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == v4;
    }

    v6 += 8;
  }

  while (!v9);
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v3->n128_u64[0] = 0;
  v3->n128_u64[1] = 0;
  v3[1].n128_u64[0] = 0;
  v3[1].n128_u64[1] = v4[1].n128_u64[1];
  result = *v4;
  *v3 = *v4;
  v3[1].n128_u64[0] = v4[1].n128_u64[0];
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>>::copy_value(uint64_t a1, void **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = *(v4 + 24);
  return std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__init_with_size[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*,vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*>(v3, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 3);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 32, 8);
  *a2 = result;
  return result;
}

uint64_t **_ZNSt3__110__function6__funcIZN2vp2vx26System_Status_Manager_Impl9configureERNS3_29Voice_Processor_State_ManagerEEUlT_E_NS_9allocatorIS8_EEFvNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISF_EEEEEEclEOSI_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v12 = *a2;
  v13 = v4;
  v6 = a2[2];
  v5 = a2[3];
  v14 = v6;
  v15 = v5;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 8);
      if (v10)
      {
        *&v16 = v3;
        *(&v16 + 1) = v4;
        v17 = v6;
        v18 = v5;
        v13 = 0;
        v14 = 0;
        v12 = 0;
        vp::vx::System_Status_Manager_Impl::update_camera_capture_attributions(v10, &v16);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  *&v16 = &v12;
  return std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void _ZNSt3__110__function6__funcIZN2vp2vx26System_Status_Manager_Impl9configureERNS3_29Voice_Processor_State_ManagerEEUlT_E_NS_9allocatorIS8_EEFvNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISF_EEEEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx26System_Status_Manager_Impl9configureERNS3_29Voice_Processor_State_ManagerEEUlT_E_NS_9allocatorIS8_EEFvNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISF_EEEEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx26System_Status_Manager_Impl9configureERNS3_29Voice_Processor_State_ManagerEEUlT_E_NS_9allocatorIS8_EEFvNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISF_EEEEEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BE9E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx26System_Status_Manager_Impl9configureERNS3_29Voice_Processor_State_ManagerEEUlT_E_NS_9allocatorIS8_EEFvNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISF_EEEEEED0Ev(void *a1)
{
  *a1 = &unk_2881BE9E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx26System_Status_Manager_Impl9configureERNS3_29Voice_Processor_State_ManagerEEUlT_E_NS_9allocatorIS8_EEFvNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISF_EEEEEED1Ev(void *a1)
{
  *a1 = &unk_2881BE9E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<vp::vx::System_Status_Manager_Impl>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  vp::vx::data_flow::State<void>::~State((a1 + 56));
  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<vp::vx::System_Status_Manager_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881BEAD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::__function::__func<vp::vx::System_Status_Manager::get_is_camera_active(vp::vx::Voice_Processor_State_Manager &,vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0,std::allocator<vp::vx::System_Status_Manager::get_is_camera_active(vp::vx::Voice_Processor_State_Manager &,vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>,void ()(BOOL const&)>::operator()(vp *a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "not active";
    if (v2)
    {
      v4 = "active";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_DEFAULT, "camera is %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNKS3_26System_Status_Manager_Impl20get_is_camera_activeERS8_NS4_5StateIN10applesauce2CF9StringRefEEEEUlT_T0_E_JNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISO_EEEESF_EEEDaOSH_DpRKNSC_IT0_EEEUlDpRKT_E_JSR_SF_EEERNS4_13State_ManagerESH_SY_EUlPPKNS4_5ValueEPS16_E_NS_9allocatorIS1B_EEFvS19_S1A_EEclEOS19_OS1A_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  v18 = 0;
  v19 = 0;
  v8 = *(v6 + 24);
  v20 = 0;
  v21 = v8;
  std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__init_with_size[abi:ne200100]<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*,vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution*>(&v18, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  v9 = *v7;
  if (*v7)
  {
    CFRetain(*v7);
  }

  v17 = v9;
  v10 = v19;
  if (v18 == v19)
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    CFRelease(v9);
    goto LABEL_17;
  }

  v11 = v18 + 8;
  do
  {
    v12 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v11 - 8), &v17);
    v13 = v12 == kCFCompareEqualTo;
    if (v12)
    {
      v14 = v11 == v10;
    }

    else
    {
      v14 = 1;
    }

    v11 += 8;
  }

  while (!v14);
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_17:
  v22 = &v18;
  std::vector<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution,vp::Allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>>::__destroy_vector::operator()[abi:ne200100](&v22);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v15);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v13;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNKS3_26System_Status_Manager_Impl20get_is_camera_activeERS8_NS4_5StateIN10applesauce2CF9StringRefEEEEUlT_T0_E_JNS_6vectorINS2_8services13System_Status19Media_Status_Domain26Camera_Capture_AttributionENS2_9AllocatorISO_EEEESF_EEEDaOSH_DpRKNSC_IT0_EEEUlDpRKT_E_JSR_SF_EEERNS4_13State_ManagerESH_SY_EUlPPKNS4_5ValueEPS16_E_NS_9allocatorIS1B_EEFvS19_S1A_EE7__cloneEPNS0_6__baseIS1E_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BEA90;
  *(a2 + 8) = *(result + 8);
  return result;
}

vp::rpb::Terminal *vp::rpb::Terminal::Terminal(vp::rpb::Terminal *this, const CA::StreamDescription *a2)
{
  v4 = objc_alloc(MEMORY[0x277D46138]);
  v5 = *(a2 + 1);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 4);
  v6 = [v4 initWithFormat:v8];
  *this = v6;

  return this;
}

uint64_t vp::vx::database::v1::syntax::decisions::Then::evaluate(vp::vx::database::v1::syntax::decisions::Then *this, const vp::vx::database::v1::Request *a2, vp::vx::database::v1::Response *a3)
{
  v6 = *(this + 2);
  if (v6)
  {
    v7 = (*(*v6 + 24))(v6, a2, a3);
  }

  else
  {
    v7 = 0;
  }

  v9 = *(this + 3);
  v8 = *(this + 4);
  while (v9 != v8)
  {
    v10 = *(v9 + 1);
    if (v10)
    {
      LODWORD(v10) = (*(*v10 + 24))(v10, a2, a3);
    }

    v12 = *v9;
    v9 += 4;
    v11 = v12;
    v13 = v7 & v10;
    if (v12)
    {
      v13 = v11;
    }

    if (v11 == 1)
    {
      v7 |= v10;
    }

    else
    {
      v7 = v13;
    }
  }

  return v7 & 1;
}

uint64_t vp::vx::database::v1::syntax::decisions::Then::build(vp::vx::database::v1::syntax::decisions::Then *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v4 = (*(*v4 + 16))(v4, a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v42;
  default_resource = std::pmr::get_default_resource(v4);
  v40 = v42;
  v41 = xmmword_272756790;
  v7 = *(this + 3);
  v8 = *(this + 4);
  if (v7 != v8)
  {
    while (*v7 != 1)
    {
      if (!*v7)
      {
        v9 = (*(**(v7 + 8) + 16))(*(v7 + 8), a2);
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
        v10 = v9;
        *(a2 + 70) = 1;
        v11 = *(a2 + 8);
        v12 = *(a2 + 12);
        v13 = *(a2 + 10);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v10);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<signed char>(a2, 0);
        v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v11 - v12 + v13);
        apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::decisions::detail::Then>(*(a2 + 4), *(a2 + 5), v14);
        v38 = v14;
        v15 = v41;
        v16 = v40 + 4 * v41;
        if (v41 == *(&v41 + 1))
        {
          goto LABEL_13;
        }

LABEL_10:
        *v16 = v14;
        *&v41 = v15 + 1;
      }

LABEL_11:
      v7 += 16;
      if (v7 == v8)
      {
        v6 = v40;
        v22 = v41;
        goto LABEL_15;
      }
    }

    v17 = (*(**(v7 + 8) + 16))(*(v7 + 8), a2);
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
    v18 = v17;
    *(a2 + 70) = 1;
    v19 = *(a2 + 8);
    v20 = *(a2 + 12);
    v21 = *(a2 + 10);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v18);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<signed char>(a2, 1);
    v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v19 - v20 + v21);
    apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::decisions::detail::Then>(*(a2 + 4), *(a2 + 5), v14);
    v38 = v14;
    v15 = v41;
    v16 = v40 + 4 * v41;
    if (v41 == *(&v41 + 1))
    {
LABEL_13:
      boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>>>(&v43, &default_resource, v16, &v38);
      boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then> *,false>::operator*(v43);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
LABEL_15:
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a2, v22, 4uLL);
  if (v22)
  {
    v23 = v22;
    do
    {
      v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, *&v6[4 * v23 - 4]);
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a2, v24);
      --v23;
    }

    while (v23);
  }

  v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a2, v22);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v26 = *(a2 + 8);
  v27 = *(a2 + 12);
  v28 = *(a2 + 10);
  if (v25)
  {
    v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v25);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 6, v29);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v5);
  v30 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v26 - v27 + v28);
  v31 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v32 = v30;
  *(a2 + 70) = 1;
  v33 = *(a2 + 8);
  v34 = *(a2 + 12);
  v35 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v32);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v31);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 6);
  v36 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v33 - v34 + v35);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v36);
  if (*(&v41 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,vp::Allocator<void>,void>::deallocate(&default_resource, v40);
  }

  return v36;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<signed char>(apple::aiml::flatbuffers2::vector_downward *this, int a2)
{
  v2 = a2;
  v3 = this;
  if (a2 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v3, 1uLL);
    v4 = (*(v3 + 6) - 1);
    *(v3 + 6) = v4;
    *v4 = v2;
    v5 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v3, 8uLL);
    **(v3 + 7) = v5 | 0x400000000;
    *(v3 + 7) += 8;
    ++*(v3 + 16);
    v6 = *(v3 + 34);
    if (v6 <= 4)
    {
      LOWORD(v6) = 4;
    }

    *(v3 + 34) = v6;
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::decisions::detail::Then>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = (a2 + result - a3 - *(a2 + result - a3));
  if (*v3 < 7u || !v3[3])
  {
    __assert_rtn("Required", "flatbuffers.h", 2702, "ok");
  }

  return result;
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = (v14 + a3 - v15);
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 1, a3, v18 - a3);
    }
  }

  if (v15)
  {
    v19 = *(a2 + 24);
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v20 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::decisions::detail::Then>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::database::v1::syntax::decisions::Then::~Then(vp::vx::database::v1::syntax::decisions::Then *this)
{
  *this = &unk_2881BEBA0;
  v3 = (this + 24);
  std::vector<std::tuple<vp::vx::database::v1::syntax::Logic,std::unique_ptr<vp::vx::database::v1::syntax::Decision>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BEBA0;
  v3 = (this + 24);
  std::vector<std::tuple<vp::vx::database::v1::syntax::Logic,std::unique_ptr<vp::vx::database::v1::syntax::Decision>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void std::vector<std::tuple<vp::vx::database::v1::syntax::Logic,std::unique_ptr<vp::vx::database::v1::syntax::Decision>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void vp::vx::database::v1::syntax::decisions::Then::add_decision(void *a1, uint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x100000000) != 0)
  {
    v8 = a1[4];
    v9 = a1[5];
    if (v8 >= v9)
    {
      v12 = a1[3];
      v13 = v8 - v12;
      v14 = (v8 - v12) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v16 = v9 - v12;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = 16 * v14;
      *v18 = a2;
      v19 = *a3;
      *a3 = 0;
      *(v18 + 8) = v19;
      v11 = 16 * v14 + 16;
      memcpy(0, v12, v13);
      a1[3] = 0;
      a1[4] = v11;
      a1[5] = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v8 = a2;
      v10 = *a3;
      *a3 = 0;
      *(v8 + 8) = v10;
      v11 = v8 + 16;
    }

    a1[4] = v11;
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    v6 = a1[2];
    a1[2] = v5;
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

id *vp::rpb::Array<vp::rpb::Terminal>::Array(id *a1, id *a2, uint64_t a3)
{
  *a1 = 0;
  v6 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2;
      [v6 addObject:v8];

      ++a2;
      v7 -= 8;
    }

    while (v7);
  }

  v9 = [v6 copy];
  v11 = v9;
  vp::objc::ID::operator=(a1, &v11);
  vp::objc::ID::~ID(&v11);

  return a1;
}

{
  *a1 = 0;
  v6 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2;
      [v6 addObject:v8];

      ++a2;
      v7 -= 8;
    }

    while (v7);
  }

  v9 = [v6 copy];
  v11 = v9;
  vp::objc::ID::operator=(a1, &v11);
  vp::objc::ID::~ID(&v11);

  return a1;
}

void vp::rpb::Array<vp::rpb::Terminal>::operator[](void *a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:?];
  *a1 = v3;
}

uint64_t vp::vx::data_flow::Value::allocate_storage(vp::vx::data_flow::Value *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*v1 + 16);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t vp::vx::data_flow::Value::deallocate_storage(vp::vx::data_flow::Value *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*v1 + 24);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

vp::vx::data_flow::Value *vp::vx::data_flow::Value::Value(vp::vx::data_flow::Value *this, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *this = a3;
  *(this + 1) = 0;
  v4 = this + 8;
  v5 = *(a2 + 16);
  *(this + 2) = v5;
  if (v5)
  {
    vp::vx::data_flow::Value::allocate_storage(this);
    v7 = *(this + 2);
    if (!v7)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    (*(*v7 + 56))(v7, v4, a2 + 8);
  }

  v8 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2726C9FBC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    vp::vx::data_flow::Value::deallocate_storage(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

vp::vx::data_flow::Value *vp::vx::data_flow::Value::operator=(vp::vx::data_flow::Value *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::Value::~Value(a1);
  *v4 = *a2;
  v4[1] = 0;
  v5 = v4 + 1;
  v6 = a2[2];
  v4[2] = v6;
  if (v6)
  {
    vp::vx::data_flow::Value::allocate_storage(a1);
    v7 = *(a1 + 2);
    if (!v7)
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    (*(*v7 + 48))(v7, v5, a2 + 1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2726CA13C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    vp::vx::data_flow::Value::deallocate_storage(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::data_flow::Value::~Value(vp::vx::data_flow::Value *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 64))(v2, this + 8);
    vp::vx::data_flow::Value::deallocate_storage(this);
  }
}

uint64_t vp::vx::data_flow::Value::view_storage(vp::vx::data_flow::Value *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*v1 + 32);
  v3 = *MEMORY[0x277D85DE8];
  v4 = this + 8;
  v5 = *(this + 2);

  return v2(v5, v4);
}

{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*v1 + 40);
  v3 = *MEMORY[0x277D85DE8];
  v4 = this + 8;
  v5 = *(this + 2);

  return v2(v5, v4);
}

void sub_2726CA300(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_2726CA428(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::Voice_Processor::handle_dsp_node_factory_file_path_adjustment_request(std::__fs::filesystem::path *this@<X2>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    goto LABEL_2;
  }

  __ec.__val_ = 0;
  v6 = std::system_category();
  __ec.__cat_ = v6;
  v7 = *(a2 + 632);
  v8 = *(a2 + 640);
  if (!v7 && v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v8)
  {
    v9 = 24 * v8;
    while (1)
    {
      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      std::__fs::filesystem::operator/[abi:ne200100](a3, v7, this);
      std::__fs::filesystem::__status(a3, &__ec);
      if (v11)
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v6;
        if (v11 != 255)
        {
          break;
        }
      }

      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      v7 += 24;
      v9 -= 24;
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    std::__fs::filesystem::operator/[abi:ne200100](a3, a2 + 288, this);
    std::__fs::filesystem::__status(a3, &__ec);
    if (!v11 || (__ec.__val_ = 0, __ec.__cat_ = v6, v11 == 255))
    {
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

LABEL_2:
      *a3 = *&this->__pn_.__r_.__value_.__l.__data_;
      *(a3 + 16) = *(&this->__pn_.__r_.__value_.__l + 2);
      this->__pn_.__r_.__value_.__l.__size_ = 0;
      this->__pn_.__r_.__value_.__r.__words[2] = 0;
      this->__pn_.__r_.__value_.__r.__words[0] = 0;
    }
  }
}

void vp::vx::Voice_Processor::get_dsp_node_property_override(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v90 = *MEMORY[0x277D85DE8];
  v65 = a2;
  if (a3 <= 1936746611)
  {
    if (a3 > 1919509618)
    {
      if (a3 != 1919509619)
      {
        if (a3 != 1936225381)
        {
          if (a3 != 1936745587)
          {
            goto LABEL_68;
          }

          v15 = a1 + 8;
          (*(*(a1 + 8) + 16))(&v87, a1 + 8, 26);
          v16 = v87;
          LODWORD(v76) = v87;
          v77 = v88;
          v88 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v87);
          (*(*v15 + 16))(&v87, v15, 67);
          v17 = v87;
          v74 = v87;
          v75 = v88;
          v88 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v87);
          v18 = &unk_2881C11E8;
LABEL_54:
          v87 = v18;
          LOBYTE(v88) = 0;
          v89 = &v87;
          v85[0] = v16;
          v85[1] = v17;
          vp::vx::data_flow::State_Manager::create_state(&v82, (v15 + 56), &v87);
          v4 = v82;
          LODWORD(v70[0]) = v82;
          v60 = v83;
          v83 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v82);
          std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v87);
          LODWORD(v87) = v4;
          v70[1] = 0;
          v71 = 0;
          vp::vx::data_flow::State<void>::~State(v70);
          LODWORD(v82) = v4;
          v88 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v87);
          vp::vx::data_flow::State<void>::~State(&v74);
          vp::vx::data_flow::State<void>::~State(&v76);
LABEL_55:
          *a4 = v4;
          *(a4 + 8) = v60;
          v83 = 0uLL;
          *(a4 + 24) = 1;
LABEL_65:
          v31 = &v82;
          goto LABEL_66;
        }

        vp::vx::Voice_Processor::get_spatial_head_tracking_enabled(&v76, a1);
        v87 = &unk_2881C15E0;
        LOBYTE(v88) = 0;
        v89 = &v87;
        v74 = v76;
        goto LABEL_63;
      }

      v10 = a1 + 8;
      (*(*(a1 + 8) + 16))(&v87, a1 + 8, 72);
      v11 = v87;
      LODWORD(v76) = v87;
      v77 = v88;
      v88 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v87);
      v12 = &unk_2881C14A0;
    }

    else
    {
      switch(a3)
      {
        case 1685482595:
          if (*(a1 + 264))
          {
            goto LABEL_57;
          }

          vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v80, *(a1 + 456));
          v50 = v80;
          if (v80)
          {
            v51 = v81;
            if (v81)
            {
              atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
            }

            (*(*(a1 + 8) + 16))(&v87, a1 + 8, 26);
            v52 = v87;
            LODWORD(v76) = v87;
            v77 = v88;
            v88 = 0uLL;
            vp::vx::data_flow::State<void>::~State(&v87);
            (*(*(a1 + 8) + 16))(&v87, a1 + 8, 39);
            v53 = v87;
            v74 = v87;
            v75 = v88;
            v88 = 0uLL;
            vp::vx::data_flow::State<void>::~State(&v87);
            (*(*(a1 + 8) + 16))(&v87, a1 + 8, 27);
            v54 = v87;
            v85[0] = v87;
            v86 = v88;
            v88 = 0uLL;
            vp::vx::data_flow::State<void>::~State(&v87);
            v87 = &unk_2881C11A0;
            *&v88 = v50;
            *(&v88 + 1) = v51;
            v89 = &v87;
            v78 = __PAIR64__(v53, v52);
            LODWORD(v79) = v54;
            vp::vx::data_flow::State_Manager::create_state(&v82, (a1 + 64), &v87);
            v4 = v82;
            LODWORD(v70[0]) = v82;
            v60 = v83;
            v83 = 0uLL;
            vp::vx::data_flow::State<void>::~State(&v82);
            std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v87);
            LODWORD(v87) = v4;
            v70[1] = 0;
            v71 = 0;
            vp::vx::data_flow::State<void>::~State(v70);
            LODWORD(v82) = v4;
            v83 = v60;
            v88 = 0uLL;
            vp::vx::data_flow::State<void>::~State(&v87);
            vp::vx::data_flow::State<void>::~State(v85);
            vp::vx::data_flow::State<void>::~State(&v74);
            vp::vx::data_flow::State<void>::~State(&v76);
          }

          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
          }

          if (!v50)
          {
LABEL_57:
            v70[0] = 0;
            vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::DictionaryRef>(&v87, (a1 + 16), v70);
            v4 = v87;
            LODWORD(v82) = v87;
            v60 = v88;
            v83 = v88;
            v88 = 0uLL;
            vp::vx::data_flow::State<void>::~State(&v87);
            if (v70[0])
            {
              CFRelease(v70[0]);
            }
          }

          goto LABEL_55;
        case 1718184292:
          v10 = a1 + 8;
          (*(*(a1 + 8) + 16))(&v87, a1 + 8, 98);
          v11 = v87;
          LODWORD(v76) = v87;
          v77 = v88;
          v88 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v87);
          v12 = &unk_2881C1628;
          break;
        case 1751999340:
          v10 = a1 + 8;
          (*(*(a1 + 8) + 16))(&v87, a1 + 8, 56);
          v11 = v87;
          LODWORD(v76) = v87;
          v77 = v88;
          v88 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v87);
          v12 = &unk_2881C14E8;
          break;
        default:
          goto LABEL_68;
      }
    }

    v87 = v12;
    LOBYTE(v88) = 0;
    v89 = &v87;
    v74 = v11;
    v40 = (v10 + 56);
LABEL_64:
    vp::vx::data_flow::State_Manager::create_state(&v82, v40, &v87);
    v41 = v82;
    LODWORD(v70[0]) = v82;
    v64 = v83;
    v83 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v82);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v87);
    LODWORD(v87) = v41;
    v70[1] = 0;
    v71 = 0;
    vp::vx::data_flow::State<void>::~State(v70);
    LODWORD(v82) = v41;
    v88 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v87);
    vp::vx::data_flow::State<void>::~State(&v76);
    *a4 = v41;
    *(a4 + 8) = v64;
    v83 = 0uLL;
    *(a4 + 24) = 1;
    goto LABEL_65;
  }

  if (a3 <= 1953654637)
  {
    if (a3 != 1936746612)
    {
      if (a3 != 1936749683)
      {
        if (a3 != 1953326192)
        {
          goto LABEL_68;
        }

        v13 = *(a1 + 335);
        if (v13 < 0)
        {
          v14 = *(a1 + 312);
          if (!v14)
          {
            v49 = 0;
            v70[0] = 0;
            goto LABEL_113;
          }

          v13 = *(a1 + 320);
        }

        else
        {
          v14 = (a1 + 312);
        }

        v49 = CFStringCreateWithBytes(0, v14, v13, 0x8000100u, 0);
        v70[0] = v49;
        if (!v49)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

LABEL_113:
        applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],applesauce::CF::StringRef>(&v82, v70);
        v87 = &v82;
        *&v88 = 1;
        *a4 = applesauce::CF::details::make_CFDictionaryRef(&v87);
        *(a4 + 24) = 0;
        if (v83)
        {
          CFRelease(v83);
        }

        if (v82)
        {
          CFRelease(v82);
        }

        if (v49)
        {
          goto LABEL_105;
        }

        goto LABEL_67;
      }

      v15 = a1 + 8;
      (*(*(a1 + 8) + 16))(&v87, a1 + 8, 26);
      v16 = v87;
      LODWORD(v76) = v87;
      v77 = v88;
      v88 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v87);
      (*(*v15 + 16))(&v87, v15, 68);
      v17 = v87;
      v74 = v87;
      v75 = v88;
      v88 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v87);
      v18 = &unk_2881C1298;
      goto LABEL_54;
    }

    v78 = CFStringCreateWithBytes(0, "spatial head-tracking mode", 26, 0x8000100u, 0);
    if (!v78)
    {
      v55 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v55, "Could not construct");
    }

    v85[0] = 0;
    v86 = 0uLL;
    std::recursive_mutex::lock((a1 + 184));
    v32 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a1 + 128), &v78);
    if (v32)
    {
      vp::vx::data_flow::State_Manager::find_state(&v82, (a1 + 64), *(v32 + 6));
      v33 = v82;
      LODWORD(v87) = v82;
      v62 = v83;
      v83 = 0uLL;
      vp::vx::data_flow::State<void>::~State(v85);
      v85[0] = v33;
      v86 = v62;
      v88 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v87);
      vp::vx::data_flow::State<void>::~State(&v82);
    }

    if (!v86)
    {
      (*(*(a1 + 8) + 16))(&v87, a1 + 8, 58);
      v34 = v87;
      LODWORD(v76) = v87;
      v77 = v88;
      v88 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v87);
      (*(*(a1 + 8) + 16))(&v87, a1 + 8, 79);
      v35 = v87;
      v74 = v87;
      v75 = v88;
      v88 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v87);
      v87 = &unk_2881C09E0;
      LOBYTE(v88) = 0;
      v89 = &v87;
      v80 = __PAIR64__(v35, v34);
      vp::vx::data_flow::State_Manager::create_state(&v82, (a1 + 64), &v87);
      v36 = v82;
      LODWORD(v70[0]) = v82;
      v63 = v83;
      v83 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v82);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v87);
      LODWORD(v87) = v36;
      v70[1] = 0;
      v71 = 0;
      vp::vx::data_flow::State<void>::~State(v70);
      vp::vx::data_flow::State<void>::~State(&v74);
      vp::vx::data_flow::State<void>::~State(&v76);
      vp::vx::data_flow::State<void>::~State(v85);
      v85[0] = v36;
      v86 = v63;
      v88 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v87);
      v37 = v85[0];
      v38 = v78;
      if (v78)
      {
        CFRetain(v78);
      }

      v87 = v38;
      LODWORD(v88) = v37;
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a1 + 128, &v87, &v87);
      if (v87)
      {
        CFRelease(v87);
      }
    }

    v39 = v85[0];
    LODWORD(v76) = v85[0];
    v77 = v86;
    v86 = 0uLL;
    std::recursive_mutex::unlock((a1 + 184));
    vp::vx::data_flow::State<void>::~State(v85);
    if (v78)
    {
      CFRelease(v78);
    }

    v87 = &unk_2881C1598;
    LOBYTE(v88) = 0;
    v89 = &v87;
    v74 = v39;
LABEL_63:
    v40 = (a1 + 64);
    goto LABEL_64;
  }

  if (a3 > 1969578610)
  {
    if (a3 == 1969578611)
    {
      vp::vx::Voice_Processor::get_block_size(&v76, a1, 1);
      v19 = &unk_2881C16F8;
    }

    else
    {
      if (a3 != 1969582962)
      {
        goto LABEL_68;
      }

      vp::vx::Voice_Processor::get_sample_rate(&v76, a1, 1);
      v19 = &unk_2881C16B0;
    }

    v87 = v19;
    LOBYTE(v88) = 0;
    v89 = &v87;
    v74 = v76;
    vp::vx::data_flow::State_Manager::create_state(&v82, (a1 + 64), &v87);
    v30 = v82;
    LODWORD(v70[0]) = v82;
    v61 = v83;
    v83 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v82);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v87);
    LODWORD(v87) = v30;
    v70[1] = 0;
    v71 = 0;
    vp::vx::data_flow::State<void>::~State(v70);
    *a4 = v30;
    *(a4 + 8) = v61;
    v88 = 0uLL;
    *(a4 + 24) = 1;
    vp::vx::data_flow::State<void>::~State(&v87);
    v31 = &v76;
LABEL_66:
    vp::vx::data_flow::State<void>::~State(v31);
    goto LABEL_67;
  }

  if (a3 == 1953654638)
  {
    LOBYTE(v82) = 0;
    LOBYTE(v84) = 0;
    v20 = *(a1 + 456);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(v70, v20 + 16, &vp::Service_Interface<1835496308u>::k_service_type_id);
    v21 = *(v20 + 24);
    v22 = *(v20 + 32);
    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22 == 0;
    }

    if (!v23)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v24 = v70[0];
    if (v70[0] != (v21 + 16 * v22))
    {
      std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(&v87, *v20, *(v20 + 8));
      v25 = v24[1];
      v26 = v88;
      if (v25)
      {
        cf = 0;
        (*(*v25 + 16))(v70);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v70[0])
        {
          applesauce::CF::TypeRef::operator applesauce::CF::DataRef(&v76, v70);
          v27 = v76;
          if (v76)
          {
            TypeID = CFDataGetTypeID();
            if (TypeID == CFGetTypeID(v27))
            {
              CFDataGetBytePtr(v27);
              Length = CFDataGetLength(v27);
              if (Length)
              {
                if ((Length & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
              }

              v59 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v59, "struct parser read overflow");
              v59->__vftable = (MEMORY[0x277D828E8] + 16);
            }

            v58 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v58, "Could not convert");
          }

          else
          {
            v58 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v58, "Could not construct");
          }
        }
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v70, &v82);
    (*(*(a1 + 8) + 16))(&v87, a1 + 8, 10);
    LODWORD(v80) = v87;
    v81 = v88;
    v88 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v87);
    (*(*(a1 + 8) + 16))(&v87, a1 + 8, 8);
    LODWORD(v78) = v87;
    v79 = v88;
    v88 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v87);
    (*(*(a1 + 8) + 16))(&v87, a1 + 8, 21);
    v68 = v87;
    v69 = v88;
    v88 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v87);
    (*(*(a1 + 8) + 16))(&v87, a1 + 8, 22);
    v66 = v87;
    v67 = v88;
    v88 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v87);
    if (v72)
    {
      v70[1] = 0;
      v71 = 0;
      v70[0] = 0;
    }

    operator new();
  }

  if (a3 != 1953850480)
  {
LABEL_68:
    v43 = *(a1 + 520);
    v44 = *(a1 + 528);
    if (v43 == v44)
    {
LABEL_95:
      *a4 = 0;
      *(a4 + 24) = 0;
    }

    else
    {
      while (1)
      {
        v45 = *v43;
        v46 = *(v43 + 8);
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          v84 = 0;
          v70[1] = v46;
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v84 = 0;
          v70[1] = 0;
        }

        v70[0] = v45;
        LODWORD(v71) = a3;
        if (HIDWORD(v65) == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v76 = v70;
        (off_2881C1730[HIDWORD(v65)])(&v87, &v76, &v65);
        if (v84 != -1 || v89 != -1)
        {
          if (v89 == -1)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v82);
          }

          else
          {
            v76 = &v82;
            (off_2881C1740[v89])(&v76, &v82, &v87);
          }
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v87);
        if (v70[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70[1]);
        }

        if (v84)
        {
          if (v84 == 2)
          {
            vp::vx::data_flow::State<void>::State(a4, &v82);
            v48 = 1;
            *(a4 + 24) = 1;
          }

          else if (v84 == 1)
          {
            v47 = v82;
            if (v82)
            {
              CFRetain(v82);
            }

            *a4 = v47;
            *(a4 + 24) = 0;
            v48 = 1;
          }

          else
          {
            v48 = 0;
          }
        }

        else
        {
          v48 = 4;
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v82);
        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        if ((v48 | 4) != 4)
        {
          break;
        }

        v43 += 16;
        if (v43 == v44)
        {
          goto LABEL_95;
        }
      }
    }

    goto LABEL_67;
  }

  v8 = *(a1 + 311);
  if (v8 < 0)
  {
    v9 = *(a1 + 288);
    if (!v9)
    {
      v49 = 0;
      v70[0] = 0;
      goto LABEL_100;
    }

    v8 = *(a1 + 296);
  }

  else
  {
    v9 = (a1 + 288);
  }

  v49 = CFStringCreateWithBytes(0, v9, v8, 0x8000100u, 0);
  v70[0] = v49;
  if (!v49)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v56, "Could not construct");
  }

LABEL_100:
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],applesauce::CF::StringRef>(&v82, v70);
  v87 = &v82;
  *&v88 = 1;
  *a4 = applesauce::CF::details::make_CFDictionaryRef(&v87);
  *(a4 + 24) = 0;
  if (v83)
  {
    CFRelease(v83);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (v49)
  {
LABEL_105:
    CFRelease(v49);
  }

LABEL_67:
  v42 = *MEMORY[0x277D85DE8];
}

void sub_2726CBCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],applesauce::CF::StringRef>(applesauce::CF::TypeRef *a1, const void **a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "Value");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 1) = v4;
  return a1;
}

void vp::vx::Voice_Processor::get_sample_rate(uint64_t a1, uint64_t a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = "hardware";
  if (a3 == 1)
  {
    v6 = "echo";
  }

  if (a3 == 2)
  {
    v6 = "content";
  }

  applesauce::CF::make_StringRef(@"uplink %s DSP sample rate", &v24, v6);
  v27 = 0;
  v28 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v24);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&v41, (a2 + 64), *(v7 + 6));
    LODWORD(v48) = v41;
    v49 = v42;
    v42 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    v27 = v48;
    v28 = v49;
    v49 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v48);
    vp::vx::data_flow::State<void>::~State(&v41);
  }

  if (!v28)
  {
    if (a3 == 2)
    {
      vp::vx::Voice_Processor::get_client_sample_rate(&v25, a2, 0);
      v10 = v25;
      v22 = v26;
    }

    else
    {
      if (a3 == 1)
      {
        v8 = *(a2 + 552);
        vp::vx::Voice_Processor::get_sample_rate(&v36, a2, 0);
        vp::vx::Voice_Processor::get_block_size(v35, a2, 0);
        vp::vx::Voice_Processor::get_configuration_options(&v33, a2, 1);
        vp::vx::Voice_Processor::get_client_sample_rate(cf, a2, 0);
        (*(*(a2 + 8) + 16))(&v48);
        v9 = v48;
        v30 = v48;
        v31 = v49;
        v49 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v48);
        vp::vx::Voice_Processor::get_client_sample_rate_preference(v29, a2);
        v48 = &unk_2881C0040;
        *&v49 = v8;
        v50 = &v48;
        v45[0] = v36;
        v45[1] = v35[0];
        v46 = __PAIR64__(cf[0], v33);
        v47 = __PAIR64__(v29[0], v9);
        vp::vx::data_flow::State_Manager::create_state(&v41, (a2 + 64), &v48);
        v10 = v41;
        v43[0] = v41;
        v22 = v42;
        v42 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v41);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v48);
        v39 = v10;
        v44 = 0uLL;
        vp::vx::data_flow::State<void>::~State(v43);
        v25 = v10;
        v26 = v22;
        v40 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v39);
        vp::vx::data_flow::State<void>::~State(v29);
        vp::vx::data_flow::State<void>::~State(&v30);
        vp::vx::data_flow::State<void>::~State(cf);
        vp::vx::data_flow::State<void>::~State(&v33);
        vp::vx::data_flow::State<void>::~State(v35);
        v11 = &v36;
      }

      else
      {
        vp::vx::Voice_Processor::get_uplink_mic_sample_rate(v35, a2);
        cf[0] = CFStringCreateWithBytes(0, "uplink reference sample rate (Hz)", 33, 0x8000100u, 0);
        if (!cf[0])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        v39 = 0;
        v40 = 0uLL;
        std::recursive_mutex::lock((a2 + 184));
        v12 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), cf);
        if (v12)
        {
          vp::vx::data_flow::State_Manager::find_state(&v41, (a2 + 64), *(v12 + 6));
          LODWORD(v48) = v41;
          v49 = v42;
          v42 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v39);
          v39 = v48;
          v40 = v49;
          v49 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v48);
          vp::vx::data_flow::State<void>::~State(&v41);
        }

        if (!v40)
        {
          (*(*(a2 + 8) + 16))(&v48, a2 + 8, 24);
          v13 = v48;
          v43[0] = v48;
          v44 = v49;
          v49 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v48);
          v48 = &unk_2881C0400;
          LOBYTE(v49) = 0;
          v50 = &v48;
          v30 = v13;
          vp::vx::data_flow::State_Manager::create_state(&v41, (a2 + 64), &v48);
          v14 = v41;
          v45[0] = v41;
          v23 = v42;
          v42 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v41);
          std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v48);
          LODWORD(v48) = v14;
          v46 = 0;
          v47 = 0;
          vp::vx::data_flow::State<void>::~State(v45);
          vp::vx::data_flow::State<void>::~State(v43);
          vp::vx::data_flow::State<void>::~State(&v39);
          v39 = v14;
          v40 = v23;
          v49 = 0uLL;
          vp::vx::data_flow::State<void>::~State(&v48);
          v15 = v39;
          v16 = cf[0];
          if (cf[0])
          {
            CFRetain(cf[0]);
          }

          v48 = v16;
          LODWORD(v49) = v15;
          std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v48, &v48);
          if (v48)
          {
            CFRelease(v48);
          }
        }

        v17 = v39;
        v33 = v39;
        v34 = v40;
        v40 = 0uLL;
        std::recursive_mutex::unlock((a2 + 184));
        vp::vx::data_flow::State<void>::~State(&v39);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v48 = &unk_2881BFFF8;
        *&v49 = a2;
        v50 = &v48;
        v43[0] = v35[0];
        v43[1] = v17;
        vp::vx::data_flow::State_Manager::create_state(&v41, (a2 + 64), &v48);
        v10 = v41;
        v45[0] = v41;
        v22 = v42;
        v42 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v41);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v48);
        v36 = v10;
        v46 = 0;
        v47 = 0;
        vp::vx::data_flow::State<void>::~State(v45);
        v25 = v10;
        v37 = 0;
        v38 = 0;
        vp::vx::data_flow::State<void>::~State(&v36);
        vp::vx::data_flow::State<void>::~State(&v33);
        v11 = v35;
      }

      vp::vx::data_flow::State<void>::~State(v11);
    }

    vp::vx::data_flow::State<void>::~State(&v27);
    v27 = v10;
    v28 = v22;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    v18 = v27;
    v19 = v24;
    if (v24)
    {
      CFRetain(v24);
    }

    v48 = v19;
    LODWORD(v49) = v18;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v48, &v48);
    if (v48)
    {
      CFRelease(v48);
    }
  }

  *a1 = v27;
  *(a1 + 8) = v28;
  v28 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v27);
  if (v24)
  {
    CFRelease(v24);
  }

  v20 = *MEMORY[0x277D85DE8];
}

{
  v41 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 2)
  {
    v6 = "voice mix";
  }

  else
  {
    v6 = off_279E4A458[a3 - 1];
  }

  applesauce::CF::make_StringRef(@"downlink %s DSP sample rate", &cf, v6);
  v23 = 0;
  v24 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&v35, (a2 + 64), *(v7 + 6));
    LODWORD(v38) = v35;
    v39 = v36;
    v36 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v23);
    v23 = v38;
    v24 = v39;
    v39 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v38);
    vp::vx::data_flow::State<void>::~State(&v35);
  }

  if (!v24)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v10 = a2 + 8;
        (*(*(a2 + 8) + 16))(&v38, a2 + 8, 54);
        v11 = v38;
        v30 = v38;
        v31 = v39;
        v39 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v38);
        v12 = &unk_2881C0780;
      }

      else
      {
        v10 = a2 + 8;
        (*(*(a2 + 8) + 16))(&v38, a2 + 8, 54);
        v11 = v38;
        v30 = v38;
        v31 = v39;
        v39 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v38);
        v12 = &unk_2881C07C8;
      }

      v38 = v12;
      LOBYTE(v39) = 0;
      v40 = &v38;
      v29[0] = v11;
      vp::vx::data_flow::State_Manager::create_state(&v35, (v10 + 56), &v38);
      v8 = v35;
      v32 = v35;
      v19 = v36;
      v36 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v35);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v38);
      LODWORD(v38) = v8;
      v33 = 0;
      v34 = 0;
      vp::vx::data_flow::State<void>::~State(&v32);
      v21 = v8;
      v22 = v19;
      v39 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v38);
      v15 = &v30;
    }

    else
    {
      if (a3)
      {
        v13 = *(a2 + 560);
        vp::vx::Voice_Processor::get_configuration_options(v29, a2, 1);
        vp::vx::Voice_Processor::get_client_sample_rate(v28, a2, 1);
        vp::vx::Voice_Processor::get_sample_rate(v37, a2, 3);
        (*(*(a2 + 8) + 16))(&v38);
        v14 = v38;
        v26 = v38;
        v27 = v39;
        v39 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v38);
        vp::vx::Voice_Processor::get_client_sample_rate_preference(v25, a2);
        v38 = &unk_2881C0738;
        *&v39 = v13;
        v40 = &v38;
        v37[7] = v29[0];
        v37[8] = v28[0];
        v37[9] = v37[0];
        v37[10] = v14;
        v37[11] = v25[0];
        vp::vx::data_flow::State_Manager::create_state(&v35, (a2 + 64), &v38);
        v8 = v35;
        v32 = v35;
        v19 = v36;
        v36 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v35);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v38);
        v30 = v8;
        v33 = 0;
        v34 = 0;
        vp::vx::data_flow::State<void>::~State(&v32);
        v21 = v8;
        v22 = v19;
        v31 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v30);
        vp::vx::data_flow::State<void>::~State(v25);
        vp::vx::data_flow::State<void>::~State(&v26);
        v9 = v37;
      }

      else
      {
        vp::vx::Voice_Processor::get_configuration_options(v29, a2, 0);
        vp::vx::Voice_Processor::get_client_sample_rate(v28, a2, 1);
        v38 = &unk_2881C06F0;
        LOBYTE(v39) = 0;
        v40 = &v38;
        v37[0] = v29[0];
        v37[1] = v28[0];
        vp::vx::data_flow::State_Manager::create_state(&v35, (a2 + 64), &v38);
        v8 = v35;
        v32 = v35;
        v19 = v36;
        v36 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v35);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v38);
        v30 = v8;
        v33 = 0;
        v34 = 0;
        vp::vx::data_flow::State<void>::~State(&v32);
        v21 = v8;
        v31 = 0uLL;
        v9 = &v30;
      }

      vp::vx::data_flow::State<void>::~State(v9);
      vp::vx::data_flow::State<void>::~State(v28);
      v15 = v29;
    }

    vp::vx::data_flow::State<void>::~State(v15);
    vp::vx::data_flow::State<void>::~State(&v23);
    v23 = v8;
    v24 = v19;
    v22 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v21);
    v16 = v23;
    v17 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v38 = v17;
    LODWORD(v39) = v16;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v38, &v38);
    if (v38)
    {
      CFRelease(v38);
    }
  }

  *a1 = v23;
  *(a1 + 8) = v24;
  v24 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v23);
  if (cf)
  {
    CFRelease(cf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2726CC550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_block_size(uint64_t a1, uint64_t a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = "hardware";
  if (a3 == 1)
  {
    v6 = "echo";
  }

  if (a3 == 2)
  {
    v6 = "content";
  }

  applesauce::CF::make_StringRef(@"uplink %s DSP block size", &v26, v6);
  v29 = 0;
  v30 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v26);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&v41, (a2 + 64), *(v7 + 6));
    LODWORD(v48) = v41;
    v49 = v42;
    v42 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v29);
    v29 = v48;
    v30 = v49;
    v49 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v48);
    vp::vx::data_flow::State<void>::~State(&v41);
  }

  if (!v30)
  {
    if (a3 == 2)
    {
      v8 = *(a2 + 552);
      vp::vx::Voice_Processor::get_sample_rate(&v44, a2, 1);
      vp::vx::Voice_Processor::get_block_size(&cf, a2, 1);
      vp::vx::Voice_Processor::get_sample_rate(&v47, a2, 2);
      v48 = &unk_2881BFFB0;
      *&v49 = v8;
      v50 = &v48;
      v46[0] = v44;
      v46[1] = cf;
      v46[2] = v47;
      vp::vx::data_flow::State_Manager::create_state(&v41, (a2 + 64), &v48);
      v9 = v41;
      LODWORD(v36) = v41;
      v24 = v42;
      v42 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v41);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v48);
      LODWORD(v32) = v9;
      v37 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v36);
      v27 = v9;
      v28 = v24;
      v33 = 0;
      v34 = 0;
      vp::vx::data_flow::State<void>::~State(&v32);
      v10 = &v47;
    }

    else
    {
      if (a3 == 1)
      {
        v32 = *(a2 + 552);
        v33 = 0;
        v34 = 0;
        v35 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v33, *(a2 + 496), *(a2 + 504), (*(a2 + 504) - *(a2 + 496)) >> 2);
        vp::vx::Voice_Processor::get_configuration_options(v46, a2, 1);
        vp::vx::Voice_Processor::get_sample_rate(v31, a2, 1);
        v36 = v32;
        v37 = 0uLL;
        v38 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v37, v33, v34, (v34 - v33) >> 2);
        v41 = v36;
        v42 = 0uLL;
        v43 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v42, v37, *(&v37 + 1), (*(&v37 + 1) - v37) >> 2);
        v50 = 0;
        operator new();
      }

      cf = CFStringCreateWithBytes(0, "uplink microphone block size (frames)", 37, 0x8000100u, 0);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      LODWORD(v41) = 0;
      v42 = 0uLL;
      std::recursive_mutex::lock((a2 + 184));
      v11 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
      if (v11)
      {
        vp::vx::data_flow::State_Manager::find_state(&v36, (a2 + 64), *(v11 + 6));
        LODWORD(v48) = v36;
        v49 = v37;
        v37 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v41);
        LODWORD(v41) = v48;
        v42 = v49;
        v49 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v48);
        vp::vx::data_flow::State<void>::~State(&v36);
      }

      if (!v42)
      {
        (*(*(a2 + 8) + 16))(&v48);
        LODWORD(v36) = v48;
        v37 = v49;
        v49 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v48);
        vp::vx::data_flow::State<void>::~State(&v41);
        LODWORD(v41) = v36;
        v42 = v37;
        v37 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v36);
        v12 = v41;
        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v48 = v13;
        LODWORD(v49) = v12;
        std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v48, &v48);
        if (v48)
        {
          CFRelease(v48);
        }
      }

      v44 = v41;
      v45 = v42;
      v42 = 0uLL;
      std::recursive_mutex::unlock((a2 + 184));
      vp::vx::data_flow::State<void>::~State(&v41);
      if (cf)
      {
        CFRelease(cf);
      }

      v47 = CFStringCreateWithBytes(0, "uplink reference block size (frames)", 36, 0x8000100u, 0);
      if (!v47)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v23, "Could not construct");
      }

      LODWORD(v41) = 0;
      v42 = 0uLL;
      std::recursive_mutex::lock((a2 + 184));
      v14 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v47);
      if (v14)
      {
        vp::vx::data_flow::State_Manager::find_state(&v36, (a2 + 64), *(v14 + 6));
        LODWORD(v48) = v36;
        v49 = v37;
        v37 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v41);
        LODWORD(v41) = v48;
        v42 = v49;
        v49 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v48);
        vp::vx::data_flow::State<void>::~State(&v36);
      }

      if (!v42)
      {
        (*(*(a2 + 8) + 16))(&v48);
        v15 = v48;
        LODWORD(v36) = v48;
        v25 = v49;
        v49 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v48);
        vp::vx::data_flow::State<void>::~State(&v41);
        LODWORD(v41) = v15;
        v42 = v25;
        v37 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v36);
        v16 = v41;
        v17 = v47;
        if (v47)
        {
          CFRetain(v47);
        }

        v48 = v17;
        LODWORD(v49) = v16;
        std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v48, &v48);
        if (v48)
        {
          CFRelease(v48);
        }
      }

      v18 = v41;
      LODWORD(cf) = v41;
      v40 = v42;
      v42 = 0uLL;
      std::recursive_mutex::unlock((a2 + 184));
      vp::vx::data_flow::State<void>::~State(&v41);
      if (v47)
      {
        CFRelease(v47);
      }

      v48 = &unk_2881BFF20;
      *&v49 = a2;
      v50 = &v48;
      v47 = __PAIR64__(v18, v44);
      vp::vx::data_flow::State_Manager::create_state(&v41, (a2 + 64), &v48);
      v9 = v41;
      LODWORD(v36) = v41;
      v24 = v42;
      v42 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v41);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v48);
      LODWORD(v32) = v9;
      v37 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v36);
      v27 = v9;
      v33 = 0;
      v34 = 0;
      v10 = &v32;
    }

    vp::vx::data_flow::State<void>::~State(v10);
    vp::vx::data_flow::State<void>::~State(&cf);
    vp::vx::data_flow::State<void>::~State(&v44);
    vp::vx::data_flow::State<void>::~State(&v29);
    v29 = v9;
    v30 = v24;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    v19 = v29;
    v20 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    v48 = v20;
    LODWORD(v49) = v19;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v48, &v48);
    if (v48)
    {
      CFRelease(v48);
    }
  }

  *a1 = v29;
  *(a1 + 8) = v30;
  v30 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v29);
  if (v26)
  {
    CFRelease(v26);
  }

  v21 = *MEMORY[0x277D85DE8];
}

{
  v44 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 2)
  {
    v6 = "voice mix";
  }

  else
  {
    v6 = off_279E4A458[a3 - 1];
  }

  applesauce::CF::make_StringRef(@"downlink %s DSP block size", &cf, v6);
  v19 = 0;
  v20 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&v30, (a2 + 64), *(v7 + 6));
    LODWORD(v41) = v30;
    v42 = v31;
    v31 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v19);
    v19 = v41;
    v20 = v42;
    v42 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v41);
    vp::vx::data_flow::State<void>::~State(&v30);
  }

  if (!v20)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v11 = *(a2 + 560);
        vp::vx::Voice_Processor::get_configuration_options(&v33, a2, 2);
        vp::vx::Voice_Processor::get_sample_rate(v29, a2, 3);
        vp::vx::Voice_Processor::get_block_size(&v28, a2, 3);
        v41 = &unk_2881C0618;
        *&v42 = v11;
        v43 = &v41;
        v36[0] = v33;
        v36[1] = v29[0];
        v36[2] = v28;
        vp::vx::data_flow::State_Manager::create_state(&v30, (a2 + 64), &v41);
        v9 = v30;
        LODWORD(v37) = v30;
        v15 = v31;
        v31 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v30);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v41);
        LODWORD(v21) = v9;
        v38 = 0;
        v39 = 0;
        vp::vx::data_flow::State<void>::~State(&v37);
        v17 = v9;
        v18 = v15;
        v22 = 0;
        v23 = 0;
        vp::vx::data_flow::State<void>::~State(&v21);
        vp::vx::data_flow::State<void>::~State(&v28);
        vp::vx::data_flow::State<void>::~State(v29);
        v10 = &v33;
      }

      else
      {
        (*(*(a2 + 8) + 16))(&v41);
        v9 = v41;
        v17 = v41;
        v15 = v42;
        v18 = v42;
        v42 = 0uLL;
        v10 = &v41;
      }
    }

    else
    {
      if (a3)
      {
        v21 = *(a2 + 560);
        v22 = 0;
        v23 = 0;
        v24 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v22, *(a2 + 496), *(a2 + 504), (*(a2 + 504) - *(a2 + 496)) >> 2);
        vp::vx::Voice_Processor::get_configuration_options(v36, a2, 1);
        vp::vx::Voice_Processor::get_sample_rate(v27, a2, 1);
        vp::vx::Voice_Processor::get_sample_rate(v26, a2, 2);
        vp::vx::Voice_Processor::get_block_size(v25, a2, 2);
        v37 = v21;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v38, v22, v23, (v23 - v22) >> 2);
        v30 = v37;
        v31 = 0uLL;
        v32 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v31, v38, v39, (v39 - v38) >> 2);
        v43 = 0;
        operator new();
      }

      v8 = *(a2 + 560);
      vp::vx::Voice_Processor::get_client_sample_rate(v29, a2, 1);
      vp::vx::Voice_Processor::get_sample_rate(&v28, a2, 1);
      vp::vx::Voice_Processor::get_block_size(v36, a2, 1);
      vp::vx::Voice_Processor::get_block_size_is_fixed(v27, a2, 1);
      vp::vx::Voice_Processor::get_sample_rate(v26, a2, 3);
      vp::vx::Voice_Processor::get_block_size(v25, a2, 3);
      v41 = &unk_2881C0588;
      *&v42 = v8;
      v43 = &v41;
      v37 = __PAIR64__(v28, v29[0]);
      v38 = __PAIR64__(v27[0], v36[0]);
      v39 = __PAIR64__(v25[0], v26[0]);
      vp::vx::data_flow::State_Manager::create_state(&v30, (a2 + 64), &v41);
      v9 = v30;
      LODWORD(v21) = v30;
      v15 = v31;
      v31 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v30);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v41);
      v33 = v9;
      v22 = 0;
      v23 = 0;
      vp::vx::data_flow::State<void>::~State(&v21);
      v17 = v9;
      v34 = 0;
      v35 = 0;
      vp::vx::data_flow::State<void>::~State(&v33);
      vp::vx::data_flow::State<void>::~State(v25);
      vp::vx::data_flow::State<void>::~State(v26);
      vp::vx::data_flow::State<void>::~State(v27);
      vp::vx::data_flow::State<void>::~State(v36);
      vp::vx::data_flow::State<void>::~State(&v28);
      v10 = v29;
    }

    vp::vx::data_flow::State<void>::~State(v10);
    vp::vx::data_flow::State<void>::~State(&v19);
    v19 = v9;
    v20 = v15;
    v18 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v17);
    v12 = v19;
    v13 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v41 = v13;
    LODWORD(v42) = v12;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(a2 + 128, &v41, &v41);
    if (v41)
    {
      CFRelease(v41);
    }
  }

  *a1 = v19;
  *(a1 + 8) = v20;
  v20 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v19);
  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2726CCEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF13DictionaryRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 2)
  {
    vp::vx::data_flow::State<void>::~State(a2);
    *a2 = *a3;
    result = *(a3 + 8);
    *(a2 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    *v4 = *a3;
    result = *(a3 + 8);
    *(v4 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v4 + 24) = 2;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF13DictionaryRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *result;
  if (*(*result + 24) == 1)
  {
    v5 = *a2;
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    v5 = 0;
    *v4 = *a3;
    *(v4 + 24) = 1;
  }

  *a3 = v5;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF13DictionaryRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 24))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 24) = 0;
  }

  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_mic_filter_ids_cf_dsp_property_override_stateEvE3__0JNS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = **a2;
  if (v4[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id)
  {
    v5 = vp::vx::data_flow::Value::view_storage(v4);
  }

  else
  {
    v5 = 0;
  }

  if (*v5)
  {
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],applesauce::CF::ArrayRef const&>(&v11, v5);
    v10[0] = &v11;
    v10[1] = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v10);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    CFDictionaryRef = 0;
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726CD298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],applesauce::CF::ArrayRef const&>(applesauce::CF::TypeRef *a1, const void **a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "Value");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 1) = v4;
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_mic_filter_ids_cf_dsp_property_override_stateEvE3__0JNS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C1628;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor65create_hardware_mix_output_channel_layout_property_override_stateEvE3__0JN2CA13ChannelLayoutEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_EEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::make_DataRef(&v9, *v4, *(v4 + 8) - *v4);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v11, "Data", &v9);
  v10[0] = &v11;
  v10[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726CD4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor65create_hardware_mix_output_channel_layout_property_override_stateEvE3__0JN2CA13ChannelLayoutEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_EEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C14E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(void *a1, uint64_t a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&v11, a2 + 16, &vp::Service_Interface<1634236275u>::k_service_type_id);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v11;
  if (v11 == (v5 + 16 * v6))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    result = std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(v10, *a2, *(a2 + 8));
    v9 = v10[1];
    *a1 = *(v8 + 1);
    a1[1] = v9;
  }

  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::DictionaryRef>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  *a3 = 0;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = vp::vx::data_flow::Value::view_storage(v4[2]);
  v11 = *v9;
  if ((*v7 - 3) >= 2)
  {
    if (*v7 != 2)
    {
      v20 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v12 = *(a1 + 8);
    port_owning_device_id = vp::vx::get_port_owning_device_id(v12, *v10, 1869968496);
    LODWORD(v25[0]) = port_owning_device_id;
    BYTE4(v25[0]) = BYTE4(port_owning_device_id);
    if ((port_owning_device_id & 0x100000000) != 0)
    {
      caulk::expected<unsigned int,int>::value(v25);
      *&v23[0] = 0x676C6F62646F7663;
      DWORD2(v23[0]) = 0;
      cf[0] = 0;
      v22 = 8;
      if (!(*(*v12 + 24))(v12, LODWORD(v25[0]), v23, 0, 0, &v22, cf))
      {
        v14 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
          v15 = CFGetTypeID(v14);
          if (v15 != CFArrayGetTypeID())
          {
            CFRelease(v14);
            v14 = 0;
          }
        }

        caulk::__expected_detail::destroy<applesauce::CF::ArrayRef,(void *)0>(0);
        caulk::__expected_detail::destroy<applesauce::CF::ArrayRef,(void *)0>(0);
        cf[2] = v14;
        caulk::__expected_detail::destroy<applesauce::CF::ArrayRef,(void *)0>(0);
        if (v14)
        {
          CFRetain(v14);
          *&v23[0] = v14;
          _ZZZN2vp2vx15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvENK3__0clINS0_16Output_Port_TypeENS0_13Port_Sub_TypeEjEEDaT_T0_T1_ENKUlN10applesauce2CF8ArrayRefEE_clESC_(&v20, v23);
          CFRelease(v14);
          CFRelease(v14);
          goto LABEL_21;
        }
      }
    }
  }

  if ((v11 & 0xFFFFFFFE) == 0xC)
  {
    v23[0] = xmmword_27275AAF8;
    v23[1] = unk_27275AB08;
    v23[2] = xmmword_27275AB18;
    v23[3] = unk_27275AB28;
    v24 = 0;
    cf[0] = v23;
    cf[1] = 17;
    CFArray = applesauce::CF::details::make_CFArrayRef<float>(cf);
    v25[0] = CFArray;
    _ZZZN2vp2vx15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvENK3__0clINS0_16Output_Port_TypeENS0_13Port_Sub_TypeEjEEDaT_T0_T1_ENKUlN10applesauce2CF8ArrayRefEE_clESC_(&v20, v25);
  }

  else
  {
    v25[0] = 0x40000000C2980000;
    *&v23[0] = v25;
    *(&v23[0] + 1) = 2;
    CFArray = applesauce::CF::details::make_CFArrayRef<float>(v23);
    cf[0] = CFArray;
    _ZZZN2vp2vx15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvENK3__0clINS0_16Output_Port_TypeENS0_13Port_Sub_TypeEjEEDaT_T0_T1_ENKUlN10applesauce2CF8ArrayRefEE_clESC_(&v20, cf);
  }

  CFRelease(CFArray);
LABEL_21:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v17);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v20;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726CD9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZZZN2vp2vx15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvENK3__0clINS0_16Output_Port_TypeENS0_13Port_Sub_TypeEjEEDaT_T0_T1_ENKUlN10applesauce2CF8ArrayRefEE_clESC_(CFDictionaryRef *a1, CFArrayRef *a2)
{
  v44[2] = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  Count = CFArrayGetCount(*a2);
  v5 = 4 * Count;
  MEMORY[0x28223BE20](Count);
  v7 = (&v35[-1] - ((4 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v8)
  {
    v9 = 0;
    *v6.i32 = 78.0 / (Count - 1);
    v10 = vdupq_n_s64(Count - 1);
    v11 = vdupq_lane_s32(v6, 0);
    v12 = vdupq_n_s32(0xC2980000);
    v13 = xmmword_2727564E0;
    v14 = vdupq_n_s64(4uLL);
    v15 = v7 + 1;
    v16 = xmmword_2727564D0;
    do
    {
      v17 = vorrq_s8(vdupq_n_s64(v9), xmmword_2727564D0);
      v18 = vmovn_s64(vcgeq_u64(v10, v13));
      *v19.i32 = v9;
      v20 = v9 + 1;
      *&v19.i32[1] = v20;
      v21 = vmlaq_f32(v12, v11, vcvt_hight_f32_f64(v19, vcvtq_f64_u64(v17)));
      if (vuzp1_s16(v18, *v10.i8).u8[0])
      {
        *(v15 - 1) = v21.i32[0];
      }

      if (vuzp1_s16(v18, *&v10).i8[2])
      {
        *v15 = v21.i32[1];
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v16))).i32[1])
      {
        v7[v17.i64[0]] = v21.f32[2];
        v7[v17.i64[1]] = v21.f32[3];
      }

      v16 = vaddq_s64(v16, v14);
      v13 = vaddq_s64(v13, v14);
      v15 += 4;
      v9 = v20 + 3;
    }

    while (v9 != ((Count + 3) & 0xFFFFFFFFFFFFFFFCLL));
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v36, Count);
  if (Count)
  {
    v22 = v37;
    do
    {
      if (v22 >= v38)
      {
        v23 = (v22 - v36) >> 3;
        if ((v23 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v24 = (v38 - v36) >> 2;
        if (v24 <= v23 + 1)
        {
          v24 = v23 + 1;
        }

        if (v38 - v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        v44[1] = &v36;
        if (v25)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v25);
        }

        v41 = 0;
        v42 = 8 * v23;
        v43 = 8 * v23;
        v44[0] = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float &,void,0>((8 * v23), *v7);
        v43 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v36, &v41);
        v22 = v37;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(&v41);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float &,void,0>(v22++, *v7);
      }

      v37 = v22;
      ++v7;
      v5 -= 4;
    }

    while (v5);
  }

  v26 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v36);
  v41 = &v36;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v41);
  v35[3] = v26;
  applesauce::CF::TypeRef::TypeRef(&v41, "InputMap");
  CFRetain(v26);
  v42 = v26;
  applesauce::CF::TypeRef::TypeRef(&v43, "OutputMap");
  v27 = *a2;
  if (v27)
  {
    CFRetain(v27);
  }

  v44[0] = v27;
  v35[0] = &v41;
  v35[1] = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v35);
  v35[2] = CFDictionaryRef;
  applesauce::CF::TypeRef::TypeRef(&v39, "Value");
  CFRetain(CFDictionaryRef);
  v40 = CFDictionaryRef;
  v36 = &v39;
  v37 = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(&v36);
  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  CFRelease(CFDictionaryRef);
  for (i = 0; i != -4; i -= 2)
  {
    v30 = v44[i];
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = v44[i - 1];
    if (v31)
    {
      CFRelease(v31);
    }
  }

  CFRelease(v26);
  v32 = *MEMORY[0x277D85DE8];
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<float>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v12, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = v13;
    v6 = 4 * v3;
    do
    {
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>((8 * v7), *v4);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>(v5++, *v4);
      }

      v13 = v5;
      ++v4;
      v6 -= 4;
    }

    while (v6);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_2726CE04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float const&,void,0>(CFNumberRef *a1, float a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float &,void,0>(CFNumberRef *a1, float a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C11A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881C11A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_ref_port_volume_limit_curve_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881C11A0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_speaker_iv_data_source_ids_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS_6vectorIjNS_9allocatorIjEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NSH_IS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  if (*v6 != 7 || (v9 = *(v8 + 8), *v8 == v9))
  {
    CFDictionaryRef = 0;
  }

  else
  {
    applesauce::CF::make_DataRef(&v14, *v8, v9 - *v8);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v16, "Data", &v14);
    v15[0] = &v16;
    v15[1] = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v15);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = CFDictionaryRef;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726CE4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_speaker_iv_data_source_ids_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS_6vectorIjNS_9allocatorIjEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NSH_IS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C11E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_speaker_calibration_data_cf_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_EEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  if (*v6 != 7 || *v8 == 0)
  {
    CFDictionaryRef = 0;
  }

  else
  {
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],applesauce::CF::ArrayRef const&>(&v15, v8);
    v14[0] = &v15;
    v14[1] = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v14);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = CFDictionaryRef;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726CE714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor62create_speaker_calibration_data_cf_dsp_property_override_stateEvE3__0JNS3_16Output_Port_TypeENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_EEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C1298;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor30get_dsp_node_property_overrideENS_7variantIJNS3_18Uplink_DSP_Node_IDENS3_20Downlink_DSP_Node_IDEEEENS3_17Graph_Property_IDEE3__1JjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v9 = *vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int &>(&v10, &v9);
  v8[0] = &v10;
  v8[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726CE8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int &>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "UInt32");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2726CE9A8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor30get_dsp_node_property_overrideENS_7variantIJNS3_18Uplink_DSP_Node_IDENS3_20Downlink_DSP_Node_IDEEEENS3_17Graph_Property_IDEE3__1JjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C16F8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>(void *a1, const void **a2)
{
  v4 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(i[2], a2) == kCFCompareEqualTo)
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void vp::vx::Voice_Processor::get_configuration_options(uint64_t a1, uint64_t a2, int a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = "hardware";
  if (a3 == 1)
  {
    v5 = "echo";
  }

  applesauce::CF::make_StringRef(@"uplink %s DSP configuration options", &cf, v5);
  v13 = 0;
  v14 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v6 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v6)
  {
    vp::vx::data_flow::State_Manager::find_state(&v16, (a2 + 64), *(v6 + 6));
    v7 = v16;
    LODWORD(v18[0]) = v16;
    v11 = v17;
    v17 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v13);
    v13 = v7;
    v14 = v11;
    v18[1] = 0;
    v18[2] = 0;
    vp::vx::data_flow::State<void>::~State(v18);
    vp::vx::data_flow::State<void>::~State(&v16);
  }

  if (!v14)
  {
    v9 = *(a2 + 472);
    v8 = *(a2 + 480);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    vp::vx::Voice_Processor::get_configuration_context(v15, a2);
    operator new();
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  v14 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v13);
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

{
  v18[4] = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 2)
  {
    v5 = "voice mix";
  }

  else
  {
    v5 = off_279E4A458[a3 - 1];
  }

  applesauce::CF::make_StringRef(@"downlink %s DSP configuration options", &cf, v5);
  v13 = 0;
  v14 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v6 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v6)
  {
    vp::vx::data_flow::State_Manager::find_state(&v16, (a2 + 64), *(v6 + 6));
    v7 = v16;
    LODWORD(v18[0]) = v16;
    v11 = v17;
    v17 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v13);
    v13 = v7;
    v14 = v11;
    v18[1] = 0;
    v18[2] = 0;
    vp::vx::data_flow::State<void>::~State(v18);
    vp::vx::data_flow::State<void>::~State(&v16);
  }

  if (!v14)
  {
    v9 = *(a2 + 472);
    v8 = *(a2 + 480);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    vp::vx::Voice_Processor::get_configuration_context(v15, a2);
    operator new();
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  v14 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v13);
  if (cf)
  {
    CFRelease(cf);
  }

  v10 = *MEMORY[0x277D85DE8];
}