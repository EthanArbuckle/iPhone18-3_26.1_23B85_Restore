void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * (v10 + v12 - 2);
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
  }

  while (v9 > v12++);
LABEL_11:

  operator delete(begin);
}

void sub_1B3247F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C4A0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1B8C62190);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C4A0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C470;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C62190);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C470;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void **md::LabelFeature::debugName(md::LabelFeature *this, void *a2)
{
  v37[19] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 480))(a2, 0);
  if (result)
  {
    *(this + 24) = *(result + 24);
    if (*(result + 23) < 0)
    {
      v13 = *result;
      v14 = result[1];

      return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(this, v13, v14);
    }

    else
    {
      *this = *result;
      *(this + 2) = result[2];
    }

    return result;
  }

  v5 = (*(*a2 + 504))(a2);
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 23) >= 0)
    {
      v7 = *(v5 + 23);
    }

    else
    {
      v7 = *(v5 + 8);
    }

    v8 = v7 + 7;
    v34 = *(v5 + 24);
    if (v7 + 7 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v8 < 0x17)
      {
        *(&v32 + 1) = 0;
        v33.__locale_ = 0;
        HIBYTE(v33.__locale_) = v7 + 7;
        v12 = &v32 + 7;
        strcpy(&v32, "shield(");
        if (!v7)
        {
LABEL_24:
          v12[v7] = 0;
          result = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(&v32, ")", 1uLL);
          *this = v32;
          *(this + 2) = v33;
          *(this + 24) = v34;
          return result;
        }
      }

      else
      {
        if ((v8 | 7) == 0x17)
        {
          v9 = 25;
        }

        else
        {
          v9 = (v8 | 7) + 1;
        }

        v10 = mdm::zone_mallocator::instance(v5);
        v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v10, v9);
        *(&v32 + 1) = v7 + 7;
        v33.__locale_ = (v9 | 0x8000000000000000);
        *&v32 = v11;
        *(v11 + 3) = 677669989;
        v12 = v11 + 7;
        *v11 = 1701406835;
      }

      if (v6[23] >= 0)
      {
        v17 = v6;
      }

      else
      {
        v17 = *v6;
      }

      memmove(v12, v17, v7);
      goto LABEL_24;
    }

LABEL_53:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v32);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, "type=", 5);
  v15 = (*(*a2 + 264))(a2);
  if (v15 > 0x1B)
  {
    v16 = "";
  }

  else
  {
    v16 = off_1E7B35C80[v15];
  }

  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&__p, v16);
  if ((__len & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((__len & 0x80u) == 0)
  {
    v19 = __len;
  }

  else
  {
    v19 = v30;
  }

  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, p_p, v19);
  if (__len < 0)
  {
    v21 = __p;
    v22 = mdm::zone_mallocator::instance(v20);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v22, v21);
  }

  if (a2[9])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, " key=", 5);
    MEMORY[0x1B8C61CF0](&v32, a2[9]);
  }

  v23 = std::ostringstream::str[abi:nn200100](&__p, &v32);
  if ((__len & 0x8000000000000000) != 0)
  {
    v25 = v30;
    if (v30 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_53;
    }

    v24 = __p;
  }

  else
  {
    v24 = &__p;
    v25 = __len;
  }

  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v25 | 7) + 1;
    }

    v27 = mdm::zone_mallocator::instance(v23);
    v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v27, v26);
    *(this + 1) = v25;
    *(this + 2) = v26 | 0x8000000000000000;
    *this = v28;
    this = v28;
  }

  else
  {
    *(this + 23) = v25;
    if (!v25)
    {
      goto LABEL_48;
    }
  }

  memmove(this, v24, v25);
LABEL_48:
  *(this + v25) = 0;
  if (__len < 0)
  {
    operator delete(__p);
  }

  *&v32 = *MEMORY[0x1E69E54E8];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v32 + 1) = MEMORY[0x1E69E5548] + 16;
  if (v36 < 0)
  {
    operator delete(v35);
  }

  *(&v32 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v33);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](v37);
}

void sub_1B3248840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (v33 < 0)
  {
    operator delete(__p);
  }

  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(a25);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

void md::PolygonOverlayRenderable::Style::setFillColor(uint64_t a1, float *a2)
{
  os_unfair_lock_lock((a1 + 24));
  for (i = 0; i != 4; ++i)
  {
    *(a1 + i * 4) = a2[i];
  }

  *(a1 + 48) = *a2 == a2[1] && *a2 == a2[2];

  os_unfair_lock_unlock((a1 + 24));
}

void md::PolygonOverlayRenderable::Style::setAlpha(os_unfair_lock_s *this, float a2)
{
  os_unfair_lock_lock(this + 6);
  *&this[4]._os_unfair_lock_opaque = a2;
  v4 = *&this[8]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v4 + 196));
  *(v4 + 160) = a2;
  os_unfair_lock_unlock((v4 + 196));

  os_unfair_lock_unlock(this + 6);
}

void md::PolygonOverlayRenderable::updateWithContext(md::LayoutContext const&,BOOL,BOOL,ggl::ConstantDataTyped<ggl::OverlayOcclusion::AlphaTint> *,float)::$_0::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1[4];
  v7 = 56;
  if (**a1)
  {
    v7 = 48;
  }

  v8 = *(**(v6 + 96) + v7);
  v9 = v8[1];
  if (v9 == *v8)
  {
    v11 = v8[11];
    if (!v11)
    {
      goto LABEL_39;
    }

    a1 = (*(*v11 + 48))(v11);
    v10 = a1;
  }

  else
  {
    v10 = *(v9 - 8);
    v8[1] = v9 - 8;
  }

  v13 = v8[5];
  v12 = v8[6];
  if (v13 >= v12)
  {
    v15 = v8[4];
    v16 = (v13 - v15) >> 3;
    if ((v16 + 1) >> 61)
    {
      goto LABEL_40;
    }

    v17 = v12 - v15;
    v18 = v17 >> 2;
    if (v17 >> 2 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v57 = v8 + 7;
    if (v19)
    {
      v20 = ggl::zone_mallocator::instance(a1);
      v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::FillPipelineSetup *>(v20, v19);
    }

    else
    {
      v21 = 0;
    }

    v23 = &v21[8 * v19];
    v22 = &v21[8 * v16];
    *v22 = v10;
    v14 = v22 + 8;
    v24 = v8[4];
    v25 = v8[5] - v24;
    v26 = &v22[-v25];
    memcpy(&v22[-v25], v24, v25);
    v27 = v8[4];
    v8[4] = v26;
    v8[5] = v14;
    v28 = v8[6];
    v8[6] = v23;
    v55 = v27;
    v56 = v28;
    v53 = v27;
    v54 = v27;
    std::__split_buffer<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v53);
  }

  else
  {
    *v13 = v10;
    v14 = v13 + 1;
  }

  v8[5] = v14;
  v53 = v10;
  v29 = v8[15];
  if (!v29)
  {
LABEL_39:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_40:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v29 + 48))(v29, &v53);
  v30 = v10[17];
  v30[1] = 0;
  v31 = *(v6 + 112);
  *v30 = v31;
  v32 = v10[29];
  v33 = *(v6 + 120);
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  v34 = v32[1];
  *v32 = v31;
  v32[1] = v33;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v35 = v10[17];
  *(v35 + 24) = 0;
  v36 = *(v6 + 128);
  *(v35 + 16) = v36;
  v37 = v10[29];
  v38 = *(v6 + 136);
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  v39 = *(v37 + 24);
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = 16;
  if (**v5)
  {
    v40 = 0;
  }

  v41 = (**(v6 + 96) + v40);
  v53 = *v41;
  v42 = v41[1];
  v54 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(v10, &v53);
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  else
  {
    ggl::PipelineSetup::setState(v10, &v53);
  }

  v43 = v5[3];
  if (v43)
  {
    v44 = v10[17];
    *(v44 + 48) = v43;
    *(v44 + 56) = 0;
    v45 = v10[29];
    v46 = *(v45 + 56);
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }
  }

  v47 = *(v10[17] + 32);
  ggl::BufferMemory::BufferMemory(v51);
  ggl::ResourceAccessor::accessConstantData(&v53, 0, v47, 1);
  ggl::BufferMemory::operator=(v51, &v53);
  ggl::BufferMemory::~BufferMemory(&v53);
  v48 = 0;
  v49 = v52;
  *v52 = 1065353216;
  *(v49 + 3) = 0;
  *(v49 + 1) = 0;
  v49[5] = 1065353216;
  *(v49 + 3) = 0;
  *(v49 + 4) = 0;
  v49[10] = 1065353216;
  *(v49 + 13) = 0;
  *(v49 + 11) = 0;
  v49[15] = 1065353216;
  v50 = v5[1];
  do
  {
    v49[v48 + 16] = *(v50 + v48 * 4);
    ++v48;
  }

  while (v48 != 4);
  *(v49 + 5) = xmmword_1B33B0720;
  v49[24] = *v5[2];
  ggl::BufferMemory::~BufferMemory(v51);
  *(a3 + 24) = a2;
  *(a3 + 40) = *(v6 + 88);
  *(a3 + 32) = v10;
  *(a3 + 64) = *(v6 + 32);
}

uint64_t std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::operator()(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_10,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_10>,void ()(ggl::RenderItem *)>::operator()(v4);
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_10,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_10>,void ()(ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46F50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_9,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_9>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46F08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_8,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_8>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46EC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_7,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_7>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46E78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_6,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_6>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46E30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_5,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_5>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46DE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_4,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_4>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46DA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_3,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_3>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46D58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_2,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_2>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46D10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_1,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_1>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46CC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_0,std::allocator<md::PolygonOverlayRenderable::collectRenderItems(BOOL,std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>)::$_0>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46C80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::ARWalkingLabelLayoutDedupingGroup::onLabelRemoved(md::ARWalkingLabelLayoutDedupingGroup *this, md::LabelBase *a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(this + 21, a2);
  if (!v4)
  {
    return;
  }

  v5 = *(this + 136);
  if (!*&v5)
  {
    return;
  }

  v6 = v4[3];
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4[3];
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v6;
  }

  v9 = *(*(this + 16) + 8 * v8);
  if (!v9)
  {
    return;
  }

  v10 = *v9;
  if (!*v9)
  {
    return;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      return;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      return;
    }
  }

  if (v10[2] != v6)
  {
    goto LABEL_17;
  }

  v13 = v10[3];
  v12 = v10[4];
  if (v13 != v12)
  {
    while (*v13 != a2)
    {
      if (++v13 == v12)
      {
        goto LABEL_31;
      }
    }

    if (v13 != v12)
    {
      v14 = v13 + 1;
      if (v13 + 1 != v12)
      {
        do
        {
          if (*v14 != a2)
          {
            *v13++ = *v14;
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = v10[4];
      }
    }
  }

  if (v13 != v12)
  {
    v10[4] = v13;
  }

LABEL_31:
  std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__erase_unique<md::LabelBase *>(this + 26, a2);
  v15 = v10[3];
  if (v15 != v10[4])
  {
    v16 = *v15;

    std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__emplace_unique_key_args<md::LabelBase *,md::LabelBase *&>(this + 26, v16);
  }
}

void std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__erase_unique<md::LabelBase *>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    v6 = vcnt_s8(v2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
      if (v5 >= *&v2)
      {
        v7 = v5 % *&v2;
      }
    }

    else
    {
      v7 = v5 & (*&v2 - 1);
    }

    v8 = *a1;
    v9 = *(*a1 + 8 * v7);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        v11 = *&v2 - 1;
        do
        {
          v12 = v10[1];
          if (v12 == v5)
          {
            if (v10[2] == a2)
            {
              v13 = v10[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
                }
              }

              else
              {
                v13 &= v11;
              }

              v14 = *(v8 + 8 * v13);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v10);
              if (v15 == a1 + 2)
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v16 >= *&v2)
                {
                  v16 %= *&v2;
                }
              }

              else
              {
                v16 &= v11;
              }

              if (v16 != v13)
              {
LABEL_36:
                if (!*v10)
                {
                  goto LABEL_37;
                }

                v17 = *(*v10 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v17 >= *&v2)
                  {
                    v17 %= *&v2;
                  }
                }

                else
                {
                  v17 &= v11;
                }

                if (v17 != v13)
                {
LABEL_37:
                  *(v8 + 8 * v13) = 0;
                }
              }

              v18 = *v10;
              if (*v10)
              {
                v19 = *(v18 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v19 >= *&v2)
                  {
                    v19 %= *&v2;
                  }
                }

                else
                {
                  v19 &= v11;
                }

                if (v19 != v13)
                {
                  *(*a1 + 8 * v19) = v15;
                  v18 = *v10;
                }
              }

              *v15 = v18;
              *v10 = 0;
              --a1[3];
              operator delete(v10);
              return;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v12 >= *&v2)
              {
                v12 %= *&v2;
              }
            }

            else
            {
              v12 &= v11;
            }

            if (v12 != v7)
            {
              return;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }
}

void *std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__emplace_unique_key_args<md::LabelBase *,md::LabelBase *&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void md::ARWalkingLabelLayoutDedupingGroup::onLabelAdded(int8x8_t *this, unint64_t a2)
{
  v4 = (*(*this + 56))(this);
  if (v4 && (v5 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(&this[21], v4)) != 0)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = *&this[10] + 1;
    this[10] = v6;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = this[22];
  if (!*&v10)
  {
    goto LABEL_22;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*&this[21] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_22;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  if (v14[2] != a2)
  {
    goto LABEL_21;
  }

  v14[3] = v6;
  v16 = this[17];
  if (!*&v16)
  {
    goto LABEL_40;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = v6;
    if (v6 >= *&v16)
    {
      v18 = v6 % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & v6;
  }

  v19 = *(*&this[16] + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v21 = v20[1];
    if (v21 != v6)
    {
      if (v17.u32[0] > 1uLL)
      {
        if (v21 >= *&v16)
        {
          v21 %= *&v16;
        }
      }

      else
      {
        v21 &= *&v16 - 1;
      }

      if (v21 != v18)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v20[2] != v6)
    {
LABEL_39:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v23 = v20[4];
  v22 = v20[5];
  if (v23 >= v22)
  {
    v25 = v20[3];
    v26 = (v23 - v25) >> 3;
    if ((v26 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v27 = v22 - v25;
    v28 = v27 >> 2;
    if (v27 >> 2 <= (v26 + 1))
    {
      v28 = v26 + 1;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v29 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      if (!(v29 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v30 = (8 * v26);
    *v30 = a2;
    v24 = 8 * v26 + 8;
    v31 = v20[3];
    v32 = v20[4] - v31;
    v33 = v30 - v32;
    memcpy(v30 - v32, v31, v32);
    v34 = v20[3];
    v20[3] = v33;
    v20[4] = v24;
    v20[5] = 0;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *v23 = a2;
    v24 = (v23 + 1);
  }

  v20[4] = v24;
}

void sub_1B324A4F4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void md::ARWalkingLabelLayoutDedupingGroup::~ARWalkingLabelLayoutDedupingGroup(md::ARWalkingLabelLayoutDedupingGroup *this)
{
  *this = &unk_1F2A54330;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A54330;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

void *md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(void *this, const LabelLayoutContext *a2)
{
  v2 = this[18];
  if (v2)
  {
    v4 = this;
    do
    {
      v5 = v2[3];
      if (v5 != v2[4])
      {
        std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__erase_unique<md::LabelBase *>((v4 + 208), *v5);
        v6 = v2[3];
        v7 = v2[4];
        if (v6 == v7)
        {
          if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v4 + 88), v2[2]))
          {
LABEL_25:
            v14 = v2[3];
            v15 = 126 - 2 * __clz((v6 - v14) >> 3);
            if (v6 == v14)
            {
              v16 = 0;
            }

            else
            {
              v16 = v15;
            }

            std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **,false>(v14, v6, v16, 1);
            v6 = v2[3];
          }
        }

        else
        {
          v8 = v2[3];
          while (1)
          {
            v9 = vsubq_f64(*(a2 + 136), *(*v8 + 616));
            if (vaddvq_f64(vmulq_f64(v9, v9)) / (*(*v8 + 224) * *(*v8 + 224)) < 16.0)
            {
              break;
            }

            if (++v8 == v7)
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v4 + 88), v2[2]))
              {
                break;
              }

              while (v6 != v7)
              {
                while (1)
                {
                  v12 = *v6;
                  if (*(*v6 + 1378) != 1)
                  {
                    break;
                  }

                  v13 = *(v12 + 788);
                  if (*(v12 + 816) > v13 || *(v12 + 824) < v13)
                  {
                    break;
                  }

                  if (++v6 == v7)
                  {
                    v6 = v7;
                    goto LABEL_25;
                  }
                }

                if (v6 == --v7)
                {
                  break;
                }

                while (1)
                {
                  v10 = *v7;
                  if (*(*v7 + 1378) == 1)
                  {
                    v11 = *(v10 + 788);
                    if (*(v10 + 816) <= v11 && *(v10 + 824) >= v11)
                    {
                      break;
                    }
                  }

                  if (--v7 == v6)
                  {
                    goto LABEL_25;
                  }
                }

                *v6++ = v10;
                *v7 = v12;
              }

              goto LABEL_25;
            }
          }
        }

        this = std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__emplace_unique_key_args<md::LabelBase *,md::LabelBase * const&>((v4 + 208), *v6);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

void *std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__emplace_unique_key_args<md::LabelBase *,md::LabelBase * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 48) < *(*v9 + 48))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = *(v83 + 12);
      v88 = *(*v9 + 48);
      v89 = *(v85 + 48);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = (v9 + 1);
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = (v9 + 2);
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = (v9 + 2);
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 48) < *(v83 + 12))
      {
        *v84 = *v8;
        *v8 = v83;
        v139 = *v84;
        v140 = *v82;
        v141 = *(v139 + 48);
        if (v141 < *(v140 + 48))
        {
          v9[1] = v139;
          v9[2] = v140;
          v142 = *v9;
          if (v141 < *(*v9 + 48))
          {
            *v9 = v139;
            v9[1] = v142;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 48);
            if (v99 < *(v98 + 48))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 >= *(v98 + 48))
                {
                  v102 = (v9 + v101);
                  goto LABEL_128;
                }
              }

              v102 = v9;
LABEL_128:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v92;
          v137 = *(v135 + 48);
          if (v137 < *(v136 + 48))
          {
            v138 = v7;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < *(v136 + 48));
            *v138 = v135;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            v108 = *v107;
            if (2 * v105 + 2 < v10 && *(v108 + 48) < *(v107[1] + 48))
            {
              v108 = v107[1];
              ++v107;
              v106 = 2 * v105 + 2;
            }

            result = &v9[v105];
            v109 = *result;
            v110 = *(*result + 48);
            if (*(v108 + 48) >= v110)
            {
              do
              {
                v111 = v107;
                *result = v108;
                if (v103 < v106)
                {
                  break;
                }

                v112 = (2 * v106) | 1;
                v107 = &v9[v112];
                v113 = 2 * v106 + 2;
                v108 = *v107;
                if (v113 < v10 && *(v108 + 48) < *(v107[1] + 48))
                {
                  v108 = v107[1];
                  ++v107;
                  v112 = v113;
                }

                result = v111;
                v106 = v112;
              }

              while (*(v108 + 48) >= v110);
              *v111 = v109;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v114 = 0;
          v115 = *v9;
          v116 = v9;
          do
          {
            v117 = &v116[v114];
            v118 = v117 + 1;
            v119 = v117[1];
            v120 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 >= v10)
            {
              v114 = v120;
            }

            else
            {
              v123 = v117[2];
              v121 = v117 + 2;
              v122 = v123;
              result = *(v119 + 48);
              if (result >= *(v123 + 48))
              {
                v114 = v120;
              }

              else
              {
                v119 = v122;
                v118 = v121;
              }
            }

            *v116 = v119;
            v116 = v118;
          }

          while (v114 <= ((v10 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v115;
          }

          else
          {
            *v118 = *a2;
            *a2 = v115;
            v124 = (v118 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v118;
              v131 = *(*v118 + 48);
              if (*(*v128 + 48) < v131)
              {
                do
                {
                  v132 = v128;
                  *v118 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v118 = v132;
                }

                while (*(*v128 + 48) < v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 48);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 48);
      v18 = *(*v9 + 48);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 48) < *(*v9 + 48))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 48) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 48);
      v29 = *(v27 + 48);
      v30 = *(a2 - 2);
      v31 = *(v30 + 48);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 48) < *(v32 + 48))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 48) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 48);
      v39 = *(v37 + 48);
      v40 = *(a2 - 3);
      v41 = *(v40 + 48);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 48) < *(v42 + 48))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 48) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 48);
      v47 = *(*v25 + 48);
      v48 = *v34;
      v49 = *(*v34 + 48);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 48);
    v22 = *(*v12 + 48);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 48) < *(*v12 + 48))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 48) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 48);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 48) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 48) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 48) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 48) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 48) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 48);
      if (*(*(v9 - 1) + 48) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 48))
      {
        v67 = v9 + 1;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v52 >= *(*v9 + 48));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 48));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 48));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 48));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 48));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 48);
  v79 = *(*v9 + 48);
  v80 = *v8;
  v81 = *(*v8 + 48);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 48) < *(*v9 + 48))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 48) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 48);
  v8 = *(*result + 48);
  v9 = *a3;
  v10 = *(*a3 + 48);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 48) < *(*result + 48))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 48) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 48) < *(v5 + 48))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 48) < *(*a2 + 48))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 48) < *(*result + 48))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 48) < *(*a4 + 48))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 48) < *(*a3 + 48))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 48) < *(*a2 + 48))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 48) < *(*result + 48))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 48);
      v8 = *(*a1 + 48);
      v9 = *(a2 - 1);
      v10 = *(v9 + 48);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 48) < *(*a1 + 48))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 48) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(md::LabelLayoutContext const&)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 48);
    v26 = *(*a1 + 48);
    v27 = *(v23 + 48);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 48) < *(v21 + 48))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 48);
          if (v45 < *(v44 + 48))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 48))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 48) < *(*a1 + 48))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 48);
  v16 = *(*a1 + 48);
  v17 = *(v11 + 48);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 48);
    if (v38 < *(v37 + 48))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 48))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

