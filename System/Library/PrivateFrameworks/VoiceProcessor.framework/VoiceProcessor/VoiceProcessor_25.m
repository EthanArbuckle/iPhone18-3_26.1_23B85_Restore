void vp::vx::database::v1::syntax::conditions::Match_All::add_constraint(vp::vx::database::v1::syntax::conditions::Match_All *this, const void **a2)
{
  vp::vx::database::v1::syntax::Constraint::get_key(&v7, *a2);
  v8 = v7;
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v9 = v4;
  v10 = *(a2 + 2);
  v5 = a2[2];
  if (v5)
  {
    CFRetain(v5);
  }

  cf = v5;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::emplace_equal<std::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>(&v6, this + 16, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::emplace_equal<std::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  *cf = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v26 = *(a3 + 16);
  v27 = *(a3 + 24);
  *(a3 + 24) = 0;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (!v5 && v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v6)
  {
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf[0], (v5 + 32 * (v6 >> 1))) > kCFCompareGreaterThan)
      {
        v6 >>= 1;
      }

      else
      {
        v5 += 32 * (v6 >> 1) + 32;
        v6 += ~(v6 >> 1);
      }
    }

    while (v6);
    v7 = *(a2 + 8);
    *a1 = v5;
    if (v7 > v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a1 = v5;
    v7 = v5;
  }

  v11 = *(a2 + 16);
  if (!v7 && v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = v7 + 32 * v11;
  if (v5 > v12)
  {
LABEL_12:
    v8 = "this->priv_in_range_or_end(position)";
    v9 = 1862;
    v10 = "emplace";
    goto LABEL_37;
  }

  v13 = *(a2 + 24);
  if (v13 < v11)
  {
    v8 = "this->m_holder.capacity() >= this->m_holder.m_size";
    v9 = 2821;
    v10 = "priv_insert_forward_range";
LABEL_37:
    __assert_rtn(v10, "vector.hpp", v9, v8);
  }

  if (v13 == v11)
  {
    boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>(&v24, a2, v5, cf);
    v5 = v24;
    v21 = v27;
  }

  else
  {
    if (v12 == v5)
    {
      *v12 = cf[0];
      v22 = cf[1];
      *(v12 + 24) = v27;
      cf[0] = 0;
      *(v12 + 8) = v22;
      cf[1] = 0;
      *(v12 + 16) = v26;
      v27 = 0;
      *(a2 + 16) = v11 + 1;
      *a1 = v5;
      goto LABEL_27;
    }

    v14 = (v12 - 32);
    *v12 = *(v12 - 32);
    *(v12 - 24) = 0;
    *(v12 - 32) = 0;
    *(v12 + 16) = *(v12 - 16);
    *(v12 + 24) = *(v12 - 8);
    *(v12 - 8) = 0;
    *(a2 + 16) = v11 + 1;
    if (v12 - 32 != v5)
    {
      v15 = (v12 - 32);
      do
      {
        v16 = *(v15 - 4);
        v15 -= 4;
        v17 = *(v14 - 3);
        *(v14 - 3) = v14[1];
        *(v14 + 4) = *(v14 - 4);
        v18 = v14[3];
        v19 = *v14;
        v14[3] = *(v14 - 1);
        *v14 = v16;
        v14[1] = v17;
        *(v14 - 1) = v18;
        v14 = v15;
        *v15 = v19;
      }

      while (v15 != v5);
    }

    v20 = *v5;
    *v5 = cf[0];
    *(v5 + 8) = cf[1];
    *cf = v20;
    *(v5 + 16) = v26;
    v21 = *(v5 + 24);
    *(v5 + 24) = v27;
    v27 = v21;
  }

  *a1 = v5;
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_27:
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2726778C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *boost::container::dtl::value_destructor<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*v2)
  {
    CFRelease(*v2);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_33:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v28[0] = v15;
  v28[1] = a2;
  v28[2] = v9;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v19 = v17 + 32 * v18;
  v20 = v15;
  if (v17 != a3)
  {
    v21 = *(a2 + 1);
    v20 = v15;
    do
    {
      *v20 = *v21;
      *v21 = 0;
      *(v20 + 8) = *(v21 + 8);
      *(v21 + 8) = 0;
      *(v20 + 16) = *(v21 + 16);
      *(v20 + 24) = *(v21 + 24);
      *(v21 + 24) = 0;
      v21 += 32;
      v20 += 32;
    }

    while (v21 != a3);
  }

  *v20 = *a4;
  *a4 = 0;
  *(v20 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(v20 + 16) = *(a4 + 16);
  *(v20 + 24) = *(a4 + 24);
  *(a4 + 24) = 0;
  if (v19 != a3)
  {
    v22 = (v20 + 56);
    v23 = a3;
    do
    {
      *(v22 - 3) = *v23;
      *v23 = 0;
      *(v22 - 2) = *(v23 + 8);
      *(v23 + 8) = 0;
      *(v22 - 2) = *(v23 + 16);
      *v22 = *(v23 + 24);
      v22 += 4;
      *(v23 + 24) = 0;
      v23 += 32;
    }

    while (v23 != v19);
  }

  v28[0] = 0;
  if (v17)
  {
    for (; v18; --v18)
    {
      v24 = *(v17 + 24);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = *(v17 + 8);
      if (v25)
      {
        CFRelease(v25);
      }

      if (*v17)
      {
        CFRelease(*v17);
      }

      v17 += 32;
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v26 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v26;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::~scoped_array_deallocator(v28);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_272677BDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Any::visit(uint64_t result, uint64_t a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v2)
  {
    v6 = v3 + 32 * v2;
    do
    {
      if (!v3)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      result = (*(*a2 + 16))(a2, v3 + 8);
      v3 += 32;
    }

    while (v3 != v6);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Any::evaluate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (!v2)
  {
    return 0;
  }

  v6 = v3 + 32 * v2;
  do
  {
    if (!v3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    result = (*(**a2 + 24))(*a2, v3 + 8);
    if (result)
    {
      break;
    }

    v3 += 32;
  }

  while (v3 != v6);
  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Any::build(vp::vx::database::v1::syntax::conditions::Match_Any *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = v27;
  default_resource = std::pmr::get_default_resource(this);
  v25 = v27;
  v26 = xmmword_2727566A0;
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v7)
  {
    v9 = v6 + 32 * v7;
    do
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v6 + 8;
      v11 = vp::vx::database::v1::syntax::Constraint::build((v6 + 8), a2, v5);
      v23 = v11;
      v12 = v26;
      v5 = (v25 + 4 * v26);
      if (v26 == *(&v26 + 1))
      {
        boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(&v28, &default_resource, v5, &v23);
        boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint> *,false>::operator*(v28);
      }

      else
      {
        *v5 = v11;
        *&v26 = v12 + 1;
      }

      v6 = v10 + 24;
    }

    while (v10 + 24 != v9);
    v4 = v25;
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<vp::vx::database::v1::fbs::plist::Object>(a2, v4, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v14;
  *(a2 + 70) = 1;
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v18 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>>>(a2, v15);
  LODWORD(v16) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v18 - v17 + v16);
  v19 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v20 = v16;
  *(a2 + 70) = 1;
  LODWORD(v17) = *(a2 + 8);
  LODWORD(v18) = *(a2 + 12);
  LODWORD(v16) = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v20);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 4);
  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v17 - v18 + v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v21);
  if (*(&v26 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::Constraint>,vp::Allocator<void>,void>::deallocate(&default_resource, v25);
  }

  return v21;
}

void vp::vx::database::v1::syntax::conditions::Match_Any::~Match_Any(vp::vx::database::v1::syntax::conditions::Match_Any *this)
{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>,void>::~vector(this + 2);
}

void vp::vx::database::v1::syntax::conditions::Match_Any::add_constraint(vp::vx::database::v1::syntax::conditions::Match_Any *this, const void **a2)
{
  vp::vx::database::v1::syntax::Constraint::get_key(&v7, *a2);
  v8 = v7;
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v9 = v4;
  v10 = *(a2 + 2);
  v5 = a2[2];
  if (v5)
  {
    CFRetain(v5);
  }

  cf = v5;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>>::emplace_equal<std::pair<applesauce::CF::StringRef,vp::vx::database::v1::syntax::Constraint>>(&v6, this + 16, &v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void vp::vx::database::v1::syntax::conditions::Match_Predicate::Parser::parse_condition(uint64_t a1, uint64_t *a2)
{
  v14 = 0;
  vp::xml::Node::children(v9, a2);
  v11[0] = v9;
  v11[1] = 0;
  v12 = 0;
  v13 = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v7, v11, v2);
  while (v7)
  {
    v3 = vp::xml::Node::content(v7, v8);
    vp::cf::Predicate::create(&v6, v3, v4);
    vp::objc::ID::operator=(&v14, &v6);
    vp::objc::ID::~ID(&v6);
    if (v14)
    {
      break;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v7, v5);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v13 == 1)
  {
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  operator new();
}

uint64_t vp::vx::database::v1::syntax::conditions::Match_Predicate::build(id *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = this[2];
  v5 = [v4 predicateFormat];
  applesauce::CF::StringRef::from_ns(&cf, v5);

  LODWORD(v4) = vp::vx::database::v1::fbs::BuildString(a2, &cf, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v7 = v4;
  *(a2 + 70) = 1;
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v7);
  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v10 - v9 + v8);
  v12 = (*(a2 + 5) + *(a2 + 4) - v11);
  v13 = (v12 - *v12);
  if (*v13 < 5u || !v13[2])
  {
    __assert_rtn("Required", "flatbuffers.h", 2702, "ok");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v15 = v11;
  *(a2 + 70) = 1;
  v16 = *(a2 + 8);
  v17 = *(a2 + 12);
  v18 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 5);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v16 - v17 + v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v19);
  return v19;
}

void vp::vx::database::v1::syntax::conditions::Match_Predicate::~Match_Predicate(id *this)
{
  *this = &unk_2881B9948;
  vp::objc::ID::~ID(this + 2);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B9948;
  vp::objc::ID::~ID(this + 2);
}

void vp::create_shared_messenger(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger;
  if (!vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger || (v4 = std::__shared_weak_count::lock(vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger), (a1[1] = v4) == 0) || (v5 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger, *a1 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger, !v5))
  {
    v6 = caulk::concurrent::messenger::shared_high_priority(v4);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v14, v6);
    v7 = v6[2];
    *&v16[13] = *(v6 + 45);
    *v16 = v7;
    if (v15 != 1)
    {
      operator new();
    }

    std::string::__assign_external(&v14, "com.apple.coreaudio.VoiceProcessor (messenger)");
    v17 = a2;
    v12[0] = 0;
    v12[1] = a2;
    v13 = xmmword_272756780;
    v20 = (*(*a2 + 16))(a2, 16, 8);
    v18[0] = &v20;
    v18[1] = &v17;
    v19 = 0;
    MEMORY[0x2743CB640](v20, 1, &v14);
    v19 = 1;
    v8 = v20;
    std::__exception_guard_exceptions<caulk::concurrent::messenger * std::pmr::polymorphic_allocator<caulk::concurrent::messenger>::new_object[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &>(caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v18);
    std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](v12, v8);
    v11 = v12[0];
    if (v12[0])
    {
      operator new();
    }

    v12[0] = 0;
    v9 = a1[1];
    *a1 = 0uLL;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](v12, 0);
    vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger = v11;
    v10 = vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger;
    vp::create_shared_messenger(vp::Allocator<std::byte>)::s_messenger = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v15 == 1 && SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2726788F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t default_resource, uint64_t a14, uint64_t a15)
{
  std::__exception_guard_exceptions<caulk::concurrent::messenger * std::pmr::polymorphic_allocator<caulk::concurrent::messenger>::new_object[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &>(caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v15 - 80);
  std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](&a12, 0);
  v17 = __cxa_begin_catch(a1);
  a12 = 0;
  default_resource = std::pmr::get_default_resource(v17);
  a14 = 0;
  a15 = 0;
  __cxa_end_catch();
  JUMPOUT(0x272678868);
}

void *std::unique_ptr<caulk::concurrent::messenger,vp::Allocator_Delete<caulk::concurrent::messenger>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    MEMORY[0x2743CB650](v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<caulk::concurrent::messenger *,vp::Allocator_Delete<caulk::concurrent::messenger>,std::allocator<caulk::concurrent::messenger>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x2743CB650](v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<caulk::concurrent::messenger *,vp::Allocator_Delete<caulk::concurrent::messenger>,std::allocator<caulk::concurrent::messenger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__exception_guard_exceptions<caulk::concurrent::messenger * std::pmr::polymorphic_allocator<caulk::concurrent::messenger>::new_object[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &>(caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 16, 8);
  }

  return a1;
}

void virtual thunk tovp::vx::io::nodes::Mic_Ref_Sync_Node::~Mic_Ref_Sync_Node(vp::vx::io::nodes::Mic_Ref_Sync_Node *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 12, 0);
  *(v1 + 15) = &unk_2881C6630;
  v2 = *(v1 + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 12, 0);
  *(v1 + 15) = &unk_2881C6630;
  v2 = *(v1 + 17);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::nodes::Mic_Ref_Sync_Node::~Mic_Ref_Sync_Node(vp::vx::io::nodes::Mic_Ref_Sync_Node *this)
{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 12, 0);
  *(this + 15) = &unk_2881C6630;
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 12, 0);
  *(this + 15) = &unk_2881C6630;
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t vp::vx::io::nodes::Mic_Ref_Sync_Node::reset@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 96);
  if (v2)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
  }

  v3 = *(this + 104);
  if (v3)
  {
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
  }

  *(this + 112) = 0;
  *a2 = 0;
  a2[48] = 1;
  return this;
}

void vp::vx::io::nodes::Mic_Ref_Sync_Node::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  if (*(a1 + 88) < a6)
  {
    v57 = 0x17005100000002;
    v58 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
    v60 = 0;
    v61 = 0;
    v59 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v62);
    vp::vx::io::operator<<<char const(&)[13]>(&v51, &v57, "frame count ");
    MEMORY[0x2743CBB40](&v54, a6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, " is larger than ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "maximum allowed block size", 26);
    MEMORY[0x2743CBB40](&v54, *(a1 + 88));
  }

  else if (a3 == 2)
  {
    if (a5 == 2)
    {
      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v57, *a2);
      v14 = *(a2 + 8);
      if (*(v14 + 56))
      {
        v15 = *v14;
        vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v49, *a4);
        vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v48, *(a2 + 24));
        v16 = *(a2 + 32);
        v17 = *(v16 + 56);
        if ((v17 & 1) != 0 || *(a1 + 112) != 1)
        {
          v18 = v15;
          v19 = v15 + a6;
          v20 = *v16;
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v46, *(a4 + 24));
          vp::Audio_Ring_Buffer::write(*(a1 + 96), *a2, v18, v19);
          v21 = *(a1 + 92) & (*(a1 + 92) >> 31);
          if (vp::Audio_Ring_Buffer::read(*(a1 + 96), *a4, v18 + v21, v19 + v21))
          {
            v22 = 1;
            if ((v17 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = vp::for_each_buffer(v49, vp::fill, a6);
            if ((v17 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          vp::Audio_Ring_Buffer::write(*(a1 + 104), *(a2 + 24), v20, v20 + a6);
          v23 = *(a1 + 104);
          if (v23)
          {
            v24 = *(v23 + 72);
            v25 = *(v23 + 80);
            if (v25 > v24)
            {
              v26 = *(a1 + 92) & ~(*(a1 + 92) >> 31);
              v27 = v19 - v26;
              v28 = v18 - v26;
              if (!a6 || (v25 >= v27 ? (v29 = v24 <= v28) : (v29 = 0), v29))
              {
                if (vp::Audio_Ring_Buffer::read(v23, *(a4 + 24), v28, v27))
                {
                  *(a1 + 112) = 1;
                  if (v22)
                  {
LABEL_26:
                    v32 = *(a2 + 8);
                    v33 = *(a4 + 8);
                    v34 = *v32;
                    v35 = v32[1];
                    v36 = v32[3];
                    v33[2] = v32[2];
                    v33[3] = v36;
                    *v33 = v34;
                    v33[1] = v35;
                    v37 = *(a2 + 8);
                    v38 = *(a4 + 32);
                    v39 = *v37;
                    v40 = v37[1];
                    v41 = v37[3];
                    v38[2] = v37[2];
                    v38[3] = v41;
                    *v38 = v39;
                    v38[1] = v40;
                    *a7 = 0;
                    a7[48] = 1;
                    return;
                  }

                  goto LABEL_21;
                }
              }
            }
          }

LABEL_22:
          if (*(a1 + 112) == 1)
          {
            v31 = vp::for_each_buffer(v49, vp::fill, a6);
          }

          else
          {
            v31 = vp::for_each_buffer_pair(v49, v57, vp::copy, a6);
          }

          if (v22 & v31 & vp::for_each_buffer(v46, vp::fill, a6))
          {
            goto LABEL_26;
          }

LABEL_21:
          v51 = 0x1300DE00000000;
          v52 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
          v55 = 0;
          v53 = 0;
          v54 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v56);
          vp::vx::io::operator<<<char const(&)[31]>(v45, &v51);
          v30 = v45;
          goto LABEL_35;
        }

        v51 = 0x13007D00000003;
        v52 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
        v55 = 0;
        v53 = 0;
        v54 = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v56);
        vp::vx::io::operator<<<char const(&)[41]>(v47, &v51, "reference input sample time is not valid");
        v30 = v47;
      }

      else
      {
        v51 = 0x13006D00000003;
        v52 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
        v55 = 0;
        v53 = 0;
        v54 = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v56);
        vp::vx::io::operator<<<char const(&)[42]>(v50, &v51);
        v30 = v50;
      }

