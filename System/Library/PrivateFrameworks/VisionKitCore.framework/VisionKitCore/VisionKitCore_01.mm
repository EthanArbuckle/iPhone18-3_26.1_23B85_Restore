void sub_1B435451C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, uint64_t a17, char a18)
{
  __p = &a18;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ClipperLib::MinkowskiSum(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  ClipperLib::Minkowski(a1, a2, a3, 1, a4);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v17 = 0u;
  v18 = 0u;
  v5 = &unk_1F2C030C8;
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v12 = 0;
  v19 = 0;
  v13 = 0;
  v14 = 0;
  v23 = 0;
  v15 = 0;
  v16 = &unk_1F2C03110;
  ClipperLib::ClipperBase::AddPaths(&v16, a3, 0, 1);
  ClipperLib::Clipper::Execute(&v5, 1, a3, 1, 1);
  v5 = &unk_1F2C030C8;
  v16 = &unk_1F2C03110;
  std::__list_imp<long long>::clear(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v16);
}

void sub_1B43546DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::TranslatePath(void *a1, int64x2_t **a2, int64x2_t *a3)
{
  std::vector<ClipperLib::IntPoint>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = *a2 + 1;
    __asm { FMOV            V0.2S, #-1.0 }

    do
    {
      v15 = *v6;
      v6 = (v6 + 24);
      v9[-1] = vaddq_s64(*a3, v15);
      v9->i64[0] = _D0;
      v9 = (v9 + 24);
      --v8;
    }

    while (v8);
  }
}

void ClipperLib::MinkowskiSum(uint64_t *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v36 = 0u;
  v37 = 0u;
  v24 = &unk_1F2C030C8;
  *v25 = 0u;
  *v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30[0] = v30;
  v30[1] = v30;
  v30[2] = 0;
  v31 = 0;
  v38 = 0;
  v32 = 0;
  v33 = 0;
  v42 = 0;
  v34 = 0;
  v35 = &unk_1F2C03110;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      ClipperLib::Minkowski(a1, (v4 + 24 * v8), &v21, 1, a4);
      v9 = v21;
      if (v22 != v21)
      {
        v10 = 0;
        v11 = 0;
        v12 = &v25[-1] + *(v24 - 3);
        do
        {
          (*(*v12 + 16))(v12, v9 + v10, 0, 1);
          ++v11;
          v9 = v21;
          v10 += 24;
        }

        while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
      }

      if (a4)
      {
        __p = 0;
        v19 = 0;
        v20 = 0;
        v13 = (*a2 + 24 * v8);
        v14 = *a1;
        v16 = **a1;
        v17 = *(v14 + 16);
        ClipperLib::TranslatePath(v13, &__p, &v16);
        ClipperLib::ClipperBase::AddPath(&v25[-1] + *(v24 - 3), &__p, 1, 1);
        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }
      }

      __p = &v21;
      std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v8;
      v4 = *a2;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  ClipperLib::Clipper::Execute(&v24, 1, a3, 1, 1);
  v24 = &unk_1F2C030C8;
  v35 = &unk_1F2C03110;
  std::__list_imp<long long>::clear(v30);
  if (v28)
  {
    *(&v28 + 1) = v28;
    operator delete(v28);
  }

  if (v26[1])
  {
    *&v27 = v26[1];
    operator delete(v26[1]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v35);
}

void ClipperLib::MinkowskiDiff(uint64_t *a1, void *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  ClipperLib::Minkowski(a1, a2, a3, 0, 1u);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v16 = 0u;
  v17 = 0u;
  v4 = &unk_1F2C030C8;
  *v5 = 0u;
  *v6 = 0u;
  v7 = 0u;
  *__p = 0u;
  v9 = 0;
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v11 = 0;
  v18 = 0;
  v12 = 0;
  v13 = 0;
  v22 = 0;
  v14 = 0;
  v15 = &unk_1F2C03110;
  ClipperLib::ClipperBase::AddPaths(&v15, a3, 0, 1);
  ClipperLib::Clipper::Execute(&v4, 1, a3, 1, 1);
  v4 = &unk_1F2C030C8;
  v15 = &unk_1F2C03110;
  std::__list_imp<long long>::clear(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[1])
  {
    *&v7 = v6[1];
    operator delete(v6[1]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v15);
}

void sub_1B4354C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

uint64_t ClipperLib::AddPolyNodeToPaths(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    v5 = result;
    if (a2 == 2)
    {
      v6 = *(result + 68);
    }

    else
    {
      v6 = 0;
    }

    if (*(result + 8) != *(result + 16) && (v6 & 1) == 0)
    {
      result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a3, (result + 8));
    }

    v7 = *(v5 + 32);
    if (((*(v5 + 40) - v7) >> 3) >= 1)
    {
      v8 = 0;
      do
      {
        result = ClipperLib::AddPolyNodeToPaths(*(v7 + 8 * v8++), a2, a3);
        v7 = *(v5 + 32);
      }

      while (v8 < ((*(v5 + 40) - v7) >> 3));
    }
  }

  return result;
}

uint64_t ClipperLib::PolyTreeToPaths(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);

  return ClipperLib::AddPolyNodeToPaths(a1, 0, a2);
}

uint64_t ClipperLib::ClosedPathsFromPolyTree(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);

  return ClipperLib::AddPolyNodeToPaths(a1, 2, a2);
}

uint64_t ClipperLib::OpenPathsFromPolyTree(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  result = std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (((v7 - v8) >> 3) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 8 * v9);
      if (*(v10 + 68) == 1)
      {
        result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a2, (v10 + 8));
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
      }

      ++v9;
    }

    while (v9 < ((v7 - v8) >> 3));
  }

  return result;
}

void *ClipperLib::operator<<(void *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v5 = MEMORY[0x1B8C765F0](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
  v7 = MEMORY[0x1B8C765F0](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  return a1;
}

{
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = (v3 - *a2) >> 3;
    v6 = 0xAAAAAAAAAAAAAAABLL * v5 - 1;
    if (0xAAAAAAAAAAAAAAABLL * v5 != 1)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * v5 - 1;
      do
      {
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
        v10 = MEMORY[0x1B8C765F0](v9, *(*a2 + v7));
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ",", 1);
        v12 = MEMORY[0x1B8C765F0](v11, *(*a2 + v7 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), ", 3);
        v7 += 24;
        --v8;
      }

      while (v8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
    v14 = MEMORY[0x1B8C765F0](v13, *(*a2 + 24 * v6));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ",", 1);
    v16 = MEMORY[0x1B8C765F0](v15, *(*a2 + 24 * v6 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")\n", 2);
  }

  return a1;
}

void *ClipperLib::operator<<(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::operator<<(a1, (v3 + v5));
      ++v6;
      v3 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n", 1);
  return a1;
}

void virtual thunk toClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2C030C8;
  v1[18] = &unk_1F2C03110;
  std::__list_imp<long long>::clear(v1 + 11);
  v2 = v1[7];
  if (v2)
  {
    v1[8] = v2;
    operator delete(v2);
  }

  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2C030C8;
  v1[18] = &unk_1F2C03110;
  std::__list_imp<long long>::clear(v1 + 11);
  v2 = v1[7];
  if (v2)
  {
    v1[8] = v2;
    operator delete(v2);
  }

  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));

  JUMPOUT(0x1B8C76670);
}

void ClipperLib::PolyNode::~PolyNode(ClipperLib::PolyNode *this)
{
  ClipperLib::PolyNode::~PolyNode(this);

  JUMPOUT(0x1B8C76670);
}

{
  *this = &unk_1F2C030A0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

ClipperLib::clipperException *ClipperLib::clipperException::clipperException(ClipperLib::clipperException *this, const char *__s)
{
  *this = &unk_1F2C03148;
  v4 = this + 8;
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 31) = v5;
  if (v5)
  {
    memmove(v4, __s, v5);
  }

  v4[v6] = 0;
  return this;
}

void ClipperLib::clipperException::~clipperException(std::exception *this)
{
  ClipperLib::clipperException::~clipperException(this);

  JUMPOUT(0x1B8C76670);
}