void md::CoalescedJunction::~CoalescedJunction(md::CoalescedJunction *this)
{
  md::CoalescedJunction::~CoalescedJunction(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A46F98;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2A46FB8;
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }
}

void *std::__hash_table<std::__hash_value_type<md::MuninJunction const*,md::CoalescedJunction const*>,std::__unordered_map_hasher<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::CoalescedJunction const*>,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,true>,std::__unordered_map_equal<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::CoalescedJunction const*>,std::equal_to<md::MuninJunction const*>,std::hash<md::MuninJunction const*>,true>,std::allocator<std::__hash_value_type<md::MuninJunction const*,md::CoalescedJunction const*>>>::__emplace_unique_key_args<md::MuninJunction const*,std::piecewise_construct_t const&,std::tuple<md::MuninJunction const* const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void md::MuninRoadGraph::traverseDrivableEdges(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*(a4 + 24))
  {
    return;
  }

  v20 = 0;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  md::GraphTraversalPath::GraphTraversalPath(v10, v18);
  v15 = 1;
  std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::__value_func[abi:nn200100](v23, a4);
  v9 = *(a5 + 24);
  if (v9)
  {
    if (v9 == a5)
    {
      v22 = v21;
      (*(*v9 + 24))(v9, v21);
      goto LABEL_7;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v22 = v9;
LABEL_7:
  v17 = a3;
  if (v24)
  {
    v16 = a1;
    operator new();
  }

  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::~__value_func[abi:nn200100](v21);
  std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::~__value_func[abi:nn200100](v23);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void sub_1B324C95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::deque<md::GraphTraversalQueueItem>::~deque[abi:nn200100](v72 + 88);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v72 + 48);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v72 + 8);
  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::~__value_func[abi:nn200100](v73 - 232);
  std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::~__value_func[abi:nn200100](v73 - 200);
  std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::~__value_func[abi:nn200100](v73 - 168);
  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::~__value_func[abi:nn200100](&a72);
  std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::~__value_func[abi:nn200100](&STACK[0x218]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a2;
  v7 = a3;
  v6 = a4;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::function<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::operator()(v5);
}

uint64_t std::function<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::deque<md::GraphTraversalQueueItem>::~deque[abi:nn200100](v4);
}

uint64_t std::deque<md::GraphTraversalQueueItem>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v13 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0x2E];
    v7 = *v6 + 88 * v5 + -4048 * (v5 / 0x2E);
    v8 = v2[(*(a1 + 40) + v5) / 0x2E] + 88 * *(a1 + 40) + 88 * v5 + -4048 * ((*(a1 + 40) + v5) / 0x2E);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 7);
        if (v9)
        {
          *(v7 + 8) = v9;
          operator delete(v9);
        }

        v10 = *(v7 + 4);
        if (v10)
        {
          *(v7 + 5) = v10;
          operator delete(v10);
        }

        v11 = *(v7 + 1);
        if (v11)
        {
          *(v7 + 2) = v11;
          operator delete(v11);
        }

        v7 += 88;
        if (v7 - *v6 == 4048)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v13 = v3;
  }

  *v4 = 0;
  v14 = v13 - v2;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v14 = v3 - v2;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v15 = 23;
    goto LABEL_21;
  }

  if (v14 == 2)
  {
    v15 = 46;
LABEL_21:
    *(a1 + 32) = v15;
  }

  if (v2 != v3)
  {
    do
    {
      v16 = *v2++;
      operator delete(v16);
    }

    while (v2 != v3);
    v18 = *(a1 + 8);
    v17 = *(a1 + 16);
    if (v17 != v18)
    {
      *(a1 + 16) = v17 + ((v18 - v17 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<md::MuninRoadGraph::traverseDrivableEdges(md::GraphTraversalQueueItem &&,unsigned int,std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>,md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>)::$_2,std::allocator<md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>>,md::MuninRoadEdge const*>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (*(v3 + 112) != 1)
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 24);
  if (v4)
  {
    return std::function<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::operator()(v4, v3, *a3);
  }

  else
  {
    return 1;
  }
}

uint64_t std::__function::__func<md::MuninRoadGraph::traverseDrivableEdges(md::GraphTraversalQueueItem &&,unsigned int,std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>,md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>)::$_2,std::allocator<md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>>,md::MuninRoadEdge const*>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A470F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::MuninRoadGraph::traverseDrivableEdges(md::GraphTraversalQueueItem &&,unsigned int,std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>,md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>)::$_1,std::allocator<md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>>,md::GraphTraversalPath const*>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *a3;
  v6 = **(a1 + 8);
  v7 = *(*a2 + 64);
  if (v7 != 1 && (v7 != 2 || std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((v6 + 184), *a2)))
  {
    v8 = *(v4 + 69);
    if (v8 <= 2)
    {
      if (v8 - 1 <= 1)
      {
        if (*(v4 + 68) > 2u)
        {
          goto LABEL_5;
        }

        if (v8 == 2)
        {
          if (*(v4 + 68) == 2)
          {
            goto LABEL_5;
          }
        }

        else if (v8 == 1 && *(v4 + 68) == 1)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      v10 = (a1 + 16);
LABEL_16:
      if (v7 != 1 && (v7 != 2 || std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((v6 + 184), v4)))
      {
        v12 = *(v4 + 69);
        if (v12 <= 2)
        {
          if (v12 - 1 > 1)
          {
            goto LABEL_6;
          }

          if (*(v4 + 68) <= 2u)
          {
            if (v12 == 2)
            {
              if (*(v4 + 68) != 2)
              {
                goto LABEL_6;
              }
            }

            else if (v12 != 1 || *(v4 + 68) != 1)
            {
              goto LABEL_6;
            }
          }
        }
      }

      v13 = std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::operator()(*(*(a1 + 24) + 24), v4, v5, v9);
      v11 = 0;
      result = 0;
      if (!v13)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

LABEL_5:
  v15[0] = &unk_1F2A470B0;
  v15[1] = v6;
  v15[3] = v15;
  v9 = md::GraphTraversalPath::depth(v5, v15);
  std::__function::__value_func<BOOL ()(md::MuninJunction const*)>::~__value_func[abi:nn200100](v15);
  v10 = (a1 + 16);
  if (v9 <= **(a1 + 16))
  {
    v6 = **(a1 + 8);
    v7 = *(v4 + 64);
    goto LABEL_16;
  }

LABEL_6:
  v11 = 1;
LABEL_21:
  if (v9 < **v10)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

BOOL std::__function::__func<md::MuninRoadGraph::traverseDrivableEdges(md::GraphTraversalQueueItem &&,unsigned int,std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>,md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>)::$_0,std::allocator<md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>>,BOOL ()(md::MuninJunction const)>::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 64);
  if (v3 == 1 || v3 == 2 && !std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((*(a1 + 8) + 184), *a2))
  {
    return 1;
  }

  v4 = *(v2 + 69);
  if (v4 > 2)
  {
    return 1;
  }

  if (v4 - 1 <= 1)
  {
    if (*(v2 + 68) > 2u)
    {
      return 1;
    }

    if (v4 != 2)
    {
      return v4 == 1 && *(v2 + 68) == 1;
    }

    if (*(v2 + 68) == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t std::__function::__func<md::MuninRoadGraph::traverseDrivableEdges(md::GraphTraversalQueueItem &&,unsigned int,std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>,md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>)::$_0,std::allocator<md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>>,BOOL ()(md::MuninJunction const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A470B0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::MuninRoadGraph::traverseDrivableEdges(md::GraphTraversalQueueItem &&,unsigned int,std::function<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>,md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>)::$_1,std::allocator<md::GraphTraversalQueueItem &&<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const)>>,md::GraphTraversalPath const*>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A47068;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_1,std::allocator<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_1>,BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  v4 = *(*a2 + 39);
  if (v4 >= 0)
  {
    v5 = *(*a2 + 39);
  }

  else
  {
    v5 = *(*a2 + 24);
  }

  v6 = *(v3 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 24);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? (v2 + 16) : *(v2 + 16);
  v12 = *(v3 + 16);
  v10 = v3 + 16;
  v11 = v12;
  v13 = (v7 >= 0 ? v10 : v11);
  if (memcmp(v9, v13, v5) || *(v2 + 112) != 1)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 >= v15)
  {
    v19 = (v16 - *v14) >> 3;
    if ((v19 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - *v14;
    v21 = v20 >> 2;
    if (v20 >> 2 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v22);
    }

    *(8 * v19) = v2;
    v17 = 8 * v19 + 8;
    v23 = *(v14 + 8) - *v14;
    v24 = (8 * v19 - v23);
    memcpy(v24, *v14, v23);
    v25 = *v14;
    *v14 = v24;
    *(v14 + 8) = v17;
    *(v14 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v16 = v2;
    v17 = (v16 + 1);
  }

  *(v14 + 8) = v17;
  return 1;
}

__n128 std::__function::__func<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_1,std::allocator<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_1>,BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A47020;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_0,std::allocator<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_0>,BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unint64_t ***a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a3;
  v7 = v5[1];
  if (v6 != v7)
  {
    v8 = *(a1 + 16);
    v9 = v6;
    do
    {
      v10 = *v9++;
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__emplace_unique_key_args<md::MuninJunction const*,md::MuninJunction const* const&>(v8, v10);
    }

    while (v9 != v7);
  }

  v11 = *(a1 + 8);
  v13 = *(v11 + 8);
  v12 = *(v11 + 16);
  if (v13 >= v12)
  {
    v15 = (v13 - *v11) >> 3;
    if ((v15 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = v12 - *v11;
    v17 = v16 >> 2;
    if (v16 >> 2 <= (v15 + 1))
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v18);
    }

    *(8 * v15) = v4;
    v14 = 8 * v15 + 8;
    v19 = *(v11 + 8) - *v11;
    v20 = (8 * v15 - v19);
    memcpy(v20, *v11, v19);
    v21 = *v11;
    *v11 = v20;
    *(v11 + 8) = v14;
    *(v11 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v13 = v4;
    v14 = (v13 + 1);
  }

  *(v11 + 8) = v14;
  return 1;
}

__n128 std::__function::__func<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_0,std::allocator<md::MuninRoadGraph::MuninRoadGraph(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&)::$_0>,BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A46FD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::LineTextWithAuxLabelPart::debugCompositeClassName@<X0>(md::LineTextWithAuxLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "TextWithAux\n", 12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "  textDirection=", 16);
  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v33, off_1E7B3D398[*(this + 714)]);
  if ((v35 & 0x80u) == 0)
  {
    v4 = &v33;
  }

  else
  {
    v4 = v33;
  }

  if ((v35 & 0x80u) == 0)
  {
    v5 = v35;
  }

  else
  {
    v5 = v34;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v4, v5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "  desiredTextDirection=", 23);
  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v30, off_1E7B3D398[*(this + 715)]);
  if ((v32 & 0x80u) == 0)
  {
    v6 = &v30;
  }

  else
  {
    v6 = v30;
  }

  if ((v32 & 0x80u) == 0)
  {
    v7 = v32;
  }

  else
  {
    v7 = v31;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v6, v7);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n", 1);
  if (v32 < 0)
  {
    v9 = v30;
    v10 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v10, v9);
  }

  if (v35 < 0)
  {
    v11 = v33;
    v12 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "  textPartOutcome st=", 21);
  md::stringFromLabelOutcome(&v33, *(this + 656));
  if ((v35 & 0x80u) == 0)
  {
    v13 = &v33;
  }

  else
  {
    v13 = v33;
  }

  if ((v35 & 0x80u) == 0)
  {
    v14 = v35;
  }

  else
  {
    v14 = v34;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v13, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " ds=", 4);
  md::stringFromLabelOutcome(&v30, *(this + 656));
  if ((v32 & 0x80u) == 0)
  {
    v15 = &v30;
  }

  else
  {
    v15 = v30;
  }

  if ((v32 & 0x80u) == 0)
  {
    v16 = v32;
  }

  else
  {
    v16 = v31;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v15, v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n", 1);
  if (v32 < 0)
  {
    operator delete(v30);
  }

  if (v35 < 0)
  {
    operator delete(v33);
  }

  if ((v28 & 0x10) != 0)
  {
    v18 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v18 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v17 = 0;
      a2[23] = 0;
      goto LABEL_46;
    }

    locale = v23[1].__locale_;
    v18 = v23[3].__locale_;
  }

  v17 = v18 - locale;
  if ((v18 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  a2[23] = v17;
  if (v17)
  {
    memmove(a2, locale, v17);
  }

LABEL_46:
  a2[v17] = 0;
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v29);
}

void sub_1B324D964(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v26 - 65) < 0)
  {
    v28 = *(v26 - 88);
    v29 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v29, v28);
  }

  a9 = *MEMORY[0x1E69E54E8];
  *(&a9 + *(a9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a10 = MEMORY[0x1E69E5548] + 16;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a11);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a26);
  _Unwind_Resume(a1);
}

void md::LineTextWithAuxLabelPart::populateDebugNode(md::LineTextWithAuxLabelPart *this, gdc::DebugTreeNode *a2)
{
  v4 = *(this + 72);
  v5 = *(this + 73);
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(*v6 + 808))(v6, a2);
  }

  std::string::basic_string[abi:nn200100]<0>(&v21, "LineTextWithAuxLabelPart");
  v7 = gdc::DebugTreeNode::createChildNode(a2, &v21);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  std::string::basic_string[abi:nn200100]<0>(&v21, "Aux Gap");
  gdc::DebugTreeValue::DebugTreeValue(v18, *(this + 166));
  gdc::DebugTreeNode::addProperty(v7, &v21, v18);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  std::string::basic_string[abi:nn200100]<0>(&v21, "Text Part Outcome");
  md::stringFromLabelOutcome(&v14, *(this + 688));
  gdc::DebugTreeValue::DebugTreeValue(v15, &v14);
  gdc::DebugTreeNode::addProperty(v7, &v21, v15);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  std::string::basic_string[abi:nn200100]<0>(&v21, "Is Layout Direction Reversed");
  gdc::DebugTreeValue::DebugTreeValue(v11, *(this + 689));
  gdc::DebugTreeNode::addProperty(v7, &v21, v11);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  std::string::basic_string[abi:nn200100]<0>(&v21, "Is Text Enabled");
  gdc::DebugTreeValue::DebugTreeValue(v8, *(this + 691));
  gdc::DebugTreeNode::addProperty(v7, &v21, v8);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }
}

uint64_t md::LineTextWithAuxLabelPart::pushToRenderModel(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u32[0];
  if (*(a1 + 691) == 1 && *(a1 + 688) == 37)
  {
    (*(***(a1 + 576) + 128))(**(a1 + 576), a2, a3);
  }

  v5 = *(**(*(a1 + 576) + 8) + 128);
  a3.n128_u32[0] = v3;

  return v5(a3);
}

uint64_t md::LineTextWithAuxLabelPart::layoutForDisplay(uint64_t a1, mdm::zone_mallocator **a2, md::LabelAnimator *a3, float32x2_t *a4, float32x2_t *a5)
{
  v38 = xmmword_1B33B0730;
  v10 = *(a1 + 576);
  if (*(a1 + 691) == 1)
  {
    md::TextLabelPart::prepareQuadsForDisplay(*v10, a2, a3);
    md::LineTextWithAuxLabelPart::updateLayoutOffsets(a1, 1);
    result = (*(***(a1 + 576) + 120))(**(a1 + 576), a2, a3, a4, a5);
    *(a1 + 688) = result;
    if (result != 37)
    {
      return result;
    }

    v12 = 0;
    v10 = *(a1 + 576);
    v13 = *(*v10 + 24);
    v14 = v13 + 312;
    v15 = v13 + 320;
    v16 = &v38;
    v17 = 1;
    do
    {
      v18 = v17;
      *v16 = fminf(*(v14 + 4 * v12), *v16);
      *(&v38 + v12 + 2) = fmaxf(*(&v38 + v12 + 2), *(v15 + 4 * v12));
      v16 = &v38 + 1;
      v12 = 1;
      v17 = 0;
    }

    while ((v18 & 1) != 0);
  }

  result = (*(**(v10 + 8) + 120))(*(v10 + 8), a2, a3, a4, a5);
  if (result == 37)
  {
    v19 = *(*(a1 + 576) + 8);
    v20 = v19[3];
    v21 = 1;
    v34[0] = (*(*v19 + 280))(v19, 1);
    v34[1] = v22;
    v23 = gm::Box<float,2>::operator+((v20 + 312), v34);
    v24 = 0;
    v35 = v23;
    v36 = v25;
    v26 = &v35;
    v37[0] = v27;
    v37[1] = v28;
    v29 = &v38;
    do
    {
      v30 = v21;
      v31 = *v26;
      v32 = *v29;
      *(&v38 + v24 + 2) = fmaxf(*(&v38 + v24 + 2), *&v37[v24]);
      *v29 = fminf(v31, v32);
      v26 = &v36;
      v29 = &v38 + 1;
      v24 = 1;
      v21 = 0;
    }

    while ((v30 & 1) != 0);
    md::CollisionObject::resetWithRects((a1 + 312), 1u);
    md::CollisionObject::addRect(a1 + 312, &v38);
    v33 = vadd_f32(*a5, *a4);
    *(a1 + 520) = v33;
    *(a1 + 344) = v33;
    md::CollisionObject::setupShapeData(a1 + 312);
    return 37;
  }

  return result;
}

uint64_t md::LineTextWithAuxLabelPart::updateForDisplay(md::LineTextWithAuxLabelPart *this)
{
  if (*(this + 691) != *(this + 659))
  {
    (*(*this + 104))(this, 0);
    if ((*(this + 691) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(this + 691))
  {
LABEL_5:
    (*(***(this + 72) + 112))(**(this + 72));
    *(this + 689) = *(this + 657);
    (*(***(this + 72) + 400))();
    (*(**(*(this + 72) + 8) + 400))();
  }

LABEL_6:
  (*(**(*(this + 72) + 8) + 112))(*(*(this + 72) + 8));
  *(this + 166) = *(this + 158);
  v2 = *(**(this + 80) + 24);

  return v2();
}

void md::LineTextWithAuxLabelPart::~LineTextWithAuxLabelPart(md::LineTextWithAuxLabelPart *this)
{
  *this = &unk_1F2A47140;
  v2 = *(this + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 85);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 81);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
  v6 = mdm::zone_mallocator::instance(v5);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v6, this);
}

{
  *this = &unk_1F2A47140;
  v2 = *(this + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 85);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 81);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