LABEL_35:
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v30);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a7, &v51);
      if (SHIBYTE(v55) < 0)
      {
        v42 = v53;
        v44 = v55;
        v43 = v56[0];
        goto LABEL_37;
      }

      return;
    }

    v57 = 0x17005F00000003;
    v58 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
    v60 = 0;
    v61 = 0;
    v59 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v62);
    vp::vx::io::operator<<<char const(&)[18]>(&v51, &v57, "output data size ");
    MEMORY[0x2743CBB50](&v54, a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, " does not match ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "expected data size ", 19);
    MEMORY[0x2743CBB30](&v54, 2);
  }

  else
  {
    v57 = 0x17005800000003;
    v58 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
    v60 = 0;
    v61 = 0;
    v59 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v62);
    vp::vx::io::operator<<<char const(&)[17]>(&v51, &v57, "input data size ");
    MEMORY[0x2743CBB50](&v54, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, " does not match ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "expected data size ", 19);
    MEMORY[0x2743CBB30](&v54, 2);
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v51);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a7, &v57);
  if (SHIBYTE(v61) < 0)
  {
    v42 = v59;
    v44 = v61;
    v43 = v62[0];
LABEL_37:
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v43, v42, v44 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[42]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "microphone input sample time is not valid", 41);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2726792C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[31]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "unknown I/O error has occurred", 30);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_272679350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::nodes::Mic_Ref_Sync_Node::get_terminal_format(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v6 = *(a1 + 64);
    *a3 = *(a1 + 48);
    *(a3 + 16) = v6;
    v5 = *(a1 + 80);
    goto LABEL_5;
  }

  if (!a2)
  {
    v4 = *(a1 + 24);
    *a3 = *(a1 + 8);
    *(a3 + 16) = v4;
    v5 = *(a1 + 40);
LABEL_5:
    *(a3 + 32) = v5;
    *(a3 + 48) = 1;
    return;
  }

  v8[0] = 0x18003D00000009;
  v8[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Mic_Ref_Sync_Node.cpp";
  v10 = 0;
  v11 = 0;
  v9 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v12);
  v7 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v8);
  if (SHIBYTE(v11) < 0)
  {
    (*(*v12 + 24))(v12, v9, v11 & 0x7FFFFFFFFFFFFFFFLL, 1, v7);
  }
}

void vp::services::Model_Manager_Impl::Model_Manager_Monitor::unregister_listener(vp::services::Model_Manager_Impl::Model_Manager_Monitor *this)
{
  v1 = *(this + 3);
  if (v1 && *(this + 40) == 1)
  {
    v3 = v1;
    [v3 unregister_from_inference_monitorWithObserver:*(this + 4) completionHandler:&__block_literal_global_9202];
  }
}

void vp::services::Model_Manager_Impl::Model_Manager_Monitor::register_listener(void *a1, uint64_t a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  if (v2)
  {
    v5 = a1[1];
    v4 = a1[2];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[3];
    }

    v6 = v2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_64_ea8_32c27_ZTSNSt3__18functionIFvbEEE_e8_v12__0B8l;
    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v11, a2);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3321888768;
    v8[2] = ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke_1;
    v8[3] = &__block_descriptor_48_ea8_32c80_ZTSNSt3__18weak_ptrIN2vp8services18Model_Manager_Impl21Model_Manager_MonitorEEE_e8_v16__0q8l;
    v8[4] = v5;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    [v6 register_for_inference_monitor_eventsWithEventCallback:v10 completionHandler:v8];

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v11);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_272679664(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ___ZN2vp8services18Model_Manager_Impl21Model_Manager_Monitor17register_listenerENSt3__18functionIFvbEEE_block_invoke_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        *(v6 + 32) = a2;
        *(v6 + 40) = 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __destroy_helper_block_ea8_32c80_ZTSNSt3__18weak_ptrIN2vp8services18Model_Manager_Impl21Model_Manager_MonitorEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c80_ZTSNSt3__18weak_ptrIN2vp8services18Model_Manager_Impl21Model_Manager_MonitorEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void vp::services::Model_Manager_Impl::Model_Manager_Monitor::~Model_Manager_Monitor(id *this)
{
  vp::objc::ID::~ID(this + 3);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::objc::ID::~ID(this + 3);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2726799BC(void *a1)
{
  vp::objc::ID::~ID(&v1[2].__vftable);
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<vp::services::Model_Manager_Impl::Model_Manager_Monitor>::__on_zero_shared(uint64_t a1)
{
  vp::objc::ID::~ID((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<vp::services::Model_Manager_Impl::Model_Manager_Monitor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B9B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::io::Node_Decorator::disconnect(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  (*(*v2 + 104))(v2, &v3);
  vp::objc::ID::~ID(&v3);
}

void vp::vx::io::Node_Decorator::connect(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  (*(*v2 + 96))(v2, &v3);
  vp::objc::ID::~ID(&v3);
}

uint64_t vp::vx::io::Node_Decorator::as_property_controller(vp::vx::io::Node_Decorator *this)
{
  return (*(**(this + 1) + 16))();
}

{
  return (*(**(this + 1) + 16))();
}

uint64_t vp::vx::io::Node_Decorator::as_parameter_controller(vp::vx::io::Node_Decorator *this)
{
  return (***(this + 1))(*(this + 1));
}

{
  return (***(this + 1))(*(this + 1));
}

void vp::vx::io::validate_nonnull(vp::vx::io *this, const AudioBufferList *a2, const AudioTimeStamp *a3, int a4)
{
  if (a2 && a3 && a4)
  {
    *this = 0;
    *(this + 48) = 1;
    return;
  }

  v13[0] = 0x13001700000000;
  v13[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.cpp";
  v15 = 0;
  v16 = 0;
  v14 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v17);
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  vp::vx::io::operator<<<char const(&)[34]>(v12, v13);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v12);
  if (!a3)
  {
    vp::vx::io::operator<<<char const(&)[3]>(v11, v13);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v11);
LABEL_12:
    vp::vx::io::operator<<<char const(&)[33]>(v10, v13);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v10);
  }

  if (a4)
  {
    goto LABEL_16;
  }

  vp::vx::io::operator<<<char const(&)[7]>(v9, v13);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v9);
LABEL_15:
  vp::vx::io::operator<<<char const(&)[26]>(v8, v13, "audio frame count is zero");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v8);
LABEL_16:
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v13);
  if (SHIBYTE(v16) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17, v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[34]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "audio buffer list pointer is null", 33);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_272679F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[3]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_272679FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[33]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "audio time stamp pointer is null", 32);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27267A050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[7]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", and ", 6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27267A0DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::io::Node_Decorator::Node_Decorator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  v6 = *a3;
  *a3 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a3 + 8);
  *(a1 + 24) = *(a3 + 16);
  v7 = a1 + *(*a1 - 24);
  v8 = *(*v6 - 24);
  v9 = *(v6 + v8 + 8);
  v10 = *(v6 + v8 + 16);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v7 + 16);
  *(v7 + 8) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return a1;
}

void std::vector<vp::Audio_Buffer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::shared_ptr<vp::vx::io::Node_Terminal>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
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

void vp::vx::io::Node_Socket::~Node_Socket(vp::vx::io::Node_Socket *this)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  for (i = (this + 16); v3 != v4; v3 += 2)
  {
    v5 = *v3;
    v6 = v3[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = 0;
    v15 = 0;
    (*(*v5 + 16))(v5, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v7 = *(this + 35);
  if (v7)
  {
    *(this + 36) = v7;
    operator delete(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    *(this + 33) = v8;
    operator delete(v8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    *(this + 30) = v9;
    operator delete(v9);
  }

  v10 = *(this + 26);
  if (v10)
  {
    *(this + 27) = v10;
    operator delete(v10);
  }

  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }

  v12 = *(this + 20);
  if (v12)
  {
    *(this + 21) = v12;
    operator delete(v12);
  }

  v16 = (this + 136);
  std::vector<vp::Audio_Buffer>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 112);
  std::vector<vp::Audio_Buffer>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 88);
  std::vector<std::shared_ptr<vp::vx::io::Node_Terminal>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 64);
  std::vector<std::shared_ptr<vp::vx::io::Node_Terminal>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 40);
  std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = i;
  std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v13 = *(this + 1);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

uint64_t vp::vx::io::anonymous namespace::remove<unsigned int>(uint64_t result, int a2)
{
  v3 = *result;
  v2 = *(result + 8);
  if (*result != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      for (i = v3 + 1; i != v2; ++i)
      {
        if (*i != a2)
        {
          *v3++ = *i;
        }
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 8) = v3;
  }

  return result;
}

void vp::vx::io::Node_Socket::set_terminal(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5)
{
  v6 = 24;
  if (!a3)
  {
    v6 = 0;
  }

  v7 = a2 + v6;
  v8 = *(a2 + v6 + 64);
  v9 = *(v7 + 72);
  v10 = (v7 + 64);
  if (a4 >= ((v9 - v8) >> 4))
  {
    v20[0] = 0x1300E200000009;
    v20[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
    v22 = 0;
    v23 = 0;
    v21 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v24);
    v16 = "output";
    if (!a3)
    {
      v16 = "input";
    }

    v17 = v16;
    vp::vx::io::operator<<<char const*>(v18, v20, &v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " terminal index ", 16);
    MEMORY[0x2743CBB40](v19, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " must be less than ", 19);
    MEMORY[0x2743CBB50](v19, (v10[1] - *v10) >> 4);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v18);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v20);
    if (SHIBYTE(v23) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v24, v21, v23 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v8 + 16 * a4;
    v12 = *a5;
    *a5 = 0;
    *(a5 + 1) = 0;
    v13 = *(v11 + 8);
    *v11 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    *a1 = 0;
    a1[48] = 1;
  }
}

