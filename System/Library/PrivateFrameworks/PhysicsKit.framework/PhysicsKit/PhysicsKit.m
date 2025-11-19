id valueWithCGPoint(CGPoint a1)
{
  v3 = a1;
  v1 = [MEMORY[0x277CCAE60] valueWithBytes:&v3 objCType:"{CGPoint=dd}"];

  return v1;
}

uint64_t b2ChainShape::GetVertex(b2ChainShape *this, int a2)
{
  if (a2 < 0 || (v2 = *(this + 2), ((*(this + 3) - v2) >> 3) <= a2))
  {
    b2ChainShape::GetVertex();
  }

  return v2 + 8 * a2;
}

uint64_t QuadTree::visitLeaves(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  std::__function::__value_func<void ()(float,float,int)>::__value_func[abi:ne200100](v4, a2);
  QuadTreeNode::visitLeaves(v2, v4);
  return std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](v4);
}

void sub_25E7AD440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25E7AD7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<b2Vec2>::resize(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      *(a1 + 8) = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<b2Vec2>::__append(a1, a2 - v2);
  }
}

void *std::vector<PKPoint>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(result, a2);
    }

    std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<PKPoint>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_25E7ADDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void addEdge(PKPhysicsBody *a1, const CGPoint *a2, const CGPoint *a3)
{
  v3 = a1;
  v3->_dynamicType = 1;
  v3->_bodyDef.type = 1;
  operator new();
}

uint64_t addPolygonFromPath(void *a1, uint64_t a2)
{
  v5 = a1;
  v6 = *(*a2 + 16) - *(*a2 + 8);
  v7 = malloc_type_malloc((v6 << 29) >> 29, 0x100004000313F17uLL);
  if ((v6 >> 3) >= 1)
  {
    v8 = 0;
    v9 = (v6 >> 3) & 0x7FFFFFFF;
    v10 = (*(*a2 + 8) + 4);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = PKGet_INV_PTM_RATIO();
      v14 = PKGet_INV_PTM_RATIO();
      v15 = v11 * v13;
      v16 = v12 * v14;
      if (v8 < 1 || (((v16 - v2) * (v16 - v2)) + ((v15 - v3) * (v15 - v3))) > 1.4211e-14)
      {
        v17 = &v7[2 * v8];
        *v17 = v15;
        v17[1] = v16;
        ++v8;
        v2 = v16;
        v3 = v11 * v13;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
    if (v8 > 1)
    {
      v18 = *v7;
      v19 = v7[1];
      if ((((v7[2 * v8 - 1] - v19) * (v7[2 * v8 - 1] - v19)) + ((v7[2 * v8 - 2] - *v7) * (v7[2 * v8 - 2] - *v7))) <= 1.4211e-14)
      {
        v20 = v8;
        v21 = &v7[2 * v8 - 4];
        do
        {
          v8 = v20 - 1;
          if (v20 < 3)
          {
            break;
          }

          v23 = *v21;
          v22 = v21[1];
          v21 -= 2;
          --v20;
        }

        while ((((v22 - v19) * (v22 - v19)) + ((v23 - v18) * (v23 - v18))) <= 1.4211e-14);
      }

      if (v8 > 2)
      {
        if ((((v7[2] - v18) * (v7[5] - v7[3])) - ((v7[3] - v19) * (v7[4] - v7[2]))) < 0.0)
        {
          v25 = v8 >> 1;
          v26 = &v7[2 * v8 - 2];
          v27 = v7;
          do
          {
            v28 = *v27;
            *v27 = *v26;
            v27 += 2;
            *v26 = v28;
            v26 -= 2;
            --v25;
          }

          while (v25);
        }

        operator new();
      }
    }
  }

  free(v7);

  return 0;
}

void addEdgeChain(void *a1, std::__shared_weak_count **a2)
{
  v5 = a1;
  v6 = v5;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v5[22];
  v6[21] = v8;
  v6[22] = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(v6 + 28) = 1;
  *(v6 + 9) = 1;
  v10 = (*a2)->__shared_weak_owners_ - (*a2)->__shared_owners_;
  v11 = malloc_type_malloc((v10 << 29) >> 29, 0x100004000313F17uLL);
  if ((v10 >> 3) >= 1)
  {
    v12 = 0;
    v13 = (v10 >> 3) & 0x7FFFFFFF;
    v14 = ((*a2)->__shared_owners_ + 4);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = PKGet_INV_PTM_RATIO();
      v18 = PKGet_INV_PTM_RATIO();
      v19 = v15 * v17;
      v20 = v16 * v18;
      if (v12 < 1 || (((v20 - v2) * (v20 - v2)) + ((v19 - v3) * (v19 - v3))) > 1.4211e-14)
      {
        v21 = &v11[2 * v12];
        *v21 = v19;
        v21[1] = v20;
        ++v12;
        v2 = v20;
        v3 = v15 * v17;
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    if (v12 > 1)
    {
      v22 = v11[1];
      if ((((v11[2 * v12 - 1] - v22) * (v11[2 * v12 - 1] - v22)) + ((v11[2 * v12 - 2] - *v11) * (v11[2 * v12 - 2] - *v11))) <= 1.4211e-14)
      {
        v23 = v12;
        v24 = &v11[2 * v12 - 4];
        do
        {
          if (v23 < 3)
          {
            break;
          }

          v26 = *v24;
          v25 = v24[1];
          v24 -= 2;
          --v23;
        }

        while ((((v25 - v22) * (v25 - v22)) + ((v26 - *v11) * (v26 - *v11))) <= 1.4211e-14);
      }
    }
  }

  operator new();
}

void std::vector<PKPhysicsShape *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_25E7B05E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_25E7B0688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_25E7B072C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void addEdgeLoop(void *a1, uint64_t a2)
{
  v5 = a1;
  v5[28] = 1;
  v5[9] = 1;
  v6 = *(*a2 + 16) - *(*a2 + 8);
  v7 = malloc_type_malloc((v6 << 29) >> 29, 0x100004000313F17uLL);
  if ((v6 >> 3) >= 1)
  {
    v8 = 0;
    v9 = (v6 >> 3) & 0x7FFFFFFF;
    v10 = (*(*a2 + 8) + 4);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = PKGet_INV_PTM_RATIO();
      v14 = PKGet_INV_PTM_RATIO();
      v15 = v11 * v13;
      v16 = v12 * v14;
      if (v8 < 1 || (((v16 - v2) * (v16 - v2)) + ((v15 - v3) * (v15 - v3))) > 1.4211e-14)
      {
        v17 = &v7[2 * v8];
        *v17 = v15;
        v17[1] = v16;
        ++v8;
        v2 = v16;
        v3 = v11 * v13;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
    if (v8 > 1)
    {
      v18 = v7[1];
      if ((((v7[2 * v8 - 1] - v18) * (v7[2 * v8 - 1] - v18)) + ((v7[2 * v8 - 2] - *v7) * (v7[2 * v8 - 2] - *v7))) <= 1.4211e-14)
      {
        v19 = v8;
        v20 = &v7[2 * v8 - 4];
        do
        {
          if (v19 < 3)
          {
            break;
          }

          v22 = *v20;
          v21 = v20[1];
          v20 -= 2;
          --v19;
        }

        while ((((v21 - v18) * (v21 - v18)) + ((v22 - *v7) * (v22 - *v7))) <= 1.4211e-14);
      }
    }
  }

  operator new();
}

void sub_25E7B0FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25E7B2B44(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(float,float,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::vector<PKPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<PKPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25E7B3198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PKPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(a1, a2);
  }

  std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A388E0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::vector<b2Vec2>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 3)
  {
    a1[1] = &v5[8 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (8 * v9 + 8 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t std::__shared_ptr_emplace<PKPath>::__shared_ptr_emplace[abi:ne200100]<PKPath&,std::allocator<PKPath>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_287078F58;
  *(a1 + 24) = *a2;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0;
  std::vector<PKPoint>::__init_with_size[abi:ne200100]<PKPoint*,PKPoint*>(a1 + 32, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 56) = 0;
  return a1;
}

void std::__shared_ptr_emplace<PKPath>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287078F58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

uint64_t std::vector<PKPoint>::__init_with_size[abi:ne200100]<PKPoint*,PKPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PKPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25E7B397C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void PKPath::~PKPath(PKPath *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CGPathRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void std::shared_ptr<PKPath>::shared_ptr[abi:ne200100]<PKPath,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_25E7B3A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PKPath>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

PKPath **std::unique_ptr<PKPath>::~unique_ptr[abi:ne200100](PKPath **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    PKPath::~PKPath(v2);
    MEMORY[0x25F8C0280]();
  }

  return a1;
}

void std::__shared_ptr_pointer<PKPath *,std::shared_ptr<PKPath>::__shared_ptr_default_delete<PKPath,PKPath>,std::allocator<PKPath>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

PKPath *std::__shared_ptr_pointer<PKPath *,std::shared_ptr<PKPath>::__shared_ptr_default_delete<PKPath,PKPath>,std::allocator<PKPath>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    PKPath::~PKPath(result);

    JUMPOUT(0x25F8C0280);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PKPath *,std::shared_ptr<PKPath>::__shared_ptr_default_delete<PKPath,PKPath>,std::allocator<PKPath>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::vector<PKPoint>::__assign_with_size[abi:ne200100]<PKPoint*,PKPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<PKPoint>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 math::transpose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 40);
  result.n128_u32[1] = HIDWORD(*(a1 + 12));
  DWORD1(v2) = *(a1 + 20);
  DWORD1(v3) = HIDWORD(v4);
  DWORD1(v4) = *(a1 + 28);
  result.n128_u32[2] = *(a1 + 32);
  DWORD2(v2) = *(a1 + 36);
  DWORD2(v4) = HIDWORD(*(a1 + 40));
  result.n128_u32[3] = *(a1 + 48);
  HIDWORD(v2) = *(a1 + 52);
  *a2 = result;
  *(a2 + 16) = v2;
  *(&v3 + 1) = v5;
  HIDWORD(v4) = *(a1 + 60);
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  return result;
}

__n128 math::invert@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 12);
  if (v2 != 0.0 || (v3 = *(a1 + 28), v3 != 0.0) || ((v4 = *(a1 + 44), v4 == 0.0) ? (v5 = *(a1 + 60) == 1.0) : (v5 = 0), !v5))
  {
LABEL_7:
    v6 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v6;
    result = *(a1 + 32);
    v8 = *(a1 + 48);
    *(a2 + 32) = result;
    *(a2 + 48) = v8;
    return result;
  }

  v10 = *(a1 + 36);
  v9 = *(a1 + 40);
  v12 = *(a1 + 20);
  v11 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 16);
  *&v15 = (v12 * v9) - (v11 * v10);
  v16 = (v11 * v13) - (v14 * v9);
  *&v17 = (v14 * v10) - (v12 * v13);
  v19 = *(a1 + 4);
  v18 = *(a1 + 8);
  v20 = *a1;
  *&v21 = (v18 * v10) - (v19 * v9);
  *&v22 = (*a1 * v9) - (v18 * v13);
  *&v23 = (v19 * v13) - (*a1 * v10);
  *&v24 = (v19 * v11) - (v18 * v12);
  v25 = (v18 * v14) - (*a1 * v11);
  v26 = -(v19 * v14);
  *&v27 = __PAIR64__(v21, v15);
  *&v28 = v26 + (*a1 * v12);
  *(&v27 + 1) = v24;
  v29.n128_u64[0] = __PAIR64__(v22, LODWORD(v16));
  v29.n128_u64[1] = LODWORD(v25);
  *&v30 = __PAIR64__(v23, v17);
  vars0 = v27;
  v41 = v29;
  *(&v30 + 1) = v28;
  v42 = v30;
  v31 = ((v14 * *&v21) + (v20 * *&v15)) + (v13 * *&v24);
  v32 = fabsf(v31);
  v33 = 0;
  if (v32 < 1.0)
  {
    v34 = v32 * 8.5071e37;
    v35 = &vars0;
LABEL_10:
    v36 = 0;
    while (1)
    {
      v37 = *(v35 + v36);
      if (v34 <= fabsf(v37))
      {
        goto LABEL_7;
      }

      *(v35 + v36) = v37 / v31;
      v36 += 4;
      if (v36 == 12)
      {
        ++v33;
        ++v35;
        if (v33 != 3)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }
    }
  }

  v38 = &vars0;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      *(v38 + i) = *(v38 + i) / v31;
    }

    ++v33;
    ++v38;
  }

  while (v33 != 3);
LABEL_19:
  *(&vars0 + 3) = (-(v3 * *(&vars0 + 1)) - (v2 * *&vars0)) - (v4 * *(&vars0 + 2));
  v41.n128_f32[3] = (-(v3 * v29.n128_f32[1]) - (v2 * v16)) - (v4 * v25);
  *(&v42 + 3) = (-(v3 * *(&v42 + 1)) - (v2 * *&v42)) - (v4 * *(&v42 + 2));
  result = v41;
  *(a2 + 32) = v42;
  *(a2 + 48) = xmmword_25E7EAF70;
  *a2 = vars0;
  *(a2 + 16) = v41;
  return result;
}

void sub_25E7B426C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25E7B5404(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25E7B5ACC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25E7B6084(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25E7B695C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25E7B72F4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void PKPhysicsFieldUserInvokeBatchBlockWith(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (v6)
  {
    v5 = v6[10];
    if (v5)
    {
      (*(v5 + 16))(v5, a2, a3);
    }
  }
}

uint64_t PKPhysicsFieldUserInvokeBlockWith(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (v4)
  {
    v7 = v4[11];
    if (v7)
    {
      v5.n128_u64[0] = **a3;
      v5.n128_u32[2] = *(*a3 + 8);
      v8 = *(a3 + 16);
      v6.n128_u64[0] = *v8;
      v6.n128_u32[2] = *(v8 + 8);
      v9 = (*(v7 + 16))(v5, v6, **(a3 + 32), **(a3 + 48), *(a3 + 64));
      v10 = *(a3 + 72);
      *v10 = v9.n128_u64[0];
      *(v10 + 8) = v9.n128_u32[2];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_25E7B7960(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_25E7B7CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceI12PKCFieldDragNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870791F8;
  PKCFieldDrag::PKCFieldDrag((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldDrag>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870791F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI14PKCFieldVortexNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870790E0;
  PKCFieldVortex::PKCFieldVortex((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldVortex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870790E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI21PKCFieldLinearGravityNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287078FC8;
  PKCFieldLinearGravity::PKCFieldLinearGravity((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldLinearGravity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287078FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI21PKCFieldRadialGravityNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287078F90;
  PKCFieldRadialGravity::PKCFieldRadialGravity((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldRadialGravity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287078F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void std::__shared_ptr_emplace<PKCFieldUser>::__shared_ptr_emplace[abi:ne200100]<void *,std::allocator<PKCFieldUser>,0>(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870791C0;
  PKCFieldUser::PKCFieldUser((a1 + 8), *a2);
}

void std::__shared_ptr_emplace<PKCFieldUser>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870791C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI16PKCFieldVelocityNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287079038;
  PKCFieldVelocity::PKCFieldVelocity((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldVelocity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287079038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI13PKCFieldNoiseNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287079188;
  PKCFieldNoise::PKCFieldNoise((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldNoise>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287079188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI18PKCFieldTurbulenceNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287079000;
  PKCFieldTurbulence::PKCFieldTurbulence((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldTurbulence>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287079000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI14PKCFieldSpringNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287079118;
  PKCFieldSpring::PKCFieldSpring((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldSpring>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287079118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI16PKCFieldMagneticNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287079070;
  PKCFieldMagnetic::PKCFieldMagnetic((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldMagnetic>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287079070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void _ZNSt3__120__shared_ptr_emplaceI16PKCFieldElectricNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870790A8;
  PKCFieldElectric::PKCFieldElectric((a1 + 8));
}

void std::__shared_ptr_emplace<PKCFieldElectric>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870790A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

PKDebugDrawPacket *PKDebugDrawPacket::clear(PKDebugDrawPacket *this)
{
  this->_linePoints.__end_ = this->_linePoints.__begin_;
  this->_colors.__end_ = this->_colors.__begin_;
  return this;
}

void PKQueryHandler::~PKQueryHandler(id *this)
{
  *this = &unk_287079A78;

  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table((this + 3));
}

{
  *this = &unk_287079A78;

  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table((this + 3));

  JUMPOUT(0x25F8C0280);
}

void sub_25E7B9308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PKRayCastHandler::~PKRayCastHandler(va);

  _Unwind_Resume(a1);
}

void PKRayCastHandler::issueCallbacks(PKRayCastHandler *this)
{
  v2 = this + 16;
  v5 = PKRayCastItemSortInline;
  std::list<PKRayCastItem>::__sort<BOOL (*)(PKRayCastItem,PKRayCastItem)>(*(this + 3), this + 2, *(this + 4), &v5);
  for (i = *(this + 3); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    (*(*(this + 1) + 16))(*(i + 24), *(i + 32), *(i + 40), *(i + 48));
  }
}

void sub_25E7B94D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E7B9630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_25E7B9770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_25E7B9EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKPhysicsWorld;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25E7BA720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_25E7BB334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25E7BB3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void PKCAether::Evaluator::~Evaluator(PKCAether::Evaluator *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void sub_25E7BB778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PKCAether::Evaluator::~Evaluator(va);
  _Unwind_Resume(a1);
}

void sub_25E7BB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PKCAether::Evaluator::~Evaluator(va);
  _Unwind_Resume(a1);
}

void PKDebugDraw::DrawSolidPolygon(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v8 = 2 * a3;
  std::vector<PKPoint>::reserve(*(a1 + 16), v8);
  std::vector<PKDebugDrawPacket::color4>::reserve((*(a1 + 16) + 24), v8);
  *&v15 = *a4;
  DWORD2(v15) = *(a4 + 8);
  HIDWORD(v15) = 1065353216;
  v9 = (a3 - 1);
  if (a3 >= 2)
  {
    v10 = a2 + 1;
    v11 = v9;
    do
    {
      v14 = *(v10 - 1);
      std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v14);
      v12 = *v10++;
      v13 = v12;
      std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v13);
      std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
      std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
      --v11;
    }

    while (v11);
  }

  v14 = a2[v9];
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v14);
  v13 = *a2;
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v13);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
}

uint64_t PKQueryHandler::ReportFixture(PKQueryHandler *this, id *a2)
{
  v9 = 0;
  if (*(this + 16) == 1 && !(*(*a2[4] + 32))(a2[4], a2[3] + 32, this + 8))
  {
    v6 = 1;
  }

  else
  {
    v4 = a2[9];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v8 = v5;
      if (!std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(this + 3, &v8))
      {
        v8 = v5;
        std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void *>(this + 3, &v8);
        (*(*(this + 8) + 16))();
      }

      v6 = v9 ^ 1;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6 & 1;
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void *>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
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

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void PKRayCastHandler::~PKRayCastHandler(PKRayCastHandler *this)
{
  *this = &unk_287079768;
  std::__list_imp<PKRayCastItem>::clear(this + 2);

  JUMPOUT(0x25F8C0280);
}

{
  *this = &unk_287079768;
  std::__list_imp<PKRayCastItem>::clear(this + 2);
}

float PKRayCastHandler::ReportFixture(PKRayCastHandler *this, id *a2, const b2Vec2 *a3, const b2Vec2 *a4, float a5)
{
  v5 = a2[9];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      PKGet_PTM_RATIO();
      PKGet_PTM_RATIO();
      PKGet_PTM_RATIO();
      PKGet_PTM_RATIO();
      v6;
      std::list<PKRayCastItem>::push_back();
    }
  }

  return 1.0;
}

BOOL PKRayCastItemSortInline(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40) <= *(a2 + 40);

  return v3;
}

uint64_t std::list<PKRayCastItem>::__sort<BOOL (*)(PKRayCastItem,PKRayCastItem)>(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned int (**a4)(id *, id *))
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a4;
      v9 = *a2;
      v10 = *(*a2 + 16);
      v11 = *(v9 + 3);
      v91 = *(v9 + 5);
      v12 = v9[7];
      v89 = v10;
      v92 = v12;
      v90 = v11;
      v13 = *(v4 + 16);
      v14 = *(v4 + 24);
      v87 = *(v4 + 40);
      v15 = *(v4 + 56);
      v85 = v13;
      v88 = v15;
      v86 = v14;
      if (v8(&v89, &v85))
      {
        v17 = *v9;
        v16 = v9[1];
        *(v17 + 8) = v16;
        *v16 = v17;
        v18 = *v4;
        *(v18 + 8) = v9;
        *v9 = v18;
        *v4 = v9;
        v9[1] = v4;
        return v9;
      }
    }

    else
    {
      v20 = a3 >> 1;
      v21 = (a3 >> 1) + 1;
      v22 = a1;
      do
      {
        v22 = *(v22 + 8);
        --v21;
      }

      while (v21 > 1);
      v23 = std::list<PKRayCastItem>::__sort<BOOL (*)(PKRayCastItem,PKRayCastItem)>(a1, v22, a3 >> 1, a4);
      v4 = std::list<PKRayCastItem>::__sort<BOOL (*)(PKRayCastItem,PKRayCastItem)>(v22, a2, a3 - v20, a4);
      v24 = *a4;
      v25 = *(v4 + 16);
      v26 = *(v4 + 24);
      v83 = *(v4 + 40);
      v27 = *(v4 + 56);
      v81 = v25;
      v84 = v27;
      v82 = v26;
      v28 = *(v23 + 16);
      v29 = *(v23 + 24);
      v79 = *(v23 + 40);
      v30 = *(v23 + 56);
      v77 = v28;
      v80 = v30;
      v78 = v29;
      if (v24(&v81, &v77))
      {
        for (i = *(v4 + 8); i != a2; i = *(i + 8))
        {
          v32 = *a4;
          v73 = *(i + 16);
          v33 = *(i + 24);
          v75 = *(i + 40);
          v76 = *(i + 56);
          v74 = v33;
          v69 = *(v23 + 16);
          v34 = *(v23 + 24);
          v71 = *(v23 + 40);
          v72 = *(v23 + 56);
          v70 = v34;
          if (!v32(&v73, &v69))
          {
            break;
          }
        }

        v35 = *i;
        v36 = *(*i + 8);
        v37 = *v4;
        *(v37 + 8) = v36;
        *v36 = v37;
        v38 = *v23;
        v39 = *(v23 + 8);
        *(v38 + 8) = v4;
        *v4 = v38;
        *v23 = v35;
        *(v35 + 8) = v23;
      }

      else
      {
        v39 = *(v23 + 8);
        i = v4;
        v4 = v23;
      }

      if (v39 != i && i != a2)
      {
        v40 = i;
        do
        {
          v41 = *a4;
          v65 = *(i + 16);
          v42 = *(i + 24);
          v67 = *(i + 40);
          v68 = *(i + 56);
          v66 = v42;
          v61 = v39[2];
          v43 = *(v39 + 3);
          v63 = *(v39 + 5);
          v64 = v39[7];
          v62 = v43;
          if (v41(&v65, &v61))
          {
            for (j = *(i + 8); j != a2; j = *(j + 8))
            {
              v45 = *a4;
              v57 = *(j + 16);
              v46 = *(j + 24);
              v59 = *(j + 40);
              v60 = *(j + 56);
              v58 = v46;
              v53 = v39[2];
              v47 = *(v39 + 3);
              v55 = *(v39 + 5);
              v56 = v39[7];
              v54 = v47;
              if (!v45(&v57, &v53))
              {
                break;
              }
            }

            v48 = *j;
            v49 = *(*j + 8);
            v50 = *i;
            *(v50 + 8) = v49;
            *v49 = v50;
            if (v40 == i)
            {
              v40 = j;
            }

            v52 = *v39;
            v51 = v39[1];
            *(v52 + 8) = i;
            *i = v52;
            *v39 = v48;
            *(v48 + 8) = v39;
            v39 = v51;
            i = j;
          }

          else
          {
            v39 = v39[1];
          }
        }

        while (v39 != v40 && i != a2);
      }
    }
  }

  return v4;
}

void std::__list_imp<PKRayCastItem>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<PKCField>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<PKCField>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void PKContactListener::~PKContactListener(PKContactListener *this)
{
  this->_vptr$b2ContactListener = &unk_287079698;
  objc_storeWeak(&this->_contactDelegate, 0);
  contacts = this->_contacts;
  this->_contacts = 0;

  objc_destroyWeak(&this->_contactDelegate);
}

{
  PKContactListener::~PKContactListener(this);

  JUMPOUT(0x25F8C0280);
}

uint64_t PKContactListener::flushContacts(PKContactListener *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(NSMutableDictionary *)this->_contacts allValues];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        if ([v6 didBegin])
        {
          WeakRetained = objc_loadWeakRetained(&this->_contactDelegate);
          v8 = objc_opt_respondsToSelector();

          if (v8)
          {
            v9 = objc_loadWeakRetained(&this->_contactDelegate);
            [v9 didBeginContact:v6];
          }
        }

        if ([v6 didEnd])
        {
          v10 = objc_loadWeakRetained(&this->_contactDelegate);
          v11 = objc_opt_respondsToSelector();

          if (v11)
          {
            v12 = objc_loadWeakRetained(&this->_contactDelegate);
            [v12 didEndContact:v6];
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  return [(NSMutableDictionary *)this->_contacts removeAllObjects];
}

void PKContactListener::reportContact(uint64_t a1, uint64_t a2, float *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));

  if (a2 && WeakRetained && ((*(a2 + 9) & 1) != 0 || a3 || (*(a2 + 8) & 1) != 0))
  {
    v7 = *(a2 + 88);
    v8 = *(*(a2 + 80) + 72);
    v9 = *(v7 + 72);
    v10 = *(a1 + 8);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
    v12 = [v10 objectForKey:v11];

    if (!v12)
    {
      v12 = objc_alloc_init(PKPhysicsContact);
      [(PKPhysicsContact *)v12 setBodyA:v8];
      [(PKPhysicsContact *)v12 setBodyB:v9];
      [(PKPhysicsContact *)v12 setCollisionImpulse:0.0];
      v13 = *(a1 + 8);
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
      [v13 setObject:v12 forKey:v14];
    }

    *&v15 = b2WorldManifold::Initialize(v22, a2 + 104, (*(*(a2 + 80) + 24) + 32), (*(*(a2 + 88) + 24) + 32), *(*(*(a2 + 80) + 32) + 12), *(*(*(a2 + 88) + 32) + 12));
    v16 = *(a2 + 164);
    if (v16 >= 1)
    {
      [(PKPhysicsContact *)v12 collisionImpulse];
      v18 = v17 * PKGet_INV_PTM_RATIO();
      v19 = v23;
      if (a3)
      {
        v20 = &v23;
        do
        {
          if (*a3 > v18)
          {
            v19 = *v20;
            v18 = *a3;
          }

          ++v20;
          ++a3;
          --v16;
        }

        while (v16);
      }

      [(PKPhysicsContact *)v12 setCollisionImpulse:(v18 * PKGet_PTM_RATIO())];
      [(PKPhysicsContact *)v12 setContactNormal:v22[0], v22[1]];
      v21 = PKGet_PTM_RATIO();
      [(PKPhysicsContact *)v12 setContactPoint:vcvtq_f64_f32(vmul_f32(v19, __PAIR64__(COERCE_UNSIGNED_INT(PKGet_PTM_RATIO()), LODWORD(v21))))];
    }

    if (*(a2 + 8) == 1)
    {
      [(PKPhysicsContact *)v12 setDidBegin:1];
    }

    if (*(a2 + 9) == 1)
    {
      [(PKPhysicsContact *)v12 setDidEnd:1];
    }

    *(a2 + 8) = 0;
  }
}

void PKContactListener::PKContactListener(PKContactListener *this)
{
  this->_vptr$b2ContactListener = &unk_287079698;
  this->_contacts = 0;
  this->_contactDelegate = 0;
  objc_storeWeak(&this->_contactDelegate, 0);
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  contacts = this->_contacts;
  this->_contacts = v2;
}

void sub_25E7BDA38(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);

  _Unwind_Resume(a1);
}

void PKDebugDraw::PKDebugDraw(PKDebugDraw *this, PKDebugDrawPacket *a2, int a3, int a4)
{
  b2Draw::b2Draw(this);
  *v7 = &unk_287079F70;
  v7[2] = a2;
  a2->_linePoints.__end_ = a2->_linePoints.__begin_;
  a2->_colors.__end_ = a2->_colors.__begin_;
  if (a3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v9 = v8 | 0x20;
  }

  else
  {
    v9 = v8;
  }

  b2Draw::SetFlags(v7, v9);
}

void PKDebugDraw::DrawPolygon(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v8 = 2 * a3;
  std::vector<PKPoint>::reserve(*(a1 + 16), v8);
  std::vector<PKDebugDrawPacket::color4>::reserve((*(a1 + 16) + 24), v8);
  *&v15 = *a4;
  DWORD2(v15) = *(a4 + 8);
  HIDWORD(v15) = 1065353216;
  v9 = (a3 - 1);
  if (a3 >= 2)
  {
    v10 = a2 + 1;
    v11 = v9;
    do
    {
      v14 = *(v10 - 1);
      std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v14);
      v12 = *v10++;
      v13 = v12;
      std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v13);
      std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
      std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
      --v11;
    }

    while (v11);
  }

  v14 = a2[v9];
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v14);
  v13 = *a2;
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v13);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
}

void PKDebugDraw::DrawCircle(uint64_t a1, float *a2, uint64_t a3, float a4)
{
  *&v14 = *a3;
  DWORD2(v14) = *(a3 + 8);
  HIDWORD(v14) = 1065353216;
  std::vector<PKPoint>::reserve(*(a1 + 16), 0x20uLL);
  std::vector<PKDebugDrawPacket::color4>::reserve((*(a1 + 16) + 24), 0x20uLL);
  v7 = 0.0;
  do
  {
    v8 = __sincosf_stret(v7);
    v9 = *a2;
    v10 = a2[1];
    *&v13 = *a2 + (a4 * v8.__cosval);
    *(&v13 + 1) = v10 + (a4 * v8.__sinval);
    v7 = v7 + 0.3927;
    v11 = __sincosf_stret(v7);
    *&v12 = v9 + (a4 * v11.__cosval);
    *(&v12 + 1) = v10 + (a4 * v11.__sinval);
    std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v13);
    std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v12);
    std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v14);
    std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v14);
  }

  while (v7 < 6.6758844);
}

void PKDebugDraw::DrawSolidCircle(uint64_t a1, float *a2, float a3, uint64_t a4, uint64_t a5)
{
  *&v15 = *a5;
  DWORD2(v15) = *(a5 + 8);
  HIDWORD(v15) = 1065353216;
  std::vector<PKPoint>::reserve(*(a1 + 16), 0x20uLL);
  std::vector<PKDebugDrawPacket::color4>::reserve((*(a1 + 16) + 24), 0x20uLL);
  v8 = 0.0;
  do
  {
    v9 = __sincosf_stret(v8);
    v10 = *a2;
    v11 = a2[1];
    *&v14 = *a2 + (a3 * v9.__cosval);
    *(&v14 + 1) = v11 + (a3 * v9.__sinval);
    v8 = v8 + 0.3927;
    v12 = __sincosf_stret(v8);
    *&v13 = v10 + (a3 * v12.__cosval);
    *(&v13 + 1) = v11 + (a3 * v12.__sinval);
    std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v14);
    std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v13);
    std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
    std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v15);
  }

  while (v8 < 6.6758844);
}