mdm::zone_mallocator *std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t md::LineTextWithAuxLabelPart::LineTextWithAuxLabelPart(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a4;
  v17 = a3;
  md::LabelPart::LabelPart(a1);
  *(v8 + 592) = 0;
  *(v8 + 576) = 0u;
  *(v8 + 608) = 0;
  *(v8 + 612) = 0;
  *(v8 + 616) = 0;
  *(v8 + 624) = 0;
  *(v8 + 628) = 1;
  *(v8 + 630) = 0;
  *v8 = &unk_1F2A47140;
  *(v8 + 632) = 0;
  *(v8 + 640) = 0u;
  *(v8 + 656) = 16777253;
  *(v8 + 660) = 0;
  *(v8 + 664) = 0;
  *(v8 + 672) = 0u;
  *(v8 + 688) = 16777253;
  *(v8 + 692) = 0;
  *(v8 + 696) = *a2;
  v9 = a2[1];
  *(v8 + 704) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 712) = 0;
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::push_back[abi:nn200100]((a1 + 576), &v17);
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::push_back[abi:nn200100]((a1 + 576), &v16);
  (*(**a2 + 16))(&v15);
  v10 = v15;
  v15 = 0uLL;
  v11 = *(a1 + 648);
  *(a1 + 640) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v15 + 1));
    }
  }

  (*(**a2 + 16))(&v15);
  v12 = v15;
  v15 = 0uLL;
  v13 = *(a1 + 680);
  *(a1 + 672) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v15 + 1));
    }
  }

  *(a1 + 658) = (*(**(a1 + 640) + 80))(*(a1 + 640));
  (*(*a3 + 408))(a3, 0, 1);
  (*(*a3 + 368))(a3, 0, 1);
  (*(*a3 + 416))(a3, 0, a1 + 640);
  (*(*a4 + 416))(a4, 0, a1 + 640);
  (*(*a3 + 408))(a3, 1, 1);
  (*(*a3 + 368))(a3, 1, 1);
  (*(*a3 + 416))(a3, 1, a1 + 672);
  (*(*a4 + 416))(a4, 1, a1 + 672);
  *(a4 + 565) = a3[565];
  return a1;
}

void sub_1B324E73C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 85);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 81);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::CompositeLabelPart::~CompositeLabelPart(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PolygonBase::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolygonBase::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolygonBase::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::PolygonBase::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolygonBase::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::PolygonBase::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A47560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PolygonBase::MeshMesh::~MeshMesh(ggl::PolygonBase::MeshMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolygonBase::MeshMesh::~MeshMesh(ggl::PolygonBase::MeshMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PolygonBase::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolygonBase::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonBase::CompressedMeshMesh::CompressedMeshMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F2A475D8;
  a1[2] = &unk_1F2A475F8;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = off_1F2A59A98;
  a1[2] = &unk_1F2A59AB8;
  return a1;
}

uint64_t md::SelectedDaVinciPolygonLayerDataSource::deselectFeatureId(md::SelectedDaVinciPolygonLayerDataSource *this)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  md::SelectedDaVinciPolygonLayerDataSource::setSelectedPolygons(this, v2);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
}

uint64_t md::SelectedDaVinciPolygonLayerDataSource::setSelectedFeatureId(md::SelectedDaVinciPolygonLayerDataSource *this, unint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  std::unordered_set<unsigned long long>::unordered_set(v4, v5, 1);
  md::SelectedDaVinciPolygonLayerDataSource::setSelectedPolygons(this, v4);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4);
}

void sub_1B324ECC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void md::SelectedDaVinciPolygonLayerDataSource::~SelectedDaVinciPolygonLayerDataSource(md::SelectedDaVinciPolygonLayerDataSource *this)
{
  *this = &unk_1F2A47618;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 800);
  md::ElevatedStrokeLayerDataSource::~ElevatedStrokeLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A47618;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 800);

  md::ElevatedStrokeLayerDataSource::~ElevatedStrokeLayerDataSource(this);
}

uint64_t non-virtual thunk tomd::Label::collidesWithObject(md::Label *this, const md::CollisionObject *a2)
{
  result = *(this + 31);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

void non-virtual thunk tomd::Label::~Label(md::Label *this)
{
  md::Label::~Label((this - 40));

  JUMPOUT(0x1B8C62190);
}

{
  md::Label::~Label((this - 40));
}

void std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Label::collidesWithObject(md::Label *this, const md::CollisionObject *a2)
{
  result = *(this + 36);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

uint64_t md::Label::intersectsDisplayFrustum(uint64_t a1)
{
  result = *(a1 + 288);
  if (result)
  {
    return (*(*result + 496))();
  }

  return result;
}

uint64_t md::Label::intersectsStagingFrustum(uint64_t a1)
{
  result = *(a1 + 288);
  if (result)
  {
    return (*(*result + 488))();
  }

  return result;
}

uint64_t md::LabelExternalPointFeature::isLeafClusterChild(md::LabelExternalPointFeature *this)
{
  md::ClusterNodeContext::LockedPtr::LockedPtr(&v3, this + 36);
  if (v5)
  {
    v1 = ((*(*v5 + 32))(v5) >> 1) & 1;
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v1;
}

void sub_1B324F028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::compare(const void **a1, _BYTE *a2)
{
  v2 = a2[23];
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = a1;
    a1 = *a1;
    v3 = v4[1];
  }

  if (v2 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(result) = memcmp(a1, a2, v6);
  if (v3 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v5 < v3;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

float md::Label::featurePixel(uint64_t a1, uint64_t a2, int a3)
{
  result = 0.0;
  if (*(a1 + 1291) == 6)
  {
    [*(*(a1 + 8) + 192) position];
    if (a3 == 1)
    {
      v7 = a2 + 432;
    }

    else
    {
      v7 = *(a2 + 424);
    }

    return v6 * *(v7 + 44);
  }

  return result;
}

void std::__shared_ptr_emplace<md::LabelAnimationStyleGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A477F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::Label::assignWorldPointToLabel(md::Label *this, md::LabelManager *a2)
{
  v4 = (*(**(this + 1) + 112))(*(this + 1), this + 48);
  v5 = v4;
  if (*(*(a2 + 29) + 17))
  {
    v14 = *md::LabelPoint::mercatorPoint(v4);
    v15 = 0;
    v16 = 0uLL;
    v17 = 0x3FF0000000000000;
  }

  else
  {
    v6 = md::LabelPoint::geocentricPoint(v4);
    v14 = *v5;
    v15 = *(v5 + 2);
    md::LabelPoint::geocentricPoint(v6);
    for (i = 0; i != 3; ++i)
    {
      *(&v16 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(v5 + i * 8);
    }

    *&v16 = gm::Matrix<double,3,1>::normalized<int,void>(&v16);
    *(&v16 + 1) = v8;
    v17 = v9;
  }

  v10 = *(v5 + 10);
  v11 = v10 != 3.4028e38;
  if (v10 == 3.4028e38)
  {
    v10 = 0.0;
  }

  result = md::Label::setWorldPoint(this, &v14, &v16, LODWORD(v10) | (v11 << 32));
  if (*(*(a2 + 29) + 17) == 1)
  {
    v13 = md::LabelPoint::mercatorPoint(v5);
    *(this + 83) = *v13;
    result = *(v13 + 8);
    *(this + 84) = result;
  }

  return result;
}

uint64_t md::Label::stopStyleAnimation(md::Label *this)
{
  v2 = *(this + 37);
  if (v2 && (*(*v2 + 688))(v2))
  {
    md::Label::clearAnimatingPart(this);
  }

  result = *(this + 34);
  if (result)
  {
    v4 = *(*result + 560);

    return v4();
  }

  return result;
}

uint64_t md::LabelPart::ArePartsVisuallySimilar(md::LabelPart *this, const md::LabelPart *a2, const md::LabelPart *a3)
{
  v5 = (*(*this + 232))(this, a2, a3);
  if (v5 != (*(*a2 + 232))(a2) || !(*(*this + 232))(this))
  {
    return 0;
  }

  v6 = *(*this + 240);

  return v6(this, a2);
}

void *std::vector<md::LabelFlexZone>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<md::LabelFlexZone>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

uint64_t md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  memcpy((a1 + 8), (a2 + 8), 0x480uLL);
  geo::ConvexHull2<double>::ConvexHull2(a1 + 1160, (a2 + 1160));
  v4 = *(a2 + 1184);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1184) = v4;
  std::vector<md::LabelFlexZone>::vector[abi:nn200100]((a1 + 1216), (a2 + 1216));
  v5 = *(a2 + 1240);
  v6 = *(a2 + 1256);
  v7 = *(a2 + 1272);
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1256) = v6;
  *(a1 + 1272) = v7;
  *(a1 + 1240) = v5;
  return a1;
}

void sub_1B324F628(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1168) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B324F710(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[147] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

float std::__function::__func<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,std::allocator<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0>,gm::Matrix<float,2,1> ()(void)>::operator()(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 68);
  do
  {
    *(&v12 + v1) = *(v2 + 968 + v1) * v3;
    v1 += 8;
  }

  while (v1 != 24);
  v4 = 0;
  v8 = v12;
  v9 = v13;
  do
  {
    *(&v12 + v4) = *(&v8 + v4) + *(v2 + 896 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  v5 = 0;
  v10 = v12;
  v11 = v13;
  v6 = v2 + 992;
  do
  {
    *(&v12 + v5) = *(v6 + v5) + *(&v10 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  *&v10 = 0;
  md::LabelLayoutContext::projectPointToPixel(a1 + 16, &v12, &v10);
  return *&v10;
}

void std::__function::__func<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,std::allocator<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0>,gm::Matrix<float,2,1> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,std::allocator<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0>,gm::Matrix<float,2,1> ()(void)>::destroy[abi:nn200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__alloc_func<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,std::allocator<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0>,gm::Matrix<float,2,1> ()(void)>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[152];
  if (v2)
  {
    a1[153] = v2;
    operator delete(v2);
  }

  v3 = a1[145];
  if (v3)
  {
    a1[146] = v3;

    operator delete(v3);
  }
}

__n128 std::__function::__func<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,std::allocator<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0>,gm::Matrix<float,2,1> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F2A47F80;
  *(a2 + 8) = v4;
  memcpy((a2 + 16), (a1 + 16), 0x480uLL);
  geo::ConvexHull2<double>::ConvexHull2(a2 + 1168, (a1 + 1168));
  v5 = *(a1 + 1208);
  *(a2 + 1192) = *(a1 + 1192);
  *(a2 + 1208) = v5;
  std::vector<md::LabelFlexZone>::vector[abi:nn200100]((a2 + 1224), (a1 + 1224));
  result = *(a1 + 1248);
  v7 = *(a1 + 1264);
  v8 = *(a1 + 1280);
  *(a2 + 1296) = *(a1 + 1296);
  *(a2 + 1280) = v8;
  *(a2 + 1264) = v7;
  *(a2 + 1248) = result;
  return result;
}

void sub_1B324F9EC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1176) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B324FAC8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[147] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,std::allocator<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0>,gm::Matrix<float,2,1> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A47F80;
  v2 = a1[153];
  if (v2)
  {
    a1[154] = v2;
    operator delete(v2);
  }

  v3 = a1[146];
  if (v3)
  {
    a1[147] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0,std::allocator<md::Label::layoutForDisplay(md::LabelManager *,md::LabelLayoutOptions const&)::$_0>,gm::Matrix<float,2,1> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A47F80;
  v2 = a1[153];
  if (v2)
  {
    a1[154] = v2;
    operator delete(v2);
  }

  v3 = a1[146];
  if (v3)
  {
    a1[147] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t md::Label::debugDraw(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 288);
  if (result)
  {
    v5 = (*(*result + 256))(result);
    *(a2 + 8) = *v5;
    *(a2 + 12) = *(v5 + 4);
    v6.n128_f32[0] = ggl::DebugConsole::drawRectangle(a2, (v5 + 8));
    v7 = *(**(a1 + 288) + 776);

    return v7(v6);
  }

  return result;
}

uint64_t md::Label::debugString(md::Label *this, md::LabelManager *a2, uint64_t a3)
{
  v175 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v163);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "Label:\n", 7);
  v6 = v163;
  *(&v163 + *(v163 - 24) + 8) = *(&v163 + *(v163 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v165[0].__locale_ + *(v6 - 24)) = 6;
  if (*(a2 + 259) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  pos:(", 7);
    v7 = MEMORY[0x1B8C61C60](&v163, *(a2 + 16));
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ",", 1);
    v9 = MEMORY[0x1B8C61C60](v8, *(a2 + 17));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ")", 1);
    v10 = v163;
    *(&v163 + *(v163 - 24) + 8) = *(&v163 + *(v163 - 24) + 8) & 0xFFFFFEFB | 4;
    v11 = 2;
    if (*(*(a3 + 232) + 17))
    {
      v11 = 8;
    }

    *(&v165[0].__locale_ + *(v10 - 24)) = v11;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, ", world:(", 9);
    v12 = MEMORY[0x1B8C61C60](&v163, *(a2 + 65));
    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, ",", 1);
    v14 = MEMORY[0x1B8C61C60](v13, *(a2 + 66));
    v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, ",", 1);
    v16 = MEMORY[0x1B8C61C60](v15, *(a2 + 67));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ")\n", 2);
    if (*(a2 + 198) != 0.0 || *(a2 + 200) != 0.0)
    {
      *(&v165[0].__locale_ + *(v163 - 24)) = 1;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Offset: elev(", 15);
      v17 = MEMORY[0x1B8C61C50](&v163, *(a2 + 853));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ")=", 2);
      v18 = std::ostream::operator<<();
      v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, " nrml=(", 7);
      v20 = MEMORY[0x1B8C61C50](v19, *(a2 + 853));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ")", 1);
      v21 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, "\n", 1);
    }

    v22 = *(a2 + 85);
    if (v22 != 0.0 || *(a2 + 199) != 0.0)
    {
      v23 = *(a2 + 29);
      v24 = *(a3 + 484);
      *(&v165[0].__locale_ + *(v163 - 24)) = 1;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Elev: ground=", 15);
      v25 = v22 / v23;
      MEMORY[0x1B8C61C60](&v163, v25);
      *(&v165[0].__locale_ + *(v163 - 24)) = 3;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " scaled(", 8);
      v26 = std::ostream::operator<<();
      v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ")=", 2);
      *(v27 + *(*v27 - 24) + 16) = 1;
      MEMORY[0x1B8C61C60](v25 * v24);
      *(&v165[0].__locale_ + *(v163 - 24)) = 1;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " building=", 10);
      std::ostream::operator<<();
      *(&v165[0].__locale_ + *(v163 - 24)) = 3;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " scaled(", 8);
      v28 = std::ostream::operator<<();
      v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, ")=", 2);
      *(v29 + *(*v29 - 24) + 16) = 1;
      v30 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "\n", 1);
    }

    if (*(a2 + 164) == 1)
    {
      v31 = *(a2 + 197);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  FacingAngle=", 14);
      v32 = acosf(v31);
      v33 = MEMORY[0x1B8C61C60](&v163, v32 * 57.2957795);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, ", FacingAngleCosine=", 20);
      v34 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, "\n", 1);
    }

    if (*(a2 + 180) == 1 && *(a2 + 164) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  SkewOffsetting: a=", 20);
      v35 = std::ostream::operator<<();
      v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " f(", 3);
      v37 = MEMORY[0x1B8C61C50](v36, *(a2 + 852));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ")=", 2);
      v38 = std::ostream::operator<<();
      v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " s=", 3);
      v40 = MEMORY[0x1B8C61C50](v39, *(a2 + 184));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, " d=", 3);
      if ((*(a2 + 180) & 1) == 0 || (v41 = std::ostream::operator<<(), std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, ",", 1), (*(a2 + 180) & 1) == 0) || (v42 = std::ostream::operator<<(), std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, ",", 1), (*(a2 + 180) & 1) == 0))
      {
        v162 = std::__throw_bad_optional_access[abi:nn200100]();
        v163 = *MEMORY[0x1E69E54E8];
        *(&v163 + *(v163 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
        v164 = MEMORY[0x1E69E5548] + 16;
        if (v168 < 0)
        {
          operator delete(__p);
        }

        v164 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v165);
        std::ostream::~ostream();
        MEMORY[0x1B8C620C0](v171);
        _Unwind_Resume(v162);
      }

      v43 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, "\n", 1);
    }

    if (*(a2 + 1359) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  angleCos:[", 12);
      v44 = MEMORY[0x1B8C61C60](&v163, *(a2 + 102));
      v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, ",", 1);
      v46 = MEMORY[0x1B8C61C60](v45, *(a2 + 103));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "]", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, ", angleDeg:[", 12);
      v47 = acos(*(a2 + 102));
      v48 = MEMORY[0x1B8C61C60](&v163, v47 * 57.2957795);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ",", 1);
      v49 = acos(*(a2 + 103));
      v50 = MEMORY[0x1B8C61C60](v48, v49 * 57.2957795);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, "]", 1);
      v51 = *(a2 + 1359);
      if ((*(a2 + 1360) & 1) == 0)
      {
        goto LABEL_28;
      }

      v52 = a2 + 1360;
      if (*(a2 + 1359))
      {
        v53 = ", ";
      }

      else
      {
        v53 = "  ";
      }
    }

    else
    {
      if ((*(a2 + 1360) & 1) == 0)
      {
        goto LABEL_31;
      }

      v52 = a2 + 1360;
      v53 = "  ";
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v53, 2);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "dist:[", 6);
    v58 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, ",", 1);
    v59 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v59, "]", 1);
    if (*(a2 + 1359))
    {
LABEL_29:
      v56 = "\n";
      v55 = &v163;
      v57 = 1;
      goto LABEL_30;
    }

    v51 = *v52;