void vp::vx::io::Node_Socket::get_terminal_buffered_frame_count(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v5 = a4;
  if (a3)
  {
    v6 = 24;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + v6 + 64);
  if (a4 < ((*(a2 + v6 + 72) - v7) >> 4))
  {
    v9 = v7 + 16 * a4;
    (*(**v9 + 8))(v26);
    if ((v32 & 1) == 0)
    {
      _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEINSt3__110unique_ptrINS1_5GraphENS7_14default_deleteIS9_EEEEEEv(a1, v26);
LABEL_23:
      if ((v32 & 1) == 0 && SHIBYTE(v29) < 0)
      {
        (*(*v30 + 24))(v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      return;
    }

    v10 = *v26;
    v11 = v31;
    (*(**v9 + 8))(v21);
    if (v25)
    {
      if (v11)
      {
        if (v24)
        {
          v13 = *(a2 + v6 + 160) + (v5 << 6);
          if ((*(v13 + 56) & 1) == 0 || ((v14 = *v13, *v13 >= v10) ? (v15 = v14 < v21[0]) : (v15 = 0), !v15))
          {
            v14 = v10;
          }

          goto LABEL_20;
        }
      }

      else if ((v24 & 1) == 0)
      {
        *a1 = 0;
        *(a1 + 48) = 1;
LABEL_20:
        if ((v25 & 1) == 0 && SHIBYTE(v22) < 0)
        {
          (*(*v23 + 24))(v23, *&v21[2], v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_23;
      }

      v16[0] = 0x18012200000000;
      v16[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
      v18 = 0;
      v19 = 0;
      v17 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
      v12 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16);
      if (SHIBYTE(v19) < 0)
      {
        (*(*v20 + 24))(v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL, 1, v12);
      }

      goto LABEL_20;
    }

    _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEINSt3__110unique_ptrINS1_5GraphENS7_14default_deleteIS9_EEEEEEv(a1, v21);
    goto LABEL_20;
  }

  v26[0] = 0x14012700000009;
  v26[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  v28 = 0;
  v29 = 0;
  v27 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v30);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v26);
  if (SHIBYTE(v29) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

uint64_t vp::vx::io::anonymous namespace::get_frame_count(uint64_t a1, double a2, double a3)
{
  v10 = a3 - a2;
  if (a3 - a2 < 0.0 || v10 > 4294967300.0)
  {
    v20 = 0x1B001F00000002;
    v21 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
    v23 = 0;
    v24 = 0;
    v22 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
    vp::vx::io::operator<<<char const(&)[55]>(v15, &v20, "cannot construct frame count with sample time diff of ");
    MEMORY[0x2743CBB10](&v17, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " samples", 8);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v15);
    v12 = 0;
    v11 = v20;
    v7 = WORD2(v20);
    v5 = HIWORD(v20);
    v8 = v21;
    v3 = v22;
    v6 = v24;
    v14 = v23;
    v4 = v25;
    v23 = 0;
    v24 = 0;
    v22 = 0;
  }

  else
  {
    v11 = vcvtmd_u64_f64(v10);
    v12 = 1;
  }

  v15[0] = 0x19002500000000;
  v15[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  v17 = 0;
  v18 = 0;
  v16 = 0;
  result = vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v19);
  *(a1 + 48) = v12;
  *a1 = v11;
  if ((v12 & 1) == 0)
  {
    *(a1 + 4) = v7;
    *(a1 + 6) = v5;
    *(a1 + 8) = v8;
    *(a1 + 16) = v3;
    *(a1 + 24) = v14;
    *(a1 + 32) = v6;
    *(a1 + 40) = v4;
    v3 = 0;
    v6 = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    result = (*(*v19[0] + 24))(v19[0], v16, v18 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if ((v12 & 1) == 0 && v6 < 0)
  {
    return (*(*v4 + 24))(v4, v3, v6 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

void sub_27267ABC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(v17 - 113) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v17 - 112), *(v17 - 136), *(v17 - 120) & 0x7FFFFFFFFFFFFFFFLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  a11 = 0x19002500000000;
  a12 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  a13 = 0;
  a14 = 0;
  a15 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&a16);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v16, &a11);
  if (SHIBYTE(a15) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a16, a13, a15 & 0x7FFFFFFFFFFFFFFFLL);
  }

  JUMPOUT(0x27267AB98);
}

void vp::vx::io::Node_Socket::process(vp::vx::io::Node_Socket *this, void *a2, unsigned int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v6 = (a2[9] - a2[8]) >> 4;
    MEMORY[0x28223BE20](*a2);
    v8 = &v29[-2] - v7;
    v10 = (*(v9 + 96) - *(v9 + 88)) >> 4;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = &v29[-2] - v13;
    v16 = (*(*v15 + 40))(v15, v12);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v21 = (*(**a2 + 32))();
        while (1)
        {
          v22 = v21 >= a3 ? a3 : v21;
          (*(**a2 + 64))(v34);
          if ((v39 & 1) == 0)
          {
            break;
          }

          vp::vx::io::Node_Socket::process_data(v29, a2, v22, v8, v6, v34[0], v14, v10, v22);
          if ((v33 & 1) == 0)
          {
            goto LABEL_42;
          }

          if ((v39 & 1) == 0 && SHIBYTE(v37) < 0)
          {
            (*(*v38 + 24))(v38, v35, v37 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          a3 -= v22;
          if (!a3)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = (*(**a2 + 32))();
        while (1)
        {
          v26 = v25 >= a3 ? a3 : v25;
          (*(**a2 + 72))(v34);
          if ((v39 & 1) == 0)
          {
            break;
          }

          vp::vx::io::Node_Socket::process_data(v29, a2, v26, v8, v6, v26, v14, v10, v34[0]);
          if ((v33 & 1) == 0)
          {
LABEL_42:
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v29);
            if ((v33 & 1) == 0 && SHIBYTE(v31) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v32, v30, v31 & 0x7FFFFFFFFFFFFFFFLL);
            }

            goto LABEL_46;
          }

          if ((v39 & 1) == 0 && SHIBYTE(v37) < 0)
          {
            (*(*v38 + 24))(v38, v35, v37 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          a3 -= v26;
          if (!a3)
          {
            goto LABEL_39;
          }
        }
      }

      _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(this, v34);
LABEL_46:
      if (v39)
      {
        goto LABEL_40;
      }

      goto LABEL_47;
    }

    if (v16)
    {
      v23 = (*(**a2 + 32))();
      while (1)
      {
        v24 = v23 >= a3 ? a3 : v23;
        vp::vx::io::Node_Socket::process_data(v34, a2, v24, v8, v6, v24, v14, v10, v24);
        if ((v39 & 1) == 0)
        {
          break;
        }

        a3 -= v24;
        if (!a3)
        {
          goto LABEL_39;
        }
      }

LABEL_45:
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v34);
      goto LABEL_46;
    }

    v17 = (*(**a2 + 32))();
    v18 = a3 / v17;
    if (a3 / v17 * v17 == a3)
    {
      v19 = v17;
      if (v17 > a3)
      {
LABEL_39:
        *this = 0;
        *(this + 48) = 1;
        goto LABEL_40;
      }

      v20 = 0;
      while (1)
      {
        vp::vx::io::Node_Socket::process_data(v34, a2, v19, v8, v6, v19, v14, v10, v19);
        if ((v39 & 1) == 0)
        {
          goto LABEL_45;
        }

        if (++v20 >= v18)
        {
          goto LABEL_39;
        }
      }
    }
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  v34[0] = 0x14022100000002;
  v34[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node_Socket.cpp";
  v36 = 0;
  v37 = 0;
  v35 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v38);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v34);
LABEL_47:
  if (SHIBYTE(v37) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v38, v35, v37 & 0x7FFFFFFFFFFFFFFFLL);
  }

LABEL_40:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_27267B12C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::io::Node_Socket::process_data(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, int a8, unsigned int a9)
{
  *a1 = 0;
  *(a1 + 48) = 1;
  vp::vx::io::Node_Socket::pre_process_data_impl(v20, a2, 0, a4, a5, a6);
  result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
  if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
  {
    result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if (*(a1 + 48) == 1)
  {
    vp::vx::io::Node_Socket::pre_process_data_impl(v20, a2, 1, a7, a8, a9);
    result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
    if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
    {
      result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    if (*(a1 + 48) == 1)
    {
      v14 = a2[5];
      v15 = a2[6];
      while (v14 != v15)
      {
        v16 = *v14;
        v14 += 2;
        (*(*v16 + 24))(v16, 0, *a2);
      }

      LOBYTE(v20[0]) = 0;
      v24 = 1;
      result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
      if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
      {
        result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      if (*(a1 + 48) == 1)
      {
        (*(**a2 + 80))(v20);
        result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
        if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
        {
          result = (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        if (*(a1 + 48) == 1)
        {
          v17 = a2[5];
          v18 = a2[6];
          while (v17 != v18)
          {
            v19 = *v17;
            v17 += 2;
            (*(*v19 + 24))(v19, 1, *a2);
          }

          LOBYTE(v20[0]) = 0;
          v24 = 1;
          result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
          if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
          {
            result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL);
          }

          if (*(a1 + 48) == 1)
          {
            vp::vx::io::Node_Socket::post_process_data_impl(v20, a2, 0);
            result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
            if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
            {
              result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL);
            }

            if (*(a1 + 48) == 1)
            {
              vp::vx::io::Node_Socket::post_process_data_impl(v20, a2, 1);
              result = caulk::expected<void,vp::vx::io::Error>::operator=(a1, v20);
              if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
              {
                return std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void vp::vx::io::Node_Socket::pre_process_data_impl(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, int a5, unsigned int a6)
{
  if (a3)
  {
    v6 = 24;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a2 + v6 + 64);
  if (*(a2 + v6 + 72) == *v7)
  {
LABEL_10:
    *a1 = 0;
    a1[48] = 1;
  }

  else
  {
    v10 = 0;
    v11 = a2 + 112;
    v12 = a2 + 160;
    v13 = 1;
    while (1)
    {
      vp::Audio_Buffer::prepare((*(v11 + v6) + 8 * v10), a6);
      v14 = *(*(v11 + v6) + 8 * v10);
      if (v14)
      {
        v14 = *(v14 + 80);
      }

      v15 = a4 + 24 * v10;
      v16 = *(v12 + v6) + (v10 << 6);
      *v15 = v14;
      *(v15 + 8) = v16;
      *(v15 + 16) = a6;
      (*(**(*v7 + 16 * v10) + 16))(v18);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v10 = v13++;
      if (v10 >= (v7[1] - *v7) >> 4)
      {
        goto LABEL_10;
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v18);
    if ((v21 & 1) == 0 && SHIBYTE(v19) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v20, v18[2], v19 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

void vp::vx::io::Node_Socket::post_process_data_impl(_BYTE *a1, uint64_t a2, int a3)
{
  v4 = 24;
  if (!a3)
  {
    v4 = 0;
  }

  v5 = a2 + v4;
  v6 = *(a2 + v4 + 64);
  v7 = *(v5 + 72);
  v8 = (v5 + 64);
  if (v7 == v6)
  {
LABEL_7:
    *a1 = 0;
    a1[48] = 1;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      (*(**(v6 + 16 * v9) + 16))(v11);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v9 = v10;
      v6 = *v8;
      ++v10;
      if (v9 >= (v8[1] - *v8) >> 4)
      {
        goto LABEL_7;
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v11);
    if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v11[2], v12 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

uint64_t vp::vx::io::Node_Socket::reset(vp::vx::io::Node_Socket *this, uint64_t a2)
{
  v3 = 0;
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0x100000000;
  v4 = a2 + 160;
  v5 = a2 + 112;
  v6 = 0uLL;
  do
  {
    if (*(v20 + v3))
    {
      v7 = 24;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v4 + v7);
    v9 = *(v4 + v7 + 8);
    while (v8 != v9)
    {
      v8[2] = v6;
      v8[3] = v6;
      *v8 = v6;
      v8[1] = v6;
      v8 += 4;
    }

    v10 = (v5 + v7);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 != v12)
    {
      do
      {
        v13 = *v11;
        if (*v11)
        {
          v13 = *(v13 + 24) | 0x100000000;
        }

        if ((v13 & 0x100000000) != 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        vp::Audio_Buffer::prepare(v11, v14);
        if (*v11)
        {
          v15 = *(*v11 + 80);
        }

        else
        {
          v15 = 0;
        }

        vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, v15);
        if (*v11)
        {
          v16 = *(*v11 + 24);
        }

        else
        {
          v16 = 0;
        }

        if ((vp::for_each_buffer(*&v19[0], vp::fill, v16) & 1) == 0)
        {
          memset(v19, 0, sizeof(v19));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        ++v11;
        v6 = 0uLL;
      }

      while (v11 != v12);
    }

    v3 += 4;
  }

  while (v3 != 8);
  result = (*(**a2 + 88))(0);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27267B964(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::cf::Notification_Listener::~Notification_Listener(vp::cf::Notification_Listener *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRetain(*(this + 1));
    }

    v29 = v3;
    v4 = *this;
    os_unfair_lock_lock((v2 + 16));
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v32 = v5;
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

    v31 = &v5[6 * v6];
    boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(v30, &v32, &v31, &v29);
    for (i = v30[0]; i != v30[1]; i += 48)
    {
      if (*(i + 8) == v4)
      {
        v9 = *(v2 + 32);
        if (v9 > i)
        {
          goto LABEL_53;
        }

        v10 = *(v2 + 40);
        if (v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10 == 0;
        }

        if (!v11)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v12 = (v9 + 48 * v10);
        if (i >= v12)
        {
LABEL_53:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        v13 = (i + 48);
        while (v13 != v12)
        {
          v14 = i + 48;
          v13 = boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(i, i + 48) + 12;
          i = v14;
        }

        std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100]((v12 - 4));
        v15 = *(v12 - 6);
        if (v15)
        {
          CFRelease(v15);
        }

        --*(v2 + 40);
        break;
      }
    }

    v16 = *(v2 + 32);
    v17 = *(v2 + 40);
    v30[0] = v16;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 == 0;
    }

    if (!v18)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&v32, v30, v16 + 48 * v17, &v29);
    v19 = *(v2 + 32);
    v20 = *(v2 + 40);
    if (!v19 && v20)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v21 = (v19 + 48 * v20);
    v22 = v32;
    if (v32 != v21)
    {
      if (!v32)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v3, v32) <= kCFCompareGreaterThan)
      {
        v21 = v22;
      }
    }

    v23 = *(v2 + 32);
    v24 = *(v2 + 40);
    if (!v23 && v24)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v21 == (v23 + 48 * v24))
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterRemoveObserver(LocalCenter, *(v2 + 64), v3, 0);
    }

    os_unfair_lock_unlock((v2 + 16));
    if (v3)
    {
      CFRelease(v3);
    }

    v26 = *(this + 3);
    *(this + 2) = 0;
    *(this + 3) = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  v27 = *(this + 3);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(this + 1);
  if (v28)
  {
    CFRelease(v28);
  }
}

void sub_27267BC70(void *a1)
{
  os_unfair_lock_unlock(v1 + 4);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267BB18);
}

CFComparisonResult boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(CFComparisonResult result, uint64_t *a2, const __CFString ***a3, const __CFString **a4)
{
  v4 = result;
  v5 = *a2;
  if (*a3 == *a2)
  {
LABEL_11:
    *v4 = v5;
    v4[1] = v5;
    return result;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((*a3 - *a2) >> 4);
  while (1)
  {
    v10 = *a2;
    if (v9 != 1 && !v10)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (!v10)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v11 = v9 >> 1;
    v12 = (v10 + 48 * (v9 >> 1));
    result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v12, a4);
    if (result < 2)
    {
      break;
    }

    *a2 = (v12 + 6);
    v11 = v9 + ~v11;
LABEL_9:
    v9 = v11;
    if (!v11)
    {
      v5 = *a2;
      goto LABEL_11;
    }
  }

  result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a4, v12);
  if (result > kCFCompareGreaterThan)
  {
    goto LABEL_9;
  }

  v13 = *a2;
  *a3 = *a2;
  if (!v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  *a3 = (v13 + 48 * v9);
  v16 = *a2;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&v17, &v16, v12, a4);
  v14 = v12 + 6;
  if (*a3 != v12 + 6)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*a3 - (v12 + 6)) >> 4);
    do
    {
      result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a4, &v14[6 * (v15 >> 1)]);
      if (result > kCFCompareGreaterThan)
      {
        v15 >>= 1;
      }

      else
      {
        v14 += 6 * (v15 >> 1) + 6;
        v15 += ~(v15 >> 1);
      }
    }

    while (v15);
  }

  *v4 = v17;
  v4[1] = v14;
  return result;
}

CFComparisonResult boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(CFComparisonResult result, uint64_t *a2, uint64_t a3, const __CFString **a4)
{
  v4 = result;
  v5 = *a2;
  if (*a2 != a3)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v5) >> 4);
    do
    {
      v9 = *a2;
      if (v8 != 1 && !v9)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v9)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v8 >> 1;
      v11 = (v9 + 48 * (v8 >> 1));
      result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v11, a4);
      if (result >= 2)
      {
        *a2 = (v11 + 6);
        v10 = v8 + ~v10;
      }

      v8 = v10;
    }

    while (v10);
    v5 = *a2;
  }

  *v4 = v5;
  return result;
}

uint64_t *boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v6 = a1 + 5;
  v5 = a1[5];
  *(v6 - 8) = *(a2 + 8);
  *v6 = 0;
  if (v5 == v6 - 3)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v7 = (a2 + 40);
  v8 = *(a2 + 40);
  if (v8)
  {
    if (v8 == a2 + 16)
    {
      *v6 = v6 - 3;
      (*(**v7 + 24))(*v7, v6 - 3);
      return a1;
    }

    *v6 = v8;
  }

  else
  {
    v7 = v6;
  }

  *v7 = 0;
  return a1;
}

void vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry()
{
  {
    vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry(void)::s_registry = 0;
    std::__shared_mutex_base::__shared_mutex_base(&unk_28133BFE0);
    xmmword_28133C088 = 0u;
    *&qword_28133C098 = 0u;
    dword_28133C0A8 = 1065353216;
  }
}

void std::__shared_ptr_emplace<vp::cf::Notification_Center>::__on_zero_shared(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry();
  v2 = *(a1 + 88);
  std::__shared_mutex_base::lock(&unk_28133BFE0);
  v3 = *(&xmmword_28133C088 + 1);
  if (*(&xmmword_28133C088 + 1))
  {
    v4 = vcnt_s8(*(&xmmword_28133C088 + 8));
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v2;
      if (v2 >= *(&xmmword_28133C088 + 1))
      {
        v5 = v2 % *(&xmmword_28133C088 + 1);
      }
    }

    else
    {
      v5 = (*(&xmmword_28133C088 + 1) - 1) & v2;
    }

    v6 = *(xmmword_28133C088 + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(&xmmword_28133C088 + 1) - 1;
        do
        {
          v9 = v7[1];
          if (v9 == v2)
          {
            if (v7[2] == v2)
            {
              v10 = v7[1];
              if (v4.u32[0] > 1uLL)
              {
                if (v10 >= *(&xmmword_28133C088 + 1))
                {
                  v10 %= *(&xmmword_28133C088 + 1);
                }
              }

              else
              {
                v10 &= v8;
              }

              v11 = *(xmmword_28133C088 + 8 * v10);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == &qword_28133C098)
              {
                goto LABEL_36;
              }

              v13 = v12[1];
              if (v4.u32[0] > 1uLL)
              {
                if (v13 >= *(&xmmword_28133C088 + 1))
                {
                  v13 %= *(&xmmword_28133C088 + 1);
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != v10)
              {
LABEL_36:
                if (!*v7)
                {
                  goto LABEL_37;
                }

                v14 = *(*v7 + 8);
                if (v4.u32[0] > 1uLL)
                {
                  if (v14 >= *(&xmmword_28133C088 + 1))
                  {
                    v14 %= *(&xmmword_28133C088 + 1);
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != v10)
                {
LABEL_37:
                  *(xmmword_28133C088 + 8 * v10) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v4.u32[0] > 1uLL)
                {
                  if (v16 >= v3)
                  {
                    v16 %= v3;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != v10)
                {
                  *(xmmword_28133C088 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --qword_28133C0A0;
              operator delete(v7);
              break;
            }
          }

          else
          {
            if (v4.u32[0] > 1uLL)
            {
              if (v9 >= *(&xmmword_28133C088 + 1))
              {
                v9 %= *(&xmmword_28133C088 + 1);
              }
            }

            else
            {
              v9 &= v8;
            }

            if (v9 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

  std::__shared_mutex_base::unlock(&unk_28133BFE0);
  log = vp::get_log(v17);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, a1 + 24, "vp::cf::Notification_Center]", 27);
    v20 = v35;
    v21 = v35;
    v22 = __p[1];
    v23 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (v21 >= 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = __p[0];
      if (v21 >= 0)
      {
        v25 = __p;
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
      v37 = v25;
      v38 = 2080;
      v39 = v26;
      _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v21) = v35;
    }

    if ((v21 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    dispatch_release(v27);
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    v29 = *(a1 + 56) + 16;
    do
    {
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v29);
      v30 = *(v29 - 16);
      if (v30)
      {
        CFRelease(v30);
      }

      v29 += 48;
      --v28;
    }

    while (v28);
  }

  v31 = *(a1 + 72);
  if (v31)
  {
    (*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 56), 48 * v31, 8);
  }

  v32 = *(a1 + 32);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_27267C4B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vp::cf::Notification_Center>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B9C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::cf::Notification_Manager::create_listener(uint64_t a1, uint64_t *a2, const __CFString *cf, uint64_t a4)
{
  v53[4] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  name = cf;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v48, a4);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  os_unfair_lock_lock(a2 + 4);
  v8 = a2[4];
  v9 = a2[5];
  v49 = v8;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v47[0] = (v8 + 48 * v9);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&cfa, &v49, v47, &name);
  v12 = cfa;
  v11 = v52;
  v13 = *(a2 + 5) + 1;
  *(a2 + 5) = v13;
  LODWORD(v49) = v13;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v50, v48);
  if (cf)
  {
    CFRetain(cf);
  }

  cfa = cf;
  LODWORD(v52) = v49;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v53, v50);
  v47[0] = &cfa;
  v47[1] = (a2 + 3);
  v14 = a2[4];
  if (v14 > v12)
  {
    goto LABEL_70;
  }

  v15 = a2[5];
  if (!v14 && v15)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v16 = &v14[6 * v15];
  if (v12 > v16)
  {
LABEL_70:
    v41 = "this->priv_in_range_or_end(hint)";
    v42 = 897;
    v43 = "flat_tree.hpp";
    v44 = "insert_equal";
    goto LABEL_75;
  }

  if (v12 != v16)
  {
    if (!v12)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v17 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v12, &cfa);
    v14 = a2[4];
    if (v17 > kCFCompareGreaterThan)
    {
      v18 = a2[5];
      if (!v14 && v18)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v19 = &v14[6 * v18] - v12;
      if (v19)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
        v21 = v12;
        do
        {
          v22 = &v21[6 * (v20 >> 1)];
          v24 = *v22;
          v23 = (v22 + 6);
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v24, &cfa) <= kCFCompareGreaterThan)
          {
            v20 >>= 1;
          }

          else
          {
            v21 = v23;
            v20 += ~(v20 >> 1);
          }
        }

        while (v20);
        goto LABEL_40;
      }

LABEL_39:
      v21 = v12;
      goto LABEL_40;
    }
  }

  if (v12 == v14)
  {
    goto LABEL_39;
  }

  if (!v12)
  {
    __assert_rtn("operator[]", "vector.hpp", 164, "!!m_ptr");
  }

  v21 = v12;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cfa, v12 - 6) >= 2)
  {
    v21 = a2[4];
    if (v12 != v21)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v21) >> 4);
      do
      {
        if (v25 != 1 && !v21)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (!v21)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cfa, &v21[6 * (v25 >> 1)]) > kCFCompareGreaterThan)
        {
          v25 >>= 1;
        }

        else
        {
          v21 += 6 * (v25 >> 1) + 6;
          v25 += ~(v25 >> 1);
        }
      }

      while (v25);
    }
  }