{
  this->__vftable = &unk_1F2C03148;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t ClipperLib::clipperException::what(ClipperLib::clipperException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7BE3E70, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::__list_imp<long long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__construct_one_at_end[abi:ne200100]<std::vector<ClipperLib::IntPoint> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B4355888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43558FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, a2);
  }

  std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<ClipperLib::IntPoint>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<ClipperLib::PolyNode *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::PolyNode *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::PolyNode *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::LocalMinimum>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(__n128 *a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 24;
  v10 = a2 - 48;
  v11 = a2 - 72;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        v77 = *(a2 - 3);
        v73 = (a2 - 24);
        if (*v12 >= v77)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v70 = (v12 + 24);
      v79 = *(v12 + 3);
      v80 = (v12 + 48);
      v81 = *(v12 + 6);
      if (*v12 >= v79)
      {
        if (v79 < v81)
        {
          v85 = *(v12 + 5);
          result = *v70;
          *v70 = *v80;
          *(v12 + 5) = *(v12 + 8);
          *v80 = result;
          *(v12 + 8) = v85;
          if (*v12 < *(v12 + 3))
          {
            v143 = *(v12 + 2);
            v115 = *v12;
            *v12 = *v70;
            *(v12 + 2) = *(v12 + 5);
            result = v115;
            *v70 = v115;
            *(v12 + 5) = v143;
          }
        }
      }

      else
      {
        if (v79 < v81)
        {
          v142 = *(v12 + 2);
          v114 = *v12;
          *v12 = *v80;
          *(v12 + 2) = *(v12 + 8);
          result = v114;
          *v80 = v114;
          v82 = v142;
          goto LABEL_102;
        }

        v144 = *(v12 + 2);
        v117 = *v12;
        *v12 = *v70;
        *(v12 + 2) = *(v12 + 5);
        result = v117;
        *v70 = v117;
        *(v12 + 5) = v144;
        if (*(v12 + 3) < v81)
        {
          v82 = *(v12 + 5);
          result = *v70;
          *v70 = *v80;
          *(v12 + 5) = *(v12 + 8);
          *v80 = result;
LABEL_102:
          *(v12 + 8) = v82;
        }
      }

      if (v80->n128_u64[0] >= *v9)
      {
        return result;
      }

      v91 = *(v12 + 8);
      result = *v80;
      v92 = *(a2 - 1);
      *v80 = *v9;
      *(v12 + 8) = v92;
      *v9 = result;
      *(a2 - 1) = v91;
      if (v70->n128_u64[0] >= v80->n128_u64[0])
      {
        return result;
      }

      v93 = *(v12 + 5);
      result = *v70;
      *v70 = *v80;
      *(v12 + 5) = *(v12 + 8);
      *v80 = result;
      *(v12 + 8) = v93;
LABEL_106:
      if (*v12 < *(v12 + 3))
      {
        v145 = *(v12 + 2);
        v118 = *v12;
        *v12 = *v70;
        *(v12 + 2) = v70[1].n128_u64[0];
        result = v118;
        *v70 = v118;
        v70[1].n128_u64[0] = v145;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(v12, (v12 + 24), v12 + 6, (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(v12, a2);
      }

      else if (v12 != a2)
      {
        v86 = v12 + 24;
        while (v86 != a2)
        {
          v87 = v86;
          v88 = a1[1].n128_i64[1];
          if (a1->n128_u64[0] < v88)
          {
            v116 = a1[2];
            v89 = v87;
            do
            {
              *v89 = *(v89 - 24);
              v89[1].n128_u64[0] = v89[-1].n128_u64[1];
              v90 = v89[-3].n128_i64[0];
              v89 = (v89 - 24);
            }

            while (v90 < v88);
            v89->n128_u64[0] = v88;
            result = v116;
            *(v89 + 8) = v116;
          }

          v86 = &v87[1].n128_i8[8];
          a1 = v87;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,ClipperLib::LocalMinimum *>(v12, a2, a2, a3);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = &v12[24 * (v16 >> 1)];
    v19 = *v9;
    if (v15 >= 0xC01)
    {
      v20 = *v18;
      if (*v12 >= *v18)
      {
        if (v20 < v19)
        {
          v121 = *(v18 + 2);
          v97 = *v18;
          v24 = *v9;
          *(v18 + 2) = *(a2 - 1);
          *v18 = v24;
          *v9 = v97;
          *(a2 - 1) = v121;
          if (*v12 < *v18)
          {
            v122 = *(v12 + 2);
            v98 = *v12;
            v25 = *v18;
            *(v12 + 2) = *(v18 + 2);
            *v12 = v25;
            *(v18 + 2) = v122;
            *v18 = v98;
          }
        }
      }

      else
      {
        if (v20 < v19)
        {
          v119 = *(v12 + 2);
          v95 = *v12;
          v21 = *v9;
          *(v12 + 2) = *(a2 - 1);
          *v12 = v21;
          goto LABEL_27;
        }

        v125 = *(v12 + 2);
        v101 = *v12;
        v28 = *v18;
        *(v12 + 2) = *(v18 + 2);
        *v12 = v28;
        *(v18 + 2) = v125;
        *v18 = v101;
        if (*v18 < *v9)
        {
          v119 = *(v18 + 2);
          v95 = *v18;
          v29 = *v9;
          *(v18 + 2) = *(a2 - 1);
          *v18 = v29;
LABEL_27:
          *v9 = v95;
          *(a2 - 1) = v119;
        }
      }

      v30 = (v12 + 24);
      v31 = &v12[24 * v17];
      v34 = *(v31 - 3);
      v32 = v31 - 24;
      v33 = v34;
      v35 = *v10;
      if (*(v12 + 3) >= v34)
      {
        if (v33 < v35)
        {
          v126 = *(v32 + 2);
          v102 = *v32;
          v39 = *v10;
          *(v32 + 2) = *(a2 - 4);
          *v32 = v39;
          *v10 = v102;
          *(a2 - 4) = v126;
          if (*v30 < *v32)
          {
            v40 = *v30;
            v127 = *(v12 + 5);
            v41 = *(v32 + 2);
            *v30 = *v32;
            *(v12 + 5) = v41;
            *(v32 + 2) = v127;
            *v32 = v40;
          }
        }
      }

      else if (v33 >= v35)
      {
        v44 = *v30;
        v129 = *(v12 + 5);
        v45 = *(v32 + 2);
        *v30 = *v32;
        *(v12 + 5) = v45;
        *(v32 + 2) = v129;
        *v32 = v44;
        if (*v32 < *v10)
        {
          v130 = *(v32 + 2);
          v104 = *v32;
          v46 = *v10;
          *(v32 + 2) = *(a2 - 4);
          *v32 = v46;
          *v10 = v104;
          *(a2 - 4) = v130;
        }
      }

      else
      {
        v36 = *(v12 + 5);
        v37 = *v30;
        v38 = *(a2 - 4);
        *v30 = *v10;
        *(v12 + 5) = v38;
        *v10 = v37;
        *(a2 - 4) = v36;
      }

      v47 = (v12 + 48);
      v48 = &v12[24 * v17];
      v51 = *(v48 + 3);
      v49 = v48 + 24;
      v50 = v51;
      v52 = *v11;
      if (*(v12 + 6) >= v51)
      {
        if (v50 < v52)
        {
          v131 = v49[2];
          v105 = *v49;
          v56 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v56;
          *v11 = v105;
          *(a2 - 7) = v131;
          if (*v47 < *v49)
          {
            v57 = *v47;
            v132 = *(v12 + 8);
            v58 = v49[2];
            *v47 = *v49;
            *(v12 + 8) = v58;
            v49[2] = v132;
            *v49 = v57;
          }
        }
      }

      else if (v50 >= v52)
      {
        v59 = *v47;
        v133 = *(v12 + 8);
        v60 = v49[2];
        *v47 = *v49;
        *(v12 + 8) = v60;
        v49[2] = v133;
        *v49 = v59;
        if (*v49 < *v11)
        {
          v134 = v49[2];
          v106 = *v49;
          v61 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v61;
          *v11 = v106;
          *(a2 - 7) = v134;
        }
      }

      else
      {
        v53 = *(v12 + 8);
        v54 = *v47;
        v55 = *(a2 - 7);
        *v47 = *v11;
        *(v12 + 8) = v55;
        *v11 = v54;
        *(a2 - 7) = v53;
      }

      v62 = *v18;
      v63 = *v49;
      if (*v32 >= *v18)
      {
        if (v62 < v63)
        {
          v136 = *(v18 + 2);
          v108 = *v18;
          *v18 = *v49;
          *(v18 + 2) = v49[2];
          v49[2] = v136;
          *v49 = v108;
          if (*v32 < *v18)
          {
            v137 = *(v32 + 2);
            v109 = *v32;
            *v32 = *v18;
            *(v32 + 2) = *(v18 + 2);
            *(v18 + 2) = v137;
            *v18 = v109;
          }
        }
      }

      else
      {
        if (v62 < v63)
        {
          v135 = *(v32 + 2);
          v107 = *v32;
          *v32 = *v49;
          *(v32 + 2) = v49[2];
          goto LABEL_55;
        }

        v138 = *(v32 + 2);
        v110 = *v32;
        *v32 = *v18;
        *(v32 + 2) = *(v18 + 2);
        *(v18 + 2) = v138;
        *v18 = v110;
        if (*v18 < *v49)
        {
          v135 = *(v18 + 2);
          v107 = *v18;
          *v18 = *v49;
          *(v18 + 2) = v49[2];
LABEL_55:
          v49[2] = v135;
          *v49 = v107;
        }
      }

      v139 = *(v12 + 2);
      v111 = *v12;
      v64 = *v18;
      *(v12 + 2) = *(v18 + 2);
      *v12 = v64;
      *(v18 + 2) = v139;
      *v18 = v111;
      goto LABEL_57;
    }

    v22 = *v12;
    if (*v18 >= *v12)
    {
      if (v22 < v19)
      {
        v123 = *(v12 + 2);
        v99 = *v12;
        v26 = *v9;
        *(v12 + 2) = *(a2 - 1);
        *v12 = v26;
        *v9 = v99;
        *(a2 - 1) = v123;
        if (*v18 < *v12)
        {
          v124 = *(v18 + 2);
          v100 = *v18;
          v27 = *v12;
          *(v18 + 2) = *(v12 + 2);
          *v18 = v27;
          *(v12 + 2) = v124;
          *v12 = v100;
        }
      }
    }

    else
    {
      if (v22 < v19)
      {
        v120 = *(v18 + 2);
        v96 = *v18;
        v23 = *v9;
        *(v18 + 2) = *(a2 - 1);
        *v18 = v23;
LABEL_36:
        *v9 = v96;
        *(a2 - 1) = v120;
        goto LABEL_57;
      }

      v128 = *(v18 + 2);
      v103 = *v18;
      v42 = *v12;
      *(v18 + 2) = *(v12 + 2);
      *v18 = v42;
      *(v12 + 2) = v128;
      *v12 = v103;
      if (*v12 < *v9)
      {
        v120 = *(v12 + 2);
        v96 = *v12;
        v43 = *v9;
        *(v12 + 2) = *(a2 - 1);
        *v12 = v43;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *v12 >= *(v12 - 3))
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(v12, a2);
      goto LABEL_64;
    }

    v65 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(v12, v65, v66);
    v12 = (v65 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>((v65 + 3), a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 3);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v70 = (v12 + 24);
  v71 = *(v12 + 3);
  v74 = *(a2 - 3);
  v73 = (a2 - 24);
  v72 = v74;
  if (*v12 >= v71)
  {
    if (v71 >= v72)
    {
      return result;
    }

    v83 = *(v12 + 5);
    result = *v70;
    v84 = v73[1].n128_u64[0];
    *v70 = *v73;
    *(v12 + 5) = v84;
    *v73 = result;
    v73[1].n128_u64[0] = v83;
    goto LABEL_106;
  }

  if (v71 < v72)
  {
LABEL_75:
    v141 = *(v12 + 2);
    v113 = *v12;
    v78 = *v73;
    *(v12 + 2) = v73[1].n128_u64[0];
    *v12 = v78;
    result = v113;
    *v73 = v113;
    v73[1].n128_u64[0] = v141;
    return result;
  }

  v140 = *(v12 + 2);
  v112 = *v12;
  *v12 = *v70;
  *(v12 + 2) = *(v12 + 5);
  result = v112;
  *v70 = v112;
  *(v12 + 5) = v140;
  if (*(v12 + 3) < v73->n128_u64[0])
  {
    v75 = *(v12 + 5);
    result = *v70;
    v76 = v73[1].n128_u64[0];
    *v70 = *v73;
    *(v12 + 5) = v76;
    *v73 = result;
    v73[1].n128_u64[0] = v75;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(__n128 *a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a2->n128_u64[0] < *a3)
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (a2->n128_u64[0] < *a3)
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a4 < *a5)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a3 < *a4)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (a2->n128_u64[0] < *a3)
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 24);
        if (*v4 < v6)
        {
          v10 = *(v4 + 32);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (*(v8 - 24) >= v6)
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(void *a1, unint64_t a2)
{
  v2 = *a1;
  if (*(a2 - 24) >= *a1)
  {
    v5 = a1 + 3;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 3;
    }

    while (*v3 >= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[3];
      v3 += 3;
    }

    while (v4 >= v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v6 < v2);
  }

  while (v3 < a2)
  {
    v14 = v3[2];
    v13 = *v3;
    v7 = *a2;
    v3[2] = *(a2 + 16);
    *v3 = v7;
    *(a2 + 16) = v14;
    *a2 = v13;
    do
    {
      v8 = v3[3];
      v3 += 3;
    }

    while (v8 >= v2);
    do
    {
      v9 = *(a2 - 24);
      a2 -= 24;
    }

    while (v9 < v2);
  }

  if (v3 - 3 != a1)
  {
    v10 = *(v3 - 3);
    a1[2] = *(v3 - 1);
    *a1 = v10;
  }

  *(v3 - 3) = v2;
  *(v3 - 1) = v12;
  return v3;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[v2 + 3];
    v2 += 3;
  }

  while (v3 < v4);
  v5 = &a1[v2];
  if (v2 == 3)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v3 >= v7);
  }

  else
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v3 >= v6);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v11 = v8[2];
      v12 = *(v9 + 16);
      *v8 = *v9;
      v8[2] = v12;
      *(v9 + 16) = v11;
      *v9 = v10;
      do
      {
        v13 = v8[3];
        v8 += 3;
      }

      while (v3 < v13);
      do
      {
        v14 = *(v9 - 24);
        v9 -= 24;
      }

      while (v3 >= v14);
    }

    while (v8 < v9);
  }

  if (v8 - 3 != a1)
  {
    v15 = *(v8 - 3);
    a1[2] = *(v8 - 1);
    *a1 = v15;
  }

  *(v8 - 3) = v3;
  *(v8 - 1) = v17;
  return v8 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = (a2 - 24);
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (*(a1 + 24) < v4->n128_u64[0])
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*a1 < *(a1 + 24))
      {
        v62 = *(a1 + 16);
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v63;
        v6[1].n128_u64[0] = v62;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (*a1 >= v20)
    {
      if (v20 < v22)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v24 < v6->n128_u64[0])
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v20 >= v22)
    {
      v55 = *(a1 + 16);
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v56;
      *(a1 + 40) = v55;
      if (*(a1 + 24) >= v22)
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v21->n128_u64[0] >= v23->n128_u64[0])
    {
      return 1;
    }

    v57 = *(a1 + 64);
    v58 = *v21;
    v59 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v59;
    *v23 = v58;
    *(a2 - 1) = v57;
    if (v6->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v60 = *(a1 + 40);
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v61;
    *(a1 + 64) = v60;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (*a1 >= v16)
  {
    if (v16 < v14)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v17 < v15->n128_u64[0])
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v16 >= v14)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (*(a1 + 24) < v14)
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = v13->n128_u64[0];
    v51 = *v47;
    if (v50 < *v47)
    {
      v65 = *(v47 + 8);
      v52 = v48;
      while (1)
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          break;
        }

        v52 -= 24;
        if (*(v53 + 24) >= v51)
        {
          v54 = a1 + v52 + 72;
          goto LABEL_39;
        }
      }

      v54 = a1;