LABEL_28:
    if ((v51 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  *(&v165[0].__locale_ + *(v6 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Screen Position:(", 19);
  v54 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, ",", 1);
  v55 = std::ostream::operator<<();
  v56 = ")\n";
  v57 = 2;
LABEL_30:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, v56, v57);
LABEL_31:
  *(&v165[0].__locale_ + *(v163 - 24)) = 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Zoom: Cur=", 12);
  v60 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v60, " Min=", 5);
  v61 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, " Max=", 5);
  std::ostream::operator<<();
  *(&v165[0].__locale_ + *(v163 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, ", Dist(m)=", 10);
  v62 = MEMORY[0x1B8C61C60](&v163, *(a2 + 201) / *(a2 + 28));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v62, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Collision: Order=", 19);
  if (*(a2 + 186) == 0x7FFFFFFF)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "MAX", 3);
  }

  else
  {
    MEMORY[0x1B8C61C80](&v163);
  }

  if (*(a2 + 187) != *(a2 + 186))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " IconOrder=", 11);
    MEMORY[0x1B8C61C80](&v163, *(a2 + 187));
  }

  *(&v165[0].__locale_ + *(v163 - 24)) = 8;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " MinZmRank=", 11);
  std::ostream::operator<<();
  if (*(a2 + 190) != 0.0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " MzrBias=", 9);
    std::ostream::operator<<();
  }

  if (*(a2 + 189) != 0.0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " VisMzrBias=", 12);
    std::ostream::operator<<();
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " CollRank=", 10);
  *(&v165[0].__locale_ + *(v163 - 24)) = 2;
  if (*(a2 + 191) == 3.4028e38)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "MAX", 3);
  }

  else
  {
    std::ostream::operator<<();
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " CoordPrty=", 11);
  std::ostream::operator<<();
  if (*(a2 + 15) != 0x7FFFFFFF)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " SortKey=", 9);
    MEMORY[0x1B8C61C80](&v163, *(a2 + 15));
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n    Layer=", 11);
  v63 = MEMORY[0x1B8C61CC0](&v163, *(a2 + 364));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, " StylOverlay=", 13);
  v64 = *(a2 + 365);
  v65 = "";
  if (v64 <= 4)
  {
    v65 = off_1E7B3CBC8[v64];
  }

  std::string::basic_string[abi:nn200100]<0>(&v172, v65);
  if ((v174 & 0x80u) == 0)
  {
    v66 = &v172;
  }

  else
  {
    v66 = v172;
  }

  if ((v174 & 0x80u) == 0)
  {
    v67 = v174;
  }

  else
  {
    v67 = v173;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, v66, v67);
  if (v174 < 0)
  {
    operator delete(v172);
  }

  if (!*(a2 + 365))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " ResOverlay=", 12);
    v68 = *(a2 + 369);
    v69 = v68 > 4 ? "" : off_1E7B3CBC8[v68];
    std::string::basic_string[abi:nn200100]<0>(&v172, v69);
    v70 = (v174 & 0x80u) == 0 ? &v172 : v172;
    v71 = (v174 & 0x80u) == 0 ? v174 : v173;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v70, v71);
    if (v174 < 0)
    {
      operator delete(v172);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " Group=", 7);
  v72 = MEMORY[0x1B8C61C80](&v163, *(a2 + 366));
  *(v72 + *(*v72 - 24) + 8) = *(v72 + *(*v72 - 24) + 8) & 0xFFFFFFB5 | 8;
  v73 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v72, " ExclGrps=0x", 12);
  v74 = MEMORY[0x1B8C61C90](v73, *(a2 + 90));
  *(v74 + *(*v74 - 24) + 8) = *(v74 + *(*v74 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v74, "\n", 1);
  if (*(a2 + 159))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  SceneTag=", 11);
    v75 = MEMORY[0x1B8C61C80](&v163, *(*(a2 + 159) + 54));
    v76 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, " cluster=", 9);
    v77 = MEMORY[0x1B8C61C80](v76, *(*(a2 + 159) + 53));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v77, "\n", 1);
  }

  if (*(a2 + 1155))
  {
    *(&v165[0].__locale_ + *(v163 - 24)) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  PerspScale:", 13);
    MEMORY[0x1B8C61C80](&v163, *(a2 + 1155));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " Val=", 5);
    std::ostream::operator<<();
    if (*(a2 + 1155) == 3)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " Fixed=", 7);
      v78 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v78, " Dist=", 6);
      v79 = std::ostream::operator<<();
      v80 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v79, " Locked=", 8);
      MEMORY[0x1B8C61C50](v80, *(a2 + 1160));
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Attrs: DedupeRank=", 20);
  v81 = MEMORY[0x1B8C61CD0](&v163, *(a2 + 1297));
  v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, " DedupePriority=", 16);
  v83 = MEMORY[0x1B8C61C90](v82, *(a2 + 8));
  v84 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v83, " Layer=", 7);
  v85 = MEMORY[0x1B8C61CC0](v84, *(a2 + 777));
  if (*(a2 + 776))
  {
    v86 = " (selectable)";
  }

  else
  {
    v86 = "";
  }

  if (*(a2 + 776))
  {
    v87 = 13;
  }

  else
  {
    v87 = 0;
  }

  v88 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v85, v86, v87);
  v89 = atomic_load(a2 + 1328);
  if (v89)
  {
    v90 = " (SELECTED)";
  }

  else
  {
    v90 = "";
  }

  if (v89)
  {
    v91 = 11;
  }

  else
  {
    v91 = 0;
  }

  v92 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v88, v90, v91);
  v93 = atomic_load(a2 + 1329);
  if (v93)
  {
    v94 = " (PREV_SELECTED)";
  }

  else
  {
    v94 = "";
  }

  if (v93)
  {
    v95 = 16;
  }

  else
  {
    v95 = 0;
  }

  v96 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v92, v94, v95);
  v97 = atomic_load(a2 + 481);
  if (v97)
  {
    v98 = " (occludable)";
  }

  else
  {
    v98 = "";
  }

  if (v97)
  {
    v99 = 13;
  }

  else
  {
    v99 = 0;
  }

  v100 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v96, v98, v99);
  if (*(a2 + 848))
  {
    v101 = " (OVERRIDDEN)";
  }

  else
  {
    v101 = "";
  }

  if (*(a2 + 848))
  {
    v102 = 13;
  }

  else
  {
    v102 = 0;
  }

  v103 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v100, v101, v102);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v103, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Staging: State=", 17);
  v104 = *(a2 + 844);
  if (v104 > 2)
  {
    v105 = "<NONE>";
  }

  else
  {
    v105 = off_1E7B39578[v104];
  }

  v106 = strlen(v105);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v105, v106);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " Outcome=", 9);
  md::stringFromLabelOutcome(&v172, *(a2 + 845));
  if ((v174 & 0x80u) == 0)
  {
    v107 = &v172;
  }

  else
  {
    v107 = v172;
  }

  if ((v174 & 0x80u) == 0)
  {
    v108 = v174;
  }

  else
  {
    v108 = v173;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v107, v108);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n", 1);
  if (v174 < 0)
  {
    operator delete(v172);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Display: State=", 17);
  v109 = *(a2 + 1152);
  if (v109 > 3)
  {
    v110 = "<NONE>";
  }

  else
  {
    v110 = off_1E7B39590[v109];
  }

  v111 = strlen(v110);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v110, v111);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " Outcome=", 9);
  md::stringFromLabelOutcome(&v172, *(a2 + 1153));
  if ((v174 & 0x80u) == 0)
  {
    v112 = &v172;
  }

  else
  {
    v112 = v172;
  }

  if ((v174 & 0x80u) == 0)
  {
    v113 = v174;
  }

  else
  {
    v113 = v173;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v112, v113);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " isDisplayLabel=", 16);
  v114 = MEMORY[0x1B8C61C80](&v163, *(a2 + 1339));
  v115 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v114, " isActiveForDisplay=", 20);
  v116 = MEMORY[0x1B8C61C80](v115, *(a2 + 1340));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v116, "\n", 1);
  if (v174 < 0)
  {
    operator delete(v172);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  BalloonBehavior=", 18);
  v117 = *(a2 + 1154);
  if (v117 > 2)
  {
    v118 = "";
  }

  else
  {
    v118 = off_1E7B3CBF0[v117];
  }

  std::string::basic_string[abi:nn200100]<0>(&v172, v118);
  if ((v174 & 0x80u) == 0)
  {
    v119 = &v172;
  }

  else
  {
    v119 = v172;
  }

  if ((v174 & 0x80u) == 0)
  {
    v120 = v174;
  }

  else
  {
    v120 = v173;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v119, v120);
  if (v174 < 0)
  {
    operator delete(v172);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " ExtCategory=", 13);
  v121 = *(a2 + 1293);
  if (v121 > 3)
  {
    v122 = "";
  }

  else
  {
    v122 = off_1E7B3CB88[v121];
  }

  std::string::basic_string[abi:nn200100]<0>(&v172, v122);
  if ((v174 & 0x80u) == 0)
  {
    v123 = &v172;
  }

  else
  {
    v123 = v172;
  }

  if ((v174 & 0x80u) == 0)
  {
    v124 = v174;
  }

  else
  {
    v124 = v173;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v123, v124);
  if (v174 < 0)
  {
    operator delete(v172);
  }

  if ((*(**(a2 + 1) + 72))(*(a2 + 1)) && (*((*(**(a2 + 1) + 72))(*(a2 + 1)) + 239) & 1) == 0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "Clustering=Disabled", 19);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n", 1);
  v125 = *(a2 + 1);
  v126 = *(a2 + 12);
  v127 = atomic_load(a2 + 1328);
  v128 = (*(*v125 + 568))(v125, v126, 0, v127 & 1, a3);
  v129 = *v128;
  if (*v128 && *(v129 + 125) == 1 && *(v129 + 136) != 255)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Visible=", 10);
    MEMORY[0x1B8C61C80](&v163, *(*v128 + 140));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " text=", 6);
    v130 = *(*v128 + 241);
    if (v130 > 3)
    {
      v131 = "";
    }

    else
    {
      v131 = off_1E7B3CBA8[v130];
    }

    std::string::basic_string[abi:nn200100]<0>(&v172, v131);
    if ((v174 & 0x80u) == 0)
    {
      v145 = &v172;
    }

    else
    {
      v145 = v172;
    }

    if ((v174 & 0x80u) == 0)
    {
      v146 = v174;
    }

    else
    {
      v146 = v173;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v145, v146);
    if (v174 < 0)
    {
      operator delete(v172);
    }

    if (*(a2 + 1291) == 2)
    {
      v147 = *v128;
      v148 = *(*v128 + 264);
      if (!v148)
      {
        v149 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*v128);
        v148 = *v149;
        *(v147 + 264) = *v149;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " road=", 6);
      if ((*(a2 + 1362) & 1) != 0 || v148[56] == 1)
      {
        v150 = v148[60];
      }

      else
      {
        v150 = 0;
      }

      MEMORY[0x1B8C61C80](&v163, v150);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " anno=", 6);
      if ((*(a2 + 1362) & 1) != 0 || v148[56] == 1)
      {
        v151 = v148[59];
      }

      else
      {
        v151 = 0;
      }

      MEMORY[0x1B8C61C80](&v163, v151);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " shld=", 6);
      if ((*(a2 + 1362) & 1) != 0 || v148[56] == 1)
      {
        v152 = v148[58];
      }

      else
      {
        v152 = 0;
      }

      MEMORY[0x1B8C61C80](&v163, v152);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, " arrw=", 6);
      if ((*(a2 + 1362) & 1) != 0 || v148[56] == 1)
      {
        v153 = v148[57];
      }

      else
      {
        v153 = 0;
      }

      MEMORY[0x1B8C61C80](&v163, v153);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n", 1);
    v154 = md::LabelStyle::textStyleGroup(*v128, 0);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  StyleFont: ", 13);
    v155 = (v154 + 72);
    if (*(v154 + 95) < 0)
    {
      v155 = *(v154 + 72);
    }

    v156 = strlen(v155);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v155, v156);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "/", 1);
    *(&v165[0].__locale_ + *(v163 - 24)) = 2;
    std::ostream::operator<<();
    if (*(v154 + 96) != 0.0)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "/", 1);
      std::ostream::operator<<();
    }

    if (*(v154 + 109) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "/up", 3);
    }

    if (*(v154 + 108) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "/ri", 3);
    }

    if (*(v154 + 112) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "/sc", 3);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "    font:", 9);
    md::FontOptions::debugString(&v172, (v154 + 72), *[*(a3 + 96) grlFontManager]);
    if ((v174 & 0x80u) == 0)
    {
      v157 = &v172;
    }

    else
    {
      v157 = v172;
    }

    if ((v174 & 0x80u) == 0)
    {
      v158 = v174;
    }

    else
    {
      v158 = v173;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v157, v158);
    v159 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n", 1);
    if (v174 < 0)
    {
      v160 = v172;
      v161 = mdm::zone_mallocator::instance(v159);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v161, v160);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "No Style\n", 9);
  }

  v132 = *(a2 + 44);
  if (v132 && *(v132 + 52) == 4)
  {
    v133 = *(v132 + 56);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "  Collided with '", 17);
    md::LabelFeature::debugName(&v172, *(v133 + 8));
    v134 = (v174 & 0x80u) == 0 ? &v172 : v172;
    v135 = (v174 & 0x80u) == 0 ? v174 : v173;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v134, v135);
    v136 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "'\n", 2);
    if (v174 < 0)
    {
      v137 = v172;
      v138 = mdm::zone_mallocator::instance(v136);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v138, v137);
    }
  }

  if (*(a2 + 34))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, "\n", 1);
    (*(**(a2 + 34) + 800))(&v172);
    v139 = (v174 & 0x80u) == 0 ? &v172 : v172;
    v140 = (v174 & 0x80u) == 0 ? v174 : v173;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v163, v139, v140);
    if (v174 < 0)
    {
      operator delete(v172);
    }
  }

  if ((v170 & 0x10) != 0)
  {
    v142 = v169;
    if (v169 < v166)
    {
      v169 = v166;
      v142 = v166;
    }

    locale = v165[4].__locale_;
  }

  else
  {
    if ((v170 & 8) == 0)
    {
      v141 = 0;
      *(this + 23) = 0;
      goto LABEL_188;
    }

    locale = v165[1].__locale_;
    v142 = v165[3].__locale_;
  }

  v141 = v142 - locale;
  if ((v142 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v141 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v141;
  if (v141)
  {
    memmove(this, locale, v141);
  }

LABEL_188:
  *(this + v141) = 0;
  v163 = *MEMORY[0x1E69E54E8];
  *(&v163 + *(v163 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v164 = MEMORY[0x1E69E5548] + 16;
  if (v168 < 0)
  {
    operator delete(__p);
  }

  v164 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v165);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](v171);
}

void md::Label::populateDebugNode(md::Label *this, gdc::DebugTreeNode *a2, const md::LabelManager *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v5, "Position");
  gdc::DebugTreeValue::DebugTreeValue(&__src, *(this + 16));
  gdc::DebugTreeValue::DebugTreeValue(&v7, *(this + 17));
  memset(__dst, 0, sizeof(__dst));
  std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(__dst, &__src, &v8, 2uLL);
}

void sub_1B3252B54(_Unwind_Exception *exception_object)
{
  if (v1 < 0)
  {
    v4 = *(v2 - 216);
    v5 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  if (*(v2 - 225) < 0)
  {
    operator delete(*(v2 - 248));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *md::Label::setPreviouslySelected(md::Label *this, md::LabelManager *a2, int a3)
{
  result = (*(**(this + 1) + 624))(*(this + 1));
  if (result)
  {
    v7 = this + 1329;
    v8 = atomic_load(this + 1329);
    if ((v8 & 1) != a3)
    {
      atomic_store(a3, v7);
      v9 = atomic_load(v7);

      return md::Label::didChangeSelectedState(this, a2, v9 & 1);
    }
  }

  return result;
}

_BYTE *md::Label::didChangeSelectedState(md::Label *this, md::LabelManager *a2, int a3)
{
  result = *(this + 1);
  v6 = atomic_load(this + 1328);
  v7 = atomic_load(this + 1329);
  v8 = v6 & 1;
  v9 = v7 & 1;
  if (result[141] != v8 || result[142] != v9)
  {
    result[141] = v8;
    result[142] = v9;
    result = (*(*result + 552))(result, a2);
  }

  *(this + 1295) = -1;
  *(this + 364) = 127;
  if (a3)
  {

    return md::Label::incTileRefCount(this);
  }

  else if (atomic_fetch_add(this + 1384, 0xFFu) == 1)
  {
    if (*(this + 1352) == 1)
    {
      *(this + 1349) = 1;
      *(this + 164) = 0;
    }

    else
    {

      return md::Label::updateStateMachineForStaging(this, 1, 37);
    }
  }

  return result;
}

_BYTE *md::Label::setSelected(md::Label *this, md::LabelManager *a2, int a3)
{
  result = (*(**(this + 1) + 624))(*(this + 1));
  if (result)
  {
    v7 = atomic_load(this + 1328);
    if ((v7 & 1) != a3)
    {
      atomic_store(a3, this + 1328);
      if (*(*(a2 + 53) + 12) == 1)
      {
        v8 = atomic_load(this + 1328);
        if (v8)
        {
          v9 = *(this + 78);
          *(a2 + 3476) = *(this + 316);
          *(a2 + 868) = v9;
        }

        else
        {
          v10 = *(a2 + 868);
          *(this + 321) = *(a2 + 3476);
          *(this + 317) = v10;
        }
      }

      *(this + 1337) = 1;
      *(this + 1154) = *(this + 846);
      v11 = atomic_load(this + 1328);

      return md::Label::didChangeSelectedState(this, a2, v11 & 1);
    }
  }

  return result;
}

void md::Label::mercatorPointToWorldPoint(uint64_t a1, double *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = *(a1 + 696);
    if (v3)
    {
      if ((*(v3 + 208) & 1) == 0)
      {
        md::GeocentricFrame::_updateMatrix(*(a1 + 696));
      }
    }

    else
    {
      v4 = *a2 * 6.28318531;
      v5 = exp(a2[1] * 6.28318531 + -3.14159265);
      v6 = atan(v5) * 2.0 + -1.57079633;
      v7 = fmod(v4, 6.28318531);
      v8 = fmod(v7 + 6.28318531, 6.28318531) + -3.14159265;
      __sincos_stret(v6);
      __sincos_stret(v8);
    }
  }
}

void non-virtual thunk toggl::PatternedRibbon::BaseMesh::~BaseMesh(ggl::PatternedRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PatternedRibbon::BaseMesh::~BaseMesh(ggl::PatternedRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::attributesReflection(void)::r = &ggl::PatternedRibbon::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::attributesReflection(void)::r;
    unk_1ED662428 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::PatternedRibbon::BasePipelineState::~BasePipelineState(ggl::PatternedRibbon::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::PatternedRibbon::BasePipelineSetup::typedReflection(ggl::PatternedRibbon::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::typedReflection();
    ggl::PatternedRibbon::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED662518 = &ggl::PatternedRibbon::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED662520 = 0;
    {
      ggl::PatternedRibbon::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1ED6624F0 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED6624F8 = ggl::PatternedRibbon::Style::reflection(void)::reflection;
      unk_1ED662500 = ggl::Tile::Clipping::reflection(void)::reflection;
    }

    qword_1ED662528 = &ggl::PatternedRibbon::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1ED662530 = xmmword_1B33B11D0;
  }
}

void ggl::PatternedRibbon::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::PatternedRibbon::WriteStencilBasePipelineState::~WriteStencilBasePipelineState(ggl::PatternedRibbon::WriteStencilBasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::PatternedRibbon::WriteStencilBasePipelineSetup::typedReflection(ggl::PatternedRibbon::WriteStencilBasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::typedReflection();
    ggl::PatternedRibbon::WriteStencilBasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PatternedRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1EB845FD8 = &ggl::PatternedRibbon::pipelineDataWriteStencilBasePipelineDeviceStructs(void)::ref;
    qword_1EB845FE0 = 0;
    {
      ggl::PatternedRibbon::pipelineDataWriteStencilBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB846128 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB846130 = ggl::PatternedRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB845FE8 = &ggl::PatternedRibbon::pipelineDataWriteStencilBasePipelineConstantStructs(void)::ref;
    *algn_1EB845FF0 = xmmword_1B33B0910;
  }
}

void ggl::PatternedRibbon::WriteStencilBasePipelineSetup::~WriteStencilBasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

id *std::__copy_impl::operator()[abi:nn200100]<VKScreenLabelFeature * {__strong}*,VKScreenLabelFeature * {__strong}*,VKScreenLabelFeature * {__strong}*>(void **a1, void **a2, id *location)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5++;
      objc_storeStrong(location++, v6);
    }

    while (v5 != a2);
  }

  return location;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<VKScreenLabelFeature * {__strong},std::shared_ptr<md::LabelFeature>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<VKScreenLabelFeature * {__strong},std::shared_ptr<md::LabelFeature>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::ScreenLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A48170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void layoutRenderItemsForGroup(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, float a9, float a10, float a11, float a12)
{
  v19 = 56;
  if (a7)
  {
    v19 = 72;
  }

  v20 = (*a2 + v19);
  v21 = *v20;
  v22 = v20[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v92, v21, v22);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v95 == 1)
  {
    v25 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a4 + 16), *(*(a4 + 16) + 8));
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)162,(gss::PropertyID)496>(&v87, v25, &v92, a11);
    v80 = v87;
    if (a11 >= 0x17)
    {
      v26 = 23;
    }

    else
    {
      v26 = a11;
    }

    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v92[3], 299, v26, 2u, 0);
    v27 = v80;
  }

  else
  {
    v24.n128_u32[0] = 1.0;
    v27 = 0uLL;
  }

  v28 = *(*a2 + 32);
  v81 = *(*a2 + 40);
  if (v28 != v81)
  {
    v29 = vmulq_n_f32(v27, a12);
    v29.i32[3] = vmuls_lane_f32(a9, v29, 3);
    v79 = v29;
    v30 = 96;
    if (a9 < 1.0)
    {
      v30 = 112;
    }

    v78 = (a1 + v30);
    v31 = 1.0 - v24.n128_f32[0];
    do
    {
      v32 = *(a1 + 24);
      v33 = v32[1];
      if (v33 == *v32)
      {
        v35 = v32[11];
        if (!v35)
        {
          goto LABEL_63;
        }

        v23 = (*(*v35 + 48))(v35);
        v34 = v23;
      }

      else
      {
        v34 = *(v33 - 8);
        v32[1] = v33 - 8;
      }

      v37 = v32[5];
      v36 = v32[6];
      if (v37 >= v36)
      {
        v39 = v32[4];
        v40 = (v37 - v39) >> 3;
        if ((v40 + 1) >> 61)
        {
          goto LABEL_64;
        }

        v41 = v36 - v39;
        v42 = v41 >> 2;
        if (v41 >> 2 <= (v40 + 1))
        {
          v42 = v40 + 1;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v43 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        v90 = v32 + 7;
        if (v43)
        {
          v44 = ggl::zone_mallocator::instance(v23);
          v45 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(v44, v43);
        }

        else
        {
          v45 = 0;
        }

        v47 = &v45[8 * v43];
        v46 = &v45[8 * v40];
        *v46 = v34;
        v38 = v46 + 1;
        v48 = v32[4];
        v49 = v32[5] - v48;
        v50 = v46 - v49;
        memcpy(v46 - v49, v48, v49);
        v51 = v32[4];
        v32[4] = v50;
        v32[5] = v38;
        v52 = v32[6];
        v32[6] = v47;
        v88 = v51;
        v89 = v52;
        v87.i64[0] = v51;
        v87.i64[1] = v51;
        std::__split_buffer<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v87);
      }

      else
      {
        *v37 = v34;
        v38 = v37 + 1;
      }

      v32[5] = v38;
      v87.i64[0] = v34;
      v53 = v32[15];
      if (!v53)
      {
LABEL_63:
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_64:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      (*(*v53 + 48))(v53, &v87);
      v54 = *(v34 + 17);
      *(v54 + 24) = 0;
      v55 = *a3;
      *(v54 + 16) = *a3;
      v56 = *(v34 + 29);
      v57 = a3[1];
      if (v57)
      {
        atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
      }

      v58 = *(v56 + 24);
      *(v56 + 16) = v55;
      *(v56 + 24) = v57;
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v58);
      }

      **(v34 + 21) = *v28;
      v59 = v78[1];
      v87.i64[0] = *v78;
      v87.i64[1] = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v34, &v87);
        std::__shared_weak_count::__release_shared[abi:nn200100](v59);
      }

      else
      {
        ggl::PipelineSetup::setState(v34, &v87);
      }

      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v87, *(*(v34 + 17) + 32));
      v60 = 0;
      v61 = v91;
      v62 = v91;
      *v91 = a10;
      v63 = v62 + 4;
      v64 = *a2;
      v65 = *a2 + 92;
      do
      {
        v63[v60] = *(v65 + v60 * 4);
        ++v60;
      }

      while (v60 != 3);
      for (i = 0; i != 3; ++i)
      {
        v96.f32[i] = *(v64 + i * 4 + 104) - *(v64 + i * 4 + 92);
      }

      v67 = fmaxf(v97, 0.0);
      v61[4] = vmaxnm_f32(v96, 0);
      v61[5].f32[0] = v67;
      ggl::BufferMemory::~BufferMemory(&v87);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v87, *(*(v34 + 17) + 48));
      v68 = 0;
      v69 = v91;
      *v91 = v79;
      do
      {
        v69[v68 + 92] = *(a6 + v68 * 4);
        ++v68;
      }

      while (v68 != 3);
      v69[89] = 1.0;
      v69[88] = v31;
      ggl::BufferMemory::~BufferMemory(&v87);
      v85 = v28;
      v70 = v28[2];
      v71 = v28[3];
      while (v70 != v71)
      {
        v72 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(a1 + 88));
        v72[3] = *(a1 + 64);
        v72[4] = v34;
        v72[8] = *v70;
        v72[6] = 0;
        ggl::Batcher::clearRanges((a1 + 280));
        v75 = v70[1];
        v74 = v70[2];
        while (v75 != v74)
        {
          if (std::function<BOOL ()(unsigned long long)>::operator()(*(a8 + 24), *(v75 + 16)))
          {
            ggl::Batcher::addRange(a1 + 280, v75);
          }

          v75 += 24;
        }

        v76 = ggl::Batcher::commit((a1 + 280), 0, v73);
        v77 = *v76;
        v72[11] = *v76;
        v72[12] = (v76[1] - v77) >> 4;
        v87.i64[0] = v72;
        v23 = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a5 + 72), &v87);
        v70 += 4;
      }

      v28 = v85 + 5;
    }

    while (v85 + 5 != v81);
  }

  if (v95 == 1)
  {
    (*(*v92 + 56))(v92, v24);
  }

  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v94);
  }

  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v93);
  }
}