LABEL_40:
  v26 = a2[4];
  if (v26 > v21)
  {
    v41 = "this->priv_in_range_or_end(position)";
    v42 = 1862;
    v43 = "vector.hpp";
    v44 = "emplace";
    goto LABEL_75;
  }

  v27 = a2[5];
  if (!v26 && v27)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v28 = v26 + 48 * v27;
  if (v21 > v28)
  {
    v41 = "this->priv_in_range_or_end(position)";
    v42 = 1862;
    v43 = "vector.hpp";
    v44 = "emplace";
LABEL_75:
    __assert_rtn(v44, v43, v42, v41);
  }

  v29 = a2[6];
  if (v29 < v27)
  {
    v41 = "this->m_holder.capacity() >= this->m_holder.m_size";
    v42 = 2821;
    v43 = "vector.hpp";
    v44 = "priv_insert_forward_range";
    goto LABEL_75;
  }

  v30 = v11;
  if (v29 == v27)
  {
    boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>(&v46, a2 + 24, v21, &cfa);
  }

  else
  {
    if (v28 == v21)
    {
      *v28 = cfa;
      cfa = 0;
      *(v28 + 8) = v52;
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v28 + 16, v53);
      ++a2[5];
    }

    else
    {
      v31 = (v28 - 48);
      *v28 = *(v28 - 48);
      *(v28 - 48) = 0;
      *(v28 + 8) = *(v28 - 40);
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v28 + 16, v28 - 32);
      ++a2[5];
      for (; v31 != v21; v31 -= 6)
      {
        boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(v31, (v31 - 6));
      }

      boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(v21, &cfa);
    }

    v46 = v21;
  }

  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v53);
  if (cfa)
  {
    CFRelease(cfa);
  }

  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v50);
  if (v12 == v30)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v32 = name;
    CFNotificationCenterAddObserver(LocalCenter, a2[8], vp::cf::Notification_Center::notify_listener, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    v32 = name;
  }

  *a1 = *(a2 + 5);
  v34 = *(a1 + 8);
  *(a1 + 8) = v32;
  if (v32)
  {
    CFRetain(v32);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v35 = a2[1];
  if (!v35 || (v36 = *a2, (v37 = std::__shared_weak_count::lock(v35)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&v38 = v36;
  *(&v38 + 1) = v37;
  v39 = *(a1 + 24);
  *(a1 + 16) = v38;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  os_unfair_lock_unlock(a2 + 4);
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v48);
  if (v32)
  {
    CFRelease(v32);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_27267CB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void vp::cf::Notification_Center::notify_listener(vp::cf::Notification_Center *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry();
  std::__shared_mutex_base::lock_shared(&unk_28133BFE0);
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>>>::find<unsigned long long>(a2);
  if (v9)
  {
    v10 = v9[3];
    if (a3)
    {
      CFRetain(a3);
      v11 = CFGetTypeID(a3);
      if (v11 != CFStringGetTypeID())
      {
        CFRelease(a3);
      }
    }

    if (a5)
    {
      CFRetain(a5);
      v12 = CFGetTypeID(a5);
      if (v12 != CFDictionaryGetTypeID())
      {
        CFRelease(a5);
      }
    }

    v13 = *(v10 + 56);
    operator new();
  }

  std::__shared_mutex_base::unlock_shared(&unk_28133BFE0);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>>>::find<unsigned long long>(unint64_t a1)
{
  if (!*(&xmmword_28133C088 + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&xmmword_28133C088 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&xmmword_28133C088 + 1) <= a1)
    {
      v2 = a1 % *(&xmmword_28133C088 + 1);
    }
  }

  else
  {
    v2 = (*(&xmmword_28133C088 + 1) - 1) & a1;
  }

  i = *(xmmword_28133C088 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (i[2] == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&xmmword_28133C088 + 1))
          {
            v4 %= *(&xmmword_28133C088 + 1);
          }
        }

        else
        {
          v4 &= *(&xmmword_28133C088 + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t *std::unique_ptr<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1},std::default_delete<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    if (*v2)
    {
      CFRelease(*v2);
    }

    MEMORY[0x2743CBFA0](v2, 0x1060C4033AEC38CLL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1}>(dispatch_queue_s *,vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v14 = a1;
  vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry();
  v2 = *(a1 + 16);
  std::__shared_mutex_base::lock_shared(&unk_28133BFE0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>>>::find<unsigned long long>(v2);
  if (v3)
  {
    v4 = v3[3];
    v5 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
    }

    v15 = v5;
    os_unfair_lock_lock((v4 + 16));
    v6 = *(v4 + 32);
    v7 = *(v4 + 40);
    v19 = v6;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (!v8)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v18 = (v6 + 48 * v7);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&cf, &v19, &v18, &v15);
    v9 = cf;
    v10 = v17;
    if (cf != v17)
    {
      do
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          CFRetain(*(a1 + 8));
        }

        cf = v11;
        v12 = v9[5];
        if (!v12)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v12 + 48))(v12, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        v9 += 6;
      }

      while (v9 != v10);
      v5 = v15;
    }

    os_unfair_lock_unlock((v4 + 16));
    if (v5)
    {
      CFRelease(v5);
    }
  }

  std::__shared_mutex_base::unlock_shared(&unk_28133BFE0);
  return std::unique_ptr<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1},std::default_delete<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v14);
}

CFTypeRef **boost::container::dtl::value_destructor<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>::~value_destructor(CFTypeRef **a1)
{
  v2 = *a1;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100]((*a1 + 2));
  if (*v2)
  {
    CFRelease(*v2);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x555555555555555)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x555555555555555)
  {
    v6 = 0x555555555555555;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x555555555555555)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v12 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 48 * v8, 8);
  v14 = v13;
  v30[1] = a2;
  v30[2] = v8;
  v15 = *(a2 + 1);
  v16 = v15 + 48 * *(a2 + 2);
  v17 = v13;
  if (v15 != a3)
  {
    v18 = v15 + 16;
    v17 = v13;
    do
    {
      *v17 = *(v18 - 16);
      *(v18 - 16) = 0;
      *(v17 + 8) = *(v18 - 8);
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v17 + 16, v18);
      v17 += 48;
      v19 = v18 + 32;
      v18 += 48;
    }

    while (v19 != a3);
  }

  *v17 = *a4;
  *a4 = 0;
  *(v17 + 8) = *(a4 + 8);
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v17 + 16, a4 + 16);
  if (v16 != a3)
  {
    v20 = a3 + 16;
    v21 = v17 + 64;
    do
    {
      *(v21 - 16) = *(v20 - 16);
      *(v20 - 16) = 0;
      *(v21 - 8) = *(v20 - 8);
      v22 = std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v21, v20);
      v23 = v20 + 32;
      v20 += 48;
      v21 = v22 + 48;
    }

    while (v23 != v16);
  }

  v30[0] = 0;
  if (v15)
  {
    v24 = *(a2 + 2);
    if (v24)
    {
      v25 = v15 + 16;
      do
      {
        std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v25);
        v26 = *(v25 - 16);
        if (v26)
        {
          CFRelease(v26);
        }

        v25 += 48;
        --v24;
      }

      while (v24);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 48 * *(a2 + 3), 8);
  }

  v27 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v27;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::~scoped_array_deallocator(v30);
  *a1 = *(a2 + 1) + a3 - v12;
  return result;
}

void sub_27267D300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 48 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::get_log_context_info(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "vp::vx::database::v1::syntax::Rule]", 34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ":", 1);
  *(v19 + *(v16 - 24)) = 4;
  v4 = MEMORY[0x2743CBB60](&v16, *(a2 + 8));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "", 0);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ":", 1);
  v7 = MEMORY[0x2743CBAF0](v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "]", 1);
  if ((v24 & 0x10) != 0)
  {
    v9 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v9 = v20;
    }

    v10 = v19[3];
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v8 = 0;
      HIBYTE(v14) = 0;
      goto LABEL_14;
    }

    v10 = v19[0];
    v9 = v19[2];
  }

  v8 = v9 - v10;
  if (v9 - v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v9 - v10;
  if (v8)
  {
    memmove(&v13, v10, v8);
  }

LABEL_14:
  *(&v13 + v8) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  v15[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v11;
  v17 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v25);
}

void sub_27267D688(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267D664);
}

uint64_t vp::vx::io::Object::Log_Context::get_description(vp::vx::io::Object::Log_Context *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vp::vx::io::Object::Log_Context::get_description(a2, &v7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](this, v6);
  v6[0] = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v7 = v4;
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v11);
}

void sub_27267D84C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *vp::vx::io::Object::Log_Context::get_description(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = &unk_2881B9C80;
  v10[1] = &v9;
  v10[2] = a2;
  v11 = v10;
  vp::vx::io::Object::Log_Context::for_each_parent(a1, v10);
  result = v11;
  if (v11 == v10)
  {
    result = (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    result = (*(*v11 + 40))();
  }

  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!*(a1 + 8))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_18;
  }

  if (v9 == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ":", 1);
    LOBYTE(v5) = *(a1 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v6, v7);
LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::io::Object::Log_Context::for_each_parent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    vp::vx::io::Object::Log_Context::for_each_parent(v4, a2);
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v4);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_27267DA60(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267DA20);
}

void *std::__function::__func<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0,std::allocator<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0>,void ()(vp::vx::io::Object::Log_Context const&)>::operator()(void *result, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v4 = result;
    v5 = result[1];
    if (*v5 == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result[2], ":", 1);
    }

    else
    {
      *v5 = 1;
    }

    v6 = v4[2];
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  }

  return result;
}

__n128 std::__function::__func<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0,std::allocator<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0>,void ()(vp::vx::io::Object::Log_Context const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881B9C80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void vp::vx::io::get_log_context_info(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, a3, a4);
  if (v9)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ":", 1);
    vp::vx::io::Object::Log_Context::get_description(v9, &v15);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ":", 1);
  v10 = MEMORY[0x2743CBAF0](&v15, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "]", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v12, v14);
  *a1 = v12;
  a1[2] = v13;
  v14[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v11;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](&v19);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_27267DE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267DE50);
}

void vp::rpb::Object::add_user_info(id *a1, CFDictionaryRef *a2)
{
  v4 = [*a1 userInfo];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v18, *a2);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v12, *a2);
  v13 = (v15 - v14) >> 3;
  while (1)
  {
    if (v18 && v19 != (v21 - v20) >> 3)
    {
      v6 = v12;
      goto LABEL_10;
    }

    v6 = v12;
    if (!v12 || v13 == (v15 - v14) >> 3)
    {
      break;
    }

LABEL_10:
    if (v18 == v6 && v19 == v13)
    {
      break;
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::dereference(v11, &v18);
    v7 = v11[1];
    v8 = v11[0];
    [v5 setObject:v7 forKey:v8];

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    ++v19;
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v9 = *a1;
  v10 = [v5 copy];
  [v9 setUserInfo:v10 error:0];
}

void vp::rpb::Object::add_user_info(id *a1, void *a2, void *a3)
{
  v10 = [*a1 userInfo];
  v6 = [v10 mutableCopy];

  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v7;
  [v7 setObject:*a3 forKey:*a2];
  v8 = *a1;
  v9 = [v11 copy];
  [v8 setUserInfo:v9 error:0];
}

int *vp::vx::Voice_Processor_State_Manager::create_state<CAOrientation>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
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

int *caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  return vp::vx::data_flow::State<void>::~State(a1);
}

int *caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  return vp::vx::data_flow::State<void>::~State(a2);
}

void caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *,void *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  vp::vx::data_flow::State<void>::State(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *,CAOrientation&&)#1}::__invoke(dispatch_object_t *a1, int *a2)
{
  v3 = *a2;
  v4 = a1[3];
  if (v4)
  {
    dispatch_retain(a1[3]);
  }

  v6[0] = std::pmr::get_default_resource(a1);
  v6[1] = 0;
  v6[2] = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v6) = v3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3002000000;
  v12 = __Block_byref_object_copy__10569;
  v13 = __Block_byref_object_dispose__10570;
  v14.__ptr_ = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN2vp2vx9data_flow5StateIvE9set_valueEONS1_5ValueEN10applesauce8dispatch2v15queueE_block_invoke;
  block[3] = &unk_279E4A410;
  block[5] = a1;
  block[6] = v6;
  block[4] = &v9;
  dispatch_sync(v4, block);
  if (v10[5].__ptr_)
  {
    std::exception_ptr::exception_ptr(&v7, v10 + 5);
    v5.__ptr_ = &v7;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    _Block_object_dispose(&v9, 8);
    std::exception_ptr::~exception_ptr(&v14);
    if (v4)
    {
      dispatch_release(v4);
    }

    vp::vx::data_flow::Value::~Value(v6);
  }
}

void sub_27267E45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::exception_ptr a13)
{
  std::exception_ptr::~exception_ptr(&a13);
  _Block_object_dispose((v15 - 80), 8);
  std::exception_ptr::~exception_ptr(v14 + 5);
  if (v13)
  {
    dispatch_release(v13);
  }

  vp::vx::data_flow::Value::~Value(&a10);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CAOrientation>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t **vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_decision@<X0>(std::pmr *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(v45, 0, sizeof(v45));
  default_resource = std::pmr::get_default_resource(a1);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(v7 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *(v7 + 8);
  }

  if (v8 == 1)
  {
    v36 = a3;
    vp::xml::Node::children(v40, a2);
    v42[0] = v40;
    v42[1] = 0;
    v43 = 0;
    v44 = 0;
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v38, v42, v9);
    v10 = 0;
    while (v38)
    {
      v11 = vp::xml::Node::name(v38, v39);
      v14 = vp::vx::database::v1::syntax::constexpr_hash(v11, v12, v13);
      if (v14 == 0x689FBD93802B31EBLL)
      {
        vp::xml::Node::children(v54, &v38);
        v47 = v54;
        v49 = 0uLL;
        v48 = 0;
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v52, &v47, v21);
        while (v52)
        {
          vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(&v51, a1, &v52);
          v22 = v51;
          if (v51)
          {
            goto LABEL_32;
          }

          std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v52, v15);
        }

        v22 = 0;
LABEL_32:
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v49.n128_u8[8] == 1 && v49.n128_u64[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49.n128_u64[0]);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        v10 = v22;
      }

      else if (v14 == 0xE741FF19055EDBB8)
      {
        vp::xml::Node::children(v54, &v38);
        v47 = v54;
        v49 = 0uLL;
        v48 = 0;
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v52, &v47, v16);
        while (v52)
        {
          v17 = *(a1 + 1);
          v18 = vp::xml::Node::content(v52, v53);
          vp::vx::database::v1::runtime::String_Pool::intern(&v51, v17, v18, v19);
          v20 = v51;
          if (v51)
          {
            goto LABEL_24;
          }

          std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v52, v15);
        }

        v20 = 0;