LABEL_39:
      *v54 = v51;
      *(v54 + 8) = v65;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,ClipperLib::LocalMinimum *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[24 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*a1 < *v13)
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 2);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 2) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        v18 = 0;
        v29 = *a1;
        v30 = *(a1 + 2);
        v19 = a1;
        do
        {
          v20 = &v19[24 * v18];
          v21 = v20 + 24;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v24 = *(v20 + 6);
            v23 = v20 + 48;
            if (v24 >= *(v23 - 3))
            {
              v18 = v22;
            }

            else
            {
              v21 = v23;
            }
          }

          v25 = *v21;
          *(v19 + 2) = *(v21 + 2);
          *v19 = v25;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 -= 24;
        if (v21 == v6)
        {
          *(v21 + 2) = v30;
          *v21 = v29;
        }

        else
        {
          v26 = *v6;
          *(v21 + 2) = *(v6 + 2);
          *v21 = v26;
          *v6 = v29;
          *(v6 + 2) = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, (v21 + 24), a4, 0xAAAAAAAAAAAAAAABLL * ((v21 + 24 - a1) >> 3));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v6 = (a1 + 24 * v5);
      if (0x5555555555555556 * ((a4 - a1) >> 3) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = v6[3];
        v9 = __OFSUB__(v7, *v6);
        v8 = v7 - *v6 < 0;
        if (v7 >= *v6)
        {
          v7 = *v6;
        }

        if (v8 != v9)
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
        }
      }

      v10 = *a4;
      if (*a4 >= v7)
      {
        v18 = *(a4 + 1);
        do
        {
          v11 = a4;
          a4 = v6;
          v12 = *v6;
          v11[2] = v6[2];
          *v11 = v12;
          if (v4 < v5)
          {
            break;
          }

          v13 = (2 * v5) | 1;
          v6 = (a1 + 24 * v13);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v14 = *v6;
            v5 = v13;
          }

          else
          {
            v14 = v6[3];
            v16 = __OFSUB__(v14, *v6);
            v15 = v14 - *v6 < 0;
            if (v14 >= *v6)
            {
              v14 = *v6;
            }

            if (v15 != v16)
            {
              v6 += 3;
            }

            else
            {
              v5 = v13;
            }
          }
        }

        while (v10 >= v14);
        *a4 = v10;
        result = v18;
        *(a4 + 1) = v18;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (a1 + 24 * v4);
    v6 = (a2 - 24);
    v7 = *(a2 - 24);
    if (v7 < *v5)
    {
      v11 = *(a2 - 16);
      do
      {
        v8 = v6;
        v6 = v5;
        v9 = *v5;
        *(v8 + 2) = *(v5 + 2);
        *v8 = v9;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (a1 + 24 * v4);
      }

      while (v7 < *v5);
      *v6 = v7;
      result = v11;
      *(v6 + 8) = v11;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *v5;
    if (*v5 < v8)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v9 = *v5;
      }

      while (*v5 < v7);
      *v6 = v7;
    }
  }

  return result;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(v18);
  }
}

void *std::list<long long>::__move_assign(uint64_t *a1, void *a2)
{
  result = std::__list_imp<long long>::clear(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,ClipperLib::IntersectNode **>(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(v8, a2, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v8, v49, a3);
    v9 = (v49 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v49 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(v8, v49, a3, -v11, a5 & 1);
      v9 = (v49 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,ClipperLib::IntersectNode **>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t *std::list<long long>::__sort<std::__less<void,void>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *a2;
      if (*(*a2 + 16) < result[2])
      {
        v7 = *v5;
        v6 = v5[1];
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = *result;
        *(v8 + 8) = v5;
        *v5 = v8;
        *result = v5;
        v5[1] = result;
        return v5;
      }
    }

    else
    {
      v11 = a3 >> 1;
      v12 = (a3 >> 1) + 1;
      v13 = result;
      do
      {
        v13 = v13[1];
        --v12;
      }

      while (v12 > 1);
      v14 = std::list<long long>::__sort<std::__less<void,void>>(result, v13, a3 >> 1, a4);
      result = std::list<long long>::__sort<std::__less<void,void>>(v13, a2, a3 - v11, a4);
      v15 = v14[2];
      if (result[2] >= v15)
      {
        v17 = v14[1];
        i = result;
        result = v14;
      }

      else
      {
          ;
        }

        v18 = *i;
        v19 = *(*i + 8);
        v20 = *result;
        *(v20 + 8) = v19;
        *v19 = v20;
        v21 = *v14;
        v17 = v14[1];
        *(v21 + 8) = result;
        *result = v21;
        *v14 = v18;
        *(v18 + 8) = v14;
      }

      if (v17 != i && i != a2)
      {
        v22 = i;
        do
        {
          v23 = v17[2];
          if (i[2] >= v23)
          {
            v17 = v17[1];
          }

          else
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            *(v27 + 8) = v26;
            *v26 = v27;
            if (v22 == i)
            {
              v22 = j;
            }

            v29 = *v17;
            v28 = v17[1];
            *(v29 + 8) = i;
            *i = v29;
            *v17 = v25;
            *(v25 + 8) = v17;
            v17 = v28;
            i = j;
          }
        }

        while (v17 != v22 && i != a2);
      }
    }
  }

  return result;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<ClipperLib::IntPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B4358BBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<ClipperLib::IntPoint>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ClipperLib::IntPoint>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[3 * a2];
      __asm { FMOV            V0.2S, #-1.0 }

      do
      {
        *v4 = 0;
        v4[1] = 0;
        v4[2] = _D0;
        v4 += 3;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, v9);
    }

    v16 = 24 * v6;
    v17 = 24 * v6 + 24 * a2;
    __asm { FMOV            V0.2S, #-1.0 }

    v19 = v16;
    do
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = _D0;
      v19 += 3;
    }

    while (v19 != v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v16 - v20;
    memcpy((v16 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B8C765D0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1B8C765E0](v13);
  return a1;
}

void sub_1B4359064(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1B8C765E0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1B4359044);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1B4359298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id -[VKCaptureTextAnalyzer _blocksIntersectingQuad:inDocument:](VKCaptureTextAnalyzer *self, SEL a2, id a3, id a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = v6;
  v8 = [v6 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [VKQuad alloc];
          [v14 topLeft];
          v17 = v16;
          v19 = v18;
          [v14 topRight];
          v21 = v20;
          v23 = v22;
          [v14 bottomLeft];
          v25 = v24;
          v27 = v26;
          [v14 bottomRight];
          v30 = [(VKQuad *)v15 initWithTopLeft:v17 topRight:v19 bottomLeft:v21 bottomRight:v23, v25, v27, v28, v29];
          if ([(VKQuad *)v30 intersectsQuad:v5])
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  return v7;
}

uint64_t vk_orientationByRotatingLeft(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1B44281D0[a1];
  }
}

uint64_t vk_orientationByRotatingRight(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1B4428210[a1];
  }
}

void vk_orientationApplyToRectAtPoint(CGAffineTransform *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a6, -a7);
  _transformFromImageOrientation(a1, 0, &t2);
  v14 = v17;
  CGAffineTransformConcat(&v16, &v14, &t2);
  v17 = v16;
  CGAffineTransformMakeTranslation(&t2, a6, a7);
  v14 = v17;
  CGAffineTransformConcat(&v16, &v14, &t2);
  v17 = v16;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectApplyAffineTransform(v18, &v16);
}

uint64_t vk_clockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B4428250[a1 - 1];
  }
}

uint64_t vk_counterClockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B4428288[a1 - 1];
  }
}

CGAffineTransform *_transformFromImageOrientation@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v7;
  v8 = *(v5 + 32);
  *(a3 + 32) = v8;
  if (result <= 3)
  {
    if (result == 1)
    {
      v9 = 3.14159265;
    }

    else if (result == 2)
    {
      v9 = -1.57079633;
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v9 = 1.57079633;
    }

LABEL_17:
    v10 = -v9;
    if (!a2)
    {
      v10 = v9;
    }

    CGAffineTransformMakeRotation(&t2, v10);
    v11 = *(a3 + 16);
    *&v13.a = *a3;
    *&v13.c = v11;
    *&v13.tx = *(a3 + 32);
    result = CGAffineTransformConcat(&v15, &v13, &t2);
    v12 = *&v15.c;
    *a3 = *&v15.a;
    *(a3 + 16) = v12;
    *(a3 + 32) = *&v15.tx;
    return result;
  }

  if (result > 5)
  {
    if (result == 6)
    {
      v9 = -1.57079633;
    }

    else
    {
      if (result != 7)
      {
        return result;
      }

      v9 = 1.57079633;
    }
  }

  else
  {
    v9 = 0.0;
    if (result != 4)
    {
      v9 = 3.14159265;
    }
  }

  *&v15.a = v6;
  *&v15.c = v7;
  *&v15.tx = v8;
  result = CGAffineTransformScale(a3, &v15, -1.0, 1.0);
  if (v9 != 0.0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t vk_cgImagePropertyOrientationFromVKOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1B44282C0[a1 - 1];
  }
}

uint64_t vk_imageOrientationFromTransform(__int128 *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v1 = a1[1];
  v5 = *a1;
  v6 = v1;
  v4[2] = __vk_imageOrientationFromTransform_block_invoke;
  v4[3] = &unk_1E7BE4790;
  v7 = a1[2];
  v4[4] = &v8;
  [&unk_1F2C39198 enumerateObjectsUsingBlock:v4];
  v2 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v2;
}

CGAffineTransform *__vk_imageOrientationFromTransform_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  result = _transformFromImageOrientation(v6, 0, &v8);
  if (vabdd_f64(*(a1 + 40), *&v8) < 0.00999999978 && vabdd_f64(*(a1 + 48), *(&v8 + 1)) < 0.00999999978 && vabdd_f64(*(a1 + 56), *&v9) < 0.00999999978 && vabdd_f64(*(a1 + 64), *(&v9 + 1)) < 0.00999999978)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
    *a4 = 1;
  }

  return result;
}

unint64_t vk_swapLeftAndRightImageOrientation(unint64_t result)
{
  if (result <= 7)
  {
    return qword_1B44282E0[result];
  }

  return result;
}

uint64_t vk_orientationFromCGImagePropertyOrientation(int a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B4428320[a1 - 2];
  }
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _FilterByBlockType(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) blocksWithTypes:a2 inRegion:{0.0, 0.0, 1.0, 1.0, v12}];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

id _FilterByDataType(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v2;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v21 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v29 + 1) + 8 * i) getDataDetectorResults:0];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = ___FilterByDataType_block_invoke;
        v28[3] = &__block_descriptor_40_e37_B32__0__VNDataDetectorResult_8Q16_B24l;
        v28[4] = a2;
        v6 = [v5 vk_objectsPassingTest:v28];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * j);
              v13 = [v12 scannerResult];
              v14 = [v13 urlificationRange];
              v16 = v15;

              v17 = [v12 originalObservation];
              v18 = [v17 textBlockWithCharacterRange:{v14, v16}];
              [v3 addObject:v18];
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v9);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  return v3;
}

void sub_1B435BF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 160), 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B435CE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void vk_performBlockOnMainThread(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void vk_performBlockOnMainThreadAndWait(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

void vk_dispatchMainAfterDelay(void *a1, double a2)
{
  if (a2 == 0.0)
  {
    v2 = a1;
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }

  else
  {
    v3 = (a2 * 1000000000.0);
    v4 = a1;
    v5 = dispatch_time(0, v3);
    dispatch_after(v5, MEMORY[0x1E69E96A0], v4);
  }
}

void vk_performBlockOnMainThreadWithStrongSelf(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_initWeak(&location, v3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __vk_performBlockOnMainThreadWithStrongSelf_block_invoke;
  v6[3] = &unk_1E7BE4918;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  vk_performBlockOnMainThread(v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_1B435EAA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __vk_performBlockOnMainThreadWithStrongSelf_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void vk_performBlockOnQueueWithStrongSelf(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  objc_initWeak(&location, a2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __vk_performBlockOnQueueWithStrongSelf_block_invoke;
  block[3] = &unk_1E7BE4918;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __vk_performBlockOnQueueWithStrongSelf_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void vk_performWhileLocked(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 lock];
  v3[2](v3);

  [v4 unlock];
}

void vk_requestDeviceUnlockIfNecessaryWithCompletion(void *a1)
{
  v1 = a1;
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    if (v1)
    {
      v1[2](v1, 1);
    }
  }

  else
  {
    if (vk_processHasUnlockEntitlement_onceToken != -1)
    {
      vk_requestDeviceUnlockIfNecessaryWithCompletion_cold_1();
    }

    if (vk_processHasUnlockEntitlement_sHasEntitlement == 1)
    {
      v2 = objc_alloc_init(MEMORY[0x1E69D4260]);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __vk_requestDeviceUnlockIfNecessaryWithCompletion_block_invoke;
      v4[3] = &unk_1E7BE4940;
      v5 = v2;
      v6 = v1;
      v3 = v2;
      [v3 requestPasscodeUnlockUIWithOptions:0 withCompletion:v4];
    }

    else if (v1)
    {
      v1[2](v1, 0);
    }
  }
}

uint64_t vk_processHasUnlockEntitlement()
{
  if (vk_processHasUnlockEntitlement_onceToken != -1)
  {
    vk_requestDeviceUnlockIfNecessaryWithCompletion_cold_1();
  }

  return vk_processHasUnlockEntitlement_sHasEntitlement;
}

uint64_t __vk_requestDeviceUnlockIfNecessaryWithCompletion_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void __vk_processHasUnlockEntitlement_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    *cf = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.springboard.requestDeviceUnlock", cf);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = [v3 BOOLValue];
      }

      else
      {
        v5 = 0;
      }

      vk_processHasUnlockEntitlement_sHasEntitlement = v5;
      CFRelease(v3);
    }

    CFRelease(v1);
    if (*cf)
    {
      v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __vk_processHasUnlockEntitlement_block_invoke_cold_1(cf, v6);
      }

      CFRelease(*cf);
    }
  }

  v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = VKMUIStringForBool(vk_processHasUnlockEntitlement_sHasEntitlement);
    *cf = 138412290;
    *&cf[4] = v8;
    _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Process has device unlock entitlement: %@", cf, 0xCu);
  }
}