void sub_1B3254164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__value_func<BOOL ()(unsigned long long)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__func<md::BuildingRenderLayer::layout2DLandmarks(std::vector<md::BuildingTileDataRenderable *> const&,ggl::CommandBuffer *,md::LayoutContext const&,md::BuildingPass)::$_3,std::allocator<md::BuildingRenderLayer::layout2DLandmarks(std::vector<md::BuildingTileDataRenderable *> const&,ggl::CommandBuffer *,md::LayoutContext const&,md::BuildingPass)::$_3>,BOOL ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A483A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::BuildingRenderLayer::layout2DLandmarks(std::vector<md::BuildingTileDataRenderable *> const&,ggl::CommandBuffer *,md::LayoutContext const&,md::BuildingPass)::$_2,std::allocator<md::BuildingRenderLayer::layout2DLandmarks(std::vector<md::BuildingTileDataRenderable *> const&,ggl::CommandBuffer *,md::LayoutContext const&,md::BuildingPass)::$_2>,BOOL ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A48358;
  a2[1] = v2;
  return result;
}

void ggl::TextureAlphaMask::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, char *a2)
{
  if (a1)
  {
    v4 = a2 + 24;
    std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>>(v3, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }
}

uint64_t md::LabelLinePosition::section(md::LabelLinePosition *this)
{
  if (*this && *(this + 10) == *(*this + 16) && (v1 = *(this + 3)) != 0 && (*(this + 17) & 0x80000000) == 0 && (v2 = *v1) != 0)
  {
    return *(v2 + 44);
  }

  else
  {
    return 0;
  }
}

void md::PointLabelFeatureBase::debugPopulateStyleAttributes(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v31.__shared_owners_ = 0;
  v31.__shared_weak_owners_ = 0;
  v32 = 0;
  (*(*a1 + 584))(a1, &v31.__shared_owners_, *(a3 + 336) + 184);
  shared_owners = v31.__shared_owners_;
  shared_weak_owners = v31.__shared_weak_owners_;
  if (v31.__shared_owners_ != v31.__shared_weak_owners_)
  {
    v29 = a2 + 3;
    while (1)
    {
      v6 = *shared_owners;
      if (*shared_owners)
      {
        break;
      }

LABEL_42:
      shared_owners += 2;
      if (shared_owners == shared_weak_owners)
      {
        goto LABEL_43;
      }
    }

    v7 = *(v6 + 240);
    v9 = *(v6 + 248);
    v8 = (v6 + 240);
    v10 = gss::FeatureAttributeSet::hash(v7, v9);
    v11 = v10;
    v12 = a2[1];
    if (v12)
    {
      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = v13.u32[0];
      if (v13.u32[0] > 1uLL)
      {
        v3 = v10;
        if (v10 >= v12)
        {
          v3 = v10 % v12;
        }
      }

      else
      {
        v3 = (v12 - 1) & v10;
      }

      v15 = *(*a2 + 8 * v3);
      if (v15)
      {
        v16 = *v15;
        if (*v15)
        {
          do
          {
            v17 = v16[1];
            if (v17 == v11)
            {
              v10 = gss::FeatureAttributeSet::operator==(v16[2], v16[3], v7, v9);
              if (v10)
              {
                goto LABEL_42;
              }
            }

            else
            {
              if (v14 > 1)
              {
                if (v17 >= v12)
                {
                  v17 %= v12;
                }
              }

              else
              {
                v17 &= v12 - 1;
              }

              if (v17 != v3)
              {
                break;
              }
            }

            v16 = *v16;
          }

          while (v16);
        }
      }
    }

    v18 = mdm::zone_mallocator::instance(v10);
    v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(v18);
    *v19 = 0;
    *(v19 + 1) = v11;
    gss::FeatureAttributeSet::FeatureAttributeSet(v19 + 2, v8);
    v20 = (a2[5] + 1);
    v21 = *(a2 + 12);
    if (!v12 || (v21 * v12) < v20)
    {
      v22 = (v12 & (v12 - 1)) != 0;
      if (v12 < 3)
      {
        v22 = 1;
      }

      v23 = v22 | (2 * v12);
      v24 = vcvtps_u32_f32(v20 / v21);
      if (v23 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__rehash<true>(a2, v25);
      v12 = a2[1];
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v11 >= v12)
        {
          v3 = v11 % v12;
        }

        else
        {
          v3 = v11;
        }
      }

      else
      {
        v3 = (v12 - 1) & v11;
      }
    }

    v26 = *a2;
    v27 = *(*a2 + 8 * v3);
    if (v27)
    {
      *v19 = *v27;
    }

    else
    {
      *v19 = *v29;
      *v29 = v19;
      *(v26 + 8 * v3) = v29;
      if (!*v19)
      {
LABEL_41:
        ++a2[5];
        goto LABEL_42;
      }

      v28 = *(*v19 + 8);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v28 >= v12)
        {
          v28 %= v12;
        }
      }

      else
      {
        v28 &= v12 - 1;
      }

      v27 = (*a2 + 8 * v28);
    }

    *v27 = v19;
    goto LABEL_41;
  }

LABEL_43:
  v31.__vftable = &v31.__shared_owners_;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
}

void sub_1B3254B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, char a14)
{
  a13 = &a14;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a13);
  _Unwind_Resume(a1);
}

void md::PointLabelFeatureBase::debugPopulateAttributeStrings(md::PointLabelFeatureBase *this, NSMutableSet *a2, const md::LabelManager *a3, const md::LabelIdentifier *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v15.__shared_owners_ = 0;
  v15.__shared_weak_owners_ = 0;
  v16 = 0;
  (*(*this + 584))(this, &v15.__shared_owners_, *(a3 + 42) + 184);
  shared_owners = v15.__shared_owners_;
  for (i = v15.__shared_weak_owners_; shared_owners != i; shared_owners += 2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = md::HighlightHelper::debugAttributesToString((*shared_owners + 240), v7);
    v12 = [v10 stringWithFormat:@"ext:{%@}", v11];
    [(NSMutableSet *)v6 addObject:v12];

    v13 = md::HighlightHelper::debugClientAttributesToString(*shared_owners);
    if (v13)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", v13];
      [(NSMutableSet *)v6 addObject:v14];
    }
  }

  v15.__vftable = &v15.__shared_owners_;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v15);
}

void sub_1B3254D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char a12)
{
  a11 = &a12;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);

  _Unwind_Resume(a1);
}

float32x2_t *md::PointLabelFeatureBase::debugDraw(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  if (*(*(a2 + 232) + 17))
  {
    v18 = *md::LabelPoint::mercatorPoint((a1 + 192));
    v19 = 0;
  }

  else
  {
    md::LabelPoint::geocentricPoint((a1 + 192));
    v18 = *(a1 + 192);
    v19 = *(a1 + 208);
  }

  v6 = 0;
  v7 = (a2 + 1296);
  do
  {
    v8 = 0;
    v9 = 0.0;
    v10 = v7;
    do
    {
      v11 = *v10;
      v10 += 4;
      v9 = v9 + *(&v18 + v8) * v11;
      v8 += 8;
    }

    while (v8 != 24);
    v20.f64[v6] = *(a2 + 1296 + 8 * v6 + 96) + v9;
    ++v6;
    ++v7;
  }

  while (v6 != 4);
  __asm { FMOV            V1.2D, #1.0 }

  a3[1] = vcvt_f32_f64(vmulq_f64(v20, vdivq_f64(_Q1, vdupq_lane_s64(v21, 0))));

  return ggl::DebugConsole::drawSymbol(a3, 3);
}

BOOL md::PointLabelFeatureBase::containsPoint(uint64_t a1, uint64_t a2, float64x2_t *a3, double *a4, _DWORD *a5)
{
  v7 = vsubq_f64(*md::LabelPoint::mercatorPoint((a1 + 192)), *a3);
  v8 = vaddvq_f64(vmulq_f64(v7, v7));
  v9 = *a4 * *a4;
  if (v8 < v9)
  {
    *a4 = sqrt(v8);
    *a5 = 1;
  }

  return v8 < v9;
}

uint64_t md::PointLabelFeatureBase::updatePointElevation(md::PointLabelFeatureBase *this, const md::ElevationTileData *a2, md::LabelPoint *a3, md::LabelPoint *a4)
{
  result = (*(*this + 64))(this, a2, a3, a4);
  if (result && *(this + 169) > *a2)
  {
    v8 = *md::LabelPoint::mercatorPoint(a3);
    v9 = *(md::LabelPoint::mercatorPoint(a3) + 8);
    v10[0] = v8;
    v10[1] = v9;
    v10[2] = 0;
    result = (*(*this + 56))(this, v10, 2);
    if ((result & 0x100000000) != 0)
    {
      *a2 = *(this + 169);
      *(a3 + 10) = result;
    }
  }

  return result;
}

void sub_1B325513C(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  v20 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v20, v18);
  v22 = mdm::zone_mallocator::instance(v21);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v22, v17);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(a1);
}

void md::PointLabelFeatureBase::newBalloonWithDotPart(md::PartCreationContext const&)::$_0::operator()(uint64_t a1, uint64_t *a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(v2 + 104), *(v2 + 112));
  }

  else
  {
    v3 = *(v2 + 104);
  }

  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v4, v2 + 128);
  md::LabelStyle::pointIconImageKey();
}

void sub_1B325553C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void ggl::FoggedSpecularLandmark::LandmarkPipelineSetup::~LandmarkPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::DaVinciGroundRenderLayer::useNewRenderableCollector(md::DaVinciGroundRenderLayer *this)
{
  {
    md::DaVinciGroundRenderLayer::useNewRenderableCollector(void)::$_0::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  if (md::DaVinciGroundRenderLayer::useNewRenderableCollector(void)::$_0::operator() const(void)::cached_result == 1)
  {
    v2 = *(this + 3776);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void md::DaVinciGroundRenderLayer::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = md::LayoutContext::get<md::ElevationContext>(v5);
  v7 = v6[4];
  v8 = v6[5];
  v9 = md::LayoutContext::get<md::CameraContext>(v5);
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    v12 = v9;
    do
    {
      v13 = *v10;
      md::BaseMapTileDataRenderable::adjustZScale(*v10, v7, v8);
      v14 = gdc::CameraView::position(v12);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v29, *(v13 + 57));
      v15 = *(v14 + 16);
      v23 = *v14;
      v24 = v15;
      v25 = 0x3FF0000000000000;
      v16 = gm::operator*<double,4,4,1>(v13 + 59, &v23);
      v17 = 0;
      *v26 = v16;
      v26[1] = v18;
      v26[2] = v19;
      v26[3] = v20;
      do
      {
        v21 = *&v26[v17];
        *(&v27 + v17++) = v21;
      }

      while (v17 != 3);
      v22 = v30;
      *v30 = v27;
      *(v22 + 2) = v28;
      ggl::BufferMemory::~BufferMemory(v29);
      ++v10;
    }

    while (v10 != v11);
  }

  md::CartographicTiledRenderLayer<md::DaVinciGroundRenderable>::updateWithContext(v9, a2, a3);
}

void *md::DaVinciGroundRenderLayer::renderablesInView(void *a1)
{
  if (!(*(*a1 + 200))(a1))
  {
    return a1 + 34;
  }

  result = a1 + 473;
  a1[474] = a1[473];
  return result;
}

void md::DaVinciGroundRenderLayer::layout(md::DaVinciGroundRenderLayer *this, const md::LayoutContext *a2)
{
  v2 = this;
  v569 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3704);
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (GEOGetVectorKitPerformanceLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
      }

      v4 = GEOGetVectorKitPerformanceLog_log;
      v5 = v4;
      v6 = *(a2 + 10);
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
      {
        buf.i16[0] = 0;
        v7 = "DaVinciBuildingsLayout";
        goto LABEL_19;
      }

      goto LABEL_20;
    }

LABEL_10:
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      goto LABEL_532;
    }

    goto LABEL_11;
  }

  if (v3 == 3)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v10 = GEOGetVectorKitPerformanceLog_log;
    v5 = v10;
    v6 = *(a2 + 10);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      buf.i16[0] = 0;
      v7 = "DaVinciNonTiledLayout";
LABEL_19:
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, v7, &unk_1B3514CAA, &buf, 2u);
    }

LABEL_20:
  }

  else if (v3 == 4)
  {
    goto LABEL_10;
  }

  md::DaVinciGroundRenderResources::resetPools((v2 + 568));
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v2 + 448);
  for (i = 3624; i != 3704; i += 40)
  {
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v2 + i));
  }

  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v2 + 66);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v2 + 56);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v2 + 51);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v2 + 61);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v2 + 46);
  v12 = (*(*v2 + 96))(v2, a2);
  v13 = *(a2 + 1);
  v14 = md::LayoutContext::get<md::SceneContext>(v13);
  v15 = md::LayoutContext::get<md::MeshRenderableContext>(v13);
  v16.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v16.__d_.__rep_;
  v18 = *(v2 + 3752);
  v19 = v18 == 1 && v16.__d_.__rep_ - *(v2 + 468) > 0x2540BE3FFLL;
  v470 = v2;
  if ((*(v2 + 3760) & v18) == 1 && !v19)
  {
    goto LABEL_80;
  }

  if (*(v2 + 3704) != 1)
  {
    goto LABEL_80;
  }

  v20 = *v14;
  if (!md::SceneStateManager::isFinishedLoadingRequiredLayers(v20))
  {
    goto LABEL_80;
  }

  if (md::SceneStateManager::isFinishedLoadingRequiredLayers(v20) && v12[1] == *v12)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v21 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      buf.i16[0] = 0;
      _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_ERROR, "Missing DaVinciGroundRenderables for ground mesh layer", &buf, 2u);
    }
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](buf.i64);
  v22 = *v12;
  v23 = v12[1];
  if (*v12 == v23)
  {
    goto LABEL_70;
  }

  v24 = 0;
  do
  {
    if (*(v470 + 3704) != 1)
    {
      goto LABEL_57;
    }

    v25 = *(*v22 + 392);
    v26 = *(v25 + 166);
    v27 = md::MeshRenderableContext::renderablesForRegistry(v15, v26);
    if (v27[1] != *v27)
    {
      goto LABEL_57;
    }

    v28 = gdc::Registry::storage<md::components::Visibility>(v26);
    v29 = v28[7];
    v30 = v28[8];
    if (v29 == v30)
    {
      v31 = 0;
      if (v24)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v31 = 0;
      v32 = v28[10];
      do
      {
        v33 = *v32++;
        v31 += v33 ^ 1;
        v29 += 8;
      }

      while (v29 != v30);
      if (v24)
      {
LABEL_47:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, " | ", 3);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, "Key: ", 5);
    FillRect = grl::IconMetricsRenderResult::getFillRect(v25);
    gdc::LayerDataRequestKey::keysInt32Str(__p, FillRect);
    if (__p[23] >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = *__p;
    }

    if (__p[23] >= 0)
    {
      v36 = __p[23];
    }

    else
    {
      v36 = *&__p[8];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, v35, v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, ", ", 2);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, "Has mesh errors: ", 17);
    v37 = MEMORY[0x1B8C61C50](&buf, *(v25 + 117) != *(v25 + 118));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ", ", 2);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, "MeshInstance count: ", 20);
    v38 = gdc::Registry::storage<md::components::MeshInstance>(*(v25 + 166));
    v39 = MEMORY[0x1B8C61CB0](&buf, 0x6DB6DB6DB6DB6DB7 * ((*(v38 + 88) - *(v38 + 80)) >> 4));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, ", ", 2);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, "PendingMaterial count: ", 23);
    v40 = gdc::Registry::storage<md::components::PendingMaterial>(*(v25 + 166));
    v41 = MEMORY[0x1B8C61CB0](&buf, (*(v40 + 88) - *(v40 + 80)) >> 3);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, ", ", 2);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf, "Invisible MeshInstances count: ", 31);
    MEMORY[0x1B8C61CB0](&buf, v31);
    ++v24;
LABEL_57:
    v22 += 8;
  }

  while (v22 != v23);
  if (v24)
  {
    if ((*(v470 + 3752) & 1) == 0)
    {
      *(v470 + 3752) = 1;
    }

    *(v470 + 3744) = rep;
    *(v470 + 3760) = 1;
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v42 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v44 = *v12;
      v43 = v12[1];
      std::ostringstream::str[abi:nn200100](&v549, &buf);
      v45 = v550 >= 0 ? &v549 : v549;
      *__p = 134218498;
      *&__p[4] = v24;
      *&__p[12] = 2048;
      *&__p[14] = (v43 - v44) >> 3;
      *&__p[22] = 2080;
      *&__p[24] = v45;
      _os_log_impl(&dword_1B2754000, v42, OS_LOG_TYPE_ERROR, "Missing MeshRenderables for ground mesh layer for (%lu/%lu) of ground tiles. Tile debug info: (%s)", __p, 0x20u);
      if (v550 < 0)
      {
        operator delete(v549);
      }
    }

    v2 = v470;
    goto LABEL_77;
  }

LABEL_70:
  v2 = v470;
  if (*(v470 + 3760) == 1)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v46 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&dword_1B2754000, v46, OS_LOG_TYPE_INFO, "No longer missing MeshRenderables for ground mesh layer.", __p, 2u);
    }
  }

  *(v470 + 3760) = 0;
LABEL_77:
  buf.i64[0] = *MEMORY[0x1E69E54E8];
  *(buf.i64 + *(buf.i64[0] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  buf.i64[1] = MEMORY[0x1E69E5548] + 16;
  if (v507 < 0)
  {
    operator delete(v506);
  }

  buf.i64[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v499);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](v508);
LABEL_80:
  v47 = *(*(v2 + 5) + 24);
  v48 = *(a2 + 1);
  v49 = md::LayoutContext::get<md::LightingLogicContext>(v48);
  v50 = *(v49 + 256);
  v51 = gdc::Context::get<md::StyleLogicContext>(v48);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&buf, *(v2 + 272));
  v437 = v51;
  _S0 = *(v51[4] + 272);
  __asm { FCVT            H0, S0 }

  *v502 = _S0;
  ggl::BufferMemory::~BufferMemory(&buf);
  v448 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v515 = gdc::ToCoordinateSystem(*(v448 + 3784));
  if ((v50 & 1) == 0 && *(v2 + 3704) != 3)
  {
    v414 = *(gdc::Camera::cameraFrame(v448) + 32);
    if (v414 >= 0.0001)
    {
      if (*(v2 + 3513) & 1) != 0 && (*(v2 + 3507))
      {
        v51 = *(v47 + 8);
        v434 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3511));
        v453 = v434 ? *(*(v434 + 16) + 8 * *(v2 + 3512)) : 0;
        v435 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3505));
        v447 = v435 ? *(*(v435 + 16) + 8 * *(v2 + 3506)) : 0;
        if (*(v2 + 3510))
        {
          v59 = 3508;
          goto LABEL_87;
        }
      }
    }

    else if (*(v2 + 3522) & 1) != 0 && (*(v2 + 3516))
    {
      v51 = *(v47 + 8);
      v415 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3520));
      v453 = v415 ? *(*(v415 + 16) + 8 * *(v2 + 3521)) : 0;
      v416 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3514));
      v447 = v416 ? *(*(v416 + 16) + 8 * *(v2 + 3515)) : 0;
      if (*(v2 + 3519))
      {
        v59 = 3517;
        goto LABEL_87;
      }
    }

    v436 = std::__throw_bad_optional_access[abi:nn200100]();

    buf.i64[0] = *MEMORY[0x1E69E54E8];
    *(buf.i64 + *(buf.i64[0] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    buf.i64[1] = MEMORY[0x1E69E5548] + 16;
    if (v507 < 0)
    {
      operator delete(v506);
    }

    buf.i64[1] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v499);
    std::ostream::~ostream();
    MEMORY[0x1B8C620C0](v508);
    _Unwind_Resume(v436);
  }

  v51 = *(v47 + 8);
  v57 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3500));
  if (v57)
  {
    v453 = *(*(v57 + 16) + 8 * *(v2 + 3501));
  }

  else
  {
    v453 = 0;
  }

  v58 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3496));
  if (v58)
  {
    v447 = *(*(v58 + 16) + 8 * *(v2 + 3497));
  }

  else
  {
    v447 = 0;
  }

  v59 = 3498;