LABEL_24:
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v49.n128_u8[8] == 1 && v49.n128_u64[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49.n128_u64[0]);
        }

        v23 = *&v45[8];
        if (*&v45[8] >= *&v45[16])
        {
          v25 = *v45;
          v26 = (*&v45[8] - *v45) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
          }

          v28 = *&v45[16] - *v45;
          if ((*&v45[16] - *v45) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          p_default_resource = &default_resource;
          if (v29)
          {
            v30 = std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::allocate[abi:ne200100](default_resource, v29);
            v23 = *&v45[8];
            v25 = *v45;
          }

          else
          {
            v30 = 0;
          }

          v31 = &v30[v26];
          v47 = v30;
          v48 = v31;
          v49.n128_u64[1] = &v30[v29];
          v32 = &v31[-((*&v45[8] - *v45) >> 3)];
          *v31 = v20;
          v49.n128_u64[0] = (v31 + 1);
          std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>(&default_resource, v25, v23, v32);
          v33 = *v45;
          v34 = *&v45[16];
          *v45 = v32;
          v37 = v49;
          *&v45[8] = v49;
          v49.n128_u64[0] = v33;
          v49.n128_u64[1] = v34;
          v47 = v33;
          v48 = v33;
          std::__split_buffer<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef> &>::~__split_buffer(&v47);
          v15 = v37;
          v24 = v37.n128_u64[0];
        }

        else
        {
          **&v45[8] = v20;
          v24 = v23 + 1;
        }

        *&v45[8] = v24;
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v38, v15);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    a3 = v36;
    if (v44 == 1 && v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v10)
    {
      operator new();
    }
  }

  *a3 = 0;
  v47 = v45;
  return std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v47);
}

uint64_t **std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v7 = *(v3 - 8);
        v3 -= 8;
        std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(v7);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v8 = v5[3];
    v9 = (v5[2] - v4) >> 3;

    return std::allocator_traits<vp::Allocator<applesauce::CF::StringRef>>::deallocate[abi:ne200100](v8, v4, v9);
  }

  return result;
}

void std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t vp::vx::database::v1::syntax::decisions::Override_Property_List::evaluate(vp::vx::database::v1::syntax::decisions::Override_Property_List *this, const vp::vx::database::v1::Request *a2, void **a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  for (i = *(this + 3); v3 != i; ++v3)
  {
    if (*v3)
    {
      Length = CFStringGetLength(*v3);
      v8 = Length;
      if (Length)
      {
        MEMORY[0x28223BE20](Length);
        bzero(v12 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0), (v8 + 1));
        if (CFStringGetCString(*v3, v12 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0), (v8 + 1), 0x8000100u))
        {
          v8 = v12 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0);
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = *(this + 6);
    if (v9)
    {
      CFRetain(*(this + 6));
      vp::vx::database::v1::Response::set(a3, v8, v9, 0);
      CFRelease(v9);
    }

    else
    {
      vp::vx::database::v1::Response::set(a3, v8, 0, 0);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_27267EB58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::database::v1::syntax::decisions::Override_Property_List::build(CFTypeRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = v34;
  default_resource = std::pmr::get_default_resource(this);
  v32 = v34;
  v33 = xmmword_272756790;
  v6 = this[2];
  v7 = this[3];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v8 = vp::vx::database::v1::fbs::BuildString(a2, v6, v5);
      v30 = v8;
      v9 = v33;
      v5 = (v32 + 4 * v33);
      if (v33 == *(&v33 + 1))
      {
        boost::container::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>*,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(&v35, &default_resource, v5, &v30);
        boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String> *,false>::operator*(v35);
      }

      else
      {
        *v5 = v8;
        *&v33 = v9 + 1;
      }

      ++v6;
    }

    while (v6 != v7);
    v4 = v32;
    v10 = v33;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a2, v10, 4uLL);
  if (v10)
  {
    v11 = v4 - 4;
    v12 = v10;
    do
    {
      v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, *&v11[4 * v12]);
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a2, v13);
      --v12;
    }

    while (v12);
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a2, v10);
  v16 = vp::vx::database::v1::fbs::BuildPropertyList(a2, this + 6, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v17 = v16;
  *(a2 + 70) = 1;
  v18 = *(a2 + 8);
  v19 = *(a2 + 12);
  v20 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v17);
  if (v14)
  {
    v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v14);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 4, v21);
  }

  v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v18 - v19 + v20);
  v23 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v24 = v22;
  *(a2 + 70) = 1;
  v25 = *(a2 + 8);
  v26 = *(a2 + 12);
  v27 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v24);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v23);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 3);
  v28 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v25 - v26 + v27);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v28);
  if (*(&v33 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>::deallocate(&default_resource, v32);
  }

  return v28;
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>*,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
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
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v20 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::database::v1::syntax::decisions::Override_Property_List::~Override_Property_List(vp::vx::database::v1::syntax::decisions::Override_Property_List *this)
{
  *this = &unk_2881B9D18;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 16);
  std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B9D18;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 16);
  std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser *this, const vp::xml::Node *a2, uint64_t a3)
{
  v6 = vp::xml::Node::name(*a3, *(a3 + 8));
  v9 = vp::vx::database::v1::syntax::constexpr_hash(v6, v7, v8);
  if (v9 <= 0x104D579BAD9D5091)
  {
    if (v9 > 0x8C1783A7271CA55ELL)
    {
      if (v9 == 0x8C1783A7271CA55FLL)
      {
        v54 = *MEMORY[0x277CBED28];
        if (*MEMORY[0x277CBED28])
        {
          CFRetain(*MEMORY[0x277CBED28]);
          *this = v54;
          CFRelease(v54);
          return;
        }
      }

      else if (v9 == 0xB58C869978AEB01BLL)
      {
        vp::xml::Node::children(&v77, a3);
        cf = &v77;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v27 = std::ranges::__distance::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>>(&cf, v26);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], v27 / 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v84 == 1 && v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        vp::xml::Node::children(&valuePtr, a3);
        cf = &valuePtr;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v29);
        v30 = 0;
        while (__dst.__r_.__value_.__r.__words[0])
        {
          v31 = vp::xml::Node::name(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          if (vp::vx::database::v1::syntax::constexpr_hash(v31, v32, v33) == 0x5819D4D75CBDC104)
          {
            if (v30)
            {
              goto LABEL_104;
            }

            vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist_string(value, a2, &__dst);
            v30 = value[0];
          }

          else
          {
            if (!v30 || (vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(value, a2), !value[0]))
            {
LABEL_104:
              value[0] = 0;
              if (__dst.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
              }

              if (v84 == 1 && v83)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v83);
                if (!v30)
                {
                  goto LABEL_138;
                }

                goto LABEL_137;
              }

LABEL_136:
              if (!v30)
              {
                goto LABEL_138;
              }

              goto LABEL_137;
            }

            CFDictionarySetValue(Mutable, v30, value[0]);
            CFRelease(v30);
            if (value[0])
            {
              CFRelease(value[0]);
            }

            v30 = 0;
          }

          std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&__dst, v34);
        }

        if (__dst.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
        }

        if (v84 == 1 && v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (Mutable)
        {
          CFRetain(Mutable);
          value[0] = Mutable;
          v64 = CFGetTypeID(Mutable);
          if (v64 != CFDictionaryGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          goto LABEL_136;
        }

        value[0] = 0;
        if (v30)
        {
LABEL_137:
          CFRelease(v30);
        }

LABEL_138:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v65 = value[0];
        if (value[0])
        {
          CFRetain(value[0]);
          *this = v65;
          CFRelease(v65);
          return;
        }
      }
    }

    else if (v9 == 0x80EB68B1F909C988)
    {
      vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist_string(&cf, a2, a3);
      v47 = cf;
      if (cf)
      {
        CFRetain(cf);
        *this = v47;
        CFRelease(v47);
        return;
      }
    }

    else if (v9 == 0x895073F30609C3C7)
    {
      vp::xml::Node::children(&valuePtr, a3);
      cf = &valuePtr;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v77, &cf, v10);
      if (v77.__vftable)
      {
        v11 = vp::xml::Node::content(v77.__vftable, v78);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v12;
        if (v12)
        {
          memmove(&__dst, v11, v12);
        }

        __dst.__r_.__value_.__s.__data_[v13] = 0;
        v56 = std::stod(&__dst, 0);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v57 = v56;
        if (v56 == v57)
        {
          *&__dst.__r_.__value_.__l.__data_ = v56;
          v58 = CFNumberCreate(0, kCFNumberFloatType, &__dst);
          value[0] = v58;
          if (!v58)
          {
            v59 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v59, "Could not construct");
          }
        }

        else
        {
          *&__dst.__r_.__value_.__l.__data_ = v56;
          v58 = CFNumberCreate(0, kCFNumberDoubleType, &__dst);
          value[0] = v58;
          if (!v58)
          {
            v72 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v72, "Could not construct");
          }
        }
      }

      else
      {
        v58 = 0;
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      if (v84 == 1)
      {
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }
      }

      if (v58)
      {
        CFRetain(v58);
        *this = v58;
        CFRelease(v58);
        return;
      }
    }

    goto LABEL_176;
  }

  if (v9 <= 0x7208C663866326E7)
  {
    if (v9 == 0x104D579BAD9D5092)
    {
      vp::xml::Node::children(&v77, a3);
      cf = &v77;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v49 = std::ranges::__distance::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>>(&cf, v48);
      v50 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v49, MEMORY[0x277CBF128]);
      if (v84 == 1 && v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      vp::xml::Node::children(&valuePtr, a3);
      cf = &valuePtr;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v51);
      while (__dst.__r_.__value_.__r.__words[0])
      {
        vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(value, a2);
        v52 = value[0];
        if (!value[0])
        {
          v75 = 0;
          if (__dst.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
          }

          if (v84 == 1 && v83)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }

          if (!v50)
          {
            goto LABEL_176;
          }

          v62 = 0;
          goto LABEL_126;
        }

        CFArrayAppendValue(v50, value[0]);
        CFRelease(v52);
        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&__dst, v53);
      }

      if (__dst.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
      }

      if (v84 == 1 && v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (!v50)
      {
        goto LABEL_176;
      }

      CFRetain(v50);
      v75 = v50;
      v61 = CFGetTypeID(v50);
      v62 = v50;
      if (v61 != CFArrayGetTypeID())
      {
        v63 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v63, "Could not construct");
      }

LABEL_126:
      CFRelease(v50);
      if (!v62)
      {
        goto LABEL_176;
      }

      CFRetain(v62);
      *this = v62;
      if (v75)
      {
        CFRelease(v75);
      }
    }

    else
    {
      if (v9 != 0x3D7C2357A576C67FLL)
      {
        goto LABEL_176;
      }

      vp::xml::Node::children(&valuePtr, a3);
      cf = &valuePtr;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v14);
      if (__dst.__r_.__value_.__r.__words[0])
      {
        v15 = vp::xml::Node::content(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        if (v16)
        {
          v17 = v15;
          LOBYTE(v18) = 0;
          v19 = 0;
          LOBYTE(v20) = 0;
          v21 = 8;
          while (1)
          {
            if (!v19)
            {
              v22 = *v17;
              if (v22 < 0 || (v18 = boost::archive::iterators::detail::to_6_bit<char>::operator()(char)const::lookup_table[v22], v18 == 255))
              {
                v77.__vftable = &unk_2881B4A18;
                LODWORD(v78) = 1;
                boost::serialization::throw_exception<boost::archive::iterators::dataflow_exception>(&v77);
              }

              ++v17;
              v19 = 6;
            }

            v23 = v19;
            if (v19 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v19;
            }

            v19 -= v24;
            v20 = (v20 << v24) | (v18 >> v19) & ~(-1 << v24);
            v25 = v21 > v23;
            v21 -= v24;
            if (!v25)
            {
              operator new();
            }
          }
        }

        *value = 0uLL;
        v68 = CFDataCreate(0, 0, 0);
        v67 = v68;
        if (!v68)
        {
          v70 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v70, "Could not construct");
        }

        v77.__vftable = v68;
        v69 = CFGetTypeID(v68);
        if (v69 != CFDataGetTypeID())
        {
          v71 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v71, "Could not construct");
        }
      }

      else
      {
        v67 = 0;
      }

      if (__dst.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
      }

      if (v84 == 1 && v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (!v67)
      {
        goto LABEL_176;
      }

      CFRetain(v67);
      *this = v67;
      CFRelease(v67);
    }

    return;
  }

  if (v9 == 0x7208C663866326E8)
  {
    v55 = *MEMORY[0x277CBED10];
    if (*MEMORY[0x277CBED10])
    {
      CFRetain(*MEMORY[0x277CBED10]);
      *this = v55;
      CFRelease(v55);
      return;
    }

    goto LABEL_176;
  }

  if (v9 != 0x7E29DF81098DA67FLL)
  {
    goto LABEL_176;
  }

  vp::xml::Node::children(&v77, a3);
  cf = &v77;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v35);
  while (1)
  {
    if (!__dst.__r_.__value_.__r.__words[0])
    {
      v60 = 0;
      goto LABEL_158;
    }

    v36 = vp::xml::Node::content(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v39 = v37 && *v36 == 45;
    v40 = &v36[v37];
    v41 = v39;
    v42 = &v36[v39];
    if (v37 == v39)
    {
      v43 = &v36[v39];
    }

    else
    {
      v46 = v37 - v39;
      v43 = v42;
      while (*v43 == 48)
      {
        ++v43;
        if (!--v46)
        {
          goto LABEL_78;
        }
      }
    }

    if (v43 == v40)
    {
      break;
    }

    if (*v43 - 48 >= 0xA)
    {
      v40 = v43;
      break;
    }

    v44 = std::__itoa::__traits<unsigned long long>::__read[abi:ne200100](v43, v40, &valuePtr, value);
    if ((v44 == v40 || *v44 - 48 > 9) && !__CFADD__(valuePtr, value[0]))
    {
      v45 = value[0] + valuePtr;
      if (v41)
      {
        if (v45 <= 0x8000000000000000)
        {
          goto LABEL_143;
        }
      }

      else if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_144;
      }
    }

LABEL_79:
    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&__dst, v38);
  }

LABEL_78:
  if (v40 == v42)
  {
    goto LABEL_79;
  }

  v45 = 0;
  if ((v41 & 1) == 0)
  {
    goto LABEL_145;
  }

LABEL_143:
  v45 = -v45;
LABEL_144:
  if (v45 == v45)
  {
LABEL_145:
    LODWORD(valuePtr) = v45;
    v60 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    value[0] = v60;
    if (!v60)
    {
      v66 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v66, "Could not construct");
    }

    goto LABEL_158;
  }

  valuePtr = v45;
  v60 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  value[0] = v60;
  if (!v60)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "Could not construct");
  }

LABEL_158:
  if (__dst.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
  }

  if (v84 == 1 && v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (v60)
  {
    CFRetain(v60);
    *this = v60;
    CFRelease(v60);
    return;
  }

LABEL_176:
  *this = 0;
}

void sub_27267FE1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist_string(vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser *this, const vp::xml::Node *a2, uint64_t *a3)
{
  *this = 0;
  vp::xml::Node::children(v14, a3);
  v16[0] = v14;
  v16[1] = 0;
  v17 = 0;
  v18 = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v12, v16, v5);
  while (v12)
  {
    v6 = *(a2 + 1);
    v7 = vp::xml::Node::content(v12, v13);
    vp::vx::database::v1::runtime::String_Pool::intern(&v11, v6, v7, v8);
    v10 = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v12, v9);
  }

  v10 = 0;
LABEL_8:
  *this = v10;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v18 == 1)
  {
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }
}

uint64_t std::ranges::__distance::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>>(uint64_t **a1, __n128 a2)
{
  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v5, a1, a2);
  if (v5)
  {
    v3 = 0;
    do
    {
      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v5, v2);
      ++v3;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

uint64_t std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(*a1 + 16);

  return v3();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    do
    {
      v7 = *v5++;
      std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(v7);
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(v4);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<applesauce::CF::StringRef>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 3);
  }

  return a1;
}

uint64_t vp::vx::io::Parameter_Controller_Delegate::process(uint64_t a1, uint64_t a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (result)
  {
    v6 = *(*a1 + 48);

    return v6(a1, a2, result);
  }

  return result;
}