void PKDebugDraw::DrawSegment(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a4;
  DWORD2(v8) = *(a4 + 2);
  HIDWORD(v8) = 1065353216;
  v7 = *a2;
  *&v8 = v5;
  v6 = *a3;
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v7);
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v6);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v8);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v8);
}

double PKDebugDraw::FieldRegion(PKDebugDraw *this, b2Vec2 *a2, b2Vec2 *a3, int *a4)
{
  __asm { FMOV            V0.2S, #-1.0 }

  *a2 = _D0;
  __asm { FMOV            V0.2S, #20.0 }

  *a3 = result;
  *a4 = 120;
  return result;
}

void PKDebugDraw::DrawFieldSample(uint64_t a1, float32x2_t *a2, float32x2_t *a3, uint64_t *a4)
{
  std::vector<PKPoint>::reserve(*(a1 + 16), 0x1000uLL);
  std::vector<PKDebugDrawPacket::color4>::reserve((*(a1 + 16) + 24), 0x1000uLL);
  v8 = *a4;
  DWORD2(v20) = *(a4 + 2);
  HIDWORD(v20) = 1065353216;
  v9 = *a2;
  v19 = *a2;
  *&v20 = v8;
  v10 = *a3;
  __asm { FMOV            V2.2S, #4.0 }

  v16 = vcgt_f32(vabs_f32(*a3), _D2);
  if ((v16.i32[0] | v16.i32[1]))
  {
    v17 = vmul_f32(v10, v10);
    *v17.i32 = sqrtf(*&v17.i32[1] + (v10.f32[0] * v10.f32[0]));
    v10 = vdiv_f32(vmul_f32(v10, _D2), vdup_lane_s32(v17, 0));
  }

  v18 = vmla_f32(v9, vdup_n_s32(0x3D4CCCCDu), v10);
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v19);
  std::vector<PKPoint>::push_back[abi:ne200100](*(a1 + 16), &v18);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v20);
  std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](*(a1 + 16) + 24, &v20);
}