LABEL_87:
  v60 = v2 + v59;
  v61 = md::FrameGraph::renderQueueForPass(v51, *(v2 + v59));
  if (v61)
  {
    v446 = *(*(v61 + 16) + 8 * v60[1]);
  }

  else
  {
    v446 = 0;
  }

  v62 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3533));
  if (v62)
  {
    v449 = *(*(v62 + 16) + 8 * *(v2 + 3534));
  }

  else
  {
    v449 = 0;
  }

  v63 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3531));
  if (v63)
  {
    v451 = *(*(v63 + 16) + 8 * *(v2 + 3532));
  }

  else
  {
    v451 = 0;
  }

  v64 = md::FrameGraph::renderQueueForPass(v51, *(v2 + 3529));
  if (v64)
  {
    v439 = *(*(v64 + 16) + 8 * *(v2 + 3530));
  }

  else
  {
    v439 = 0;
  }

  v514 = 0;
  v513 = 0;
  if (v449)
  {
    *(v449 + 32) = *(v2 + 415);
  }

  v438 = (*(*v2 + 96))(v2, a2);
  md::DaVinciGroundRenderLayer::createMeshLayoutContext(&buf, v2, a2);
  v440 = *(v49 + 261);
  if (buf.u8[6] == 1)
  {
    v65 = *(v2 + 3704);
    v66 = md::FrameGraph::renderQueueForPass(*(v47 + 8), 0);
    if (v66)
    {
      v67 = 2;
      if (v65 == 2)
      {
        v67 = 3;
      }

      if (v65 == 3)
      {
        v67 = 4;
      }

      v68 = *(*(v66 + 16) + 8 * v67);
    }

    else
    {
      v68 = 0;
    }

    v514 = v68;
    if ((v440 & 1) == 0 && v65 == 1)
    {
      *(v68 + 32) = *(v2 + 413);
    }
  }

  if (BYTE1(v499.__locale_) == 1)
  {
    v69 = *(v2 + 3704);
    v70 = md::FrameGraph::renderQueueForPass(*(v47 + 8), 3);
    if (v70)
    {
      v71 = 2;
      if (v69 == 2)
      {
        v71 = 3;
      }

      if (v69 == 3)
      {
        v71 = 4;
      }

      v72 = *(*(v70 + 16) + 8 * v71);
    }

    else
    {
      v72 = 0;
    }

    v513 = v72;
    if (v69 == 1)
    {
      *(v72 + 32) = *(v2 + 413);
    }
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v47 + 328));
  v73 = *a2;
  v74 = ggl::RenderTarget::width([v73 finalRenderTarget]);
  v75 = *a2;
  v76 = ggl::RenderTarget::height([v75 finalRenderTarget]);
  v77 = v559[0];
  *v559[0] = v74;
  *(v77 + 2) = v76;

  ggl::BufferMemory::~BufferMemory(__p);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v47 + 344));
  v78.i32[0] = *(&buf.i32[2] + 2);
  v79 = vmovl_u16((vmovl_u8(v78).u64[0] & 0xFF01FF01FF01FF01));
  *&v80 = vrev64q_s32(v79).u64[0];
  *(&v80 + 1) = v79.i64[1];
  v81 = v559[0];
  *v559[0] = v80;
  v82 = buf.u8[14];
  *(v81 + 16) = buf.u8[8];
  *(v81 + 20) = v82;
  ggl::BufferMemory::~BufferMemory(__p);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v2 + 237));
  v83 = v559[0];
  *v559[0] = vcvt_f16_f32(v509);
  *(v83 + 8) = vcvt_f16_f32(v510);
  v84 = *(v448 + 122);
  v85 = *(v448 + 121);
  v86 = ((1.0309 / v84) - (1.0 / v85)) / ((1.0 / v84) - (1.0 / v85));
  v87 = 1.0 / (1.0 - v86);
  v88.f32[0] = v86 / (1.0 - v86);
  _S1 = v87 - v88.f32[0];
  _S2 = v506;
  v91 = 1.0 - v504;
  __asm
  {
    FCVT            H2, S2
    FCVT            H1, S1
  }

  *(v83 + 16) = _S2;
  *(v83 + 18) = LOWORD(_S1);
  v88.f32[1] = v91;
  v88.i64[1] = v505;
  *(v83 + 20) = vcvt_f16_f32(v88);
  ggl::BufferMemory::~BufferMemory(__p);
  v92 = *(gdc::Camera::cameraFrame(v448) + 24);
  _D9 = v92 * 0.5;
  _D10 = v92 * 1.5;
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v2 + 249));
  _S0 = v503;
  __asm { FCVT            H0, S0 }

  v96 = v559[0];
  *v559[0] = _S0;
  v96[1] = 7193;
  __asm { FCVT            H9, D9 }

  v96[3] = LOWORD(_D9);
  __asm { FCVT            H10, D10 }

  v96[2] = LOWORD(_D10);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v549, *(v2 + 251));
  _S0 = v503;
  __asm { FCVT            H0, S0 }

  v98 = v553;
  *v553 = _S0;
  v98[1] = 6588;
  v98[3] = LOWORD(_D9);
  v98[2] = LOWORD(_D10);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v535, *(v2 + 253));
  _S0 = v503;
  __asm { FCVT            H0, S0 }

  v100 = *(&v536 + 1);
  **(&v536 + 1) = _S0;
  v100[1] = 2702;
  v100[3] = LOWORD(_D9);
  v100[2] = LOWORD(_D10);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v486, *(v2 + 255));
  _S0 = v503;
  __asm { FCVT            H0, S0 }

  v102 = v489;
  *v489 = _S0;
  v102[1] = COERCE_UNSIGNED_INT(1.0);
  v102[3] = LOWORD(_D9);
  v102[2] = LOWORD(_D10);
  ggl::BufferMemory::~BufferMemory(&v486);
  ggl::BufferMemory::~BufferMemory(v535);
  ggl::BufferMemory::~BufferMemory(&v549);
  ggl::BufferMemory::~BufferMemory(__p);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v2 + 245));
  _S0 = v500;
  _S1 = v501;
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
  }

  v105 = v559[0];
  *v559[0] = _S0;
  *(v105 + 2) = _S1;
  ggl::BufferMemory::~BufferMemory(__p);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v2 + 247));
  _S0 = 1.0 - *(&v502 + 1);
  __asm { FCVT            H0, S0 }

  *v559[0] = LOWORD(_S0);
  ggl::BufferMemory::~BufferMemory(__p);
  v107 = *(a2 + 1);
  v445 = md::LayoutContext::get<md::MeshRenderableContext>(v107);
  v108 = md::LayoutContext::get<md::ElevationContext>(v107);
  p_buf = &buf;
  if (v108[4] <= 0.01 && *(v108 + 3) == 1 && *(v2 + 3704) != 3)
  {
    v110 = *v108;
    v109 = 1;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v454 = v109;
  v496 = v110 & 1;
  v489 = 0u;
  v491 = 0;
  v494 = 0u;
  v493 = 0u;
  v490 = 0u;
  v488 = 0u;
  v487 = 0u;
  v486 = 0x3FF0000000000000;
  *&v489 = 0x3FF0000000000000;
  v492 = 0x3FF0000000000000;
  v495 = 0x3FF0000000000000;
  if ((v440 & 1) == 0)
  {
    v490 = 0uLL;
    v494 = 0uLL;
    v493 = 0uLL;
    v491 = 0;
    v487 = 0uLL;
    v488 = 0uLL;
    v489 = 0x3FF0000000000000uLL;
    v492 = 0x3FF0000000000000;
    if (buf.u8[6] == 1)
    {
      v111 = *(*(*(*(v47 + 8) + 96) + 8 * *(*(v47 + 88) + 32)) + 16);
      md::LightingLogicContext::quantizedShadowViewProjectionMatrix(&v486, v49, *(v111 + 80), *(v111 + 84));
    }
  }

  v484 = 0;
  v483 = 0;
  v485 = 0;
  v112 = *v438;
  v444 = *(v438 + 8);
  *(v2 + 471) = (v444 - *v438) >> 3;
  if (v444 != v112)
  {
    v455 = v2 + 3624;
    v458 = (v2 + 3472);
    v457 = v454 ^ 1;
    while (1)
    {
      v113 = 0;
      v452 = v112;
      v114 = *v112;
      v482 = v114;
      v115 = *(v114 + 49);
      v116 = *(v448 + 699);
      if (!v116)
      {
        v116 = v448;
      }

      v117 = (v116 + 808);
      v118 = (v114 + 96);
      do
      {
        v119 = 0;
        v120 = v118;
        do
        {
          v121 = 0;
          v122 = 0.0;
          v123 = v117;
          do
          {
            v124 = *v123;
            v123 += 4;
            v122 = v122 + *&v120[v121++] * v124;
          }

          while (v121 != 4);
          *&__p[32 * v119++ + 8 * v113] = v122;
          v120 += 4;
        }

        while (v119 != 4);
        ++v113;
        ++v117;
      }

      while (v113 != 4);
      v125 = 0;
      v126 = __p;
      do
      {
        v128 = *v126;
        v127 = v126[1];
        v126 += 2;
        *&v481[v125] = vcvt_hight_f32_f64(vcvt_f32_f64(v128), v127);
        v125 += 16;
      }

      while (v125 != 64);
      geo::Frustum<float>::Frustum(&v549, v481);
      v129 = md::MeshRenderableContext::renderablesForRegistry(v445, *(v115 + 1328));
      std::vector<double>::resize(&v483, (v129[1] - *v129) >> 3);
      v130 = v483;
      v131 = v484;
      if (v483 == v484)
      {
        v131 = v483;
      }

      else
      {
        v132 = 0;
        v133 = (v484 - v483 - 8) >> 3;
        v134 = vdupq_n_s64(v133);
        v135 = xmmword_1B33B0560;
        do
        {
          v136 = vmovn_s64(vcgeq_u64(v134, v135));
          if (v136.i8[0])
          {
            v130[v132 / 2].i64[0] = v132;
          }

          if (v136.i8[4])
          {
            v130[v132 / 2].i64[1] = v132 + 1;
          }

          v132 += 2;
          v135 = vaddq_s64(v135, vdupq_n_s64(2uLL));
        }

        while (((v133 + 2) & 0x3FFFFFFFFFFFFFFELL) != v132);
        *__p = v129;
        *&__p[8] = &p_buf;
        v137 = *v129;
        v138 = v130;
        while (1)
        {
          v139 = *(v137 + 8 * v138->i64[0]);
          v140 = *(*(v139 + 208) + 32);
          if ((v140 - 4) < 0xFFFFFFFD || (v140 - 3) >= 0xFFFFFFFE && (p_buf->i8[3] & 1) == 0)
          {
            break;
          }

          if ((*(v139 + 144) & 1) == 0)
          {
            break;
          }

          v138 = (v138 + 8);
          if (v138 == v131)
          {
            goto LABEL_157;
          }
        }

        v141 = &v131[-1].i8[8];
        if (v138 == v141)
        {
LABEL_155:
          v131 = v138;
        }

        else
        {
          while (1)
          {
            v142 = *(v137 + 8 * *v141);
            v143 = *(*(v142 + 208) + 32);
            if (v143 - 4) >= 0xFFFFFFFD && ((v143 - 3) < 0xFFFFFFFE || (p_buf->i8[3]) && (*(v142 + 144))
            {
              break;
            }

            v141 -= 8;
            if (v141 == v138)
            {
              goto LABEL_155;
            }
          }

          v405 = (v141 - v138) >> 3;
          v406 = v405 + 1;
          if (v405 < 3)
          {
            v407 = 0;
            v410 = 0;
          }

          else
          {
            if (v406 >= 0xFFFFFFFFFFFFFFFLL)
            {
              v407 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v407 = v405 + 1;
            }

            while (1)
            {
              v408 = operator new(8 * v407, MEMORY[0x1E69E5398]);
              if (v408)
              {
                break;
              }

              v409 = v407 >> 1;
              v184 = v407 > 1;
              v407 >>= 1;
              if (!v184)
              {
                v410 = 0;
                v407 = v409;
                goto LABEL_464;
              }
            }

            v410 = v408;
          }

LABEL_464:
          v131 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_2 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v138, v141, __p, v406, v410, v407);
          if (v410)
          {
            operator delete(v410);
            v130 = v483;
          }

          v2 = v470;
        }
      }

LABEL_157:
      v473 = v115;
      *(v2 + 435) = *(v2 + 434);
      if (v131 >= v130)
      {
        v144 = (v131 - v130) >> 3;
      }

      else
      {
        v144 = 0;
      }

      std::vector<md::Label *>::reserve(v458, v144);
      v145 = v130;
      if (v130 == v131)
      {
LABEL_210:
        v181 = a2;
      }

      else
      {
        do
        {
          v146 = *(*v129 + 8 * v145->i64[0]);
          if (*(v146 + 72) == 1 && *(v146 + 146) == 1)
          {
            v147 = *(v2 + 435);
            v148 = *(v2 + 436);
            if (v147 >= v148)
            {
              v150 = (v147 - *v458) >> 3;
              if ((v150 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v151 = v148 - *v458;
              v152 = v151 >> 2;
              if (v151 >> 2 <= (v150 + 1))
              {
                v152 = v150 + 1;
              }

              if (v151 >= 0x7FFFFFFFFFFFFFF8)
              {
                v153 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v153 = v152;
              }

              if (v153)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v153);
              }

              v154 = (8 * v150);
              *v154 = v146;
              v149 = 8 * v150 + 8;
              v155 = *(v470 + 3472);
              v156 = *(v470 + 3480) - v155;
              v157 = v154 - v156;
              memcpy(v154 - v156, v155, v156);
              v158 = *(v470 + 3472);
              *(v470 + 3472) = v157;
              *(v470 + 3480) = v149;
              *(v470 + 3488) = 0;
              v2 = v470;
              if (v158)
              {
                operator delete(v158);
              }
            }

            else
            {
              *v147 = v146;
              v149 = (v147 + 1);
            }

            *(v2 + 435) = v149;
          }

          v145 = (v145 + 8);
        }

        while (v145 != v131);
        *__p = &v549;
        *&__p[8] = v129;
        v159 = v130;
        *&__p[16] = &v482;
        *&__p[24] = &v515;
        while (1)
        {
          v160 = *__p;
          md::DaVinciGroundRenderLayer::adjustedMeshBounds(v535, *(**&__p[8] + 8 * v159->i64[0]), **&__p[16], **&__p[24]);
          v161 = 0;
          v162 = v160;
          do
          {
            v163 = 0;
            v164 = *(v160 + v161 + 8);
            v529.i64[0] = *(v160 + v161);
            v529.i32[2] = v164;
            do
            {
              v165 = &v535[v163 * 4];
              if (*&v529.i32[v163] >= 0.0)
              {
                v165 = &v535[v163 * 4 + 12];
              }

              *(&v541 + v163 * 4) = *v165;
              ++v163;
            }

            while (v163 != 3);
            v166 = 0;
            v167 = 0.0;
            do
            {
              v167 = v167 + (*(v162 + v166) * *(&v541 + v166));
              v166 += 4;
            }

            while (v166 != 12);
            v168 = *(v160 + v161 + 12) + v167;
            if (v168 < 0.0)
            {
              break;
            }

            v161 += 16;
            v162 += 16;
          }

          while (v161 != 96);
          if (v168 < 0.0)
          {
            break;
          }

          v159 = (v159 + 8);
          if (v159 == v131)
          {
            goto LABEL_210;
          }
        }

        do
        {
          v131 = (v131 - 8);
          if (v159 == v131)
          {
            v131 = v159;
            goto LABEL_210;
          }

          v169 = *__p;
          md::DaVinciGroundRenderLayer::adjustedMeshBounds(v535, *(**&__p[8] + 8 * v131->i64[0]), **&__p[16], **&__p[24]);
          v170 = 0;
          v171 = v169;
          do
          {
            v172 = 0;
            v173 = *(v169 + v170 + 8);
            v529.i64[0] = *(v169 + v170);
            v529.i32[2] = v173;
            do
            {
              v174 = &v535[v172 * 4];
              if (*&v529.i32[v172] >= 0.0)
              {
                v174 = &v535[v172 * 4 + 12];
              }

              *(&v541 + v172 * 4) = *v174;
              ++v172;
            }

            while (v172 != 3);
            v175 = 0;
            v176 = 0.0;
            do
            {
              v176 = v176 + (*(v171 + v175) * *(&v541 + v175));
              v175 += 4;
            }

            while (v175 != 12);
            v177 = *(v169 + v170 + 12) + v176;
            if (v177 < 0.0)
            {
              break;
            }

            v170 += 16;
            v171 += 16;
          }

          while (v170 != 96);
        }

        while (v177 < 0.0);
        v178 = (v131 - v159) >> 3;
        v179 = v178 + 1;
        if (v178 < 3)
        {
          v180 = 0;
          v185 = 0;
          v181 = a2;
        }

        else
        {
          if (v179 >= 0xFFFFFFFFFFFFFFFLL)
          {
            v180 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v180 = v178 + 1;
          }

          v181 = a2;
          while (1)
          {
            v182 = operator new(8 * v180, MEMORY[0x1E69E5398]);
            if (v182)
            {
              break;
            }

            v183 = v180 >> 1;
            v184 = v180 > 1;
            v180 >>= 1;
            if (!v184)
            {
              v185 = 0;
              v180 = v183;
              goto LABEL_459;
            }
          }

          v185 = v182;
        }

LABEL_459:
        v131 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_3 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v159, v131->i64, __p, v179, v185, v180);
        if (v185)
        {
          operator delete(v185);
        }

        v2 = v470;
      }

      v479 = v130;
      v480 = v131;
      if (buf.u8[6] == 1 && (v440 & 1) == 0)
      {
        v186 = 0;
        v187 = v482;
        v188 = v482 + 96;
        v189 = &v486;
        do
        {
          v190 = 0;
          v191 = v188;
          do
          {
            v192 = 0;
            v193 = 0.0;
            v194 = v189;
            do
            {
              v195 = *v194;
              v194 += 4;
              v193 = v193 + *&v191[v192] * v195;
              v192 += 8;
            }

            while (v192 != 32);
            *&__p[32 * v190++ + 8 * v186] = v193;
            v191 += 32;
          }

          while (v190 != 4);
          ++v186;
          ++v189;
        }

        while (v186 != 4);
        v196 = 0;
        v197 = __p;
        do
        {
          v199 = *v197;
          v198 = v197[1];
          v197 += 2;
          *&v535[v196] = vcvt_hight_f32_f64(vcvt_f32_f64(v199), v198);
          v196 += 16;
        }

        while (v196 != 64);
        v541 = *v535;
        v542 = *&v535[16];
        v543 = v536;
        v544 = v537;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v187 + 51));
        v200 = v559[0];
        v201 = v542;
        *v559[0] = v541;
        v200[1] = v201;
        v202 = v544;
        v200[2] = v543;
        v200[3] = v202;
        ggl::BufferMemory::~BufferMemory(__p);
      }

      if (BYTE1(v499.__locale_) == 1)
      {
        v203 = 0;
        v204 = v482;
        v205 = v482 + 96;
        v206 = (v448 + 808);
        do
        {
          v207 = 0;
          v208 = v205;
          do
          {
            v209 = 0;
            v210 = 0.0;
            v211 = v206;
            do
            {
              v212 = *v211;
              v211 += 4;
              v210 = v210 + *&v208[v209] * v212;
              v209 += 8;
            }

            while (v209 != 32);
            *&__p[32 * v207++ + 8 * v203] = v210;
            v208 += 32;
          }

          while (v207 != 4);
          ++v203;
          ++v206;
        }

        while (v203 != 4);
        v213 = 0;
        v214 = __p;
        do
        {
          v216 = *v214;
          v215 = v214[1];
          v214 += 2;
          *&v535[v213] = vcvt_hight_f32_f64(vcvt_f32_f64(v216), v215);
          v213 += 16;
        }

        while (v213 != 64);
        v545 = *v535;
        v546 = *&v535[16];
        v547 = v536;
        v548 = v537;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(__p, *(v204 + 53));
        v217 = v559[0];
        v218 = v546;
        *v559[0] = v545;
        v217[1] = v218;
        v219 = v548;
        v217[2] = v547;
        v217[3] = v219;
        ggl::BufferMemory::~BufferMemory(__p);
      }

      v478[0] = &v479;
      v478[1] = v129;
      v478[2] = &v496;
      v220 = md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator()(v478, 257);
      memset(__p, 0, sizeof(__p));
      memset(v559, 0, sizeof(v559));
      LODWORD(v558) = 1065353216;
      LODWORD(v560) = 1065353216;
      memset(v561, 0, sizeof(v561));
      memset(v563, 0, sizeof(v563));
      v562 = 1065353216;
      v564 = 1065353216;
      memset(v565, 0, sizeof(v565));
      memset(v567, 0, sizeof(v567));
      v566 = 1065353216;
      v568 = 1065353216;
      md::DaVinciGroundRenderLayer::layoutMainPass(v2, v181, &buf, __p, v482, v220, v221, v129, v447, v454);
      v222 = md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator()(v478, 258);
      md::DaVinciGroundRenderLayer::layoutMainPass(v2, v181, &buf, __p, v482, v222, v223, v129, v446, v454);
      v224 = v458;
      v225 = md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator()(v478, 259);
      md::DaVinciGroundRenderLayer::layoutMainPass(v2, v181, &buf, __p, v482, v225, v226, v129, v446, v454);
      v227 = md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator()(v478, 256);
      md::DaVinciGroundRenderLayer::layoutMainPass(v2, v181, &buf, __p, v482, v227, v228, v129, v453, v454);
      if (v449)
      {
        v450 = v450 & 0xFFFFFFFFFFFF0000 | 0x104;
        v229 = md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator()(v478, 260);
        md::DaVinciGroundRenderLayer::layoutMainPass(v2, v181, &buf, __p, v482, v229, v230, v129, v449, v454);
      }

      if (v496 == 1 && v451)
      {
        v443 &= 0xFFFFFFFFFFFF0000;
        md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator()(v478, 0);
        v232 = v231;
        v233 = v480;
        v442 = v442 & 0xFFFFFFFFFFFF0000 | 0x103;
        v234 = md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_5::operator()(v231, v480, v129, 259);
        md::DaVinciGroundRenderLayer::layoutMainPass(v2, v181, &buf, __p, v482, v232, v234, v129, v439, v454);
        v441 = v441 & 0xFFFFFFFFFFFF0000 | 0x100;
        v235 = md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_5::operator()(v232, v233, v129, 256);
        md::DaVinciGroundRenderLayer::layoutMainPass(v2, v181, &buf, __p, v482, v232, v235, v129, v451, v454);
      }

      v484 = v483;
      std::vector<double>::resize(&v483, (*(v2 + 435) - *(v2 + 434)) >> 3);
      v236 = v484;
      v475 = v483;
      v459 = v483;
      if (v483 != v484)
      {
        v237 = 0;
        v238 = (v484 - v483 - 8) >> 3;
        v239 = vdupq_n_s64(v238);
        v240 = xmmword_1B33B0560;
        do
        {
          v241 = vmovn_s64(vcgeq_u64(v239, v240));
          if (v241.i8[0])
          {
            v459[v237] = v237;
          }

          if (v241.i8[4])
          {
            v459[v237 + 1] = v237 + 1;
          }

          v237 += 2;
          v240 = vaddq_s64(v240, vdupq_n_s64(2uLL));
        }

        while (((v238 + 2) & 0x3FFFFFFFFFFFFFFELL) != v237);
        v475 = v459;
LABEL_245:
        v242 = *(*v458 + 8 * *v475);
        if (*(v242 + 72) == 1 && ((v457 | *(v242 + 147)) & 1) != 0)
        {
          md::DaVinciGroundRenderLayer::adjustedMeshBounds(v535, v242, v482, v515);
          v243 = 0;
          v244 = &v549;
          while (1)
          {
            v245 = 0;
            v246 = *(&v549 + v243 + 8);
            *&v538[0] = *(&v549 + v243);
            DWORD2(v538[0]) = v246;
            do
            {
              v247 = &v535[v245 * 4];
              if (*(v538 + v245 * 4) >= 0.0)
              {
                v247 = &v535[v245 * 4 + 12];
              }

              v529.i32[v245++] = *v247;
            }

            while (v245 != 3);
            v248 = 0;
            v249 = 0.0;
            do
            {
              v249 = v249 + (*(v244 + v248 * 4) * *&v529.i32[v248]);
              ++v248;
            }

            while (v248 != 3);
            if ((*(&v549 + v243 + 12) + v249) < 0.0)
            {
              break;
            }

            v243 += 16;
            v244 += 2;
            if (v243 == 96)
            {
              if (++v475 != v236)
              {
                goto LABEL_245;
              }

              v475 = v236;
              goto LABEL_273;
            }
          }
        }

        while (v475 != --v236)
        {
          v250 = *(*v458 + 8 * *v236);
          if (*(v250 + 72) == 1 && ((v457 | *(v250 + 147)) & 1) != 0)
          {
            md::DaVinciGroundRenderLayer::adjustedMeshBounds(v535, v250, v482, v515);
            v251 = 0;
            v252 = &v549;
            while (1)
            {
              v253 = 0;
              v254 = *(&v549 + v251 + 8);
              *&v538[0] = *(&v549 + v251);
              DWORD2(v538[0]) = v254;
              do
              {
                v255 = &v535[v253 * 4];
                if (*(v538 + v253 * 4) >= 0.0)
                {
                  v255 = &v535[v253 * 4 + 12];
                }

                v529.i32[v253++] = *v255;
              }

              while (v253 != 3);
              v256 = 0;
              v257 = 0.0;
              do
              {
                v257 = v257 + (*(v252 + v256 * 4) * *&v529.i32[v256]);
                ++v256;
              }

              while (v256 != 3);
              if ((*(&v549 + v251 + 12) + v257) < 0.0)
              {
                break;
              }

              v251 += 16;
              v252 += 2;
              if (v251 == 96)
              {
                v258 = *v475;
                *v475 = *v236;
                *v236 = v258;
                if (++v475 != v236)
                {
                  goto LABEL_245;
                }

                goto LABEL_273;
              }
            }
          }
        }
      }