uint64_t vk_deviceIsVirtualMachine()
{
  if (vk_deviceIsVirtualMachine_onceToken != -1)
  {
    vk_deviceIsVirtualMachine_cold_1();
  }

  return vk_deviceIsVirtualMachine_result;
}

uint64_t __vk_deviceIsVirtualMachine_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    vk_deviceIsVirtualMachine_result = v2 != 0;
  }

  return result;
}

uint64_t internal_vk_deviceSupportsImageAnalysis()
{
  if (internal_vk_deviceSupportsImageAnalysis_onceToken != -1)
  {
    internal_vk_deviceSupportsImageAnalysis_cold_1();
  }

  return internal_vk_deviceSupportsImageAnalysis__supports;
}

void __internal_vk_deviceSupportsImageAnalysis_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  internal_vk_deviceSupportsImageAnalysis__supports = deviceHasAppleNeuralEngine();
  v0 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v3 = 67109120;
    LODWORD(v4) = internal_vk_deviceSupportsImageAnalysis__supports;
    _os_log_impl(&dword_1B4335000, v0, OS_LOG_TYPE_INFO, "Device has Neural Engine: %d", &v3, 8u);
  }

  v1 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (internal_vk_deviceSupportsImageAnalysis__supports)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1B4335000, v1, OS_LOG_TYPE_DEFAULT, "Device Supports Analysis: %@", &v3, 0xCu);
  }
}

uint64_t vk_deviceSupportsImageAnalysis()
{
  if (vk_deviceSupportsImageAnalysis_onceToken != -1)
  {
    vk_deviceSupportsImageAnalysis_cold_1();
  }

  return vk_deviceSupportsImageAnalysis__supportsWithOverride;
}

void __vk_deviceSupportsImageAnalysis_block_invoke()
{
  if (internal_vk_deviceSupportsImageAnalysis_onceToken != -1)
  {
    internal_vk_deviceSupportsImageAnalysis_cold_1();
  }

  vk_deviceSupportsImageAnalysis__supportsWithOverride = internal_vk_deviceSupportsImageAnalysis__supports;
  if ((internal_vk_deviceSupportsImageAnalysis__supports & 1) == 0 && +[VKCInternalSettings overrideDeviceAvailability]&& IsAppleInternalBuild())
  {
    vk_deviceSupportsImageAnalysis__supportsWithOverride = 1;
    v0 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B4335000, v0, OS_LOG_TYPE_DEFAULT, "Device does not natively support analysis, but override is enabled", v1, 2u);
    }
  }
}

uint64_t vk_deviceSupportsVisualSearch()
{
  if (vk_deviceSupportsVisualSearch_onceToken != -1)
  {
    vk_deviceSupportsVisualSearch_cold_1();
  }

  return vk_deviceSupportsVisualSearch_sIsSupported;
}

uint64_t __vk_deviceSupportsVisualSearch_block_invoke()
{
  result = deviceHasAppleNeuralEngine();
  vk_deviceSupportsVisualSearch_sIsSupported = result;
  return result;
}

BOOL vk_deviceSupportsVisualIntelligenceWithIsEligible(_BYTE *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A1350] currentWithUseCaseIdentifiers:&unk_1F2C391B0 language:0];
  *a1 = [MEMORY[0x1E69A1350] isDeviceEligible];
  v3 = VKMUIStringForGMAvailabilityStatus(v2);
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = VKMUIStringForBool(*a1);
    v6 = VKMUIStringForBool(v2 == 0);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Updated AIAvailability: isEligible: %@, AIStatus: %@, supportsResult: %@", &v8, 0x20u);
  }

  return v2 == 0;
}

uint64_t vk_imageAnalysisSupportedAndSettingsSwitchEnabled()
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (vk_deviceSupportsImageAnalysis_onceToken != -1)
  {
    vk_deviceSupportsImageAnalysis_cold_1();
  }

  if (vk_deviceSupportsImageAnalysis__supportsWithOverride != 1)
  {
    return 0;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"AppleLiveTextEnabled" inDomain:*MEMORY[0x1E696A400]];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v3 = MEMORY[0x1E695DF58];
    v4 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [v3 matchedLanguagesFromAvailableLanguages:&unk_1F2C391C8 forPreferredLanguages:v5];

    v2 = [v6 count] != 0;
  }

  return v2;
}

uint64_t vk_deviceSupportsDataScanning()
{
  if (vk_deviceSupportsDataScanning_onceToken != -1)
  {
    vk_deviceSupportsDataScanning_cold_1();
  }

  return vk_deviceSupportsDataScanning_isSupported;
}

uint64_t __vk_deviceSupportsDataScanning_block_invoke()
{
  result = deviceHasAppleNeuralEngine();
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  vk_deviceSupportsDataScanning_isSupported = result;
  return result;
}

uint64_t vk_deviceSupportsRemoveBackground()
{
  if (vk_deviceSupportsRemoveBackground_onceToken != -1)
  {
    vk_deviceSupportsRemoveBackground_cold_1();
  }

  return vk_deviceSupportsRemoveBackground_isSupported;
}

uint64_t __vk_deviceSupportsRemoveBackground_block_invoke()
{
  result = deviceHasAppleNeuralEngine();
  vk_deviceSupportsRemoveBackground_isSupported = result;
  return result;
}

uint64_t vk_deviceSupportsAddingSystemStickers()
{
  if (vk_deviceSupportsAddingSystemStickers_onceToken != -1)
  {
    vk_deviceSupportsAddingSystemStickers_cold_1();
  }

  return vk_deviceSupportsAddingSystemStickers_isSupported;
}

uint64_t __vk_deviceSupportsAddingSystemStickers_block_invoke()
{
  result = deviceHasAppleNeuralEngine();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  vk_deviceSupportsAddingSystemStickers_isSupported = result;
  return result;
}

uint64_t vk_supportsOpticalFlowTracking()
{
  if (vk_supportsOpticalFlowTracking_onceToken != -1)
  {
    vk_supportsOpticalFlowTracking_cold_1();
  }

  return vk_supportsOpticalFlowTracking_isSupported;
}

uint64_t __vk_supportsOpticalFlowTracking_block_invoke()
{
  result = deviceHasAppleNeuralEngine();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  vk_supportsOpticalFlowTracking_isSupported = result;
  return result;
}

uint64_t vk_supportsContextAwareDataDetectors()
{
  if (vk_supportsContextAwareDataDetectors_onceToken != -1)
  {
    vk_supportsContextAwareDataDetectors_cold_1();
  }

  return vk_supportsContextAwareDataDetectors_isSupported;
}

uint64_t __vk_supportsContextAwareDataDetectors_block_invoke()
{
  result = _os_feature_enabled_impl();
  vk_supportsContextAwareDataDetectors_isSupported = result;
  return result;
}

id getLTUIVisualTranslationViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLTUIVisualTranslationViewClass_softClass_0;
  v7 = getLTUIVisualTranslationViewClass_softClass_0;
  if (!getLTUIVisualTranslationViewClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLTUIVisualTranslationViewClass_block_invoke_0;
    v3[3] = &unk_1E7BE3F48;
    v3[4] = &v4;
    __getLTUIVisualTranslationViewClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B4360678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B436096C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getLTUIVisualTranslationViewClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TranslationUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TranslationUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7BE49D0;
    v6 = 0;
    TranslationUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (TranslationUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LTUIVisualTranslationView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLTUIVisualTranslationViewClass_block_invoke_cold_1();
  }

  getLTUIVisualTranslationViewClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TranslationUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  TranslationUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1B43645B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getDDDetectionControllerClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary_0();
  result = objc_getClass("DDDetectionController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDDetectionControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDDetectionControllerClass_block_invoke_cold_1();
    return DataDetectorsUILibrary_0();
  }

  return result;
}

uint64_t DataDetectorsUILibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DataDetectorsUILibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7BE4BE8;
    v5 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary_1;
  v1 = v3[0];
  if (!DataDetectorsUILibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getkDataDetectorsGroupAllResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsGroupAllResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsGroupAllResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsGroupTranscriptKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsGroupTranscriptKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsGroupTranscriptKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsGroupCategoryKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsGroupCategoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsGroupCategoryKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsDocumentLanguageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsDocumentLanguageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsDocumentLanguageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBCSDetectedCodeClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BarcodeSupportLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BarcodeSupportLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7BE4C00;
    v6 = 0;
    BarcodeSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BarcodeSupportLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BCSDetectedCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBCSDetectedCodeClass_block_invoke_cold_1();
  }

  getBCSDetectedCodeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BarcodeSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BarcodeSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B4365D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B436886C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 72));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_1B43696A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

double computeCornerMatrix@<D0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v6 - v10;
  v15 = v9 + v13 - v7 - v11;
  if (v14 == 0.0 && v15 == 0.0)
  {
    v16 = v6 - v12;
    v17 = v8 - v6;
    v18 = v7 - v13;
    v19 = v9 - v7;
    v20 = 0.0;
    v21 = 0.0;
  }

  else
  {
    v22 = v11 - v9;
    v23 = v7 - v9;
    v24 = v6 - v8;
    v25 = (v6 - v8) * v22 - v23 * (v10 - v8);
    v20 = (v14 * v22 - v15 * (v10 - v8)) / v25;
    v21 = (v24 * v15 - v23 * v14) / v25;
    v16 = v6 - v12 + v20 * v6;
    v18 = v7 - v13 + v20 * v7;
    v17 = v10 - v12 + v21 * v10;
    v19 = v11 - v13 + v21 * v11;
  }

  v26 = 1.0 / a3;
  v27 = 1.0 / a4;
  *a2 = v26 * v16;
  *(a2 + 8) = v26 * v18;
  *(a2 + 16) = 0;
  *(a2 + 24) = v26 * v20;
  *(a2 + 32) = v27 * v17;
  *(a2 + 40) = v27 * v19;
  *(a2 + 48) = 0;
  *(a2 + 56) = v27 * v21;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = xmmword_1B44283D0;
  *(a2 + 112) = 0;
  *(a2 + 96) = v12 + a6 * v17 + a5 * v16;
  *(a2 + 104) = v13 + a6 * v19 + a5 * v18;
  result = a6 * v21 + a5 * v20 + 1.0;
  *(a2 + 120) = result;
  return result;
}

void sub_1B436C214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VKDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

void *VKSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *VKProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

void *VKClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef VKCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t VKCheckedDynamicCast(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    [VKAssert handleFailedAssertWithCondition:"src == ((void*)0) || result != ((void*)0)" functionName:"id VKCheckedDynamicCast(Class simulateCrash:id<NSObject>)" showAlert:0 format:0, @"Unexpected object type in checked dynamic cast %@ expects %@", objc_opt_class(), a1];
    return 0;
  }

  return v2;
}

void *VKCheckedProtocolCast(Protocol *a1, void *a2)
{
  if (!a1)
  {
    [VKAssert handleFailedAssertWithCondition:"protocol" functionName:"id VKCheckedProtocolCast(Protocol * simulateCrash:id<NSObject>)" showAlert:0 format:0, @"Protocol is nil"];
  }

  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    v4 = objc_opt_class();
    if (a1)
    {
      Name = protocol_getName(a1);
    }

    else
    {
      Name = "<No protocol supplied>";
    }

    [VKAssert handleFailedAssertWithCondition:"src == ((void*)0) || result != ((void*)0)" functionName:"id VKCheckedProtocolCast(Protocol * simulateCrash:id<NSObject>)" showAlert:0 format:0, @"Unexpected object type in checked protocol cast %@ expects %s", v4, Name];
    return 0;
  }

  return a2;
}

void sub_1B4370CC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B43731C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B437350C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14)
{
  a11 = v15;
  a12 = v14;
  a13 = a1;
  a14 = a2;

  vk_performWhileLocked(a1, &a9);
}

CGAffineTransform *OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return VKMAffineTransformVerticalFlip(&a71, v74, v75, v72, v73);
}

void sub_1B4375404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4378008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4378110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B43781BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1B437839C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B43785B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4378EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4379380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B43796C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4379AF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B4379B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1B437A040(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_1B437ACC0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B437B538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B437B988(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1B437FAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4380244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B43829FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B4382C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4384294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B4384D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B4386124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1B4386758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B43897EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B438C0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B438D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B438F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B438F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 48) = *(a2 + 48);
  return result;
}

Class __getBCSActionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BarcodeSupportLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BarcodeSupportLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7BE5C90;
    v6 = 0;
    BarcodeSupportLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (BarcodeSupportLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BCSAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBCSActionClass_block_invoke_cold_1();
  }

  getBCSActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BarcodeSupportLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  BarcodeSupportLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id __VKVNBaselineAngles_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 getCROutputRegion];
  [v2 visualTextAngle];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:-v3];

  return v4;
}