void *std::vector<PKDebugDrawPacket::color4>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKDebugDrawPacket::color4>>(result, a2);
    }

    std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<PKDebugDrawPacket::color4>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKDebugDrawPacket::color4>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKDebugDrawPacket::color4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float snoise1(float a1, double a2, int8x8_t a3)
{
  v3 = a1 - (a1 <= 0.0);
  v4.f32[0] = a1 - v3;
  v4.f32[1] = v4.f32[0] + -1.0;
  __asm { FMOV            V1.2S, #1.0 }

  v10 = vmls_f32(_D1, v4, v4);
  v11 = vmul_f32(v10, v10);
  a3.i8[0] = perm[v3];
  a3.i8[4] = perm[(v3 + 1)];
  v12 = vcvt_f32_u32(vadd_s32(vand_s8(a3, 0x700000007), 0x100000001));
  return vaddv_f32(vmul_f32(vmul_f32(v11, v11), vmul_f32(v4, vbsl_s8(vceqz_s32(vand_s8(a3, 0x800000008)), v12, vneg_f32(v12))))) * 0.25;
}

float snoise2(float a1, float a2)
{
  v2 = (a1 + a2) * 0.366025403;
  v3 = (v2 + a1) - ((v2 + a1) <= 0.0);
  v4 = (v2 + a2) - ((v2 + a2) <= 0.0);
  v5 = (v3 + v4) * 0.211324865;
  v6 = a1 - (v3 - v5);
  v7 = a2 - (v4 - v5);
  v8 = v6 <= v7;
  v9 = v6 > v7;
  v10 = 0.0;
  v11 = 1.0;
  if (v6 <= v7)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = (v6 - v12) + 0.211324865;
  if (v6 > v7)
  {
    v11 = 0.0;
  }

  v14 = (v7 - v11) + 0.211324865;
  v15 = (v6 + -1.0) + 0.42264973;
  v16 = (v7 + -1.0) + 0.42264973;
  v17 = (0.5 - (v6 * v6)) - (v7 * v7);
  v18 = 0.0;
  if (v17 >= 0.0)
  {
    v19 = (v17 * v17) * (v17 * v17);
    if ((perm[perm[v4] + v3] & 4) != 0)
    {
      v20 = v7;
    }

    else
    {
      v20 = v6;
    }

    if ((perm[perm[v4] + v3] & 4) == 0)
    {
      v6 = v7;
    }

    v21 = -v20;
    if ((perm[perm[v4] + v3] & 1) == 0)
    {
      v21 = v20;
    }

    v22 = -2.0;
    if ((perm[perm[v4] + v3] & 2) == 0)
    {
      v22 = 2.0;
    }

    v18 = v19 * (v21 + (v6 * v22));
  }

  v23 = v15;
  v25 = (0.5 - (v13 * v13)) - (v14 * v14);
  if (v25 >= 0.0)
  {
    v26 = (v25 * v25) * (v25 * v25);
    v27 = perm[v3 + v9 + perm[v4 + v8]];
    if ((v27 & 4) != 0)
    {
      v28 = v14;
    }

    else
    {
      v28 = v13;
    }

    if ((v27 & 4) == 0)
    {
      v13 = v14;
    }

    v29 = -v28;
    if ((v27 & 1) == 0)
    {
      v29 = v28;
    }

    v30 = -2.0;
    if ((v27 & 2) == 0)
    {
      v30 = 2.0;
    }

    v10 = v26 * (v29 + (v13 * v30));
  }

  v24 = v16;
  v31 = (0.5 - (v23 * v23)) - (v24 * v24);
  v32 = 0.0;
  if (v31 >= 0.0)
  {
    v33 = (v31 * v31) * (v31 * v31);
    v34 = perm[v3 + 1 + perm[v4 + 1]];
    if ((v34 & 4) != 0)
    {
      v35 = v16;
    }

    else
    {
      v35 = v23;
    }

    if ((v34 & 4) == 0)
    {
      v23 = v16;
    }

    if (v34)
    {
      v35 = -v35;
    }

    v36 = -2.0;
    if ((v34 & 2) == 0)
    {
      v36 = 2.0;
    }

    v32 = v33 * (v35 + (v23 * v36));
  }

  return ((v18 + v10) + v32) * 40.0;
}

float snoise3(float a1, float a2, float a3)
{
  v3 = ((a1 + a2) + a3) * 0.333333333;
  v4 = (v3 + a1) - ((v3 + a1) <= 0.0);
  v5 = (v3 + a2) - ((v3 + a2) <= 0.0);
  v6 = (v3 + a3) - ((v3 + a3) <= 0.0);
  v7 = (v4 + v5 + v6) * 0.166666667;
  v8 = a1 - (v4 - v7);
  v9 = a2 - (v5 - v7);
  v10 = a3 - (v6 - v7);
  if (v8 >= v9)
  {
    if (v9 >= v10)
    {
      v14 = 0;
      v16 = 0;
      v12 = 0;
      v15 = 1;
      v11 = 1;
      v13 = 1;
    }

    else
    {
      v15 = 0;
      v12 = 0;
      v16 = v8 < v10;
      v13 = v8 >= v10;
      v14 = 1;
      v11 = 1;
    }
  }

  else if (v9 >= v10)
  {
    v16 = 0;
    v13 = 0;
    v14 = v8 < v10;
    v11 = v8 >= v10;
    v15 = 1;
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 1;
    v16 = 1;
  }

  v17 = (v8 - v13) + 0.166666667;
  v18 = (v9 - v12) + 0.166666667;
  v19 = (v10 - v16) + 0.166666667;
  v20 = (v8 - v11) + 0.333333334;
  v21 = (v9 - v15) + 0.333333334;
  v22 = (v10 - v14) + 0.333333334;
  v23 = (v8 + -1.0);
  v24 = (v9 + -1.0);
  v25 = (v10 + -1.0);
  v26 = ((0.6 - (v8 * v8)) - (v9 * v9)) - (v10 * v10);
  v27 = 0.0;
  v28 = 0.0;
  if (v26 >= 0.0)
  {
    if ((perm[perm[perm[v6] + v5] + v4] & 0xD) == 0xC)
    {
      v10 = v8;
    }

    if ((perm[perm[perm[v6] + v5] + v4] & 0xC) == 0)
    {
      v10 = v9;
    }

    if ((perm[perm[perm[v6] + v5] + v4] & 8) != 0)
    {
      v8 = v9;
    }

    if (perm[perm[perm[v6] + v5] + v4])
    {
      v8 = -v8;
    }

    v29 = -v10;
    if ((perm[perm[perm[v6] + v5] + v4] & 2) == 0)
    {
      v29 = v10;
    }

    v28 = ((v26 * v26) * (v26 * v26)) * (v8 + v29);
  }

  v30 = v23 + 0.500000001;
  v31 = v24 + 0.500000001;
  v32 = v25 + 0.500000001;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = ((0.6 - (v17 * v17)) - (v18 * v18)) - (v19 * v19);
  if (v36 >= 0.0)
  {
    v37 = perm[v13 + v4 + perm[v12 + v5 + perm[v16 + v6]]];
    if ((v37 & 0xD) == 0xC)
    {
      v19 = v17;
    }

    if ((v37 & 0xC) == 0)
    {
      v19 = v18;
    }

    if ((v37 & 8) != 0)
    {
      v17 = v18;
    }

    if (v37)
    {
      v17 = -v17;
    }

    v38 = -v19;
    if ((v37 & 2) == 0)
    {
      v38 = v19;
    }

    v27 = ((v36 * v36) * (v36 * v36)) * (v17 + v38);
  }

  v42 = ((0.6 - (v33 * v33)) - (v34 * v34)) - (v35 * v35);
  v43 = 0.0;
  v44 = 0.0;
  if (v42 >= 0.0)
  {
    v45 = perm[v11 + v4 + perm[v15 + v5 + perm[v14 + v6]]];
    if ((v45 & 0xD) == 0xC)
    {
      v35 = v33;
    }

    if ((v45 & 0xC) == 0)
    {
      v35 = v34;
    }

    if ((v45 & 8) != 0)
    {
      v33 = v34;
    }

    if (v45)
    {
      v33 = -v33;
    }

    v46 = -v35;
    if ((v45 & 2) == 0)
    {
      v46 = v35;
    }

    v44 = ((v42 * v42) * (v42 * v42)) * (v33 + v46);
  }

  v39 = v30;
  v40 = v31;
  v41 = v32;
  v47 = ((0.6 - (v39 * v39)) - (v40 * v40)) - (v41 * v41);
  if (v47 >= 0.0)
  {
    v48 = (v47 * v47) * (v47 * v47);
    if ((perm[v4 + 1 + perm[v5 + 1 + perm[v6 + 1]]] & 0xD) == 0xC)
    {
      v49 = v30;
    }

    else
    {
      v49 = v32;
    }

    if ((perm[v4 + 1 + perm[v5 + 1 + perm[v6 + 1]]] & 0xC) == 0)
    {
      v49 = v31;
    }

    if ((perm[v4 + 1 + perm[v5 + 1 + perm[v6 + 1]]] & 8) != 0)
    {
      v50 = v31;
    }

    else
    {
      v50 = v30;
    }

    if (perm[v4 + 1 + perm[v5 + 1 + perm[v6 + 1]]])
    {
      v50 = -v50;
    }

    if ((perm[v4 + 1 + perm[v5 + 1 + perm[v6 + 1]]] & 2) != 0)
    {
      v49 = -v49;
    }

    v43 = v48 * (v50 + v49);
  }

  return (((v28 + v27) + v44) + v43) * 32.0;
}

float snoise4(float a1, float a2, float a3, float a4)
{
  v4 = (((a1 + a2) + a3) + a4) * 0.309016994;
  *&v4 = v4;
  v5.i64[0] = __PAIR64__(LODWORD(a2), LODWORD(a1));
  v5.i64[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v6 = vaddq_f32(vdupq_lane_s32(*&v4, 0), v5);
  v9 = vaddq_s32(vmvnq_s8(vcgtzq_f32(v6)), vcvtq_s32_f32(v6));
  v5.f32[0] = vaddvq_s32(v9) * 0.138196601;
  v7 = v9.i8[0];
  v8 = v9.i32[2] - v5.f32[0];
  *v9.i32 = a1 - (v9.i32[0] - v5.f32[0]);
  v10 = a4 - (v9.i32[3] - v5.f32[0]);
  v11 = a2 - (v9.i32[1] - v5.f32[0]);
  v12 = a3 - v8;
  v13 = (16 * (*v9.i32 > (a3 - v8))) | (32 * (*v9.i32 > v11)) | (8 * (v11 > (a3 - v8))) | (4 * (*v9.i32 > v10)) | (2 * (v11 > v10));
  if ((a3 - v8) > v10)
  {
    ++v13;
  }

  v14 = &simplex + 4 * v13;
  v15 = *v14;
  v16 = v14[1];
  v17 = 0.0;
  v18 = 1.0;
  if (v15 <= 2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = v14[2];
  if (v16 <= 2)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v14[3];
  if (v20 <= 2)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  if (v22 <= 2)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  if (v15 <= 1)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  if (v16 <= 1)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = 1.0;
  }

  if (v20 <= 1)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  if (v22 <= 1)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  if (*v14)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  if (v14[1])
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  if (v14[2])
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = (*v9.i32 - v19) + 0.138196601;
  v33 = (v11 - v21) + 0.138196601;
  v34 = (v12 - v23) + 0.138196601;
  v35 = (v10 - v24) + 0.138196601;
  v36 = (*v9.i32 - v25) + 0.276393202;
  v37 = (v11 - v26) + 0.276393202;
  v38 = (v12 - v27) + 0.276393202;
  v39 = (v10 - v28) + 0.276393202;
  v40 = (*v9.i32 - v29);
  v41 = (v11 - v30);
  v42 = (v12 - v31);
  if (!v14[3])
  {
    v18 = 0.0;
  }

  v43 = (v10 - v18);
  v44 = *v9.i32 + -1.0;
  v45 = v11 + -1.0;
  v46 = v12 + -1.0;
  v47 = v10 + -1.0;
  v48 = (((0.6 - (*v9.i32 * *v9.i32)) - (v11 * v11)) - (v12 * v12)) - (v10 * v10);
  v49 = 0.0;
  if (v48 >= 0.0)
  {
    if ((perm[perm[perm[perm[v9.u8[12]] + v9.u8[8]] + v9.u8[4]] + v7] & 0x1Fu) >= 0x18)
    {
      *v9.i32 = v11;
    }

    if ((perm[perm[perm[perm[v9.u8[12]] + v9.u8[8]] + v9.u8[4]] + v7] & 0x10) != 0)
    {
      v11 = v12;
    }

    if ((perm[perm[perm[perm[v9.u8[12]] + v9.u8[8]] + v9.u8[4]] + v7] & 0x18) == 0)
    {
      v10 = v12;
    }

    if (perm[perm[perm[perm[v9.u8[12]] + v9.u8[8]] + v9.u8[4]] + v7])
    {
      *v9.i32 = -*v9.i32;
    }

    if ((perm[perm[perm[perm[v9.u8[12]] + v9.u8[8]] + v9.u8[4]] + v7] & 2) != 0)
    {
      v11 = -v11;
    }

    *v9.i32 = *v9.i32 + v11;
    if ((perm[perm[perm[perm[v9.u8[12]] + v9.u8[8]] + v9.u8[4]] + v7] & 4) != 0)
    {
      v10 = -v10;
    }

    v49 = ((v48 * v48) * (v48 * v48)) * (v10 + *v9.i32);
  }

  v50 = v40 + 0.414589803;
  v51 = v41 + 0.414589803;
  v52 = v42 + 0.414589803;
  v53 = v43 + 0.414589803;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v58 = (((0.6 - (v32 * v32)) - (v33 * v33)) - (v34 * v34)) - (v35 * v35);
  if (v58 >= 0.0)
  {
    if ((perm[v7 + (v15 > 2) + perm[v9.u8[4] + (v16 > 2) + perm[v9.u8[8] + (v20 > 2) + perm[v9.u8[12] + (v22 > 2)]]]] & 0x1Fu) >= 0x18)
    {
      v32 = v33;
    }

    if ((perm[v7 + (v15 > 2) + perm[v9.u8[4] + (v16 > 2) + perm[v9.u8[8] + (v20 > 2) + perm[v9.u8[12] + (v22 > 2)]]]] & 0x10) != 0)
    {
      v33 = v34;
    }

    if ((perm[v7 + (v15 > 2) + perm[v9.u8[4] + (v16 > 2) + perm[v9.u8[8] + (v20 > 2) + perm[v9.u8[12] + (v22 > 2)]]]] & 0x18) != 0)
    {
      v34 = v35;
    }

    if (perm[v7 + (v15 > 2) + perm[v9.u8[4] + (v16 > 2) + perm[v9.u8[8] + (v20 > 2) + perm[v9.u8[12] + (v22 > 2)]]]])
    {
      v32 = -v32;
    }

    if ((perm[v7 + (v15 > 2) + perm[v9.u8[4] + (v16 > 2) + perm[v9.u8[8] + (v20 > 2) + perm[v9.u8[12] + (v22 > 2)]]]] & 2) != 0)
    {
      v33 = -v33;
    }

    v59 = v32 + v33;
    v60 = -v34;
    if ((perm[v7 + (v15 > 2) + perm[v9.u8[4] + (v16 > 2) + perm[v9.u8[8] + (v20 > 2) + perm[v9.u8[12] + (v22 > 2)]]]] & 4) == 0)
    {
      v60 = v34;
    }

    v17 = ((v58 * v58) * (v58 * v58)) * (v60 + v59);
  }

  v61 = v44 + 0.552786404;
  v62 = v45 + 0.552786404;
  v63 = v46 + 0.552786404;
  v64 = v47 + 0.552786404;
  v65 = v50;
  v66 = v51;
  v67 = v52;
  v69 = (((0.6 - (v54 * v54)) - (v55 * v55)) - (v56 * v56)) - (v57 * v57);
  v70 = 0.0;
  v71 = 0.0;
  if (v69 >= 0.0)
  {
    if ((perm[v7 + (v15 > 1) + perm[v9.u8[4] + (v16 > 1) + perm[v9.u8[8] + (v20 > 1) + perm[v9.u8[12] + (v22 > 1)]]]] & 0x1Fu) >= 0x18)
    {
      v54 = v55;
    }

    if ((perm[v7 + (v15 > 1) + perm[v9.u8[4] + (v16 > 1) + perm[v9.u8[8] + (v20 > 1) + perm[v9.u8[12] + (v22 > 1)]]]] & 0x10) != 0)
    {
      v55 = v56;
    }

    if ((perm[v7 + (v15 > 1) + perm[v9.u8[4] + (v16 > 1) + perm[v9.u8[8] + (v20 > 1) + perm[v9.u8[12] + (v22 > 1)]]]] & 0x18) != 0)
    {
      v56 = v57;
    }

    v72 = -v54;
    if ((perm[v7 + (v15 > 1) + perm[v9.u8[4] + (v16 > 1) + perm[v9.u8[8] + (v20 > 1) + perm[v9.u8[12] + (v22 > 1)]]]] & 1) == 0)
    {
      v72 = v54;
    }

    if ((perm[v7 + (v15 > 1) + perm[v9.u8[4] + (v16 > 1) + perm[v9.u8[8] + (v20 > 1) + perm[v9.u8[12] + (v22 > 1)]]]] & 2) != 0)
    {
      v55 = -v55;
    }

    v73 = v72 + v55;
    if ((perm[v7 + (v15 > 1) + perm[v9.u8[4] + (v16 > 1) + perm[v9.u8[8] + (v20 > 1) + perm[v9.u8[12] + (v22 > 1)]]]] & 4) != 0)
    {
      v56 = -v56;
    }

    v71 = ((v69 * v69) * (v69 * v69)) * (v56 + v73);
  }

  v74 = v61;
  v75 = v62;
  v76 = v63;
  v68 = v53;
  v78 = (((0.6 - (v65 * v65)) - (v66 * v66)) - (v67 * v67)) - (v68 * v68);
  if (v78 >= 0.0)
  {
    if ((perm[v7 + (v15 != 0) + perm[v9.u8[4] + (v16 != 0) + perm[v9.u8[8] + (v20 != 0) + perm[v9.u8[12] + (v22 != 0)]]]] & 0x1Fu) >= 0x18)
    {
      v65 = v51;
    }

    if ((perm[v7 + (v15 != 0) + perm[v9.u8[4] + (v16 != 0) + perm[v9.u8[8] + (v20 != 0) + perm[v9.u8[12] + (v22 != 0)]]]] & 0x10) != 0)
    {
      v66 = v52;
    }

    if ((perm[v7 + (v15 != 0) + perm[v9.u8[4] + (v16 != 0) + perm[v9.u8[8] + (v20 != 0) + perm[v9.u8[12] + (v22 != 0)]]]] & 0x18) != 0)
    {
      v67 = v53;
    }

    v79 = -v65;
    if ((perm[v7 + (v15 != 0) + perm[v9.u8[4] + (v16 != 0) + perm[v9.u8[8] + (v20 != 0) + perm[v9.u8[12] + (v22 != 0)]]]] & 1) == 0)
    {
      v79 = v65;
    }

    if ((perm[v7 + (v15 != 0) + perm[v9.u8[4] + (v16 != 0) + perm[v9.u8[8] + (v20 != 0) + perm[v9.u8[12] + (v22 != 0)]]]] & 2) != 0)
    {
      v66 = -v66;
    }

    v80 = v79 + v66;
    if ((perm[v7 + (v15 != 0) + perm[v9.u8[4] + (v16 != 0) + perm[v9.u8[8] + (v20 != 0) + perm[v9.u8[12] + (v22 != 0)]]]] & 4) != 0)
    {
      v67 = -v67;
    }

    v70 = ((v78 * v78) * (v78 * v78)) * (v67 + v80);
  }

  v77 = v64;
  v81 = (((0.6 - (v74 * v74)) - (v75 * v75)) - (v76 * v76)) - (v77 * v77);
  v82 = 0.0;
  if (v81 >= 0.0)
  {
    v83 = (v81 * v81) * (v81 * v81);
    if ((perm[v7 + 1 + perm[v9.u8[4] + 1 + perm[v9.u8[8] + 1 + perm[v9.u8[12] + 1]]]] & 0x1Fu) >= 0x18)
    {
      v84 = v62;
    }

    else
    {
      v84 = v74;
    }

    if ((perm[v7 + 1 + perm[v9.u8[4] + 1 + perm[v9.u8[8] + 1 + perm[v9.u8[12] + 1]]]] & 0x10) != 0)
    {
      v75 = v63;
    }

    if ((perm[v7 + 1 + perm[v9.u8[4] + 1 + perm[v9.u8[8] + 1 + perm[v9.u8[12] + 1]]]] & 0x18) != 0)
    {
      v76 = v64;
    }

    if (perm[v7 + 1 + perm[v9.u8[4] + 1 + perm[v9.u8[8] + 1 + perm[v9.u8[12] + 1]]]])
    {
      v84 = -v84;
    }

    if ((perm[v7 + 1 + perm[v9.u8[4] + 1 + perm[v9.u8[8] + 1 + perm[v9.u8[12] + 1]]]] & 2) != 0)
    {
      v75 = -v75;
    }

    v85 = v84 + v75;
    if ((perm[v7 + 1 + perm[v9.u8[4] + 1 + perm[v9.u8[8] + 1 + perm[v9.u8[12] + 1]]]] & 4) != 0)
    {
      v76 = -v76;
    }

    v82 = v83 * (v76 + v85);
  }

  return ((((v49 + v17) + v71) + v70) + v82) * 27.0;
}

uint64_t b2CollideCircles(uint64_t result, float *a2, float *a3, float *a4, float *a5)
{
  v6 = a3[2];
  v5 = a3[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = a2[3];
  v10 = *a3 + ((v5 * v8) - (v6 * v7));
  v11 = ((v5 * v7) + (v6 * v8)) + a3[1];
  v13 = a5[2];
  v12 = a5[3];
  v15 = a4[4];
  v14 = a4[5];
  v16 = a4[3];
  *(result + 60) = 0;
  if (((((((v12 * v14) + (v13 * v15)) + a5[1]) - v11) * ((((v12 * v14) + (v13 * v15)) + a5[1]) - v11)) + (((*a5 + ((v12 * v15) - (v13 * v14))) - v10) * ((*a5 + ((v12 * v15) - (v13 * v14))) - v10))) <= ((v9 + v16) * (v9 + v16)))
  {
    *(result + 56) = 0;
    v17 = *(a2 + 2);
    *(result + 40) = 0;
    *(result + 48) = v17;
    *(result + 60) = 1;
    *result = *(a4 + 2);
    *(result + 16) = 0;
  }

  return result;
}

float32x2_t *b2CollidePolygonAndCircle(float32x2_t *result, uint64_t a2, float *a3, float *a4, float *a5)
{
  v6 = a5[2];
  v5 = a5[3];
  v8 = a4[4];
  v7 = a4[5];
  v9 = a4[3];
  v10 = a5[1];
  v11 = *a5 + ((v5 * v8) - (v6 * v7));
  result[7].i32[1] = 0;
  v12 = v11 - *a3;
  v13 = (((v5 * v7) + (v6 * v8)) + v10) - a3[1];
  v15 = a3[2];
  v14 = a3[3];
  v16 = (v13 * v15) + (v14 * v12);
  v17 = (v14 * v13) - (v15 * v12);
  v18 = *(a2 + 12) + v9;
  v19 = *(a2 + 16);
  v20 = *(a2 + 24) - v19;
  v21 = v20 >> 3;
  v22 = *(a2 + 40);
  if ((v20 >> 3) < 1)
  {
    v24 = 0;
    v30 = 1;
LABEL_9:
    if (v24 + 1 < v21)
    {
      v31 = v24 + 1;
    }

    else
    {
      v31 = 0;
    }

    v32 = *(v19 + 8 * v24);
    v33 = *(v19 + 8 * v31);
    if (v30)
    {
      result[7] = 0x100000001;
      result[5] = *(v22 + 8 * v24);
      result[6] = vmul_f32(vadd_f32(v32, v33), 0x3F0000003F000000);
    }

    else
    {
      v34 = v16 - v32.f32[0];
      v35 = v17 - v32.f32[1];
      if ((((v17 - v32.f32[1]) * (v33.f32[1] - v32.f32[1])) + ((v16 - v32.f32[0]) * vsub_f32(v33, v32).f32[0])) <= 0.0)
      {
        v39 = (v35 * v35) + (v34 * v34);
        if (v39 > (v18 * v18))
        {
          return result;
        }

        result[7] = 0x100000001;
        result[5].f32[0] = v34;
        result[5].f32[1] = v35;
        v40 = sqrtf(v39);
        if (v40 >= 0.00000011921)
        {
          v41 = 1.0 / v40;
          result[5].f32[0] = v34 * v41;
          result[5].f32[1] = v35 * v41;
        }
      }

      else
      {
        v36 = v16 - v33.f32[0];
        v37 = v17 - v33.f32[1];
        if ((((v17 - v33.f32[1]) * (v32.f32[1] - v33.f32[1])) + ((v16 - v33.f32[0]) * vsub_f32(v32, v33).f32[0])) <= 0.0)
        {
          v42 = (v37 * v37) + (v36 * v36);
          if (v42 > (v18 * v18))
          {
            return result;
          }

          result[7] = 0x100000001;
          result[5].f32[0] = v36;
          result[5].f32[1] = v37;
          v43 = sqrtf(v42);
          if (v43 >= 0.00000011921)
          {
            v44 = 1.0 / v43;
            result[5].f32[0] = v36 * v44;
            result[5].f32[1] = v37 * v44;
          }

          result[6] = v33;
          goto LABEL_26;
        }

        v32 = vmul_f32(vadd_f32(v32, v33), 0x3F0000003F000000);
        v38 = (v22 + 8 * v24);
        if ((((v17 - v32.f32[1]) * v38[1]) + ((v16 - v32.f32[0]) * *v38)) > v18)
        {
          return result;
        }

        result[7] = 0x100000001;
        result[5] = *v38;
      }

      result[6] = v32;
    }

LABEL_26:
    *result = *(a4 + 4);
    result[2].i32[0] = 0;
    return result;
  }

  v23 = 0;
  v24 = 0;
  v25 = (v20 >> 3) & 0x7FFFFFFF;
  v26 = (v19 + 4);
  v27 = (v22 + 4);
  v28 = -3.4028e38;
  while (1)
  {
    v29 = ((v17 - *v26) * *v27) + (*(v27 - 1) * (v16 - *(v26 - 1)));
    if (v29 > v18)
    {
      return result;
    }

    if (v29 > v28)
    {
      v24 = v23;
      v28 = ((v17 - *v26) * *v27) + (*(v27 - 1) * (v16 - *(v26 - 1)));
    }

    ++v23;
    v26 += 2;
    v27 += 2;
    if (v25 == v23)
    {
      v30 = v28 < 0.00000011921;
      goto LABEL_9;
    }
  }
}

uint64_t b2CollideEdgeAndCircle(uint64_t result, uint64_t a2, float *a3, float *a4, float *a5)
{
  *(result + 60) = 0;
  v6 = a5[2];
  v5 = a5[3];
  v8 = a4[4];
  v7 = a4[5];
  v9 = *a5 + ((v5 * v8) - (v6 * v7));
  v10 = ((v5 * v7) + (v6 * v8)) + a5[1];
  v11 = v9 - *a3;
  v12 = v10 - a3[1];
  v14 = a3[2];
  v13 = a3[3];
  v15 = (v12 * v14) + (v13 * v11);
  v16 = (v13 * v12) - (v14 * v11);
  v17 = *(a2 + 20);
  v18 = *(a2 + 24);
  v19 = *(a2 + 28);
  v20 = *(a2 + 16);
  v21 = v18 - v20;
  v22 = v19 - v17;
  v23 = v15 - v20;
  v24 = v16 - v17;
  v25 = ((v16 - v17) * (v19 - v17)) + ((v18 - v20) * (v15 - v20));
  v26 = *(a2 + 12) + a4[3];
  if (v25 <= 0.0)
  {
    if (((v24 * v24) + (v23 * v23)) > (v26 * v26))
    {
      return result;
    }

    v22 = 0.0;
    if (*(a2 + 48) == 1 && (((v17 - v16) * (v17 - *(a2 + 36))) + ((v20 - *(a2 + 32)) * (v20 - v15))) > 0.0)
    {
      return result;
    }

    v33 = 0;
    v32 = 0;
    v29 = 0.0;
LABEL_18:
    *(result + 56) = v33;
    *(result + 60) = 1;
    *(result + 40) = v22;
    *(result + 44) = v29;
    *(result + 48) = v20;
    *(result + 52) = v17;
    *(result + 16) = v32;
    *result = *(a4 + 2);
    return result;
  }

  v27 = (v22 * (v19 - v16)) + (v21 * (v18 - v15));
  if (v27 <= 0.0)
  {
    v34 = v15 - v18;
    v35 = v16 - v19;
    if (((v35 * v35) + (v34 * v34)) > (v26 * v26))
    {
      return result;
    }

    v22 = 0.0;
    if (*(a2 + 49) == 1 && ((v35 * (*(a2 + 44) - v19)) + ((*(a2 + 40) - v18) * v34)) > 0.0)
    {
      return result;
    }

    v33 = 0;
    v32 = 1;
    v29 = 0.0;
    v20 = *(a2 + 24);
    v17 = *(a2 + 28);
    goto LABEL_18;
  }

  v28 = (v22 * v22) + (v21 * v21);
  if (v28 <= 0.0)
  {
    b2CollideEdgeAndCircle();
  }

  if ((((v16 - ((1.0 / v28) * ((v27 * v17) + (v25 * v19)))) * (v16 - ((1.0 / v28) * ((v27 * v17) + (v25 * v19))))) + ((v15 - ((1.0 / v28) * ((v27 * v20) + (v25 * v18)))) * (v15 - ((1.0 / v28) * ((v27 * v20) + (v25 * v18)))))) <= (v26 * v26))
  {
    v29 = -v21;
    if (((v24 * v21) - (v22 * v23)) >= 0.0)
    {
      v22 = -v22;
      v29 = v18 - v20;
    }

    v30 = sqrtf((v29 * v29) + (v22 * v22));
    if (v30 >= 0.00000011921)
    {
      v31 = 1.0 / v30;
      v22 = v22 * v31;
      v29 = v29 * v31;
    }

    v32 = 0x10000;
    v33 = 1;
    goto LABEL_18;
  }

  return result;
}

uint64_t b2EPCollider::Collide(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float *a4, uint64_t a5, float *a6)
{
  v145 = *MEMORY[0x277D85DE8];
  v10 = a4[2];
  v9 = a4[3];
  v11 = a6[2];
  v12 = a6[3];
  v13 = (v9 * v11) - (v10 * v12);
  v14 = (v11 * v10) + (v9 * v12);
  v15 = *a6 - *a4;
  v16 = a6[1] - a4[1];
  v17 = (v10 * v16) + (v9 * v15);
  v18 = (v9 * v16) - (v10 * v15);
  a1[6].f32[0] = v17;
  a1[6].f32[1] = v18;
  a1[7].f32[0] = v13;
  a1[7].f32[1] = v14;
  v19 = *(a5 + 64);
  v20 = *(a5 + 68);
  v21 = v17 + ((v14 * v19) - (v13 * v20));
  v22 = v18 + ((v14 * v20) + (v13 * v19));
  a1[8].f32[0] = v21;
  a1[8].f32[1] = v22;
  v23 = a3[4];
  a1[9] = v23;
  v24 = a3[2];
  a1[10] = v24;
  v25 = a3[3];
  a1[11] = v25;
  v26 = a3[5];
  a1[12] = v26;
  v27 = HIDWORD(*&v25);
  v28 = v25.f32[0];
  v29 = HIDWORD(*&v24);
  v30 = v24.f32[0];
  v31 = a3[6].u8[0];
  v32 = v28 - v30;
  v33 = *&v27;
  v34 = *&v29;
  v35 = *&v27 - *&v29;
  v36 = sqrtf((v35 * v35) + (v32 * v32));
  if (v36 >= 0.00000011921)
  {
    v37 = 1.0 / v36;
    v32 = v32 * v37;
    v35 = v35 * v37;
  }

  v38 = a3[6].u8[1];
  a1[14].f32[0] = v35;
  a1[14].f32[1] = -v32;
  v39 = (v35 * (v21 - v30)) - (v32 * (v22 - v34));
  if (!v31)
  {
    if (!v38)
    {
      a1[20].i8[4] = v39 >= 0.0;
      if (v39 >= 0.0)
      {
        v60 = a1[14];
        a1[16] = v60;
        v61 = v60.i32[0] ^ 0x80000000;
        v62 = v60.i32[1] ^ 0x80000000;
        a1[18].i32[0] = v61;
        a1[18].i32[1] = v60.i32[1] ^ 0x80000000;
LABEL_40:
        a1[19].i32[0] = v61;
        a1[19].i32[1] = v62;
        goto LABEL_69;
      }

      a1[16].f32[0] = -v35;
      a1[16].f32[1] = v32;
      v56 = a1[14];
      goto LABEL_45;
    }

    v44 = 0;
    v45 = 1;
LABEL_10:
    v46 = v26.f32[0] - v28;
    v47 = v26.f32[1] - v33;
    v48 = sqrtf((v47 * v47) + (v46 * v46));
    if (v48 >= 0.00000011921)
    {
      v49 = 1.0 / v48;
      v46 = v46 * v49;
      v47 = v47 * v49;
    }

    a1[15].f32[0] = v47;
    a1[15].f32[1] = -v46;
    *&v50 = -v35;
    v51 = (v32 * v47) - (v35 * v46);
    v52 = (v47 * (v21 - v28)) - (v46 * (v22 - v33));
    if (!v31 || !v38)
    {
      if (v31)
      {
        goto LABEL_26;
      }

      if (v51 <= 0.0)
      {
        v68 = v39 >= 0.0;
        if (v52 < 0.0)
        {
          v68 = 0;
        }

        a1[20].i8[4] = v68;
        if (v68)
        {
          v56 = a1[14];
          a1[16] = v56;
          a1[18].i32[0] = v56.i32[0] ^ 0x80000000;
          a1[18].i32[1] = v56.i32[1] ^ 0x80000000;
          goto LABEL_68;
        }

        a1[16].i32[0] = v50;
        a1[16].f32[1] = v32;
        a1[18].f32[0] = -v47;
        a1[18].f32[1] = v46;
      }

      else
      {
        v64 = fmaxf(v39, v52);
        a1[20].i8[4] = v64 >= 0.0;
        if (v64 >= 0.0)
        {
          v65 = a1[14];
          v66 = a1[15];
          a1[16] = v65;
          a1[18].i32[0] = v65.i32[0] ^ 0x80000000;
          a1[18].i32[1] = v65.i32[1] ^ 0x80000000;
          a1[19] = v66;
          goto LABEL_69;
        }

        a1[16].i32[0] = v50;
        a1[16].f32[1] = v32;
        a1[18].i32[0] = v50;
        a1[18].f32[1] = v32;
      }

      v56 = a1[14];
      goto LABEL_68;
    }

    if (v51 > 0.0 && v44)
    {
      v54 = v39 >= 0.0 || v45;
      if (v52 >= 0.0)
      {
        v54 = 1;
      }

      a1[20].i8[4] = v54;
      if (v54 == 1)
      {
        v55 = a1[13];
        a1[16] = a1[14];
        v56 = a1[15];
LABEL_67:
        a1[18] = v55;
        goto LABEL_68;
      }

      a1[16].i32[0] = v50;
      a1[16].f32[1] = v32;
      *(&v50 + 1) = v32;
      v69 = vdupq_lane_s64(v50, 0);
LABEL_128:
      *a1[18].f32 = v69;
      goto LABEL_69;
    }

    if (v44)
    {
      if (v45)
      {
        a1[20].i8[4] = 1;
      }

      else
      {
        v70 = v39 >= 0.0;
        if (v52 < 0.0)
        {
          v70 = 0;
        }

        a1[20].i8[4] = v70;
        if (!v70)
        {
          a1[16].i32[0] = v50;
          a1[16].f32[1] = v32;
          a1[18].f32[0] = -v47;
          a1[18].f32[1] = v46;
          a1[19].i32[0] = v50;
          a1[19].f32[1] = v32;
          goto LABEL_69;
        }
      }

      v55 = a1[13];
      v56 = a1[14];
      a1[16] = v56;
      goto LABEL_67;
    }

    if (v51 > 0.0)
    {
      if (v52 >= 0.0)
      {
        a1[20].i8[4] = 1;
LABEL_127:
        v69 = *a1[14].f32;
        a1[16] = *v69.i8;
        goto LABEL_128;
      }

      v126 = v39 >= 0.0 && v45;
      a1[20].i8[4] = v126;
      if (v126)
      {
        goto LABEL_127;
      }

      a1[16].i32[0] = v50;
      a1[16].f32[1] = v32;
      a1[18].i32[0] = v50;
      a1[18].f32[1] = v32;
LABEL_51:
      a1[19] = vneg_f32(a1[13]);
      goto LABEL_69;
    }

    v125 = v39 >= 0.0 && v45;
    if (v52 < 0.0)
    {
      v125 = 0;
    }

    a1[20].i8[4] = v125;
    if (!v125)
    {
      a1[16].i32[0] = v50;
      a1[16].f32[1] = v32;
      a1[18].f32[0] = -v47;
      a1[18].f32[1] = v46;
      goto LABEL_51;
    }

    v56 = a1[14];
    a1[16] = v56;
LABEL_45:
    a1[18] = v56;
LABEL_68:
    a1[19] = v56;
    goto LABEL_69;
  }

  v40 = v30 - v23.f32[0];
  v41 = v34 - v23.f32[1];
  v42 = sqrtf((v41 * v41) + (v40 * v40));
  if (v42 >= 0.00000011921)
  {
    v43 = 1.0 / v42;
    v40 = v40 * v43;
    v41 = v41 * v43;
  }

  a1[13].f32[0] = v41;
  a1[13].f32[1] = -v40;
  v44 = ((v40 * v35) - (v41 * v32)) >= 0.0;
  v45 = ((v41 * (v21 - v23.f32[0])) - (v40 * (v22 - v23.f32[1]))) >= 0.0;
  if (v38)
  {
    goto LABEL_10;
  }

LABEL_26:
  if (!v44)
  {
    v63 = v39 >= 0.0 && v45;
    a1[20].i8[4] = v63;
    if (v63)
    {
      v58 = a1[14];
      a1[16] = v58;
      a1[18] = v58;
      goto LABEL_39;
    }

    a1[16].f32[0] = -v35;
    a1[16].f32[1] = v32;
    a1[18] = a1[14];
    goto LABEL_51;
  }

  v57 = v39 >= 0.0 || v45;
  a1[20].i8[4] = v57;
  if (v57 == 1)
  {
    v59 = a1[13];
    v58 = a1[14];
    a1[16] = v58;
    a1[18] = v59;
LABEL_39:
    v61 = v58.i32[0] ^ 0x80000000;
    v62 = v58.i32[1] ^ 0x80000000;
    goto LABEL_40;
  }

  a1[16].f32[0] = -v35;
  a1[16].f32[1] = v32;
  v67 = a1[14];
  a1[18] = v67;
  a1[19].i32[0] = v67.i32[0] ^ 0x80000000;
  a1[19].f32[1] = v32;
LABEL_69:
  v71 = *(a5 + 24) - *(a5 + 16);
  std::vector<b2Vec2>::resize(a1, (v71 >> 3));
  std::vector<b2Vec2>::resize(&a1[3], (v71 >> 3));
  v72 = *(a5 + 16);
  v73 = *(a5 + 24) - v72;
  if ((v73 >> 3) >= 1)
  {
    v74 = *a1;
    v75 = (v73 >> 3) & 0x7FFFFFFF;
    v76 = (v72 + 4);
    v77 = (*(a5 + 40) + 4);
    v78 = (*&a1[3] + 4);
    do
    {
      v79 = a1[7];
      v80 = vrev64_s32(v79);
      *v79.i32 = -*v79.i32;
      *v74++ = vadd_f32(a1[6], vmla_n_f32(vmul_n_f32(v79, *v76), v80, *(v76 - 1)));
      v81 = a1[7].f32[0];
      v79.i32[0] = a1[7].i32[1];
      v80.f32[0] = *(v77 - 1);
      v82 = (*v79.i32 * v80.f32[0]) - (v81 * *v77);
      *v79.i32 = (*v79.i32 * *v77) + (v81 * v80.f32[0]);
      *(v78 - 1) = v82;
      *v78 = *v79.i32;
      v76 += 2;
      v77 += 2;
      v78 += 2;
      --v75;
    }

    while (v75);
  }

  a1[20].i32[0] = 1016296636;
  a2[7].i32[1] = 0;
  result = b2EPCollider::ComputeEdgeSeparation(a1);
  v85 = result;
  if (result)
  {
    v86 = v84;
    if (v84 <= 0.018)
    {
      result = b2EPCollider::ComputePolygonSeparation(a1);
      if (result)
      {
        if (v87 > 0.018)
        {
          return result;
        }

        v88 = (v86 * 0.98) + 0.001;
        if (v88 >= v87)
        {
          v89 = v85;
        }

        else
        {
          v89 = result;
        }

        if (v88 < v87)
        {
          LODWORD(v85) = result;
        }
      }

      else
      {
        v89 = v85;
      }

      if (v85 == 1)
      {
        a2[7].i32[0] = 1;
        v90 = a1[3];
        v91 = (*&a1[4] - v90) >> 3;
        if (v91 < 2)
        {
          v92 = 0;
        }

        else
        {
          v92 = 0;
          v93 = a1[16].f32[0];
          v94 = a1[16].f32[1];
          v96 = *v90;
          v97 = v90[1];
          v95 = v90 + 3;
          v98 = (v94 * v97) + (v93 * v96);
          for (i = 1; i != v91; ++i)
          {
            v100 = v94 * *v95;
            if ((v100 + (v93 * *(v95 - 1))) < v98)
            {
              v92 = i;
              v98 = v100 + (v93 * *(v95 - 1));
            }

            v95 += 2;
          }
        }

        if (v91 > v92 + 1)
        {
          v108 = v92 + 1;
        }

        else
        {
          v108 = 0;
        }

        v109 = *a1;
        v137 = *(*a1 + 8 * v92);
        v138 = 0;
        v139 = v92;
        v140 = 1;
        v141 = *(*&v109 + 8 * v108);
        v142 = 0;
        v143 = v108;
        v144 = 1;
        if ((a1[20].i8[4] & 1) == 0)
        {
          v127 = 1;
          v106 = a1[10];
          v105 = a1[11];
          v128 = v105;
          v111 = vneg_f32(a1[14]);
          v129 = v111;
          v110 = v111.f32[1];
          LOBYTE(v101) = 1;
          goto LABEL_102;
        }

        LOBYTE(v101) = 0;
        v127 = 0x100000000;
        v105 = a1[10];
        v106 = a1[11];
        v128 = v105;
        v107 = a1[14];
      }

      else
      {
        v101 = HIDWORD(v89);
        a2[7].i32[0] = 2;
        v102 = a1[11];
        v137 = a1[10];
        v138 = 0;
        v139 = BYTE4(v89);
        v140 = 256;
        v141 = v102;
        v142 = 0;
        v143 = BYTE4(v89);
        v144 = 256;
        if (HIDWORD(v89) + 1 < (v71 >> 3))
        {
          v103 = HIDWORD(v89) + 1;
        }

        else
        {
          v103 = 0;
        }

        LODWORD(v127) = HIDWORD(v89);
        BYTE4(v127) = v103;
        v104 = v89 >> 32;
        v105 = *(*a1 + 8 * (v89 >> 32));
        v128 = v105;
        v106 = *(*a1 + 8 * v103);
        v107 = *(*&a1[3] + 8 * v104);
      }

      v129 = v107;
      v110 = v107.f32[1];
      v111.i32[0] = v107.i32[0];
LABEL_102:
      v130[0] = v110;
      v130[1] = -v111.f32[0];
      v131 = (v110 * v105.f32[0]) - (v111.f32[0] * v105.f32[1]);
      v132[0] = -v110;
      v132[1] = v111.f32[0];
      v133 = (v111.f32[0] * v106.f32[1]) - (v110 * v106.f32[0]);
      result = b2ClipSegmentToLine(v136, &v137, v130, v101, v131);
      if (result >= 2)
      {
        result = b2ClipSegmentToLine(v134, v136, v132, SBYTE4(v127), v133);
        if (result >= 2)
        {
          if (v85 == 1)
          {
            v114 = v128;
            a2[5] = v129;
          }

          else
          {
            a2[5] = *(*(a5 + 40) + 8 * v127);
            v114 = *(*(a5 + 16) + 8 * v127);
          }

          v112.i32[0] = v128.i32[0];
          v115 = 0;
          a2[6] = v114;
          v116 = v134;
          v117 = 1;
          do
          {
            v118 = v117;
            v119 = v116[1];
            if ((((v119 - v128.f32[1]) * v129.f32[1]) + (v129.f32[0] * (*v116 - v128.f32[0]))) <= a1[20].f32[0])
            {
              v120 = a2 + 5 * v115;
              if (v85 == 1)
              {
                v121 = *v116 - a1[6].f32[0];
                v122 = v119 - a1[6].f32[1];
                v124 = a1[7].f32[0];
                v123 = a1[7].f32[1];
                *v120 = (v122 * v124) + (v123 * v121);
                v120[1] = (v123 * v122) - (v124 * v121);
                v120[4] = v116[2];
              }

              else
              {
                *v120 = *v116;
                v113.i32[0] = v116[2];
                v113 = vuzp1_s8(vrev32_s16(*&vmovl_u8(v113)), v112);
                v120[4] = *v113.i32;
              }

              ++v115;
            }

            v117 = 0;
            v116 = &v135;
          }

          while ((v118 & 1) != 0);
          a2[7].i32[1] = v115;
        }
      }
    }
  }

  return result;
}

unint64_t b2EPCollider::ComputeEdgeSeparation(b2EPCollider *this)
{
  v1 = *(this + 1) - *this;
  if (v1)
  {
    v2 = v1 >> 3;
    v3 = *(this + 20);
    v4 = *(this + 32);
    if (v2 <= 1)
    {
      v2 = 1;
    }

    v5 = (*this + 4);
    v6 = 3.4028e38;
    do
    {
      v7 = (*v5 - *(this + 21)) * *(this + 33);
      if ((v7 + (v4 * (*(v5 - 1) - v3))) < v6)
      {
        v6 = v7 + (v4 * (*(v5 - 1) - v3));
      }

      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return ((*(this + 164) ^ 1u) << 32) | 1;
}

uint64_t b2EPCollider::ComputePolygonSeparation(b2EPCollider *this)
{
  v1 = *(this + 1);
  v2 = v1 - *this;
  if (v1 == *this)
  {
    return 0xFFFFFFFF00000000;
  }

  v3 = 0;
  v4 = 0;
  v6 = *(this + 32);
  v5 = *(this + 33);
  v7 = v2 >> 3;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = (*this + 4);
  v9 = (*(this + 3) + 4);
  v10 = 0xFFFFFFFFLL;
  v11 = -3.4028e38;
  while (1)
  {
    v12 = *(v9 - 1);
    v13 = *(v8 - 1);
    v14 = -(*v9 * (*v8 - *(this + 21))) - (v12 * (v13 - *(this + 20)));
    v15 = -(*v9 * (*v8 - *(this + 23))) - (v12 * (v13 - *(this + 22)));
    if (v14 < v15)
    {
      v15 = v14;
    }

    if (v15 > *(this + 40))
    {
      break;
    }

    v16 = -v12;
    v17 = -*v9;
    if (((v6 * v17) + (v12 * v5)) >= 0.0)
    {
      v18 = *(this + 38);
      v19 = *(this + 39);
    }

    else
    {
      v18 = *(this + 36);
      v19 = *(this + 37);
    }

    if ((((v17 - v19) * v5) + ((v16 - v18) * v6)) >= -0.034907)
    {
      if (v15 <= v11)
      {
        v10 = v10;
      }

      else
      {
        v4 = 2;
        v10 = v3;
      }

      if (v15 > v11)
      {
        v11 = v15;
      }
    }

    ++v3;
    v8 += 2;
    v9 += 2;
    if (v7 == v3)
    {
      return v4 | (v10 << 32);
    }
  }

  v4 = 2;
  v10 = v3;
  return v4 | (v10 << 32);
}

void b2CollideEdgeAndPolygon(float32x2_t *a1, float32x2_t *a2, float *a3, uint64_t a4, float *a5)
{
  *__p = 0u;
  v7 = 0u;
  *v5 = 0u;
  b2EPCollider::Collide(v5, a1, a2, a3, a4, a5);
  if (__p[1])
  {
    *&v7 = __p[1];
    operator delete(__p[1]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

void b2EPCollider::~b2EPCollider(b2EPCollider *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void b2CollidePolygons(float32x2_t *a1, float *a2, const b2Transform *a3, float *a4, const b2Transform *a5)
{
  v5 = a5;
  v6 = a4;
  v99 = *MEMORY[0x277D85DE8];
  a1[7].i32[1] = 0;
  v10 = a2[3] + a4[3];
  v86 = 0;
  MaxSeparation = b2FindMaxSeparation(&v86, a2, a3, a4, a5);
  if (MaxSeparation <= v10)
  {
    v12 = MaxSeparation;
    v85 = 0;
    v13 = b2FindMaxSeparation(&v85, v6, v5, a2, a3);
    if (v13 <= v10)
    {
      v14 = v13;
      v15 = (v12 * 0.98) + 0.001;
      if (v13 > v15)
      {
        v16 = &v85;
        v17 = 2;
        p_var0 = &a3->var0;
        v19 = a2;
      }

      else
      {
        v16 = &v86;
        v17 = 1;
        p_var0 = &v5->var0;
        v5 = a3;
        v19 = v6;
        v6 = a2;
      }

      v20 = *v16;
      var0 = v5->var1.var0;
      var1 = v5->var1.var1;
      x = v5->var0.x;
      y = v5->var0.y;
      v25 = *p_var0;
      v26 = p_var0[1];
      v28 = p_var0[2];
      v27 = p_var0[3];
      a1[7].i32[0] = v17;
      if ((v20 & 0x80000000) != 0 || (v29 = *(v6 + 2), v30 = (*(v6 + 3) - v29) >> 3, v20 >= v30))
      {
        b2CollidePolygons();
      }

      v31 = *(v19 + 2);
      v32 = *(v19 + 3) - v31;
      v33 = v32 >> 3;
      v34 = -v28;
      if ((v32 >> 3) < 1)
      {
        v36 = 0;
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = (*(v6 + 5) + 8 * v20);
        v38 = v37[1];
        v39 = (var1 * *v37) - (var0 * v38);
        v40 = (var1 * v38) + (var0 * *v37);
        v41 = (v28 * v40) + (v27 * v39);
        v42 = (v27 * v40) - (v28 * v39);
        v43 = 3.4028e38;
        v44 = *(v19 + 5);
        v45 = (v32 >> 3) & 0x7FFFFFFF;
        v46 = (v44 + 4);
        do
        {
          if (((v42 * *v46) + (v41 * *(v46 - 1))) < v43)
          {
            v43 = (v42 * *v46) + (v41 * *(v46 - 1));
            v36 = v35;
          }

          ++v35;
          v46 += 2;
        }

        while (v45 != v35);
      }

      v47 = -var0;
      if (v36 + 1 < v33)
      {
        v48 = v36 + 1;
      }

      else
      {
        v48 = 0;
      }

      v49 = (v31 + 8 * v36);
      v50 = v49[1];
      v51 = v26 + ((v27 * v50) + (v28 * *v49));
      *&v90 = v25 + ((v50 * v34) + (v27 * *v49));
      *(&v90 + 1) = v51;
      v91 = v20;
      v92 = v36;
      v93 = 1;
      v52 = (v31 + 8 * v48);
      v53 = v52[1];
      v54 = v26 + ((v27 * v53) + (v28 * *v52));
      v94 = v25 + ((v53 * v34) + (v27 * *v52));
      v95 = v54;
      v96 = v20;
      v97 = v48;
      v98 = 1;
      if (v20 + 1 < v30)
      {
        v55 = v20 + 1;
      }

      else
      {
        v55 = 0;
      }

      v56 = *(v29 + 8 * v20);
      v82 = *(v29 + 8 * v55);
      v57 = vsub_f32(v82, v56);
      v58 = sqrtf(COERCE_FLOAT(vmul_f32(v57, v57).i32[1]) + (v57.f32[0] * v57.f32[0]));
      v78 = v15;
      v79 = v14;
      v76 = v26;
      v77 = v25;
      v74 = v28;
      v75 = -v28;
      if (v58 >= 0.00000011921)
      {
        v57 = vmul_n_f32(v57, 1.0 / v58);
      }

      v59 = vmuls_lane_f32(var1, v57, 1) + (var0 * v57.f32[0]);
      v84[0] = vmuls_lane_f32(v47, v57, 1) + (var1 * v57.f32[0]);
      v84[1] = v59;
      v60 = -v84[0];
      v72 = v56;
      v73 = v57;
      v70 = y + (vmuls_lane_f32(var1, v56, 1) + (var0 * v56.f32[0]));
      v71 = x + (vmuls_lane_f32(v47, v56, 1) + (var1 * v56.f32[0]));
      v80 = y;
      v81 = v84[0];
      v83[0] = -v84[0];
      v83[1] = -v59;
      if (b2ClipSegmentToLine(v89, &v90, v83, v20, v10 - ((v70 * v59) + (v84[0] * v71))) >= 2 && b2ClipSegmentToLine(v87, v89, v84, v55, v10 + (((v80 + (vmuls_lane_f32(var1, v82, 1) + (var0 * v82.f32[0]))) * v59) + (v81 * (x + (vmuls_lane_f32(v47, v82, 1) + (var1 * v82.f32[0])))))) >= 2)
      {
        v61 = 0;
        a1[5].i32[0] = v73.i32[1];
        a1[5].f32[1] = -v73.f32[0];
        a1[6] = vmul_f32(vadd_f32(v72, v82), 0x3F0000003F000000);
        v62 = v87;
        v63 = 1;
        do
        {
          v64 = v63;
          v65 = v62[1];
          if ((((v65 * v60) + (v59 * *v62)) - ((v59 * v71) - (v81 * v70))) <= v10)
          {
            v66 = a1 + 5 * v61;
            v67 = *v62 - v77;
            v68 = v65 - v76;
            *v66 = (v74 * v68) + (v27 * v67);
            v66[1] = (v27 * v68) + (v75 * v67);
            v69 = *(v62 + 2);
            *(v66 + 4) = v69;
            if (v79 > v78)
            {
              *(v66 + 16) = BYTE1(v69);
              *(v66 + 17) = v69;
              *(v66 + 18) = HIBYTE(v69);
              *(v66 + 19) = BYTE2(v69);
            }

            ++v61;
          }

          v63 = 0;
          v62 = &v88;
        }

        while ((v64 & 1) != 0);
        a1[7].i32[1] = v61;
      }
    }
  }
}

float b2FindMaxSeparation(int *a1, const b2PolygonShape *a2, const b2Transform *a3, const b2PolygonShape *a4, const b2Transform *a5)
{
  v9 = *(a2 + 3) - *(a2 + 2);
  v10 = v9 >> 3;
  v11 = (v9 >> 3) - 1;
  if ((v9 >> 3) < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    var0 = a5->var1.var0;
    var1 = a5->var1.var1;
    v16 = *(a4 + 16);
    v17 = *(a4 + 17);
    v18 = a5->var0.x + ((var1 * v16) - (var0 * v17));
    v19 = ((var1 * v17) + (var0 * v16)) + a5->var0.y;
    v21 = a3->var1.var0;
    v20 = a3->var1.var1;
    v22 = *(a2 + 16);
    v23 = *(a2 + 17);
    v24 = a3->var0.x + ((v20 * v22) - (v21 * v23));
    v25 = (v20 * v23) + (v21 * v22);
    v26 = -3.4028e38;
    v27 = v18 - v24;
    v28 = v19 - (v25 + a3->var0.y);
    v29 = (v21 * v28) + (v20 * v27);
    v30 = (v20 * v28) - (v21 * v27);
    v31 = (v9 >> 3) & 0x7FFFFFFF;
    v32 = (*(a2 + 5) + 4);
    do
    {
      v33 = v30 * *v32;
      if ((v33 + (*(v32 - 1) * v29)) > v26)
      {
        v26 = v33 + (*(v32 - 1) * v29);
        v13 = v12;
      }

      ++v12;
      v32 += 2;
    }

    while (v31 != v12);
  }

  v34 = b2EdgeSeparation(a2, a3, v13, a4, a5);
  if (v13 <= 0)
  {
    v35 = v11;
  }

  else
  {
    v35 = v13 - 1;
  }

  v36 = b2EdgeSeparation(a2, a3, v35, a4, a5);
  if (v13 + 1 < v10)
  {
    v37 = v13 + 1;
  }

  else
  {
    v37 = 0;
  }

  v38 = b2EdgeSeparation(a2, a3, v37, a4, a5);
  v39 = v36 > v38 && v36 > v34;
  if (!v39)
  {
    if (v38 <= v34)
    {
      goto LABEL_28;
    }

    v35 = v37;
    v36 = v38;
  }

  do
  {
    v34 = v36;
    v13 = v35;
    if (v39)
    {
      if (v35 <= 0)
      {
        v35 = v11;
      }

      else
      {
        --v35;
      }
    }

    else if (v35 + 1 < v10)
    {
      ++v35;
    }

    else
    {
      v35 = 0;
    }

    v36 = b2EdgeSeparation(a2, a3, v35, a4, a5);
  }

  while (v36 > v34);
LABEL_28:
  *a1 = v13;
  return v34;
}

float b2EdgeSeparation(const b2PolygonShape *a1, const b2Transform *a2, unsigned int a3, const b2PolygonShape *a4, const b2Transform *a5)
{
  if ((a3 & 0x80000000) != 0 || (v5 = *(a1 + 2), ((*(a1 + 3) - v5) >> 3) <= a3))
  {
    b2EdgeSeparation();
  }

  v6 = *(a4 + 2);
  v7 = *(a4 + 3) - v6;
  v8 = (*(a1 + 5) + 8 * a3);
  var0 = a2->var1.var0;
  var1 = a2->var1.var1;
  v11 = v8[1];
  v12 = (var1 * *v8) - (var0 * v11);
  v13 = (var1 * v11) + (var0 * *v8);
  v15 = a5->var1.var0;
  v14 = a5->var1.var1;
  if ((v7 >> 3) < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    LODWORD(v17) = 0;
    v20 = (v7 >> 3) & 0x7FFFFFFF;
    v21 = (v6 + 4);
    v22 = 3.4028e38;
    do
    {
      v18 = (v15 * v13) + (v14 * v12);
      v19 = (v14 * v13) - (v15 * v12);
      if (((v19 * *v21) + (*(v21 - 1) * v18)) < v22)
      {
        v22 = (v19 * *v21) + (*(v21 - 1) * v18);
        LODWORD(v17) = v16;
      }

      ++v16;
      v21 += 2;
    }

    while (v20 != v16);
    v17 = v17;
  }

  v23 = (v5 + 8 * a3);
  return (v13 * ((((v14 * *(v6 + 8 * v17 + 4)) + (v15 * *(v6 + 8 * v17))) + a5->var0.y) - (((var1 * v23[1]) + (var0 * *v23)) + a2->var0.y))) + (((a5->var0.x + ((*(v6 + 8 * v17 + 4) * -v15) + (v14 * *(v6 + 8 * v17)))) - (a2->var0.x + ((v23[1] * -var0) + (var1 * *v23)))) * v12);
}

float b2WorldManifold::Initialize(float *a1, uint64_t a2, float *a3, float *a4, float result, float a6)
{
  v6 = *(a2 + 60);
  if (!v6)
  {
    return result;
  }

  v7 = *(a2 + 56);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v9 = a3[2];
        v8 = a3[3];
        v10 = *(a2 + 40);
        v11 = *(a2 + 44);
        v12 = (v8 * v10) - (v9 * v11);
        v13 = (v8 * v11) + (v9 * v10);
        *a1 = v12;
        a1[1] = v13;
        if (v6 >= 1)
        {
          v15 = a3[2];
          v14 = a3[3];
          v16 = *(a2 + 48);
          v17 = *(a2 + 52);
          v18 = *a3 + ((v14 * v16) - (v15 * v17));
          v19 = ((v14 * v17) + (v15 * v16)) + a3[1];
          v20 = v12 * a6;
          v21 = v13 * a6;
          v22 = a1 + 6;
          v23 = a1 + 3;
          v24 = (a2 + 4);
          do
          {
            v26 = a4[2];
            v25 = a4[3];
            v27 = *(v24 - 1);
            v28 = *a4 + ((v25 * v27) - (v26 * *v24));
            v29 = ((v25 * *v24) + (v26 * v27)) + a4[1];
            v30 = result - ((v13 * (v29 - v19)) + ((v28 - v18) * v12));
            v31 = v28 + (v12 * v30);
            v32 = v29 + (v13 * v30);
            v33 = v29 - v21;
            *(v23 - 1) = ((v28 - v20) + v31) * 0.5;
            *v23 = (v33 + v32) * 0.5;
            *v22++ = (v13 * (v33 - v32)) + (((v28 - v20) - v31) * v12);
            v23 += 2;
            v24 += 5;
            --v6;
          }

          while (v6);
        }
      }

      return result;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      return result;
    }

LABEL_11:
    *a1 = 0x3F80000000000000;
    v35 = a3[2];
    v34 = a3[3];
    v36 = *(a2 + 48);
    v37 = *(a2 + 52);
    v38 = *a3 + ((v34 * v36) - (v35 * v37));
    v39 = ((v34 * v37) + (v35 * v36)) + a3[1];
    v41 = a4[2];
    v40 = a4[3];
    v42 = *(a2 + 4);
    v43 = *a4 + ((v40 * *a2) - (v41 * v42));
    v44 = ((v40 * v42) + (v41 * *a2)) + a4[1];
    if ((((v39 - v44) * (v39 - v44)) + ((v38 - v43) * (v38 - v43))) <= 1.4211e-14)
    {
      v45 = 0.0;
      v46 = 1.0;
    }

    else
    {
      v45 = v43 - v38;
      v46 = v44 - v39;
      *a1 = v43 - v38;
      a1[1] = v44 - v39;
      v47 = sqrtf((v46 * v46) + (v45 * v45));
      if (v47 >= 0.00000011921)
      {
        v48 = 1.0 / v47;
        v45 = v45 * v48;
        v46 = v46 * v48;
        *a1 = v45;
        a1[1] = v46;
      }
    }

    v49 = v38 + (v45 * result);
    v50 = v39 + (v46 * result);
    v51 = v43 - (v45 * a6);
    v52 = v44 - (v46 * a6);
    a1[2] = (v49 + v51) * 0.5;
    a1[3] = (v50 + v52) * 0.5;
    result = (v46 * (v52 - v50)) + ((v51 - v49) * v45);
    a1[6] = result;
    return result;
  }

  v54 = a4[2];
  v53 = a4[3];
  v55 = *(a2 + 40);
  v56 = *(a2 + 44);
  v57 = (v53 * v55) - (v54 * v56);
  v58 = (v53 * v56) + (v54 * v55);
  *a1 = v57;
  a1[1] = v58;
  if (v6 >= 1)
  {
    v60 = a4[2];
    v59 = a4[3];
    v61 = *(a2 + 48);
    v62 = *(a2 + 52);
    v63 = *a4 + ((v59 * v61) - (v60 * v62));
    v64 = ((v59 * v62) + (v60 * v61)) + a4[1];
    v65 = v57 * result;
    v66 = v58 * result;
    v67 = a1 + 6;
    v68 = a1 + 3;
    v69 = (a2 + 4);
    do
    {
      v71 = a3[2];
      v70 = a3[3];
      v72 = *(v69 - 1);
      v73 = *a3 + ((v70 * v72) - (v71 * *v69));
      v74 = ((v70 * *v69) + (v71 * v72)) + a3[1];
      v75 = a6 - ((v58 * (v74 - v64)) + ((v73 - v63) * v57));
      v76 = v73 + (v57 * v75);
      v77 = v74 + (v58 * v75);
      v78 = v74 - v66;
      *(v68 - 1) = ((v73 - v65) + v76) * 0.5;
      *v68 = (v78 + v77) * 0.5;
      *v67++ = (v58 * (v78 - v77)) + (((v73 - v65) - v76) * v57);
      v68 += 2;
      v69 += 5;
      --v6;
    }

    while (v6);
  }

  result = -v57;
  *a1 = -v57;
  a1[1] = -v58;
  return result;
}

unint64_t b2GetPointStates(unint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *a2 = 0;
  *(result + 4) = 0;
  a2[1] = 0;
  v4 = *(a3 + 60);
  v5 = *(a4 + 60);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a3 + 20 * i + 16);
      *(result + 4 * i) = 3;
      v8 = v5;
      v9 = (a4 + 16);
      if (v5 >= 1)
      {
        while (1)
        {
          v10 = *v9;
          v9 += 5;
          if (v10 == v7)
          {
            break;
          }

          if (!--v8)
          {
            goto LABEL_8;
          }
        }

        *(result + 4 * i) = 2;
      }

LABEL_8:
      ;
    }
  }

  if (v5 >= 1)
  {
    for (j = 0; j != v5; ++j)
    {
      v12 = *(a4 + 20 * j + 16);
      a2[j] = 1;
      v13 = v4;
      v14 = (a3 + 16);
      if (v4 >= 1)
      {
        while (1)
        {
          v15 = *v14;
          v14 += 5;
          result = v15;
          if (v15 == v12)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_16;
          }
        }

        a2[j] = 2;
      }

LABEL_16:
      ;
    }
  }

  return result;
}

uint64_t b2AABB::RayCast(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  v3 = 0;
  v4 = a3->i32[0];
  v27 = a3->i32[1];
  v28 = v4;
  v5 = vsub_f32(a3[1], *a3);
  v25 = v5.i32[1];
  v26 = v5.i32[0];
  v6 = vbsl_s8(vcgtz_f32(v5), v5, vneg_f32(v5));
  v7 = a1 + 8;
  v8 = &v24;
  v9 = &v28;
  v10 = &v26;
  v11 = -3.4028e38;
  v12 = 3.4028e38;
  v13 = 1;
  do
  {
    v14 = v13;
    if (*v6.i32 >= 0.00000011921)
    {
      v15 = 1.0 / *v10;
      v16 = v15 * (*(a1 + 4 * v3) - *v9);
      v17 = *(v7 + 4 * v3) - *v9;
      v18 = v15 * v17;
      v19 = v16 <= (v15 * v17);
      if (v16 <= (v15 * v17))
      {
        v20 = v15 * (*(a1 + 4 * v3) - *v9);
      }

      else
      {
        v20 = v15 * v17;
      }

      if (v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = v15 * (*(a1 + 4 * v3) - *v9);
      }

      if (v20 > v11)
      {
        if (v16 <= v18)
        {
          v22 = -1.0;
        }

        else
        {
          v22 = 1.0;
        }

        v24 = 0;
        *v8 = v22;
        v11 = v20;
      }

      if (v12 >= v21)
      {
        v12 = v21;
      }

      if (v11 > v12)
      {
        return 0;
      }
    }

    else if (*v9 < *(a1 + 4 * v3) || *(v7 + 4 * v3) < *v9)
    {
      return 0;
    }

    v13 = 0;
    v9 = &v27;
    v10 = &v25;
    v8 = &v24 + 1;
    v6.i32[0] = v6.i32[1];
    v3 = 1;
  }

  while ((v14 & 1) != 0);
  result = 0;
  if (v11 >= 0.0 && a3[2].f32[0] >= v11)
  {
    *(a2 + 8) = v11;
    *a2 = v24;
    return 1;
  }

  return result;
}

uint64_t b2ClipSegmentToLine(uint64_t a1, uint64_t *a2, float *a3, __int8 a4, float a5)
{
  v5 = a3[1];
  v6 = ((v5 * *(a2 + 1)) + (*a3 * *a2)) - a5;
  v7 = ((v5 * *(a2 + 4)) + (*a3 * *(a2 + 3))) - a5;
  if (v6 <= 0.0)
  {
    v9 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *a1 = v9;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 <= 0.0)
  {
    v10 = a1 + 12 * v8;
    v11 = *(a2 + 12);
    v8 = (v8 + 1);
    *(v10 + 8) = *(a2 + 5);
    *v10 = v11;
  }

  if ((v6 * v7) < 0.0)
  {
    v12 = (a1 + 12 * v8);
    *v12 = vadd_f32(*a2, vmul_n_f32(vsub_f32(*(a2 + 12), *a2), v6 / (v6 - v7)));
    v12[1].i8[0] = a4;
    v12[1].i8[1] = *(a2 + 9);
    v12[1].i16[1] = 256;
    return (v8 + 1);
  }

  return v8;
}

BOOL b2TestOverlap(b2Shape *a1, int a2, b2Shape *a3, int a4, const b2Transform *a5, const b2Transform *a6)
{
  v17 = 0;
  v18 = 0;
  v19[2] = 0;
  v19[3] = 0;
  b2DistanceProxy::Set(v16, a1, a2);
  b2DistanceProxy::Set(v19, a3, a4);
  v10 = *a6;
  v20 = *a5;
  v21 = v10;
  v22 = 1;
  v15 = 0;
  b2Distance(v12, v14, v16);
  return v13 < 0.0000011921;
}

float b2DistanceProxy::Set(b2DistanceProxy *this, b2Shape *a2, int a3)
{
  v5 = *(a2 + 2);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a2 + 2);
      v8 = *(a2 + 3);
      *(this + 2) = v7;
      result = *(a2 + 3);
      *(this + 7) = result;
      *(this + 6) = (v8 - v7) >> 3;
      return result;
    }

    if (v5 != 3)
    {
      if (v5 == 4)
      {
        if ((atomic_load_explicit(&qword_27FD070C8, memory_order_acquire) & 1) == 0)
        {
          b2DistanceProxy::Set();
        }

        v6 = &_MergedGlobals;
        goto LABEL_17;
      }

LABEL_24:
      b2DistanceProxy::Set();
    }

    if (a3 < 0 || ((*(a2 + 3) - *(a2 + 2)) >> 3) <= a3)
    {
      b2DistanceProxy::Set();
    }

    *this = *b2ChainShape::GetVertex(a2, a3);
    Vertex = *(a2 + 2);
    v12 = (*(a2 + 3) - Vertex) >> 3;
    if (a3 + 1 >= v12)
    {
      if (v12 <= 0)
      {
        b2ChainShape::GetVertex();
      }
    }

    else
    {
      Vertex = b2ChainShape::GetVertex(a2, a3 + 1);
    }

    *(this + 1) = *Vertex;
    *(this + 2) = this;
LABEL_20:
    v13 = 2;
    goto LABEL_21;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_24;
    }

    *(this + 2) = a2 + 16;
    goto LABEL_20;
  }

  v6 = (a2 + 16);