LABEL_273:
      v259 = *(v2 + 3704);
      v476 = 0;
      v477 = 0uLL;
      if ((v259 & 0xFE) == 2)
      {
        for (j = v459; j != v475; ++j)
        {
          md::DaVinciGroundRenderLayer::adjustedMeshBounds(v535, *(*v458 + 8 * *j), v482, v515);
          for (k = 0; k != 12; k += 4)
          {
            v262 = (&v476 + k);
            *v262 = fminf(*&v535[k], *(&v476 + k));
            v262[3] = fmaxf(*(&v477 + k + 4), *&v535[k + 12]);
          }
        }
      }

      else if (*(v482 + 24) == 255)
      {
        v266 = (*(*v473 + 32))(v473);
        md::GeometryLogic::adjustedMeshBounds(v535, v266, *(v482 + 30));
        v476 = *v535;
        v477 = *&v535[8];
      }

      else
      {
        v263 = (*(*v473 + 32))(v473);
        for (m = 0; m != 12; m += 4)
        {
          *(&v476 + m) = *(v263 + m);
        }

        for (n = 0; n != 12; n += 4)
        {
          *(&v477 + n + 4) = *(v263 + 12 + n);
        }
      }

      v471 = 0;
      v472 = 0;
      v267 = &v514;
      v268 = 1;
      do
      {
        v463 = v268;
        if (v268)
        {
          if (buf.u8[6] != 1)
          {
            goto LABEL_447;
          }
        }

        else if ((BYTE1(v499.__locale_) & 1) == 0)
        {
          break;
        }

        if (*(&v477 + 1) < *&v476 || *(&v477 + 2) < *(&v476 + 1) || *(&v477 + 3) < *&v477)
        {
LABEL_294:
          if (!(v471 & 1 | (*(v2 + 3704) != 3) & (v440 ^ 1)))
          {
            goto LABEL_447;
          }

          v467 = *v267;
          v474 = v482;
          v462 = *(v482 + 24);
          v269 = buf.i8[5];
          v270 = *(v181 + 1);
          v464 = md::LayoutContext::get<md::CameraContext>(v270);
          v271 = *(md::LayoutContext::get<md::LightingLogicContext>(v270) + 256);
          v272 = md::LayoutContext::get<md::ElevationContext>(v270);
          if (v272 && *(v272 + 4) <= 0.01)
          {
            v273 = *(v272 + 3) ^ 1;
          }

          else
          {
            v273 = 1;
          }

          v274 = +[VKDebugSettings sharedSettings];
          v466 = [v274 enableTileClipping];

          v468 = v269 & (v462 == 255);
          if (!((v462 != 255) | v273 & 1 | v269 & 1))
          {
            ggl::RenderItem::RenderItem(v535, "");
            if (!*(v2 + 428))
            {
              md::DaVinciGroundRenderResources::buildShadowPlane((v2 + 568));
            }

            md::InstanceData::InstanceData(&v539, 1);
          }

          if (v459 == v475)
          {
LABEL_446:
            v181 = a2;
            goto LABEL_447;
          }

          v469 = &v455[40 * v472];
          if (v271)
          {
            v283 = 2;
          }

          else
          {
            v283 = 1;
          }

          v465 = v283;
          if (v471)
          {
            v284 = 240;
          }

          else
          {
            v284 = 224;
          }

          v285 = 232;
          if (v471)
          {
            v285 = 248;
          }

          v460 = v285;
          v461 = v284;
          v286 = v459;
          while (2)
          {
            v287 = *v286;
            v288 = *(*v224 + 8 * *v286);
            if (*(v288 + 64) == 1)
            {
              v289 = *(v288 + 48);
              v290 = *(v288 + 56);
              if (!std::__hash_table<md::UniqueRenderID,md::UniqueRenderIDHash,md::UniqueRenderIDKeyEqual,std::allocator<md::UniqueRenderID>>::find<md::UniqueRenderID>(v469, v289, v290))
              {
                std::__hash_table<md::UniqueRenderID,md::UniqueRenderIDHash,md::UniqueRenderIDKeyEqual,std::allocator<md::UniqueRenderID>>::__emplace_unique_key_args<md::UniqueRenderID,md::UniqueRenderID const&>(v469, v289, v290);
                break;
              }

LABEL_445:
              if (++v286 == v475)
              {
                goto LABEL_446;
              }

              continue;
            }

            break;
          }

          if (*(v288 + 8) == 1)
          {
            v291 = *(*v224 + 8 * v287);
            if ((v465 & *(v291 + 368)) == 0)
            {
              goto LABEL_445;
            }

            v292 = *(v291 + 216);
            v293 = *(v291 + 224);
            if (v293)
            {
              atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v294 = (*(*v292 + 360))(v292, *(&v499.__locale_ + 1));
            if ((v294 & 0x100) == 0 || v294)
            {
              if (v293)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v293);
              }

              goto LABEL_334;
            }

LABEL_443:
            if (v293)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v293);
            }

            goto LABEL_445;
          }

LABEL_334:
          v296 = ggl::RenderItem::RenderItem(&v529, "");
          v530 = kShadowPassRenderItemName[v472];
          v297 = *(v288 + 147);
          v298 = *(*(v288 + 208) + 61) == 1;
          v299 = *(v288 + 32);
          if (*(v299 + 16) <= 1u)
          {
            v300 = *(v299 + 20);
          }

          else
          {
            v300 = 0;
          }

          v301 = *(v2 + 3704) != 3;
          if (v466)
          {
            v2 = *(v474 + 32);
            v293 = *(v474 + 33);
            v527 = v2;
            v528 = v293;
            if (v293)
            {
              atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v293 = 0;
            v2 = 0;
            v528 = 0;
            v527 = 0;
          }

          v302 = v301 & v300;
          v303 = *(v288 + 64);
          *&v520[1] = 0x1000000uLL;
          v522 = 0;
          v523 = 2;
          v526 = 0;
          v524 = 0;
          v520[0] = v468;
          v520[15] = v462 != 255;
          v521 = 0;
          v525 = v302;
          v520[8] = v297;
          *(&v524 + 1) = v462 == 255;
          v520[12] = v298;
          HIBYTE(v524) = v471 & 1;
          *(&v524 + 2) = (v2 != 0) & ~v303;
          if (v471)
          {
            if (v462 != 255)
            {
              v304 = *(v470 + 2152);
              v305 = v304[1];
              if (v305 == *v304)
              {
                v316 = v304[11];
                if (!v316)
                {
                  goto LABEL_531;
                }

                v295 = (*(*v316 + 48))(v316, v296);
                v306 = v295;
              }

              else
              {
                v306 = *(v305 - 8);
                v304[1] = v305 - 8;
              }

              v318 = v304[5];
              v317 = v304[6];
              if (v318 >= v317)
              {
                v320 = v304[4];
                v321 = (v318 - v320) >> 3;
                if ((v321 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v322 = v317 - v320;
                v323 = v322 >> 2;
                if (v322 >> 2 <= (v321 + 1))
                {
                  v323 = v321 + 1;
                }

                if (v322 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v324 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v324 = v323;
                }

                *&v536 = v304 + 7;
                if (v324)
                {
                  v325 = ggl::zone_mallocator::instance(v295);
                  v326 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(v325, v324);
                }

                else
                {
                  v326 = 0;
                }

                v328 = &v326[8 * v324];
                v327 = &v326[8 * v321];
                *v327 = v306;
                v319 = v327 + 1;
                v329 = v304[4];
                v330 = v304[5] - v329;
                v331 = v327 - v330;
                memcpy(v327 - v330, v329, v330);
                v332 = v304[4];
                v304[4] = v331;
                v304[5] = v319;
                v333 = v304[6];
                v304[6] = v328;
                *&v535[16] = v332;
                *&v535[24] = v333;
                *&v535[8] = v332;
                *v535 = v332;
                std::__split_buffer<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v535);
              }

              else
              {
                *v318 = v306;
                v319 = v318 + 1;
              }

              v304[5] = v319;
              *v535 = v306;
              v334 = v304[15];
              if (!v334)
              {
LABEL_531:
                std::__throw_bad_function_call[abi:nn200100]();
LABEL_532:
                dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
LABEL_11:
                v8 = GEOGetVectorKitPerformanceLog_log;
                v5 = v8;
                v6 = *(a2 + 10);
                if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
                {
                  buf.i16[0] = 0;
                  v7 = "DaVinciGroundLayout";
                  goto LABEL_19;
                }

                goto LABEL_20;
              }

              *&v335 = (*(*v334 + 48))(v334, v535, v296);
              md::DaVinciPipelineStateManager<ggl::DaVinci::PackedLinearDepthPipelineState,std::shared_ptr<ggl::PackedLinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v518, (v470 + 1656), v520, v335);
              v336 = v518;
              v337 = v519;
              if (v519)
              {
                atomic_fetch_add_explicit(&v519->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v338 = *(v288 + 32);
              v340 = *v338;
              v339 = v338[1];
              if (v339)
              {
                atomic_fetch_add_explicit(&v339->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *v535 = v336;
              *&v535[8] = v337;
              if (v337)
              {
                atomic_fetch_add_explicit(&v337->__shared_owners_, 1uLL, memory_order_relaxed);
                ggl::PipelineSetup::setState(v306, v535);
                std::__shared_weak_count::__release_shared[abi:nn200100](v337);
                if (!v288)
                {
                  goto LABEL_386;
                }
              }

              else
              {
                ggl::PipelineSetup::setState(v306, v535);
                if (!v288)
                {
                  goto LABEL_386;
                }
              }

              if (*(v336 + 316))
              {
                v341 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(*(**(v288 + 208) + 120), 2uLL);
                v342 = *(v306 + 13);
                *(v342 + 16) = *v341;
                *(v342 + 24) = 0;
                v343 = *(v306 + 25);
                v344 = *(v343 + 24);
                *(v343 + 16) = 0;
                *(v343 + 24) = 0;
                if (v344)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v344);
                }
              }

LABEL_386:
              v345 = *(v306 + 13);
              *v345 = v340;
              v345[1] = 0;
              v346 = *(v306 + 25);
              if (v339)
              {
                atomic_fetch_add_explicit(&v339->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v347 = v346[1];
              *v346 = v340;
              v346[1] = v339;
              if (v347)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v347);
              }

              v348 = *(v306 + 17);
              *(v348 + 40) = 0;
              v349 = *(v306 + 29);
              v224 = v458;
              v350 = *(v474 + 16 * v472 + 408);
              *(v348 + 32) = v350;
              if (*(&v350 + 1))
              {
                atomic_fetch_add_explicit((*(&v350 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v351 = *(v349 + 40);
              *(v349 + 32) = v350;
              if (v351)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v351);
              }

              v352 = *(v306 + 17);
              v352[1] = 0;
              v353 = *(v474 + 28);
              *v352 = v353;
              v354 = *(v306 + 29);
              v355 = *(v474 + 29);
              if (v355)
              {
                atomic_fetch_add_explicit((v355 + 8), 1uLL, memory_order_relaxed);
              }

              v356 = v354[1];
              *v354 = v353;
              v354[1] = v355;
              if (v356)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v356);
              }

              v357 = *(v306 + 17);
              *(v357 + 24) = 0;
              v358 = *(v474 + 30);
              *(v357 + 16) = v358;
              v359 = *(v306 + 29);
              v360 = *(v474 + 31);
              if (v360)
              {
                atomic_fetch_add_explicit((v360 + 8), 1uLL, memory_order_relaxed);
              }

              v361 = *(v359 + 24);
              *(v359 + 16) = v358;
              *(v359 + 24) = v360;
              if (v361)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v361);
              }

              if (*(v336 + 336) == 1)
              {
                v362 = *(v306 + 17);
                *(v362 + 64) = v2;
                *(v362 + 72) = 0;
                v363 = *(v306 + 29);
                if (v293)
                {
                  atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v364 = *(v363 + 72);
                *(v363 + 64) = v2;
                *(v363 + 72) = v293;
                if (v364)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v364);
                }
              }

              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v539, *(v474 + 55));
              v365 = 0;
              v366 = (v464 + 3160);
              do
              {
                v367 = 0;
                v368 = v474 + 96;
                do
                {
                  v369 = 0;
                  v370 = 0.0;
                  v371 = v366;
                  do
                  {
                    v372 = *v371;
                    v371 += 4;
                    v370 = v370 + *&v368[v369] * v372;
                    v369 += 8;
                  }

                  while (v369 != 32);
                  *&v535[32 * v367++ + 8 * v365] = v370;
                  v368 += 32;
                }

                while (v367 != 4);
                ++v365;
                ++v366;
              }

              while (v365 != 4);
              v373 = 0;
              v374 = v535;
              do
              {
                v376 = *v374;
                v375 = v374[1];
                v374 += 2;
                v538[v373++] = vcvt_hight_f32_f64(vcvt_f32_f64(v376), v375);
              }

              while (v373 != 4);
              v377 = v540;
              v378 = v538[1];
              *v540 = v538[0];
              *(v377 + 1) = v378;
              v379 = v538[3];
              *(v377 + 2) = v538[2];
              *(v377 + 3) = v379;
              v380 = 1.0 / *(v464 + 976);
              v377[16] = v380;
              v381 = *(v306 + 17);
              *(v381 + 56) = 0;
              v382 = *(v474 + 55);
              *(v381 + 48) = v382;
              v383 = *(v306 + 29);
              v384 = *(v474 + 56);
              if (v384)
              {
                atomic_fetch_add_explicit((v384 + 8), 1uLL, memory_order_relaxed);
              }

              v385 = *(v383 + 56);
              *(v383 + 48) = v382;
              *(v383 + 56) = v384;
              if (v385)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v385);
              }

              ggl::BufferMemory::~BufferMemory(&v539);
              if (v288)
              {
                v386 = *(v288 + 208);
                if (*(v386 + 61) == 1)
                {
                  v387 = *v386;
                  v390 = *(v387 + 120);
                  v389 = (v387 + 120);
                  v388 = v390;
                  if (!v390)
                  {
                    goto LABEL_431;
                  }

                  v391 = v389;
                  v392 = v388;
                  do
                  {
                    v393 = v392[4];
                    _CF = v393 >= 2;
                    v394 = v393 < 2;
                    if (_CF)
                    {
                      v391 = v392;
                    }

                    v392 = v392[v394];
                  }

                  while (v392);
                  if (v391 == v389 || v391[4] > 2uLL)
                  {
LABEL_431:
                    v397 = 0;
                    v396 = 0;
                  }

                  else
                  {
                    v395 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v388, 2uLL);
                    v396 = *v395;
                    v397 = v395[1];
                    if (v397)
                    {
                      atomic_fetch_add_explicit(&v397->__shared_owners_, 1uLL, memory_order_relaxed);
                    }
                  }

                  v398 = *(v306 + 13);
                  *(v398 + 16) = v396;
                  *(v398 + 24) = 0;
                  v399 = *(v306 + 25);
                  v400 = *(v399 + 24);
                  *(v399 + 16) = 0;
                  *(v399 + 24) = 0;
                  if (v400)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v400);
                  }

                  if (v397)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v397);
                  }
                }
              }

              v532 = v306;
              v533 = 768;
              v2 = v470;
              v531 = md::DaVinciRenderStateCache::renderState((v470 + 3136), 3, 1, 1, 0, 0, 0, 3);
              if (v339)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v339);
              }

              if (v337)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v337);
                std::__shared_weak_count::__release_shared[abi:nn200100](v337);
              }