void vp::vx::io::Parameter_Controller_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void vp::vx::io::Parameter_Controller_Command::set_node(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v4 = (***a2)(*a2);
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v4;
  v7 = v5;
  (*(*a1 + 40))(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void vp::vx::io::Parameter_Controller_Command::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void vp::vx::io::operator<<<char const(&)[47]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_27268044C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::Parameter_Exchange::get_parameter(vp::vx::io::Parameter_Exchange *this, void *a2, const vp::vx::io::Parameter_Controller *a3, uint64_t a4)
{
  v6 = a2[1];
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a3;
      if (v6 <= a3)
      {
        v8 = a3 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a3;
    }

    v9 = *(*a2 + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == a3)
        {
          if (*(i + 4) == a3)
          {
            (*(*a4 + 24))(v16, a4, a3);
            if (v20)
            {
              LODWORD(result) = v16[0];
              *(i + 5) = v16[0];
              *this = 0;
              *(this + 48) = 1;
              return result;
            }

            result = _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(this, v16);
            if ((v20 & 1) == 0 && SHIBYTE(v18) < 0)
            {
              v12 = v16[2];
              v14 = v18;
              v13 = v19;
LABEL_19:
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
            }

            return result;
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }
          }

          else
          {
            v11 &= v6 - 1;
          }

          if (v11 != v8)
          {
            break;
          }
        }
      }
    }
  }

  v21[0] = 0x1300310000000ALL;
  v21[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Parameter_Exchange.cpp";
  v23 = 0;
  v24 = 0;
  v22 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
  vp::vx::io::operator<<<char const(&)[47]>(v16, v21, "parameter exchange does not support parameter ");
  MEMORY[0x2743CBB40](&v17, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v16);
  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v21).n128_u64[0];
  if (SHIBYTE(v24) < 0)
  {
    v12 = v22;
    v14 = v24;
    v13 = v25;
    goto LABEL_19;
  }

  return result;
}

void vp::vx::components::Parameter_Logger::configure(std::__shared_weak_count **this)
{
  v40 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__t, this, "vp::vx::components::Parameter_Logger]", 36);
    v4 = HIBYTE(v38);
    v5 = SHIBYTE(v38);
    v6 = v38;
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

      rep = __t.__d_.__rep_;
      if (v5 >= 0)
      {
        rep = &__t;
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
      v34 = rep;
      v35 = 2080;
      v36 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v38);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__t.__d_.__rep_);
    }
  }

  v11 = this[29];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v13 = v12;
    if (v12)
    {
      v14 = this[28];
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        v15 = this[31];
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = this[30];
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              (v17->__get_deleter)(&__t, v17, 6);
              v30 = __t.__d_.__rep_;
              v31 = v38;
              v38 = 0uLL;
              vp::vx::data_flow::State<void>::~State(&__t);
              v18 = this[1];
              v28[0] = 0;
              v28[1] = v18;
              v29 = xmmword_2727565F0;
              v19 = (v18->__on_zero_shared)(v18, 96, 8);
              v20 = v19;
              *&v21 = v14;
              *(&v21 + 1) = v13;
              atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v22 = *(this + 13);
              v23 = this[27];
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *v19 = &unk_2881BA018;
              *(v19 + 8) = v21;
              *(v19 + 24) = v22;
              *(v19 + 48) = 0;
              *(v19 + 56) = 0;
              *(v19 + 40) = 0;
              __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
              *(v20 + 64) = std::chrono::system_clock::to_time_t(&__t);
              *(v20 + 72) = 0;
              *(v20 + 80) = 0;
              *(v20 + 88) = 0;
              std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](v28, v20);
              v24 = v28[0];
              vp::vx::data_flow::State<void>::State(&v27, &v30);
              v26 = v24[1];
              v25 = v24[2];
              if (v25)
              {
                atomic_fetch_add_explicit(v25 + 2, 1uLL, memory_order_relaxed);
              }

              v32[0] = &unk_2881BA2C0;
              v32[1] = v26;
              v32[2] = v25;
              v32[3] = v32;
              std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, v32);
              v39 = 0;
              operator new();
            }
          }
        }

        _os_crash();
        __break(1u);
      }
    }
  }

  while (1)
  {
    _os_crash();
    __break(1u);
  }
}

void sub_272680A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void (***)(void));
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](va, 0);
  vp::vx::data_flow::State<void>::~State(va1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void (****std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::components::Parameter_Logger::set_time(uint64_t this, uint64_t a2)
{
  *(this + 256) = a2;
  v2 = *(this + 264);
  if (v2)
  {
    *(v2 + 64) = a2;
  }

  return this;
}

void vp::vx::components::Parameter_Logger::set_state_owner(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Parameter_Logger::set_state_observer(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Parameter_Logger::set_messenger(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Parameter_Logger::~Parameter_Logger(std::__shared_weak_count **this)
{
  vp::vx::components::Parameter_Logger::~Parameter_Logger(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Parameter_Logger]", 36);
    v4 = v16;
    v5 = v16;
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
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::io::Node_Decorator_Factory>>::reset[abi:ne200100](this + 33, 0);
  v11 = this[31];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[29];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[27];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  vp::Context::~Context((this + 2));
  v14 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this + *(*this - 24)));
}

void vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B9EA0;
  *(this + 8) = &unk_2881B9FB0;
  *(this + 5) = &unk_2881B9F60;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::components::Parameter_Logger::Node_Decorator]", 52);
    v3 = v15;
    v4 = v15;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
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
      LOBYTE(v4) = v15;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 7);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *this = off_2881BA048;
  *(this + 8) = off_2881BA0E0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 8) = &unk_2881C6630;
  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(this);

  JUMPOUT(0x2743CBFA0);
}

void non-virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this - 40));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this - 40));
}

void vp::vx::components::Parameter_Logger::Node_Decorator::set_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this@<X0>, float a2@<S0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v18 = a3;
  v17 = a2;
  v8 = (***(this + 1))(*(this + 1));
  if (v8)
  {
    v9 = v8;
    v11[0] = std::chrono::system_clock::now().__d_.__rep_;
    (*(*v9 + 32))(v9, a3, a2);
    if (*(a4 + 48) == 1)
    {
      v16 = "set";
      vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::write(*(this + 6), v11, &v16, &v18, &v17);
    }
  }

  else
  {
    v11[0] = 0x1000620000000DLL;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Parameter_Logger+Node_Decorator.cpp";
    v13 = 0;
    v14 = 0;
    v12 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v15);
    v10 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a4, v11);
    if (SHIBYTE(v14) < 0)
    {
      (*(*v15 + 24))(v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL, 1, v10);
    }
  }
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::write(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 744);
  v11 = *(a1 + 672);
  explicit = atomic_load_explicit((a1 + 736), memory_order_acquire);
  v13 = v10 - 1;
  v14 = v11 >= explicit;
  v15 = v11 - explicit;
  if (!v14)
  {
    v13 = -1;
  }

  if (v15 == v13)
  {
    vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(a1);
  }

  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = *(a1 + 752);
  v21 = *(a1 + 744);
  v22 = *(a1 + 672);
  v23 = v22 + v21 + 1;
  do
  {
    v23 -= v21;
  }

  while (v23 >= v21);
  if (v23 == atomic_load_explicit((a1 + 736), memory_order_acquire))
  {
    goto LABEL_23;
  }

  v24 = v20 + 24 * v22;
  *v24 = v16;
  *(v24 + 8) = v17;
  *(v24 + 16) = v18;
  *(v24 + 20) = v19;
  atomic_store(v23, (a1 + 672));
  v25 = *(a1 + 744);
  v26 = *(a1 + 672);
  v27 = atomic_load_explicit((a1 + 736), memory_order_acquire);
  if (v26 < v27)
  {
    v25 = 0;
  }

  if (v27 + ~v26 + v25 >= *(a1 + 648) >> 1)
  {
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  v28 = *(a1 + 656);
  if (v28)
  {
    v29 = *a1;
    v30 = *(a1 + 8);
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x277D7F098])
    {
      v35 = v29;
      v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v31 + 16) = 0;
      *(v31 + 24) = v35;
      *v31 = &unk_2881BA270;
      *(v31 + 8) = 0;
      v32 = *MEMORY[0x277D85DE8];

      caulk::concurrent::messenger::enqueue(v28, v31);
      return;
    }

    __break(1u);
LABEL_23:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v34 = *MEMORY[0x277D85DE8];

  vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(a1);
}

void sub_27268149C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v12 = a1;
  v2 = *(a1 + 752);
  v3 = *(a1 + 744);
  explicit = atomic_load_explicit((a1 + 672), memory_order_acquire);
  v5 = *(a1 + 736);
  v6 = explicit - v5;
  if (explicit >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7 + v6;
  if (v7 + v6)
  {
    v9 = v7 + explicit;
    v10 = v2 + 24 * v5;
    v11 = v7 + explicit - v3;
    if (v7 + explicit <= v3)
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(v10, v10 + 24 * v8, &v12);
      if (v9 == v3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9;
      }
    }

    else
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(v10, v2 + 24 * v3, &v12);
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(v2, v2 + 24 * (v5 - v3) + 24 * v8, &v12);
    }

    atomic_store(v11, (a1 + 736));
  }

  std::ostream::flush();

  std::mutex::unlock((a1 + 16));
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_2881BA298;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_2881BA298;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = MEMORY[0x277D82680];
    do
    {
      v7 = *a3;
      vp::utility::operator<<((*a3 + 80), *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), ", ", 2);
      v8 = strlen(*(v5 + 8));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), *(v5 + 8), v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), ", ", 2);
      v9 = MEMORY[0x2743CBB40](v7 + 80, *(v5 + 16));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
      v10 = *(v5 + 20);
      v11 = std::ostream::operator<<();
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v13, v6);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v13);
      std::ostream::put();
      result = std::ostream::flush();
      v5 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

void vp::vx::components::Parameter_Logger::Node_Decorator::get_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v6 = (***(this + 1))(*(this + 1));
  if (v6)
  {
    v7 = v6;
    v9[0] = std::chrono::system_clock::now().__d_.__rep_;
    (*(*v7 + 24))(v7, a2);
    if (*(a3 + 48) == 1)
    {
      v14 = "get";
      vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::write(*(this + 6), v9, &v14, &v15, a3);
    }
  }

  else
  {
    v9[0] = 0x1000500000000DLL;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Parameter_Logger+Node_Decorator.cpp";
    v11 = 0;
    v12 = 0;
    v10 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v13);
    v8 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v9);
    if (SHIBYTE(v12) < 0)
    {
      (*(*v13 + 24))(v13, v10, v12 & 0x7FFFFFFFFFFFFFFFLL, 1, v8);
    }
  }
}

double vp::vx::components::Parameter_Logger::Node_Decorator::get_parameter_ids@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = (***(a1 + 8))(*(a1 + 8));
  if (v3)
  {
    (*(*v3 + 16))(&v6);
    v5 = v7;
    result = *&v6;
    *a2 = v6;
    a2[2] = v5;
  }

  return result;
}

uint64_t non-virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(uint64_t a1)
{
  result = (***(a1 - 32))(*(a1 - 32));
  if (result)
  {
    v2 = *(*result + 8);

    return v2();
  }

  return result;
}

uint64_t (***non-virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this))(void)
{
  result = (***(this - 4))(*(this - 4));
  if (result)
  {
    v2 = **result;

    return v2();
  }

  return result;
}

uint64_t vp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(uint64_t a1)
{
  result = (***(a1 + 8))(*(a1 + 8));
  if (result)
  {
    v2 = *(*result + 8);

    return v2();
  }

  return result;
}

uint64_t (***vp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this))(void)
{
  result = (***(this + 1))(*(this + 1));
  if (result)
  {
    v2 = **result;

    return v2();
  }

  return result;
}

uint64_t vp::vx::components::Parameter_Logger::Node_Decorator::as_parameter_controller(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  return this + 40;
}

{
  return this + 40;
}