LABEL_17:
  *(this + 2) = v6;
  v13 = 1;
LABEL_21:
  *(this + 6) = v13;
  result = *(a2 + 3);
  *(this + 7) = result;
  return result;
}

__n128 b2Simplex::Solve2(b2Simplex *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  v3 = *(this + 13);
  v4 = *(this + 14);
  v5 = v3 - v1;
  v6 = v4 - v2;
  v7 = v2 * (v4 - v2);
  v8 = v7 + (v1 * (v3 - v1));
  if (v8 >= 0.0)
  {
    *(this + 6) = 1065353216;
    *(this + 27) = 1;
    result = *this;
    v13 = *(this + 1);
    *(this + 36) = *this;
    *(this + 17) = *(this + 8);
    *(this + 52) = v13;
  }

  else
  {
    v9 = (v4 * v6) + (v3 * v5);
    if (v9 <= 0.0)
    {
      *(this + 15) = 1065353216;
      *(this + 27) = 1;
      result = *(this + 36);
      v14 = *(this + 52);
      *this = result;
      *(this + 1) = v14;
      *(this + 8) = *(this + 17);
    }

    else
    {
      v10 = -(v7 + (v1 * v5));
      v11 = 1.0 / (v9 - v8);
      *(this + 6) = v9 * v11;
      result.n128_f32[0] = v11 * v10;
      *(this + 15) = result.n128_u32[0];
      *(this + 27) = 2;
    }
  }

  return result;
}

uint64_t b2Simplex::Solve3(uint64_t this)
{
  v1 = *(this + 16);
  v2 = *(this + 20);
  v3 = *(this + 52);
  v4 = *(this + 56);
  v5 = *(this + 88);
  v6 = *(this + 92);
  v7 = v3 - v1;
  v8 = v4 - v2;
  v9 = v2 * (v4 - v2);
  v10 = v9 + (v1 * (v3 - v1));
  v11 = v5 - v1;
  v12 = v6 - v2;
  v13 = v2 * (v6 - v2);
  v14 = v13 + (v1 * (v5 - v1));
  if (v10 >= 0.0 && v14 >= 0.0)
  {
    *(this + 24) = 1065353216;
    v15 = 1;
LABEL_8:
    *(this + 108) = v15;
    return this;
  }

  v16 = (v4 * v8) + (v3 * v7);
  v17 = (v7 * v12) - (v8 * v11);
  v18 = ((v1 * v4) - (v2 * v3)) * v17;
  if (v16 > 0.0 && v10 < 0.0 && v18 <= 0.0)
  {
    v19 = 1.0 / (v16 - v10);
    *(this + 24) = v16 * v19;
    *(this + 60) = v19 * -(v9 + (v1 * v7));
    v15 = 2;
    goto LABEL_8;
  }

  v20 = (v6 * v12) + (v5 * v11);
  v21 = v17 * ((v5 * v2) - (v6 * v1));
  if (v20 <= 0.0 || v14 >= 0.0 || v21 > 0.0)
  {
    v23 = v5 - v3;
    v24 = v4 * (v6 - v4);
    v25 = v24 + (v3 * (v5 - v3));
    if (v16 > 0.0 || v25 < 0.0)
    {
      v28 = (v6 * (v6 - v4)) + (v5 * v23);
      if (v20 > 0.0 || v28 > 0.0)
      {
        v30 = ((v3 * v6) - (v4 * v5)) * v17;
        if (v28 <= 0.0 || v25 >= 0.0 || v30 > 0.0)
        {
          v33 = 1.0 / (v18 + (v30 + v21));
          *(this + 24) = v30 * v33;
          *(this + 60) = v21 * v33;
          *(this + 96) = v18 * v33;
          v15 = 3;
          goto LABEL_8;
        }

        v31 = 1.0 / (v28 - v25);
        *(this + 60) = v28 * v31;
        *(this + 96) = v31 * -(v24 + (v3 * v23));
        v29 = 2;
      }

      else
      {
        *(this + 96) = 1065353216;
        v29 = 1;
      }

      *(this + 108) = v29;
      v32 = *(this + 88);
      *this = *(this + 72);
      *(this + 16) = v32;
      v27 = *(this + 104);
    }

    else
    {
      *(this + 60) = 1065353216;
      *(this + 108) = 1;
      v26 = *(this + 52);
      *this = *(this + 36);
      *(this + 16) = v26;
      v27 = *(this + 68);
    }

    *(this + 32) = v27;
  }

  else
  {
    v22 = 1.0 / (v20 - v14);
    *(this + 24) = v20 * v22;
    *(this + 96) = v22 * -(v13 + (v1 * v11));
    *(this + 108) = 2;
    *(this + 36) = *(this + 72);
    *(this + 52) = *(this + 88);
    *(this + 68) = *(this + 104);
  }

  return this;
}

int32x4_t b2Distance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  ++b2_gjkCalls;
  v6 = *(a3 + 64);
  v63 = *(a3 + 80);
  v64 = v6;
  b2Simplex::ReadCache(v60, a2, a3, &v64, a3 + 32, &v63);
  b2Simplex::GetClosestPoint(v60);
  v7 = 0;
  v8 = v62;
  do
  {
    v9 = v8;
    if (v8 >= 1)
    {
      v10 = v65;
      v11 = v66;
      v12 = v8;
      v13 = &v61;
      do
      {
        v14 = *v13;
        *v11++ = *(v13 - 1);
        *v10++ = v14;
        v13 += 9;
        --v12;
      }

      while (v12);
    }

    if (v8 != 1)
    {
      if (v8 == 2)
      {
        b2Simplex::Solve2(v60);
      }

      else
      {
        if (v8 != 3)
        {
          b2Distance();
        }

        b2Simplex::Solve3(v60);
      }
    }

    if (v62 == 3)
    {
      break;
    }

    b2Simplex::GetClosestPoint(v60);
    SearchDirection = b2Simplex::GetSearchDirection(v60);
    if (((v16 * v16) + (SearchDirection * SearchDirection)) < 1.4211e-14)
    {
      break;
    }

    v17 = v62;
    v18 = &v60[9 * v62];
    v19 = *(&v64 + 1);
    v20 = *(a3 + 16);
    v21 = *(a3 + 24);
    if (v21 <= 1)
    {
      v22 = 0;
      v18[7] = 0;
    }

    else
    {
      v22 = 0;
      v23 = -(v16 * *(&v64 + 2)) - (*(&v64 + 3) * SearchDirection);
      v24 = (*(&v64 + 2) * SearchDirection) - (v16 * *(&v64 + 3));
      v25 = (v24 * v20[1]) + (*v20 * v23);
      v26 = v20 + 3;
      for (i = 1; i != v21; ++i)
      {
        if (((v24 * *v26) + (*(v26 - 1) * v23)) > v25)
        {
          v25 = (v24 * *v26) + (*(v26 - 1) * v23);
          v22 = i;
        }

        v26 += 2;
      }

      v18[7] = v22;
      if (v22 < 0)
      {
LABEL_48:
        b2Distance();
      }
    }

    if (v21 <= v22)
    {
      goto LABEL_48;
    }

    v28 = &v20[2 * v22];
    v29 = v28[1];
    v30 = *&v64 + ((v29 * -*&v19) + (*(&v19 + 1) * *v28));
    v31 = ((*(&v19 + 1) * v29) + (*&v19 * *v28)) + *(&v64 + 1);
    *v18 = v30;
    *(v18 + 1) = v31;
    v32 = *(&v63 + 1);
    v33 = *(a3 + 48);
    v34 = *(a3 + 56);
    if (v34 <= 1)
    {
      v35 = 0;
      v18[8] = 0;
    }

    else
    {
      v35 = 0;
      v36 = (v16 * *(&v63 + 2)) + (*(&v63 + 3) * SearchDirection);
      v37 = (v16 * *(&v63 + 3)) - (*(&v63 + 2) * SearchDirection);
      v38 = (v37 * v33[1]) + (*v33 * v36);
      v39 = v33 + 3;
      for (j = 1; j != v34; ++j)
      {
        if (((v37 * *v39) + (*(v39 - 1) * v36)) > v38)
        {
          v38 = (v37 * *v39) + (*(v39 - 1) * v36);
          v35 = j;
        }

        v39 += 2;
      }

      v18[8] = v35;
      if (v35 < 0)
      {
LABEL_49:
        b2Distance();
      }
    }

    if (v34 <= v35)
    {
      goto LABEL_49;
    }

    v41 = &v33[2 * v35];
    v42 = v41[1];
    v43 = *&v63 + ((v42 * -*&v32) + (*(&v32 + 1) * *v41));
    v44 = ((*(&v32 + 1) * v42) + (*&v32 * *v41)) + *(&v63 + 1);
    *(v18 + 2) = v43;
    *(v18 + 3) = v44;
    *(v18 + 4) = v43 - v30;
    *(v18 + 5) = v44 - v31;
    ++v7;
    ++b2_gjkIters;
    v45 = v65;
    v46 = v66;
    do
    {
      v47 = *v46++;
      if (v22 == v47 && v35 == *v45)
      {
        goto LABEL_35;
      }

      ++v45;
      --v9;
    }

    while (v9);
    v8 = v17 + 1;
    v62 = v17 + 1;
  }

  while (v7 != 20);
LABEL_35:
  v48 = b2_gjkMaxIters;
  if (b2_gjkMaxIters <= v7)
  {
    v48 = v7;
  }

  b2_gjkMaxIters = v48;
  b2Simplex::GetWitnessPoints(v60, a1, (a1 + 8));
  *(a1 + 16) = sqrtf(((*(a1 + 4) - *(a1 + 12)) * (*(a1 + 4) - *(a1 + 12))) + ((*a1 - *(a1 + 8)) * (*a1 - *(a1 + 8))));
  *(a1 + 20) = v7;
  b2Simplex::WriteCache(v60, a2);
  if (*(a3 + 96) == 1)
  {
    result.i32[0] = *(a3 + 28);
    v50 = *(a3 + 60);
    v51 = *(a1 + 16);
    if (v51 <= (*result.i32 + v50) || v51 <= 0.00000011921)
    {
      *v53.f32 = vadd_f32(*a1, *(a1 + 8));
      v53.i64[1] = v53.i64[0];
      v54.i64[0] = 0x3F0000003F000000;
      v54.i64[1] = 0x3F0000003F000000;
      result = vmulq_f32(v53, v54);
      *a1 = result;
      *(a1 + 16) = 0;
    }

    else
    {
      *(a1 + 16) = v51 - (*result.i32 + v50);
      v55 = *a1;
      *v56.f32 = vsub_f32(*&vextq_s8(v55, v55, 8uLL), *a1);
      v57 = sqrtf(COERCE_FLOAT(vmul_f32(*&v56, *&v56).i32[1]) + (v56.f32[0] * v56.f32[0]));
      if (v57 >= 0.00000011921)
      {
        *v56.f32 = vmul_n_f32(*v56.f32, 1.0 / v57);
      }

      v56.i64[1] = v56.i64[0];
      *&result.i32[1] = v50;
      v58 = vmulq_f32(vzip1q_s32(result, result), v56);
      *&v59 = vaddq_f32(v55, v58).u64[0];
      result = vsubq_f32(v55, v58);
      *(&v59 + 1) = result.i64[1];
      *a1 = v59;
    }
  }

  return result;
}

void b2Simplex::ReadCache(b2Simplex *this, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v6 = *(a2 + 4);
  if (v6 >= 4)
  {
    b2Simplex::ReadCache();
  }

  *(this + 27) = v6;
  if (!v6)
  {
LABEL_10:
    *(this + 7) = 0;
    *(this + 8) = 0;
    if (*(a3 + 24) <= 0)
    {
      b2Distance();
    }

    if (*(a5 + 24) <= 0)
    {
      b2Distance();
    }

    v33 = *(a3 + 16);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(a5 + 16);
    v37 = *v36;
    v38 = v36[1];
    v40 = a4[2];
    v39 = a4[3];
    v41 = *a4 + ((v39 * v35) - (v40 * v34));
    v42 = ((v34 * v39) + (v40 * v35)) + a4[1];
    *this = v41;
    *(this + 1) = v42;
    v44 = a6[2];
    v43 = a6[3];
    v45 = *a6 + ((v43 * v37) - (v44 * v38));
    v46 = ((v38 * v43) + (v44 * v37)) + a6[1];
    *(this + 2) = v45;
    *(this + 3) = v46;
    *(this + 4) = v45 - v41;
    *(this + 5) = v46 - v42;
    *(this + 6) = 1065353216;
    *(this + 27) = 1;
    return;
  }

  v12 = (a2 + 6);
  v13 = *(a3 + 24);
  v14 = this + 16;
  v15 = v6;
  do
  {
    v16 = *v12;
    *(v14 + 3) = v16;
    v17 = v12[3];
    *(v14 + 4) = v17;
    if (v13 <= v16)
    {
      b2Distance();
    }

    if (*(a5 + 24) <= v17)
    {
      b2Distance();
    }

    v18 = (*(a3 + 16) + 8 * v16);
    v19 = v18[1];
    v20 = (*(a5 + 16) + 8 * v17);
    v21 = *v20;
    v22 = v20[1];
    v24 = a4[2];
    v23 = a4[3];
    v25 = *a4 + ((v23 * *v18) - (v24 * v19));
    v26 = ((v19 * v23) + (v24 * *v18)) + a4[1];
    *(v14 - 4) = v25;
    *(v14 - 3) = v26;
    v28 = a6[2];
    v27 = a6[3];
    v29 = *a6 + ((v27 * v21) - (v28 * v22));
    ++v12;
    v30 = ((v22 * v27) + (v28 * v21)) + a6[1];
    *(v14 - 2) = v29;
    *(v14 - 1) = v30;
    *v14 = v29 - v25;
    *(v14 + 1) = v30 - v26;
    *(v14 + 2) = 0;
    v14 += 36;
    --v15;
  }

  while (v15);
  if (v6 != 1)
  {
    v31 = *a2;
    Metric = b2Simplex::GetMetric(this);
    if (Metric < (v31 * 0.5) || (v31 + v31) < Metric || Metric < 0.00000011921)
    {
      *(this + 27) = 0;
    }

    else if (*(this + 27))
    {
      return;
    }

    goto LABEL_10;
  }
}