double VKVNGlobalBaselineAngleFromAngles(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 sortedArrayUsingSelector:sel_compare_];
    v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(v2, "count") >> 1}];
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

id VKVNRectClosestToPoint(void *a1, double a2, double a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __VKVNRectClosestToPoint_block_invoke;
  v6[3] = &__block_descriptor_48_e59_q24__0__VNRectangleObservation_8__VNRectangleObservation_16l;
  *&v6[4] = a2;
  *&v6[5] = a3;
  v3 = [a1 sortedArrayUsingComparator:v6];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __VKVNRectClosestToPoint_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 boundingBox];
  v10 = VKMCenterOfRect(v6, v7, v8, v9);
  v12 = v11;
  [v5 boundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = VKMCenterOfRect(v14, v16, v18, v20);
  v23 = v22;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = VKMDistanceSquared(v10, v12, v24, v25);
  v27 = VKMDistanceSquared(v21, v23, v24, v25);
  if (v26 >= v27)
  {
    return v27 < v26;
  }

  else
  {
    return -1;
  }
}

double VKMOffsetForEdgeOfFrame(int a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return CGRectGetMinY(*&a2);
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return CGRectGetMaxY(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidY(*&a2);
  }

  else
  {
    if (!a1)
    {
      return CGRectGetMinX(*&a2);
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CGRectGetMaxX(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidX(*&a2);
  }
}

double VKMRectWithPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

double VKMRectWithSizeAlignedToRect(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.size.height = a4;
  v17.size.width = a3;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v18 = CGRectStandardize(v17);
  x = v18.origin.x;
  width = v18.size.width;
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  if (!CGRectIsNull(v18))
  {
    switch(a1)
    {
      case 3:
        v21.origin.x = a5;
        v21.origin.y = a6;
        v21.size.width = a7;
        v21.size.height = a8;
        x = CGRectGetMaxX(v21) - width;
        break;
      case 2:
        v20.origin.x = a5;
        v20.origin.y = a6;
        v20.size.width = a7;
        v20.size.height = a8;
        x = CGRectGetMidX(v20) + width * -0.5;
        break;
      case 1:
        v19.origin.x = a5;
        v19.origin.y = a6;
        v19.size.width = a7;
        v19.size.height = a8;
        x = CGRectGetMinX(v19);
        break;
    }

    switch(a2)
    {
      case 3:
        v24.origin.x = a5;
        v24.origin.y = a6;
        v24.size.width = a7;
        v24.size.height = a8;
        CGRectGetMaxY(v24);
        break;
      case 2:
        v23.origin.x = a5;
        v23.origin.y = a6;
        v23.size.width = a7;
        v23.size.height = a8;
        CGRectGetMidY(v23);
        break;
      case 1:
        v22.origin.x = a5;
        v22.origin.y = a6;
        v22.size.width = a7;
        v22.size.height = a8;
        CGRectGetMinY(v22);
        break;
    }
  }

  return x;
}

BOOL VKMNearlyEqualRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (vabdd_f64(a1, a5) < 0.01 && vabdd_f64(a2, a6) < 0.01)
  {
    v9 = vabdd_f64(a3, a7) < 0.01;
    return vabdd_f64(a4, a8) < 0.01 && v9;
  }

  return result;
}

BOOL VKMNearlyEqualRectsWithThreshold(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = vabdd_f64(a2, a6);
  if (vabdd_f64(a1, a5) >= a9 || v17 >= a9)
  {
    return 0;
  }

  v20 = vabdd_f64(a3, a7) < a9;
  return vabdd_f64(a4, a8) < a9 && v20;
}

BOOL VKMNearlyContainsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v18 = CGRectInset(*&a1, -0.01, -0.01);
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;

  return CGRectContainsRect(v18, *&v12);
}

BOOL VKMRectsOverlapVertically(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxX(v24);
  if (MinX <= v16)
  {
    return MaxX >= v16;
  }

  else
  {
    return v18 >= MinX;
  }
}

BOOL VKMRectsOverlapHorizontally(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinY = CGRectGetMinY(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxY(v24);
  if (MinY <= v16)
  {
    return MaxY >= v16;
  }

  else
  {
    return v18 >= MinY;
  }
}

uint64_t VKMLineIntersectsRect(CGFloat a1, CGFloat a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = a4;
  v13 = a3;
  while (1)
  {
    v16 = p_ComputeOutcode(a1, a2, a5, a6, a7, a8);
    v17 = p_ComputeOutcode(v13, v12, a5, a6, a7, a8);
    result = 1;
    if (!v16 || !v17)
    {
      break;
    }

    if ((v17 & v16) != 0)
    {
      return 0;
    }

    v19 = (v13 + a1) * 0.5;
    v20 = (v12 + a2) * 0.5;
    v21 = VKMLineIntersectsRect(1, a1, a2, v19, v20, a5, a6, a7, a8);
    a1 = v19;
    a2 = v20;
    v13 = a3;
    v12 = a4;
    if (v21)
    {
      return 1;
    }
  }

  return result;
}

uint64_t p_ComputeOutcode(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (a2 <= CGRectGetMaxY(v14))
  {
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (a2 < CGRectGetMinY(v15))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 > CGRectGetMaxX(v16))
  {
    return v12 | 4;
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (a1 < CGRectGetMinX(v17))
  {
    return v12 | 8;
  }

  else
  {
    return v12;
  }
}

double VKMNearestPointOnInfiniteLineToPoint(double *a1, double a2, double a3)
{
  v3 = a1[1];
  v4 = a1[2] - *a1;
  v5 = a1[3] - v3;
  v6 = 1.0 / sqrt(v5 * v5 + v4 * v4);
  return *a1 + v4 * v6 * ((a3 - v3) * (v5 * v6) + (a2 - *a1) * (v4 * v6));
}

double VKMNearestPointOnLineSegmentToPoint(double *a1, double a2, double a3)
{
  v4 = *a1;
  v5 = a1[1];
  result = a1[2];
  v7 = result - *a1;
  v8 = a1[3] - v5;
  v9 = sqrt(v8 * v8 + v7 * v7);
  if (v9 <= 0.0)
  {
    return *a1;
  }

  v10 = v7 * (1.0 / v9);
  v11 = (a3 - v5) * (v8 * (1.0 / v9)) + (a2 - v4) * v10;
  if (v11 <= 0.0)
  {
    return *a1;
  }

  if (v11 < v9)
  {
    return v4 + v10 * v11;
  }

  return result;
}

uint64_t VKMDistanceFromLineToLineAtPoint(double *a1, double *a2)
{
  v5 = 0;
  v3[0] = 0.0;
  v3[1] = 0.0;
  return VKMIntersectionOfLines(a1, a2, &v5, &v4, v3, 1, 1);
}

uint64_t VKMIntersectionOfLines(double *a1, double *a2, double *a3, double *a4, double *a5, char a6, char a7)
{
  v7 = a1[1];
  v8 = a1[2] - *a1;
  v9 = a1[3] - v7;
  v10 = a2[1];
  v11 = a2[2] - *a2;
  v12 = a2[3] - v10;
  v13 = (v9 * (*a2 - *a1) + (v7 - v10) * v8) / (v12 * v8 - v11 * v9);
  *a4 = v13;
  if ((a6 & 1) == 0 && (v13 < 0.0 || v13 > 1.0))
  {
    return 0;
  }

  v15 = (v12 * (*a1 - *a2) + (a2[1] - a1[1]) * v11) / (v9 * v11 - v8 * v12);
  *a3 = v15;
  if ((a7 & 1) == 0 && (v15 < 0.0 || v15 > 1.0))
  {
    return 0;
  }

  v18 = a1[1];
  *a5 = *a1 + v15 * v8;
  a5[1] = v18 + *a3 * v9;
  return 1;
}

uint64_t VKMSizeIsEmptyOrHasNanOrInf(double a1, double a2)
{
  result = 1;
  if (a1 != 0.0)
  {
    v3 = fabs(a2) == INFINITY;
    if (fabs(a1) == INFINITY)
    {
      v3 = 1;
    }

    return a2 == 0.0 || v3;
  }

  return result;
}

double VKMSizeWithMaxArea(double result, double a2, double a3, double a4)
{
  if (result * a2 <= a3 * a4)
  {
    return a3;
  }

  return result;
}

double VKMUnionRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return *MEMORY[0x1E695F058];
  }

  return a5;
}

double VKMHorizontalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmax(MinX, CGRectGetMinX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmin(MaxX, CGRectGetMaxX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmin(MaxY, CGRectGetMaxY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmax(MinY, CGRectGetMinY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

double VKMVerticalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MaxX = CGRectGetMaxX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmin(MaxX, CGRectGetMaxX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmax(MinX, CGRectGetMinX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmax(MinY, CGRectGetMinY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmin(MaxY, CGRectGetMaxY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

BOOL VKMIntersectsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    result = a1 + a3 > a5;
  }

  else
  {
    result = a5 + a7 > a1;
  }

  if (a2 >= a6)
  {
    if (a6 + a8 > a2)
    {
      return result;
    }

    return 0;
  }

  if (a2 + a4 <= a6)
  {
    return 0;
  }

  return result;
}

double VKMMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double VKMPointMin(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double VKMPointMax(double result, double a2, double a3)
{
  if (result < a3)
  {
    return a3;
  }

  return result;
}

double VKMOrthogonalDistance(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = a2 - a4;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return v4 + v5;
}

void VKMDistanceToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 < CGRectGetMinX(v16))
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (a2 < CGRectGetMinY(v17))
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
LABEL_7:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      return;
    }

    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    if (a2 <= MaxY)
    {
      return;
    }

LABEL_13:
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    CGRectGetMaxY(v28);
    return;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MinY = CGRectGetMinY(v20);
  if (a1 <= MaxX)
  {
    if (a2 >= MinY)
    {
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      if (a2 > CGRectGetMaxY(v29))
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        CGRectGetMaxY(v30);
      }
    }

    else
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMinY(v25);
    }

    return;
  }

  if (a2 < MinY)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxX(v21);
    goto LABEL_7;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v15 = CGRectGetMaxY(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxX(v27);
  if (a2 > v15)
  {
    goto LABEL_13;
  }
}

double VKMDistanceToRectFromRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  MidX = CGRectGetMidX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MidY = CGRectGetMidY(v23);
  v16 = VKMClamp(MidX, a5, a5 + a7);
  v17 = VKMClamp(MidY, a6, a6 + a8);
  v18 = VKMClamp(v16, a1, a1 + a3);
  v19 = VKMClamp(v17, a2, a2 + a4);
  return sqrt((v17 - v19) * (v17 - v19) + (v16 - v18) * (v16 - v18));
}

double VKMClampPointInRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = VKMClamp(a1, a3, a3 + a5);
  VKMClamp(a2, a4, a4 + a6);
  return v9;
}

double VKMCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double VKMRectGetMaxPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double VKMGrowRectToPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  if (!CGRectIsNull(*&a1))
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    if (MinX >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = MinX;
    }

    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMaxX(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMinY(v15);
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxY(v16);
    return v11;
  }

  return a5;
}

double VKMFlipRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGRectGetMidY(*&a1);
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMidY(v14);
  return a1;
}

double VKMCenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

BOOL VKMRectIsFinite(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4;
}

BOOL VKMRectHasArea(double a1, double a2, double a3, double a4)
{
  result = 0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v5 = a3 != 0.0;
    if (a4 == 0.0)
    {
      v5 = 0;
    }

    v6 = (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v5;
    return (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v6;
  }

  return result;
}

void VKMRectDivide(CGRect *a1, CGRect *a2, CGRectEdge a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  memset(v8, 0, sizeof(v8));
  if (!a1)
  {
    a1 = v8;
  }

  if (!a2)
  {
    a2 = v8;
  }

  CGRectDivide(*&a4, a1, a2, a8, a3);
}

uint64_t VKMGetCanvasSpaceCorners(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 16);
  v47 = *a1;
  v48 = v18;
  v49 = *(a1 + 32);
  VKMTransformedCornersOfRect(&v47, &v50, &v52, &v53, v54, a6, a7, a8, a9);
  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = a6;
  v56.origin.y = a7;
  v56.size.width = a8;
  v56.size.height = a9;
  MidY = CGRectGetMidY(v56);
  v21 = 0;
  v22 = 0;
  v23 = MidY * *(a1 + 16) + *a1 * MidX;
  v24 = 1000000.0;
  v25 = MidY * *(a1 + 24) + *(a1 + 8) * MidX;
  v26 = *(a1 + 32) + v23;
  v27 = *(a1 + 40) + v25;
  v28 = &v51;
  do
  {
    v29 = atan2(*v28 - v27, *(v28 - 1) - v26);
    v30 = fmod(v29 * 57.2957795, 360.0);
    if (v30 < 0.0)
    {
      v30 = v30 + 360.0;
    }

    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    v31 = fabs(360.0 - v30 + -135.0);
    if (v31 < v24)
    {
      v21 = v22;
      v24 = v31;
    }

    ++v22;
    v28 += 2;
  }

  while (v22 != 4);
  *a2 = *(&v50 + v21);
  v32 = (v21 + 2) & 3;
  if (v21 + 2 <= 0)
  {
    v32 = -(-(v21 + 2) & 3);
  }

  *a4 = *(&v50 + v32);
  v33 = *(a1 + 16);
  v47 = *a1;
  v48 = v33;
  v49 = *(a1 + 32);
  v34 = VKMIsTransformFlipped(v47.f64);
  v35 = v21 + 3;
  if (v34)
  {
    v36 = v21 + 1;
  }

  else
  {
    v36 = v21 + 3;
  }

  v37 = v36 & 3;
  if (!v34)
  {
    v35 = v21 + 1;
  }

  v39 = -v36;
  v38 = v39 < 0;
  v40 = v39 & 3;
  if (v38)
  {
    v41 = v37;
  }

  else
  {
    v41 = -v40;
  }

  *a5 = *(&v50 + v41);
  v42 = v35 & 3;
  v43 = -v35;
  v38 = v43 < 0;
  v44 = v43 & 3;
  if (v38)
  {
    v45 = v42;
  }

  else
  {
    v45 = -v44;
  }

  *a3 = *(&v50 + v45);
  return v21;
}