void vp::vx::components::Parameter_Logger::Node_Decorator_Factory::new_node_decorator(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    *&__src[8] = 0;
    *&v31 = 0;
    *__src = std::pmr::get_default_resource(a1);
    vp::vx::data_flow::State<void>::get_value((a1 + 40), __src);
    v8 = *vp::vx::data_flow::Value::view_storage(__src);
    vp::vx::data_flow::Value::~Value(__src);
    if (v8 == 1)
    {
      v9 = *a2 + *(**a2 - 24);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        v32 = 0u;
        v33 = 0u;
        *__src = 0u;
        v31 = 0u;
        v24 = *(a1 + 64);
        v12 = localtime(&v24);
        strftime(__src, 0x40uLL, "%Y%m%d.%H%M%S", v12);
        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v23 = *(a1 + 72);
        }

        std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v23, "vp.");
        v13 = (&v29 + 7);
        do
        {
          v14 = v13->__r_.__value_.__s.__data_[1];
          v13 = (v13 + 1);
        }

        while (v14);
        std::string::append[abi:ne200100]<char const*,0>(&v23, __src, v13);
        std::string::append(&v23, ".", 1uLL);
        vp::vx::io::Object::Log_Context::get_description(&__p, v10);
        if (v28 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v28 >= 0)
        {
          v16 = HIBYTE(v28);
        }

        else
        {
          v16 = v28;
        }

        std::string::append(&v23, p_p, v16);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        std::string::append(&v23, ".Parameter.csv", 0xEuLL);
        v17 = (*(*a3 + 16))(a3, 88, 8);
        v18 = *a2;
        *a2 = 0;
        v28 = *(a2 + 1);
        v29 = a2[3];
        v19 = *(a1 + 24);
        v20 = *(a1 + 32);
        v25 = v19;
        v26 = v20;
        __p = v18;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          vp::vx::components::Parameter_Logger::Node_Decorator::Node_Decorator(v17);
        }

        vp::vx::components::Parameter_Logger::Node_Decorator::Node_Decorator(v17);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  v21 = *a2;
  *a2 = 0;
  *a4 = v21;
  *(a4 + 8) = *(a2 + 1);
  *(a4 + 24) = a2[3];
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2726821AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator>>::reset[abi:ne200100](&a9, 0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::components::Parameter_Logger::Node_Decorator::Node_Decorator(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *(a1 + 64) = &unk_2881C6630;
  operator new();
}

void sub_272682A94(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::ostream::~ostream();
    MEMORY[0x2743CBE30](v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer>>::__on_zero_shared(uint64_t a1)
{
  vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(a1 + 24);
  v2 = *(a1 + 768);
  explicit = atomic_load_explicit((a1 + 696), memory_order_acquire);
  v4 = *(a1 + 760);
  v5 = v4 - explicit;
  if (v4 <= explicit)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  if (v6 != v5)
  {
    v7 = v6 + explicit;
    v8 = v7 >= v2;
    v9 = v7 - v2;
    if (!v9)
    {
      v7 = 0;
    }

    if (v9 == 0 || !v8)
    {
      v9 = v7;
    }

    atomic_store(v9, (a1 + 760));
  }

  v10 = *(a1 + 776);
  if (v10)
  {
    free(*(v10 - 8));
  }

  v11 = *(a1 + 688);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = MEMORY[0x277D82810];
  v13 = *MEMORY[0x277D82810];
  *(a1 + 104) = *MEMORY[0x277D82810];
  *(a1 + 104 + *(v13 - 24)) = *(v12 + 24);
  MEMORY[0x2743CBA00](a1 + 112);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](a1 + 520);
  std::mutex::~mutex((a1 + 40));
  v14 = *(a1 + 32);
  if (v14)
  {

    std::__shared_weak_count::__release_weak(v14);
  }
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881BA238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Parameter_Logger::Node_Decorator_Factory::~Node_Decorator_Factory(vp::vx::components::Parameter_Logger::Node_Decorator_Factory *this)
{
  *this = &unk_2881BA018;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA018;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      if (*(a1 + 8))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BA2C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA2C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA2C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::vector<vp::vx::database::v1::syntax::Flag>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Flag>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  v17 = a1;
  if (v9)
  {
    std::allocator<vp::vx::database::v1::syntax::Flag>::allocate_at_least[abi:ne200100](v9);
  }

  v14 = 0;
  v15 = (16 * v5);
  *(&v16 + 1) = 0;
  *v15 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v16 = 16 * v5 + 16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Flag>,vp::vx::database::v1::syntax::Flag*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<vp::vx::database::v1::syntax::Flag>::~__split_buffer(&v14);
  return v13;
}

void vp::vx::database::v1::syntax::Flag::~Flag(vp::vx::database::v1::syntax::Flag *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void *std::vector<vp::vx::database::v1::syntax::Rule>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    v2 = result[1] - *result;
    v3 = result;
    std::allocator<vp::vx::database::v1::syntax::Rule>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void sub_2726832BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vp::vx::database::v1::fbs::Parser::parse_rule(uint64_t a1, uint64_t *a2, int *a3)
{
  *a1 = &unk_2881BA308;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  v6 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v7 = (a3 - *a3);
  v8 = *v7;
  if (v8 <= 4)
  {
    v10 = *a2;
  }

  else
  {
    v9 = v7[2];
    if (v7[2])
    {
      LODWORD(v9) = *(a3 + v9);
    }

    *(a1 + 8) = v9;
    v10 = *a2;
    if (v8 >= 7)
    {
      v11 = v7[3];
      if (v11)
      {
        v12 = a3 + v11 + *(a3 + v11);
      }
    }
  }

  v13 = a2[1];
  (*(*v10 + 16))(&v81);
  v14 = v81;
  v81 = 0;
  v15 = *v6;
  *v6 = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    v16 = v81;
    v81 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = (a3 - *a3);
  if (*v17 >= 9u)
  {
    v18 = v17[4];
    if (v17[4])
    {
      v19 = *(a3 + v18);
      v20 = (a3 + v18 + v19);
      v21 = (v20 - *v20);
      if (*v21 >= 5u)
      {
        v22 = v21[2];
        if (v22)
        {
          v23 = *(v20 + v22);
          (*(*a2[2] + 16))(&v80);
          v24 = v80;
          v80 = 0;
          v25 = *(a1 + 24);
          *(a1 + 24) = v24;
          if (v25)
          {
            (*(*v25 + 8))(v25);
            v26 = v80;
            v80 = 0;
            if (v26)
            {
              (*(*v26 + 8))(v26);
            }
          }
        }
      }

      v27 = (v20 - *v20);
      if (*v27 >= 7u)
      {
        v28 = v27[3];
        if (v27[3])
        {
          v29 = (v20 + v28);
          v30 = *v29;
          v78 = 0uLL;
          v79 = 0;
          std::vector<vp::vx::database::v1::syntax::Rule>::reserve(&v78, *(v29 + v30));
          v31 = *(v29 + v30);
          if (v31)
          {
            v32 = 4 * v31;
            v33 = (a3 + v19 + v18 + v30 + v28 + 4);
            do
            {
              vp::vx::database::v1::fbs::Parser::parse_rule(&v72, a2, v33 + *v33);
              v34 = *(&v78 + 1);
              if (*(&v78 + 1) >= v79)
              {
                v37 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(&v78, &v72);
              }

              else
              {
                *(*(&v78 + 1) + 8) = v73;
                *v34 = &unk_2881BA308;
                v35 = v74;
                v74 = 0u;
                *(v34 + 16) = v35;
                *(v34 + 40) = 0;
                *(v34 + 48) = 0u;
                *(v34 + 64) = 0u;
                v36 = *v75;
                *v75 = 0;
                *(v34 + 32) = v36;
                *(v34 + 48) = *&v75[16];
                memset(&v75[8], 0, 24);
                *(v34 + 80) = 0;
                *(v34 + 64) = v76;
                *(v34 + 80) = v77;
                v76 = 0u;
                v77 = 0;
                v37 = v34 + 88;
              }

              *(&v78 + 1) = v37;
              v72 = &unk_2881BA308;
              v82[0] = &v76;
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v82);
              v82[0] = &v75[8];
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v82);
              v38 = *v75;
              *v75 = 0;
              if (v38)
              {
                (*(*v38 + 8))(v38);
              }

              v39 = *(&v74 + 1);
              *(&v74 + 1) = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }

              v40 = v74;
              *&v74 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }

              ++v33;
              v32 -= 4;
            }

            while (v32);
          }

          v67 = v78;
          v41 = v79;
          v79 = 0;
          v78 = 0uLL;
          std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((a1 + 40));
          *(a1 + 40) = v67;
          *(a1 + 56) = v41;
          memset(v71, 0, sizeof(v71));
          v72 = v71;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v72);
          v72 = &v78;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v72);
        }
      }
    }
  }

  v42 = (a3 - *a3);
  if (*v42 >= 0xBu)
  {
    v43 = v42[5];
    if (v42[5])
    {
      v44 = *(a3 + v43);
      v45 = (a3 + v43 + v44);
      v46 = (v45 - *v45);
      if (*v46 >= 5u)
      {
        v47 = v46[2];
        if (v47)
        {
          v48 = *(v45 + v47);
          (*(*a2[2] + 16))(&v70);
          v49 = v70;
          v70 = 0;
          v50 = *(a1 + 32);
          *(a1 + 32) = v49;
          if (v50)
          {
            (*(*v50 + 8))(v50);
            v51 = v70;
            v70 = 0;
            if (v51)
            {
              (*(*v51 + 8))(v51);
            }
          }
        }
      }

      v52 = (v45 - *v45);
      if (*v52 >= 7u)
      {
        v53 = v52[3];
        if (v52[3])
        {
          v54 = (v45 + v53);
          v55 = *v54;
          v78 = 0uLL;
          v79 = 0;
          std::vector<vp::vx::database::v1::syntax::Rule>::reserve(&v78, *(v54 + v55));
          v56 = *(v54 + v55);
          if (v56)
          {
            v57 = 4 * v56;
            v58 = (a3 + v44 + v43 + v55 + v53 + 4);
            do
            {
              vp::vx::database::v1::fbs::Parser::parse_rule(&v72, a2, v58 + *v58);
              v59 = *(&v78 + 1);
              if (*(&v78 + 1) >= v79)
              {
                v62 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(&v78, &v72);
              }

              else
              {
                *(*(&v78 + 1) + 8) = v73;
                *v59 = &unk_2881BA308;
                v60 = v74;
                v74 = 0u;
                *(v59 + 16) = v60;
                *(v59 + 40) = 0;
                *(v59 + 48) = 0u;
                *(v59 + 64) = 0u;
                v61 = *v75;
                *v75 = 0;
                *(v59 + 32) = v61;
                *(v59 + 48) = *&v75[16];
                memset(&v75[8], 0, 24);
                *(v59 + 80) = 0;
                *(v59 + 64) = v76;
                *(v59 + 80) = v77;
                v76 = 0u;
                v77 = 0;
                v62 = v59 + 88;
              }

              *(&v78 + 1) = v62;
              v72 = &unk_2881BA308;
              v82[0] = &v76;
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v82);
              v82[0] = &v75[8];
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v82);
              v63 = *v75;
              *v75 = 0;
              if (v63)
              {
                (*(*v63 + 8))(v63);
              }

              v64 = *(&v74 + 1);
              *(&v74 + 1) = 0;
              if (v64)
              {
                (*(*v64 + 8))(v64);
              }

              v65 = v74;
              *&v74 = 0;
              if (v65)
              {
                (*(*v65 + 8))(v65);
              }

              ++v58;
              v57 -= 4;
            }

            while (v57);
          }

          v68 = v78;
          v66 = v79;
          v79 = 0;
          v78 = 0uLL;
          std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((a1 + 64));
          *(a1 + 64) = v68;
          *(a1 + 80) = v66;
          memset(v69, 0, sizeof(v69));
          v72 = v69;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v72);
          v72 = &v78;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v72);
        }
      }
    }
  }
}

uint64_t std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::allocator<vp::vx::database::v1::syntax::Rule>::allocate_at_least[abi:ne200100](v5);
  }

  v12 = 0;
  v13 = 88 * v2;
  vp::vx::database::v1::syntax::Rule::Rule(88 * v2, a2);
  v14 = (88 * v2 + 88);
  v6 = a1[1];
  v7 = 88 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Rule>,vp::vx::database::v1::syntax::Rule*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(&v12);
  return v11;
}

void sub_272683BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vp::vx::database::v1::syntax::Rule::~Rule(vp::vx::database::v1::syntax::Rule *this)
{
  *this = &unk_2881BA308;
  v5 = (this + 64);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 40);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_2881BA308;
  v5 = (this + 64);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 40);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA308;
  v5 = (this + 64);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 40);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void std::allocator<vp::vx::database::v1::syntax::Rule>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 vp::vx::database::v1::syntax::Rule::Rule(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = &unk_2881BA308;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0u;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0u;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 64) = 0u;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Rule>,vp::vx::database::v1::syntax::Rule*>(uint64_t result, uint64_t (***a2)(void, __n128), uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      v7 = vp::vx::database::v1::syntax::Rule::Rule(a3, v6);
      v6 += 88;
      a3 += 88;
    }

    while (v6 != a2);
    v8 = v5;
    v9 = v5;
    do
    {
      v10 = *v9;
      v9 += 11;
      result = (*v10)(v5, v7);
      v8 += 11;
      v5 = v9;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<vp::vx::database::v1::syntax::Flag>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Flag>,vp::vx::database::v1::syntax::Flag*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<vp::vx::database::v1::syntax::Flag>>::destroy[abi:ne200100]<vp::vx::database::v1::syntax::Flag,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<vp::vx::database::v1::syntax::Flag>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<vp::vx::database::v1::syntax::Flag>>::destroy[abi:ne200100]<vp::vx::database::v1::syntax::Flag,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<vp::vx::database::v1::syntax::Flag>>::destroy[abi:ne200100]<vp::vx::database::v1::syntax::Flag,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void vp::vx::database::v1::xml::Parser::parse_database_rules(vp::vx::database::v1::xml::Parser *this, const vp::xml::Node *a2, uint64_t *a3)
{
  vp::xml::Node::children(v55, a3);
  v41 = v55;
  v42 = 0;
  v43 = 0uLL;
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v68, &v41, v5);
  v6 = 0;
  while (v68)
  {
    v7 = vp::xml::Node::name(v68, v69);
    if (vp::vx::database::v1::syntax::constexpr_hash(v7, v8, v9) == 0x6712426A28513DA9)
    {
      ++v6;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v68, v10);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (BYTE8(v43) == 1 && v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<vp::vx::database::v1::syntax::Rule>::reserve(this, v6);
  vp::xml::Node::children(v50, a3);
  v52[0] = v50;
  v52[1] = 0;
  v53 = 0;
  v54 = 0;
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v48, v52, v11);
  while (v48)
  {
    v12 = vp::xml::Node::name(v48, v49);
    if (vp::vx::database::v1::syntax::constexpr_hash(v12, v13, v14) != 0x6712426A28513DA9)
    {
      goto LABEL_60;
    }

    v68 = &unk_2881BA308;
    v69 = 0;
    v70 = 0u;
    memset(v71, 0, sizeof(v71));
    v72 = 0u;
    v73 = 0;
    v17 = v48;
    v16 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *(v17 + 56);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *(v48 + 56);
    }

    LOWORD(v69) = v18;
    vp::xml::Node::children(v63, &v48);
    v65[0] = v63;
    v66 = 0;
    v67 = 0;
    v65[1] = 0;
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v61, v65, v19);
    while (v61)
    {
      v20 = vp::xml::Node::name(v61, v62);
      v23 = vp::vx::database::v1::syntax::constexpr_hash(v20, v21, v22);
      if (v23 <= 0x373E6888939862DALL)
      {
        if (v23 == 0xB6C4DFAE12A62C99)
        {
          vp::vx::database::v1::xml::Parser::parse_database_rules(&v57, a2);
          std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate(&v72);
          v72 = v57;
          v73 = v58;
          v74 = &v57;
          v58 = 0;
          v57 = 0uLL;
          goto LABEL_36;
        }

        if (v23 == 0xEAFC51725DBE15E2)
        {
          v74 = &unk_2881BEBD0;
          v25 = *(a2 + 2);
          vp::vx::database::v1::syntax::decisions::Then::Parser::parse_decision();
        }
      }

      else
      {
        switch(v23)
        {
          case 0x373E6888939862DBLL:
            v74 = &unk_2881C6360;
            v26 = *a2;
            v27 = *(a2 + 1);
            vp::vx::database::v1::syntax::conditions::When::Parser::parse_condition();
          case 0x49A657AD5F6DD890:
            v74 = &unk_2881BEBD0;
            v28 = *(a2 + 2);
            vp::vx::database::v1::syntax::decisions::Then::Parser::parse_decision();
          case 0x7246B771ECB80737:
            vp::vx::database::v1::xml::Parser::parse_database_rules(&v59, a2);
            std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate(v71 + 1);
            *(v71 + 8) = v59;
            *(&v71[1] + 1) = v60;
            v60 = 0;
            v59 = 0uLL;
            v74 = &v59;
LABEL_36:
            std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v74);
            break;
        }
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v61, v24);
    }

    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }

    if (v67 == 1 && v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    LOWORD(v42) = v69;
    v41 = &unk_2881BA308;
    v29 = v70;
    v70 = 0u;
    v43 = v29;
    *v44 = v71[0];
    *&v44[16] = v71[1];
    v45 = v72;
    v46 = v73;
    v73 = 0;
    v72 = 0u;
    v47 = 1;
    memset(v71, 0, sizeof(v71));
    v68 = &unk_2881BA308;
    v65[0] = &v72;
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v65);
    v65[0] = v71 + 1;
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v65);
    v30 = *&v71[0];
    *&v71[0] = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = *(&v70 + 1);
    *(&v70 + 1) = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v70;
    *&v70 = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    if (v47 == 1)
    {
      v33 = *(this + 1);
      if (v33 >= *(this + 2))
      {
        v36 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(this, &v41);
      }

      else
      {
        *(v33 + 8) = v42;
        *v33 = &unk_2881BA308;
        v34 = v43;
        v43 = 0u;
        *(v33 + 16) = v34;
        *(v33 + 40) = 0;
        *(v33 + 48) = 0u;
        *(v33 + 64) = 0u;
        v35 = *v44;
        *v44 = 0;
        *(v33 + 32) = v35;
        *(v33 + 48) = *&v44[16];
        memset(&v44[8], 0, 24);
        *(v33 + 80) = 0;
        v15 = v45;
        *(v33 + 64) = v45;
        *(v33 + 80) = v46;
        v45 = 0u;
        v46 = 0;
        v36 = v33 + 88;
      }

      *(this + 1) = v36;
      if (v47)
      {
        v41 = &unk_2881BA308;
        v68 = &v45;
        std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v68);
        v68 = &v44[8];
        std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v68);
        v37 = *v44;
        *v44 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }

        v38 = *(&v43 + 1);
        *(&v43 + 1) = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }

        v39 = v43;
        *&v43 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }
    }

LABEL_60:
    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v48, v15);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v54 == 1 && v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }
}

void sub_272684914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void **a14)
{
  a14 = a12;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::optional<vp::vx::database::v1::syntax::Rule>::~optional(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    *a1 = &unk_2881BA308;
    v6 = (a1 + 64);
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (a1 + 40);
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v6);
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return a1;
}

uint64_t std::optional<vp::vx::database::v1::syntax::Flag>::~optional(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }
  }

  return a1;
}

void vp::vx::components::Phone_Proximity_Detector::get_dsp_property_override(int *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a3 + 24) = 0;
  if (a2 == 1700885107)
  {
    v15 = 0;
    v16 = 0;
    default_resource = std::pmr::get_default_resource(a1);
    vp::vx::data_flow::State<void>::get_value(a1 + 30, &default_resource);
    v5 = vp::vx::data_flow::Value::view_storage(&default_resource);
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    vp::vx::data_flow::Value::~Value(&default_resource);
    if (v8)
    {
      v9 = (std::chrono::system_clock::now().__d_.__rep_ - v7 < 3000001) | v6 & 1;
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int>(&v17, "UInt32", &v13);
    default_resource = &v17;
    v15 = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&default_resource);
    if (*(a3 + 24) == 1)
    {
      v11 = *a3;
      *a3 = CFDictionaryRef;
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a3);
      *(a3 + 24) = 1;
      *a3 = CFDictionaryRef;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_272684C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881BA720[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN10applesauce2CF13DictionaryRefEN2vp2vx9data_flow5StateISB_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJS8_SB_SG_EEEEEEDcSK_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

void vp::vx::components::Phone_Proximity_Detector::configure(vp::vx::components::Phone_Proximity_Detector *this)
{
  v25 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Phone_Proximity_Detector]", 44);
    v4 = v20;
    v5 = v20;
    v6 = __p[1];
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
      v22 = v9;
      v23 = 2080;
      v24 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v20;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 2);
  if (v11 && (v12 = std::__shared_weak_count::lock(v11)) != 0 && (v13 = *(this + 1), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), v13))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v14 = *(this + 4);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = *(this + 3);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          v17 = (*(**(this + 5) + 16))(*(this + 5));
          vp::vx::Voice_Processor_State_Manager::create_state_for_darwin_notification(&v18, v13, v17);
        }
      }
    }
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_272685334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_10components24Phone_Proximity_Detector5StateEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateINS8_13State_TrackerEJbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = *vp::vx::data_flow::Value::view_storage(**a2);
  if ((v5 & 1) != 0 || *(a1 + 24) == 1)
  {
    v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v7 = *(a1 + 24);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    if ((v7 & 1) == 0)
    {
      *(a1 + 24) = 1;
    }
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  result = v11;
  *storage = v11;
  *(storage + 16) = v12;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_10components24Phone_Proximity_Detector5StateEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateINS8_13State_TrackerEJbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881BA680;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__2JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  if (*vp::vx::data_flow::Value::view_storage(**a2))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__2JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BA638;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__1JbNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*vp::vx::data_flow::Value::view_storage(v3[1]) == 5) & *v6;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__1JbNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BA5F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__0JNS4_12Time_StampedIyEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = vp::vx::data_flow::Value::view_storage(**a2);
  v6 = *v5;
  v7 = *(a1 + 8);
  log = vp::get_log(v5);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v7, "vp::vx::components::Phone_Proximity_Detector]", 44);
    v10 = v22;
    v11 = v22;
    v12 = __p[1];
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = __p[0];
      if (v11 >= 0)
      {
        v15 = __p;
      }

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      *buf = 136315650;
      v24 = v15;
      v25 = 2080;
      v26 = v16;
      if (v6)
      {
        v17 = "close";
      }

      else
      {
        v17 = "not close";
      }

      v27 = 2080;
      v28 = v17;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sphone is %s to ear", buf, 0x20u);
      LOBYTE(v11) = v22;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v18);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v6 != 0;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__0JNS4_12Time_StampedIyEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BA478;
  a2[1] = v2;
  return result;
}