float32x2_t b2Simplex::GetClosestPoint(b2Simplex *this)
{
  v1 = *(this + 27);
  if (v1 <= 1)
  {
    if (v1 == 1)
    {
      return *(this + 16);
    }

    if (!v1)
    {
      b2Simplex::GetClosestPoint();
    }

    goto LABEL_12;
  }

  if (v1 == 2)
  {
    return vadd_f32(vmul_n_f32(*(this + 16), *(this + 6)), vmul_n_f32(*(this + 52), *(this + 15)));
  }

  if (v1 != 3)
  {
LABEL_12:
    b2Simplex::GetClosestPoint();
  }

  {
    b2Simplex::GetClosestPoint();
  }

  return b2Vec2_zero_fn(void)::b2Vec2_zero_init;
}

float b2Simplex::GetSearchDirection(b2Simplex *this)
{
  v1 = *(this + 27);
  if (v1 == 2)
  {
    v3 = *(this + 5);
    result = *(this + 14) - v3;
    if (((*(this + 4) * result) - ((*(this + 13) - *(this + 4)) * v3)) > 0.0)
    {
      return -result;
    }
  }

  else
  {
    if (v1 != 1)
    {
      b2Simplex::GetSearchDirection();
    }

    return -*(this + 4);
  }

  return result;
}

uint64_t b2Simplex::GetWitnessPoints(uint64_t this, b2Vec2 *a2, b2Vec2 *a3)
{
  v3 = *(this + 108);
  if (v3 <= 1)
  {
    if (v3 == 1)
    {
      *a2 = *this;
      *a3 = *(this + 8);
      return this;
    }

    if (!v3)
    {
      b2Simplex::GetWitnessPoints();
    }

    goto LABEL_11;
  }

  if (v3 == 2)
  {
    *a2 = vadd_f32(vmul_n_f32(*this, *(this + 24)), vmul_n_f32(*(this + 36), *(this + 60)));
    v4 = vadd_f32(vmul_n_f32(*(this + 8), *(this + 24)), vmul_n_f32(*(this + 44), *(this + 60)));
    goto LABEL_8;
  }

  if (v3 != 3)
  {
LABEL_11:
    b2Simplex::GetWitnessPoints();
  }

  v4 = vadd_f32(vadd_f32(vmul_n_f32(*this, *(this + 24)), vmul_n_f32(*(this + 36), *(this + 60))), vmul_n_f32(*(this + 72), *(this + 96)));
  *a2 = v4;
LABEL_8:
  *a3 = v4;
  return this;
}

void b2Simplex::WriteCache(int *a1, uint64_t a2)
{
  *a2 = b2Simplex::GetMetric(a1);
  v4 = a1[27];
  *(a2 + 4) = v4;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = (a2 + 9);
    v7 = a1 + 8;
    do
    {
      *(v6 - 3) = *(v7 - 1);
      v8 = *v7;
      v7 += 9;
      *v6++ = v8;
      ++v5;
    }

    while (v5 < a1[27]);
  }
}

float b2Simplex::GetMetric(b2Simplex *this)
{
  v1 = *(this + 27);
  if (v1 <= 1)
  {
    if (v1 != 1)
    {
      if (!v1)
      {
        b2Simplex::GetMetric();
      }

      goto LABEL_10;
    }

    return 0.0;
  }

  else
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return ((*(this + 13) - *(this + 4)) * (*(this + 23) - *(this + 5))) - ((*(this + 14) - *(this + 5)) * (*(this + 22) - *(this + 4)));
      }

LABEL_10:
      b2Simplex::GetMetric();
    }

    return sqrtf(((*(this + 5) - *(this + 14)) * (*(this + 5) - *(this + 14))) + ((*(this + 4) - *(this + 13)) * (*(this + 4) - *(this + 13))));
  }
}

void QuadTree::QuadTree(QuadTree *this, float a2, float a3, float a4, float a5, float a6)
{
  operator new();
}

{
  operator new();
}

void QuadTreeNode::QuadTreeNode(QuadTreeNode *this, float a2, float a3, float a4, float a5, float a6)
{
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 10) = a4;
  *(this + 11) = a5;
  *(this + 12) = a6;
  *(this + 52) = -1;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 10) = a4;
  *(this + 11) = a5;
  *(this + 12) = a6;
  *(this + 52) = -1;
  *this = 0u;
  *(this + 1) = 0u;
}

void QuadTree::~QuadTree(QuadTree *this)
{
  v1 = *this;
  if (v1)
  {
    QuadTreeNode::~QuadTreeNode(v1);
    MEMORY[0x25F8C0280]();
  }
}

uint64_t QuadTreeNode::add(uint64_t this, float a2, float a3, char a4)
{
  v5 = this;
  v6 = *(this + 32);
  for (i = *(this + 36) - v6; i > *(this + 48); v5 = *(v5 + 8 * v9))
  {
    if ((v6 + (i * 0.5)) <= a2)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    if ((*(v5 + 40) + ((*(v5 + 44) - *(v5 + 40)) * 0.5)) <= a3)
    {
      v9 = (v6 + (i * 0.5)) > a2;
    }

    else
    {
      v9 = v8;
    }

    this = *(v5 + 8 * v9);
    if (!this)
    {
      operator new();
    }

    v6 = *(this + 32);
    i = *(this + 36) - v6;
  }

  *(this + 52) = a4;
  return this;
}

float *QuadTreeNode::addLine(float *this, float a2, double a3, float a4, float a5, signed __int8 a6)
{
  v8 = *&a3;
  v10 = this;
  v11 = this + 9;
  v12 = this[9];
  v13 = this + 8;
  v14 = this[8];
  v15 = v12 - v14;
  if ((v12 - v14) <= this[12])
  {
LABEL_82:
    *(v10 + 52) = a6;
  }

  else
  {
    v16 = a4 - a2;
    v17 = -(a4 - a2);
    v109 = a5 - v8;
    v108 = -(a5 - v8);
    v18 = 1.0;
    while (1)
    {
      v19 = v15 * 0.5;
      LODWORD(a3) = *(v10 + 44);
      v20 = v14 + v19;
      v21 = *(v10 + 40) + ((*&a3 - *(v10 + 40)) * 0.5);
      v22 = v20 - v20;
      v23 = v21 - *&a3;
      v24 = (v14 + v19) - a2;
      v25 = *&a3 - v8;
      v105 = v109 * (v20 - v20);
      v26 = v105 + (v17 * (v21 - *&a3));
      v104 = v24 * v108;
      v27 = ((v24 * v108) + (v16 * (*&a3 - v8))) / v26;
      if (v27 <= v18 && v27 >= 0.0 && ((v28 = ((v22 * v25) - (v23 * v24)) / v26, v28 >= 0.0) ? (v29 = v28 > v18) : (v29 = 1), !v29) || (v30 = -v23, v31 = (v109 * (v12 - v12)) + (v17 * v23), v32 = (((v12 - a2) * v108) + (v16 * v25)) / v31, v32 <= v18) && v32 >= 0.0 && ((v33 = (((v12 - v12) * v25) + (v30 * (v12 - a2))) / v31, v33 >= 0.0) ? (v34 = v33 > v18) : (v34 = 1), !v34) || (v35 = v12 - v20, *v6.i32 = (v109 * v35) + (v17 * (*&a3 - *&a3)), v36.f32[0] = (v35 * v25) - ((*&a3 - *&a3) * v24), v36.f32[1] = (v24 * v108) + (v16 * (*&a3 - v8)), v36.f32[2] = v36.f32[0], v36.f32[3] = v36.f32[1], v37 = vdivq_f32(v36, vdupq_lane_s32(v6, 0)), v6.i32[1] = 1065353216, v38.i32[0] = vmovn_s32(vcgeq_f32(xmmword_25E7EB720, v37)).u32[0], v38.i32[1] = vmovn_s32(vcgeq_f32(v37, xmmword_25E7EB720)).i32[1], (vminv_u16(v38) & 1) != 0) || (v39 = (v109 * v35) + (v17 * (v21 - v21)), v40 = (v104 + (v16 * (v21 - v8))) / v39, v40 <= v18) && v40 >= 0.0 && ((v41 = ((v35 * (v21 - v8)) - ((v21 - v21) * v24)) / v39, v41 >= 0.0) ? (v42 = v41 > v18) : (v42 = 1), !v42))
      {
        if (!*v10)
        {
          operator new();
        }

        this = QuadTreeNode::addLine(*v10, a2, v8, a4, a5, a6);
        v14 = *v13;
        LODWORD(a3) = *(v10 + 44);
        v23 = v21 - *&a3;
        v30 = -(v21 - *&a3);
        v25 = *&a3 - v8;
        v18 = 1.0;
      }

      v43 = v14 - a2;
      v44 = (v109 * (v14 - v14)) + (v17 * v23);
      v45 = (v14 - a2) * v108;
      v46 = v45 + (v16 * v25);
      if (v46 / v44) <= v18 && (v46 / v44) >= 0.0 && ((v47 = (((v14 - v14) * v25) + (v30 * v43)) / v44, v47 >= 0.0) ? (v48 = v47 > v18) : (v48 = 1), !v48) || (v49 = *v11 - *v11, v50 = *v11 - a2, v51 = (v109 * v49) + (v17 * v23), v52 = ((v50 * v108) + (v16 * v25)) / v51, v52 <= v18) && v52 >= 0.0 && ((v53 = ((v25 * v49) + (v30 * v50)) / v51, v53 >= 0.0) ? (v54 = v53 > v18) : (v54 = 1), !v54) || (v55 = v20 - v14, *&a3 = *&a3 - *&a3, *v58.i32 = (v55 * v25) - (*&a3 * v43), *&a3 = (v109 * v55) + (v17 * *&a3), v56.i32[0] = v58.i32[0], v56.f32[1] = v45 + (v16 * v25), v56.i64[1] = __PAIR64__(LODWORD(v46), v58.u32[0]), v57 = vdivq_f32(v56, vdupq_lane_s32(*&a3, 0)), v58.i32[1] = 1065353216, v59.i32[0] = vmovn_s32(vcgeq_f32(xmmword_25E7EB720, v57)).u32[0], a3 = COERCE_DOUBLE(vmovn_s32(vcgeq_f32(v57, xmmword_25E7EB720))), v59.i32[1] = HIDWORD(a3), (vminv_u16(v59)) || (*&a3 = v21 - v8, v60 = (v109 * v55) + (v17 * (v21 - v21)), v61 = (v45 + (v16 * (v21 - v8))) / v60, v61 <= v18) && v61 >= 0.0 && (v62 = ((*&a3 * v55) - ((v21 - v21) * v43)) / v60, v62 >= 0.0) && v62 <= v18)
      {
        v63 = *(v10 + 8);
        if (!v63)
        {
          operator new();
        }

        this = QuadTreeNode::addLine(v63, a2, v8, a4, a5, a6);
        *&a3 = v21 - v8;
        v18 = 1.0;
      }

      v64 = *(v10 + 40);
      v65 = v64 - v21;
      v66 = v22 * *&a3;
      v67 = v105 + (v17 * (v64 - v21));
      *v59.i32 = v104 + (v16 * *&a3);
      v103 = v59;
      *v59.i32 = *v59.i32 / v67;
      if (*v59.i32 <= v18 && *v59.i32 >= 0.0 && ((v68 = (v66 - (v65 * v24)) / v67, v68 >= 0.0) ? (v69 = v68 > v18) : (v69 = 1), !v69) || (v58.i32[0] = *v11, v70 = *v11 - a2, v71 = (v109 * (*v58.i32 - *v58.i32)) + (v17 * v65), v72 = ((v70 * v108) + (v16 * *&a3)) / v71, v72 <= v18) && v72 >= 0.0 && (v73 = ((*&a3 * (*v58.i32 - *v58.i32)) + (-v65 * v70)) / v71, v73 >= 0.0) && v73 <= v18 || (v74 = *v58.i32 - v20, *&v75 = (*&a3 * (*v58.i32 - v20)) - ((v21 - v21) * v24), v76 = v109 * (*v58.i32 - v20), *v58.i32 = v76 + (v17 * (v21 - v21)), v77.i64[0] = __PAIR64__(v103.u32[0], v75), v78.i32[1] = v103.i32[1], v77.i64[1] = __PAIR64__(v103.u32[0], v75), v79 = vdivq_f32(v77, vdupq_lane_s32(v58, 0)), v77.i32[0] = vmovn_s32(vcgeq_f32(xmmword_25E7EB720, v79)).u32[0], v80 = vmovn_s32(vcgeq_f32(v79, xmmword_25E7EB720)), v77.i32[1] = v80.i32[1], (vminv_u16(*v77.f32) & 1) != 0) || (v81 = v76 + (v17 * (v64 - v64)), v82 = (v104 + (v16 * (v64 - v8))) / v81, v82 <= v18) && v82 >= 0.0 && (v83 = (((v64 - v8) * v74) - ((v64 - v64) * v24)) / v81, v83 >= 0.0) && v83 <= v18)
      {
        v84 = *(v10 + 16);
        if (!v84)
        {
          operator new();
        }

        this = QuadTreeNode::addLine(v84, a2, v8, a4, a5, a6);
        v64 = *(v10 + 40);
        v18 = 1.0;
      }

      v85 = *v13;
      v86 = *v13 - a2;
      v87 = v20 - v8;
      v88 = (v109 * (v85 - v85)) + (v17 * (v64 - v20));
      *v80.i32 = (v86 * v108) + (v16 * (v20 - v8));
      if ((*v80.i32 / v88) > v18 || (*v80.i32 / v88) < 0.0 || (v89 = ((v87 * (v85 - v85)) - ((v64 - v20) * v86)) / v88, v89 < 0.0) || v89 > v18)
      {
        *v78.i32 = v105 + (v17 * (v64 - v21));
        v90.f32[0] = v66 - ((v64 - v21) * v24);
        v90.i32[1] = v103.i32[0];
        v90.f32[2] = v90.f32[0];
        v90.i32[3] = v103.i32[0];
        v91 = vdivq_f32(v90, vdupq_lane_s32(v78, 0));
        v6.i32[0] = vmovn_s32(vcgeq_f32(xmmword_25E7EB720, v91)).u32[0];
        v6.i32[1] = vmovn_s32(vcgeq_f32(v91, xmmword_25E7EB720)).i32[1];
        if ((vminv_u16(v6) & 1) == 0)
        {
          v92 = v20 - v85;
          v93.f32[0] = (v87 * v92) - ((v21 - v20) * v86);
          v93.f32[1] = (v86 * v108) + (v16 * (v20 - v8));
          v93.i64[1] = __PAIR64__(v80.u32[0], v93.u32[0]);
          *v80.i32 = (v109 * v92) + (v17 * (v21 - v20));
          v94 = vdivq_f32(v93, vdupq_lane_s32(v80, 0));
          v95.i32[0] = vmovn_s32(vcgeq_f32(xmmword_25E7EB720, v94)).u32[0];
          v95.i32[1] = vmovn_s32(vcgeq_f32(v94, xmmword_25E7EB720)).i32[1];
          if ((vminv_u16(v95) & 1) == 0)
          {
            v96 = v64 - v64;
            v97 = v64 - v8;
            v98 = (v109 * v92) + (v17 * (v64 - v64));
            v99 = ((v86 * v108) + (v16 * v97)) / v98;
            if (v99 > v18)
            {
              break;
            }

            if (v99 < 0.0)
            {
              break;
            }

            v100 = ((v92 * v97) - (v96 * v86)) / v98;
            if (v100 < 0.0 || v100 > v18)
            {
              break;
            }
          }
        }
      }

      v101 = *(v10 + 24);
      if (!v101)
      {
        operator new();
      }

      v102 = v101[8];
      v12 = v101[9];
      v10 = *(v10 + 24);
      v11 = (v10 + 36);
      v13 = (v10 + 32);
      v15 = v12 - v102;
      v14 = v101[8];
      if ((v12 - v102) <= v101[12])
      {
        goto LABEL_82;
      }
    }
  }

  return this;
}