uint64_t VKMMixBOOLs(uint64_t result, unsigned int a2, double a3)
{
  if (a3 > 0.5)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

void VKMMixAnglesInDegrees(long double a1, long double a2, double a3)
{
  v5 = fmod(a1, 360.0);
  if (v5 < 0.0)
  {
    v5 = v5 + 360.0;
  }

  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = fmod(a2, 360.0);
  if (v7 < 0.0)
  {
    v7 = v7 + 360.0;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, v6) > 180.0)
  {
    if (v6 <= v7)
    {
      v7 = v7 + -360.0;
    }

    else
    {
      v7 = v7 + 360.0;
    }
  }

  fmod(v7 * a3 + v6 * (1.0 - a3), 360.0);
}

double VKMTranslatedRectMaximizingOverlapWithRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v34 = a1;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  if (MaxX > CGRectGetMaxX(v37))
  {
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    if (MinX > CGRectGetMinX(v39))
    {
      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = a8;
      v29 = CGRectGetMaxX(v40);
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      v30 = v29 - CGRectGetMaxX(v41);
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      v28 = CGRectGetMinX(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      v17 = v28 - CGRectGetMinX(v43);
      if (v30 < v17)
      {
        v17 = v30;
      }

      v18 = a1 + v17;
LABEL_11:
      v34 = v18;
      goto LABEL_12;
    }
  }

  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  v19 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  if (v19 < CGRectGetMinX(v45))
  {
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v20 = CGRectGetMaxX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    if (v20 < CGRectGetMaxX(v47))
    {
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      v31 = CGRectGetMinX(v48);
      v49.origin.x = a5;
      v49.origin.y = a6;
      v49.size.width = a7;
      v49.size.height = a8;
      v32 = v31 - CGRectGetMinX(v49);
      v50.origin.x = a1;
      v50.origin.y = a2;
      v50.size.width = a3;
      v50.size.height = a4;
      v21 = CGRectGetMaxX(v50);
      v51.origin.x = a5;
      v51.origin.y = a6;
      v51.size.width = a7;
      v51.size.height = a8;
      v22 = v21 - CGRectGetMaxX(v51);
      if (v32 < v22)
      {
        v22 = v32;
      }

      v18 = a1 - v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  v52.origin.x = a5;
  v52.origin.y = a6;
  v52.size.width = a7;
  v52.size.height = a8;
  MaxY = CGRectGetMaxY(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  if (MaxY <= CGRectGetMaxY(v53) || (v54.origin.x = a5, v54.origin.y = a6, v54.size.width = a7, v54.size.height = a8, v24 = CGRectGetMinY(v54), v55.origin.x = a1, v55.origin.y = a2, v55.size.width = a3, v55.size.height = a4, v24 <= CGRectGetMinY(v55)))
  {
    v60.origin.x = a5;
    v60.origin.y = a6;
    v60.size.width = a7;
    v60.size.height = a8;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = a1;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    if (MinY < CGRectGetMinY(v61))
    {
      v62.origin.x = a5;
      v62.origin.y = a6;
      v62.size.width = a7;
      v62.size.height = a8;
      v26 = CGRectGetMaxY(v62);
      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      if (v26 < CGRectGetMaxY(v63))
      {
        v64.origin.x = a1;
        v64.origin.y = a2;
        v64.size.width = a3;
        v64.size.height = a4;
        CGRectGetMinY(v64);
        v65.origin.x = a5;
        v65.origin.y = a6;
        v65.size.width = a7;
        v65.size.height = a8;
        CGRectGetMinY(v65);
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        CGRectGetMaxY(v66);
        v67.origin.x = a5;
        v67.origin.y = a6;
        v67.size.width = a7;
        v67.size.height = a8;
        CGRectGetMaxY(v67);
      }
    }
  }

  else
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    CGRectGetMaxY(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMaxY(v57);
    v58.origin.x = a5;
    v58.origin.y = a6;
    v58.size.width = a7;
    v58.size.height = a8;
    CGRectGetMinY(v58);
    v59.origin.x = a1;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    CGRectGetMinY(v59);
  }

  return v34;
}

double VKMOriginRotate(double *a1, double a2, double a3)
{
  v5 = __sincos_stret(a3);
  result = v5.__sinval * a2;
  *a1 = v5.__cosval * a2;
  a1[1] = v5.__sinval * a2;
  return result;
}

double VKMNiceAngleFromDelta(long double a1, long double a2)
{
  if (a2 != 0.0)
  {
    return atan2(a2, a1);
  }

  result = 3.14159265;
  if (a1 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

double VKMDeltaFromAngle(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double VKMRotatePoint90Degrees(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

double VKMNormalizeDifferenceAngleInDegrees(double a1, double a2)
{
  v2 = fmod(a1 - a2, 360.0);
  if (v2 > 180.0)
  {
    v2 = v2 + -360.0;
  }

  if (v2 < -180.0)
  {
    v2 = v2 + 360.0;
  }

  return fabs(v2);
}

double VKMNormalizeAngleAboutZeroInRadians(double a1)
{
  v1 = fmod(a1 + 3.14159265, 6.28318531);
  if (v1 < 0.0)
  {
    v1 = v1 + 6.28318531;
  }

  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return v1 + -3.14159265;
}

double VKMNormalizedAngleBetweenPoints(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a1;
  v7 = a4 - a2;
  v8 = 1.0 / sqrt(v7 * v7 + v6 * v6);
  v9 = a5 - a1;
  v10 = a6 - a2;
  v11 = 1.0 / sqrt(v10 * v10 + v9 * v9);
  return acos(v7 * v8 * (v10 * v11) + v6 * v8 * (v9 * v11));
}

void VKMRectFromNormalizedSubrect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  if (!CGRectIsInfinite(v16))
  {
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    if (!CGRectIsInfinite(v17))
    {
      v18.origin.x = a5;
      v18.origin.y = a6;
      v18.size.width = a7;
      v18.size.height = a8;
      if (!CGRectIsNull(v18))
      {
        v19.origin.x = a1;
        v19.origin.y = a2;
        v19.size.width = a3;
        v19.size.height = a4;
        if (!CGRectIsNull(v19))
        {
          v20.origin.x = a5;
          v20.origin.y = a6;
          v20.size.width = a7;
          v20.size.height = a8;
          CGRectGetMaxX(v20);
          v21.origin.x = a5;
          v21.origin.y = a6;
          v21.size.width = a7;
          v21.size.height = a8;
          CGRectGetMaxY(v21);
        }
      }
    }
  }
}

void VKMNormalizedSubrectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (!CGRectIsInfinite(*&a1))
  {
    v16.origin.x = a5;
    v16.origin.y = a6;
    v16.size.width = a7;
    v16.size.height = a8;
    if (!CGRectIsInfinite(v16))
    {
      v17.origin.x = a1;
      v17.origin.y = a2;
      v17.size.width = a3;
      v17.size.height = a4;
      if (!CGRectIsNull(v17))
      {
        v18.origin.x = a5;
        v18.origin.y = a6;
        v18.size.width = a7;
        v18.size.height = a8;
        if (!CGRectIsNull(v18))
        {
          v19.origin.x = a1;
          v19.origin.y = a2;
          v19.size.width = a3;
          v19.size.height = a4;
          CGRectGetMaxX(v19);
          v20.origin.x = a1;
          v20.origin.y = a2;
          v20.size.width = a3;
          v20.size.height = a4;
          CGRectGetMaxY(v20);
        }
      }
    }
  }
}

double VKMRectSubtractingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v42 = CGRectIntersection(*&a1, *&a5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v11;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v11;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    v37 = CGRectGetMaxY(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v38 = v37 - CGRectGetMaxY(v46);
    v47.origin.x = v11;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v33 = v38 * CGRectGetWidth(v47);
    v36 = height;
    v39 = x;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v16 = CGRectGetMinY(v48);
    v49.origin.x = v11;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v17 = v16 - CGRectGetMinY(v49);
    v50.origin.x = v11;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v18 = v17 * CGRectGetWidth(v50);
    v19 = v33;
    if (v18 <= v33)
    {
      v35 = MaxY - MinY;
      v21 = CGRectMinYEdge;
    }

    else
    {
      v51.origin.x = v11;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v20 = CGRectGetMaxY(v51);
      v52.size.height = v36;
      v52.origin.x = v39;
      v52.origin.y = y;
      v52.size.width = width;
      v35 = v20 - CGRectGetMinY(v52);
      v21 = CGRectMaxYEdge;
      v19 = v18;
    }

    v53.origin.x = v11;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    MaxX = CGRectGetMaxX(v53);
    v54.size.height = v36;
    v54.origin.x = v39;
    v54.origin.y = y;
    v54.size.width = width;
    v23 = MaxX - CGRectGetMaxX(v54);
    v55.origin.x = v11;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v24 = v23 * CGRectGetHeight(v55);
    if (v24 > v19)
    {
      v56.size.height = v36;
      v56.origin.x = v39;
      v56.origin.y = y;
      v56.size.width = width;
      v25 = CGRectGetMaxX(v56);
      v57.origin.x = v11;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      v21 = CGRectMinXEdge;
      v35 = v25 - CGRectGetMinX(v57);
      v19 = v24;
    }

    v58.size.height = v36;
    v58.origin.x = v39;
    v58.origin.y = y;
    v58.size.width = width;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    v27 = MinX - CGRectGetMinX(v59);
    v60.origin.x = v11;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    v28 = CGRectGetHeight(v60);
    v29 = v35;
    if (v27 * v28 > v19)
    {
      v61.origin.x = v11;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      v30 = CGRectGetMaxX(v61);
      v62.size.height = v36;
      v62.origin.x = v39;
      v62.origin.y = y;
      v62.size.width = width;
      v29 = v30 - CGRectGetMinX(v62);
      v21 = CGRectMaxXEdge;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v11;
    v63.origin.y = a2;
    v63.size.width = a3;
    v63.size.height = a4;
    CGRectDivide(v63, &slice, &remainder, v29, v21);
    return remainder.origin.x;
  }

  return v11;
}

double VKMRectFromAddingSize(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  MidX = CGRectGetMidX(*&a1);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMidY(v12);
  return MidX - (a3 + a5 + a5) * 0.5;
}

double VKMAspectRatio(double a1, double a2)
{
  result = a1 / a2;
  if (a2 == 0.0)
  {
    return 0.0;
  }

  return result;
}

double VKMSizeWithAspectRatio(int a1, double result, double a3, double a4, double a5)
{
  v5 = result == a4 && a3 == a5;
  if (!v5 && a4 != 0.0 && a5 != 0.0 && a4 != 3.40282347e38 && a5 != 3.40282347e38)
  {
    if (a1)
    {
      v6 = sqrt(a5 * a5 + a4 * a4);
      return a4 / v6 * (a3 * (a5 / v6) + result * (a4 / v6));
    }

    else if (vabdd_f64(result, a4) < 0.01)
    {
      return a3 * a4 / a5;
    }
  }

  return result;
}

double VKMSizeExpandedToMatchAspectRatio(double a1, double a2, double a3, double a4)
{
  v4 = a1 != a3;
  if (a2 != a4)
  {
    v4 = 1;
  }

  v5 = a3 <= 0.0 || !v4;
  if (v5 || a4 <= 0.0)
  {
    goto LABEL_12;
  }

  v6 = a3 / a4;
  if (v6 <= a1 / a2)
  {
    if (v6 < a1 / a2)
    {
      v7 = a1;
      v8 = a1 / v6;
      goto LABEL_13;
    }

LABEL_12:
    v8 = a2;
    v7 = a1;
    goto LABEL_13;
  }

  v7 = a2 * v6;
  v8 = a2;
LABEL_13:
  if (v7 < a1 || v8 < a2)
  {
    [VKAssert handleFailedAssertWithCondition:"result.width >= size.width && result.height >= size.height" functionName:"CGSize VKMSizeExpandedToMatchAspectRatio(CGSize simulateCrash:CGSize)" showAlert:0 format:0, @"VKMSizeExpandedToMatchAspectRatio() actually shrank the size"];
  }

  return v7;
}

double VKMScaleSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double VKMShrinkSizeToFitInSize(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double VKMFitOrFillSizeInSize(int a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 / a2;
  v6 = a5 / a3;
  if (v5 < v6 == a1)
  {
    v5 = v6;
  }

  return a2 * v5;
}

double VKMFitOrFillSizeInRect(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9 = a7 / a3;
  if (a6 / a2 < a7 / a3 != a1)
  {
    v9 = a6 / a2;
  }

  return VKMCenterRectOverRect(0.0, 0.0, a2 * v9, a3 * v9, a4, a5, a6, a7);
}

void VKMScaleRectAroundPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a5, -a6);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a7, a7);
  memset(&v15, 0, sizeof(v15));
  t1 = v17;
  v12 = v16;
  CGAffineTransformConcat(&v14, &t1, &v12);
  v12 = v17;
  CGAffineTransformInvert(&t1, &v12);
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectApplyAffineTransform(v18, &v14);
}

void VKMScaledRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MidY = CGRectGetMidY(v13);

  VKMScaleRectAroundPoint(a1, a2, a3, a4, MidX, MidY, a5);
}

void VKMVisibleUnscaledRectForNewScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, double a8)
{
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, a7, a7);
  v17 = v19;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformInvert(&v18, &v17);
  v17 = v18;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v21 = CGRectApplyAffineTransform(v20, &v17);
  v14 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, a6), *&v18.a, a5));
  VKMScaleRectAroundPoint(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, v14.f64[0], v14.f64[1], a7 / a8);
}

double VKMRectByExpandingBoundingRectToContentRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v25 = a1 + a5 * a3;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMaxY(v37);
  v26 = a1 + MaxX * a3;
  if (v25 >= v26)
  {
    v27 = a1 + MaxX * a3;
  }

  else
  {
    v27 = v25;
  }

  if (v25 >= v26)
  {
    v26 = v25;
  }

  v35 = v27;
  v28 = v26 - v27;
  v29 = -a9 / a11 * (v26 - v27);
  v38.origin.x = -a9 / a11;
  v38.origin.y = -a10 / a12;
  v38.size.width = 1.0 / a11;
  v38.size.height = 1.0 / a12;
  v30 = CGRectGetMaxX(v38);
  v39.origin.x = -a9 / a11;
  v39.origin.y = -a10 / a12;
  v39.size.width = 1.0 / a11;
  v39.size.height = 1.0 / a12;
  CGRectGetMaxY(v39);
  if (v29 >= v30 * v28)
  {
    v31 = v30 * v28;
  }

  else
  {
    v31 = v29;
  }

  return v35 + v31;
}

double VKMClampRectToRect(double a1, double a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v23 = a5 + a7;
  v15 = VKMClamp(a1, a5, a5 + a7);
  v21 = a6;
  v22 = a6 + a8;
  VKMClamp(a2, a6, a6 + a8);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MaxY = CGRectGetMaxY(v25);
  v18 = VKMClamp(MaxX, a5, v23);
  VKMClamp(MaxY, v21, v22);
  if (v15 >= v18)
  {
    return v18;
  }

  else
  {
    return v15;
  }
}

double VKMAliasRound(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double VKMAliasRoundedPoint(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double VKMRoundedPoint(double a1, double a2)
{
  v3 = VKMRound(a1);
  VKMRound(a2);
  return v3;
}

double VKMRoundedPointForScale(double a1, double a2, double a3)
{
  v4 = a2 * a3;
  v5 = VKMRound(a1 * a3);
  VKMRound(v4);
  return 1.0 / a3 * v5;
}

double VKMRectForScale(int a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v9 = a2;
  if (a6 == 0.0)
  {
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"CGRect VKMRectForScale(CGRect simulateCrash:CGFloat showAlert:BOOL)" format:0, 0, @"cannot give scale = 0 for VKMRoundedRectForScale!"];
  }

  else if (!CGRectIsNull(*&a2))
  {
    v25.origin.x = VKMMultiplyRectScalar(v9, a3, a4, a5, a6);
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    MinX = CGRectGetMinX(v25);
    v17 = MinX;
    if (a1)
    {
      v17 = VKMRound(MinX);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      MinY = CGRectGetMinY(v26);
      v19 = VKMRound(MinY);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      MaxX = CGRectGetMaxX(v27);
      v21 = VKMRound(MaxX) - v17;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      MaxY = CGRectGetMaxY(v28);
      v23 = VKMRound(MaxY);
    }

    else
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v19 = CGRectGetMinY(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v21 = CGRectGetMaxX(v30) - v17;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v23 = CGRectGetMaxY(v31);
    }

    return VKMMultiplyRectScalar(v17, v19, v21, v23 - v19, 1.0 / a6);
  }

  return v9;
}

double VKMAliasRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 == 0.0)
  {
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"CGRect VKMAliasRoundedRectForScale(CGRect simulateCrash:CGFloat)" showAlert:0 format:0, @"cannot give scale = 0 for VKMRoundedRectForScale!"];
  }

  else if (!CGRectIsNull(*&a1))
  {
    v34.origin.x = VKMMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    MinX = CGRectGetMinX(v34);
    v15 = floor(MinX);
    v16 = MinX - v15;
    v17 = ceil(MinX);
    if (v16 >= 0.49)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MinY = CGRectGetMinY(v35);
    v20 = floor(MinY);
    v21 = MinY - v20;
    v22 = ceil(MinY);
    if (v21 >= 0.49)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxX = CGRectGetMaxX(v36);
    v25 = floor(MaxX);
    v26 = MaxX - v25;
    v27 = ceil(MaxX);
    if (v26 < 0.49)
    {
      v27 = v25;
    }

    v33 = v27 - v18;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxY = CGRectGetMaxY(v37);
    v29 = floor(MaxY);
    v30 = MaxY - v29;
    v31 = ceil(MaxY);
    if (v30 < 0.49)
    {
      v31 = v29;
    }

    return VKMMultiplyRectScalar(v18, v23, v33, v31 - v23, 1.0 / a5);
  }

  return v8;
}

double VKMRoundedMinX(double a1, double a2, double a3, double a4)
{
  MinX = CGRectGetMinX(*&a1);

  return VKMRound(MinX);
}

double VKMRoundedMidX(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = VKMRound(a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MaxX = CGRectGetMaxX(v13);
  v10 = (v8 + VKMRound(MaxX)) * 0.5;

  return VKMRound(v10);
}

double VKMRoundedMaxX(double a1, double a2, double a3, double a4)
{
  MaxX = CGRectGetMaxX(*&a1);

  return VKMRound(MaxX);
}

double VKMRoundedMinY(double a1, double a2, double a3, double a4)
{
  MinY = CGRectGetMinY(*&a1);

  return VKMRound(MinY);
}

double VKMRoundedMidY(CGFloat a1, double a2, CGFloat a3, CGFloat a4)
{
  v8 = VKMRound(a2);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MaxY = CGRectGetMaxY(v13);
  v10 = (v8 + VKMRound(MaxY)) * 0.5;

  return VKMRound(v10);
}

double VKMRoundedMaxY(double a1, double a2, double a3, double a4)
{
  MaxY = CGRectGetMaxY(*&a1);

  return VKMRound(MaxY);
}

double VKMSizeGetMaxDimension(double result, double a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

double VKMClampSizeToMaxLength(double result, double a2, double a3)
{
  if (result >= a2)
  {
    v3 = result;
  }

  else
  {
    v3 = a2;
  }

  if (v3 > 0.0 && v3 > a3)
  {
    return result * (a3 / v3);
  }

  return result;
}

uint64_t VKMRectHasInfComponents(double a1, double a2, double a3, double a4)
{
  v4 = fabs(a3) == INFINITY;
  result = 1;
  if (fabs(a4) != INFINITY)
  {
    v6 = fabs(a1) == INFINITY;
    if (fabs(a2) == INFINITY)
    {
      v6 = 1;
    }

    return v4 || v6;
  }

  return result;
}

double VKMSanitizeRect(double result)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.0;
  }

  return result;
}

double VKMSanitizePoint(double result)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.0;
  }

  return result;
}

BOOL VKMIntersectsLine(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  [v5 a];
  v8 = v7;
  [v6 a];
  v10 = v8 - v9;
  if (v8 - v9 == 0.0)
  {
    *a3 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    [v6 b];
    v12 = v11;
    [v5 b];
    v14 = (v12 - v13) / v10;
    [v5 a];
    v16 = v15;
    [v5 b];
    *a3 = v14;
    *(a3 + 8) = v17 + v16 * v14;
  }

  return v10 != 0.0;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__9(uint64_t a1)
{
}

{
}

void sub_1B439B9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getDDUIActionClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDUIAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDUIActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDUIActionClass_block_invoke_cold_1();
    DataDetectorsUILibrary_1();
  }
}

void DataDetectorsUILibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __DataDetectorsUILibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7BE6010;
    v3 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!DataDetectorsUILibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getDDContextMenuActionClass_block_invoke_0(uint64_t a1)
{
  DataDetectorsUILibrary_1();
  result = objc_getClass("DDContextMenuAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuActionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDContextMenuActionClass_block_invoke_cold_1();
    return [(UIViewController(Utilities) *)v3 vk_viewIfLoaded];
  }

  return result;
}

id getDDContextMenuActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDContextMenuActionClass_softClass_1;
  v7 = getDDContextMenuActionClass_softClass_1;
  if (!getDDContextMenuActionClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDContextMenuActionClass_block_invoke_1;
    v3[3] = &unk_1E7BE3F48;
    v3[4] = &v4;
    __getDDContextMenuActionClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B439F2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43A0000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDContextMenuActionClass_block_invoke_1(uint64_t a1)
{
  DataDetectorsUILibrary_2();
  result = objc_getClass("DDContextMenuAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuActionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDContextMenuActionClass_block_invoke_cold_1();
    return DataDetectorsUILibrary_2();
  }

  return result;
}

uint64_t DataDetectorsUILibrary_2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_3)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DataDetectorsUILibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7BE6258;
    v5 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary_3;
  v1 = v3[0];
  if (!DataDetectorsUILibraryCore_frameworkLibrary_3)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_3 = result;
  return result;
}