void vp::vx::components::Phone_Proximity_Detector::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Phone_Proximity_Detector::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Phone_Proximity_Detector::~Phone_Proximity_Detector(vp::vx::components::Phone_Proximity_Detector *this)
{
  vp::vx::components::Phone_Proximity_Detector::~Phone_Proximity_Detector(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Phone_Proximity_Detector]", 44);
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

  vp::vx::data_flow::State<void>::~State(this + 30);
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 8);
  *(this + 12) = &unk_2881C6630;
  v11 = *(this + 14);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 6);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 4);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void *vp::objc::ID::ID(void *a1, id *a2)
{
  *a1 = *a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  *a2 = 0;

  objc_autoreleasePoolPop(v4);
  return a1;
}

id *vp::objc::ID::operator=(id *a1, id *a2)
{
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong(a1, *a2);
  objc_autoreleasePoolPop(v4);
  return a1;
}

{
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong(a1, *a2);
  v5 = *a2;
  *a2 = 0;

  objc_autoreleasePoolPop(v4);
  return a1;
}

void vp::objc::ID::~ID(id *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *this;
  *this = 0;

  objc_autoreleasePoolPop(v2);
}

void **vp::objc::ID::operator=(void **a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *a1;
  *a1 = 0;

  objc_autoreleasePoolPop(v2);
  return a1;
}

uint64_t vp::vx::io::Input_Port::get_terminal(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0;
  }

  return result;
}

void vp::vx::io::Input_Port::process(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    LOBYTE(v10[0]) = 0;
    v14 = 1;
LABEL_3:
    vp::vx::io::validate_nonnull(v10, *a4, a4[1], *(a4 + 4));
    if (v14)
    {
      (*(*a1 + 112))(a1, a3, *a4, a4[1], *(a4 + 4));
    }

    else
    {
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
      if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    return;
  }

  v15[0] = 0x18001400000004;
  v15[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v17 = 0;
  v18 = 0;
  v16 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v19);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v10, v15);
  if (SHIBYTE(v18) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v19, v16, v18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v14)
  {
    goto LABEL_3;
  }

  v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
  if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
  {
    (*(*v13 + 24))(v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL, 1, v9);
  }
}

void vp::vx::io::Input_Port::get_time(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    LOBYTE(v8[0]) = 0;
    v12 = 1;
LABEL_3:
    (*(*a1 + 56))(a1, a3);
    *(a4 + 64) = 1;
    return;
  }

  v13[0] = 0x18001400000004;
  v13[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v15 = 0;
  v16 = 0;
  v14 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v17);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v8, v13);
  if (SHIBYTE(v16) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17, v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v12)
  {
    goto LABEL_3;
  }

  v7 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEI14AudioTimeStampEEv(a4, v8);
  if ((v12 & 1) == 0 && SHIBYTE(v10) < 0)
  {
    (*(*v11 + 24))(v11, v9, v10 & 0x7FFFFFFFFFFFFFFFLL, 1, v7);
  }
}

__n128 _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEI14AudioTimeStampEEv(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 5);
  result = *(a2 + 6);
  v6 = *(a2 + 2);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 2) = 0;
  *a1 = v2;
  *(a1 + 4) = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = result;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  return result;
}

void vp::vx::io::Input_Port::get_format(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    LOBYTE(v6[0]) = 0;
    v10 = 1;
LABEL_3:
    (*(*a1 + 48))(a1);
    *(a3 + 48) = 1;
    return;
  }

  v11[0] = 0x18001400000004;
  v11[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v13 = 0;
  v14 = 0;
  v12 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v15);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v6, v11);
  if (SHIBYTE(v14) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v10)
  {
    goto LABEL_3;
  }

  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v6);
  if ((v10 & 1) == 0 && SHIBYTE(v8) < 0)
  {
    (*(*v9 + 24))(v9, v7, v8 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

uint64_t vp::vx::io::Output_Port::get_terminal(uint64_t a1, int a2)
{
  if (a2 != 1)
  {
    return 0;
  }

  return result;
}

void vp::vx::io::Output_Port::process(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v10[0]) = 0;
    v14 = 1;
LABEL_3:
    vp::vx::io::validate_nonnull(v10, *a4, a4[1], *(a4 + 4));
    if (v14)
    {
      (*(*a1 + 112))(a1, a3, *a4, a4[1], *(a4 + 4));
    }

    else
    {
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
      if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    return;
  }

  v15[0] = 0x18001400000004;
  v15[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v17 = 0;
  v18 = 0;
  v16 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v19);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v10, v15);
  if (SHIBYTE(v18) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v19, v16, v18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v14)
  {
    goto LABEL_3;
  }

  v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
  if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
  {
    (*(*v13 + 24))(v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL, 1, v9);
  }
}

void vp::vx::io::Output_Port::get_time(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v8[0]) = 0;
    v12 = 1;
LABEL_3:
    (*(*a1 + 56))(a1, a3);
    *(a4 + 64) = 1;
    return;
  }

  v13[0] = 0x18001400000004;
  v13[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v15 = 0;
  v16 = 0;
  v14 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v17);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v8, v13);
  if (SHIBYTE(v16) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17, v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v12)
  {
    goto LABEL_3;
  }

  v7 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEI14AudioTimeStampEEv(a4, v8);
  if ((v12 & 1) == 0 && SHIBYTE(v10) < 0)
  {
    (*(*v11 + 24))(v11, v9, v10 & 0x7FFFFFFFFFFFFFFFLL, 1, v7);
  }
}

void vp::vx::io::Output_Port::get_format(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v6[0]) = 0;
    v10 = 1;
LABEL_3:
    (*(*a1 + 48))(a1);
    *(a3 + 48) = 1;
    return;
  }

  v11[0] = 0x18001400000004;
  v11[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v13 = 0;
  v14 = 0;
  v12 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v15);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v6, v11);
  if (SHIBYTE(v14) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v10)
  {
    goto LABEL_3;
  }

  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v6);
  if ((v10 & 1) == 0 && SHIBYTE(v8) < 0)
  {
    (*(*v9 + 24))(v9, v7, v8 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

uint64_t vp::vx::components::Power_Log::as_io_node_delegate_factory(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

void vp::vx::components::Power_Log::configure(vp::vx::components::Power_Log *this)
{
  v24 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Power_Log]", 29);
    v4 = BYTE7(v19);
    v5 = SBYTE7(v19);
    v6 = v18;
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
      v21 = p_p;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = BYTE7(v19);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 2) && *(this + 4))
  {
    v11 = *(this + 1);
    __p = 0;
    v18 = v11;
    v19 = xmmword_272756720;
    v12 = (*(*v11 + 16))(v11, 72, 8);
    v13 = *(this + 1);
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(this + 2);
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(this + 10);
    *(v12 + 48) = &unk_2881C6630;
    operator new();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_27268684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate_Factory>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<vp::vx::io::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::io::Node_Delegate_Factory>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 8))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate_Factory>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = v2[4];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v2[6] = &unk_2881C6630;
    v6 = v2[8];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::components::Power_Log::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Power_Log::~Power_Log(std::__shared_weak_count **this)
{
  vp::vx::components::Power_Log::~Power_Log(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Power_Log]", 29);
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

  std::unique_ptr<vp::vx::io::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::io::Node_Delegate_Factory>>::reset[abi:ne200100](this + 6, 0);
  v11 = this[5];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[3];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(vp::vx::components::Power_Log::Node_Delegate *this)
{
  vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate((this + *(*this - 24)));
}

void vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(caulk::concurrent::messenger **this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = caulk::concurrent::messenger::drain(this[1]);
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, (this + 9), "vp::vx::components::Power_Log::Node_Delegate]", 44);
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

  v12 = this[4];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[2];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  this[9] = &unk_2881C6630;
  v14 = this[11];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_272686D28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::components::Power_Log::Node_Delegate::process(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (*(a1 + 64))
    {
      v5 = mach_absolute_time();
      v6 = *(a1 + 64);
      v7 = (v5 - v6) * 0.0000000416666667;
      v8 = *(a1 + 40);
      if (v7 >= v8)
      {
        __y = 0.0;
        modf(v7 / v8, &__y);
        *(a1 + 64) = v6 + (v8 * __y * 24000000.0);
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      *(a1 + 64) = mach_absolute_time();
    }

    if (*(a1 + 48))
    {
      v10 = (*(*a3 + 8))(a3);
      if (v10)
      {
        (*(*v10 + 24))(&__y);
        v11 = v22;
        if (v22)
        {
          caulk::expected<float,vp::vx::io::Error>::value(&__y);
          *(a1 + 52) = *&__y + *(a1 + 52);
          *(a1 + 48) += 2;
          v11 = v22;
          if (v22)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v23 = 0x1001880000000DLL;
        *&v24 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
        v25 = 0uLL;
        *(&v24 + 1) = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
        v11 = 0;
        __y = *&v23;
        v19 = v24;
        v20 = v25;
        v21 = v26;
        v22 = 0;
      }

      v12 = *(&v19 + 1);
      v13 = *(&v20 + 1);
      v20 = 0uLL;
      *(&v19 + 1) = 0;
      if (v13 < 0)
      {
        (*(*v21 + 24))(v21, v12, v13 & 0x7FFFFFFFFFFFFFFFLL, 1);
        v11 = v22;
      }

      if ((v11 & 1) == 0 && SHIBYTE(v20) < 0)
      {
        (*(*v21 + 24))(v21, *(&v19 + 1), *(&v20 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
      }
    }

LABEL_18:
    if (*(a1 + 56))
    {
      v14 = (*(*a3 + 8))(a3);
      if (v14)
      {
        (*(*v14 + 24))(&__y);
        v15 = v22;
        if (v22)
        {
          caulk::expected<float,vp::vx::io::Error>::value(&__y);
          *(a1 + 60) = *&__y + *(a1 + 60);
          *(a1 + 56) += 2;
          v15 = v22;
          if (v22)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v23 = 0x1001880000000DLL;
        *&v24 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
        v25 = 0uLL;
        *(&v24 + 1) = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
        v15 = 0;
        __y = *&v23;
        v19 = v24;
        v20 = v25;
        v21 = v26;
        v22 = 0;
      }

      v16 = *(&v19 + 1);
      v17 = *(&v20 + 1);
      v20 = 0uLL;
      *(&v19 + 1) = 0;
      if (v17 < 0)
      {
        (*(*v21 + 24))(v21, v16, v17 & 0x7FFFFFFFFFFFFFFFLL, 1);
        v15 = v22;
      }

      if ((v15 & 1) == 0 && SHIBYTE(v20) < 0)
      {
        (*(*v21 + 24))(v21, *(&v19 + 1), *(&v20 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
      }
    }

LABEL_29:
    if (v9)
    {
      vp::vx::components::Power_Log::Node_Delegate::log_power_data(a1);
    }
  }
}

caulk::rt_safe_memory_resource *vp::vx::components::Power_Log::Node_Delegate::log_power_data(vp::vx::components::Power_Log::Node_Delegate *this)
{
  v2 = 0;
  v3 = *(this + 12);
  v4 = 0;
  if (v3 >= 2 && (v3 & 1) != 0)
  {
    *&v5 = *(this + 13) / (v3 >> 1);
    *(this + 12) &= 1u;
    *(this + 13) = 0;
    v4 = v5;
    v2 = 0x100000000;
  }

  v6 = 0;
  v7 = *(this + 14);
  v8 = 0;
  if (v7 >= 2 && (v7 & 1) != 0)
  {
    *&v9 = *(this + 15) / (v7 >> 1);
    *(this + 14) &= 1u;
    *(this + 15) = 0;
    v8 = v9;
    v6 = 0x100000000;
  }

  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    v11 = *(this + 1);
    v12 = v8 | v6;
    v13 = v4 | v2;
    v14 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v14 + 16) = 0;
    *v14 = &unk_2881BA988;
    *(v14 + 8) = 0;
    *(v14 + 20) = v13;
    *(v14 + 28) = v12;
    v16 = *(this + 3);
    v15 = *(this + 4);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    *(v14 + 40) = v16;
    *(v14 + 48) = v15;
    *v14 = &unk_2881BA960;

    return caulk::concurrent::messenger::enqueue(v11, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<vp::vx::components::Power_Log::Node_Delegate::log_power_data(void)::$_0::operator() const(void)::{lambda(std::shared_ptr<vp::services::Power_Log> const&)#1},std::shared_ptr<vp::services::Power_Log>&>::perform(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 20), *(a1 + 28));
  *a1 = &unk_2881BA988;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<vp::vx::components::Power_Log::Node_Delegate::log_power_data(void)::$_0::operator() const(void)::{lambda(std::shared_ptr<vp::services::Power_Log> const&)#1},std::shared_ptr<vp::services::Power_Log>&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<vp::vx::components::Power_Log::Node_Delegate::log_power_data(void)::$_0::operator() const(void)::{lambda(std::shared_ptr<vp::services::Power_Log> const&)#1},std::shared_ptr<vp::services::Power_Log>&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t vp::vx::components::Power_Log::Node_Delegate::notify(uint64_t this, int a2, uint64_t a3)
{
  v3 = this;
  if (a2 == 1)
  {
    vp::vx::components::Power_Log::Node_Delegate::log_power_data(this);

    return vp::vx::components::Power_Log::Node_Delegate::log_power_data(v3);
  }

  else if (!a2)
  {
    v5 = (*(*a3 + 8))(a3);
    if (v5)
    {
      LODWORD(v5) = (*(*v5 + 8))(v5, 1936552816, 1);
    }

    *(v3 + 12) = *(v3 + 12) & 0xFFFFFFFE | v5;
    this = (*(*a3 + 8))(a3);
    if (this)
    {
      this = (*(*this + 8))(this, 1936548976, 1);
    }

    *(v3 + 14) = *(v3 + 14) & 0xFFFFFFFE | this;
  }

  return this;
}

void vp::vx::components::Power_Log::Node_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t vp::vx::components::Power_Log::Node_Delegate::get_parameter_ids@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = 0x736D6470736D7370;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, &v5, 2uLL);
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

void sub_2726876DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::components::Power_Log::Node_Delegate_Factory::~Node_Delegate_Factory(vp::vx::components::Power_Log::Node_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v1[6] = &unk_2881C6630;
  v4 = v1[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v1[6] = &unk_2881C6630;
  v4 = v1[8];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Power_Log::Node_Delegate_Factory::~Node_Delegate_Factory(vp::vx::components::Power_Log::Node_Delegate_Factory *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 6) = &unk_2881C6630;
  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 6) = &unk_2881C6630;
  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::components::Power_Log::Node_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = (*(*a2 + 8))(a2);
  if (v6 && ((*(*v6 + 8))(v6, 1936552816, 1) & 1) != 0 || (result = (*(*a2 + 8))(a2)) != 0 && (result = (*(*result + 8))(result, 1936548976, 1), result))
  {
    v8 = (*(*a3 + 16))(a3, 96, 8);
    v9 = *(a1 + 8);
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 24);
    if (*(&v10 + 1))
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 40);
    *(v8 + 72) = &unk_2881C6630;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}