uint64_t QuadTreeNode::find(QuadTreeNode **this, float a2, float a3, QuadTreeNode ***a4)
{
  *a4 = this;
  if (*(this + 8) > a2 || *(this + 9) < a2 || *(this + 10) > a3 || *(this + 11) < a3)
  {
    return 0;
  }

  v9 = *this;
  if (!*this)
  {
    v10 = this[1];
    if (!v10)
    {
      if (!this[2] && !this[3])
      {
        return 1;
      }

      goto LABEL_15;
    }

LABEL_11:
    if (QuadTreeNode::find(v10, a2, a3, a4))
    {
      return 1;
    }

    goto LABEL_15;
  }

  if (QuadTreeNode::find(v9, a2, a3, a4))
  {
    return 1;
  }

  v10 = this[1];
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_15:
  v11 = this[2];
  if (!v11 || (QuadTreeNode::find(v11, a2, a3, a4) & 1) == 0)
  {
    v12 = this[3];
    if (!v12 || (QuadTreeNode::find(v12, a2, a3, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL QuadTree::intersectPoint(QuadTree *this, float a2, float a3, QuadTreeNode **a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  QuadTree::intersectBox(this, &v8, a2, a3, a2, a3);
  v5 = v8;
  v6 = v9;
  if (v9 != v8)
  {
    *a4 = *v8;
LABEL_4:
    v9 = v5;
    operator delete(v5);
    return v6 != v5;
  }

  if (v9)
  {
    goto LABEL_4;
  }

  return v6 != v5;
}

void sub_25E7C2560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL QuadTree::intersectBox(uint64_t *a1, uint64_t *a2, float a3, float a4, float a5, float a6)
{
  QuadTreeNode::intersectBox(*a1, a2, a3, a4, a5, a6);
  v7 = a2[1];
  if (v7 == *a2)
  {
    v8 = a2[1];
  }

  else
  {
    printf("--- %lu\n", (v7 - *a2) >> 3);
    v7 = *a2;
    v8 = a2[1];
  }

  return v8 != v7;
}

uint64_t QuadTreeNode::intersectBox(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if (*(a1 + 32) <= a5)
  {
    v14 = a1;
    v7 = 0;
    while (1)
    {
      if (*(v14 + 36) < a3 || *(v14 + 40) > a6 || *(v14 + 44) < a4)
      {
        goto LABEL_3;
      }

      if (*v14)
      {
        break;
      }

      v15 = *(v14 + 8);
      if (v15)
      {
        goto LABEL_13;
      }

      if (!*(v14 + 16) && !*(v14 + 24))
      {
        v17 = v14;
        std::vector<PKPhysicsShape *>::push_back[abi:ne200100](a2, &v17);
        v8 = 1;
        return v8 & (v7 ^ 1u);
      }

LABEL_14:
      v16 = *(v14 + 16);
      if (v16)
      {
        QuadTreeNode::intersectBox(v16, a2, a3, a4, a5, a6);
      }

      v14 = *(v14 + 24);
      if (v14)
      {
        v7 = 1;
        if (*(v14 + 32) <= a5)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    QuadTreeNode::intersectBox(*v14, a2, a3, a4, a5, a6);
    v15 = *(v14 + 8);
    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_13:
    QuadTreeNode::intersectBox(v15, a2, a3, a4, a5, a6);
    goto LABEL_14;
  }

  v7 = 0;
LABEL_3:
  v8 = 0;
  return v8 & (v7 ^ 1u);
}

uint64_t QuadTree::intersectVector(QuadTree *this, float a2, float a3, float a4, float a5, QuadTreeNode **a6)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v9 = QuadTreeNode::intersectVector(*this, &__p, a2, a3, a4, a5);
  v10 = __p;
  if (v9)
  {
    v11 = (v21 - __p) >> 3;
    if (v11 >= 2)
    {
      v12 = 0;
      v13 = (__p + 8);
      v14 = v11 - 1;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = a2 - ((v16[8] + v16[9]) * 0.5);
        v18 = a3 - ((v16[10] + v16[11]) * 0.5);
        if (((v18 * v18) + (v17 * v17)) < 3.4028e38)
        {
          v12 = v15;
        }

        --v14;
      }

      while (v14);
      *a6 = v12;
      goto LABEL_9;
    }
  }

  *a6 = 0;
  if (v10)
  {
LABEL_9:
    v21 = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_25E7C2808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QuadTreeNode::intersectVector(QuadTreeNode *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  result = QuadTreeNode::intersectVectorSelf(a1, a3, a4, a5, a6);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    v13 = *(a1 + 1);
    if (v13)
    {
      goto LABEL_7;
    }

    if (*(a1 + 2) || *(a1 + 3))
    {
      goto LABEL_11;
    }

    v16 = a1;
    std::vector<PKPhysicsShape *>::push_back[abi:ne200100](a2, &v16);
    return 1;
  }

  if (QuadTreeNode::intersectVectorSelf(*a1, a3, a4, a5, a6))
  {
    return 1;
  }

  v13 = *(a1 + 1);
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (QuadTreeNode::intersectVectorSelf(v13, a3, a4, a5, a6))
  {
    return 1;
  }

LABEL_11:
  v14 = *(a1 + 2);
  if (v14 && (QuadTreeNode::intersectVectorSelf(v14, a3, a4, a5, a6) & 1) != 0)
  {
    return 1;
  }

  v15 = *(a1 + 3);
  if (v15)
  {
    if (QuadTreeNode::intersectVectorSelf(v15, a3, a4, a5, a6))
    {
      return 1;
    }
  }

  return 0;
}

float QuadTree::bounds(QuadTree *this, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *this;
  *a2 = *(*this + 32);
  *a3 = v5[10];
  *a4 = v5[9];
  result = v5[11];
  *a5 = result;
  return result;
}

void QuadTreeNode::~QuadTreeNode(QuadTreeNode **this)
{
  v2 = *this;
  if (v2)
  {
    QuadTreeNode::~QuadTreeNode(v2);
    MEMORY[0x25F8C0280]();
  }

  v3 = this[1];
  if (v3)
  {
    QuadTreeNode::~QuadTreeNode(v3);
    MEMORY[0x25F8C0280]();
  }

  v4 = this[2];
  if (v4)
  {
    QuadTreeNode::~QuadTreeNode(v4);
    MEMORY[0x25F8C0280]();
  }

  v5 = this[3];
  if (v5)
  {
    QuadTreeNode::~QuadTreeNode(v5);
    MEMORY[0x25F8C0280]();
  }
}

uint64_t get_line_intersection(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float *a9, float *a10)
{
  result = 0;
  v12 = a3 - a1;
  v13 = a4 - a2;
  v14 = a7 - a5;
  v15 = a8 - a6;
  v16 = a1 - a5;
  v17 = a2 - a6;
  v18 = (v12 * v15) - (v14 * v13);
  v19 = ((v14 * v17) - (v15 * v16)) / v18;
  if (v19 <= 1.0 && v19 >= 0.0)
  {
    v20 = ((v12 * v17) - (v13 * v16)) / v18;
    if (v20 >= 0.0 && v20 <= 1.0)
    {
      if (a9)
      {
        *a9 = a1 + (v19 * v12);
      }

      if (a10)
      {
        *a10 = a2 + (v19 * v13);
      }

      return 1;
    }
  }

  return result;
}

uint64_t QuadTreeNode::visitLeaves(uint64_t result, uint64_t a2)
{
  v3 = result;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *result;
  if (*result)
  {
    std::__function::__value_func<void ()(float,float,int)>::__value_func[abi:ne200100](v14, a2);
    QuadTreeNode::visitLeaves(v4, v14);
    result = std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](v14);
    v5 = v3[1];
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = *(result + 8);
  if (v5)
  {
LABEL_5:
    std::__function::__value_func<void ()(float,float,int)>::__value_func[abi:ne200100](v13, a2);
    QuadTreeNode::visitLeaves(v5, v13);
    result = std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](v13);
LABEL_6:
    v6 = v3[2];
    if (v6)
    {
      std::__function::__value_func<void ()(float,float,int)>::__value_func[abi:ne200100](v12, a2);
      QuadTreeNode::visitLeaves(v6, v12);
      result = std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](v12);
    }

    v7 = v3[3];
    if (v7)
    {
      std::__function::__value_func<void ()(float,float,int)>::__value_func[abi:ne200100](v11, a2);
      QuadTreeNode::visitLeaves(v7, v11);
      return std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](v11);
    }

    return result;
  }

  if (*(result + 16) || *(result + 24))
  {
    goto LABEL_6;
  }

  v8 = *(result + 52);
  v9 = *(result + 32) + ((*(result + 36) - *(result + 32)) * 0.5);
  v10 = *(result + 40) + ((*(result + 44) - *(result + 40)) * 0.5);

  return std::function<void ()(float,float,int)>::operator()(a2, v8, v9, v10);
}

void sub_25E7C2C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(float,float,int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(float,float,int)>::operator()(uint64_t a1, int a2, float a3, float a4)
{
  v8 = a3;
  v7 = a4;
  v6 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t QuadTreeNode::intersectVectorSelf(QuadTreeNode *this, float a2, float a3, float a4, float a5)
{
  v6 = *(this + 8);
  v5 = *(this + 9);
  v8 = *(this + 10);
  v7 = *(this + 11);
  if (fabsf(a4) < 0.00000011921)
  {
    if (v6 > a2 || v5 < a2)
    {
      return 0;
    }

    v10 = -3.4028e38;
    v11 = 3.4028e38;
LABEL_15:
    if (fabsf(a5) >= 0.00000011921)
    {
      v18 = (v8 - a3) / a5;
      v19 = (v7 - a3) / a5;
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      if (v18 >= v19)
      {
        v19 = v18;
      }

      if (v20 > v10)
      {
        v10 = v20;
      }

      if (v19 >= v11)
      {
        v19 = v11;
      }

      if (v19 >= 0.0 && v10 <= v19)
      {
        return 1;
      }
    }

    else if (v8 <= a3 && v7 >= a3)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  v13 = (v6 - a2) / a4;
  v14 = (v5 - a2) / a4;
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v13 >= v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v10 = fmaxf(v15, -3.4028e38);
  v11 = fminf(v16, 3.4028e38);
  if (v10 <= v11 && v11 >= 0.0)
  {
    goto LABEL_15;
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void b2DynamicTree::b2DynamicTree(b2DynamicTree *this)
{
  *this = -1;
  *(this + 2) = 0x1000000000;
  v2 = b2Alloc(768);
  *(this + 1) = v2;
  bzero(v2, 48 * *(this + 5));
  v3 = *(this + 5);
  v4 = *(this + 1);
  if (v3 < 2)
  {
    v7 = v3 - 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      *(v4 + v5 + 32) = ++v6;
      v4 = *(this + 1);
      *(v4 + v5 + 44) = -1;
      v7 = *(this + 5) - 1;
      v5 += 48;
    }

    while (v6 < v7);
  }

  *(v4 + 48 * v7 + 32) = -1;
  *(*(this + 1) + 48 * *(this + 5) - 4) = -1;
  *(this + 3) = 0;
  *(this + 8) = 0;
}

void b2DynamicTree::~b2DynamicTree(void **this)
{
  b2Free(this[1]);
}

{
  b2Free(this[1]);
}

double b2DynamicTree::AllocateNode(b2DynamicTree *this)
{
  v2 = *(this + 6);
  if (v2 == -1)
  {
    v4 = *(this + 4);
    if (v4 != *(this + 5))
    {
      b2DynamicTree::AllocateNode();
    }

    v5 = *(this + 1);
    *(this + 5) = 2 * v4;
    v6 = b2Alloc(96 * v4);
    *(this + 1) = v6;
    memcpy(v6, v5, 48 * *(this + 4));
    b2Free(v5);
    v7 = *(this + 4);
    v8 = *(this + 5) - 1;
    v9 = *(this + 1);
    if (v7 < v8)
    {
      v10 = 48 * v7;
      v11 = v7 + 1;
      do
      {
        ++v7;
        *(v9 + v10 + 32) = v11;
        v9 = *(this + 1);
        *(v9 + v10 + 44) = -1;
        v8 = *(this + 5) - 1;
        v10 += 48;
        ++v11;
      }

      while (v7 < v8);
    }

    *(v9 + 48 * v8 + 32) = -1;
    v3 = *(this + 1);
    v2 = *(this + 4);
    *(v3 + 48 * *(this + 5) - 4) = -1;
    *(this + 6) = v2;
  }

  else
  {
    v3 = *(this + 1);
  }

  v12 = v3 + 48 * v2;
  *(this + 6) = *(v12 + 32);
  *(v12 + 32) = -1;
  v13 = *(this + 1) + 48 * v2;
  result = NAN;
  *(v13 + 36) = -1;
  *(v13 + 44) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  ++*(this + 4);
  return result;
}

uint64_t b2DynamicTree::FreeNode(uint64_t this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 20) <= a2)
  {
    b2DynamicTree::FreeNode();
  }

  if (*(this + 16) <= 0)
  {
    b2DynamicTree::FreeNode();
  }

  *(*(this + 8) + 48 * a2 + 32) = *(this + 24);
  *(*(this + 8) + 48 * a2 + 44) = -1;
  *(this + 24) = a2;
  --*(this + 16);
  return this;
}

uint64_t b2DynamicTree::CreateProxyId(b2DynamicTree *a1, float32x2_t *a2)
{
  b2DynamicTree::AllocateNode(a1);
  v5 = v4;
  v6 = (*(a1 + 1) + 48 * v4);
  *v6 = vadd_f32(*a2, vdup_n_s32(0xBDCCCCCD));
  *v7.i8 = vadd_f32(a2[1], vdup_n_s32(0x3DCCCCCDu));
  v6[1] = *v7.i8;
  v8 = *(*&a2[2] + 24);
  v6[2] = a2;
  v6[3] = v8;
  v6[5].i32[1] = 0;
  b2DynamicTree::InsertLeaf(a1, v4, v7);
  return v5;
}

int8x16_t b2DynamicTree::InsertLeaf(b2DynamicTree *this, int a2, int8x16_t result)
{
  ++*(this + 8);
  v5 = *this;
  if (*this == -1)
  {
    *this = a2;
    *(*(this + 1) + 48 * a2 + 32) = -1;
  }

  else
  {
    v6 = *(this + 1);
    v8 = 48 * a2;
    v9 = *(v6 + v8);
    LODWORD(v10) = HIDWORD(*(v6 + v8));
    LODWORD(v11) = *(v6 + v8 + 8);
    v12 = vextq_s8(v9, v9, 8uLL).u64[0];
    do
    {
      v13 = v5;
      v14 = v6 + 48 * v5;
      v5 = *(v14 + 36);
      if (v5 == -1)
      {
        break;
      }

      v15 = *(v14 + 40);
      v16 = *(v14 + 8);
      v17 = *(v14 + 12);
      v18 = *v14;
      v19 = *(v14 + 4);
      v20 = ((v16 - *v14) + (v17 - v19)) + ((v16 - *v14) + (v17 - v19));
      if (*v14 >= *v9.i32)
      {
        v18 = *v9.i32;
      }

      if (v19 >= v10)
      {
        v19 = v10;
      }

      if (v16 <= v11)
      {
        v16 = v11;
      }

      if (v17 <= *&v9.i32[3])
      {
        v17 = *&v9.i32[3];
      }

      v21 = ((v16 - v18) + (v17 - v19)) + ((v16 - v18) + (v17 - v19));
      v22 = v21 + v21;
      v23 = (v21 - v20) + (v21 - v20);
      v24 = v6 + 48 * v5;
      v25 = *(v24 + 4);
      if (*v9.i32 >= *v24)
      {
        v26 = *v24;
      }

      else
      {
        v26 = *v9.i32;
      }

      if (v10 >= v25)
      {
        v27 = *(v24 + 4);
      }

      else
      {
        v27 = v10;
      }

      v28 = *(v24 + 8);
      v29 = *(v24 + 12);
      if (v11 <= v28)
      {
        v30 = *(v24 + 8);
      }

      else
      {
        v30 = v11;
      }

      if (*&v9.i32[3] <= v29)
      {
        v31 = *(v24 + 12);
      }

      else
      {
        v31 = *&v9.i32[3];
      }

      v32 = (((v30 - v26) + (v31 - v27)) + ((v30 - v26) + (v31 - v27))) - (((v28 - *v24) + (v29 - v25)) + ((v28 - *v24) + (v29 - v25)));
      if (*(v24 + 36) == -1)
      {
        v32 = ((v30 - v26) + (v31 - v27)) + ((v30 - v26) + (v31 - v27));
      }

      v33 = v23 + v32;
      v34 = (v6 + 48 * v15);
      v35 = v34[1];
      v36 = vbsl_s8(vcgt_f32(*v34, *v9.i8), *v9.i8, *v34);
      v37 = vbsl_s8(vcgt_f32(v12, v35), v12, v35);
      v38 = vadd_f32(vsub_f32(vzip1_s32(v37, v35), vzip1_s32(v36, *v34)), vsub_f32(vzip2_s32(v37, v35), vzip2_s32(v36, *v34)));
      v39 = vadd_f32(v38, v38);
      LODWORD(v40) = vsub_f32(v39, vdup_lane_s32(v39, 1)).u32[0];
      v35.f32[0] = vaddv_f32(vsub_f32(v37, v36));
      v41 = v35.f32[0] + v35.f32[0];
      if (v34[4].i32[1] == -1)
      {
        v40 = v41;
      }

      v42 = v23 + v40;
      if (v33 >= v42)
      {
        v5 = v15;
      }
    }

    while (v22 >= v33 || v22 >= v42);
    v44 = *(v6 + 48 * v13 + 32);
    v69 = v9;
    b2DynamicTree::AllocateNode(this);
    *(*(this + 1) + 48 * v45 + 32) = v44;
    v46 = *(this + 1);
    v47 = (v46 + 48 * v45);
    v48 = (v46 + 48 * v13);
    v47[1].i64[0] = 0;
    v47[1].i64[1] = 0;
    v49.i64[0] = v69.i64[0];
    v49.i64[1] = v48->i64[1];
    v50.i64[0] = v48->i64[0];
    v50.i64[1] = v69.i64[1];
    result = vbslq_s8(vcgtq_f32(v50, v49), v69, *v48);
    *v47 = result;
    v47[2].i32[3] = v48[2].i32[3] + 1;
    if (v44 == -1)
    {
      v52 = v46 + 48 * v45;
      *(v52 + 36) = v13;
      *(v52 + 40) = a2;
      *(v46 + 48 * v13 + 32) = v45;
      *(*(this + 1) + 48 * a2 + 32) = v45;
      v53 = this;
    }

    else
    {
      v51 = v46 + 48 * v44;
      if (*(v51 + 36) == v13)
      {
        *(v51 + 36) = v45;
      }

      else
      {
        *(v51 + 40) = v45;
      }

      v54 = v46 + 48 * v45;
      *(v54 + 36) = v13;
      *(v54 + 40) = a2;
      *(v46 + 48 * v13 + 32) = v45;
      v53 = (*(this + 1) + 48 * a2 + 32);
    }

    *v53 = v45;
    for (i = *(*(this + 1) + 48 * a2 + 32); i != -1; i = *(v64 + 32))
    {
      v56 = b2DynamicTree::Balance(this, i);
      v57 = *(this + 1);
      v58 = (v57 + 48 * v56);
      v59 = v58[2].i32[1];
      if (v59 == -1)
      {
        b2DynamicTree::InsertLeaf();
      }

      v60 = v58[2].i32[2];
      if (v60 == -1)
      {
        b2DynamicTree::InsertLeaf();
      }

      v61 = (v57 + 48 * v59);
      v62 = v61[2].i32[3];
      v63 = (v57 + 48 * v60);
      if (v62 <= v63[2].i32[3])
      {
        v62 = v63[2].i32[3];
      }

      v64 = v57 + 48 * v56;
      v65 = *v61;
      v66 = *v63;
      v67.i64[0] = v61->i64[0];
      v67.i64[1] = v63->i64[1];
      v68.i64[0] = v63->i64[0];
      v68.i64[1] = v61->i64[1];
      *(v64 + 44) = v62 + 1;
      result = vbslq_s8(vcgtq_f32(v68, v67), v65, v66);
      *v58 = result;
    }
  }

  return result;
}

uint64_t b2DynamicTree::DestroyProxy(b2DynamicTree *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 5) <= a2)
  {
    b2DynamicTree::DestroyProxy();
  }

  if (*(*(this + 1) + 48 * a2 + 36) != -1)
  {
    b2DynamicTree::DestroyProxy();
  }

  b2DynamicTree::RemoveLeaf(this, a2);

  return b2DynamicTree::FreeNode(this, a2);
}

b2DynamicTree *b2DynamicTree::RemoveLeaf(b2DynamicTree *this, int a2)
{
  v2 = this;
  if (*this == a2)
  {
    *this = -1;
  }

  else
  {
    v4 = *(this + 1);
    v5 = *(v4 + 48 * a2 + 32);
    v6 = (v4 + 48 * v5);
    v8 = v6[8];
    v7 = v6[9];
    if (v7 == a2)
    {
      v7 = v6[10];
    }

    if (v8 == -1)
    {
      *this = v7;
      *(v4 + 48 * v7 + 32) = -1;

      return b2DynamicTree::FreeNode(this, v5);
    }

    else
    {
      v9 = v4 + 48 * v8;
      if (*(v9 + 36) == v5)
      {
        *(v9 + 36) = v7;
      }

      else
      {
        *(v9 + 40) = v7;
      }

      *(v4 + 48 * v7 + 32) = v8;
      b2DynamicTree::FreeNode(this, v5);
      do
      {
        this = b2DynamicTree::Balance(v2, v8);
        v10 = *(v2 + 1);
        v11 = (v10 + 48 * this);
        v8 = v11[2].u32[0];
        v12 = (v10 + 48 * v11[2].i32[1]);
        v13 = (v10 + 48 * v11[2].i32[2]);
        v14.i64[0] = v12->i64[0];
        v14.i64[1] = v13->i64[1];
        v15.i64[0] = v13->i64[0];
        v15.i64[1] = v12->i64[1];
        *v11 = vbslq_s8(vcgtq_f32(v15, v14), *v12, *v13);
        v16 = v13[2].i32[3];
        if (v12[2].i32[3] > v16)
        {
          v16 = v12[2].i32[3];
        }

        v11[2].i32[3] = v16 + 1;
      }

      while (v8 != -1);
    }
  }

  return this;
}

uint64_t b2DynamicTree::MoveProxy(b2DynamicTree *this, unsigned int a2, float32x2_t *a3, float32x2_t *a4)
{
  if ((a2 & 0x80000000) != 0 || *(this + 5) <= a2)
  {
    b2DynamicTree::MoveProxy();
  }

  v6 = *(this + 1) + 48 * a2;
  if (*(v6 + 36) != -1)
  {
    b2DynamicTree::MoveProxy();
  }

  if (*v6 <= a3->f32[0] && *(v6 + 4) <= a3->f32[1] && a3[1].f32[0] <= *(v6 + 8) && a3[1].f32[1] <= *(v6 + 12))
  {
    return 0;
  }

  b2DynamicTree::RemoveLeaf(this, a2);
  v10 = vadd_f32(*a3, vdup_n_s32(0xBDCCCCCD));
  v11 = vadd_f32(*a4, *a4);
  v12 = vcltz_f32(v11);
  *v13.i8 = vbsl_s8(v12, vadd_f32(v10, v11), v10);
  v14 = (*(this + 1) + 48 * a2);
  v15 = vadd_f32(a3[1], vdup_n_s32(0x3DCCCCCDu));
  *v14 = *v13.i8;
  v14[1] = vbsl_s8(v12, v15, vadd_f32(v15, v11));
  b2DynamicTree::InsertLeaf(this, a2, v13);
  return 1;
}

uint64_t b2DynamicTree::Balance(b2DynamicTree *this, uint64_t a2)
{
  if (a2 == -1)
  {
    b2DynamicTree::Balance();
  }

  v2 = *(this + 1);
  v3 = (v2 + 48 * a2);
  v4 = v3[4].u32[1];
  if (v4 != -1 && v3[5].i32[1] >= 2)
  {
    if ((v4 & 0x80000000) != 0 || (v5 = *(this + 5), v4 >= v5))
    {
      b2DynamicTree::Balance();
    }

    v6 = v3[5].u32[0];
    if ((v6 & 0x80000000) != 0 || v6 >= v5)
    {
      b2DynamicTree::Balance();
    }

    v7 = v3[5].u32[0];
    v8 = (v2 + 48 * v6);
    v9 = &v8[5] + 1;
    v10 = v8[5].i32[1];
    v11 = (v2 + 48 * v4);
    v12 = v11[5].i32[1];
    if (v10 - v12 < 2)
    {
      if (v10 - v12 > -2)
      {
        return a2;
      }

      v17 = v11[4].i32[1];
      if (v17 < 0 || v17 >= v5)
      {
        b2DynamicTree::Balance();
      }

      v18 = v11[5].i32[0];
      if (v18 < 0 || v18 >= v5)
      {
        b2DynamicTree::Balance();
      }

      v11[4].i32[0] = v3[4].i32[0];
      v11[4].i32[1] = a2;
      v3[4].i32[0] = v4;
      v19 = v11[4].i32[0];
      if (v19 == -1)
      {
        *this = v4;
      }

      else
      {
        v20 = *(this + 1) + 48 * v19;
        if (*(v20 + 36) == a2)
        {
          *(v20 + 36) = v4;
        }

        else
        {
          if (*(v20 + 40) != a2)
          {
            b2DynamicTree::Balance();
          }

          *(v20 + 40) = v4;
        }
      }

      v33 = (v2 + 48 * v17);
      v34 = v33[5].i32[1];
      v35 = (v2 + 48 * v18);
      v36 = v35[5].i32[1];
      if (v34 <= v36)
      {
        v37 = v18;
      }

      else
      {
        v37 = v17;
      }

      if (v34 <= v36)
      {
        v38 = (v2 + 48 * v17);
      }

      else
      {
        v17 = v18;
        v38 = (v2 + 48 * v18);
      }

      if (v34 <= v36)
      {
        v27 = &v35[5] + 1;
      }

      else
      {
        v35 = v33;
        v34 = v36;
        v27 = &v33[5] + 1;
      }

      v11[5].i32[0] = v37;
      v3[4].i32[1] = v17;
      v38[4].i32[0] = a2;
      v39 = v8[1];
      v40 = vbsl_s8(vcgt_f32(*v38, *v8), *v8, *v38);
      *v3 = v40;
      v41 = vbsl_s8(vcgt_f32(v39, v38[1]), v39, v38[1]);
      v3[1] = v41;
      *v11 = vbsl_s8(vcgt_f32(*v35, v40), v40, *v35);
      v31 = vbsl_s8(vcgt_f32(v41, v35[1]), v41, v35[1]);
      if (v10 <= v34)
      {
        v32 = v34;
      }

      else
      {
        v32 = v10;
      }

      v7 = v4;
      v9 = &v11[5] + 1;
      v6 = v4;
    }

    else
    {
      v13 = v8[4].i32[1];
      if (v13 < 0 || v13 >= v5)
      {
        b2DynamicTree::Balance();
      }

      v14 = v8[5].i32[0];
      if (v14 < 0 || v14 >= v5)
      {
        b2DynamicTree::Balance();
      }

      v8[4].i32[0] = v3[4].i32[0];
      v8[4].i32[1] = a2;
      v3[4].i32[0] = v6;
      v15 = v8[4].i32[0];
      if (v15 == -1)
      {
        *this = v6;
      }

      else
      {
        v16 = *(this + 1) + 48 * v15;
        if (*(v16 + 36) == a2)
        {
          *(v16 + 36) = v6;
        }

        else
        {
          if (*(v16 + 40) != a2)
          {
            b2DynamicTree::Balance();
          }

          *(v16 + 40) = v6;
        }
      }

      v21 = (v2 + 48 * v13);
      v22 = (v2 + 48 * v14);
      v23 = v21[5].i32[1];
      v24 = v22[5].i32[1];
      if (v23 <= v24)
      {
        v25 = v14;
      }

      else
      {
        v25 = v13;
      }

      if (v23 <= v24)
      {
        v26 = (v2 + 48 * v13);
      }

      else
      {
        v13 = v14;
        v26 = (v2 + 48 * v14);
      }

      if (v23 <= v24)
      {
        v27 = &v22[5] + 1;
      }

      else
      {
        v22 = v21;
        v23 = v24;
        v27 = &v21[5] + 1;
      }

      v8[5].i32[0] = v25;
      v3[5].i32[0] = v13;
      v26[4].i32[0] = a2;
      v28 = v11[1];
      v29 = vbsl_s8(vcgt_f32(*v26, *v11), *v11, *v26);
      *v3 = v29;
      v30 = vbsl_s8(vcgt_f32(v28, v26[1]), v28, v26[1]);
      v3[1] = v30;
      *v8 = vbsl_s8(vcgt_f32(*v22, v29), v29, *v22);
      v31 = vbsl_s8(vcgt_f32(v30, v22[1]), v30, v22[1]);
      if (v12 <= v23)
      {
        v32 = v23;
      }

      else
      {
        v32 = v12;
      }
    }

    v3[5].i32[1] = v32 + 1;
    v42 = *v27;
    if (v32 + 1 > *v27)
    {
      v42 = v32 + 1;
    }

    *(v2 + 48 * v7 + 8) = v31;
    *v9 = v42 + 1;
    return v6;
  }

  return a2;
}

uint64_t b2DynamicTree::GetHeight(b2DynamicTree *this)
{
  if (*this == -1)
  {
    return 0;
  }

  else
  {
    return *(*(this + 1) + 48 * *this + 44);
  }
}

double b2DynamicTree::GetAreaRatio(b2DynamicTree *this)
{
  if (*this == -1)
  {
    return 0.0;
  }

  v1 = *(this + 1);
  v2 = (v1[6 * *this + 1].f32[0] - v1[6 * *this].f32[0]) + (v1[6 * *this + 1].f32[1] - v1[6 * *this].f32[1]);
  v3 = v2 + v2;
  v4 = *(this + 5);
  v5 = 0.0;
  if (v4 >= 1)
  {
    do
    {
      if ((v1[5].i32[1] & 0x80000000) == 0)
      {
        v6 = vaddv_f32(vsub_f32(v1[1], *v1));
        v5 = v5 + (v6 + v6);
      }

      v1 += 6;
      --v4;
    }

    while (v4);
  }

  *&result = v5 / v3;
  return result;
}

uint64_t b2DynamicTree::ComputeHeight(b2DynamicTree *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 5) <= a2)
  {
    b2DynamicTree::ComputeHeight();
  }

  v3 = *(this + 1) + 48 * a2;
  v4 = *(v3 + 36);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = b2DynamicTree::ComputeHeight(this, v4);
  v6 = b2DynamicTree::ComputeHeight(this, *(v3 + 40));
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  return (v7 + 1);
}

uint64_t b2DynamicTree::ValidateStructure(uint64_t this, unsigned int a2)
{
  if (a2 != -1)
  {
    v2 = a2;
    for (i = this; ; this = b2DynamicTree::ValidateStructure(i, v7))
    {
      v4 = *(i + 8);
      v5 = v2;
      if (*i == v2 && *(v4 + 48 * v2 + 32) != -1)
      {
        b2DynamicTree::ValidateStructure();
      }

      v6 = (v4 + 48 * v2);
      v7 = v6[9];
      v2 = v6[10];
      if (v7 == -1)
      {
        break;
      }

      if (v7 < 0 || (v8 = *(i + 20), v7 >= v8))
      {
        b2DynamicTree::ValidateStructure();
      }

      if ((v2 & 0x80000000) != 0 || v2 >= v8)
      {
        b2DynamicTree::ValidateStructure();
      }

      if (*(v4 + 48 * v7 + 32) != v5)
      {
        b2DynamicTree::ValidateStructure();
      }

      if (*(v4 + 48 * v2 + 32) != v5)
      {
        b2DynamicTree::ValidateStructure();
      }
    }

    if (v2 != -1)
    {
      b2DynamicTree::ValidateStructure();
    }

    if (v6[11])
    {
      b2DynamicTree::ValidateStructure();
    }
  }

  return this;
}

uint64_t b2DynamicTree::ValidateMetrics(uint64_t this, int a2)
{
  if (a2 != -1)
  {
    v2 = this;
    v3 = *(this + 8);
    for (i = (v3 + 48 * a2); ; i = (v3 + 48 * v6))
    {
      v5 = i[4].u32[1];
      v6 = i[5].u32[0];
      if (v5 == -1)
      {
        break;
      }

      if ((v5 & 0x80000000) != 0 || (v7 = *(v2 + 20), v5 >= v7))
      {
        b2DynamicTree::ValidateMetrics();
      }

      if ((v6 & 0x80000000) != 0 || v6 >= v7)
      {
        b2DynamicTree::ValidateMetrics();
      }

      v8 = *(v3 + 48 * v5 + 44);
      if (v8 <= *(v3 + 48 * v6 + 44))
      {
        v8 = *(v3 + 48 * v6 + 44);
      }

      if (i[5].i32[1] != v8 + 1)
      {
        b2DynamicTree::ValidateMetrics();
      }

      v9 = (v3 + 48 * v5);
      v10 = (v3 + 48 * v6);
      v11 = vceq_f32(vbsl_s8(vcgt_f32(*v10, *v9), *v9, *v10), *i);
      if ((v11.i32[0] & v11.i32[1] & 1) == 0)
      {
        b2DynamicTree::ValidateMetrics();
      }

      v12 = vceq_f32(vbsl_s8(vcgt_f32(v9[1], v10[1]), v9[1], v10[1]), i[1]);
      if ((v12.i32[0] & v12.i32[1] & 1) == 0)
      {
        b2DynamicTree::ValidateMetrics();
      }

      this = b2DynamicTree::ValidateMetrics(v2, v5);
      v3 = *(v2 + 8);
    }

    if (v6 != 0xFFFFFFFF)
    {
      b2DynamicTree::ValidateMetrics();
    }

    if (i[5].i32[1])
    {
      b2DynamicTree::ValidateMetrics();
    }
  }

  return this;
}

uint64_t b2DynamicTree::Validate(b2DynamicTree *this)
{
  b2DynamicTree::ValidateStructure(this, *this);
  b2DynamicTree::ValidateMetrics(this, *this);
  v2 = *(this + 6);
  if (v2 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v2 & 0x80000000) != 0 || v2 >= *(this + 5))
      {
        b2DynamicTree::Validate();
      }

      ++v3;
      LODWORD(v2) = *(*(this + 1) + 48 * v2 + 32);
    }

    while (v2 != -1);
  }

  v4 = *this;
  if (*this == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(this + 1) + 48 * v4 + 44);
  }

  result = b2DynamicTree::ComputeHeight(this, v4);
  if (v5 != result)
  {
    b2DynamicTree::Validate();
  }

  if (*(this + 4) + v3 != *(this + 5))
  {
    b2DynamicTree::Validate();
  }

  return result;
}