void *__getkDataDetectorsAllResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_2();
  result = dlsym(v2, "kDataDetectorsAllResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsAllResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDDHighlighterKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_2();
  result = dlsym(v2, "kDDHighlighterKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDDHighlighterKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getDDUIActionClass_block_invoke_0(uint64_t a1)
{
  DataDetectorsUILibrary_2();
  result = objc_getClass("DDUIAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDUIActionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDUIActionClass_block_invoke_cold_1();
    return VKCRectFromNormalizedSubrect(v3);
  }

  return result;
}

void sub_1B43A06D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43A0964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43A1EA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1B43A382C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43A3C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getVICVisualIntelligenceAnalyzerClass_block_invoke_0(uint64_t a1)
{
  if (!VisualIntelligenceCoreLibraryCore_frameworkLibrary_0)
  {
    VisualIntelligenceCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = objc_getClass("VICVisualIntelligenceAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVICVisualIntelligenceAnalyzerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisualIntelligenceCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  VisualIntelligenceCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

double VKMFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

double VKMClamp(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

uint64_t VKMClampInt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t VKMClampRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + a2;
  if (a1 >= a3 + a4)
  {
    v5 = a3 + a4;
  }

  else
  {
    v5 = a1;
  }

  if (a1 < a3)
  {
    v5 = a3;
  }

  if (v4 >= a3 + a4)
  {
    v6 = a3 + a4;
  }

  else
  {
    v6 = a1 + a2;
  }

  if (v4 >= a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v5 < v7)
  {
    v7 = v5;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a3 + a4;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

BOOL VKMRangeContainsIndex(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + a2 >= a3;
  if (!a2)
  {
    v3 = 0;
  }

  v4 = a1 != 0x7FFFFFFFFFFFFFFFLL && v3;
  return a1 <= a3 && v4;
}

BOOL VKMRangeEnclosesRange(NSRange range2, NSRange range1)
{
  if (range2.location == 0x7FFFFFFFFFFFFFFFLL || range1.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  length = range1.length;
  range1.length = range2.length;
  location = range2.location;
  if (length)
  {
    v7.location = range1.location;
    v7.length = length;
    range1.location = location;
    return NSIntersectionRange(v7, range1).length == length;
  }

  else
  {
    v6 = range1.location <= range2.location + range2.length;
    if (range1.location < range2.location)
    {
      v6 = 0;
    }

    if (range2.length)
    {
      return v6;
    }

    else
    {
      return range2.location == range1.location;
    }
  }
}

id getDDContextMenuActionClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDContextMenuActionClass_softClass_2;
  v7 = getDDContextMenuActionClass_softClass_2;
  if (!getDDContextMenuActionClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDContextMenuActionClass_block_invoke_2;
    v3[3] = &unk_1E7BE3F48;
    v3[4] = &v4;
    __getDDContextMenuActionClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B43A6F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43A7E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkDataDetectorsAllResultsKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_3();
  result = dlsym(v2, "kDataDetectorsAllResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsAllResultsKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataDetectorsUILibrary_3()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DataDetectorsUILibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7BE6548;
    v5 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary_4;
  v1 = v3[0];
  if (!DataDetectorsUILibraryCore_frameworkLibrary_4)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_4 = result;
  return result;
}

void *__getkDDHighlighterKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_3();
  result = dlsym(v2, "kDDHighlighterKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDDHighlighterKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsMiddleTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_3();
  result = dlsym(v2, "kDataDetectorsMiddleText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsMiddleTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getDDContextMenuActionClass_block_invoke_2(uint64_t a1)
{
  DataDetectorsUILibrary_3();
  result = objc_getClass("DDContextMenuAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuActionClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDContextMenuActionClass_block_invoke_cold_1();
    return __getDDContextMenuConfigurationClass_block_invoke(v3);
  }

  return result;
}

VKKeyboardCameraInsertButton *__getDDContextMenuConfigurationClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary_3();
  result = objc_getClass("DDContextMenuConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDContextMenuConfigurationClass_block_invoke_cold_1();
    return [(VKKeyboardCameraInsertButton *)v3 initWithPrimaryAction:v4, v5];
  }

  return result;
}

void sub_1B43A972C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _SizeFromVKResolutionPreset(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 == 2)
    {
      *&v1 = 640.0;
      return *&v1;
    }

    if (a1 == 3)
    {
      *&v1 = 960.0;
      return *&v1;
    }

LABEL_14:
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 bounds];
    v2 = v5;

    return v2;
  }

  if (a1 == 4)
  {
    *&v1 = 1280.0;
    return *&v1;
  }

  if (a1 == 5)
  {
    *&v1 = 1920.0;
    return *&v1;
  }

  if (a1 != 6)
  {
    goto LABEL_14;
  }

  *&v1 = 3840.0;
  return *&v1;
}

void _MinFrameDurationFromVKFrameRatePreset(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = _SlowestMaxFrameRateRange(a2);
  v6 = v5;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5)
  {
    [v5 minFrameDuration];
  }

  if (a1 == 1)
  {
    CMTimeMake(&time2, 1, 30);
    v8 = *a3;
    if (CMTimeCompare(&v8, &time2) <= 0)
    {
      v7 = 30;
      goto LABEL_9;
    }
  }

  else if (a1 == 2)
  {
    CMTimeMake(&time2, 1, 60);
    v8 = *a3;
    if (CMTimeCompare(&v8, &time2) <= 0)
    {
      v7 = 60;
LABEL_9:
      CMTimeMake(&time2, 1, v7);
      *a3 = time2;
    }
  }
}

id _SlowestMaxFrameRateRange(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [v1 videoSupportedFrameRateRanges];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (v5)
        {
          [*(*(&v14 + 1) + 8 * i) maxFrameRate];
          v10 = v9;
          [v5 maxFrameRate];
          if (v10 >= v11)
          {
            continue;
          }
        }

        v12 = v8;

        v5 = v12;
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void _MaxFrameDurationFromVKFrameRatePreset(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = _SlowestMaxFrameRateRange(a2);
  v6 = v5;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5)
  {
    [v5 maxFrameDuration];
  }

  if (a1 == 1 || a1 == 2)
  {
    CMTimeMake(&time2, 1, 1);
    v7 = *a3;
    if ((CMTimeCompare(&v7, &time2) & 0x80000000) == 0)
    {
      CMTimeMake(&time2, 1, 1);
      *a3 = time2;
    }
  }
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id _VKSignpostLog()
{
  if (_VKSignpostLog_onceToken != -1)
  {
    _VKSignpostLog_cold_1();
  }

  v1 = _VKSignpostLog____VKSignpostLog;

  return v1;
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1B43AE70C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B43B0168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B43B64E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getVIUIVisualIntelligenceViewCoordinatorClass_block_invoke_0(uint64_t a1)
{
  if (!VisualIntelligenceUILibraryCore_frameworkLibrary_0)
  {
    VisualIntelligenceUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = objc_getClass("VIUIVisualIntelligenceViewCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVIUIVisualIntelligenceViewCoordinatorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisualIntelligenceUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  VisualIntelligenceUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1B43B9DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43BB69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getVICVisualIntelligenceAnalysisRequestClass_block_invoke(uint64_t a1)
{
  VisualIntelligenceCoreLibraryCore_0();
  result = objc_getClass("VICVisualIntelligenceAnalysisRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVICVisualIntelligenceAnalysisRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VisualIntelligenceCoreLibraryCore_0()
{
  if (!VisualIntelligenceCoreLibraryCore_frameworkLibrary_1)
  {
    VisualIntelligenceCoreLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }
}

uint64_t __VisualIntelligenceCoreLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  VisualIntelligenceCoreLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getVICVisualIntelligenceAnalysisRequestConfigClass_block_invoke_0(uint64_t a1)
{
  VisualIntelligenceCoreLibraryCore_0();
  result = objc_getClass("VICVisualIntelligenceAnalysisRequestConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVICVisualIntelligenceAnalysisRequestConfigClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPHPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPHPhotoLibraryClass_block_invoke_cold_1();
    return PhotosLibrary();
  }

  return result;
}

uint64_t PhotosLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotosLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7BE69D8;
    v5 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotosLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhotosLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPHFetchOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHFetchOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHFetchOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHFetchOptionsClass_block_invoke_cold_1();
    return __getPHAssetClass_block_invoke(v3);
  }

  return result;
}

Class __getPHAssetClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHAssetClass_block_invoke_cold_1();
    return __getPHImageRequestOptionsClass_block_invoke(v3);
  }

  return result;
}

Class __getPHImageRequestOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHImageRequestOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHImageRequestOptionsClass_block_invoke_cold_1();
    return __getPHImageManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getPHImageManagerClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHImageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHImageManagerClass_block_invoke_cold_1();
    return __getPHImageErrorKeySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getPHImageErrorKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosLibrary();
  result = dlsym(v2, "PHImageErrorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHImageErrorKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B43BCBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43BCE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B43BDDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_3_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_1B43C09C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1B43C12B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B43C1A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void **a30)
{
  ClipperLib::Clipper::~Clipper(&a30);
  a30 = &a27;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a30);

  _Unwind_Resume(a1);
}

void sub_1B43C2060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ClipperLib::ClipperOffset::~ClipperOffset(&a17);
  _Block_object_dispose(&a64, 8);
  ClipperLib::Clipper::~Clipper(v65);
  a64 = &a55;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a64);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__16(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 48;
  ClipperLib::ClipperBase::ClipperBase((a1 + 192), (a2 + 48 + *(*(a2 + 48) - 24)));
  *(a1 + 48) = &unk_1F2C030C8;
  *(a1 + 56) = 0;
  *(a1 + 192) = &unk_1F2C03110;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(v4 + 8);
  *(a1 + 72) = *(v4 + 24);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(v4 + 32);
  *(a1 + 96) = *(v4 + 48);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(v4 + 56);
  *(a1 + 120) = *(v4 + 72);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = 0;
  *(a1 + 128) = *(v4 + 80);
  *(a1 + 136) = a1 + 136;
  *(a1 + 144) = a1 + 136;
  *(a1 + 152) = 0;
  v5 = *(v4 + 104);
  if (v5)
  {
    v7 = *(a2 + 136);
    v6 = *(a2 + 144);
    v8 = *(v7 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *(a1 + 136);
    *(v10 + 8) = v6;
    *v6 = v10;
    *(a1 + 136) = v7;
    *(v7 + 8) = a1 + 136;
    *(a1 + 152) = v5;
    *(a2 + 152) = 0;
  }

  result = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 160) = result;
  *(a1 + 176) = v12;
  return result;
}

void __Block_byref_object_dispose__17(void *a1)
{
  v2 = off_1F2C031A0;
  *(a1 + *(v3 - 3) + 48) = v2;
  std::__list_imp<long long>::clear(a1 + 17);
  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  ClipperLib::ClipperBase::~ClipperBase((a1 + 24));
}

void sub_1B43C2640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL VKArcIsClockwiseForAngles(double a1, double a2)
{
  VKMNormalizeAngleInRadians(a2 - a1);
  v5 = v4;
  VKMNormalizeAngleInRadians(a1 - a2);
  return v5 >= v6;
}

void sub_1B43C2EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v31 = v30;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_1B43C3AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45)
{
  ClipperLib::Clipper::~Clipper(&STACK[0x3B0]);
  STACK[0x3B0] = &a24;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);

  STACK[0x3B0] = &a42;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  _Block_object_dispose(&a45, 8);
  ClipperLib::ClipperOffset::~ClipperOffset((v52 + 48));
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  ClipperLib::ClipperOffset::~ClipperOffset((v51 + 48));

  _Unwind_Resume(a1);
}

void sub_1B43C3EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

ClipperLib::ClipperBase *ClipperLib::ClipperBase::ClipperBase(ClipperLib::ClipperBase *this, const ClipperLib::ClipperBase *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_1F2C03170;
  *(this + 1) = v4;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<ClipperLib::LocalMinimum>::__init_with_size[abi:ne200100]<ClipperLib::LocalMinimum*,ClipperLib::LocalMinimum*>(this + 16, *(a2 + 2), *(a2 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  v5 = *(a2 + 40);
  *(this + 6) = 0;
  *(this + 40) = v5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<ClipperLib::TEdge *>::__init_with_size[abi:ne200100]<ClipperLib::TEdge **,ClipperLib::TEdge **>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  v6 = *(a2 + 36);
  *(this + 10) = 0;
  *(this + 36) = v6;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<ClipperLib::OutRec *>::__init_with_size[abi:ne200100]<ClipperLib::OutRec **,ClipperLib::OutRec **>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  v7 = *(a2 + 13);
  *(this + 14) = 0;
  *(this + 13) = v7;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 3);
  return this;
}

void sub_1B43C4454(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[11] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[7] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[3] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ClipperLib::LocalMinimum>::__init_with_size[abi:ne200100]<ClipperLib::LocalMinimum*,ClipperLib::LocalMinimum*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::LocalMinimum>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43C4500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::LocalMinimum>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::LocalMinimum>>(a1, a2);
  }

  std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<ClipperLib::TEdge *>::__init_with_size[abi:ne200100]<ClipperLib::TEdge **,ClipperLib::TEdge **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43C45C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::PolyNode *>>(a1, a2);
  }

  std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<ClipperLib::OutRec *>::__init_with_size[abi:ne200100]<ClipperLib::OutRec **,ClipperLib::OutRec **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43C4680(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43C46FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
}

ClipperLib::ClipperOffset *ClipperLib::ClipperOffset::ClipperOffset(ClipperLib::ClipperOffset *this, const ClipperLib::ClipperOffset *a2)
{
  *this = *a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<std::vector<ClipperLib::IntPoint>>::__init_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(this + 16, *(a2 + 2), *(a2 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 40, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 64, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<ClipperLib::DoublePoint>::__init_with_size[abi:ne200100]<ClipperLib::DoublePoint*,ClipperLib::DoublePoint*>(this + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 4);
  v4 = *(a2 + 9);
  v5 = *(a2 + 10);
  v6 = *(a2 + 22);
  v8 = *(a2 + 7);
  v7 = *(a2 + 8);
  *(this + 24) = 0;
  *(this + 9) = v4;
  *(this + 10) = v5;
  *(this + 7) = v8;
  *(this + 8) = v7;
  *(this + 22) = v6;
  *(this + 23) = &unk_1F2C030A0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 192, *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<ClipperLib::PolyNode *>::__init_with_size[abi:ne200100]<ClipperLib::PolyNode **,ClipperLib::PolyNode **>(this + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 3);
  v9 = *(a2 + 15);
  *(this + 32) = *(a2 + 32);
  *(this + 15) = v9;
  return this;
}

void sub_1B43C48C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = *v6;
  if (*v6)
  {
    v2[25] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v2[12] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v2[9] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v2[6] = v11;
    operator delete(v11);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__init_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43C49A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, a2);
  }

  std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::vector<ClipperLib::DoublePoint>::__init_with_size[abi:ne200100]<ClipperLib::DoublePoint*,ClipperLib::DoublePoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::DoublePoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43C4BBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}