LABEL_440:
              v531 = md::DaVinciRenderStateCache::renderState((v2 + 3136), *(*(v288 + 208) + 32), 1, 1, 1, 0, 0, 3);
              v401 = *(*(v288 + 32) + 16);
              v534 = v401;
              if (v512 == 1)
              {
                v402 = (*(v288 + 24) - *(v288 + 16)) * v401;
                *(buf.i64 + v461) += v402;
                ++*(buf.i64 + v460);
                v403 = vdupq_n_s64(1uLL);
                v403.i64[0] = v402;
                v511 = vaddq_s64(v403, v511);
              }

              md::RenderItemPool::construct(v2 + 3248, &v529, **(v288 + 208), (v288 + 16));
              ggl::CommandBuffer::pushRenderItem(v467, v404);
              goto LABEL_443;
            }

            v2 = v470;
            v312 = ggl::FragmentedPool<ggl::DaVinci::LinearDepthPipelineSetup>::pop(*(v470 + 2144));
            md::DaVinciPipelineStateManager<ggl::DaVinci::LinearDepthPipelineState,std::shared_ptr<ggl::LinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v535, (v470 + 1520), v520, v313);
            v314 = *v535;
            v309 = *&v535[8];
            if (*&v535[8])
            {
              atomic_fetch_add_explicit((*&v535[8] + 8), 1uLL, memory_order_relaxed);
            }

            v315 = *(v288 + 32);
            v311 = v315[1];
            v517[0] = *v315;
            v517[1] = v311;
            if (v311)
            {
              atomic_fetch_add_explicit(&v311->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            md::DaVinciGroundRenderLayer::setupDepthPipeline<ggl::DaVinci::LinearDepthPipelineSetup,ggl::DaVinci::LinearDepthPipelineState>(v470, v312, v314, v309, v464, v474, v288, v517, &v527, v472, &v529);
          }

          else
          {
            v2 = v470;
            v307 = ggl::FragmentedPool<ggl::DaVinci::GroundShadowMapPipelineSetup>::pop(*(v470 + 1824));
            md::DaVinciPipelineStateManager<ggl::DaVinci::GroundShadowMapPipelineState,std::shared_ptr<ggl::DaVinciGroundShadowMapShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v535, v470 + 1112, v520);
            v308 = *v535;
            v309 = *&v535[8];
            if (*&v535[8])
            {
              atomic_fetch_add_explicit((*&v535[8] + 8), 1uLL, memory_order_relaxed);
            }

            v310 = *(v288 + 32);
            v311 = v310[1];
            v516[0] = *v310;
            v516[1] = v311;
            if (v311)
            {
              atomic_fetch_add_explicit(&v311->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            md::DaVinciGroundRenderLayer::setupDepthPipeline<ggl::DaVinci::GroundShadowMapPipelineSetup,ggl::DaVinci::GroundShadowMapPipelineState>(v470, v307, v308, v309, v474, v288, v516, &v527, v472, SHIDWORD(v472), v462 != 255, &v529);
          }

          if (v311)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v311);
          }

          if (v309)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v309);
            std::__shared_weak_count::__release_shared[abi:nn200100](v309);
          }

          goto LABEL_440;
        }

        v275 = 0;
        v276 = &v549;
        while (1)
        {
          v277 = 0;
          v278 = *(&v549 + v275 + 8);
          v529.i64[0] = *(&v549 + v275);
          v529.i32[2] = v278;
          v279 = &v476;
          do
          {
            v280 = (v279 + 12);
            if (*&v529.i32[v277] < 0.0)
            {
              v280 = v279;
            }

            *&v535[4 * v277++] = *v280;
            v279 = (v279 + 4);
          }

          while (v277 != 3);
          v281 = 0;
          v282 = 0.0;
          do
          {
            v282 = v282 + (*(v276 + v281) * *&v535[v281]);
            v281 += 4;
          }

          while (v281 != 12);
          if ((*(&v549 + v275 + 12) + v282) < 0.0)
          {
            break;
          }

          v275 += 16;
          v276 += 2;
          if (v275 == 96)
          {
            goto LABEL_294;
          }
        }

LABEL_447:
        v268 = 0;
        v267 = &v513;
        v471 = 1;
        v472 = 1;
      }

      while ((v463 & 1) != 0);
      md::DaVinciGroundRenderLayer::layoutRibbons(v2, v181, &buf, v482, v453, v454);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v567);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v565);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v563);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v561);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v559);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
      v112 = v452 + 1;
      if (v452 + 1 == v444)
      {
        v107 = *(v181 + 1);
        goto LABEL_468;
      }
    }
  }

  v181 = a2;
LABEL_468:
  v411 = md::LayoutContext::get<md::SettingsContext>(v107);
  if (v411)
  {
    v412 = *v411;
    v413 = v411[1];
    while (v412 != v413)
    {
      if (*v412 == 11)
      {
        if (v412 != v413 && *(v412 + 8) && *(v2 + 3704) == 1)
        {
          md::ElevatedPolygonRenderResources::resetPools(*(v2 + 446));
          v417 = *(v2 + 446);
          std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v417 + 856));
          *(v417 + 848) = v417 + 856;
          *(v417 + 856) = 0u;
          md::ElevatedPolygonContext::ElevatedPolygonContext(__p, v181, *(v2 + 3336), *(*(v2 + 5) + 24));
          v418 = *v438;
          v419 = *(v438 + 8);
          while (v418 != v419)
          {
            md::DaVinciGroundRenderLayer::layoutPredrapedPolygons(v2, v181, *v418++, __p, v437);
          }
        }

        break;
      }

      v412 += 16;
    }
  }

  if (v451)
  {
    v420 = v454;
  }

  else
  {
    v420 = 0;
  }

  if (v420 == 1)
  {
    ggl::CommandBuffer::sortRenderItems(v451[9], v451[10]);
    ggl::CommandBuffer::sortRenderItems(v439[9], v439[10]);
  }

  ggl::CommandBuffer::sortRenderItems(v453[9], v453[10]);
  ggl::CommandBuffer::sortRenderItems(v447[9], v447[10]);
  ggl::CommandBuffer::sortRenderItems(v446[9], v446[10]);
  ggl::CommandBuffer::sortRenderItems(*(v449 + 72), *(v449 + 80));
  if (v512 == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v549, "Ground");
    v551[0] = 14;
    std::string::basic_string[abi:nn200100]<0>(v552, "Buidlings");
    v554 = 15;
    std::string::basic_string[abi:nn200100]<0>(v555, "NonTile");
    v556 = 16;
    v421 = md::LayoutContext::debugConsoleForId(v181, v551[8 * *(v2 + 3704)]);
    ggl::DebugConsole::begin(v421);
  }

  v422 = +[VKDebugSettings sharedSettings];
  v423 = [v422 drawDaVinciElevationScalingDebug];

  if (v423)
  {
    v424 = md::LayoutContext::debugConsoleForId(a2, 14);
    ggl::DebugConsole::begin(v424);
  }

  *(v2 + 435) = *(v2 + 434);
  v425 = *(v2 + 3704);
  if (v425 > 2)
  {
    if (v425 == 3)
    {
      if (GEOGetVectorKitPerformanceLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
      }

      v433 = GEOGetVectorKitPerformanceLog_log;
      v427 = v433;
      v428 = *(a2 + 10);
      if (v428 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v433))
      {
        goto LABEL_518;
      }

      *__p = 0;
      v429 = "DaVinciNonTiledLayout";
      v431 = v427;
      v432 = OS_SIGNPOST_INTERVAL_BEGIN;
      goto LABEL_512;
    }

    if (v425 != 4)
    {
      goto LABEL_519;
    }
  }

  else if (v425 >= 2)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v426 = GEOGetVectorKitPerformanceLog_log;
    v427 = v426;
    v428 = *(a2 + 10);
    if (v428 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v426))
    {
      goto LABEL_518;
    }

    *__p = 0;
    v429 = "DaVinciBuildingsLayout";
    goto LABEL_511;
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v430 = GEOGetVectorKitPerformanceLog_log;
  v427 = v430;
  v428 = *(a2 + 10);
  if (v428 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v430))
  {
    goto LABEL_518;
  }

  *__p = 0;
  v429 = "DaVinciGroundLayout";
LABEL_511:
  v431 = v427;
  v432 = OS_SIGNPOST_INTERVAL_END;
LABEL_512:
  _os_signpost_emit_with_name_impl(&dword_1B2754000, v431, v432, v428, v429, &unk_1B3514CAA, __p, 2u);
LABEL_518:

LABEL_519:
  if (v483)
  {
    operator delete(v483);
  }
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_2 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(int8x16_t *a1, char *a2, uint64_t **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    result = &a1->i8[8];
    v12 = v8->i64[1];
    v13 = *(**a3 + 8 * v12);
    v14 = *(*(v13 + 208) + 32);
    if (v14 - 4) >= 0xFFFFFFFD && ((v14 - 3) < 0xFFFFFFFE || (*(*a3[1] + 3)) && *(v13 + 144) == 1)
    {
      v15 = *v8;
      *v8 = vextq_s8(*v8, *v8, 8uLL);
      v8->i64[1] = *a2;
      *a2 = v15.i64[0];
      return a2;
    }

    v8->i64[1] = *a2;
    *a2 = v12;
    *v8 = vextq_s8(*v8, *v8, 8uLL);
  }

  else
  {
    if (a4 == 2)
    {
      v10 = a1->i64[0];
      a1->i64[0] = *a2;
      *a2 = v10;
      return a2;
    }

    v16 = a5;
    if (a6 >= a4)
    {
      result = &a1->i8[8];
      *a5 = v8->i64[0];
      v25 = a5 + 1;
      if (&v8->u64[1] == a2)
      {
        v8->i64[0] = v8->i64[1];
      }

      else
      {
        v26 = a3[1];
        v27 = **a3;
        do
        {
          v28 = *result;
          v29 = *(v27 + 8 * *result);
          v30 = *(*(v29 + 208) + 32);
          if (v30 - 4) >= 0xFFFFFFFD && ((v30 - 3) < 0xFFFFFFFE || (*(*v26 + 3)) && *(v29 + 144) == 1)
          {
            v8->i64[0] = v28;
            v8 = (v8 + 8);
          }

          else
          {
            *v25++ = v28;
          }

          result += 8;
        }

        while (result != a2);
        v8->i64[0] = *result;
        result = &v8->i8[8];
        if (v25 <= a5)
        {
          return result;
        }
      }

      v31 = result;
      do
      {
        v32 = *v16++;
        *v31 = v32;
        v31 += 8;
      }

      while (v16 < v25);
      return result;
    }

    v17 = &a1->i8[8 * (a4 / 2)];
    v18 = a3[1];
    v19 = **a3;
    v20 = v17 - 8;
    v21 = 8 - 8 * (a4 / 2);
    for (i = a4 / 2; ; --i)
    {
      v23 = *(v19 + 8 * *v20);
      v24 = *(*(v23 + 208) + 32);
      if (v24 - 4) >= 0xFFFFFFFD && ((v24 - 3) < 0xFFFFFFFE || (*(*v18 + 3)) && (*(v23 + 144))
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_35;
      }

      v20 -= 8;
      v21 += 8;
    }

    v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_2 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(a1);
    v18 = a3[1];
    v19 = **a3;
LABEL_35:
    v33 = a2 + 8;
    v34 = a4 - a4 / 2;
    v35 = v17;
    while (1)
    {
      v36 = *(v19 + 8 * *v35);
      v37 = *(*(v36 + 208) + 32);
      if ((v37 - 4) < 0xFFFFFFFD || (v37 - 3) >= 0xFFFFFFFE && (*(*v18 + 3) & 1) == 0)
      {
        break;
      }

      if (*(v36 + 144) != 1)
      {
        break;
      }

      v35 += 8;
      if (v35 == a2)
      {
        return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v17, v33);
      }

      --v34;
    }

    v33 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_2 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v35);
    return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v17, v33);
  }

  return result;
}

void md::DaVinciGroundRenderLayer::adjustedMeshBounds(md::DaVinciGroundRenderLayer *this, md::MeshRenderable *a2, const md::DaVinciGroundRenderable *a3, int a4)
{
  if (*(a3 + 24) == 255)
  {
    if (a4)
    {
      if ((*(a2 + 124) & 1) == 0)
      {
        *(a2 + 32) = 0;
        *(a2 + 100) = xmmword_1B33AFF10;
        *(a2 + 116) = 0x80000000800000;
        *(a2 + 124) = 1;
        v7 = *(a2 + 140);
        *(a2 + 33) = 0;
        *(a2 + 34) = 0;
        if ((v7 & 1) == 0)
        {
          *(a2 + 140) = 1;
        }

        md::GeometryLogic::calculateGeocentricBounds(a2 + 19, *(a3 + 30), a2 + 100, a2 + 128);
        if ((*(a2 + 124) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (*(a2 + 140))
      {
        v8 = *(a3 + 30);

        md::GeometryLogic::scaleGeocentricBoundsWithNormal(this, a2 + 76, a2 + 100, a2 + 128, v8);
      }

      else
      {
LABEL_15:
        v11 = std::__throw_bad_optional_access[abi:nn200100]();
        std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_3 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v11);
      }
    }

    else
    {
      v9 = *(a3 + 30);
      v10 = a2 + 76;

      md::GeometryLogic::adjustedMeshBounds(this, v10, v9);
    }
  }

  else
  {
    *this = *(a2 + 76);
    *(this + 2) = *(a2 + 92);
  }
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_3 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(int8x16_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 != 3)
  {
    if (a4 == 2)
    {
      v10 = a1->i64[0];
      a1->i64[0] = *a2;
      *a2 = v10;
      return a2;
    }

    v22 = a5;
    if (a6 < a4)
    {
      v23 = a4 / 2;
      v24 = (a1 + 8 * (a4 / 2));
      v59 = v24;
      v57 = a4 / 2;
      while (1)
      {
        v25 = v24[-1].i64[1];
        v24 = (v24 - 8);
        v26 = *a3;
        md::DaVinciGroundRenderLayer::adjustedMeshBounds(v61, *(*a3[1] + 8 * v25), *a3[2], *a3[3]);
        v27 = 0;
        v28 = v26;
        while (1)
        {
          v29 = 0;
          v30 = *(v26 + v27 + 8);
          v62 = *(v26 + v27);
          v63 = v30;
          do
          {
            v31 = &v61[v29];
            if (*(&v62 + v29) >= 0.0)
            {
              v31 = &v61[v29 + 12];
            }

            *(&v64 + v29) = *v31;
            v29 += 4;
          }

          while (v29 != 12);
          v32 = 0;
          v33 = 0.0;
          do
          {
            v33 = v33 + (*(v28 + v32) * *(&v64 + v32));
            v32 += 4;
          }

          while (v32 != 12);
          if ((*(v26 + v27 + 12) + v33) < 0.0)
          {
            break;
          }

          v27 += 16;
          v28 += 16;
          if (v27 == 96)
          {
            v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_3 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v8);
            goto LABEL_44;
          }
        }

        if (v24 == v8)
        {
          break;
        }

        --v23;
      }

LABEL_44:
      v44 = v59;
      v45 = (a2 + 1);
      v58 = a4 - v57;
LABEL_45:
      v46 = *a3;
      md::DaVinciGroundRenderLayer::adjustedMeshBounds(v61, *(*a3[1] + 8 * *v44), *a3[2], *a3[3]);
      v47 = 0;
      v48 = v46;
      while (1)
      {
        v49 = 0;
        v50 = *(v46 + v47 + 8);
        v62 = *(v46 + v47);
        v63 = v50;
        do
        {
          v51 = &v61[v49];
          if (*(&v62 + v49) >= 0.0)
          {
            v51 = &v61[v49 + 12];
          }

          *(&v64 + v49) = *v51;
          v49 += 4;
        }

        while (v49 != 12);
        v52 = 0;
        v53 = 0.0;
        do
        {
          v53 = v53 + (*(v48 + v52) * *(&v64 + v52));
          v52 += 4;
        }

        while (v52 != 12);
        if ((*(v46 + v47 + 12) + v53) < 0.0)
        {
          break;
        }

        v47 += 16;
        v48 += 16;
        if (v47 == 96)
        {
          v44 += 8;
          if (v44 == a2)
          {
            return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v59, v45);
          }

          --v58;
          goto LABEL_45;
        }
      }

      v45 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_3 &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v44);
      return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v59, v45);
    }

    v11 = &a1->i64[1];
    *a5 = a1->i64[0];
    v35 = a5 + 1;
    if (&a1->u64[1] == a2)
    {
      a1->i64[0] = a1->i64[1];
    }

    else
    {
      do
      {
        v36 = *a3;
        md::DaVinciGroundRenderLayer::adjustedMeshBounds(v61, *(*a3[1] + 8 * *v11), *a3[2], *a3[3]);
        v37 = 0;
        v38 = v36;
        while (1)
        {
          v39 = 0;
          v40 = *(v36 + v37 + 8);
          v62 = *(v36 + v37);
          v63 = v40;
          do
          {
            v41 = &v61[v39];
            if (*(&v62 + v39) >= 0.0)
            {
              v41 = &v61[v39 + 12];
            }

            *(&v64 + v39) = *v41;
            v39 += 4;
          }

          while (v39 != 12);
          v42 = 0;
          v43 = 0.0;
          do
          {
            v43 = v43 + (*(v38 + v42) * *(&v64 + v42));
            v42 += 4;
          }

          while (v42 != 12);
          if ((*(v36 + v37 + 12) + v43) < 0.0)
          {
            break;
          }

          v37 += 16;
          v38 += 16;
          if (v37 == 96)
          {
            v8->i64[0] = *v11;
            v8 = (v8 + 8);
            goto LABEL_41;
          }
        }

        *v35++ = *v11;
LABEL_41:
        ++v11;
      }

      while (v11 != a2);
      v8->i64[0] = *v11;
      v11 = &v8->i64[1];
      if (v35 <= v22)
      {
        return v11;
      }
    }

    v54 = v11;
    do
    {
      v55 = *v22++;
      *v54++ = v55;
    }

    while (v22 < v35);
    return v11;
  }

  v11 = &a1->i64[1];
  v13 = *a3;
  md::DaVinciGroundRenderLayer::adjustedMeshBounds(v61, *(*a3[1] + 8 * a1->i64[1]), *a3[2], *a3[3]);
  v14 = 0;
  for (i = v13; ; i += 16)
  {
    v16 = 0;
    v17 = *(v13 + v14 + 8);
    v62 = *(v13 + v14);
    v63 = v17;
    do
    {
      v18 = &v61[v16];
      if (*(&v62 + v16) >= 0.0)
      {
        v18 = &v61[v16 + 12];
      }

      *(&v64 + v16) = *v18;
      v16 += 4;
    }

    while (v16 != 12);
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(i + v19) * *(&v64 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    if ((*(v13 + v14 + 12) + v20) < 0.0)
    {
      break;
    }

    v14 += 16;
    if (v14 == 96)
    {
      v21 = *v8;
      *v8 = vextq_s8(*v8, *v8, 8uLL);
      v11 = a2;
      v8->i64[1] = *a2;
      *a2 = v21.i64[0];
      return v11;
    }
  }

  v34 = v8->i64[1];
  v8->i64[1] = *a2;
  *a2 = v34;
  *v8 = vextq_s8(*v8, *v8, 8uLL);
  return v11;
}