uint64_t b2DynamicTree::GetMaxBalance(b2DynamicTree *this)
{
  v1 = *(this + 5);
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 1);
  v5 = (v4 + 44);
  do
  {
    if (*v5 >= 2)
    {
      v6 = *(v5 - 2);
      if (v6 == -1)
      {
        b2DynamicTree::GetMaxBalance();
      }

      v7 = *(v4 + 48 * *(v5 - 1) + 44) - *(v4 + 48 * v6 + 44);
      if (v7 < 0)
      {
        v7 = -v7;
      }

      if (result <= v7)
      {
        result = v7;
      }

      else
      {
        result = result;
      }
    }

    v5 += 12;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t b2DynamicTree::RebuildBottomUp(b2DynamicTree *this)
{
  v2 = b2Alloc(4 * *(this + 4));
  v3 = this;
  v4 = v2;
  if (*(this + 5) >= 1)
  {
    v5 = 0;
    v6 = 0;
    LODWORD(v7) = 0;
    v35 = this;
    do
    {
      v8 = *(v3 + 1);
      if ((*(v8 + v5 + 44) & 0x80000000) == 0)
      {
        if (*(v8 + v5 + 36) == -1)
        {
          *(v8 + v5 + 32) = -1;
          v4[v7] = v6;
          LODWORD(v7) = v7 + 1;
        }

        else
        {
          b2DynamicTree::FreeNode(v3, v6);
          v3 = this;
        }
      }

      ++v6;
      v5 += 48;
    }

    while (v6 < *(v3 + 5));
    if (v7 >= 2)
    {
      v7 = v7;
      do
      {
        v9 = 0;
        v10 = *(v3 + 1);
        v11 = -1;
        v12 = 0x200000000;
        v13 = 3.4028e38;
        v14 = 1;
        v15 = -1;
        do
        {
          v16 = v9 + 1;
          if (v9 + 1 < v7)
          {
            v17 = (v10 + 48 * v4[v9]);
            v18 = *v17;
            v19 = v17[1];
            v20 = v12;
            v21 = v14;
            do
            {
              v22 = (v10 + 48 * v4[v21]);
              v23 = vaddv_f32(vsub_f32(vbsl_s8(vcgt_f32(v19, v22[1]), v19, v22[1]), vbsl_s8(vcgt_f32(*v22, v18), v18, *v22)));
              v24 = v23 + v23;
              if (v24 < v13)
              {
                v15 = v21;
                v11 = v9;
                v13 = v24;
              }

              ++v21;
              v25 = v7 <= v20 >> 32;
              v20 += 0x100000000;
            }

            while (!v25);
          }

          ++v14;
          v12 += 0x100000000;
          ++v9;
        }

        while (v16 != v7);
        v26 = v4[v11];
        v27 = v4[v15];
        v28 = (v10 + 48 * v26);
        v29 = (v10 + 48 * v27);
        b2DynamicTree::AllocateNode(v3);
        v3 = v35;
        v31 = v28[5].i32[1];
        if (v31 <= v29[5].i32[1])
        {
          v31 = v29[5].i32[1];
        }

        v32 = (*(v35 + 1) + 48 * v30);
        v32[5].i32[0] = v27;
        v32[5].i32[1] = v31 + 1;
        *v32 = vbsl_s8(vcgt_f32(*v29, *v28), *v28, *v29);
        v32[1] = vbsl_s8(vcgt_f32(v28[1], v29[1]), v28[1], v29[1]);
        v32[4].i32[0] = -1;
        v32[4].i32[1] = v26;
        v28[4].i32[0] = v30;
        v29[4].i32[0] = v30;
        v4[v15] = v4[v7 - 1];
        v4[v11] = v30;
        v25 = v7-- <= 2;
      }

      while (!v25);
    }
  }

  *v3 = *v4;
  v33 = v3;
  b2Free(v4);

  return b2DynamicTree::Validate(v33);
}

void b2TimeOfImpact(int *a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = *(a2 + 192);
  *(a1 + 1) = v2;
  v3 = *(a2 + 80);
  v62 = *(a2 + 64);
  v63 = v3;
  v4 = *(a2 + 112);
  v64 = *(a2 + 96);
  v65 = v4;
  v5 = *(a2 + 144);
  v58 = *(a2 + 128);
  v59 = v5;
  v6 = *(a2 + 176);
  v60 = *(a2 + 160);
  v61 = v6;
  v7 = floorf(v63.f32[3] / 6.2832) * 6.2832;
  v63.f32[3] = v63.f32[3] - v7;
  v64.f32[3] = v64.f32[3] - v7;
  v8 = floorf(v5.f32[3] / 6.2832);
  ++b2_toiCalls;
  v59.f32[3] = v5.f32[3] - (v8 * 6.2832);
  v60.f32[3] = v60.f32[3] - (v8 * 6.2832);
  if (((*(a2 + 28) + *(a2 + 60)) + -0.0135) >= 0.0045)
  {
    v9 = (*(a2 + 28) + *(a2 + 60)) + -0.0135;
  }

  else
  {
    v9 = 0.0045;
  }

  if (v9 <= 0.001125)
  {
    b2TimeOfImpact();
  }

  v37 = v2;
  v12 = 0;
  v56 = 0;
  v13 = *(a2 + 16);
  v47[0] = *a2;
  v47[1] = v13;
  v15 = *(a2 + 32);
  v14 = *(a2 + 48);
  v47[2] = v15;
  v47[3] = v14;
  v54 = 0;
  v39 = v9 + 0.001125;
  v38 = v9 + -0.001125;
  *&v15 = 0;
  v16 = 1.0;
  while (2)
  {
    v40 = v16 - *&v15;
    v43 = v15;
    v36 = vmlaq_n_f32(vmulq_n_f32(v64, *&v15), v63, v16 - *&v15);
    v17 = __sincosf_stret(v36.f32[3]);
    v18 = v36.f32[0] - ((v17.__cosval * *&v62) - (v17.__sinval * *(&v62 + 1)));
    v19 = v36.f32[1] - ((*(&v62 + 1) * v17.__cosval) + (v17.__sinval * *&v62));
    v41 = vmlaq_n_f32(vmulq_n_f32(v60, *&v43), v59, v40);
    v20 = __sincosf_stret(v41.f32[3]);
    v48 = v18;
    v49 = v19;
    v50 = v17;
    v51 = v41.f32[0] - ((v20.__cosval * *&v58) - (v20.__sinval * *(&v58 + 1)));
    v52 = v41.f32[1] - ((*(&v58 + 1) * v20.__cosval) + (v20.__sinval * *&v58));
    v53 = v20;
    b2Distance(v45, v55, v47);
    if (v46 <= 0.0)
    {
      LODWORD(v15) = 0;
      v33 = 2;
LABEL_46:
      *a1 = v33;
      a1[1] = v15;
      goto LABEL_41;
    }

    if (v46 < v39)
    {
      v33 = 3;
      LODWORD(v15) = v43;
      goto LABEL_46;
    }

    b2SeparationFunction::Initialize(v57, v55, a2, &v62, a2 + 32, &v58, *&v43);
    *v44 = 0;
    b2SeparationFunction::FindMinSeparation(v57, &v44[1], v44, v37);
    v21 = *&v15;
    if (*&v15 <= v39)
    {
      v22 = 0;
      v42 = v37;
      while (1)
      {
        if (v21 > v38)
        {
          *&v15 = v42;
          goto LABEL_35;
        }

        b2SeparationFunction::Evaluate(v57, v44[1], v44[0], *&v43);
        v24 = v23;
        if (v23 < v38)
        {
          v34 = 1;
          v25 = *&v43;
          goto LABEL_40;
        }

        v25 = *&v43;
        if (v24 <= v39)
        {
          v34 = 3;
          goto LABEL_40;
        }

        v26 = 0;
        v27 = *&v43;
        v28 = v42;
        while (1)
        {
          if (v26)
          {
            v29 = v27 + (((v9 - v24) * (v28 - v27)) / (v21 - v24));
          }

          else
          {
            v29 = (v27 + v28) * 0.5;
          }

          b2SeparationFunction::Evaluate(v57, v44[1], v44[0], v29);
          v31 = v30 - v9;
          if ((v30 - v9) <= 0.0)
          {
            v31 = -(v30 - v9);
          }

          if (v31 < 0.001125)
          {
            break;
          }

          if (v30 > v9)
          {
            v24 = v30;
            v27 = v29;
          }

          else
          {
            v21 = v30;
          }

          if (v30 <= v9)
          {
            v28 = v29;
          }

          ++v26;
          ++b2_toiRootIters;
          if (v26 == 50)
          {
            goto LABEL_28;
          }
        }

        v42 = v29;
LABEL_28:
        v32 = b2_toiMaxRootIters;
        if (b2_toiMaxRootIters <= v26)
        {
          v32 = v26;
        }

        b2_toiMaxRootIters = v32;
        if (v22 == 11)
        {
          break;
        }

        *v44 = 0;
        b2SeparationFunction::FindMinSeparation(v57, &v44[1], v44, v42);
        v21 = *&v15;
        ++v22;
        if (*&v15 > v39)
        {
          goto LABEL_37;
        }
      }

      v15 = v43;
LABEL_35:
      ++b2_toiIters;
      ++v12;
      v16 = 1.0;
      if (v12 != 20)
      {
        continue;
      }

      v33 = 1;
      goto LABEL_46;
    }

    break;
  }

LABEL_37:
  v34 = 4;
  v25 = v37;
LABEL_40:
  *a1 = v34;
  *(a1 + 1) = v25;
  ++v12;
  ++b2_toiIters;
LABEL_41:
  v35 = b2_toiMaxIters;
  if (b2_toiMaxIters <= v12)
  {
    v35 = v12;
  }

  b2_toiMaxIters = v35;
}

void b2SeparationFunction::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, float a7)
{
  *a1 = a3;
  *(a1 + 8) = a5;
  v7 = *(a2 + 4);
  if ((v7 - 3) <= 0xFFFFFFFD)
  {
    b2SeparationFunction::Initialize();
  }

  v13 = *a4;
  v14 = a4[1];
  v15 = a4[2];
  *(a1 + 64) = *(a4 + 12);
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 16) = v13;
  v16 = *a6;
  v17 = a6[1];
  v18 = a6[2];
  *(a1 + 128) = *(a6 + 12);
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 80) = v16;
  v71 = a7;
  v72 = 1.0 - a7;
  v70 = vmlaq_n_f32(vmulq_n_f32(*(a1 + 48), a7), *(a1 + 32), 1.0 - a7);
  v21 = __sincosf_stret(v70.f32[3]);
  cosval = v21.__cosval;
  LODWORD(v19) = *&v21;
  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  v24 = -v19;
  v25 = v70.f32[0] - ((cosval * v22) - (v19 * v23));
  v26 = v70.f32[1] - ((v23 * cosval) + (v19 * v22));
  v73 = vmlaq_n_f32(vmulq_n_f32(*(a1 + 112), v71), *(a1 + 96), v72);
  v27 = __sincosf_stret(v73.f32[3]);
  v28 = *(a1 + 80);
  v29 = *(a1 + 84);
  v30 = -v27.__sinval;
  v31 = (v27.__cosval * v28) - (v27.__sinval * v29);
  v32 = (v29 * v27.__cosval) + (v27.__sinval * v28);
  v33 = v73.f32[0] - v31;
  v34 = v73.f32[1] - v32;
  if (v7 == 1)
  {
    *(a1 + 144) = 0;
    v35 = *(a2 + 6);
    if (*(a3 + 24) <= v35)
    {
      b2Distance();
    }

    v36 = *(a2 + 9);
    if (*(a5 + 24) <= v36)
    {
      b2Distance();
    }

    v37 = (*(a3 + 16) + 8 * v35);
    v39 = *v37;
    v38 = v37[1];
    v40 = (*(a5 + 16) + 8 * v36);
    v41 = v40[1];
    v42 = (v33 + ((v41 * v30) + (v27.__cosval * *v40))) - (v25 + ((v38 * v24) + (cosval * v39)));
    v43 = (v34 + ((v27.__cosval * v41) + (v27.__sinval * *v40))) - (v26 + ((cosval * v38) + (v19 * v39)));
    *(a1 + 156) = v42;
    *(a1 + 160) = v43;
    v44 = sqrtf((v43 * v43) + (v42 * v42));
    if (v44 >= 0.00000011921)
    {
      *(a1 + 156) = v42 * (1.0 / v44);
      *(a1 + 160) = v43 * (1.0 / v44);
    }
  }

  else
  {
    if (*(a2 + 6) == *(a2 + 7))
    {
      *(a1 + 144) = 2;
      v45 = *(a5 + 24);
      if (v45 <= *(a2 + 9))
      {
        b2Distance();
      }

      if (v45 <= *(a2 + 10))
      {
        b2Distance();
      }

      v46 = *(a5 + 16);
      v47 = *(v46 + 8 * *(a2 + 9));
      v48 = *(v46 + 8 * *(a2 + 10));
      _D17 = vsub_f32(v48, v47);
      _S6 = _D17.f32[1];
      v50 = -_D17.f32[0];
      *(a1 + 156) = _D17.i32[1];
      *(a1 + 160) = -_D17.f32[0];
      __asm { FMLA            S18, S6, V17.S[1] }

      _D17.f32[0] = sqrtf(_S18);
      if (_D17.f32[0] >= 0.00000011921)
      {
        _D17.f32[0] = 1.0 / _D17.f32[0];
        _S6 = _D17.f32[1] * _D17.f32[0];
        v50 = _D17.f32[0] * v50;
        *(a1 + 156) = _D17.f32[1] * _D17.f32[0];
        *(a1 + 160) = v50;
      }

      v57 = vmul_f32(vadd_f32(v47, v48), 0x3F0000003F000000);
      *(a1 + 148) = v57;
      v58 = *(a2 + 6);
      if (*(a3 + 24) <= v58)
      {
        b2Distance();
      }

      v59 = (*(a3 + 16) + 8 * v58);
      v60 = (((v27.__cosval * v50) + (v27.__sinval * _S6)) * ((v26 + ((cosval * v59[1]) + (v19 * *v59))) - (v34 + (vmuls_lane_f32(v27.__cosval, v57, 1) + (v27.__sinval * v57.f32[0]))))) + (((v25 + ((v59[1] * v24) + (cosval * *v59))) - (v33 + (vmuls_lane_f32(v30, v57, 1) + (v27.__cosval * v57.f32[0])))) * ((v50 * v30) + (v27.__cosval * _S6)));
    }

    else
    {
      *(a1 + 144) = 1;
      v61 = *(a3 + 24);
      if (v61 <= *(a2 + 6))
      {
        b2Distance();
      }

      if (v61 <= *(a2 + 7))
      {
        b2Distance();
      }

      v62 = *(a3 + 16);
      v63 = *(v62 + 8 * *(a2 + 6));
      v64 = *(v62 + 8 * *(a2 + 7));
      _D17 = vsub_f32(v64, v63);
      _S6 = _D17.f32[1];
      v50 = -_D17.f32[0];
      *(a1 + 156) = _D17.i32[1];
      *(a1 + 160) = -_D17.f32[0];
      __asm { FMLA            S18, S6, V17.S[1] }

      _D17.f32[0] = sqrtf(_S18);
      if (_D17.f32[0] >= 0.00000011921)
      {
        _D17.f32[0] = 1.0 / _D17.f32[0];
        _S6 = _D17.f32[1] * _D17.f32[0];
        v50 = _D17.f32[0] * v50;
        *(a1 + 156) = _D17.f32[1] * _D17.f32[0];
        *(a1 + 160) = v50;
      }

      v67 = vmul_f32(vadd_f32(v63, v64), 0x3F0000003F000000);
      *(a1 + 148) = v67;
      v68 = *(a2 + 9);
      if (*(a5 + 24) <= v68)
      {
        b2Distance();
      }

      v69 = (*(a5 + 16) + 8 * v68);
      v60 = (((cosval * v50) + (v19 * _S6)) * ((v34 + ((v27.__cosval * v69[1]) + (v27.__sinval * *v69))) - (v26 + (vmuls_lane_f32(cosval, v67, 1) + (v19 * v67.f32[0]))))) + (((v33 + ((v69[1] * v30) + (v27.__cosval * *v69))) - (v25 + (vmuls_lane_f32(v24, v67, 1) + (cosval * v67.f32[0])))) * ((v50 * v24) + (cosval * _S6)));
    }

    if (v60 < 0.0)
    {
      *(a1 + 156) = -_S6;
      *(a1 + 160) = -v50;
    }
  }
}

void b2SeparationFunction::FindMinSeparation(b2SeparationFunction *this, int *a2, int *a3, float a4)
{
  v57 = 1.0 - a4;
  v7 = __sincosf_stret(COERCE_FLOAT(vmlaq_n_f32(vmulq_n_f32(*(this + 48), a4), *(this + 32), 1.0 - a4).i32[3]));
  v8 = -v7.__sinval;
  v9 = __sincosf_stret(COERCE_FLOAT(vmlaq_n_f32(vmulq_n_f32(*(this + 112), a4), *(this + 96), v57).i32[3]));
  v10 = *(this + 36);
  if (v10 == 2)
  {
    v35 = *(this + 39);
    v36 = *(this + 40);
    v37 = (v36 * -v9.__sinval) + (v9.__cosval * v35);
    v38 = (v9.__cosval * v36) + (v9.__sinval * v35);
    *a3 = -1;
    v39 = *this;
    v40 = *(*this + 16);
    v41 = *(*this + 24);
    if (v41 <= 1)
    {
      v42 = 0;
      *a2 = 0;
    }

    else
    {
      v42 = 0;
      v43 = -(v38 * v7.__sinval) - (v7.__cosval * v37);
      v44 = (v7.__sinval * v37) - (v38 * v7.__cosval);
      v45 = (v44 * v40[1]) + (*v40 * v43);
      v46 = v40 + 3;
      for (i = 1; i != v41; ++i)
      {
        if (((v44 * *v46) + (*(v46 - 1) * v43)) > v45)
        {
          v45 = (v44 * *v46) + (*(v46 - 1) * v43);
          v42 = i;
        }

        v46 += 2;
      }

      *a2 = v42;
      if (v42 < 0)
      {
        goto LABEL_44;
      }
    }

    if (*(v39 + 24) > v42)
    {
      return;
    }

LABEL_44:
    b2Distance();
  }

  if (v10 == 1)
  {
    v22 = *(this + 39);
    v23 = *(this + 40);
    v24 = (v23 * v8) + (v7.__cosval * v22);
    v25 = (v7.__cosval * v23) + (v7.__sinval * v22);
    *a2 = -1;
    v26 = *(this + 1);
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v28 <= 1)
    {
      v29 = 0;
      *a3 = 0;
    }

    else
    {
      v29 = 0;
      v30 = -(v25 * v9.__sinval) - (v9.__cosval * v24);
      v31 = (v9.__sinval * v24) - (v25 * v9.__cosval);
      v32 = (v31 * v27[1]) + (*v27 * v30);
      v33 = v27 + 3;
      for (j = 1; j != v28; ++j)
      {
        if (((v31 * *v33) + (*(v33 - 1) * v30)) > v32)
        {
          v32 = (v31 * *v33) + (*(v33 - 1) * v30);
          v29 = j;
        }

        v33 += 2;
      }

      *a3 = v29;
      if (v29 < 0)
      {
        goto LABEL_43;
      }
    }

    if (*(v26 + 24) > v29)
    {
      return;
    }

LABEL_43:
    b2Distance();
  }

  if (v10)
  {
    b2SeparationFunction::FindMinSeparation();
  }

  v11 = *(this + 39);
  v12 = *(this + 40);
  v13 = *this;
  v14 = *(*this + 16);
  v15 = *(*this + 24);
  if (v15 < 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    v17 = (v7.__sinval * v12) + (v7.__cosval * v11);
    v18 = (v7.__cosval * v12) + (v8 * v11);
    v19 = (v18 * v14[1]) + (*v14 * v17);
    v20 = v14 + 3;
    for (k = 1; k != v15; ++k)
    {
      if (((v18 * *v20) + (*(v20 - 1) * v17)) > v19)
      {
        v19 = (v18 * *v20) + (*(v20 - 1) * v17);
        v16 = k;
      }

      v20 += 2;
    }
  }

  *a2 = v16;
  v48 = *(this + 1);
  v49 = *(v48 + 16);
  v50 = *(v48 + 24);
  if (v50 < 2)
  {
    v51 = 0;
  }

  else
  {
    v51 = 0;
    v52 = -(v12 * v9.__sinval) - (v9.__cosval * v11);
    v53 = (v9.__sinval * v11) - (v12 * v9.__cosval);
    v54 = (v53 * v49[1]) + (*v49 * v52);
    v55 = v49 + 3;
    for (m = 1; m != v50; ++m)
    {
      if (((v53 * *v55) + (*(v55 - 1) * v52)) > v54)
      {
        v54 = (v53 * *v55) + (*(v55 - 1) * v52);
        v51 = m;
      }

      v55 += 2;
    }
  }

  *a3 = v51;
  if (*a2 < 0 || *(v13 + 24) <= *a2)
  {
    b2Distance();
  }

  if (v51 < 0 || *(v48 + 24) <= v51)
  {
    b2Distance();
  }
}

void b2SeparationFunction::Evaluate(b2SeparationFunction *this, int a2, int a3, float a4)
{
  v8 = 1.0 - a4;
  __sincosf_stret(COERCE_FLOAT(vmlaq_n_f32(vmulq_n_f32(*(this + 48), a4), *(this + 32), 1.0 - a4).i32[3]));
  __sincosf_stret(COERCE_FLOAT(vmlaq_n_f32(vmulq_n_f32(*(this + 112), a4), *(this + 96), v8).i32[3]));
  v7 = *(this + 36);
  if (v7 == 2)
  {
    if (a2 < 0 || *(*this + 24) <= a2)
    {
      b2Distance();
    }
  }

  else if (v7 == 1)
  {
    if (a3 < 0 || *(*(this + 1) + 24) <= a3)
    {
      b2Distance();
    }
  }

  else
  {
    if (v7)
    {
      b2SeparationFunction::Evaluate();
    }

    if (a2 < 0 || *(*this + 24) <= a2)
    {
      b2Distance();
    }

    if (a3 < 0 || *(*(this + 1) + 24) <= a3)
    {
      b2Distance();
    }
  }
}

uint64_t b2QuadtreeShape::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

QuadTree *b2QuadtreeShape::TestPoint(b2QuadtreeShape *this, const b2Transform *a2, const b2Vec2 *a3)
{
  result = *(this + 2);
  if (result)
  {
    v4 = a3->x - a2->var0.x;
    v5 = a3->y - a2->var0.y;
    var0 = a2->var1.var0;
    var1 = a2->var1.var1;
    v8 = 0;
    return QuadTree::intersectPoint(result, (v5 * var0) + (var1 * v4), (var1 * v5) - (var0 * v4), &v8);
  }

  return result;
}

QuadTree *b2QuadtreeShape::ComputeDistance(b2QuadtreeShape *this, const b2Transform *a2, const b2Vec2 *a3, float *a4, b2Vec2 *a5)
{
  v8 = a3->x - a2->var0.x;
  v9 = a3->y - a2->var0.y;
  var0 = a2->var1.var0;
  var1 = a2->var1.var1;
  v12 = (v9 * var0) + (var1 * v8);
  v13 = (var1 * v9) - (var0 * v8);
  result = *(this + 2);
  if (result && (v26 = 0, result = QuadTree::find(result, (v9 * var0) + (var1 * v8), v13, &v26), v26))
  {
    v15 = v12 - ((*(v26 + 8) + *(v26 + 9)) * 0.5);
    v16 = v13 - ((*(v26 + 10) + *(v26 + 11)) * 0.5);
    v17 = sqrtf((v16 * v16) + (v15 * v15));
    v19 = a2->var1.var0;
    v18 = a2->var1.var1;
    if (v17 <= 0.00000011921)
    {
      v16 = v13;
      v15 = v12;
    }

    a5->x = (v18 * v15) - (v19 * v16);
    a5->y = (v16 * v18) + (v19 * v15);
    *a4 = v17;
    x = a5->x;
    y = a5->y;
  }

  else
  {
    *a4 = -3.4028e38;
    v23 = a2->var1.var0;
    v22 = a2->var1.var1;
    x = (v22 * v12) - (v23 * v13);
    y = (v13 * v22) + (v23 * v12);
    a5->x = x;
    a5->y = y;
  }

  v24 = sqrtf((y * y) + (x * x));
  if (v24 >= 0.00000011921)
  {
    v25 = 1.0 / v24;
    a5->x = x * v25;
    a5->y = y * v25;
  }

  return result;
}

uint64_t b2QuadtreeShape::RayCast(uint64_t a1, float *a2, float *a3, float *a4)
{
  v5 = a4[1];
  v6 = *a3 - *a4;
  v7 = a3[1] - v5;
  v9 = a4[2];
  v8 = a4[3];
  v10 = (v7 * v9) + (v8 * v6);
  v11 = (v8 * v7) - (v9 * v6);
  v12 = a3[2] - *a4;
  v13 = a3[3] - v5;
  v14 = (v9 * v13) + (v8 * v12);
  v15 = (v8 * v13) - (v9 * v12);
  v22 = 0;
  QuadTree::intersectRay(*(a1 + 16), v10, v11, v14, v15, &v22);
  v16 = v14 - v10;
  v17 = v15 - v11;
  *a2 = v14 - v10;
  a2[1] = v15 - v11;
  v18 = sqrtf((v17 * v17) + (v16 * v16));
  if (v18 >= 0.00000011921)
  {
    *a2 = v16 * (1.0 / v18);
    a2[1] = v17 * (1.0 / v18);
  }

  v19 = *(v22 + 10) + *(v22 + 11);
  v20 = v14 - ((*(v22 + 8) + *(v22 + 9)) * 0.5);
  a2[2] = v18 - sqrtf(((v15 - (v19 * 0.5)) * (v15 - (v19 * 0.5))) + (v20 * v20));
  return 0;
}

float32x2_t b2QuadtreeShape::ComputeAABB(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v11 = 0;
    v12 = 0;
    QuadTree::bounds(v3, &v12 + 1, &v12, &v11 + 1, &v11);
    v6 = a3[1];
    v7 = vrev64_s32(v6);
    *v6.i32 = -*v6.i32;
    *a2 = vadd_f32(*a3, vmla_n_f32(vmul_n_f32(v6, *&v12), v7, *(&v12 + 1)));
    v8 = a3[1];
    v9 = vrev64_s32(v8);
    *v8.i32 = -*v8.i32;
    result = vadd_f32(*a3, vmla_n_f32(vmul_n_f32(v8, *&v11), v9, *(&v11 + 1)));
    a2[1] = result;
  }

  return result;
}

uint64_t b2QuadtreeShape::ComputeMass(uint64_t a1, void *a2)
{
  result = puts("E");
  *a2 = 0;
  a2[1] = 0;
  return result;
}

void b2QuadtreeShape::~b2QuadtreeShape(b2QuadtreeShape *this)
{
  *this = &unk_2870798F0;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2870798F0;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F8C0280);
}

id fieldRepresentedObject(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(*(a1 + 16));

  return WeakRetained;
}

void PKCField::~PKCField(PKCField *this)
{
  *this = &unk_287079278;
  --fieldCount;
  v2 = *(this + 1);
  if (v2)
  {

    MEMORY[0x25F8C0280](v2, 0x80C40B8603338);
  }

  v3 = *(this + 2);
  if (v3)
  {
    objc_destroyWeak(*(this + 2));
    MEMORY[0x25F8C0280](v3, 0x80C40B8603338);
  }
}

void PKCField::setTransform(uint64_t a1, uint64_t a2, __int128 *a3, float32x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = *a2;
  if (*(a1 + 245) == 1)
  {
    LODWORD(v27) = 1065353216;
    LODWORD(v28) = 0;
    *(a1 + 64) = xmmword_25E7EB770;
    *(a1 + 80) = xmmword_25E7EAFA0;
    LODWORD(v29) = 0;
    v30 = xmmword_25E7EAF70;
    *(a1 + 96) = xmmword_25E7EB780;
    *(a1 + 112) = xmmword_25E7EAF70;
  }

  else
  {
    v65 = *a3;
    LODWORD(v31) = *(a3 + 1);
    v32 = __sincosf_stret(COERCE_FLOAT(HIDWORD(*a3)));
    v33 = __sincosf_stret(*&v65);
    v34 = __sincosf_stret(v31);
    HIDWORD(v35) = 0;
    *&v35 = __PAIR64__((v34.__cosval * (v32.__sinval * v33.__sinval)) - (v32.__cosval * v34.__sinval), (v34.__sinval * (v32.__sinval * v33.__sinval)) + (v32.__cosval * v34.__cosval));
    *(&v35 + 2) = v32.__sinval * v33.__cosval;
    HIDWORD(v36) = 0;
    *&v36 = __PAIR64__(v34.__cosval * v33.__cosval, v34.__sinval * v33.__cosval);
    *(&v36 + 2) = -v33.__sinval;
    HIDWORD(v37) = 0;
    *&v37 = __PAIR64__((v34.__cosval * (v32.__cosval * v33.__sinval)) + (v34.__sinval * v32.__sinval), (v34.__sinval * (v32.__cosval * v33.__sinval)) - (v32.__sinval * v34.__cosval));
    a9 = v35;
    a10 = v36;
    *(&v37 + 2) = v32.__cosval * v33.__cosval;
    a11 = v37;
    a12 = xmmword_25E7EAF70;
    math::transpose(&a9, &a13);
    v38 = a14;
    *(a1 + 64) = a13;
    *(a1 + 80) = v38;
    v39 = a16;
    *(a1 + 96) = a15;
    *(a1 + 112) = v39;
    v27 = *(a1 + 64);
    v28 = *(a1 + 80);
    v29 = *(a1 + 96);
    v30 = *(a1 + 112);
  }

  v40 = -COERCE_FLOAT(*a2);
  v41 = -COERCE_FLOAT(HIDWORD(*a2));
  v42 = -COERCE_FLOAT(*(a2 + 8));
  a9 = xmmword_25E7EB770;
  a10 = xmmword_25E7EAFA0;
  v43 = *a4->f32;
  v44.i32[0] = 1.0;
  if (fabsf(COERCE_FLOAT(*a4->f32)) <= 0.000030518)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 1.0 / COERCE_FLOAT(*a4->f32);
  }

  v46 = 1.0 / *(&v43 + 1);
  if (fabsf(*(&v43 + 1)) <= 0.000030518)
  {
    v46 = 1.0;
  }

  if (fabsf(*(&v43 + 2)) <= 0.000030518)
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 1.0 / *(&v43 + 2);
  }

  LODWORD(v48) = 0;
  *(&v48 + 1) = v46;
  a13 = LODWORD(v45);
  a14 = v48;
  *&v49 = 0;
  *(&v49 + 1) = LODWORD(v47);
  v44.i32[1] = 0;
  v44.i32[2] = 0;
  a15 = v49;
  a16 = xmmword_25E7EAF70;
  v44.f32[3] = v40;
  v50 = xmmword_25E7EAFA0;
  v50.i32[0] = DWORD1(a9);
  v50.f32[3] = v41;
  v51 = xmmword_25E7EB780;
  v51.i32[0] = DWORD2(a9);
  v51.f32[3] = v42;
  v52 = xmmword_25E7EAF70;
  v52.i32[0] = *(&a9 | 0xC);
  v53 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v44, *&v27), v50, *&v28), v51, *&v29), v52, v30.f32[0]);
  v54 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(a1 + 68))), v50, COERCE_FLOAT(*(a1 + 84))), v51, COERCE_FLOAT(*(a1 + 100))), v52, v30.f32[1]);
  v55 = vmlaq_laneq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(a1 + 72))), v50, COERCE_FLOAT(*(a1 + 88))), v51, COERCE_FLOAT(*(a1 + 104))), v52, v30, 2);
  v56 = vmlaq_laneq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(a1 + 76))), v50, COERCE_FLOAT(*(a1 + 92))), v51, COERCE_FLOAT(*(a1 + 108))), v52, v30, 3);
  LODWORD(v57) = vdupq_lane_s32(*v53.f32, 1).u32[0];
  *&v58 = vzip1q_s32(v53, v54).u64[0];
  DWORD1(v57) = v54.i32[1];
  *(&v58 + 1) = __PAIR64__(v56.u32[0], v55.u32[0]);
  *(&v57 + 1) = __PAIR64__(v56.u32[1], v55.u32[1]);
  v66[0] = v58;
  v66[1] = v57;
  v54.i32[0] = DWORD1(v58);
  v53.i32[0] = v58;
  v56.i32[0] = *(v66 | 0xC);
  v59 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v53, v45), 0, v54), 0, v55), 0, v56);
  v60 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, *(&a13 + 1)), v54, *(&v48 + 1)), v55, *(&a15 + 1)), 0, v56);
  v61 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, *(&a13 + 2)), v54, 0.0), v55, *(&a15 + 2)), 0, v56);
  LODWORD(v62) = vdupq_lane_s32(*v59.i8, 1).u32[0];
  LODWORD(v58) = vdupq_laneq_s32(v59, 2).u32[0];
  LODWORD(v63) = vdupq_laneq_s32(v59, 3).u32[0];
  v64 = vaddq_f32(v56, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, *(&a13 + 3)), v54, COERCE_FLOAT(v48 >> 96)), v55, *(&a15 + 3)));
  v59.i64[0] = vzip1q_s32(v59, v60).u64[0];
  DWORD1(v62) = v60.i32[1];
  DWORD1(v63) = v60.i32[3];
  DWORD1(v58) = v60.i32[2];
  v59.i64[1] = __PAIR64__(v64.u32[0], v61.u32[0]);
  *(&v62 + 1) = __PAIR64__(v64.u32[1], v61.u32[1]);
  *(&v58 + 1) = __PAIR64__(v64.u32[2], v61.u32[2]);
  *(&v63 + 1) = __PAIR64__(v64.u32[3], v61.u32[3]);
  *(a1 + 128) = v59;
  *(a1 + 144) = v62;
  *(a1 + 160) = v58;
  *(a1 + 176) = v63;
  *(a1 + 192) = sqrtf(fabsf(vmuls_lane_f32(COERCE_FLOAT(*a4->f32), *a4, 1)));
}

void *PKCField::hasFiniteRegion(PKCField *this)
{
  result = **(this + 1);
  if (result)
  {
    return ([result isInfinite] ^ 1);
  }

  return result;
}

void *PKCField::hasEmptyRegion(PKCField *this)
{
  result = **(this + 1);
  if (result)
  {
    return [result isEmpty];
  }

  return result;
}

uint64_t PKCField::contains(uint64_t a1, float32x4_t *a2)
{
  if (*(a1 + 244) != 1)
  {
    return 0;
  }

  v3 = **(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v5 = v3;
  v12 = *(a1 + 144);
  v13 = *(a1 + 128);
  v11 = *(a1 + 160);
  v14 = *(a1 + 176);
  v15 = *a2;
  v6 = PKGet_PTM_RATIO();
  v7 = PKGet_PTM_RATIO();
  v8 = vaddq_f32(vaddq_f32(vmulq_n_f32(v13, v15.f32[0]), vmulq_lane_f32(v12, *v15.f32, 1)), vaddq_f32(vmulq_laneq_f32(v11, v15, 2), v14)).u64[0];
  v9 = [v5 containsPoint:{(v6 * v8.f32[0]), vmuls_lane_f32(v7, v8, 1)}];

  return v9;
}

float PKCField::calculatedFalloff(float32x4_t *a1, float32x4_t a2)
{
  v2 = a1[12].f32[3];
  if (fabsf(v2) < 0.000030518)
  {
    return 1.0;
  }

  v4 = vaddq_f32(vaddq_f32(vmulq_n_f32(a1[8], a2.f32[0]), vmulq_lane_f32(a1[9], *a2.f32, 1)), vaddq_f32(vmulq_laneq_f32(a1[10], a2, 2), a1[11]));
  v5 = vmulq_f32(v4, v4);
  v6 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  if (v6 < a1[13].f32[0])
  {
    v6 = a1[13].f32[0];
  }

  return powf(v6, -v2);
}

float PKCField::calculatedLocalFalloff(uint64_t a1, float32x4_t a2)
{
  v2 = *(a1 + 204);
  if (fabsf(v2) < 0.000030518)
  {
    return 1.0;
  }

  v4 = vmulq_f32(a2, a2);
  v5 = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  if (v5 < *(a1 + 208))
  {
    v5 = *(a1 + 208);
  }

  return powf(v5, -v2);
}

void PKCField::evalForceVec2(uint64_t a1, uint64_t a2, int a3, int a4, int a5, float32x4_t a6)
{
  if ((a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v10 = *(*a1 + 16);

    v10();
    return;
  }

  v11 = *(a2 + 168);
  v34 = *(a2 + 8);
  v37 = *(a2 + 16);
  v38 = *(a2 + 176);
  v30 = *(a2 + 40);
  a6.i32[0] = *(a2 + 272);
  v36 = a6;
  v12 = *(a2 + 256);
  v13 = *(a2 + 264);
  v14 = **(a1 + 8);
  if (v14)
  {
    v33 = [v14 isInfinite] ^ 1;
  }

  else
  {
    v33 = 0;
  }

  v15 = 1.0;
  if (*(a2 + 88) == 1)
  {
    v15 = *(a2 + 64);
  }

  v16 = 0.0;
  v17 = a5;
  if (*(a2 + 120) == 1)
  {
    v16 = *(a2 + 96);
  }

  if (a4)
  {
    v18 = *(a2 + 200);
    v19 = *(a2 + 208);
    if (!a5)
    {
LABEL_15:
      v20 = 0;
      v32 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
    if (!a5)
    {
      goto LABEL_15;
    }
  }

  v20 = *(a2 + 136);
  v32 = *(a2 + 144);
LABEL_18:
  if (a3 >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = v12;
    v29 = *(a1 + 200);
    v24 = vdup_lane_s32(*v36.f32, 0);
    v25 = v23;
    v26 = 1;
    do
    {
      if (a4)
      {
        v22 = *v18;
      }

      if (v17)
      {
        v26 = (*(a1 + 240) & *v20) != 0;
        v20 = (v20 + v32);
      }

      if (!(v22 & 1 | !v26))
      {
        *a6.f32 = vmul_n_f32(vadd_f32(v13, *(v34 + v21)), v36.f32[0]);
        v39[0] = a6;
        if (!v33 || (v31 = a6, v27 = PKCField::contains(a1, v39), a6 = v31, v27))
        {
          v28.n128_u32[3] = v36.u32[3];
          v28.n128_u64[0] = vmul_n_f32(*(v30 + v21), v36.f32[0]);
          v28.n128_u32[2] = 0;
          *v11 = vadd_f32(*v11, vdiv_f32(COERCE_FLOAT32X2_T((*(*a1 + 40))(a1, a6, v28, v15, v16, v25)), v24));
          if (a4)
          {
            *v18 = v29;
          }
        }

        v17 = a5;
      }

      v11 = (v11 + v38);
      v18 += v19;
      v21 += v37;
      --a3;
    }

    while (a3);
  }
}

void PKCField::evalForceVec2(void **a1, uint64_t a2, int a3, double a4, int32x2_t a5, float32x4_t a6)
{
  v9 = *a1[1];
  if (v9)
  {
    v10 = [v9 isInfinite] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 1.0;
  if (*(a2 + 88) == 1)
  {
    v11 = *(a2 + 64);
  }

  v12 = 0.0;
  if (*(a2 + 120) == 1)
  {
    v12 = *(a2 + 96);
  }

  if (a3 >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 40);
    v15 = *(a2 + 168);
    v16 = *(a2 + 176);
    v17 = *(a2 + 8);
    v18 = *(a2 + 16);
    v19 = *(a2 + 264);
    a5.i32[0] = *(a2 + 272);
    v20 = *(a2 + 256);
    v26 = *a5.i32;
    v21 = vdup_lane_s32(a5, 0);
    v22 = v20;
    do
    {
      *a6.f32 = vmul_n_f32(vadd_f32(v19, *(v17 + v13)), v26);
      v23 = *(v14 + v13);
      v27 = a6;
      if (!v10 || (v25 = a6, v24 = PKCField::contains(a1, &v27), a6 = v25, v24))
      {
        *v15 = vadd_f32(*v15, vdiv_f32(COERCE_FLOAT32X2_T(((*a1)[5])(a1, a6, COERCE_DOUBLE(vmul_n_f32(v23, v26)), v11, v12, v22)), v21));
      }

      v15 = (v15 + v16);
      v13 += v18;
      --a3;
    }

    while (a3);
  }
}

void PKCFieldLinearGravity::PKCFieldLinearGravity(PKCFieldLinearGravity *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldLinearGravity::evalForce(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  v4 = *(a1 + 196) * *(a1 + 192);
  v5 = 0.0;
  if (fabsf(v4 * a4) >= 0.000030518)
  {
    *&v5 = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 64), COERCE_FLOAT(*(a1 + 256))), vmulq_lane_f32(*(a1 + 80), *(a1 + 256), 1)), vaddq_f32(vmulq_laneq_f32(*(a1 + 96), *(a1 + 256), 2), vmulq_f32(*(a1 + 112), 0))), v4), a4), PKCField::calculatedFalloff(a1, a2)).u64[0];
  }

  return v5;
}

__n128 PKCFieldLinearGravity::setGravity(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[16] = *a2;
  return result;
}

void PKCFieldRadialGravity::PKCFieldRadialGravity(PKCFieldRadialGravity *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldRadialGravity::evalForce(float32x4_t *a1, float32x4_t a2, double a3, float a4)
{
  v6 = a1[12].f32[0];
  v5 = a1[12].f32[1];
  result = 0.0;
  if (fabsf((v5 * v6) * a4) >= 0.000030518)
  {
    v8 = vaddq_f32(vaddq_f32(vmulq_n_f32(a1[8], a2.f32[0]), vmulq_lane_f32(a1[9], *a2.f32, 1)), vaddq_f32(vmulq_laneq_f32(a1[10], a2, 2), a1[11]));
    v9 = vmulq_f32(v8, v8);
    v9.f32[0] = v9.f32[2] + vaddv_f32(*v9.f32);
    if (v9.f32[0] >= 0.00001)
    {
      v9.f32[0] = sqrtf(v9.f32[0]);
      v10 = vdivq_f32(v8, vdupq_lane_s32(*v9.f32, 0));
      v11 = -(a4 * v5) * v6;
      v12 = a1[12].f32[3];
      v13 = 1.0;
      if (fabsf(v12) >= 0.000030518)
      {
        v14 = a1[13].f32[0];
        if (v9.f32[0] >= v14)
        {
          v14 = v9.f32[0];
        }

        v15 = v10;
        v13 = powf(v14, -v12);
        v10 = v15;
      }

      *&result = vmulq_n_f32(v10, v11 * v13).u64[0];
    }
  }

  return result;
}

void PKCFieldSpring::PKCFieldSpring(PKCFieldSpring *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldSpring::evalForce(float32x4_t *a1, float32x4_t a2)
{
  v4 = a1[12].f32[0];
  v3 = a1[12].f32[1];
  result = 0.0;
  if (fabsf(v3 * v4) >= 0.000030518)
  {
    v6 = vaddq_f32(vaddq_f32(vmulq_n_f32(a1[8], a2.f32[0]), vmulq_lane_f32(a1[9], *a2.f32, 1)), vaddq_f32(vmulq_laneq_f32(a1[10], a2, 2), a1[11]));
    v7 = vmulq_f32(v6, v6);
    v7.f32[0] = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
    if (v7.f32[0] >= 0.00001)
    {
      v8 = vdivq_f32(v6, vdupq_lane_s32(*v7.f32, 0));
      v9 = -(v3 * v4);
      v10 = a1[12].f32[3];
      v11 = 1.0;
      if (fabsf(v10) >= 0.000030518)
      {
        v12 = a1[13].f32[0];
        if (v7.f32[0] >= v12)
        {
          v12 = v7.f32[0];
        }

        v13 = v8;
        v11 = powf(v12, -v10);
        v8 = v13;
      }

      *&result = vmulq_n_f32(v8, v9 * v11).u64[0];
    }
  }

  return result;
}

void PKCFieldElectric::PKCFieldElectric(PKCFieldElectric *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldElectric::evalForce(float32x4_t *a1, float32x4_t a2, double a3, double a4, float a5)
{
  v5 = (a1[12].f32[1] * a1[12].f32[0]) * a5;
  v6 = 0.0;
  if (fabsf(v5) >= 0.000030518)
  {
    v7 = vaddq_f32(vaddq_f32(vmulq_n_f32(a1[8], a2.f32[0]), vmulq_lane_f32(a1[9], *a2.f32, 1)), vaddq_f32(vmulq_laneq_f32(a1[10], a2, 2), a1[11]));
    v8 = vmulq_f32(v7, v7);
    v8.f32[0] = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    v9 = vdivq_f32(v7, vdupq_lane_s32(*v8.f32, 0));
    v10 = a1[12].f32[3];
    v11 = 1.0;
    if (fabsf(v10) >= 0.000030518)
    {
      v12 = a1[13].f32[0];
      if (v8.f32[0] >= v12)
      {
        v12 = v8.f32[0];
      }

      v14 = v9;
      v11 = powf(v12, -v10);
      v9 = v14;
    }

    *&v6 = vmulq_n_f32(v9, v5 * v11).u64[0];
  }

  return v6;
}

void PKCFieldMagnetic::PKCFieldMagnetic(PKCFieldMagnetic *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldMagnetic::evalForce(float32x4_t *a1, float32x4_t a2, float32x4_t a3, double a4, float a5)
{
  v5 = a1[12].f32[1] * a1[12].f32[0];
  v6 = 0.0;
  if (fabsf(v5 * a5) >= 0.000030518)
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    v11 = vmulq_lane_f32(v8, *a3.f32, 1);
    v12 = vaddq_f32(vaddq_f32(vmulq_n_f32(v7, a3.f32[0]), v11), vaddq_f32(vmulq_laneq_f32(v9, a3, 2), vmulq_f32(v10, 0)));
    v13 = vaddq_f32(vaddq_f32(vmulq_f32(v7, 0), vmulq_f32(v8, 0)), vaddq_f32(v9, v10));
    v10.i32[0] = vextq_s8(v12, v12, 8uLL).u32[0];
    v10.i32[1] = v12.i32[0];
    v14.i32[0] = vextq_s8(v13, v13, 8uLL).u32[0];
    v14.i32[1] = v13.i32[0];
    *v11.f32 = vmla_f32(vmul_f32(*&vextq_s8(v13, v13, 4uLL), vneg_f32(*v10.f32)), v14, *&vextq_s8(v12, v12, 4uLL));
    v11.f32[2] = (-*&v12.i32[1] * *v13.i32) + (*v12.i32 * *&v13.i32[1]);
    *&v6 = vmulq_n_f32(v11, v5 * PKCField::calculatedFalloff(a1, a2)).u64[0];
  }

  return v6;
}

void PKCFieldDrag::PKCFieldDrag(PKCFieldDrag *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldDrag::evalForce(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = *(a1 + 192);
  v4 = *(a1 + 196);
  v5 = 0.0;
  if (fabsf(v4 * v3) >= 0.000030518)
  {
    v5 = 0.0;
    v6 = vsubq_f32(a3, vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 64), COERCE_FLOAT(*(a1 + 224))), vmulq_lane_f32(*(a1 + 80), *(a1 + 224), 1)), vaddq_f32(vmulq_f32(*(a1 + 112), 0), vmulq_laneq_f32(*(a1 + 96), *(a1 + 224), 2))));
    v7 = vmulq_f32(v6, v6);
    v8 = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
    if (v8 > 0.000030518)
    {
      *&v5 = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v6, v8), -v4), v3), PKCField::calculatedFalloff(a1, a2)).u64[0];
    }
  }

  return v5;
}

void PKCFieldVortex::PKCFieldVortex(PKCFieldVortex *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldVortex::evalForce(float32x4_t *a1, float32x4_t a2, double a3, double a4)
{
  v4 = a1[12].f32[0];
  v5 = a1[12].f32[1];
  v6 = 0.0;
  if (fabsf((v5 * v4) * *&a4) >= 0.000030518)
  {
    v7 = vaddq_f32(vaddq_f32(vmulq_n_f32(a1[8], a2.f32[0]), vmulq_lane_f32(a1[9], *a2.f32, 1)), vaddq_f32(vmulq_laneq_f32(a1[10], a2, 2), a1[11]));
    v8 = vmulq_f32(v7, v7);
    v8.f32[0] = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    v9 = vdivq_f32(v7, vdupq_lane_s32(*v8.f32, 0));
    v10 = -(v5 * v4);
    v11 = a1[12].f32[3];
    v12 = 1.0;
    if (fabsf(v11) >= 0.000030518)
    {
      v13 = a1[13].f32[0];
      if (v8.f32[0] >= v13)
      {
        v13 = v8.f32[0];
      }

      v16 = v9;
      v17 = a4;
      v12 = powf(v13, -v11);
      v9 = v16;
      a4 = v17;
    }

    v14 = vmlaq_f32(vmulq_f32(v9, xmmword_25E7EB790), xmmword_25E7EB7A0, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
    *&v6 = vdivq_f32(vmulq_n_f32(vnegq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL)), v10 * v12), vdupq_lane_s32(*&a4, 0)).u64[0];
  }

  return v6;
}

void PKCFieldTurbulence::PKCFieldTurbulence(PKCFieldTurbulence *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

void PKCFieldNoise::PKCFieldNoise(PKCFieldNoise *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldTurbulence::evalForce(float32x4_t *a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6)
{
  v6 = 0.0;
  if (fabsf(a1[12].f32[1] * a1[12].f32[0]) >= 0.000030518)
  {
    v11 = *&a4;
    *v7.i64 = PKCFieldNoise::evalForce(a1, a2, *a3.i64, a4, 5.87747298e-39, a6);
    v8 = vmulq_f32(a3, a3);
    v8.f32[0] = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    *&v6 = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v7, v11), v8.f32[0]), v8.f32[0]).u64[0];
  }

  return v6;
}

double PKCFieldNoise::evalForce(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6)
{
  result = 0.0;
  if (fabsf(a1[12].f32[1] * a1[12].f32[0]) >= 0.000030518)
  {
    v26[1] = v11;
    v26[2] = v10;
    v26[3] = v9;
    v26[4] = v8;
    v26[9] = v6;
    v26[10] = v7;
    v15 = a1[15].f32[3] * a6;
    v24 = a2;
    v16 = vaddq_f32(vaddq_f32(vmulq_n_f32(a1[8], a2.f32[0] + v15), vmulq_n_f32(a1[9], a2.f32[1] + v15)), vaddq_f32(a1[11], vmulq_n_f32(a1[10], a2.f32[2] + v15)));
    v17 = (1.25 / (fmaxf(a1[15].f32[2], 0.0) + 0.083333)) + -1.0;
    v26[0] = 0;
    v25 = 0;
    v18 = v17 * v16.f32[0];
    v19 = vmuls_lane_f32(v17, *v16.f32, 1);
    v20 = vmuls_lane_f32(v17, v16, 2);
    v21 = __sincosf_stret(v15);
    v23 = srdnoise3_sincos(v26 + 1, v26, &v25, v18, v19, v20, v21.__sinval, v21.__cosval);
    v22.i64[0] = __PAIR64__(v26[0], HIDWORD(v26[0]));
    v22.i32[2] = v25;
    *&result = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v22, PKCField::calculatedFalloff(a1, v24)), v23), a1[12].f32[1]), a1[12].f32[0]).u64[0];
  }

  return result;
}

void PKCFieldNoise::evalForceVec2(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v4 = *(a1 + 196) * *(a1 + 192);
  if (fabsf(v4) >= 0.000030518)
  {
    v8 = *(a2 + 168);
    v9 = *(a2 + 176);
    a4.n128_u32[0] = *(a2 + 272);
    v30 = a4;
    v10 = *(a2 + 264);
    v11 = *(a2 + 256);
    v12 = *(a1 + 252) * v11;
    v13 = __sincosf_stret(v12);
    v14 = 1.25 / (fmaxf(*(a1 + 248), 0.0) + 0.083333);
    v16 = *(a2 + 8);
    v15 = *(a2 + 16);
    v17 = **(a1 + 8);
    if (v17)
    {
      v18 = [v17 isInfinite] ^ 1;
    }

    else
    {
      v18 = 0;
    }

    v29 = v14 + -1.0;
    v34 = 0uLL;
    v19 = v30;
    v19.f32[0] = v4 / v30.n128_f32[0];
    if (fabsf(*(a1 + 204)) >= 0.000030518)
    {
      if (a3 >= 1)
      {
        v26 = vdupq_lane_s32(*v19.f32, 0).u64[0];
        do
        {
          *v19.f32 = vmul_n_f32(vadd_f32(v10, *v16), v30.n128_f32[0]);
          v32 = v19;
          v33 = v19;
          if (!v18 || (v24 = PKCField::contains(a1, &v33), v19 = v32, v24))
          {
            v25 = vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 128), v12 + v19.f32[0]), vmulq_n_f32(*(a1 + 144), v12 + v19.f32[1])), vaddq_f32(*(a1 + 176), vmulq_n_f32(*(a1 + 160), v12 + 0.0)));
            v25.i32[3] = 0;
            v28 = srdnoise3_sincos_vector(&v34, vmulq_n_f32(v25, v29), v13.__sinval, v13.__cosval);
            *v8 = vadd_f32(*v8, vmul_n_f32(vmul_f32(v26, vmul_n_f32(*v34.f32, v28)), PKCField::calculatedFalloff(a1, v32)));
          }

          v8 = (v8 + v9);
          v16 = (v16 + v15);
          --a3;
        }

        while (a3);
      }
    }

    else if (a3 >= 1)
    {
      v27 = vdupq_lane_s32(*v19.f32, 0).u64[0];
      do
      {
        v20.i64[1] = v30.n128_i64[1];
        *v20.f32 = vmul_n_f32(vadd_f32(v10, *v16), v30.n128_f32[0]);
        v33 = v20;
        if (!v18 || (v31 = v20.i64[0], v21 = PKCField::contains(a1, &v33), v20.i64[0] = v31, v21))
        {
          v22 = vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 128), v12 + v20.f32[0]), vmulq_n_f32(*(a1 + 144), v12 + v20.f32[1])), vaddq_f32(*(a1 + 176), vmulq_n_f32(*(a1 + 160), v12 + 0.0)));
          v22.i32[3] = 0;
          v23 = srdnoise3_sincos_vector(&v34, vmulq_n_f32(v22, v29), v13.__sinval, v13.__cosval);
          *v8 = vadd_f32(*v8, vmul_f32(v27, vmul_n_f32(*v34.f32, v23)));
        }

        v8 = (v8 + v9);
        v16 = (v16 + v15);
        --a3;
      }

      while (a3);
    }
  }
}

void PKCFieldNoise::evalForceVec2(uint64_t a1, uint64_t a2, int a3, int a4, int a5, __n128 a6)
{
  v7 = a3;
  if ((a4 & 1) == 0 && (a5 & 1) == 0)
  {

    PKCFieldNoise::evalForceVec2(a1, a2, a3, a6);
    return;
  }

  v10 = *(a1 + 196) * *(a1 + 192);
  if (fabsf(v10) < 0.000030518)
  {
    return;
  }

  v11 = *(a2 + 168);
  v42 = *(a2 + 176);
  a6.n128_u32[0] = *(a2 + 272);
  v38 = a6;
  v12 = *(a2 + 264);
  v13 = *(a2 + 256);
  v14 = *(a1 + 252) * v13;
  v15 = __sincosf_stret(v14);
  v16 = *(a1 + 248);
  v17 = *(a2 + 8);
  v41 = *(a2 + 16);
  v18 = **(a1 + 8);
  if (v18)
  {
    v37 = [v18 isInfinite] ^ 1;
  }

  else
  {
    v37 = 0;
  }

  v44 = 0uLL;
  v19 = a4;
  if (a4)
  {
    v21 = *(a2 + 200);
    v20 = *(a2 + 208);
    if (!a5)
    {
LABEL_12:
      v36 = 0;
      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }
  }

  v22 = *(a2 + 136);
  v36 = *(a2 + 144);
LABEL_15:
  if (v7 >= 1)
  {
    v23 = 0;
    v35 = (1.25 / (fmaxf(v16, 0.0) + 0.083333)) + -1.0;
    v24.i32[1] = v38.n128_i32[1];
    *v24.i32 = v10 / v38.n128_f32[0];
    v25 = fabsf(*(a1 + 204));
    v33 = *(a1 + 200);
    v34 = vdupq_lane_s32(v24, 0).u64[0];
    v26 = 1;
    do
    {
      if (v19)
      {
        v23 = *v21;
      }

      if (a5)
      {
        v26 = (*(a1 + 240) & *v22) != 0;
        v22 = (v22 + v36);
      }

      if (!(v23 & 1 | !v26))
      {
        v27 = v20;
        v28.i64[1] = v38.n128_i64[1];
        *v28.f32 = vmul_n_f32(vadd_f32(v12, *v17), v38.n128_f32[0]);
        v43 = v28;
        v40 = v28;
        if (!v37 || (v29 = PKCField::contains(a1, &v43), v28.i64[0] = v40.i64[0], v19 = a4, v29))
        {
          v30 = vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 128), v14 + v28.f32[0]), vmulq_n_f32(*(a1 + 144), v14 + v28.f32[1])), vaddq_f32(*(a1 + 176), vmulq_n_f32(*(a1 + 160), v14 + 0.0)));
          v30.i32[3] = 0;
          v31 = srdnoise3_sincos_vector(&v44, vmulq_n_f32(v30, v35), v15.__sinval, v15.__cosval);
          v32 = vmul_f32(v34, vmul_n_f32(*v44.f32, v31));
          if (v25 < 0.000030518)
          {
            v32 = vmul_n_f32(v32, PKCField::calculatedFalloff(a1, v40));
          }

          v19 = a4;
          if (a4)
          {
            *v21 = v33;
          }

          *v11 = vadd_f32(v32, *v11);
        }

        v20 = v27;
      }

      v21 += v20;
      v11 = (v11 + v42);
      v17 = (v17 + v41);
      --v7;
    }

    while (v7);
  }
}

void PKCFieldUser::PKCFieldUser(PKCFieldUser *this, void *a2)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

double PKCFieldUser::evalForce(uint64_t a1, float32x4_t a2, float32x4_t a3, float a4, float a5, double a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  if (fabsf(*(a1 + 196) * *(a1 + 192)) >= 0.000030518)
  {
    v8 = vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 128), a2.f32[0]), vmulq_lane_f32(*(a1 + 144), *a2.f32, 1)), vaddq_f32(vmulq_laneq_f32(*(a1 + 160), a2, 2), *(a1 + 176)));
    v18 = v8.i64[0];
    v19 = v8.i32[2];
    v13[0] = &v18;
    v13[1] = 0;
    v9 = vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 64), a3.f32[0]), vmulq_lane_f32(*(a1 + 80), *a3.f32, 1)), vaddq_f32(vmulq_laneq_f32(*(a1 + 96), a3, 2), vmulq_f32(*(a1 + 112), 0)));
    v17 = v9.i32[2];
    v16 = v9.i64[0];
    v13[2] = &v16;
    v13[3] = 0;
    v11 = a4;
    v12 = a5;
    v13[6] = &v12;
    v13[7] = 0;
    v13[4] = &v11;
    v13[5] = 0;
    *&v13[8] = a6;
    v15 = 0;
    v14 = 0.0;
    v13[9] = &v14;
    v13[10] = 0;
    PKPhysicsFieldUserInvokeBatchBlockWith(*(a1 + 248), 1, v13);
    PKPhysicsFieldUserInvokeBlockWith(*(a1 + 248), 1, v13);
    return v14;
  }

  return v6;
}

void PKCFieldVelocity::PKCFieldVelocity(PKCFieldVelocity *this)
{
  PKCField::PKCField(this);
}

{
  PKCField::PKCField(this);
}

__n128 PKCFieldVelocity::evalVelocity(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    v4 = 0uLL;
    v5 = *v3;
    v6 = *(v3 + 4);
    _D1 = vaddq_f32(vaddq_f32(vmulq_n_f32(*(a1 + 64), a3.f32[0]), vmulq_lane_f32(*(a1 + 80), *a3.f32, 1)), vaddq_f32(vmulq_laneq_f32(*(a1 + 96), a3, 2), vmulq_f32(*(a1 + 112), 0))).u64[0];
    _S3 = v6;
    __asm { FMLA            S4, S3, V1.S[1] }

    v14 = ((v5 / 2) + (*&_D1 * v5));
    v15 = _S4;
    if (((_S4 | v14) & 0x80000000) == 0)
    {
      v16 = v5 <= v14 || v6 <= v15;
      if (!v16 && *(v3 + 8) >= 1)
      {
        v4 = *(*(v3 + 64) + 16 * (v14 + v5 * v15));
      }
    }

    v17 = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v4, PKCField::calculatedFalloff(a1, a2)), *(a1 + 196)), *(a1 + 192));
    result.n128_u64[0] = vmul_laneq_f32(*v17.f32, v17, 3);
  }

  else
  {
    return *(a1 + 224);
  }

  return result;
}

void PKCFieldVelocity::evalVelocityVec2(_DWORD *a1, void *a2, int a3, int a4, int a5, __n128 a6, __n128 a7)
{
  v8 = a3;
  if (a4)
  {
    v10 = a2[25];
    v25 = a2[26];
    if (!a5)
    {
LABEL_3:
      v11 = 0;
      v24 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    v10 = 0;
    if (!a5)
    {
      goto LABEL_3;
    }
  }

  v11 = a2[17];
  v24 = a2[18];
LABEL_6:
  if (a3 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v15 = a2[29];
    v14 = a2[30];
    v16 = a2[2];
    v22 = a2[1];
    v23 = a2[5];
    v17 = a2[33];
    v18 = (a2 + 34);
    v19 = 1;
    v20 = vld1_dup_f32(v18);
    v21 = a5;
    do
    {
      if (a4)
      {
        v13 = *v10;
      }

      if (a5)
      {
        v19 = (a1[60] & *v11) != 0;
        v11 = (v11 + v24);
      }

      if (!(v13 & 1 | !v19))
      {
        a6.n128_u64[0] = vmul_f32(v20, vadd_f32(v17, *(v22 + v12)));
        a7.n128_u64[0] = vmul_f32(v20, *(v23 + v12));
        a6.n128_u32[2] = 0;
        a7.n128_u32[2] = 0;
        v26 = v19;
        a6.n128_f64[0] = (*(*a1 + 48))(a1, a6, a7, 1.0, 0.0, 0.0);
        v19 = v26;
        a5 = v21;
        *v15 = vdiv_f32(a6.n128_u64[0], v20);
      }

      if (a4)
      {
        *v10 = 1;
        v10 += v25;
      }

      v15 = (v15 + v14);
      v12 += v16;
      --v8;
    }

    while (v8);
  }
}

void PKCFieldVelocity::setGrid(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 256);
  *(a1 + 248) = v3;
  *(a1 + 256) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void PKCAether::PKCAether(PKCAether *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

void PKCAether::~PKCAether(PKCAether *this)
{
  v1 = (this + 16);
  std::vector<std::weak_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v1 = (this + 16);
  std::vector<std::weak_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

PKCAether::Evaluator *PKCAether::Evaluator::Evaluator(PKCAether::Evaluator *this, uint64_t **a2)
{
  v3 = 0uLL;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    v5 = PKCAether::fieldCount(a2);
    std::vector<PKCField *>::reserve(this + 3, v5);
    v6 = a2[2];
    v7 = a2[3];
    if (v6 != v7)
    {
      while (1)
      {
        v8 = v6[1];
        if (v8)
        {
          break;
        }

LABEL_12:
        v6 += 2;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }

      v9 = *v6;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *&v29 = 0;
      v10 = std::__shared_weak_count::lock(v8);
      *(&v29 + 1) = v10;
      if (v10)
      {
        *&v29 = v9;
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      else if (!v29)
      {
LABEL_9:
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        std::__shared_weak_count::__release_weak(v8);
        goto LABEL_12;
      }

      std::vector<std::shared_ptr<PKCField>>::push_back[abi:ne200100](this, &v29);
      v10 = *(&v29 + 1);
      goto LABEL_9;
    }

LABEL_13:
    v11 = *this;
    v12 = *(this + 1);
    if (*this != v12)
    {
      do
      {
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *(this + 4);
        v15 = *(this + 5);
        if (v16 >= v15)
        {
          v18 = *(this + 3);
          v19 = (v16 - v18) >> 3;
          if ((v19 + 1) >> 61)
          {
            std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
          }

          v20 = v15 - v18;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(this + 24, v22);
          }

          v23 = (8 * v19);
          *v23 = v14;
          v17 = 8 * v19 + 8;
          v24 = *(this + 3);
          v25 = *(this + 4) - v24;
          v26 = v23 - v25;
          memcpy(v23 - v25, v24, v25);
          v27 = *(this + 3);
          *(this + 3) = v26;
          *(this + 4) = v17;
          *(this + 5) = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v16 = v14;
          v17 = (v16 + 1);
        }

        *(this + 4) = v17;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    v3 = *a2;
  }

  *(this + 3) = v3;
  return this;
}

void sub_25E7C7B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  v13 = *(v11 + 24);
  if (v13)
  {
    *(v11 + 32) = v13;
    operator delete(v13);
  }

  a11 = v11;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}