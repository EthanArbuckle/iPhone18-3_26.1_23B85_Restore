void *std::vector<PKCField *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(result, a2);
    }

    std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t PKCAether::fieldCount(PKCAether *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 == v2)
  {
    v2 = *(this + 2);
  }

  else
  {
    do
    {
      v4 = *(v1 + 8);
      if (!v4 || *(v4 + 8) == -1)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<PKCField> *,std::weak_ptr<PKCField> *,std::weak_ptr<PKCField> *>(&v9, (v1 + 16), v2, v1);
        v2 = v5;
        v6 = *(this + 3);
        if (v6 != v5)
        {
          do
          {
            v7 = *(v6 - 1);
            if (v7)
            {
              std::__shared_weak_count::__release_weak(v7);
            }

            --v6;
          }

          while (v6 != v2);
        }

        *(this + 3) = v2;
      }

      else
      {
        v1 += 16;
      }
    }

    while (v1 != v2);
    v1 = *(this + 2);
  }

  return (v2 - v1) >> 4;
}

void **std::vector<std::shared_ptr<PKCField>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<PKCField>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<PKCField>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t PKCAether::Evaluator::evalVelocity(uint64_t result, int a2, float32x4_t a3, __n128 a4, float a5, float a6, double a7)
{
  v21 = a3;
  v11 = *(result + 24);
  v12 = *(result + 32);
  if (v11 == v12)
  {
LABEL_15:
    while (v11 != v12)
    {
      v14 = *v11;
      if (*(*v11 + 244) == 1)
      {
        result = (*(*v14 + 56))(*v11);
        if (result)
        {
          if ((*(v14 + 240) & a2) != 0)
          {
            result = PKCField::contains(v14, &v21);
            if (result)
            {
              goto LABEL_17;
            }
          }
        }
      }

      ++v11;
    }
  }

  else
  {
    v13 = result;
    while (1)
    {
      v14 = *v11;
      if (*(*v11 + 244) == 1)
      {
        result = (*(*v14 + 56))(*v11);
        if (result)
        {
          if ((*(v14 + 240) & a2) != 0 && *(v14 + 200) == 1)
          {
            result = PKCField::contains(v14, &v21);
            if (result)
            {
              break;
            }
          }
        }
      }

      if (++v11 == v12)
      {
        v11 = *(v13 + 24);
        v12 = *(v13 + 32);
        goto LABEL_15;
      }
    }

LABEL_17:
    v18 = *(*v14 + 48);
    v15.n128_f32[0] = a5;
    v16.n128_f32[0] = a6;
    v17.n128_f64[0] = a7;

    return v18(v14, a3, a4, v15, v16, v17);
  }

  return result;
}

void PKCAether::Evaluator::evalForce(float32x4_t *a1, int a2, float a3, float32x4_t a4, __n128 a5, __n128 a6, float a7, double a8)
{
  v25 = a4;
  v12 = a1[1].i64[1];
  v13 = a1[2].i64[0];
  if (v12 == v13)
  {
LABEL_9:
    v24 = vmulq_n_f32(vmulq_n_f32(a1[3], a6.n128_f32[0]), a3);
    while (v12 != v13)
    {
      v17 = *v12;
      if (*(*v12 + 244) == 1 && ((*(*v17 + 56))(*v12) & 1) == 0 && (v17[60] & a2) != 0)
      {
        if (PKCField::contains(v17, &v25))
        {
          *v18.i64 = (*(*v17 + 40))(v17, a4, a5, a6, a7, a8);
          v24 = vaddq_f32(v24, v18);
        }
      }

      ++v12;
    }
  }

  else
  {
    while (1)
    {
      v14 = *v12;
      if (*(*v12 + 244) == 1 && ((*(*v14 + 56))(*v12) & 1) == 0 && (*(v14 + 240) & a2) != 0 && *(v14 + 200) == 1 && (PKCField::contains(v14, &v25) & 1) != 0)
      {
        break;
      }

      if (++v12 == v13)
      {
        v12 = a1[1].i64[1];
        v13 = a1[2].i64[0];
        goto LABEL_9;
      }
    }

    v19 = *(*v14 + 40);
    v15.n128_f32[0] = a7;
    v16.n128_f64[0] = a8;

    v19(v14, a4, a5, a6, v15, v16);
  }
}

void PKCAether::Evaluator::evalFieldsVec2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 152);
  if (v5 == 1)
  {
    v6 = *(a2 + 128);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = -1;
  }

  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  while (v7 != v8)
  {
    v9 = *v7;
    v30 = v9;
    if (*(v9 + 244) == 1 && (*(v9 + 240) & v6) != 0)
    {
      if (**(v9 + 8))
      {
        if ([**(v9 + 8) isEmpty])
        {
          goto LABEL_33;
        }

        v9 = v30;
      }

      if ((*(*v9 + 56))(v9))
      {
        v10 = **(v30 + 8);
        if (*(v30 + 200))
        {
          if (v10)
          {
            v11 = [v10 isInfinite];
          }

          else
          {
            v11 = 1;
          }

          p_p = v37;
          if (v11 && (v5 & 1) != 0)
          {
            break;
          }

          goto LABEL_32;
        }

        if (v10)
        {
          v14 = [v10 isInfinite];
        }

        else
        {
          v14 = 1;
        }

        p_p = v37;
        if (v14)
        {
LABEL_31:
          if (v5)
          {
            goto LABEL_33;
          }
        }
      }

      else if (*(v30 + 200))
      {
        v12 = **(v30 + 8);
        if (v12)
        {
          v13 = [v12 isInfinite];
        }

        else
        {
          v13 = 1;
        }

        p_p = &v34;
        if (v13)
        {
          goto LABEL_31;
        }
      }

      else
      {
        p_p = &__p;
      }

LABEL_32:
      std::vector<PKPhysicsShape *>::push_back[abi:ne200100](p_p, &v30);
    }

LABEL_33:
    ++v7;
  }

  if (a3 >= 1)
  {
    v17 = *(a2 + 168);
    v16 = *(a2 + 176);
    v18 = a3;
    do
    {
      *v17 = 0;
      v17 = (v17 + v16);
      --v18;
    }

    while (v18);
  }

  v19 = v37[1];
  v20 = v37[0];
  if (v37[0] == v37[1] && v34 == v35)
  {
    v28 = __p;
    v29 = v32;
    while (v28 != v29)
    {
      (*(**v28 + 24))(*v28, a2, a3, 0, v5 ^ 1u);
      ++v28;
    }
  }

  else
  {
    if (a3 >= 1)
    {
      v22 = *(a2 + 200);
      v21 = *(a2 + 208);
      v23 = a3;
      do
      {
        *v22 = 0;
        v22 += v21;
        --v23;
      }

      while (v23);
    }

    while (v20 != v19)
    {
      (*(**v20 + 32))(*v20, a2, a3, 1, v5 ^ 1u);
      ++v20;
    }

    v24 = v34;
    v25 = v35;
    while (v24 != v25)
    {
      (*(**v24 + 24))(*v24, a2, a3, 1, v5 ^ 1u);
      ++v24;
    }

    v26 = __p;
    v27 = v32;
    while (v26 != v27)
    {
      (*(**v26 + 24))(*v26, a2, a3, 1, v5 ^ 1u);
      ++v26;
    }
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }
}

void sub_25E7C8510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void PKCAether::addField(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *a2;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v7 = (a1 + 16);
  if (v8 != v9)
  {
    while (1)
    {
      v10 = v8[1];
      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = *v8;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v12 = std::__shared_weak_count::lock(v10);
      if (!v12)
      {
        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      std::__shared_weak_count::__release_weak(v10);
      if (v11 == v6)
      {
        goto LABEL_15;
      }

LABEL_13:
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_14;
      }
    }

    std::__shared_weak_count::__release_weak(v10);
LABEL_12:
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_14:
  std::vector<std::weak_ptr<PKCField>>::push_back[abi:ne200100](v7, a2);
LABEL_15:
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_25E7C8664(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::weak_ptr<PKCField>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<PKCField>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::weak_ptr<PKCField>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void PKCAether::removeField(uint64_t a1, uint64_t *a2)
{
  PKCAether::fieldCount(a1);
  v4 = a2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *a2;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = *(a1 + 16);
  if (v7 != *(a1 + 24))
  {
    do
    {
      v8 = *(v7 + 8);
      if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
      {
        v10 = *v7;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        if (v10 == v6)
        {
          goto LABEL_10;
        }
      }

      else if (!v6)
      {
LABEL_10:
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<PKCField> *,std::weak_ptr<PKCField> *,std::weak_ptr<PKCField> *>(&v15, (v7 + 16), *(a1 + 24), v7);
        v12 = v11;
        for (i = *(a1 + 24); i != v12; i -= 16)
        {
          v14 = *(i - 8);
          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }
        }

        *(a1 + 24) = v12;
        continue;
      }

      v7 += 16;
      v12 = *(a1 + 24);
    }

    while (v7 != v12);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_25E7C8880(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::weak_ptr<PKCField>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void PKCFieldLinearGravity::~PKCFieldLinearGravity(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldRadialGravity::~PKCFieldRadialGravity(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldSpring::~PKCFieldSpring(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldElectric::~PKCFieldElectric(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldMagnetic::~PKCFieldMagnetic(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldDrag::~PKCFieldDrag(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldVortex::~PKCFieldVortex(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldNoise::~PKCFieldNoise(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldTurbulence::~PKCFieldTurbulence(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldUser::~PKCFieldUser(PKCField *this)
{
  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void PKCFieldVelocity::~PKCFieldVelocity(PKCField *this)
{
  *this = &unk_287079790;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PKCField::~PKCField(this);
}

{
  *this = &unk_287079790;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PKCField::~PKCField(this);

  JUMPOUT(0x25F8C0280);
}

void std::vector<std::weak_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<PKCField>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<PKCField>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<PKCField>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<PKCField>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<PKCField>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void **std::__split_buffer<std::weak_ptr<PKCField>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<PKCField>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::weak_ptr<PKCField>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<PKCField> *,std::weak_ptr<PKCField> *,std::weak_ptr<PKCField> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void b2ChainShape::~b2ChainShape(b2ChainShape *this)
{
  *this = &unk_287079D08;
  v2 = *(this + 2);
  *(this + 3) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

{
  *this = &unk_287079D08;
  v2 = *(this + 2);
  *(this + 3) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

{
  *this = &unk_287079D08;
  v2 = *(this + 2);
  *(this + 3) = v2;
  if (v2)
  {
    operator delete(v2);
  }

  JUMPOUT(0x25F8C0280);
}

void *b2ChainShape::CreateLoop(void **this, const b2Vec2 *a2, int a3)
{
  std::vector<b2Vec2>::resize((this + 2), a3 + 1);
  result = memcpy(this[2], a2, 8 * a3);
  *(this[2] + a3) = *this[2];
  v7 = this[2];
  this[5] = v7[a3 - 1];
  this[6] = v7[1];
  *(this + 28) = 257;
  return result;
}

void *b2ChainShape::CreateChain(void **this, const b2Vec2 *a2, int a3)
{
  if (a3 <= 1)
  {
    b2ChainShape::CreateChain();
  }

  std::vector<b2Vec2>::resize((this + 2), a3);
  result = memcpy(this[2], a2, 8 * a3);
  *(this + 28) = 0;
  return result;
}

uint64_t b2ChainShape::SetPrevVertex(uint64_t this, const b2Vec2 *a2)
{
  *(this + 40) = *a2;
  *(this + 56) = 1;
  return this;
}

uint64_t b2ChainShape::SetNextVertex(uint64_t this, const b2Vec2 *a2)
{
  *(this + 48) = *a2;
  *(this + 57) = 1;
  return this;
}

uint64_t b2ChainShape::GetChildEdge(uint64_t this, b2EdgeShape *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0 || (v3 = *(this + 16), (((*(this + 24) - v3) >> 3) - 1) <= a3))
  {
    b2ChainShape::GetChildEdge();
  }

  *(a2 + 2) = 1;
  *(a2 + 3) = *(this + 12);
  *(a2 + 2) = *(v3 + 8 * a3);
  *(a2 + 3) = *(*(this + 16) + 8 * a3 + 8);
  if (a3)
  {
    *(a2 + 4) = *(*(this + 16) + 8 * a3 - 8);
    v4 = 1;
  }

  else
  {
    *(a2 + 4) = *(this + 40);
    v4 = *(this + 56);
  }

  *(a2 + 48) = v4;
  v5 = *(this + 16);
  if ((((*(this + 24) - v5) >> 3) - 2) <= a3)
  {
    *(a2 + 5) = *(this + 48);
    v6 = *(this + 57);
  }

  else
  {
    *(a2 + 5) = *(v5 + 8 * a3 + 16);
    v6 = 1;
  }

  *(a2 + 49) = v6;
  return this;
}

void b2ChainShape::ComputeDistance(b2ChainShape *this, const b2Transform *a2, float32x2_t *a3, float *a4, b2Vec2 *a5, unsigned int a6)
{
  v10[0] = &unk_287079F18;
  v10[1] = 0x3C1374BC00000001;
  v10[4] = 0;
  v10[5] = 0;
  v11 = 0;
  b2ChainShape::GetChildEdge(this, v10, a6);
  b2EdgeShape::ComputeDistance(v10, a2, a3, a4, a5);
}

uint64_t b2ChainShape::RayCast(uint64_t a1, float *a2, float *a3, float *a4, int a5)
{
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24) - v5) >> 3;
  if (v6 <= a5)
  {
    b2ChainShape::RayCast();
  }

  v9[0] = &unk_287079F18;
  v9[1] = 0x3C1374BC00000001;
  v9[4] = 0;
  v9[5] = 0;
  v10 = 0;
  if (a5 + 1 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a5 + 1;
  }

  v9[2] = *(v5 + 8 * a5);
  v9[3] = *(v5 + 8 * v7);
  return b2EdgeShape::RayCast(v9, a2, a3, a4);
}

int8x16_t b2ChainShape::ComputeAABB(uint64_t a1, int8x16_t *a2, uint64_t *a3, int a4, int32x4_t a5, int32x4_t a6)
{
  v6 = *(a1 + 16);
  v7 = (*(a1 + 24) - v6) >> 3;
  if (v7 <= a4)
  {
    b2ChainShape::ComputeAABB();
  }

  if (a4 + 1 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 + 1;
  }

  v9 = (v6 + 8 * a4);
  a5.i32[0] = *v9;
  a6.i32[0] = v9[1];
  v10 = (v6 + 8 * v8);
  v12.i64[0] = *a3;
  v11.i64[0] = a3[1];
  v13.i64[0] = v11.i64[0];
  v13.i64[1] = v11.i64[0];
  v12.i64[1] = *a3;
  v11.f32[0] = -v11.f32[0];
  v11.i64[1] = v11.i64[0];
  a5.i32[1] = *v10;
  a6.i32[1] = v10[1];
  v14 = vaddq_f32(vmlaq_f32(vmulq_f32(v11, vzip1q_s32(a6, a6)), vzip1q_s32(a5, a5), vrev64q_s32(v13)), v12);
  result = vbslq_s8(vcgtq_f32(vextq_s8(v14, v14, 8uLL), v14), vdupq_lane_s64(v14.i64[0], 0), vdupq_laneq_s64(v14, 1));
  *a2 = result;
  return result;
}

BOOL b2CircleShape::TestPoint(b2CircleShape *this, const b2Transform *a2, const b2Vec2 *a3)
{
  var0 = a2->var1.var0;
  var1 = a2->var1.var1;
  v6 = *(this + 4);
  v5 = *(this + 5);
  return (((a3->y - (a2->var0.y + ((var1 * v5) + (var0 * v6)))) * (a3->y - (a2->var0.y + ((var1 * v5) + (var0 * v6))))) + ((a3->x - (a2->var0.x + ((var1 * v6) - (var0 * v5)))) * (a3->x - (a2->var0.x + ((var1 * v6) - (var0 * v5)))))) <= (*(this + 3) * *(this + 3));
}

float32x2_t b2CircleShape::ComputeDistance(b2CircleShape *this, const b2Transform *a2, float32x2_t *a3, float *a4, b2Vec2 *a5)
{
  var1 = a2->var1;
  v6 = vrev64_s32(var1);
  var1.var0 = -var1.var0;
  v7 = vsub_f32(*a3, vadd_f32(a2->var0, vmla_n_f32(vmul_n_f32(var1, *(this + 5)), v6, *(this + 4))));
  v8 = sqrtf(COERCE_FLOAT(vmul_f32(v7, v7).i32[1]) + (v7.f32[0] * v7.f32[0]));
  *a4 = v8 - *(this + 3);
  result = vmul_n_f32(v7, 1.0 / v8);
  *a5 = result;
  return result;
}

uint64_t b2CircleShape::RayCast(float *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a4[1];
  v5 = vrev64_s32(v4);
  v4.f32[0] = -v4.f32[0];
  v6 = vsub_f32(*a3, vadd_f32(*a4, vmla_n_f32(vmul_n_f32(v4, a1[5]), v5, a1[4])));
  v7 = vsub_f32(a3[1], *a3);
  v8 = vmuls_lane_f32(v6.f32[1], v7, 1) + (v6.f32[0] * v7.f32[0]);
  v9 = vmuls_lane_f32(v7.f32[1], v7, 1) + (v7.f32[0] * v7.f32[0]);
  v10 = (v8 * v8) - (v9 * ((vmuls_lane_f32(v6.f32[1], v6, 1) + (v6.f32[0] * v6.f32[0])) - (a1[3] * a1[3])));
  if (v10 < 0.0 || v9 < 0.00000011921)
  {
    return 0;
  }

  v12 = v8 + sqrtf(v10);
  if (v12 > 0.0)
  {
    return 0;
  }

  v13 = -v12;
  if ((v9 * a3[2].f32[0]) < v13)
  {
    return 0;
  }

  v15 = v13 / v9;
  a2[1].f32[0] = v15;
  v16 = vadd_f32(v6, vmul_n_f32(v7, v15));
  *a2 = v16;
  v17 = sqrtf(COERCE_FLOAT(vmul_f32(v16, v16).i32[1]) + (v16.f32[0] * v16.f32[0]));
  if (v17 >= 0.00000011921)
  {
    *a2 = vmul_n_f32(v16, 1.0 / v17);
  }

  return 1;
}

float32x4_t b2CircleShape::ComputeAABB(uint64_t a1, _OWORD *a2, float32x2_t *a3)
{
  v3 = a3[1];
  v4 = vrev64_s32(v3);
  v3.f32[0] = -v3.f32[0];
  v5 = (a1 + 12);
  *v6.f32 = vadd_f32(*a3, vmla_n_f32(vmul_n_f32(v3, *(a1 + 20)), v4, *(a1 + 16)));
  v6.i64[1] = v6.i64[0];
  v7 = vld1q_dup_f32(v5);
  *&v8 = vsubq_f32(v6, v7).u64[0];
  result = vaddq_f32(v6, v7);
  *(&v8 + 1) = result.i64[1];
  *a2 = v8;
  return result;
}

float b2CircleShape::ComputeMass(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a1 + 12) * ((a3 * 3.1416) * *(a1 + 12));
  *a2 = v3;
  *(a2 + 4) = *(a1 + 16);
  result = v3 * (((*(a1 + 20) * *(a1 + 20)) + (*(a1 + 16) * *(a1 + 16))) + ((*(a1 + 12) * 0.5) * *(a1 + 12)));
  *(a2 + 12) = result;
  return result;
}

uint64_t b2EdgeShape::Set(uint64_t this, const b2Vec2 *a2, const b2Vec2 *a3)
{
  *(this + 16) = *a2;
  *(this + 24) = *a3;
  *(this + 48) = 0;
  return this;
}

void b2EdgeShape::ComputeDistance(b2EdgeShape *this, const b2Transform *a2, float32x2_t *a3, float *a4, b2Vec2 *a5)
{
  var1 = a2->var1;
  v6 = vrev64_s32(var1);
  var1.var0 = -var1.var0;
  v7 = vadd_f32(a2->var0, vmla_n_f32(vmul_n_f32(var1, *(this + 5)), v6, *(this + 4)));
  v8 = vadd_f32(a2->var0, vmla_n_f32(vmul_n_f32(var1, *(this + 7)), v6, *(this + 6)));
  v9 = vsub_f32(*a3, v7);
  v10 = vsub_f32(v8, v7);
  v11 = COERCE_FLOAT(vmul_f32(v9, v10).i32[1]) + (v9.f32[0] * v10.f32[0]);
  if (v11 > 0.0)
  {
    v12 = vmuls_lane_f32(v10.f32[1], v10, 1) + (v10.f32[0] * v10.f32[0]);
    if (v11 <= v12)
    {
      v9 = vsub_f32(v9, vmul_n_f32(v10, v11 / v12));
    }

    else
    {
      v9 = vsub_f32(*a3, v8);
    }
  }

  v13 = sqrtf(COERCE_FLOAT(vmul_f32(v9, v9).i32[1]) + (v9.f32[0] * v9.f32[0]));
  *a4 = v13;
  if (v13 <= 0.0)
  {
    {
      v15 = a5;
      b2Simplex::GetClosestPoint();
      a5 = v15;
    }

    v14 = b2Vec2_zero_fn(void)::b2Vec2_zero_init;
  }

  else
  {
    v14 = vmul_n_f32(v9, 1.0 / v13);
  }

  *a5 = v14;
}

uint64_t b2EdgeShape::RayCast(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a4[1];
  v5 = *a3 - *a4;
  v6 = a3[1] - v4;
  v8 = a4[2];
  v7 = a4[3];
  v9 = (v6 * v8) + (v7 * v5);
  v10 = (v7 * v6) - (v8 * v5);
  v11 = a3[2] - *a4;
  v12 = a3[3] - v4;
  v13 = (v8 * v12) + (v7 * v11);
  v14 = (v7 * v12) - (v8 * v11);
  v15 = v13 - v9;
  v16 = v14 - v10;
  v17 = a1[4];
  v18 = a1[5];
  v19 = a1[6] - v17;
  v20 = a1[7] - v18;
  v21 = -v19;
  v22 = sqrtf((v19 * v19) + (v20 * v20));
  if (v22 >= 0.00000011921)
  {
    v24 = 1.0 / v22;
    v23 = v20 * (1.0 / v22);
    v21 = v24 * v21;
  }

  else
  {
    v23 = a1[7] - v18;
  }

  v25 = (v16 * v21) + (v23 * v15);
  if (v25 == 0.0)
  {
    return 0;
  }

  v26 = ((v18 - v10) * v21) + (v23 * (v17 - v9));
  v27 = v26 / v25;
  if (v27 < 0.0 || a3[4] < v27)
  {
    return 0;
  }

  v29 = (v20 * v20) + (v19 * v19);
  if (v29 == 0.0)
  {
    return 0;
  }

  v30 = ((v20 * ((v10 + (v16 * v27)) - v18)) + (((v9 + (v15 * v27)) - v17) * v19)) / v29;
  if (v30 < 0.0 || v30 > 1.0)
  {
    return 0;
  }

  v33 = -v23;
  v34 = -v21;
  if (v26 <= 0.0)
  {
    v33 = v23;
    v34 = v21;
  }

  *a2 = v33;
  a2[1] = v34;
  a2[2] = v27;
  return 1;
}

float32x4_t b2EdgeShape::ComputeAABB(_DWORD *a1, _OWORD *a2, uint64_t *a3, int32x4_t a4, int32x4_t a5)
{
  a4.i32[0] = a1[4];
  a5.i32[0] = a1[5];
  v5 = (a1 + 3);
  v7.i64[0] = *a3;
  v6.i64[0] = a3[1];
  v8.i64[0] = v6.i64[0];
  v8.i64[1] = v6.i64[0];
  v7.i64[1] = *a3;
  v6.f32[0] = -v6.f32[0];
  v6.i64[1] = v6.i64[0];
  a5.i32[1] = a1[7];
  a4.i32[1] = a1[6];
  v9 = vaddq_f32(vmlaq_f32(vmulq_f32(v6, vzip1q_s32(a5, a5)), vzip1q_s32(a4, a4), vrev64q_s32(v8)), v7);
  v10 = vld1q_dup_f32(v5);
  v11 = vbslq_s8(vcgtq_f32(vextq_s8(v9, v9, 8uLL), v9), vdupq_lane_s64(v9.i64[0], 0), vdupq_laneq_s64(v9, 1));
  *&v12 = vsubq_f32(v11, v10).u64[0];
  result = vaddq_f32(v11, v10);
  *(&v12 + 1) = result.i64[1];
  *a2 = v12;
  return result;
}

float32x2_t b2EdgeShape::ComputeMass(float32x2_t *a1, uint64_t a2)
{
  *a2 = 0;
  result = vmul_f32(vadd_f32(a1[2], a1[3]), 0x3F0000003F000000);
  *(a2 + 4) = result;
  *(a2 + 12) = 0;
  return result;
}

double b2PolygonShape::SetAsBox(b2PolygonShape *this, float a2, float a3)
{
  std::vector<b2Vec2>::resize(this + 16, 4uLL);
  std::vector<b2Vec2>::resize(this + 40, 4uLL);
  v6 = *(this + 2);
  *v6 = -a2;
  v6[1] = -a3;
  v6[2] = a2;
  v6[3] = -a3;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = -a2;
  v6[7] = a3;
  v7 = *(this + 5);
  result = -0.0078125;
  *v7 = xmmword_25E7EB8F0;
  v7[1] = xmmword_25E7EB900;
  *(this + 8) = 0;
  return result;
}

void b2PolygonShape::SetAsBox(b2PolygonShape *this, float a2, float a3, const b2Vec2 *a4, float a5)
{
  std::vector<b2Vec2>::resize(this + 16, 4uLL);
  std::vector<b2Vec2>::resize(this + 40, 4uLL);
  v10 = *(this + 2);
  *v10 = -a2;
  v10[1] = -a3;
  v10[2] = a2;
  v10[3] = -a3;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = -a2;
  v10[7] = a3;
  v11 = *(this + 5);
  *v11 = xmmword_25E7EB8F0;
  v11[1] = xmmword_25E7EB900;
  *(this + 8) = *a4;
  x = a4->x;
  y = a4->y;
  v14 = __sincosf_stret(a5);
  v15 = *(this + 3) - v10;
  if ((v15 >> 3) >= 1)
  {
    v16 = -v14.__sinval;
    v17 = (v15 >> 3) & 0x7FFFFFFF;
    v18 = v10 + 1;
    v19 = v11 + 1;
    do
    {
      v20 = *(v18 - 1);
      v21 = x + ((*v18 * v16) + (v14.__cosval * v20));
      v22 = y + ((v14.__cosval * *v18) + (v14.__sinval * v20));
      *(v18 - 1) = v21;
      *v18 = v22;
      v23 = *(v19 - 1);
      v24 = (*v19 * v16) + (v14.__cosval * v23);
      v25 = (v14.__cosval * *v19) + (v14.__sinval * v23);
      *(v19 - 1) = v24;
      *v19 = v25;
      v18 += 2;
      v19 += 2;
      --v17;
    }

    while (v17);
  }
}

BOOL b2PolygonShape::isValidShape(b2PolygonShape *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3) - v1;
  if ((v2 >> 3) < 3)
  {
    return 0;
  }

  v4 = (v2 >> 3) & 0x7FFFFFFF;
  v5 = (v1 + 4);
  v6 = 0.0;
  v7 = 1;
  do
  {
    v8 = v7;
    if (v7 >= v4)
    {
      v8 = 0;
    }

    v6 = v6 + (((*(v5 - 1) * *(v1 + 8 * v8 + 4)) - (*v5 * *(v1 + 8 * v8))) * 0.5);
    v5 += 2;
    ++v7;
  }

  while (v7 - v4 != 1);
  return fabsf(v6) > 0.00000011921;
}

BOOL b2PolygonShape::Set(b2PolygonShape *this, const b2Vec2 *a2, int a3)
{
  v6 = a3;
  std::vector<b2Vec2>::vector[abi:ne200100](__p, a3);
  std::vector<b2Vec2>::vector[abi:ne200100](&v39, v6);
  if (a3 >= 1)
  {
    v7 = 0;
    do
    {
      *(*__p + v7 * 8) = a2[v7];
      ++v7;
    }

    while (a3 != v7);
  }

  v8 = *__p;
  v9 = *(this + 4);
  v10 = *&__p[8];
  v11 = *(this + 1);
  *(this + 2) = *__p;
  *__p = v11;
  *(this + 24) = v10;
  *&__p[16] = v9;
  if (a3 < 1)
  {
    v24 = 1;
  }

  else
  {
    _D3 = vsub_f32(v8[a3 != 1], *v8);
    if ((COERCE_FLOAT(vmul_f32(_D3, _D3).i32[1]) + (_D3.f32[0] * _D3.f32[0])) < 1.4211e-14)
    {
      v24 = 0;
LABEL_17:
      *(this + 3) = v8;
      v25 = v39;
      if (v39)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    v13 = (v39 + 4);
    v14 = 1;
    while (1)
    {
      v15 = -_D3.f32[0];
      *(v13 - 1) = _D3.f32[1];
      _S5 = _D3.i32[1];
      *v13 = -_D3.f32[0];
      __asm { FMLA            S6, S5, V3.S[1] }

      _D3.f32[0] = sqrtf(_S6);
      if (_D3.f32[0] >= 0.00000011921)
      {
        _D3.f32[0] = 1.0 / _D3.f32[0];
        *(v13 - 1) = _D3.f32[1] * _D3.f32[0];
        *v13 = _D3.f32[0] * v15;
      }

      if (a3 == v14)
      {
        break;
      }

      v22 = v14 + 1;
      if (v14 + 1 < v6)
      {
        v23 = v14 + 1;
      }

      else
      {
        v23 = 0;
      }

      _D3 = vsub_f32(v8[v23], v8[v14]);
      v13 += 2;
      ++v14;
      if ((COERCE_FLOAT(vmul_f32(_D3, _D3).i32[1]) + (_D3.f32[0] * _D3.f32[0])) < 1.4211e-14)
      {
        v24 = v22 - 1 >= v6;
        goto LABEL_17;
      }
    }

    v24 = v14 >= v6;
  }

  v26 = *(this + 40);
  *(this + 40) = v39;
  v39 = v26;
  v27 = *(this + 7);
  *(this + 7) = v40;
  v40 = v27;
  if (((v10 - v8) >> 3) < 3)
  {
    __assert_rtn("ComputeCentroid", "b2PolygonShape.cpp", 83, "count >= 3");
  }

  v28 = ((v10 - v8) >> 3) & 0x7FFFFFFFLL;
  v29 = 0.0;
  v30 = 1;
  v31 = v8;
  v32 = v28;
  v33 = 0;
  do
  {
    v34 = v30;
    if (v30 >= v28)
    {
      v34 = 0;
    }

    v35 = *v31++;
    v36 = v8[v34];
    v37 = ((-v35.f32[1] * v36.f32[0]) + (v35.f32[0] * v36.f32[1])) * 0.5;
    v29 = v29 + v37;
    v33 = vadd_f32(v33, vmul_n_f32(vadd_f32(vadd_f32(v35, 0), v36), v37 * 0.33333));
    ++v30;
    --v32;
  }

  while (v32);
  *(this + 8) = vmul_n_f32(v33, 1.0 / v29);
  v25 = v26;
  if (v26)
  {
LABEL_26:
    *(&v39 + 1) = v25;
    operator delete(v25);
  }

LABEL_27:
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  return v24;
}

void sub_25E7C9F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL b2PolygonShape::TestPoint(b2PolygonShape *this, const b2Transform *a2, const b2Vec2 *a3)
{
  v3 = *(this + 2);
  v4 = *(this + 3) - v3;
  if ((v4 >> 3) < 1)
  {
    return 1;
  }

  v5 = a3->x - a2->var0.x;
  v6 = a3->y - a2->var0.y;
  var0 = a2->var1.var0;
  var1 = a2->var1.var1;
  v9 = (v6 * var0) + (var1 * v5);
  v10 = (var1 * v6) - (var0 * v5);
  v11 = *(this + 5);
  if ((((v10 - v3[1]) * v11[1]) + (*v11 * (v9 - *v3))) > 0.0)
  {
    return 0;
  }

  v12 = (v4 >> 3) & 0x7FFFFFFF;
  v13 = v3 + 3;
  v14 = v11 + 3;
  v15 = 1;
  do
  {
    v16 = v15;
    if (v12 == v15)
    {
      break;
    }

    v17 = ((v10 - *v13) * *v14) + (*(v14 - 1) * (v9 - *(v13 - 1)));
    ++v15;
    v13 += 2;
    v14 += 2;
  }

  while (v17 <= 0.0);
  return v16 >= v12;
}

float b2PolygonShape::ComputeDistance(b2PolygonShape *this, const b2Transform *a2, const b2Vec2 *a3, float *a4, b2Vec2 *a5)
{
  v5 = a3->x - a2->var0.x;
  v6 = a3->y - a2->var0.y;
  var0 = a2->var1.var0;
  var1 = a2->var1.var1;
  v9 = (v6 * var0) + (var1 * v5);
  v10 = (var1 * v6) - (var0 * v5);
  v11 = *(this + 2);
  v12 = *(this + 3) - v11;
  if ((v12 >> 3) < 1)
  {
    v16 = -3.4028e38;
LABEL_14:
    *a4 = v16;
    v31 = a2->var1.var0;
    v30 = a2->var1.var1;
    v28 = (v30 * v9) - (v31 * v10);
    result = (v10 * v30) + (v31 * v9);
    goto LABEL_15;
  }

  v13 = (v12 >> 3) & 0x7FFFFFFF;
  v14 = (*(this + 5) + 4);
  v15 = (v11 + 4);
  v16 = -3.4028e38;
  v17 = v13;
  v18 = v10;
  v19 = v9;
  do
  {
    v20 = *(v14 - 1);
    v21 = (v10 - *v15) * *v14;
    if ((v21 + (v20 * (v9 - *(v15 - 1)))) > v16)
    {
      v19 = *(v14 - 1);
      v18 = *v14;
      v16 = v21 + (v20 * (v9 - *(v15 - 1)));
    }

    v14 += 2;
    v15 += 2;
    --v17;
  }

  while (v17);
  if (v16 <= 0.0)
  {
    v10 = v18;
    v9 = v19;
    goto LABEL_14;
  }

  v22 = v16 * v16;
  v23 = (v11 + 4);
  do
  {
    v24 = v9 - *(v23 - 1);
    v25 = v10 - *v23;
    if (v22 > ((v25 * v25) + (v24 * v24)))
    {
      v18 = v10 - *v23;
      v19 = v9 - *(v23 - 1);
      v22 = (v25 * v25) + (v24 * v24);
    }

    v23 += 2;
    --v13;
  }

  while (v13);
  *a4 = sqrtf(v22);
  v27 = a2->var1.var0;
  v26 = a2->var1.var1;
  v28 = (v26 * v19) - (v27 * v18);
  result = (v18 * v26) + (v27 * v19);
LABEL_15:
  a5->x = v28;
  a5->y = result;
  v32 = sqrtf((result * result) + (v28 * v28));
  if (v32 >= 0.00000011921)
  {
    v33 = 1.0 / v32;
    result = result * v33;
    a5->x = v28 * v33;
    a5->y = result;
  }

  return result;
}

uint64_t b2PolygonShape::RayCast(void *a1, float *a2, float *a3, float *a4)
{
  v4 = a3[4];
  v5 = a1[2];
  v6 = a1[3] - v5;
  if ((v6 >> 3) < 1)
  {
    if (v4 >= 0.0)
    {
      return 0;
    }

LABEL_26:
    b2PolygonShape::RayCast();
  }

  v7 = 0;
  v8 = a4[1];
  v9 = *a3 - *a4;
  v10 = a3[1] - v8;
  v12 = a4[2];
  v11 = a4[3];
  v13 = (v10 * v12) + (v11 * v9);
  v14 = (v11 * v10) - (v12 * v9);
  v15 = a3[2] - *a4;
  v16 = a3[3] - v8;
  v17 = (v12 * v16) + (v11 * v15);
  v18 = (v11 * v16) - (v12 * v15);
  v19 = v17 - v13;
  v20 = v18 - v14;
  v21 = (v6 >> 3) & 0x7FFFFFFF;
  v22 = (a1[5] + 4);
  v23 = (v5 + 4);
  v24 = -1;
  v25 = 0.0;
  v26 = a3[4];
  do
  {
    v27 = *(v22 - 1);
    v28 = ((*v23 - v14) * *v22) + (v27 * (*(v23 - 1) - v13));
    v29 = (v20 * *v22) + (v27 * v19);
    if (v29 == 0.0)
    {
      if (v28 < 0.0)
      {
        return 0;
      }
    }

    else if (v29 < 0.0 && v28 < (v25 * v29))
    {
      v24 = v7;
      v25 = v28 / v29;
    }

    else if (v29 > 0.0 && v28 < (v26 * v29))
    {
      v26 = v28 / v29;
    }

    if (v26 < v25)
    {
      return 0;
    }

    ++v7;
    v22 += 2;
    v23 += 2;
  }

  while (v21 != v7);
  if (v25 < 0.0 || v25 > v4)
  {
    goto LABEL_26;
  }

  if ((v24 & 0x80000000) == 0)
  {
    a2[2] = v25;
    v32 = (a1[5] + 8 * v24);
    v33 = v32[1];
    v34 = (v11 * v33) + (v12 * *v32);
    *a2 = (v33 * -v12) + (v11 * *v32);
    a2[1] = v34;
    return 1;
  }

  return 0;
}

float32x4_t b2PolygonShape::ComputeAABB(uint64_t a1, _OWORD *a2, float32x2_t *a3)
{
  v4 = a3[1];
  v3 = vrev64_s32(v4);
  v4.f32[0] = -v4.f32[0];
  v5 = *(a1 + 16);
  *v6.f32 = vadd_f32(*a3, vmla_n_f32(vmul_n_f32(v4, v5[1]), v3, *v5));
  v6.i64[1] = v6.i64[0];
  v7 = *(a1 + 24) - v5;
  if ((v7 >> 3) >= 2)
  {
    v8 = v5 + 3;
    v9 = ((v7 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      *v10.f32 = vadd_f32(*a3, vmla_n_f32(vmul_n_f32(v4, *v8), v3, *(v8 - 1)));
      v10.i64[1] = v10.i64[0];
      v11.i32[0] = vmovn_s32(vcgtq_f32(v10, v6)).u32[0];
      v11.i32[1] = vmovn_s32(vcgtq_f32(v6, v10)).i32[1];
      v6 = vbslq_s8(vmovl_s16(v11), v6, v10);
      v8 += 2;
      --v9;
    }

    while (v9);
  }

  v12 = (a1 + 12);
  v13 = vld1q_dup_f32(v12);
  *&v14 = vsubq_f32(v6, v13).u64[0];
  result = vaddq_f32(v6, v13);
  *(&v14 + 1) = result.i64[1];
  *a2 = v14;
  return result;
}

float b2PolygonShape::ComputeMass(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) - v3;
  v5 = v4 >> 3;
  if ((v4 >> 3) < 3)
  {
    b2PolygonShape::ComputeMass();
  }

  v6 = (v4 >> 3) & 0x7FFFFFFF;
  v7 = 0;
  v8 = v6;
  v9 = *(a1 + 16);
  do
  {
    v10 = *v9++;
    v7 = vadd_f32(v7, v10);
    --v8;
  }

  while (v8);
  v11 = vmul_n_f32(v7, 1.0 / v5);
  v12 = 0;
  v13 = 0.0;
  v14 = 0.0;
  do
  {
    v15 = *(v3 + 8 * v8);
    v16 = v8 + 1;
    v17 = (v8 + 1);
    if (v16 >= v6)
    {
      v17 = 0;
    }

    v18 = vsub_f32(v15, v11);
    v19 = vsub_f32(*(v3 + 8 * v17), v11);
    v20 = (-v18.f32[1] * v19.f32[0]) + (v18.f32[0] * v19.f32[1]);
    v13 = v13 + (v20 * 0.5);
    v12 = vadd_f32(v12, vmul_n_f32(vadd_f32(v18, v19), (v20 * 0.5) * 0.33333));
    v14 = v14 + ((v20 * 0.083333) * vaddv_f32(vmla_f32(vmla_f32(vmul_f32(v18, v19), v18, v18), v19, v19)));
    v8 = v16;
  }

  while (v6 != v16);
  v21 = fabsf(v13 * a3);
  *a2 = v21;
  v22 = vmul_n_f32(v12, 1.0 / v13);
  v23 = vadd_f32(v11, v22);
  *(a2 + 4) = v23;
  result = (v14 * a3) + (v21 * ((COERCE_FLOAT(vmul_f32(v23, v23).i32[1]) + (v23.f32[0] * v23.f32[0])) - (COERCE_FLOAT(vmul_f32(v22, v22).i32[1]) + (v22.f32[0] * v22.f32[0]))));
  *(a2 + 12) = result;
  return result;
}

void b2PolygonShape::~b2PolygonShape(b2PolygonShape *this)
{
  *this = &unk_287079A20;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_287079A20;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F8C0280);
}

void *std::vector<b2Vec2>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_25E7CA5F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float b2Mat33::Solve33(b2Mat33 *this, const b2Vec3 *a2)
{
  var1 = this->var2.var1;
  var2 = this->var2.var2;
  v4 = this->var1.var1;
  v5 = this->var1.var2;
  var0 = this->var2.var0;
  v7 = (v4 * var2) - (v5 * var1);
  v8 = this->var1.var0;
  v9 = (v5 * var0) - (v8 * var2);
  v10 = (v8 * var1) - (v4 * var0);
  v11 = ((this->var0.var1 * v9) + (this->var0.var0 * v7)) + (this->var0.var2 * v10);
  if (v11 != 0.0)
  {
    v11 = 1.0 / v11;
  }

  return v11 * (((v9 * a2->var1) + (a2->var0 * v7)) + (a2->var2 * v10));
}

float b2Mat33::Solve22(b2Mat33 *this, const b2Vec2 *a2)
{
  var0 = this->var1.var0;
  var1 = this->var1.var1;
  v4 = (this->var0.var0 * var1) - (var0 * this->var0.var1);
  if (v4 != 0.0)
  {
    v4 = 1.0 / v4;
  }

  return v4 * ((var1 * a2->x) - (var0 * a2->y));
}

float b2Mat33::GetInverse22(b2Mat33 *this, b2Mat33 *a2)
{
  var0 = this->var0.var0;
  var1 = this->var0.var1;
  v4 = this->var1.var0;
  v5 = this->var1.var1;
  v6 = (this->var0.var0 * v5) - (v4 * var1);
  if (v6 != 0.0)
  {
    v6 = 1.0 / v6;
  }

  a2->var0.var2 = 0.0;
  a2->var0.var0 = v5 * v6;
  a2->var0.var1 = -(v6 * var1);
  result = var0 * v6;
  a2->var1.var0 = -(v6 * v4);
  a2->var1.var1 = result;
  *&a2->var2.var1 = 0;
  *&a2->var1.var2 = 0;
  return result;
}

float b2Mat33::GetSymInverse33(b2Mat33 *this, b2Mat33 *a2)
{
  var1 = this->var2.var1;
  var2 = this->var2.var2;
  v4 = this->var1.var1;
  var0 = this->var2.var0;
  v6 = this->var1.var0;
  v7 = this->var0.var0;
  v8 = ((this->var0.var1 * ((this->var1.var2 * var0) - (v6 * var2))) + (this->var0.var0 * ((v4 * var2) - (this->var1.var2 * var1)))) + (this->var0.var2 * ((v6 * var1) - (v4 * var0)));
  if (v8 != 0.0)
  {
    v8 = 1.0 / v8;
  }

  v9 = v8 * ((var0 * var1) - (v6 * var2));
  a2->var0.var0 = v8 * ((v4 * var2) - (var1 * var1));
  a2->var0.var1 = v9;
  v10 = ((v6 * var1) - (var0 * v4)) * v8;
  a2->var0.var2 = v10;
  a2->var1.var0 = v9;
  v11 = v8 * ((var0 * v6) - (v7 * var1));
  a2->var1.var1 = v8 * ((v7 * var2) - (var0 * var0));
  a2->var1.var2 = v11;
  a2->var2.var0 = v10;
  a2->var2.var1 = v11;
  result = ((v7 * v4) - (v6 * v6)) * v8;
  a2->var2.var2 = result;
  return result;
}

uint64_t PKCMechanics::Solve(uint64_t result, __int128 *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      v6 = *v2++;
      QuadTree::bounds(v6, &v11, &v12, &v13, &v14);
      v7[0] = &unk_287079400;
      v7[1] = v5;
      v8 = *a2;
      v9 = *(a2 + 2);
      v10 = v6;
      result = b2World::QueryAABB(*v5, v7, &v11);
    }

    while (v2 != v3);
  }

  return result;
}

void PKCMechanics::addQuadTree(PKCMechanics *this, QuadTree *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v5 >= v4)
  {
    v7 = *(this + 1);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(this + 8, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(this + 1);
    v14 = *(this + 2) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(this + 1);
    *(this + 1) = v15;
    *(this + 2) = v6;
    *(this + 3) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 2) = v6;
}

uint64_t MechanicsCollisionCallback::ReportFixture(MechanicsCollisionCallback *this, b2Fixture *a2)
{
  v4 = *(a2 + 3);
  v5 = (*(**(a2 + 4) + 24))(*(a2 + 4));
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5;
    v8 = 8;
    v9 = vdup_n_s32(0x3B9374BCu);
    v10 = vneg_f32(0x7F0000007FLL);
    do
    {
      v11 = *(a2 + 6);
      if (v6 >= (*(a2 + 7) - v11) >> 5)
      {
        MechanicsCollisionCallback::ReportFixture();
      }

      v12 = (v11 + v8);
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v16 = v12[1];
      v17 = *(this + 5);
      __p[0] = 0;
      __p[1] = 0;
      v43 = 0;
      if (QuadTree::intersectBox(v17, __p, v13, v14, v15, v16))
      {
        v18 = *__p[0];
        __p[1] = __p[0];
        operator delete(__p[0]);
        v19.i32[0] = *(v18 + 32);
        v19.i32[1] = *(v18 + 44);
        v20 = vmul_f32(vadd_f32(*(v18 + 36), v19), 0x3F0000003F000000);
        *v21.f32 = vsub_f32(v20, *(v4 + 48));
        v21.i64[1] = vmulq_n_f32(0, *(this + 16)).i64[1];
        v22.i64[0] = *(v4 + 32);
        v38 = v20;
        *&v22.u32[2] = v20;
        *__p = vaddq_f32(v21, v22);
        LODWORD(v43) = 1065353216;
        if ((*(**(a2 + 4) + 48))(*(a2 + 4), &v40, __p, *(a2 + 3) + 32, v6))
        {
          v23 = vadd_f32(vadd_f32(vmul_n_f32(__p[0], 1.0 - v41), vmul_n_f32(__p[1], v41)), vmul_f32(v40, v9));
          v24 = vmul_n_f32(vsub_f32(v23, v38), *(this + 5));
          v25 = vneg_f32(v24);
          v26 = sqrtf(vmuls_lane_f32(v24.f32[1], v24, 1) + (v24.f32[0] * v24.f32[0]));
          if (v26 >= 0.00000011921)
          {
            v25 = vmul_n_f32(v25, 1.0 / v26);
          }

          v27 = vmul_n_f32(v25, vmuls_lane_f32((0.0 - v24.f32[1]) * *(this + 4), v25, 1) + (((0.0 - v24.f32[0]) * *(this + 4)) * v25.f32[0]));
          v28 = vcge_s32((*&v27 & 0x7FFFFFFF7FFFFFFFLL), v10);
          if (((v28.i32[0] | v28.i32[1]) & 1) == 0 && *(v4 + 20) == 2)
          {
            v37 = v27;
            v39 = v23.f32[0];
            if ((b2Body::IsAwake(v4) & 1) == 0)
            {
              b2Body::SetAwake(v4, 1);
            }

            _V4.S[1] = v37.i32[1];
            *(v4 + 128) = vadd_f32(vmul_n_f32(v37, *(v4 + 212)), *(v4 + 128));
            _S1 = v39 - *(v4 + 96);
            __asm { FMLA            S2, S1, V4.S[1] }

            *(v4 + 136) = *(v4 + 136) + (*(v4 + 224) * _S2);
          }
        }
      }

      else if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v6;
      v8 += 32;
    }

    while (v7 != v6);
  }

  return 1;
}

void sub_25E7CACA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void b2StackAllocator::b2StackAllocator(b2StackAllocator *this)
{
  *(this + 12800) = 0;
  *(this + 25602) = 0;
  *(this + 25732) = 0;
}

void b2StackAllocator::~b2StackAllocator(b2StackAllocator *this)
{
  if (*(this + 25600))
  {
    v1 = "m_index == 0";
    v2 = 32;
    goto LABEL_6;
  }

  if (*(this + 25732))
  {
    v1 = "m_entryCount == 0";
    v2 = 33;
LABEL_6:
    __assert_rtn("~b2StackAllocator", "b2StackAllocator.cpp", v2, v1);
  }
}

char *b2StackAllocator::Allocate(b2StackAllocator *this, int a2)
{
  v2 = (this + 102400);
  v3 = *(this + 25732);
  if (v3 >= 32)
  {
    b2StackAllocator::Allocate();
  }

  v5 = this + 16 * v3 + 102416;
  *(this + 4 * v3 + 25606) = a2;
  v6 = *v2;
  if (v6 + a2 <= 102400)
  {
    v8 = 0;
    result = this + v6;
    *v2 = v6 + a2;
  }

  else
  {
    result = b2Alloc(a2);
    v3 = v2[132];
    v8 = 1;
  }

  *v5 = result;
  v5[12] = v8;
  v9 = v2[2];
  v10 = v2[1] + a2;
  if (v9 <= v10)
  {
    v9 = v2[1] + a2;
  }

  v2[1] = v10;
  v2[2] = v9;
  v2[132] = v3 + 1;
  return result;
}

void b2StackAllocator::Free(void **this, void *a2)
{
  v2 = this + 12800;
  v3 = *(this + 25732);
  if (v3 <= 0)
  {
    b2StackAllocator::Free();
  }

  v4 = &this[2 * v3 + 12802];
  if (this[2 * v3 + 12800] != a2)
  {
    b2StackAllocator::Free();
  }

  if (BYTE4(this[2 * v3 + 12801]) == 1)
  {
    b2Free(a2);
    v5 = *(v4 - 2);
    LODWORD(v3) = v2[132];
  }

  else
  {
    v5 = this[2 * v3 + 12801];
    *v2 -= v5;
  }

  v2[1] -= v5;
  v2[132] = v3 - 1;
}

void b2Timer::b2Timer(b2Timer *this)
{
  gettimeofday(&v3, 0);
  v2 = v3.tv_usec * 0.001;
  *this = v3.tv_sec;
  *(this + 1) = v2;
}

float b2Timer::Reset(b2Timer *this)
{
  gettimeofday(&v3, 0);
  result = v3.tv_usec * 0.001;
  *this = v3.tv_sec;
  *(this + 1) = result;
  return result;
}

void b2BodyDef::b2BodyDef(b2BodyDef *this)
{
  this->userData = 0;
  *&this->position.x = 0u;
  *&this->linearVelocity.y = 0u;
  *(&this->linearDamping + 1) = 0;
  *&this->awake = 16777217;
  this->type = 0;
  this->_sk_affectedByGravity = 1;
  *&this->_sk_fieldCategoryBitMask = xmmword_25E7EB950;
}

void b2Body::b2Body(b2Body *this, const b2BodyDef *a2, b2Body *a3)
{
  if ((LODWORD(a2->position.x) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(a2->position.y) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    b2Body::b2Body();
  }

  if ((LODWORD(a2->linearVelocity.x) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(a2->linearVelocity.y) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    b2Body::b2Body();
  }

  if ((LODWORD(a2->angle) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    b2Body::b2Body();
  }

  if ((LODWORD(a2->angularVelocity) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    b2Body::b2Body();
  }

  angularDamping = a2->angularDamping;
  v5 = LODWORD(angularDamping) & 0x7FFFFFFF;
  v6 = (LODWORD(angularDamping) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v7 = angularDamping < 0.0;
  v8 = angularDamping < 0.0 && ((LODWORD(angularDamping) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  if (!v7)
  {
    v6 = 0;
  }

  v9 = v5 == 2139095040 || v6;
  if (v5 > 2139095040)
  {
    v9 = 1;
  }

  if ((v9 | v8) == 1)
  {
    b2Body::b2Body();
  }

  linearDamping = a2->linearDamping;
  v11 = LODWORD(linearDamping) & 0x7FFFFFFF;
  v12 = (LODWORD(linearDamping) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v13 = linearDamping < 0.0;
  v14 = linearDamping < 0.0 && ((LODWORD(linearDamping) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  if (!v13)
  {
    v12 = 0;
  }

  if (v11 == 2139095040)
  {
    v12 = 1;
  }

  if (v11 > 2139095040)
  {
    v12 = 1;
  }

  if (v12 || v14)
  {
    b2Body::b2Body();
  }

  this->var1 = a2->_sk_fieldCategoryBitMask;
  this->var0 = a2->_sk_affectedByGravity;
  *&this->var2 = *&a2->_sk_categoryBitMask;
  this->var4 = a2->_sk_intersectionCallbackBitMask;
  if (a2->bullet)
  {
    v16 = 8;
  }

  else
  {
    v16 = 0;
  }

  this->var6 = v16;
  if (a2->fixedRotation)
  {
    v16 |= 0x10u;
    this->var6 = v16;
  }

  if (a2->allowSleep)
  {
    v16 |= 4u;
    this->var6 = v16;
  }

  if (a2->awake)
  {
    v16 |= 2u;
    this->var6 = v16;
  }

  if (a2->active)
  {
    this->var6 = v16 | 0x20;
  }

  this->var17 = a3;
  position = a2->position;
  this->var8.var0 = position;
  this->var8.var1 = __sincosf_stret(a2->angle);
  this->var9 = this->var8;
  this->var10.var0 = 0;
  *&this->var10.var1.var0.var1 = position;
  *&this->var10.var2.var0.var1 = position;
  angle = a2->angle;
  this->var10.var2.var0.var0.y = angle;
  this->var11.x = angle;
  this->var11.y = 0.0;
  this->var18 = 0;
  *&this->var19 = 0;
  *&this->var22 = 0;
  *&this->var24 = 0;
  *&this->var14 = a2->linearVelocity;
  *&this->var15 = a2->angularVelocity;
  *(&this->var30 + 4) = *&a2->linearDamping;
  charge = a2->charge;
  *(&this->var15 + 4) = 0;
  HIDWORD(this->var16) = 0;
  this[1].var1 = 0;
  type = a2->type;
  this->var5 = type;
  v21 = 0.0;
  if (type == 2)
  {
    v21 = 1.0;
  }

  this->var26 = v21;
  this->var27 = v21;
  *&this->var29 = 0;
  this->var28 = charge;
  *&this[1].var2 = a2->userData;
  this->var20 = 0;
  LODWORD(this->var21) = 0;
}

void b2Body::SynchronizeFixtures(b2Body *this)
{
  v6.var1 = __sincosf_stret(this->var10.var2.var0.var0.y);
  x = this->var10.var0.x;
  y = this->var10.var0.y;
  v4 = this->var10.var1.var0.var2 - ((v6.var1.var1 * y) + (v6.var1.var0 * x));
  v6.var0.x = this->var10.var1.var0.var1 - ((v6.var1.var1 * x) - (v6.var1.var0 * y));
  v6.var0.y = v4;
  for (i = this->var20; i; i = i->var2)
  {
    b2Fixture::Synchronize(i, &this->var17[443].var19, &v6, &this->var8);
  }
}

void b2Body::SetType(b2Body *this, int a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, __n128 a9)
{
  if ((this->var17[443].var18 & 2) != 0)
  {
    b2Body::SetType();
  }

  if (this->var5 != a2)
  {
    this->var5 = a2;
    b2Body::ResetMassData(this, a3, a4, a5, a6, a7, a8, a9);
    if (!this->var5)
    {
      *&this->var14 = 0;
      LODWORD(this->var15) = 0;
      *&this->var10.var1.var0.var1 = *&this->var10.var2.var0.var1;
      b2Body::SynchronizeFixtures(this);
    }

    var6 = this->var6;
    if ((var6 & 2) == 0)
    {
      this->var6 = var6 | 2;
      this[1].var1 = 0;
    }

    this->var16 = 0;
    HIDWORD(this->var15) = 0;
    v11 = *&this->var24;
    if (v11)
    {
      do
      {
        v12 = *(v11 + 24);
        b2ContactManager::DestroyContact(&this->var17[443].var19, *(v11 + 8));
        v11 = v12;
      }

      while (v12);
    }

    *&this->var24 = 0;
    for (i = this->var20; i; i = i->var2)
    {
      b2Fixture::Refilter(i);
      v14 = i[1].var3 - i[1].var2;
      if ((v14 >> 5) >= 1)
      {
        v15 = (v14 >> 5) & 0x7FFFFFFF;
        v16 = 24;
        do
        {
          b2ContactManager::TouchProxy(&this->var17[443].var19, *(&i[1].var2->var0 + v16));
          v16 += 32;
          --v15;
        }

        while (v15);
      }
    }
  }
}

float b2Body::ResetMassData(b2Body *this, double a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8)
{
  *&this->var26 = 0;
  *&this->var29 = 0;
  this->var10.var0 = 0;
  if (this->var5 > 1u)
  {
    {
      b2Simplex::GetClosestPoint();
    }

    a8.n128_u32[0] = HIDWORD(b2Vec2_zero_fn(void)::b2Vec2_zero_init);
    a7.n128_u32[0] = b2Vec2_zero_fn(void)::b2Vec2_zero_init;
    for (i = this->var20; i; i = i->var2)
    {
      if (*&i->var1 != 0.0)
      {
        v25 = a8;
        v26 = a7;
        (*(*i[1].var0 + 64))(i[1].var0, v27);
        a8 = v25;
        a7 = v26;
        v12 = v27[0];
        v13 = v27[1];
        this->var26 = v27[0] + this->var26;
        a7.n128_f32[0] = v26.n128_f32[0] + (v12 * v13);
        a8.n128_f32[0] = v25.n128_f32[0] + (v12 * v27[2]);
        this->var29 = v27[3] + this->var29;
      }
    }

    var26 = this->var26;
    if (var26 <= 0.0)
    {
      this->var26 = 1.0;
      var26 = 1.0;
      v15 = 1.0;
    }

    else
    {
      v15 = 1.0 / var26;
      a7.n128_f32[0] = a7.n128_f32[0] * (1.0 / var26);
      a8.n128_f32[0] = a8.n128_f32[0] * (1.0 / var26);
    }

    this->var27 = v15;
    var29 = this->var29;
    if (var29 <= 0.0 || (this->var6 & 0x10) != 0)
    {
      this->var29 = 0.0;
      v18 = 0.0;
    }

    else
    {
      v17 = var29 - (var26 * ((a8.n128_f32[0] * a8.n128_f32[0]) + (a7.n128_f32[0] * a7.n128_f32[0])));
      if (v17 <= 0.00001)
      {
        v17 = 0.00001;
      }

      this->var29 = v17;
      v18 = 1.0 / v17;
    }

    *&this->var30 = v18;
    var0 = this->var8.var0;
    var1 = this->var8.var1;
    v21 = vrev64_s32(var1);
    var1.var0 = -var1.var0;
    v22 = this->var10.var2.var0.var1;
    var2 = this->var10.var2.var0.var2;
    LODWORD(this->var10.var0.x) = a7.n128_u32[0];
    LODWORD(this->var10.var0.y) = a8.n128_u32[0];
    v24 = vadd_f32(var0, vmla_n_f32(vmul_n_f32(var1, a8.n128_f32[0]), v21, a7.n128_f32[0]));
    *&this->var10.var2.var0.var1 = v24;
    *&this->var10.var1.var0.var1 = v24;
    var0.x = *&this->var15;
    v21.f32[0] = var0.x * (v24.f32[0] - v22);
    result = this->var14 - (var0.x * (v24.f32[1] - var2));
    var0.x = v21.f32[0] + *(&this->var14 + 1);
    this->var14 = result;
    *(&this->var14 + 1) = var0.x;
  }

  else
  {
    v9 = this->var8.var0;
    *&this->var10.var1.var0.var1 = v9;
    *&this->var10.var2.var0.var1 = v9;
    result = this->var11.x;
    this->var10.var2.var0.var0.y = result;
  }

  return result;
}

b2Body *b2Body::SetAwake(b2Body *this, int a2)
{
  var6 = this->var6;
  if (a2)
  {
    if ((var6 & 2) == 0)
    {
      this->var6 = var6 | 2;
      this[1].var1 = 0;
    }
  }

  else
  {
    this->var6 = var6 & 0xFFFD;
    this[1].var1 = 0;
    this->var15 = 0;
    this->var16 = 0;
    *&this->var14 = 0;
  }

  return this;
}

void b2Body::CreateFixture(b2Body *this, const b2FixtureDef *a2)
{
  if ((this->var17[443].var18 & 2) == 0)
  {
    operator new();
  }

  b2Body::CreateFixture();
}

void b2Body::CreateFixture(b2Body *this, b2Shape *a2, float a3)
{
  *&v8.var2 = 1045220557;
  __asm { FMOV            V1.2S, #1.0 }

  *&v8.var5 = _D1;
  v8.var0 = a2;
  v8.var1 = 0;
  v8.var4 = a3;
  b2Body::CreateFixture(this, &v8);
}

float b2Body::DestroyFixture(b2Body *this, b2Fixture *a2)
{
  if ((this->var17[443].var18 & 2) != 0)
  {
    b2Body::DestroyFixture();
  }

  if (*(a2 + 3) != this)
  {
    b2Body::DestroyFixture();
  }

  if (SLODWORD(this->var21) <= 0)
  {
    b2Body::DestroyFixture();
  }

  p_var20 = &this->var20;
  var20 = this->var20;
  if (!var20)
  {
LABEL_25:
    b2Body::DestroyFixture();
  }

  if (var20 != a2)
  {
    do
    {
      v6 = var20;
      var20 = var20->var2;
      if (!var20)
      {
        goto LABEL_25;
      }
    }

    while (var20 != a2);
    p_var20 = &v6->var2;
  }

  *p_var20 = *(a2 + 2);
  v7 = *&this->var24;
  while (v7)
  {
    v8 = *(v7 + 8);
    v7 = *(v7 + 24);
    if (*(v8 + 80) == a2 || *(v8 + 88) == a2)
    {
      b2ContactManager::DestroyContact(&this->var17[443].var19, v8);
    }
  }

  if ((this->var6 & 0x20) != 0)
  {
    b2Fixture::DestroyProxies(a2, &this->var17[443].var19);
  }

  (*(*a2 + 8))(a2);
  --LODWORD(this->var21);

  return b2Body::ResetMassData(this, v10, v11, v12, v13, v14, v15, v16);
}

float32_t b2Body::SetMassData(float32x2_t *a1, float *a2, float32_t result)
{
  if ((*(*&a1[19] + 102936) & 2) != 0)
  {
    b2Body::SetMassData();
  }

  if (a1[2].i32[1] == 2)
  {
    a1[27].i32[1] = 0;
    a1[28].i32[0] = 0;
    v3 = *a2;
    if (*a2 <= 0.0)
    {
      v3 = 1.0;
    }

    a1[26].f32[0] = v3;
    a1[26].f32[1] = 1.0 / v3;
    v4 = a2[3];
    if (v4 > 0.0 && (a1[3].i16[0] & 0x10) == 0)
    {
      v5 = v4 - (v3 * ((a2[2] * a2[2]) + (a2[1] * a2[1])));
      a1[27].f32[1] = v5;
      if (v5 <= 0.0)
      {
        b2Body::SetMassData();
      }

      a1[28].f32[0] = 1.0 / v5;
    }

    v6 = a1[12].f32[0];
    v7 = a1[12].f32[1];
    v8 = *(a2 + 1);
    a1[8] = v8;
    v9 = a1[5];
    v10 = vrev64_s32(v9);
    *v9.i32 = -*v9.i32;
    v11 = vadd_f32(a1[4], vmla_n_f32(vmul_n_f32(v9, v8.f32[1]), v10, v8.f32[0]));
    a1[12] = v11;
    a1[10] = v11;
    v10.i32[0] = a1[17].i32[0];
    result = (v10.f32[0] * (v11.f32[0] - v6)) + a1[16].f32[1];
    a1[16].f32[0] = a1[16].f32[0] - (v10.f32[0] * (v11.f32[1] - v7));
    a1[16].f32[1] = result;
  }

  return result;
}

b2Body *b2Body::SetBullet(b2Body *this, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  this->var6 = this->var6 & 0xFFF7 | v2;
  return this;
}

float b2Body::SetFixedRotation(b2Body *this, int w1_0, double a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8)
{
  if (w1_0)
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  this->var6 = this->var6 & 0xFFEF | v9;
  return b2Body::ResetMassData(this, a2, a3, a4, a5, a6, a7, a8);
}

b2Body *b2Body::SetSleepingAllowed(b2Body *this, int a2)
{
  var6 = this->var6;
  if (a2)
  {
    this->var6 = var6 | 4;
  }

  else
  {
    this->var6 = var6 & 0xFFFB;
    if ((var6 & 2) == 0)
    {
      this->var6 = var6 & 0xFFF9 | 2;
      this[1].var1 = 0;
    }
  }

  return this;
}

uint64_t b2Body::ShouldCollide(b2Body *this, const b2Body *a2)
{
  var2 = a2->var2;
  if ((var2 & this->var3) != 0 || (v3 = this->var2, (v3 & a2->var3) != 0) || (this->var4 & var2) != 0 || (a2->var4 & v3) != 0)
  {
    if (this->var5 == 2 || a2->var5 == 2)
    {
      v4 = *&this->var22;
      if (!v4)
      {
        return 1;
      }

      while (*v4 != a2 || *(*(v4 + 8) + 113))
      {
        v4 = *(v4 + 24);
        if (!v4)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void b2Body::SetTransform(b2Body *this, const b2Vec2 *a2, float a3)
{
  if ((this->var17[443].var18 & 2) != 0)
  {
    b2Body::SetTransform();
  }

  v6 = __sincosf_stret(a3);
  p_var8 = &this->var8;
  if (v6.__cosval != this->var8.var1.var1 || v6.__sinval != this->var8.var1.var0 || a2->x != p_var8->var0.x || a2->y != this->var8.var0.y)
  {
    this->var8.var1 = v6;
    v8 = *a2;
    this->var8.var0 = *a2;
    this->var9 = *p_var8;
    x = this->var10.var0.x;
    y = this->var10.var0.y;
    this->var10.var2.var0.var1 = ((v6.__cosval * x) - (v6.__sinval * y)) + v8.x;
    this->var10.var2.var0.var2 = ((v6.__cosval * y) + (v6.__sinval * x)) + v8.y;
    this->var11.x = a3;
    *&this->var10.var1.var0.var1 = *&this->var10.var2.var0.var1;
    for (i = this->var20; i; i = i->var2)
    {
      b2Fixture::Synchronize(i, &this->var17[443].var19, &this->var8, &this->var8);
    }
  }
}

void b2Body::SetActive(b2Body *this, int a2)
{
  if ((this->var17[443].var18 & 2) != 0)
  {
    b2Body::SetActive();
  }

  var6 = this->var6;
  if (a2 != (var6 & 0x20) >> 5)
  {
    if (a2)
    {
      this->var6 = var6 | 0x20;
      for (i = this->var20; i; i = i->var2)
      {
        b2Fixture::CreateProxies(i, &this->var17[443].var19, &this->var8);
      }
    }

    else
    {
      this->var6 = var6 & 0xFFDF;
      for (j = this->var20; j; j = j->var2)
      {
        b2Fixture::DestroyProxies(j, &this->var17[443].var19);
      }

      v6 = *&this->var24;
      if (v6)
      {
        do
        {
          v7 = *(v6 + 24);
          b2ContactManager::DestroyContact(&this->var17[443].var19, *(v6 + 8));
          v6 = v7;
        }

        while (v7);
      }

      *&this->var24 = 0;
    }
  }
}

void b2ContactManager::b2ContactManager(b2ContactManager *this)
{
  b2DynamicTree::b2DynamicTree((this + 16));
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *this = &b2ContactManager::b2ContactManager(void)::b2_defaultListener;
  *(this + 2) = 0;
}

void b2ContactManager::~b2ContactManager(void **this)
{
  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table((this + 17));
  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table((this + 12));
  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table((this + 7));
  b2DynamicTree::~b2DynamicTree(this + 2);
}

uint64_t *b2ContactManager::UnBufferMove(b2ContactManager *this, int a2)
{
  v4 = a2;
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 7, &v4);
  if (result)
  {
    return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(this + 7, result);
  }

  return result;
}

uint64_t *b2ContactManager::MoveProxy(uint64_t a1, unsigned int a2, float32x2_t *a3, float32x2_t *a4)
{
  v6 = a2;
  result = b2DynamicTree::MoveProxy((a1 + 16), a2, a3, a4);
  if (result)
  {
    return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 56), &v6);
  }

  return result;
}

uint64_t b2ContactManager::CreateProxyId(uint64_t a1, float32x2_t *a2)
{
  ProxyId = b2DynamicTree::CreateProxyId((a1 + 16), a2);
  ++*(a1 + 8);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 56), &ProxyId);
  return ProxyId;
}

uint64_t b2ContactManager::DestroyProxy(b2ContactManager *this, unsigned int a2)
{
  b2ContactManager::UnBufferMove(this, a2);
  --*(this + 2);

  return b2DynamicTree::DestroyProxy((this + 16), a2);
}

uint64_t b2ContactManager::DestroyContact(b2ContactManager *this, b2Contact *a2)
{
  v14 = a2;
  v3 = *(*(a2 + 10) + 24);
  v4 = *(*(a2 + 11) + 24);
  v5 = *this;
  if (v5 && (*(a2 + 12) & 2) != 0)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(this + 17, &v14);
  if (v6)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(this + 17, v6);
  }

  v8 = v14;
  v10 = *(v14 + 4);
  v9 = *(v14 + 5);
  if (v10)
  {
    *(v10 + 24) = v9;
  }

  if (v9)
  {
    *(v9 + 16) = v10;
  }

  if ((v8 + 16) == *(v3 + 200))
  {
    *(v3 + 200) = v9;
  }

  v12 = *(v8 + 8);
  v11 = *(v8 + 9);
  if (v12)
  {
    *(v12 + 24) = v11;
  }

  if (v11)
  {
    *(v11 + 16) = v12;
  }

  if ((v8 + 48) == *(v4 + 200))
  {
    *(v4 + 200) = v11;
  }

  return b2Contact::Destroy(v8, v7);
}

void b2ContactManager::Collide(b2ContactManager *this)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v1 = *(this + 19);
  if (v1)
  {
    do
    {
      v17 = v1[2];
      v4 = *(v17 + 10);
      v3 = *(v17 + 11);
      v5 = *(v4 + 24);
      v6 = *(v3 + 24);
      if (!(v5->var5 | v6->var5) || (b2Body::ShouldCollide(v6, v5) & 1) == 0)
      {
        goto LABEL_17;
      }

      v7 = *(*(v4 + 48) + 32 * *(v17 + 24) + 24);
      if ((v7 & 0x80000000) != 0 || (v8 = *(this + 9), v8 <= v7) || (v9 = *(*(v3 + 48) + 32 * *(v17 + 25) + 24), (v9 & 0x80000000) != 0) || v8 <= v9)
      {
        __assert_rtn("GetFatAABB", "b2DynamicTree.h", 168, "0 <= proxyId && proxyId < m_nodeCapacity");
      }

      v10 = *(this + 3);
      v11 = (v10 + 48 * v7);
      v12 = (v10 + 48 * v9);
      v13 = *v12 <= v11[2] && v12[1] <= v11[3];
      if (v13 && (*v11 <= v12[2] ? (v14 = v11[1] <= v12[3]) : (v14 = 0), v14))
      {
        b2Contact::Update(v17, *this);
      }

      else
      {
LABEL_17:
        std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v18, &v17);
      }

      v1 = *v1;
    }

    while (v1);
    v15 = v18;
    v16 = v19;
    if (v18 != v19)
    {
      do
      {
        b2ContactManager::DestroyContact(this, *v15++);
      }

      while (v15 != v16);
      v15 = v18;
    }

    if (v15)
    {
      v19 = v15;
      operator delete(v15);
    }
  }
}

void sub_25E7CC14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

b2Body *b2ContactManager::AddPair(b2Body *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a3 + 16);
  v5 = v3[3];
  v6 = v4[3];
  if (v5 != v6)
  {
    v9 = result;
    result = b2Body::ShouldCollide(v3[3], v4[3]);
    if (result)
    {
      v10 = *(a2 + 28);
      v11 = *(a3 + 28);
      v12 = *&v6->var24;
      if (v12)
      {
        while (1)
        {
          if (*v12 == v5)
          {
            v13 = v12[1];
            v14 = *&v13->var10.var1.var0.var1;
            var0 = v13->var10.var2.var0.var0;
            var1 = v13->var10.var2.var0.var1;
            var2 = v13->var10.var2.var0.var2;
            v18 = v14 == v3 && var0 == v4;
            v19 = v18 && LODWORD(var1) == v10;
            if (v19 && LODWORD(var2) == v11)
            {
              break;
            }

            v21 = v14 == v4 && var0 == v3;
            v22 = v21 && LODWORD(var1) == v11;
            if (v22 && LODWORD(var2) == v10)
            {
              break;
            }
          }

          v12 = v12[3];
          if (!v12)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        result = b2Contact::Create(v3, v10, v4, v11);
        v32 = result;
        if (result)
        {
          v24 = *(*&result->var10.var1.var0.var1 + 24);
          v25 = *(*&result->var10.var2.var0.var0 + 24);
          std::__hash_table<b2Contact *,std::hash<b2Contact *>,std::equal_to<b2Contact *>,std::allocator<b2Contact *>>::__emplace_unique_key_args<b2Contact *,b2Contact * const&>(&v9->var15, &v32);
          v26 = v32;
          v27 = v32;
          *&v32->var4 = v25;
          p_var4 = &v27->var4;
          *&v26->var6 = v26;
          v26->var8.var0 = 0;
          v29 = *(*&v24 + 200);
          v26->var8.var1 = v29;
          if (v29)
          {
            *(*&v29 + 16) = p_var4;
          }

          *(*&v24 + 200) = p_var4;
          v26->var9.var0 = v24;
          p_var9 = &v26->var9;
          v26->var9.var1 = v26;
          v26->var10.var0 = 0;
          v31 = *(v25 + 200);
          v26->var10.var1.var0.var0 = v31;
          if (v31)
          {
            *(*&v31 + 16) = p_var9;
          }

          *(v25 + 200) = p_var9;
          b2Body::SetAwake(*&v24, 1);
          return b2Body::SetAwake(v25, 1);
        }
      }
    }
  }

  return result;
}

uint64_t b2ContactManager::ClearContactIslandFlags(uint64_t this)
{
  for (i = *(this + 152); i; i = *i)
  {
    *(i[2] + 12) &= ~1u;
  }

  return this;
}

uint64_t b2ContactManager::InvalidateContacts(uint64_t this)
{
  for (i = *(this + 152); i; i = *i)
  {
    v2 = i[2];
    *(v2 + 12) &= 0xFFFFFFDE;
    *(v2 + 168) = 0x3F80000000000000;
  }

  return this;
}

uint64_t b2ContactManager::QueryCallback(b2ContactManager *this, unsigned int a2)
{
  LODWORD(v2) = *(this + 44);
  if (v2 != a2)
  {
    if ((a2 & 0x80000000) != 0 || (v3 = *(this + 9), v3 <= a2))
    {
      b2ContactManager::QueryCallback();
    }

    if ((v2 & 0x80000000) != 0 || v3 <= v2)
    {
      b2ContactManager::QueryCallback();
    }

    v4 = *(this + 3);
    v5 = *(v4 + 48 * a2 + 24);
    v6 = *(v4 + 48 * v2 + 24);
    v7 = v6[2];
    v8 = v5[2];
    v9 = v5[3];
    v10 = v6[3] & v8;
    v11 = v6[4] & v8;
    v12 = v5[4] & v7;
    v13 = v9 & v7;
    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14 || v11 != 0 || v12 != 0)
    {
      if (a2 >= v2)
      {
        v17 = v2;
      }

      else
      {
        v17 = a2;
      }

      if (a2 <= v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = a2;
      }

      v19 = v2 | (v17 << 32);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(this + 12, &v19);
    }
  }

  return 1;
}

void b2ContactManager::FindMinimumTOI(b2ContactManager *this, b2Contact **a2, float *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(this + 19);
  if (v3)
  {
    while (1)
    {
      v6 = v3[2];
      v7 = *(v6 + 80);
      v8 = *(v6 + 88);
      v9 = *(v7 + 24);
      v10 = *(v8 + 24);
      v11 = *(v10 + 8);
      if ((v11 & *(v9 + 12)) == 0)
      {
        v12 = *(v9 + 8);
        if ((v12 & *(v10 + 12)) == 0 && (*(v9 + 16) & v11) == 0 && (*(v10 + 16) & v12) == 0)
        {
          goto LABEL_39;
        }
      }

      v13 = *(v6 + 12);
      if ((v13 & 4) == 0 || *(v6 + 168) > 8)
      {
        goto LABEL_39;
      }

      if ((v13 & 0x20) == 0)
      {
        break;
      }

      v15 = *(v6 + 172);
LABEL_37:
      if (v15 < *a3)
      {
        *a2 = v6;
        *a3 = v15;
      }

LABEL_39:
      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    if (*(v9 + 20) != 2 && *(v10 + 20) != 2)
    {
      goto LABEL_39;
    }

    v14 = b2Body::IsAwake(*(v7 + 24)) && *(v9 + 20) != 0;
    v16 = b2Body::IsAwake(v10) && *(v10 + 20) != 0;
    if (!v14 && !v16)
    {
      goto LABEL_39;
    }

    v17 = (b2Body::IsBullet(v9) & 1) != 0 || *(v9 + 20) != 2;
    if ((b2Body::IsBullet(v10) & 1) == 0 && *(v10 + 20) == 2 && !v17)
    {
      goto LABEL_39;
    }

    v19 = *(v9 + 112);
    v20 = *(v10 + 112);
    if (v19 >= v20)
    {
      v21 = *(v9 + 112);
      v22 = v10;
      if (v20 >= v19)
      {
LABEL_33:
        if (v19 >= 1.0)
        {
          b2ContactManager::FindMinimumTOI();
        }

        v23 = *(v6 + 96);
        v24 = *(v6 + 100);
        v33 = 0;
        v34 = 0;
        v35[2] = 0;
        v35[3] = 0;
        b2DistanceProxy::Set(v32, *(v7 + 32), v23);
        b2DistanceProxy::Set(v35, *(v8 + 32), v24);
        v25 = *(v9 + 64);
        v26 = *(v9 + 80);
        v27 = *(v9 + 96);
        v39 = *(v9 + 112);
        v37 = v26;
        v38 = v27;
        v36 = v25;
        v28 = *(v10 + 64);
        v29 = *(v10 + 80);
        v30 = *(v10 + 96);
        v43 = *(v10 + 112);
        v41 = v29;
        v42 = v30;
        v40 = v28;
        v44 = 1065353216;
        b2TimeOfImpact(v31, v32);
        v15 = 1.0;
        if (v31[0] == 3)
        {
          v15 = fminf(v19 + ((1.0 - v19) * *&v31[1]), 1.0);
        }

        *(v6 + 172) = v15;
        *(v6 + 12) |= 0x20u;
        goto LABEL_37;
      }
    }

    else
    {
      v21 = *(v10 + 112);
      v20 = *(v9 + 112);
      v22 = v9;
      v19 = v21;
    }

    if (v21 > 1.0)
    {
      v21 = 1.0;
    }

    v22[5] = vmlaq_n_f32(v22[5], vsubq_f32(v22[6], v22[5]), (v21 - v20) / (1.0 - v20));
    v22[7].f32[0] = v21;
    goto LABEL_33;
  }
}

void *b2ContactManager::FindNewContacts(b2Body *this)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(&this->var10.var2.var0.var1);
  for (i = this->var10.var1.var0.var0; i; i = **&i)
  {
    v3 = *(*&i + 16);
    LODWORD(this->var20) = v3;
    if (v3 != -1)
    {
      if ((v3 & 0x80000000) != 0 || SLODWORD(this->var8.var0.y) <= v3)
      {
        b2ContactManager::FindNewContacts();
      }

      b2DynamicTree::Query<b2ContactManager>(&this->var4, this, (*&this->var6 + 48 * v3));
    }
  }

  result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(&this->var9.var1);
  for (j = *&this->var11.y; j; j = *j)
  {
    v6 = j[2];
    if (v6 < 0 || (y_low = LODWORD(this->var8.var0.y), y_low <= SHIDWORD(v6)))
    {
      b2ContactManager::FindNewContacts();
    }

    if ((v6 & 0x80000000) != 0 || y_low <= v6)
    {
      b2ContactManager::FindNewContacts();
    }

    result = b2ContactManager::AddPair(this, *(*&this->var6 + 48 * HIDWORD(v6) + 16), *(*&this->var6 + 48 * (j[2] & 0x7FFFFFFFLL) + 16));
  }

  return result;
}

void **b2DynamicTree::Query<b2ContactManager>(int *a1, b2ContactManager *this, float *a3)
{
  v19 = v20;
  v6 = *a1;
  v22 = 256;
  v20[0] = v6;
  v7 = 1;
  do
  {
    v8 = v7 - 1;
    v21 = v7 - 1;
    v9 = v19;
    v10 = v19[v7 - 1];
    if (v10 != -1)
    {
      v11 = *(a1 + 1) + 48 * v10;
      if (*a3 <= *(v11 + 8) && a3[1] <= *(v11 + 12) && *v11 <= a3[2] && *(v11 + 4) <= a3[3])
      {
        v14 = *(v11 + 36);
        if (v14 == -1)
        {
          b2ContactManager::QueryCallback(this, v10);
          v8 = v21;
        }

        else
        {
          v15 = v22;
          if (v7 <= v22)
          {
            v19[v8] = v14;
          }

          else
          {
            v22 *= 2;
            v19 = b2Alloc(8 * v15);
            memcpy(v19, v9, 4 * v21);
            if (v9 != v20)
            {
              b2Free(v9);
            }

            v9 = v19;
            v19[v21] = *(v11 + 36);
          }

          v16 = v21 + 1;
          v21 = v16;
          v17 = v22;
          if (v16 >= v22)
          {
            v22 *= 2;
            v19 = b2Alloc(8 * v17);
            memcpy(v19, v9, 4 * v21);
            if (v9 != v20)
            {
              b2Free(v9);
            }

            v9 = v19;
            v16 = v21;
          }

          v9[v16] = *(v11 + 40);
          v8 = ++v21;
        }
      }
    }

    v7 = v8;
  }

  while (v8 > 0);
  return b2GrowableStack<int,256>::~b2GrowableStack(&v19);
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<b2Contact *,std::hash<b2Contact *>,std::equal_to<b2Contact *>,std::allocator<b2Contact *>>::__emplace_unique_key_args<b2Contact *,b2Contact * const&>(void *a1, void *a2)
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void **b2GrowableStack<int,256>::~b2GrowableStack(void **a1)
{
  v3 = a1 + 1;
  v2 = *a1;
  if (v2 != v3)
  {
    b2Free(v2);
    *a1 = 0;
  }

  return a1;
}

void b2Fixture::b2Fixture(b2Fixture *this)
{
  *this = &unk_287079230;
  *(this + 2) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
}

void b2Fixture::~b2Fixture(b2Fixture *this)
{
  *this = &unk_287079230;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }
}

{
  b2Fixture::~b2Fixture(this);

  JUMPOUT(0x25F8C0280);
}

float b2Fixture::Create(b2Fixture *this, b2Body *a2, const b2FixtureDef *a3)
{
  var0 = a3->var0;
  *(this + 9) = a3->var1;
  *(this + 5) = *&a3->var2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = (*(*var0 + 16))(var0);
  result = a3->var4;
  *(this + 2) = result;
  return result;
}

void b2Fixture::CreateProxies(b2Fixture *this, b2ContactManager *a2, const b2Transform *a3)
{
  v6 = (*(**(this + 4) + 24))(*(this + 4));
  std::vector<b2FixtureProxy>::resize(this + 6, v6);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 32 * v6;
    do
    {
      v10 = (*(this + 6) + v7);
      v10[3].i32[1] = v8;
      (*(**(this + 4) + 56))(*(this + 4), v10, a3, v8);
      v10[2] = this;
      v10[3].i32[0] = b2ContactManager::CreateProxyId(a2, v10);
      v8 = (v8 + 1);
      v7 += 32;
    }

    while (v9 != v7);
  }
}

void std::vector<b2FixtureProxy>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<b2FixtureProxy>::__append(a1, a2 - v2);
  }
}

b2Fixture *b2Fixture::DestroyProxies(b2Fixture *this, b2ContactManager *a2)
{
  v2 = this;
  v3 = *(this + 6);
  v4 = *(this + 7);
  if (v3 != v4)
  {
    do
    {
      this = b2ContactManager::DestroyProxy(a2, *(v3 + 24));
      *(v3 + 24) = -1;
      v3 += 32;
    }

    while (v3 != v4);
    v3 = *(v2 + 6);
  }

  *(v2 + 7) = v3;
  return this;
}

b2Fixture *b2Fixture::Synchronize(b2Fixture *this, b2ContactManager *a2, const b2Transform *a3, const b2Transform *a4)
{
  v6 = *(this + 7) - *(this + 6);
  if (v6 && (v6 >> 5) >= 1)
  {
    v20 = v4;
    v21 = v5;
    v10 = this;
    v11 = 0;
    v12 = 0;
    v13 = (v6 >> 5) & 0x7FFFFFFF;
    do
    {
      v14 = *(v10 + 6) + v11;
      (*(**(v10 + 4) + 56))(*(v10 + 4), &v18, a3, v12);
      (*(**(v10 + 4) + 56))(*(v10 + 4), &v16, a4, v12);
      *v14 = vbsl_s8(vcgt_f32(v16, v18), v18, v16);
      *(v14 + 8) = vbsl_s8(vcgt_f32(v19, v17), v19, v17);
      v15 = vsub_f32(a4->var0, a3->var0);
      this = b2ContactManager::MoveProxy(a2, *(v14 + 24), v14, &v15);
      ++v12;
      v11 += 32;
    }

    while (v13 != v12);
  }

  return this;
}

b2Fixture *b2Fixture::Refilter(b2Fixture *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v2 = *(v1 + 152);
    if (v2)
    {
      v3 = *(this + 6);
      for (i = *(this + 7); v3 != i; v3 += 32)
      {
        this = b2ContactManager::TouchProxy((v2 + 102944), *(v3 + 24));
      }
    }
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<b2FixtureProxy>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<b2FixtureProxy>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<b2FixtureProxy>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
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

uint64_t PKGetLinkedOnOrAfter(uint64_t a1)
{
  v1 = dyld_get_active_platform() | (a1 << 32);

  return MEMORY[0x282202220](v1);
}

void b2Island::b2Island(b2Island *this, int a2, int a3, int a4, b2StackAllocator *a5, b2ContactListener *a6)
{
  *(this + 1) = 0u;
  v12 = this + 16;
  *(this + 4) = 0u;
  v13 = (this + 64);
  *(this + 10) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  std::vector<PKCField *>::reserve(this + 2, a2);
  std::vector<PKCField *>::reserve(v12 + 3, a3);
  std::vector<PKCField *>::reserve(v13, a4);
  *this = a5;
  *(this + 1) = a6;
  *(this + 12) = b2StackAllocator::Allocate(a5, 16 * a2);
  *(this + 11) = b2StackAllocator::Allocate(*this, 16 * a2);
}

void sub_25E7CD9D0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  b2Island::b2Island(v2 + 3, v2, v1);
  _Unwind_Resume(a1);
}

void b2Island::~b2Island(b2Island *this)
{
  b2StackAllocator::Free(*this, *(this + 11));
  b2StackAllocator::Free(*this, *(this + 12));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

void b2Island::Solve(uint64_t *a1, int a2, __int128 *a3, PKCAether *a4, double a5, float a6, float a7, float a8, float a9, int a10, char *a11)
{
  PKCAether::Evaluator::Evaluator(&v89, a4);
  v21 = a1[2];
  if (a1[3] != v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(v21 + v23);
      v26 = *(v25 + 96);
      v20.n128_u64[0] = *(v25 + 128);
      v27 = *(v25 + 136);
      *(v25 + 80) = v26;
      if (*(v25 + 20) == 2)
      {
        v75 = v20;
        v76 = v26;
        v26.i64[0] = *(v25 + 32);
        v74 = v26;
        PKCAether::Evaluator::evalVelocity(&v89, *(v25 + 4), v26, v20, *(v25 + 208), *(v25 + 216), a5);
        if (*&v28 >= 3.4028e38)
        {
          if (*v25)
          {
            v31 = 1.0;
          }

          else
          {
            v31 = 0.0;
          }

          v29.n128_u32[0] = *(v25 + 208);
          PKCAether::Evaluator::evalForce(&v89, *(v25 + 4), v31, v74, v75, v29, *(v25 + 216), a5);
          v30 = *a3;
          v20.n128_u64[1] = v75.n128_u64[1];
          v20.n128_u64[0] = vadd_f32(v75.n128_u64[0], vmul_n_f32(vadd_f32(v32, *(v25 + 140)), *a3 * *(v25 + 212)));
        }

        else
        {
          v30 = *a3;
          v20.n128_u64[0] = v28;
        }

        v33 = *(v25 + 228);
        if ((LODWORD(v33) & 0x60000000) != 0)
        {
          v20.n128_u64[0] = vmul_n_f32(v20.n128_u64[0], 1.0 / ((v30 * v33) + 1.0));
        }

        v27 = v27 + ((v30 * *(v25 + 224)) * *(v25 + 148));
        v34 = *(v25 + 232);
        if ((LODWORD(v34) & 0x60000000) != 0)
        {
          v27 = v27 * (1.0 / ((v30 * v34) + 1.0));
        }

        v26 = v76;
      }

      *(a1[11] + v22) = v26;
      *(a1[12] + v22) = v20.n128_u64[0];
      *(a1[12] + v22 + 12) = v27;
      ++v24;
      v21 = a1[2];
      v23 += 8;
      v22 += 16;
    }

    while (v24 < (a1[3] - v21) >> 3);
  }

  v85 = *a3;
  v35 = a1[11];
  v36 = a1[12];
  v86 = *(a3 + 2);
  v87 = v35;
  v88 = v36;
  v78 = *a3;
  v79 = *(a3 + 2);
  v80 = (a1[6] - a1[5]) >> 3;
  v81 = v35;
  v82 = v36;
  v83 = *a1;
  v84 = a6;
  b2ContactSolver::b2ContactSolver(v77, &v78, a1 + 2, a1 + 5);
  b2ContactSolver::InitializeVelocityConstraints(v77);
  if (*(a3 + 20) == 1)
  {
    b2ContactSolver::WarmStart(v77);
  }

  v37 = a1[8];
  v38 = a1[9];
  while (v37 != v38)
  {
    (*(**v37 + 48))(*v37, &v85);
    ++v37;
  }

  if (*(a3 + 3) >= 1)
  {
    v39 = 0;
    do
    {
      v40 = a1[8];
      v41 = a1[9];
      while (v40 != v41)
      {
        (*(**v40 + 56))(*v40, &v85);
        ++v40;
      }

      b2ContactSolver::SolveVelocityConstraints(v77);
      ++v39;
    }

    while (v39 < *(a3 + 3));
  }

  b2ContactSolver::StoreImpulses(v77);
  v42 = a1[2];
  v43 = a1[3];
  if (v43 != v42)
  {
    v44 = 0;
    do
    {
      v45 = *(a1[12] + 16 * v44);
      v46 = *a3;
      v47 = vmulq_f32(v45, v45).u64[0];
      v48 = vmuls_lane_f32(v46 * v46, v47, 1) + (v47.f32[0] * (v46 * v46));
      if (v48 > 4.0)
      {
        v49.i64[0] = vmulq_n_f32(v45, 2.0 / sqrtf(v48)).u64[0];
        v49.i64[1] = *(a1[12] + 16 * v44 + 8);
        v45 = v49;
      }

      v50 = vmuls_lane_f32(v46, v45, 3);
      if ((v50 * v50) > 2.4674)
      {
        if (v50 <= 0.0)
        {
          v50 = -v50;
        }

        v45.f32[3] = v45.f32[3] * (1.5708 / v50);
      }

      *(a1[11] + 16 * v44) = vmlaq_n_f32(*(a1[11] + 16 * v44), v45, v46);
      *(a1[12] + 16 * v44++) = v45;
      v42 = a1[2];
      v43 = a1[3];
    }

    while (v44 < (v43 - v42) >> 3);
  }

  if (*(a3 + 4) < 1)
  {
    v56 = 1;
  }

  else
  {
    v51 = 0;
    do
    {
      v52 = b2ContactSolver::SolvePositionConstraints(v77);
      v53 = a1[8];
      v54 = a1[9];
      v55 = 1;
      while (v53 != v54)
      {
        v55 &= (*(**v53 + 64))(*v53, &v85);
        ++v53;
      }

      if (v52 & v55)
      {
        break;
      }

      ++v51;
    }

    while (v51 < *(a3 + 4));
    v56 = v52 & v55 ^ 1;
    v42 = a1[2];
    v43 = a1[3];
  }

  if (v43 != v42)
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = *(v42 + 8 * v58);
      *(v59 + 96) = *(a1[11] + v57);
      *(v59 + 128) = *(a1[12] + v57);
      *(v59 + 136) = *(a1[12] + v57 + 12);
      v60 = __sincosf_stret(*(v59 + 108));
      *(v59 + 40) = v60;
      v61 = *(v59 + 64);
      v62 = *(v59 + 68);
      v63 = *(v59 + 100) - ((v60.__cosval * v62) + (v60.__sinval * v61));
      *(v59 + 32) = *(v59 + 96) - ((v60.__cosval * v61) - (v60.__sinval * v62));
      *(v59 + 36) = v63;
      ++v58;
      v42 = a1[2];
      v57 += 16;
    }

    while (v58 < (a1[3] - v42) >> 3);
  }

  b2Island::Report(a1, v77[9]);
  if (a10)
  {
    v65 = a1[2];
    v64 = a1[3];
    if (v65 == v64)
    {
      v67 = 3.4028e38;
      if (a9 > 3.4028e38)
      {
        v72 = 1;
      }

      else
      {
        v72 = v56;
      }

      if ((v72 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v66 = *a3;
      v67 = 3.4028e38;
      v68 = v65;
      do
      {
        v69 = *v68;
        if ((*v68)->var5)
        {
          if ((v69->var6 & 4) != 0 && (*&v69->var15 * *&v69->var15) <= (a8 * a8) && ((*(&v69->var14 + 1) * *(&v69->var14 + 1)) + (v69->var14 * v69->var14)) <= (a7 * a7))
          {
            v70 = v66 + *&v69[1].var1;
            *&v69[1].var1 = v70;
            if (v67 >= v70)
            {
              v67 = v70;
            }
          }

          else
          {
            v69[1].var1 = 0;
            v67 = 0.0;
          }
        }

        ++v68;
      }

      while (v68 != v64);
      if (v67 < a9)
      {
        v71 = 1;
      }

      else
      {
        v71 = v56;
      }

      if ((v71 & 1) == 0)
      {
        do
        {
          b2Body::SetAwake(*v65++, 0);
        }

        while (v65 != v64);
LABEL_72:
        v73 = 1;
        goto LABEL_73;
      }
    }

    v73 = (v67 > 0.0) & ~v56;
LABEL_73:
    *a11 = v73;
  }

  b2ContactSolver::~b2ContactSolver(v77);
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v77[0] = &v89;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](v77);
}

void sub_25E7CE06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  b2ContactSolver::~b2ContactSolver(va);
  PKCAether::Evaluator::~Evaluator((v8 - 224));
  _Unwind_Resume(a1);
}

void *b2Island::Report(void *result, uint64_t a2)
{
  if (result[1])
  {
    v2 = result;
    v4 = result[5];
    v3 = result[6];
    if (v3 != v4)
    {
      v6 = 0;
      v7 = (a2 + 20);
      do
      {
        v8 = *(v4 + 8 * v6);
        v9 = *(a2 + 152 * v6 + 144);
        v15[2] = v9;
        v10 = v7;
        v11 = v15;
        if (v9 >= 1)
        {
          do
          {
            v12 = *v10;
            *(v11 - 2) = *(v10 - 1);
            *v11++ = v12;
            v10 += 9;
            --v9;
          }

          while (v9);
        }

        v13 = *(*(v8 + 80) + 24);
        v14 = *(*(v8 + 88) + 24);
        if ((*(v14 + 8) & *(v13 + 16)) != 0 || (*(v13 + 8) & *(v14 + 16)) != 0)
        {
          result = (*(*v2[1] + 48))(v2[1]);
          v4 = v2[5];
          v3 = v2[6];
        }

        ++v6;
        v7 += 38;
      }

      while (v6 < (v3 - v4) >> 3);
    }
  }

  return result;
}

void b2Island::SolveTOI(void *a1, __int128 *a2, int a3, int a4, float a5)
{
  v6 = a1[3] - a1[2];
  v7 = v6 >> 3;
  if ((v6 >> 3) <= a3)
  {
    b2Island::SolveTOI();
  }

  if (v7 <= a4)
  {
    b2Island::SolveTOI();
  }

  v11 = (v6 >> 3) & 0x7FFFFFFF;
  if (v7 >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(a1[2] + 8 * v13);
      *(a1[11] + v12) = *(v14 + 96);
      *(a1[12] + v12) = *(v14 + 128);
      *(a1[12] + v12 + 12) = *(v14 + 136);
      ++v13;
      v12 += 16;
    }

    while (v11 != v13);
  }

  v38 = (a1[6] - a1[5]) >> 3;
  v40 = *a1;
  v36 = *a2;
  v37 = *(a2 + 2);
  v39 = *(a1 + 11);
  v41 = a5;
  b2ContactSolver::b2ContactSolver(v34, &v36, a1 + 2, a1 + 5);
  if (*(a2 + 4) >= 1)
  {
    v15 = 0;
    do
    {
      if (b2ContactSolver::SolveTOIPositionConstraints(v34, a3, a4))
      {
        break;
      }

      ++v15;
    }

    while (v15 < *(a2 + 4));
  }

  *(*(a1[2] + 8 * a3) + 80) = *(a1[11] + 16 * a3);
  *(*(a1[2] + 8 * a4) + 80) = *(a1[11] + 16 * a4);
  b2ContactSolver::InitializeVelocityConstraints(v34);
  if (*(a2 + 3) >= 1)
  {
    v17 = 0;
    do
    {
      b2ContactSolver::SolveVelocityConstraints(v34);
      ++v17;
    }

    while (v17 < *(a2 + 3));
  }

  if (v7 >= 1)
  {
    v18 = 0;
    v16.i32[0] = *a2;
    v19 = *v16.i32 * *v16.i32;
    v32 = *a2;
    v31 = vdupq_lane_s32(v16, 0);
    do
    {
      v20 = *(a1[12] + 16 * v18);
      v21 = vmulq_f32(v20, v20).u64[0];
      v22 = vmuls_lane_f32(v19, v21, 1) + (v21.f32[0] * v19);
      if (v22 > 4.0)
      {
        v23.i64[0] = vmulq_n_f32(v20, 2.0 / sqrtf(v22)).u64[0];
        v23.i64[1] = *(a1[12] + 16 * v18 + 8);
        v20 = v23;
      }

      v24 = v20.f32[3];
      v25 = vmuls_lane_f32(v32, v20, 3);
      if ((v25 * v25) > 2.4674)
      {
        if (v25 <= 0.0)
        {
          v25 = -v25;
        }

        v24 = v20.f32[3] * (1.5708 / v25);
        v20.f32[3] = v24;
      }

      v26 = a1[11];
      v33 = vmlaq_f32(*(v26 + 16 * v18), v20, v31);
      *(v26 + 16 * v18) = v33;
      *(a1[12] + 16 * v18) = v20;
      v27 = *(a1[2] + 8 * v18);
      *(v27 + 96) = v33;
      *(v27 + 128) = v20.i64[0];
      *(v27 + 136) = v24;
      v28 = __sincosf_stret(v33.f32[3]);
      *(v27 + 40) = v28;
      v29 = *(v27 + 64);
      v30 = *(v27 + 68);
      *(v27 + 32) = v33.f32[0] - ((v28.__cosval * v29) - (v28.__sinval * v30));
      *(v27 + 36) = v33.f32[1] - ((v28.__cosval * v30) + (v28.__sinval * v29));
      ++v18;
    }

    while (v11 != v18);
  }

  b2Island::Report(a1, v35);
  b2ContactSolver::~b2ContactSolver(v34);
}

void sub_25E7CE498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  b2ContactSolver::~b2ContactSolver(va);
  _Unwind_Resume(a1);
}

uint64_t b2Island::ClearIslandFlags(uint64_t this)
{
  v1 = *(this + 16);
  v2 = *(this + 24);
  while (v1 != v2)
  {
    if (!*(*v1 + 20))
    {
      *(*v1 + 24) &= ~1u;
    }

    v1 += 8;
  }

  return this;
}

void b2Island::SynchronizeBodiesAndContacts(b2Island *this)
{
  v1 = *(this + 2);
  for (i = *(this + 3); v1 != i; ++v1)
  {
    v3 = *v1;
    if ((*v1)->var5 == 2)
    {
      b2Body::SynchronizeFixtures(*v1);
      for (j = *&v3->var24; j; j = *(j + 24))
      {
        *(*(j + 8) + 12) &= 0xFFFFFFDE;
      }
    }
  }
}

void b2World::b2World(b2World *this, const b2Vec2 *a2, char a3)
{
  b2StackAllocator::b2StackAllocator(this);
  b2ContactManager::b2ContactManager((v5 + 102944));
  *(this + 12899) = 0;
  *(this + 12904) = 0;
  *(this + 103240) = 0u;
  *(this + 12891) = 0;
  *(this + 6446) = 0u;
  *(this + 6448) = 0u;
  *(this + 25797) = 16777473;
  *(this + 103160) = a3;
  operator new();
}

void sub_25E7CE650(_Unwind_Exception *a1)
{
  MEMORY[0x25F8C0280](v2, 0x1020C4075D858B6);
  v7 = *v5;
  if (*v5)
  {
    *(v4 + 840) = v7;
    operator delete(v7);
  }

  b2ContactManager::~b2ContactManager((v1 + v3));
  b2StackAllocator::~b2StackAllocator(v1);
  _Unwind_Resume(a1);
}

void b2World::~b2World(b2World *this)
{
  v2 = (this + 102400);
  v3 = *(this + 12891);
  while (v3)
  {
    v5 = v3 + 168;
    v3 = *(v3 + 168);
    v4 = *(v5 + 8);
    if (v4)
    {
      do
      {
        v6 = v4[2];
        (*(*v4 + 8))(v4);
        v4 = v6;
      }

      while (v6);
    }
  }

  v7 = v2[94];
  if (v7)
  {
    PKCAether::~PKCAether(v7);
    MEMORY[0x25F8C0280]();
  }

  v8 = v2[104];
  if (v8)
  {
    v2[105] = v8;
    operator delete(v8);
  }

  b2ContactManager::~b2ContactManager((this + 102944));

  b2StackAllocator::~b2StackAllocator(this);
}

double b2World::SetGravity(b2World *this, const b2Vec2 *a2, __n128 a3)
{
  a3.n128_u64[0] = *a2;
  **(this + 12894) = a3;
  return a3.n128_f64[0];
}

void b2World::CreateBody(b2World *this, const b2BodyDef *a2)
{
  if ((*(this + 102936) & 2) == 0)
  {
    operator new();
  }

  b2World::CreateBody();
}

void b2World::DestroyBody(b2World *this, b2Body *a2, uint64_t a3)
{
  v3 = this + 102400;
  if (*(this + 25786) > 0)
  {
    if ((*(this + 102936) & 2) == 0)
    {
      v6 = *&a2->var22;
      if (v6)
      {
        do
        {
          v7 = *(v6 + 24);
          v8 = *(v3 + 96);
          if (v8)
          {
            (*(*v8 + 16))(v8, *(v6 + 8));
          }

          b2World::DestroyJoint(this, *(v6 + 8));
          *&a2->var22 = v7;
          v6 = v7;
        }

        while (v7);
      }

      *&a2->var22 = 0;
      v9 = *&a2->var24;
      if (v9)
      {
        do
        {
          v10 = *(v9 + 24);
          b2ContactManager::DestroyContact((this + 102944), *(v9 + 8));
          v9 = v10;
        }

        while (v10);
      }

      *&a2->var24 = 0;
      var20 = a2->var20;
      if (var20)
      {
        do
        {
          var2 = var20->var2;
          v13 = *(v3 + 96);
          if (v13)
          {
            (*(*v13 + 24))(v13, var20);
          }

          b2Fixture::DestroyProxies(var20, (this + 102944));
          (*&var20->var0->var2)(var20);
          a2->var20 = var2;
          --LODWORD(a2->var21);
          var20 = var2;
        }

        while (var2);
      }

      a2->var20 = 0;
      LODWORD(a2->var21) = 0;
      var18 = a2->var18;
      v14 = *&a2->var19;
      if (var18)
      {
        *(var18 + 21) = v14;
      }

      if (v14)
      {
        *(v14 + 160) = var18;
      }

      if (*(v3 + 91) == a2)
      {
        *(v3 + 91) = v14;
      }

      --*(v3 + 186);
      PKCMechanics::QueryAABB(a2, a2, a3);

      JUMPOUT(0x25F8C0280);
    }

    b2World::DestroyBody();
  }

  b2World::DestroyBody();
}

b2Joint *b2World::DestroyJoint(b2World *this, b2Joint *a2)
{
  v2 = this + 102400;
  if ((*(this + 102936) & 2) != 0)
  {
    b2World::DestroyJoint();
  }

  var2 = a2->var2;
  var3 = a2->var3;
  if (var2)
  {
    var2->var3 = var3;
  }

  if (var3)
  {
    var3->var2 = var2;
  }

  if (*(this + 12892) == a2)
  {
    *(this + 12892) = var3;
  }

  var6 = a2->var6;
  var7 = a2->var7;
  b2Body::SetAwake(var6, 1);
  b2Body::SetAwake(var7, 1);
  v10 = a2->var4.var2;
  v9 = a2->var4.var3;
  if (v10)
  {
    v10->var3 = v9;
  }

  if (v9)
  {
    v9->var2 = v10;
  }

  if (&a2->var4 == *&var6->var22)
  {
    *&var6->var22 = v9;
  }

  a2->var4.var2 = 0;
  a2->var4.var3 = 0;
  v12 = a2->var5.var2;
  v11 = a2->var5.var3;
  if (v12)
  {
    v12->var3 = v11;
  }

  if (v11)
  {
    v11->var2 = v12;
  }

  if (&a2->var5 == *&var7->var22)
  {
    *&var7->var22 = v11;
  }

  a2->var5.var2 = 0;
  a2->var5.var3 = 0;
  result = b2Joint::Destroy(a2, v8);
  v14 = *(v2 + 187);
  if (v14 <= 0)
  {
    b2World::DestroyJoint();
  }

  *(v2 + 187) = v14 - 1;
  return result;
}

void b2World::CreateJoint(b2World *this, b2Joint *a2)
{
  if ((*(this + 102936) & 2) == 0)
  {
    b2Joint::Create(a2, a2);
  }

  b2World::CreateJoint();
}

void b2World::Solve(b2StackAllocator *a1, __int128 *a2)
{
  v2 = a1 + 102400;
  for (i = *(a1 + 12891); i; i = *(i + 168))
  {
    *(i + 48) = *(i + 32);
  }

  b2Island::b2Island(v42, *(a1 + 25786), *(a1 + 25776), *(a1 + 25787), a1, *(a1 + 12868));
  for (j = *(v2 + 91); j; j = *(j + 168))
  {
    *(j + 24) &= ~1u;
  }

  b2ContactManager::ClearContactIslandFlags((v2 + 544));
  for (k = *(v2 + 92); k; k = *(k + 24))
  {
    *(k + 112) = 0;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::vector<PKCField *>::reserve(&v39, *(v2 + 186));
  v6 = *(v2 + 91);
  v38 = v6;
  if (v6)
  {
    v7 = 1;
    v33 = v2;
    do
    {
      if ((v6->var6 & 1) == 0)
      {
        IsAwake = b2Body::IsAwake(v6);
        v6 = v38;
        if (IsAwake)
        {
          IsActive = b2Body::IsActive(v38);
          v6 = v38;
          if (IsActive)
          {
            if (v38->var5)
            {
              v44 = v43;
              v46 = __p;
              v49 = v48;
              v40 = v39;
              std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v39, &v38);
              v35 = v7;
              v38->var6 |= 1u;
              while (v39 != v40)
              {
                v10 = *(v40 - 1);
                v40 -= 8;
                v36[0] = v10;
                *(v10 + 28) = (v44 - v43) >> 3;
                std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v43, v36);
                b2Body::SetAwake(v10, 1);
                if (*(v10 + 20))
                {
                  for (m = *(v10 + 200); m; m = *(m + 24))
                  {
                    v12 = *(m + 8);
                    if ((*(v12 + 12) & 7) == 6)
                    {
                      v13 = *(*(v12 + 80) + 24);
                      v14 = *(*(v12 + 88) + 24);
                      if ((*(v14 + 8) & *(v13 + 12)) != 0 || (*(v13 + 8) & *(v14 + 12)) != 0)
                      {
                        v15 = v46;
                        if (v46 >= v47)
                        {
                          v17 = (v46 - __p) >> 3;
                          if ((v17 + 1) >> 61)
                          {
                            std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
                          }

                          v18 = (v47 - __p) >> 2;
                          if (v18 <= v17 + 1)
                          {
                            v18 = v17 + 1;
                          }

                          if (v47 - __p >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v19 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v19 = v18;
                          }

                          if (v19)
                          {
                            std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(&__p, v19);
                          }

                          *(8 * v17) = v12;
                          v16 = 8 * v17 + 8;
                          v20 = (8 * v17 - (v46 - __p));
                          memcpy(v20, __p, v46 - __p);
                          v21 = __p;
                          __p = v20;
                          v46 = v16;
                          v47 = 0;
                          if (v21)
                          {
                            operator delete(v21);
                          }
                        }

                        else
                        {
                          *v46 = v12;
                          v16 = (v15 + 8);
                        }

                        v46 = v16;
                        *(v12 + 12) |= 1u;
                        v36[0] = *m;
                        if ((v36[0]->var6 & 1) == 0)
                        {
                          std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v39, v36);
                          v36[0]->var6 |= 1u;
                        }
                      }
                    }
                  }

                  for (n = *(v10 + 192); n; n = *(n + 24))
                  {
                    if ((*(*(n + 8) + 112) & 1) == 0)
                    {
                      v36[0] = *n;
                      if (b2Body::IsActive(v36[0]))
                      {
                        v23 = *(n + 8);
                        v24 = v49;
                        if (v49 >= v50)
                        {
                          v26 = (v49 - v48) >> 3;
                          if ((v26 + 1) >> 61)
                          {
                            std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
                          }

                          v27 = (v50 - v48) >> 2;
                          if (v27 <= v26 + 1)
                          {
                            v27 = v26 + 1;
                          }

                          if (v50 - v48 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v28 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v28 = v27;
                          }

                          if (v28)
                          {
                            std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(&v48, v28);
                          }

                          *(8 * v26) = v23;
                          v25 = 8 * v26 + 8;
                          v29 = (8 * v26 - (v49 - v48));
                          memcpy(v29, v48, v49 - v48);
                          v30 = v48;
                          v48 = v29;
                          v49 = v25;
                          v50 = 0;
                          if (v30)
                          {
                            operator delete(v30);
                          }
                        }

                        else
                        {
                          *v49 = v23;
                          v25 = (v24 + 8);
                        }

                        v49 = v25;
                        *(*(n + 8) + 112) = 1;
                        if ((v36[0]->var6 & 1) == 0)
                        {
                          std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v39, v36);
                          v36[0]->var6 |= 1u;
                        }
                      }
                    }
                  }
                }
              }

              v37 = 0;
              v2 = v33;
              b2Island::Solve(v42, v36, a2, *(v33 + 94), *(v33 + 99), *(v33 + 200), *(v33 + 202), *(v33 + 203), *(v33 + 204), v33[760], &v37);
              v31 = v37;
              b2Island::ClearIslandFlags(v42);
              v7 = v31 & v35;
              v6 = v38;
            }
          }
        }
      }

      v6 = *&v6->var19;
      v38 = v6;
    }

    while (v6);
    v32 = *(v2 + 91);
    for (v2[804] = v7 & 1; v32; v32 = *(v32 + 168))
    {
      if ((*(v32 + 24) & 1) != 0 && *(v32 + 20))
      {
        b2Body::SynchronizeFixtures(v32);
      }
    }
  }

  else
  {
    v2[804] = 1;
  }

  b2ContactManager::FindNewContacts((v2 + 544));
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  b2Island::~b2Island(v42);
}

void b2World::SolveTOI(b2ContactListener **a1, uint64_t a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 12800);
  b2Island::b2Island(v89, 64, 32, 0, a1, a1[12868]);
  v3 = (v2 + 136);
  if (*(v2 + 791) == 1)
  {
    for (i = *(v2 + 91); i; i = *(i + 168))
    {
      *(i + 24) &= ~1u;
      *(i + 112) = 0;
    }

    b2ContactManager::InvalidateContacts((v2 + 136));
  }

  v5 = 1;
  v79 = v2;
  while (1)
  {
    v81 = v5;
    v88 = 0;
    v87 = 1.0;
    b2ContactManager::FindMinimumTOI(v3, &v88, &v87);
    v6 = v88;
    if (!v88 || v87 > 1.0)
    {
      *(v2 + 791) = 1;
      goto LABEL_76;
    }

    v7 = *(*(v88 + 10) + 24);
    v8 = *(*(v88 + 11) + 24);
    v9 = *(v7 + 80);
    v106 = *(v7 + 64);
    v107 = v9;
    v10 = *(v7 + 112);
    v82 = v7;
    v83 = v8;
    v108 = *(v7 + 96);
    v109 = v10;
    v11 = *&v8->var10.var1.var0.var1;
    v102 = *&v8->var10.var0.x;
    v103 = v11;
    v12 = *&v8->var11.y;
    v104 = *&v8->var10.var2.var0.var1;
    v105 = v12;
    if ((LODWORD(v87) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v87 <= 1.0)
      {
        v13 = v87;
      }

      else
      {
        v13 = 1.0;
      }

      v84 = vmlaq_n_f32(*(v7 + 80), vsubq_f32(*(v7 + 96), *(v7 + 80)), (v13 - *(v7 + 112)) / (1.0 - *(v7 + 112)));
      *(v7 + 112) = v13;
      *(v7 + 80) = v84;
      *(v7 + 96) = v84;
      v14 = __sincosf_stret(v84.f32[3]);
      v82->var8.var1 = v14;
      x = v82->var10.var0.x;
      y = v82->var10.var0.y;
      v82->var8.var0.x = v84.f32[0] - ((v14.__cosval * x) - (v14.__sinval * y));
      v82->var8.var0.y = v84.f32[1] - ((v14.__cosval * y) + (v14.__sinval * x));
      v85 = vmlaq_n_f32(*&v83->var10.var1.var0.var1, vsubq_f32(*&v83->var10.var2.var0.var1, *&v83->var10.var1.var0.var1), (v13 - v83->var11.y) / (1.0 - v83->var11.y));
      v83->var11.y = v13;
      *&v83->var10.var1.var0.var1 = v85;
      *&v83->var10.var2.var0.var1 = v85;
      v17 = __sincosf_stret(v85.f32[3]);
      v83->var8.var1 = v17;
      v18 = v83->var10.var0.x;
      v19 = v83->var10.var0.y;
      v83->var8.var0.x = v85.f32[0] - ((v17.__cosval * v18) - (v17.__sinval * v19));
      v83->var8.var0.y = v85.f32[1] - ((v17.__cosval * v19) + (v17.__sinval * v18));
    }

    b2Contact::Update(v6, *v3);
    v20 = v88;
    v21 = *(v88 + 3);
    *(v88 + 3) = v21 & 0xFFFFFFDF;
    ++*(v20 + 42);
    if ((~v21 & 6) == 0)
    {
      break;
    }

    *(v20 + 3) = v21 & 0xFFFFFFDB;
    v24 = v107;
    *&v82->var10.var0.x = v106;
    *&v82->var10.var1.var0.var1 = v24;
    *&v82->var10.var2.var0.var1 = v108;
    LODWORD(v82->var11.y) = v109;
    v25 = v103;
    *&v83->var10.var0.x = v102;
    *&v83->var10.var1.var0.var1 = v25;
    *&v83->var10.var2.var0.var1 = v104;
    LODWORD(v83->var11.y) = v105;
    v26 = __sincosf_stret(v82->var11.x);
    v82->var8.var1 = v26;
    v27 = v82->var10.var0.x;
    v28 = v82->var10.var0.y;
    v29 = (v26.__cosval * v27) - (v26.__sinval * v28);
    v30 = (v26.__cosval * v28) + (v26.__sinval * v27);
    var2 = v82->var10.var2.var0.var2;
    v82->var8.var0.x = v82->var10.var2.var0.var1 - v29;
    v82->var8.var0.y = var2 - v30;
    v32 = __sincosf_stret(v83->var11.x);
    v83->var8.var1 = v32;
    v33 = v83->var10.var0.x;
    v34 = v83->var10.var0.y;
    v35 = v83->var10.var2.var0.var2 - ((v32.__cosval * v34) + (v32.__sinval * v33));
    v83->var8.var0.x = v83->var10.var2.var0.var1 - ((v32.__cosval * v33) - (v32.__sinval * v34));
    v83->var8.var0.y = v35;
LABEL_72:
    v5 = 0;
    if ((v81 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  b2Body::SetAwake(v82, 1);
  b2Body::SetAwake(v83, 1);
  v91 = v90;
  v93 = __p;
  v96 = v95;
  *&v98 = v82;
  v82->var7 = 0;
  std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v90, &v98);
  *&v98 = v83;
  v83->var7 = (v91 - v90) >> 3;
  std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v90, &v98);
  v22 = v93;
  if (v93 >= v94)
  {
    v36 = (v93 - __p) >> 3;
    if ((v36 + 1) >> 61)
    {
      std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
    }

    v37 = (v94 - __p) >> 2;
    if (v37 <= v36 + 1)
    {
      v37 = v36 + 1;
    }

    if (v94 - __p >= 0x7FFFFFFFFFFFFFF8)
    {
      v38 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(&__p, v38);
    }

    *(8 * v36) = v88;
    v23 = 8 * v36 + 8;
    v39 = (8 * v36 - (v93 - __p));
    memcpy(v39, __p, v93 - __p);
    v40 = __p;
    __p = v39;
    v93 = v23;
    v94 = 0;
    if (v40)
    {
      operator delete(v40);
    }
  }

  else
  {
    *v93 = v88;
    v23 = (v22 + 8);
  }

  v93 = v23;
  v41 = v82;
  v82->var6 |= 1u;
  v83->var6 |= 1u;
  *(v88 + 3) |= 1u;
  v42 = 1;
  do
  {
    v43 = v42;
    if (v41->var5 == 2)
    {
      for (j = *&v41->var24; j; j = j[3])
      {
        v45 = j[1];
        if ((*(v45 + 12) & 1) == 0)
        {
          v46 = *j;
          if (*(*j + 20) != 2 || (b2Body::IsBullet(v41) & 1) != 0 || (b2Body::IsBullet(v46) & 1) != 0)
          {
            v47 = *(*(v45 + 80) + 24);
            v48 = *(*(v45 + 88) + 24);
            v49 = v48[2];
            if ((v49 & v47[3]) != 0 || (v50 = v47[2], (v50 & v48[3]) != 0) || (v47[4] & v49) != 0 || (v48[4] & v50) != 0)
            {
              v51 = *(v46 + 80);
              v98 = *(v46 + 64);
              v52 = *(v46 + 96);
              v53 = *(v46 + 112);
              v99 = v51;
              v100 = v52;
              v101 = v53;
              if ((*(v46 + 24) & 1) == 0)
              {
                v54 = v87;
                if ((LODWORD(v87) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                {
                  if (v87 > 1.0)
                  {
                    v54 = 1.0;
                  }

                  v86 = vmlaq_n_f32(*(v46 + 80), vsubq_f32(*(v46 + 96), *(v46 + 80)), (v54 - *(v46 + 112)) / (1.0 - *(v46 + 112)));
                  *(v46 + 112) = v54;
                  *(v46 + 80) = v86;
                  *(v46 + 96) = v86;
                  v55 = __sincosf_stret(v86.f32[3]);
                  *(v46 + 40) = v55;
                  v56 = *(v46 + 64);
                  v57 = *(v46 + 68);
                  *(v46 + 32) = v86.f32[0] - ((v55.__cosval * v56) - (v55.__sinval * v57));
                  *(v46 + 36) = v86.f32[1] - ((v55.__cosval * v57) + (v55.__sinval * v56));
                }
              }

              b2Contact::Update(v45, *v3);
              v58 = *(v45 + 12);
              if ((v58 & 4) != 0 && (v58 & 2) != 0)
              {
                *(v45 + 12) = v58 | 1;
                v64 = v93;
                if (v93 >= v94)
                {
                  v66 = (v93 - __p) >> 3;
                  if ((v66 + 1) >> 61)
                  {
                    std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
                  }

                  v67 = (v94 - __p) >> 2;
                  if (v67 <= v66 + 1)
                  {
                    v67 = v66 + 1;
                  }

                  if (v94 - __p >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v68 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v68 = v67;
                  }

                  if (v68)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(&__p, v68);
                  }

                  v69 = (8 * v66);
                  *v69 = v45;
                  v65 = 8 * v66 + 8;
                  v70 = v69 - (v93 - __p);
                  memcpy(v70, __p, v93 - __p);
                  v71 = __p;
                  __p = v70;
                  v93 = v65;
                  v94 = 0;
                  if (v71)
                  {
                    operator delete(v71);
                  }
                }

                else
                {
                  *v93 = v45;
                  v65 = (v64 + 8);
                }

                v93 = v65;
                v72 = *(v46 + 24);
                if ((v72 & 1) == 0)
                {
                  *(v46 + 24) = v72 | 1;
                  if (*(v46 + 20))
                  {
                    b2Body::SetAwake(v46, 1);
                  }

                  v97 = v46;
                  *(v46 + 28) = (v91 - v90) >> 3;
                  std::vector<PKPhysicsShape *>::push_back[abi:ne200100](&v90, &v97);
                }
              }

              else
              {
                *(v46 + 112) = v101;
                v59 = v100;
                *(v46 + 80) = v99;
                *(v46 + 96) = v59;
                *(v46 + 64) = v98;
                v60 = __sincosf_stret(*(v46 + 108));
                *(v46 + 40) = v60;
                v61 = *(v46 + 64);
                v62 = *(v46 + 68);
                v63 = *(v46 + 100) - ((v60.__cosval * v62) + (v60.__sinval * v61));
                *(v46 + 32) = *(v46 + 96) - ((v60.__cosval * v61) - (v60.__sinval * v62));
                *(v46 + 36) = v63;
              }
            }
          }
        }
      }
    }

    v42 = 0;
    v41 = v83;
  }

  while ((v43 & 1) != 0);
  v2 = v79;
  v73 = 1.0 / ((1.0 - v87) * *a2);
  *&v98 = (1.0 - v87) * *a2;
  *(&v98 + 1) = v73;
  v74 = *(a2 + 12);
  DWORD2(v98) = 1065353216;
  HIDWORD(v98) = v74;
  LODWORD(v99) = 20;
  BYTE4(v99) = 0;
  b2Island::SolveTOI(v89, &v98, v82->var7, v83->var7, v79[200]);
  v75 = v90;
  v76 = v91;
  while (v75 != v76)
  {
    v77 = *v75;
    *(v77 + 24) = *(*v75 + 24) & 0xFFFE;
    if (*(v77 + 20) == 2)
    {
      b2Body::SynchronizeFixtures(v77);
      for (k = *(v77 + 200); k; k = *(k + 24))
      {
        *(*(k + 8) + 12) &= 0xFFFFFFDE;
      }
    }

    v75 += 8;
  }

  b2ContactManager::FindNewContacts(v3);
  if (*(v79 + 790) != 1)
  {
    goto LABEL_72;
  }

  *(v79 + 791) = 0;
LABEL_76:
  b2Island::~b2Island(v89);
}

void sub_25E7CF918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  b2Island::~b2Island(va);
  _Unwind_Resume(a1);
}

void b2World::Step(b2World *this, float a2, int a3, int a4)
{
  v6 = a2;
  v8 = this + 102400;
  *(this + 12899) = *(this + 12899) + a2;
  v9 = *(this + 25734);
  if (v9)
  {
    b2ContactManager::FindNewContacts((this + 102944));
    v9 = *(v8 + 134) & 0xFFFFFFFE;
  }

  *(v8 + 134) = v9 | 2;
  HIDWORD(v13) = a3;
  v14 = a4;
  v10 = 1.0 / v6;
  if (v6 <= 0.0)
  {
    v10 = 0.0;
  }

  *&v13 = __PAIR64__(LODWORD(v10), LODWORD(v6));
  *(&v13 + 2) = *(v8 + 196) * v6;
  v15 = v8[788];
  b2ContactManager::Collide((this + 102944));
  if (v6 > 0.0 && (v8[791] & 1) != 0)
  {
    PKCMechanics::Solve(this + 103224, &v13);
    b2World::Solve(this, &v13);
    LODWORD(v6) = v13;
  }

  if (v8[789] == 1 && v6 > 0.0)
  {
    b2World::SolveTOI(this, &v13);
    LODWORD(v6) = v13;
  }

  if (v6 > 0.0)
  {
    *(v8 + 196) = DWORD1(v13);
  }

  v11 = *(v8 + 134);
  if ((v11 & 4) != 0)
  {
    for (i = *(v8 + 91); i; i = *(i + 168))
    {
      *(i + 144) = 0;
      *(i + 140) = 0;
    }
  }

  *(v8 + 134) = v11 & 0xFFFFFFFD;
}

b2World *b2World::ClearForces(b2World *this)
{
  for (i = *(this + 12891); i; i = *(i + 168))
  {
    *(i + 144) = 0;
    *(i + 140) = 0;
  }

  return this;
}

uint64_t b2World::QueryAABB(uint64_t a1, uint64_t a2, float *a3)
{
  v7[0] = a1 + 102944;
  v7[1] = a2;
  b2DynamicTree::Query<b2WorldQueryWrapper>((a1 + 102960), v7, a3);
  return PKCMechanics::QueryAABB(a1 + 103224, a2, a3);
}

uint64_t b2World::RayCast(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v11[0] = a1 + 102944;
  v11[1] = a2;
  v10 = 1065353216;
  v7 = *a4;
  v9[0] = *a3;
  v9[1] = v7;
  b2DynamicTree::RayCast<b2WorldRayCastWrapper>((a1 + 102960), v11, v9);
  return PKCMechanics::QueryAABB(a1 + 103224, a2, a3);
}

void b2World::DrawShape(uint64_t a1, uint64_t a2, b2Transform *a3, QuadTreeNode *a4)
{
  v7 = *(a2 + 32);
  v8 = *(v7 + 8);
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        var0 = a3->var1.var0;
        var1 = a3->var1.var1;
        v13 = *(v7 + 16);
        v14 = *(v7 + 20);
        x = a3->var0.x;
        y = a3->var0.y;
        *&__p = a3->var0.x + ((var1 * v13) - (var0 * v14));
        *(&__p + 1) = ((var1 * v14) + (var0 * v13)) + y;
        v17 = *(v7 + 24);
        v18 = *(v7 + 28);
        *&v41 = x + ((var1 * v17) - (var0 * v18));
        *(&v41 + 1) = y + ((var1 * v18) + (var0 * v17));
        (*(**(a1 + 103176) + 48))(*(a1 + 103176), &__p, &v41, a4);
      }
    }

    else
    {
      v34 = a3->var1;
      v35 = vrev64_s32(v34);
      v36 = vmul_f32(v34, 0);
      v34.var0 = -v34.var0;
      v37 = *(v7 + 12);
      __p = vadd_f32(a3->var0, vmla_n_f32(vmul_n_f32(v34, *(v7 + 20)), v35, *(v7 + 16)));
      LODWORD(v34.var0) = vsub_f32(v35, v36).u32[0];
      LODWORD(v34.var1) = vadd_f32(v35, v36).i32[1];
      v41 = v34;
      (*(**(a1 + 103176) + 40))(*(a1 + 103176), &__p, &v41, a4, v37);
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v19 = *(v7 + 24) - *(v7 + 16);
        __p = 0;
        v39 = 0;
        v40 = 0;
        std::vector<b2Vec2>::resize(&__p, (v19 >> 3));
        v20 = __p;
        if ((v19 >> 3) >= 1)
        {
          v21 = (v19 >> 3) & 0x7FFFFFFF;
          v22 = (*(v7 + 16) + 4);
          v23 = __p;
          do
          {
            v24 = a3->var1;
            v25 = vrev64_s32(v24);
            v24.var0 = -v24.var0;
            *v23++ = vadd_f32(a3->var0, vmla_n_f32(vmul_n_f32(v24, *v22), v25, *(v22 - 1)));
            v22 += 2;
            --v21;
          }

          while (v21);
        }

        (*(**(a1 + 103176) + 24))(*(a1 + 103176), v20);
        if (__p)
        {
          v39 = __p;
          operator delete(__p);
        }

        break;
      case 3:
        v26 = *(v7 + 16);
        v27 = *(v7 + 24) - v26;
        v28 = a3->var1;
        v29 = vrev64_s32(v28);
        v28.var0 = -v28.var0;
        __p = vadd_f32(a3->var0, vmla_n_f32(vmul_n_f32(v28, v26[1]), v29, *v26));
        if ((v27 >> 3) >= 2)
        {
          v30 = v26 + 3;
          v31 = ((v27 >> 3) & 0x7FFFFFFF) - 1;
          do
          {
            v32 = a3->var1;
            v33 = vrev64_s32(v32);
            v32.var0 = -v32.var0;
            v41 = vadd_f32(a3->var0, vmla_n_f32(vmul_n_f32(v32, *v30), v33, *(v30 - 1)));
            (*(**(a1 + 103176) + 48))(*(a1 + 103176), &__p, &v41, a4);
            __p = v41;
            v30 += 2;
            --v31;
          }

          while (v31);
        }

        break;
      case 4:
        v9 = *(a1 + 103176);
        v10 = **(v7 + 16);

        drawQuadtree(&a3->var0, v9, v10, a4);
        break;
    }
  }
}

void sub_25E7CFED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *drawQuadtree(float *result, b2Draw *a2, QuadTree *a3, QuadTreeNode *a4)
{
  v6 = result;
  v7 = *a3;
  if (v7 || !*(a3 + 1) && !*(a3 + 2) && !*(a3 + 3) && (v12 = result[2], v11 = result[3], v13 = *(a3 + 10), v14 = *(a3 + 11), v15 = *(a3 + 8), v16 = *(a3 + 9), v17 = (v11 * v15) - (v12 * v13), v18 = (v13 * v11) + (v12 * v15), v19 = *result, v20 = result[1], v24[0] = *result + v17, v24[1] = v18 + v20, v23[0] = v19 + ((v11 * v16) - (v12 * v14)), v23[1] = v20 + ((v11 * v14) + (v12 * v16)), v21 = 0x3F80000000000000, v22 = 0, result = (*(*a2 + 48))(a2, v24, v23, &v21), (v7 = *a3) != 0))
  {
    result = drawQuadtree(v6, a2, v7, a4);
  }

  v8 = *(a3 + 1);
  if (v8)
  {
    result = drawQuadtree(v6, a2, v8, a4);
  }

  v9 = *(a3 + 2);
  if (v9)
  {
    result = drawQuadtree(v6, a2, v9, a4);
  }

  v10 = *(a3 + 3);
  if (v10)
  {
    return drawQuadtree(v6, a2, v10, a4);
  }

  return result;
}

void b2World::DrawJoint(b2World *this, b2Joint *a2)
{
  var0 = a2->var6->var8.var0;
  v17 = a2->var7->var8.var0;
  v18 = var0;
  v16[0] = (*a2->var0)(a2);
  v16[1] = v5;
  v15[0] = (*(a2->var0 + 1))(a2);
  v15[1] = v6;
  v13 = 0x3F4CCCCD3F000000;
  v14 = 1061997773;
  var1 = a2->var1;
  if (var1 != 5)
  {
    if (var1 == 4)
    {
      v12[0] = b2PulleyJoint::GetGroundAnchorA(a2);
      v12[1] = v8;
      v11[0] = b2PulleyJoint::GetGroundAnchorB(a2);
      v11[1] = v9;
      (*(**(this + 12897) + 48))(*(this + 12897), v12, v16, &v13);
      (*(**(this + 12897) + 48))(*(this + 12897), v11, v15, &v13);
      v10 = *(**(this + 12897) + 48);
    }

    else
    {
      if (var1 != 3)
      {
        (*(**(this + 12897) + 48))(*(this + 12897), &v18, v16, &v13);
        (*(**(this + 12897) + 48))(*(this + 12897), v16, v15, &v13);
      }

      v10 = *(**(this + 12897) + 48);
    }

    v10();
  }
}

void b2World::DrawDebugData(b2World *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = this + 102400;
  v3 = *(this + 12897);
  if (v3)
  {
    Flags = b2Draw::GetFlags(v3);
    if ((Flags & 2) != 0)
    {
      for (i = *(v2 + 92); i; i = i->var3)
      {
        b2World::DrawJoint(this, i);
      }
    }

    if ((Flags & 4) != 0)
    {
      v34 = 0x3E99999A3F666666;
      v35 = 1063675494;
      for (j = *(v2 + 91); j; j = *(j + 168))
      {
        if (b2Body::IsActive(j))
        {
          for (k = *(j + 176); k; k = k[2])
          {
            v8 = k[6];
            v9 = k[7];
            while (v8 != v9)
            {
              v10 = *(v8 + 24);
              if ((v10 & 0x80000000) != 0 || *(v2 + 145) <= v10)
              {
                b2ContactManager::FindNewContacts();
              }

              v11 = (*(v2 + 71) + 48 * v10);
              v12.i64[0] = *v11;
              *&v13 = v11[1];
              HIDWORD(v14) = DWORD1(v13);
              LODWORD(v14) = *v11;
              HIDWORD(v15) = HIDWORD(*v11);
              LODWORD(v15) = v13;
              v12.i64[1] = v15;
              *(&v13 + 1) = v14;
              v36 = v12;
              *__p = v13;
              (*(**(v2 + 97) + 16))(*(v2 + 97), &v36, 4, &v34);
              v8 += 32;
            }
          }
        }
      }
    }

    if ((Flags & 0x10) != 0)
    {
      for (m = *(v2 + 91); m; m = m[10].i64[1])
      {
        v36 = m[2];
        v36.i64[0] = m[6].i64[0];
        (*(**(v2 + 97) + 56))(*(v2 + 97), &v36);
      }
    }

    if ((Flags & 0x20) != 0)
    {
      v31 = 0;
      (*(**(v2 + 97) + 64))(*(v2 + 97), &v33, v32, &v31);
      if (v31 >= 1)
      {
        PKCAether::Evaluator::Evaluator(&v36, *(v2 + 94));
        v34 = 0x3E99999A3F666666;
        v35 = 1050253722;
        v20 = v32[0] - v33.f32[0];
        if ((v32[0] - v33.f32[0]) > 0.0)
        {
          v21 = v32[1] - v33.f32[1];
          v17.i64[0] = 0;
          v27 = v17;
          v22 = v20 / v31;
          do
          {
            if (v21 > 0.0)
            {
              *&v18 = 0;
              do
              {
                v23 = v27;
                v28 = v18;
                v23.i32[1] = v18;
                *v23.f32 = vadd_f32(*v23.f32, v33);
                v30 = v23.i64[0];
                v19.n128_u32[0] = 1.0;
                PKCAether::Evaluator::evalForce(&v36, -1, 0.0, v23, 0, v19, 0.0, *(v2 + 99));
                v24 = *(v2 + 97);
                v29 = v25;
                (*(*v24 + 72))(v24, &v30, &v29, &v34);
                v18 = v28;
                *&v18 = v22 + *&v28;
              }

              while ((v22 + *&v28) < v21);
            }

            v26 = v27;
            v26.f32[0] = v22 + v27.f32[0];
            v27 = v26;
          }

          while (v26.f32[0] < v20);
        }

        if (__p[1])
        {
          v38 = __p[1];
          operator delete(__p[1]);
        }

        v34 = &v36;
        std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v34);
      }
    }
  }
}

void sub_25E7D05C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PKCAether::Evaluator::~Evaluator(va);
  _Unwind_Resume(a1);
}

void **b2DynamicTree::Query<b2WorldQueryWrapper>(int *a1, uint64_t a2, float *a3)
{
  v22 = v23;
  v6 = *a1;
  v25 = 256;
  v23[0] = v6;
  v7 = 1;
  for (i = v23; ; i = v22)
  {
    while (1)
    {
      v9 = v7 - 1;
      v24 = v7 - 1;
      v10 = i[v7 - 1];
      if (v10 != -1)
      {
        v11 = *(a1 + 1) + 48 * v10;
        if (*a3 <= *(v11 + 8) && a3[1] <= *(v11 + 12) && *v11 <= a3[2] && *(v11 + 4) <= a3[3])
        {
          break;
        }
      }

LABEL_29:
      v7 = v9;
      if (v9 < 1)
      {
        return b2GrowableStack<int,256>::~b2GrowableStack(&v22);
      }
    }

    v14 = *(v11 + 36);
    if (v14 != -1)
    {
      v15 = v25;
      if (v7 <= v25)
      {
        i[v9] = v14;
      }

      else
      {
        v25 *= 2;
        v22 = b2Alloc(8 * v15);
        memcpy(v22, i, 4 * v24);
        if (i != v23)
        {
          b2Free(i);
        }

        i = v22;
        v22[v24] = *(v11 + 36);
      }

      v19 = v24 + 1;
      v24 = v19;
      v20 = v25;
      if (v19 >= v25)
      {
        v25 *= 2;
        v22 = b2Alloc(8 * v20);
        memcpy(v22, i, 4 * v24);
        if (i != v23)
        {
          b2Free(i);
        }

        i = v22;
        v19 = v24;
      }

      i[v19] = *(v11 + 40);
      v9 = ++v24;
      goto LABEL_29;
    }

    FixtureProxy = b2ContactManager::GetFixtureProxy(*a2, v10);
    v17 = (*(**(a2 + 8) + 16))(*(a2 + 8), *(FixtureProxy + 16));
    v7 = v24;
    v18 = v24 > 0 ? v17 : 0;
    if (v18 != 1)
    {
      break;
    }
  }

  return b2GrowableStack<int,256>::~b2GrowableStack(&v22);
}

uint64_t b2ContactManager::GetFixtureProxy(b2ContactManager *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 9) <= a2)
  {
    b2ContactManager::FindNewContacts();
  }

  return *(*(this + 3) + 48 * a2 + 16);
}

void **b2DynamicTree::RayCast<b2WorldRayCastWrapper>(int *a1, uint64_t a2, float32x2_t *a3)
{
  v3 = *a3;
  *v4.f32 = vsub_f32(a3[1], *a3);
  v5 = COERCE_FLOAT(vmul_f32(*&v4, *&v4).i32[1]) + (v4.f32[0] * v4.f32[0]);
  if (v5 <= 0.0)
  {
    b2DynamicTree::RayCast<b2WorldRayCastWrapper>();
  }

  *v9.f32 = *a3;
  *&v9.u32[2] = *a3;
  v10 = sqrtf(v5);
  v11 = *v4.f32;
  if (v10 >= 0.00000011921)
  {
    v11 = vmul_n_f32(*v4.f32, 1.0 / v10);
  }

  v12 = -v11.f32[1];
  if (v11.f32[1] >= 0.0)
  {
    v13 = v11.f32[1];
  }

  else
  {
    v13 = -v11.f32[1];
  }

  if (v11.f32[0] <= 0.0)
  {
    v14 = -v11.f32[0];
  }

  else
  {
    v14 = v11.f32[0];
  }

  *v15.f32 = *a3;
  *&v15.u32[2] = *a3;
  v4.i64[1] = v4.i64[0];
  v46 = v4;
  v47 = a3[2].f32[0];
  v44 = v15;
  v45 = v9;
  v16 = vaddq_f32(v15, vmulq_n_f32(v4, v47));
  v15.i32[0] = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
  v15.i32[1] = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
  v49 = *a3;
  v50 = vbslq_s8(vmovl_s16(*v15.f32), v9, v16);
  v53 = v54;
  v17 = *a1;
  v56 = 256;
  v54[0] = v17;
  v18 = v3.f32[1];
  v19 = 1;
  v48 = v11.i32[0];
  do
  {
    v20 = v19 - 1;
    v55 = v19 - 1;
    v21 = v53;
    v22 = v53[v19 - 1];
    if (v22 == -1)
    {
      goto LABEL_40;
    }

    v23 = *(a1 + 1) + 48 * v22;
    v24 = *(v23 + 8);
    v25 = *(v23 + 12);
    if (*v50.i32 > v24 || *&v50.i32[1] > v25)
    {
      goto LABEL_40;
    }

    v28 = *v23;
    v27 = *(v23 + 4);
    if (*v23 > *&v50.i32[2] || v27 > *&v50.i32[3])
    {
      goto LABEL_40;
    }

    v30 = (v24 + v28) * 0.5;
    v31 = (v25 + v27) * 0.5;
    v32 = (v24 - v28) * 0.5;
    v33 = (v25 - v27) * 0.5;
    v34 = (v11.f32[0] * (v18 - v31)) + (v12 * (v3.f32[0] - v30));
    v35 = -v34;
    if (v34 > 0.0)
    {
      v35 = v34;
    }

    if (v35 > ((v14 * v33) + (v13 * v32)))
    {
      goto LABEL_40;
    }

    v36 = *(v23 + 36);
    if (v36 != -1)
    {
      v37 = v56;
      if (v19 <= v56)
      {
        v53[v20] = v36;
      }

      else
      {
        v56 *= 2;
        v53 = b2Alloc(8 * v37);
        memcpy(v53, v21, 4 * v55);
        if (v21 != v54)
        {
          b2Free(v21);
        }

        v21 = v53;
        v53[v55] = *(v23 + 36);
        v11.i32[0] = v48;
        v3.i32[0] = v49;
      }

      v41 = v55 + 1;
      v55 = v41;
      v42 = v56;
      if (v41 >= v56)
      {
        v56 *= 2;
        v53 = b2Alloc(8 * v42);
        memcpy(v53, v21, 4 * v55);
        if (v21 != v54)
        {
          b2Free(v21);
        }

        v21 = v53;
        v41 = v55;
        v11.i32[0] = v48;
        v3.i32[0] = v49;
      }

      v21[v41] = *(v23 + 40);
      v20 = ++v55;
      goto LABEL_40;
    }

    v51 = *a3->f32;
    v52 = v47;
    v38 = b2WorldRayCastWrapper::RayCastCallback(a2, &v51, v22);
    v11.i32[0] = v48;
    v3.i32[0] = v49;
    if (v38 > 0.0)
    {
      v39 = vaddq_f32(v44, vmulq_n_f32(v46, v38));
      v40.i32[0] = vmovn_s32(vcgtq_f32(v39, v45)).u32[0];
      v40.i32[1] = vmovn_s32(vcgtq_f32(v45, v39)).i32[1];
      v50 = vbslq_s8(vmovl_s16(v40), v45, v39);
      v47 = v38;
    }

    if (v38 == 0.0)
    {
      break;
    }

    v20 = v55;
LABEL_40:
    v19 = v20;
  }

  while (v20 >= 1);
  return b2GrowableStack<int,256>::~b2GrowableStack(&v53);
}

float32_t b2WorldRayCastWrapper::RayCastCallback(uint64_t a1, float32x2_t *a2, unsigned int a3)
{
  FixtureProxy = b2ContactManager::GetFixtureProxy(*a1, a3);
  v6 = *(FixtureProxy + 16);
  if (!(*(**(v6 + 32) + 48))(*(v6 + 32), v9, a2, *(v6 + 24) + 32, *(FixtureProxy + 28)))
  {
    return a2[2].f32[0];
  }

  v8 = vadd_f32(vmul_n_f32(*a2, 1.0 - v10), vmul_n_f32(a2[1], v10));
  (*(**(a1 + 8) + 16))(*(a1 + 8), v6, &v8, v9);
  return result;
}

void PKCLineSeg::updateRelativeTheta(PKCLineSeg *this, double a2, double a3)
{
  v7 = *this;
  v6 = *(this + 1);
  v8 = atan2(v6 - a3, *this - a2) + 6.28318531;
  *(this + 2) = v8;
  v10 = *(this + 2);
  v9 = *(this + 3);
  v11 = atan2(v9 - a3, v10 - a2) + 6.28318531;
  *(this + 3) = v11;
  v12 = a2;
  v13 = a3;
  if ((((v7 - v12) * (v9 - v13)) - ((v6 - v13) * (v10 - v12))) > 0.0)
  {
    *(this + 2) = v11;
    *(this + 3) = v8;
    *this = v10;
    *(this + 1) = v9;
    *(this + 2) = v7;
    *(this + 3) = v6;
  }
}

float *PKCLineSeg::mergeColinear(float *this, const PKCLineSeg *a2)
{
  v2 = *a2;
  if (vabds_f32(*this, *a2) < 0.00011921 && vabds_f32(this[1], *(a2 + 1)) < 0.00011921)
  {
    *this = *(a2 + 1);
    return this;
  }

  v3 = *(a2 + 2);
  if (vabds_f32(*this, v3) < 0.00011921 && vabds_f32(this[1], *(a2 + 3)) < 0.00011921)
  {
    v4 = *(a2 + 1);
    *this = v2;
    *(this + 1) = v4;
    return this;
  }

  if (vabds_f32(this[2], v2) >= 0.00011921)
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = *(a2 + 1);
    if (vabds_f32(this[3], v5) < 0.00011921)
    {
      v6 = *(a2 + 3);
      this[2] = v3;
      *(this + 3) = v6;
      return this;
    }
  }

  this[2] = v2;
  this[3] = v5;
  return this;
}

uint64_t lineIntersection(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double *a9, double *a10)
{
  if (vabdd_f64(a1, a3) < 0.00011920929 && vabdd_f64(a2, a4) < 0.00011920929)
  {
    return 0;
  }

  if (vabdd_f64(a5, a7) < 0.00011920929 && vabdd_f64(a6, a8) < 0.00011920929)
  {
    return 0;
  }

  if (vabdd_f64(a1, a5) < 0.00011920929 && vabdd_f64(a2, a6) < 0.00011920929)
  {
    return 0;
  }

  if (vabdd_f64(a3, a5) < 0.00011920929 && vabdd_f64(a4, a6) < 0.00011920929)
  {
    return 0;
  }

  if (vabdd_f64(a1, a7) < 0.00011920929 && vabdd_f64(a2, a8) < 0.00011920929)
  {
    return 0;
  }

  if (vabdd_f64(a3, a7) < 0.00011920929 && vabdd_f64(a4, a8) < 0.00011920929)
  {
    return 0;
  }

  v10 = a3 - a1;
  v11 = a4 - a2;
  v12 = a5 - a1;
  v13 = a6 - a2;
  v14 = a7 - a1;
  v15 = a8 - a2;
  v16 = sqrt(v11 * v11 + v10 * v10);
  v17 = v10 / v16;
  v18 = v11 / v16;
  v19 = v13 * v17 - v12 * (v11 / v16);
  v20 = v15 * v17 - v14 * (v11 / v16);
  if (v19 < 0.0 && v20 < 0.0)
  {
    return 0;
  }

  if (v19 >= 0.0 && v20 >= 0.0)
  {
    return 0;
  }

  v21 = v15 * v18 + v14 * v17 + v20 * (v13 * v18 + v12 * v17 - (v15 * v18 + v14 * v17)) / (v20 - v19);
  if (v21 < 0.00011920929 || v21 + 0.00011920929 > v16)
  {
    return 0;
  }

  *a9 = a1 + v21 * v17;
  *a10 = a2 + v21 * v18;
  return 1;
}

float PKCLineSeg::clipAgainst(PKCLineSeg *this, const PKCLineSeg *a2)
{
  v5 = 0.0;
  v6 = 0.0;
  if (lineIntersection(*this, *(this + 1), *(this + 2), *(this + 3), *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), &v6, &v5))
  {
    result = v6;
    v4 = v5;
    *(this + 2) = result;
    *(this + 3) = v4;
  }

  return result;
}

uint64_t PKCLineSeg::split(PKCLineSeg *this, PKCLineSeg *a2, PKCLineSeg **a3, PKCLineSeg **a4)
{
  v8 = 0;
  v9 = 0.0;
  v6 = lineIntersection(*this, *(this + 1), *(this + 2), *(this + 3), *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), &v9, &v8);
  if (v6)
  {
    operator new();
  }

  *a3 = 0;
  *a4 = 0;
  return v6;
}

uint64_t b2ChainAndCircleContact::Destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void b2ChainAndCircleContact::b2ChainAndCircleContact(b2ChainAndCircleContact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  b2Contact::b2Contact(this, a2, a3, a4, a5);
  *v5 = &unk_2870794F0;
  if (*(*(v5[10] + 32) + 8) != 3)
  {
    b2ChainAndCircleContact::b2ChainAndCircleContact();
  }

  if (*(*(v5[11] + 32) + 8))
  {
    b2ChainAndCircleContact::b2ChainAndCircleContact();
  }
}

uint64_t b2ChainAndCircleContact::Evaluate(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v8 = *(*(a1 + 80) + 32);
  v10[0] = &unk_287079F18;
  v10[1] = 0x3C1374BC00000001;
  v10[4] = 0;
  v10[5] = 0;
  v11 = 0;
  b2ChainShape::GetChildEdge(v8, v10, *(a1 + 96));
  return b2CollideEdgeAndCircle(a2, v10, a3, *(*(a1 + 88) + 32), a4);
}

void b2ChainAndPolygonContact::b2ChainAndPolygonContact(b2ChainAndPolygonContact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  b2Contact::b2Contact(this, a2, a3, a4, a5);
  *v5 = &unk_2870794A0;
  if (*(*(v5[10] + 32) + 8) != 3)
  {
    b2ChainAndPolygonContact::b2ChainAndPolygonContact();
  }

  if (*(*(v5[11] + 32) + 8) != 2)
  {
    b2ChainAndPolygonContact::b2ChainAndPolygonContact();
  }
}

void b2ChainAndPolygonContact::Evaluate(uint64_t a1, float32x2_t *a2, float *a3, float *a4)
{
  v8 = *(*(a1 + 80) + 32);
  v9[0] = &unk_287079F18;
  v9[1] = 0x3C1374BC00000001;
  v9[4] = 0;
  v9[5] = 0;
  v10 = 0;
  b2ChainShape::GetChildEdge(v8, v9, *(a1 + 96));
  b2CollideEdgeAndPolygon(a2, v9, a3, *(*(a1 + 88) + 32), a4);
}

void b2CircleContact::b2CircleContact(b2CircleContact *this, b2Fixture *a2, b2Fixture *a3)
{
  b2Contact::b2Contact(this, a2, 0, a3, 0);
  *v3 = &unk_2870799F8;
  if (*(*(v3[10] + 32) + 8))
  {
    b2CircleContact::b2CircleContact();
  }

  if (*(*(v3[11] + 32) + 8))
  {
    b2CircleContact::b2CircleContact();
  }
}

void b2Contact::InitializeRegisters(b2Contact *this)
{
  b2Contact::s_registers = b2CircleContact::Create;
  byte_27FD07110 = 1;
  qword_27FD071A8 = b2PolygonAndCircleContact::Create;
  byte_27FD071B0 = 1;
  qword_27FD07128 = b2PolygonAndCircleContact::Create;
  byte_27FD07130 = 0;
  qword_27FD071C8 = b2PolygonContact::Create;
  byte_27FD071D0 = 1;
  qword_27FD07158 = b2EdgeAndCircleContact::Create;
  byte_27FD07160 = 1;
  qword_27FD07118 = b2EdgeAndCircleContact::Create;
  byte_27FD07120 = 0;
  qword_27FD07178 = b2EdgeAndPolygonContact::Create;
  byte_27FD07180 = 1;
  qword_27FD071B8 = b2EdgeAndPolygonContact::Create;
  byte_27FD071C0 = 0;
  qword_27FD071F8 = b2ChainAndCircleContact::Create;
  byte_27FD07200 = 1;
  qword_27FD07138 = b2ChainAndCircleContact::Create;
  byte_27FD07140 = 0;
  qword_27FD07218 = b2ChainAndPolygonContact::Create;
  byte_27FD07220 = 1;
  qword_27FD071D8 = b2ChainAndPolygonContact::Create;
  byte_27FD071E0 = 0;
  qword_27FD07278 = b2QuadtreeAndChainContact::Create;
  byte_27FD07280 = 1;
  qword_27FD07238 = b2QuadtreeAndChainContact::Create;
  byte_27FD07240 = 0;
  qword_27FD07148 = b2QuadtreeAndCircleContact::Create;
  byte_27FD07150 = 1;
  qword_27FD07248 = b2QuadtreeAndCircleContact::Create;
  byte_27FD07250 = 0;
  qword_27FD07258 = b2QuadtreeAndEdgeContact::Create;
  byte_27FD07260 = 1;
  qword_27FD07198 = b2QuadtreeAndEdgeContact::Create;
  byte_27FD071A0 = 0;
  qword_27FD07268 = b2QuadtreeAndPolygonContact::Create;
  byte_27FD07270 = 1;
  qword_27FD071E8 = b2QuadtreeAndPolygonContact::Create;
  byte_27FD071F0 = 0;
  qword_27FD07288 = b2QuadtreeAndQuadtreeContact::Create;
  byte_27FD07290 = 1;
}

uint64_t b2Contact::AddType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 5)
  {
    b2Contact::AddType();
  }

  if (a3 >= 5)
  {
    b2Contact::AddType();
  }

  v3 = &b2Contact::s_registers[10 * a2 + 2 * a3];
  *v3 = result;
  *(v3 + 8) = 1;
  if (a2 != a3)
  {
    v4 = &b2Contact::s_registers[10 * a3 + 2 * a2];
    *v4 = result;
    *(v4 + 8) = 0;
  }

  return result;
}

uint64_t b2Contact::Create(b2Contact *this, b2Fixture *a2, b2Contact *a3, b2Fixture *a4)
{
  if ((b2Contact::s_initialized & 1) == 0)
  {
    b2Contact::InitializeRegisters(this);
    b2Contact::s_initialized = 1;
  }

  v8 = *(*(this + 4) + 8);
  if (v8 >= 5)
  {
    b2Contact::Create();
  }

  v9 = *(*(a3 + 4) + 8);
  if (v9 >= 5)
  {
    b2Contact::Create();
  }

  v10 = &b2Contact::s_registers[10 * v8 + 2 * v9];
  if (!*v10)
  {
    return 0;
  }

  if (*(v10 + 8) == 1)
  {
    v11 = this;
    v12 = a2;
    v13 = a3;
    v14 = a4;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v13 = this;
    v14 = a2;
  }

  result = (*v10)(v11, v12, v13, v14);
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t b2Contact::Destroy(b2Contact *this, b2Contact *a2)
{
  if ((b2Contact::s_initialized & 1) == 0)
  {
    b2Contact::Destroy();
  }

  if (*(this + 41) >= 1)
  {
    b2Body::SetAwake(*(*(this + 10) + 24), 1);
    b2Body::SetAwake(*(*(this + 11) + 24), 1);
  }

  v3 = *(*this + 16);

  return v3(this);
}

void b2Contact::b2Contact(b2Contact *this, b2Fixture *a2, int a3, b2Fixture *a4, int a5)
{
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v5 = *(a2 + 11);
  v6 = *(a2 + 10) * *(a4 + 10);
  if (v5 <= *(a4 + 11))
  {
    v5 = *(a4 + 11);
  }

  *this = &unk_287079250;
  *(this + 3) = 4;
  *(this + 10) = a2;
  *(this + 11) = a4;
  *(this + 24) = a3;
  *(this + 25) = a5;
  *(this + 44) = sqrtf(v6);
  *(this + 45) = v5;
}

b2Body *b2Contact::Update(b2Contact *this, b2ContactListener *a2)
{
  v4 = this + 104;
  v5 = *(this + 120);
  v21 = *(this + 104);
  v22[0] = v5;
  v6 = *(this + 152);
  v22[1] = *(this + 136);
  v23 = v6;
  v7 = *(this + 3);
  *(this + 3) = v7 | 4;
  v8 = v7 & 2;
  v9 = *(*(this + 10) + 24);
  v10 = *(*(this + 11) + 24);
  result = (**this)(this, this + 104, &v9->var8, &v10->var8);
  v12 = *(this + 41);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = HIDWORD(v23);
    do
    {
      v15 = &v4[20 * v13];
      *(v15 + 1) = 0;
      if (v14 >= 1)
      {
        v16 = v14;
        v17 = v22;
        while (*v17 != *(v15 + 4))
        {
          v17 += 5;
          if (!--v16)
          {
            goto LABEL_9;
          }
        }

        *(v15 + 1) = *(v17 - 1);
      }

LABEL_9:
      ++v13;
    }

    while (v13 != v12);
  }

  if (v12 > 0 != v8 >> 1)
  {
    b2Body::SetAwake(v9, 1);
    result = b2Body::SetAwake(v10, 1);
  }

  *(this + 3) = *(this + 3) & 0xFFFFFFFD | (2 * (v12 > 0));
  if ((v10->var2 & v9->var4) != 0 || (v9->var2 & v10->var4) != 0)
  {
    if (!v8 && a2 && v12 >= 1)
    {
      *(this + 8) = 1;
      v18 = *(*a2 + 16);
      v19 = a2;
      v20 = this;

      return v18(v19, v20);
    }

    if (v8 && a2 && v12 <= 0)
    {
      *(this + 9) = 1;
      v18 = *(*a2 + 32);
      v19 = a2;
      v20 = this;

      return v18(v19, v20);
    }
  }

  return result;
}

uint64_t b2ContactSolver::b2ContactSolver(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  v7 = *(a2 + 6);
  *(a1 + 56) = v7;
  v8 = *(a2 + 6);
  *(a1 + 80) = v8;
  *(a1 + 64) = b2StackAllocator::Allocate(v7, 88 * v8);
  *(a1 + 72) = b2StackAllocator::Allocate(*(a1 + 56), 152 * *(a1 + 80));
  *(a1 + 40) = a2[2];
  *(a1 + 84) = *(a2 + 14);
  if (*(a1 + 80) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(**(a1 + 32) + 8 * v11);
      v13 = v12[20].u32[1];
      if (v13 <= 0)
      {
        b2ContactSolver::b2ContactSolver();
      }

      v14 = 0;
      v16 = v12[10];
      v15 = v12[11];
      v17 = *(*&v15 + 24);
      v18 = *(*(*&v15 + 32) + 12);
      v19 = *(*&v16 + 24);
      v20 = *(*(*&v16 + 32) + 12);
      v21 = *(a1 + 72);
      v22 = v21 + 152 * v11;
      v23 = v12[22];
      v24 = v17[3].i32[1];
      *(v22 + 112) = v19[3].i32[1];
      *(v22 + 116) = v24;
      v25 = v17[26].i32[1];
      *(v22 + 120) = v19[26].i32[1];
      *(v22 + 124) = v25;
      LODWORD(v26) = v19[28].i32[0];
      DWORD1(v26) = v17[28].i32[0];
      *(&v26 + 1) = v23;
      *(v22 + 128) = v26;
      *(v22 + 144) = v13;
      *(v22 + 148) = v11;
      *(v22 + 80) = 0uLL;
      *(v22 + 96) = 0uLL;
      v27 = *(a1 + 64);
      v28 = (v27 + 88 * v11);
      v29 = v17[3].i32[1];
      v28[4].i32[0] = v19[3].i32[1];
      v28[4].i32[1] = v29;
      LODWORD(v26) = v17[26].i32[1];
      v28[5].i32[0] = v19[26].i32[1];
      v28[5].i32[1] = v26;
      v28[6] = v19[8];
      v28[7] = v17[8];
      LODWORD(v26) = v17[28].i32[0];
      v28[8].i32[0] = v19[28].i32[0];
      v28[8].i32[1] = v26;
      v28[2] = v12[18];
      v28[3] = v12[19];
      v28[10].i32[1] = v13;
      v28[9].i32[1] = v20;
      v28[10].i32[0] = v18;
      v28[9].i32[0] = v12[20].i32[0];
      v30 = (v27 + v10);
      v31 = v21 + v9;
      v32 = 36 * v13;
      v33 = v12 + 14;
      do
      {
        v34 = 0;
        if (*(a1 + 20) == 1)
        {
          v34 = vmul_n_f32(*v33, *(a1 + 8));
        }

        v35 = (v31 + v14);
        v35[2] = v34;
        v35[3] = 0;
        v35[4].i32[0] = 0;
        *v35 = 0;
        v35[1] = 0;
        *v30++ = v33[-1];
        v14 += 36;
        v33 = (v33 + 20);
      }

      while (v32 != v14);
      ++v11;
      v10 += 88;
      v9 += 152;
    }

    while (v11 < *(a1 + 80));
  }

  return a1;
}

void b2ContactSolver::InitializeVelocityConstraints(b2ContactSolver *this)
{
  if (*(this + 20) >= 1)
  {
    v2 = 0;
    v3 = 32;
    __asm { FMOV            V19.2S, #1.0 }

    v56 = _D19;
    do
    {
      v9 = *(this + 9);
      v10 = v9 + 152 * v2;
      v11 = *(**(this + 4) + 8 * *(v10 + 148));
      if (*(v11 + 164) <= 0)
      {
        b2ContactSolver::InitializeVelocityConstraints();
      }

      v12 = *(v10 + 112);
      v13 = *(v10 + 116);
      v57 = *(v10 + 124);
      v58 = *(v10 + 120);
      v69 = *(v10 + 128);
      v68 = *(v10 + 132);
      v14 = *(this + 5);
      v15 = *(this + 6);
      v16 = (v14 + 16 * v12);
      v18 = *v16;
      v17 = v16[1];
      v19 = (v15 + 16 * v12);
      v59 = v19[1];
      v60 = *v19;
      v20 = v19[3];
      v21 = (v14 + 16 * v13);
      v23 = *v21;
      v22 = v21[1];
      v24 = (v15 + 16 * v13);
      v26 = *v24;
      v25 = v24[1];
      v27 = v24[3];
      v28 = v21[3];
      v29 = *(this + 8) + 88 * v2;
      v64 = *(v29 + 56);
      v65 = *(v29 + 60);
      v63 = *(v29 + 52);
      v61 = v28;
      v62 = *(v29 + 48);
      v66 = *(v29 + 76);
      v67 = *(v29 + 80);
      v30 = __sincosf_stret(v16[3]);
      v75 = v30;
      v73 = __sincosf_stret(v61);
      v74[0] = v18 - ((v30.__cosval * v62) - (v30.__sinval * v63));
      v74[1] = v17 - ((v30.__cosval * v63) + (v30.__sinval * v62));
      v72[0] = v23 - ((v73.__cosval * v64) - (v73.__sinval * v65));
      v72[1] = v22 - ((v73.__cosval * v65) + (v73.__sinval * v64));
      b2WorldManifold::Initialize(&v70, v11 + 104, v74, v72, v66, v67);
      *(v10 + 72) = v70;
      v32 = *(v10 + 144);
      if (v32 >= 1)
      {
        *v31.i32 = v58 + v57;
        v33 = vdup_lane_s32(v31, 0);
        v34 = (v9 + v3);
        v35 = *(v10 + 144);
        v36 = &v71;
        do
        {
          v37 = *(v36 - 1) - v18;
          v38 = *v36 - v17;
          *(v34 - 8) = v37;
          *(v34 - 7) = v38;
          v39 = *(v36 - 1) - v23;
          v40 = *v36 - v22;
          *(v34 - 6) = v39;
          *(v34 - 5) = v40;
          v41 = *(v10 + 72);
          v42.i32[0] = vdup_lane_s32(v41, 1).u32[0];
          v42.f32[1] = -*v41.i32;
          v43 = vmla_n_f32(vmul_n_f32(v41, -v38), v42, v37);
          v44 = vmla_n_f32(vmul_n_f32(v41, -v40), v42, v39);
          v45 = vmla_f32(vmla_f32(v33, v43, vmul_n_f32(v43, v69)), v44, vmul_n_f32(v44, v68));
          *(v34 - 1) = vand_s8(vdiv_f32(v56, v45), vcgtz_f32(v45));
          *v34 = 0.0;
          v46 = vmuls_lane_f32(((v25 + (v27 * v39)) - v59) - (v20 * v37), v41, 1) + (*v41.i32 * ((v20 * v38) + ((v26 - (v27 * v40)) - v60)));
          if (v46 < -*(this + 21))
          {
            *v34 = -(*(v10 + 140) * v46);
          }

          v36 += 2;
          v34 += 9;
          --v35;
        }

        while (v35);
        if (v32 == 2)
        {
          v47 = (*v10 * *&v41.i32[1]) - (*(v10 + 4) * *v41.i32);
          v48 = (*(v10 + 8) * *&v41.i32[1]) - (*(v10 + 12) * *v41.i32);
          v49 = (*(v10 + 36) * *&v41.i32[1]) - (*(v10 + 40) * *v41.i32);
          v50 = (*(v10 + 44) * *&v41.i32[1]) - (*(v10 + 48) * *v41.i32);
          v51 = (*v31.i32 + ((v69 * v47) * v47)) + ((v68 * v48) * v48);
          v52 = (*v31.i32 + ((v69 * v49) * v49)) + ((v68 * v50) * v50);
          v53 = (*v31.i32 + ((v69 * v47) * v49)) + ((v68 * v48) * v50);
          v54 = (v51 * v52) - (v53 * v53);
          if ((v51 * v51) >= (v54 * 1000.0))
          {
            *(v10 + 144) = 1;
          }

          else
          {
            *(v10 + 96) = v51;
            *(v10 + 100) = v53;
            *(v10 + 104) = v53;
            *(v10 + 108) = v52;
            if (v54 != 0.0)
            {
              v54 = 1.0 / v54;
            }

            v55 = -(v54 * v53);
            *(v10 + 80) = v52 * v54;
            *(v10 + 84) = v55;
            *(v10 + 88) = v55;
            *(v10 + 92) = v51 * v54;
          }
        }
      }

      ++v2;
      v3 += 152;
    }

    while (v2 < *(this + 20));
  }
}

uint64_t b2ContactSolver::WarmStart(uint64_t this)
{
  if (*(this + 80) >= 1)
  {
    v1 = 0;
    v2 = 12;
    do
    {
      v3 = *(this + 72);
      v4 = (v3 + 152 * v1);
      v6 = v4[14].i32[0];
      v5 = v4[14].i32[1];
      v7 = **(this + 24);
      v8 = *(v7 + 8 * v6);
      v9 = *(v7 + 8 * v5);
      v10 = *(v8 + 8);
      v11 = *(v9 + 8) & *(v8 + 12);
      v12 = v10 & *(v9 + 12);
      if (v11 | v12)
      {
        v13 = v4[18].u32[0];
        v14 = *(this + 48);
        v15 = (v14 + 16 * v6);
        v16 = *v15;
        v17 = v15[1].f32[1];
        v18 = (v14 + 16 * v5);
        v19 = v18[1].f32[1];
        v20 = *v18;
        if (v13 >= 1)
        {
          v21 = v4[9];
          v22 = &v4[15] + 1;
          v23 = &v4[15];
          v24 = vld1_dup_f32(v22);
          v25 = vld1_dup_f32(v23);
          v26 = v3 + v2;
          do
          {
            _S19 = *(v26 - 12);
            _S21 = *(v26 - 4);
            v29 = vmul_n_f32(v21, *(v26 + 4));
            _D18 = vrev64_s32(vmul_n_f32(v21, *(v26 + 8)));
            _D23.i32[0] = vadd_f32(v29, _D18).u32[0];
            _D23.i32[1] = vsub_f32(v29, _D18).i32[1];
            __asm { FMLA            S18, S19, V17.S[1] }

            v17 = v17 + (-v4[16].f32[0] * _D18.f32[0]);
            v16 = vsub_f32(v16, vmul_f32(v25, _D23));
            __asm { FMLA            S20, S21, V17.S[1] }

            v19 = v19 + (v4[16].f32[1] * _S20);
            v20 = vadd_f32(v20, vmul_f32(v24, _D23));
            v26 += 36;
            --v13;
          }

          while (v13);
        }

        if (v11)
        {
          *v15 = v16;
          *(*(this + 48) + 16 * v6 + 12) = v17;
        }

        if (v12)
        {
          *(*(this + 48) + 16 * v5) = v20;
          *(*(this + 48) + 16 * v5 + 12) = v19;
        }
      }

      ++v1;
      v2 += 152;
    }

    while (v1 < *(this + 80));
  }

  return this;
}

uint64_t b2ContactSolver::SolveVelocityConstraints(uint64_t this)
{
  if (*(this + 80) >= 1)
  {
    v1 = 0;
    for (i = 16; ; i += 152)
    {
      v3 = *(this + 72);
      v4 = v3 + 152 * v1;
      v6 = *(v4 + 112);
      v5 = *(v4 + 116);
      v7 = **(this + 24);
      v8 = *(v7 + 8 * v6);
      v9 = *(v7 + 8 * v5);
      v10 = *(v8 + 8);
      v11 = *(v9 + 8) & *(v8 + 12);
      v12 = v10 & *(v9 + 12);
      if (v11 | v12)
      {
        break;
      }

LABEL_36:
      if (++v1 >= *(this + 80))
      {
        return this;
      }
    }

    v14 = *(v4 + 120);
    v13 = *(v4 + 124);
    v16 = *(v4 + 128);
    v15 = *(v4 + 132);
    v17 = *(v4 + 144);
    v18 = *(this + 48);
    v19 = (v18 + 16 * v6);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[3];
    v23 = (v18 + 16 * v5);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[3];
    v28 = *(v4 + 72);
    v27 = *(v4 + 76);
    if (v17 >= 1)
    {
      v29 = -v28;
      v30 = *(v4 + 136);
      v31 = -v16;
      v32 = (v3 + i);
      v33 = *(v4 + 144);
      do
      {
        v35 = *(v32 - 2);
        v34 = *(v32 - 1);
        v37 = *(v32 - 4);
        v36 = *(v32 - 3);
        v38 = v32[1];
        v39 = v38 - (v32[3] * (((((v24 + (v26 * v35)) - v21) - (v22 * v37)) * v29) + ((((v25 - (v26 * v34)) - v20) + (v22 * v36)) * v27)));
        if (v39 >= (v30 * *v32))
        {
          v39 = v30 * *v32;
        }

        if (v39 < -(v30 * *v32))
        {
          v39 = -(v30 * *v32);
        }

        v40 = v39 - v38;
        v32[1] = v39;
        v41 = v27 * (v39 - v38);
        v42 = v40 * v29;
        if (v11)
        {
          v20 = v20 - (v14 * v41);
          v21 = v21 - (v14 * v42);
          v22 = v22 + (v31 * ((v37 * v42) - (v36 * v41)));
        }

        if (v12)
        {
          v25 = v25 + (v13 * v41);
          v24 = v24 + (v13 * v42);
          v26 = v26 + (v15 * ((v35 * v42) - (v34 * v41)));
        }

        v32 += 9;
        --v33;
      }

      while (v33);
      if (v17 == 1)
      {
        v44 = *(v4 + 8);
        v43 = *(v4 + 12);
        v46 = *v4;
        v45 = *(v4 + 4);
        v47 = *(v4 + 16);
        v48 = fmaxf(v47 - (*(v4 + 24) * (((v27 * (((v24 + (v26 * v44)) - v21) - (v22 * *v4))) + ((((v25 - (v26 * v43)) - v20) + (v22 * v45)) * v28)) - *(v4 + 32))), 0.0);
        *(v4 + 16) = v48;
        v49 = v28 * (v48 - v47);
        v50 = v27 * (v48 - v47);
        if (v11)
        {
          v20 = v20 - (v14 * v49);
          v21 = v21 - (v14 * v50);
          v22 = v22 + (v31 * ((v46 * v50) - (v45 * v49)));
        }

        if (v12)
        {
          v25 = v25 + (v13 * v49);
          v24 = v24 + (v13 * v50);
          v26 = v26 + (v15 * ((v44 * v50) - (v43 * v49)));
        }

        goto LABEL_32;
      }
    }

    v51 = *(v4 + 16);
    if (v51 < 0.0 || (v52 = *(v4 + 52), v52 < 0.0))
    {
      b2ContactSolver::SolveVelocityConstraints();
    }

    v53 = *(v4 + 8);
    v54 = *(v4 + 12);
    v55 = *v4;
    v56 = *(v4 + 4);
    v57 = *(v4 + 44);
    v58 = *(v4 + 48);
    v60 = *(v4 + 36);
    v59 = *(v4 + 40);
    v61 = *(v4 + 104);
    v62 = *(v4 + 100);
    v63 = (((v27 * (((v24 + (v26 * v53)) - v21) - (v22 * *v4))) + ((((v25 - (v26 * v54)) - v20) + (v22 * v56)) * v28)) - *(v4 + 32)) - ((v52 * v61) + (*(v4 + 96) * v51));
    v64 = (((v27 * (((v24 + (v26 * v57)) - v21) - (v22 * v60))) + ((((v25 - (v26 * v58)) - v20) + (v22 * v59)) * v28)) - *(v4 + 68)) - ((v52 * *(v4 + 108)) + (v62 * v51));
    v65 = (*(v4 + 88) * v64) + (*(v4 + 80) * v63);
    if (v65 > 0.0 || (v66 = (v64 * *(v4 + 92)) + (*(v4 + 84) * v63), v66 > 0.0))
    {
      v73 = -(*(v4 + 24) * v63);
      if (v73 < 0.0 || (v64 + (v62 * v73)) < 0.0)
      {
        v80 = -(*(v4 + 60) * v64);
        if (v80 >= 0.0 && (v63 + (v61 * v80)) >= 0.0)
        {
          v81 = 0.0 - v51;
          v82 = v80 - v52;
          v83 = v28 * v81;
          v84 = v27 * v81;
          v85 = v28 * v82;
          v86 = v27 * v82;
          v20 = v20 - (v14 * (v83 + v85));
          v21 = v21 - (v14 * (v84 + v86));
          v22 = v22 - (v16 * (((v55 * v84) - (v56 * v83)) + ((v60 * v86) - (v59 * v85))));
          v25 = v25 + (v13 * (v83 + v85));
          v24 = v24 + (v13 * (v84 + v86));
          v26 = v26 + (v15 * (((v53 * v84) - (v54 * v83)) + ((v57 * v86) - (v58 * v85))));
          *(v4 + 16) = 0;
          *(v4 + 52) = v80;
          goto LABEL_32;
        }

        if (v63 < 0.0 || v64 < 0.0)
        {
          goto LABEL_32;
        }

        v88 = 0.0 - v51;
        v89 = 0.0 - v52;
        v90 = v28 * v88;
        v91 = v27 * v88;
        v92 = v28 * v89;
        v93 = v27 * v89;
        v20 = v20 - (v14 * (v90 + v92));
        v21 = v21 - (v14 * (v91 + v93));
        v22 = v22 - (v16 * (((v55 * v91) - (v56 * v90)) + ((v60 * v93) - (v59 * v92))));
        v25 = v25 + (v13 * (v90 + v92));
        v24 = v24 + (v13 * (v91 + v93));
        v26 = v26 + (v15 * (((v53 * v91) - (v54 * v90)) + ((v57 * v93) - (v58 * v92))));
        *(v4 + 16) = 0;
      }

      else
      {
        v74 = v73 - v51;
        v75 = 0.0 - v52;
        v76 = v28 * v74;
        v77 = v27 * v74;
        v78 = v28 * v75;
        v79 = v27 * v75;
        v20 = v20 - (v14 * (v78 + v76));
        v21 = v21 - (v14 * (v79 + v77));
        v22 = v22 - (v16 * (((v60 * v79) - (v59 * v78)) + ((v55 * v77) - (v56 * v76))));
        v25 = v25 + (v13 * (v78 + v76));
        v24 = v24 + (v13 * (v79 + v77));
        v26 = v26 + (v15 * (((v57 * v79) - (v58 * v78)) + ((v53 * v77) - (v54 * v76))));
        *(v4 + 16) = v73;
      }

      *(v4 + 52) = 0;
    }

    else
    {
      v67 = -v65 - v51;
      v68 = -v66 - v52;
      v69 = v28 * v67;
      v70 = v27 * v67;
      v71 = v28 * v68;
      v72 = v27 * v68;
      v20 = v20 - (v14 * (v69 + v71));
      v21 = v21 - (v14 * (v70 + v72));
      v22 = v22 - (v16 * (((v55 * v70) - (v56 * v69)) + ((v60 * v72) - (v59 * v71))));
      v25 = v25 + (v13 * (v69 + v71));
      v24 = v24 + (v13 * (v70 + v72));
      v26 = v26 + (v15 * (((v53 * v70) - (v54 * v69)) + ((v57 * v72) - (v58 * v71))));
      *(v4 + 16) = -v65;
      *(v4 + 52) = -v66;
    }

LABEL_32:
    if (v11)
    {
      *v19 = v20;
      v19[1] = v21;
      *(*(this + 48) + 16 * v6 + 12) = v22;
    }

    if (v12)
    {
      v87 = (*(this + 48) + 16 * v5);
      *v87 = v25;
      v87[1] = v24;
      *(*(this + 48) + 16 * v5 + 12) = v26;
    }

    goto LABEL_36;
  }

  return this;
}

uint64_t b2ContactSolver::StoreImpulses(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(this + 72);
    v4 = **(this + 32);
    v5 = (v3 + 16);
    do
    {
      v6 = v3 + 152 * v2;
      v7 = *(v6 + 144);
      if (v7 >= 1)
      {
        v8 = (*(v4 + 8 * *(v6 + 148)) + 112);
        v9 = v5;
        do
        {
          v10 = *v9;
          v9 = (v9 + 36);
          *v8 = v10;
          v8 = (v8 + 20);
          --v7;
        }

        while (v7);
      }

      ++v2;
      v5 += 19;
    }

    while (v2 != v1);
  }

  return this;
}

BOOL b2ContactSolver::SolvePositionConstraints(b2ContactSolver *this)
{
  if (*(this + 20) < 1)
  {
    return 1;
  }

  v68 = v10;
  v69 = v9;
  v70 = v8;
  v71 = v7;
  v72 = v6;
  v73 = v5;
  v74 = v4;
  v75 = v3;
  v76 = v1;
  v77 = v2;
  v12 = 0;
  v13 = 0.0;
  do
  {
    v14 = *(this + 8) + 88 * v12;
    v16 = *(v14 + 32);
    v15 = *(v14 + 36);
    v17 = *(v14 + 84);
    v18 = *(this + 5);
    v19 = (v18 + 16 * v16);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[3];
    v23 = (v18 + 16 * v15);
    v25 = *v23;
    v24 = v23[1];
    v57 = v23[3];
    if (v17 <= 0)
    {
      v38 = *(this + 3);
    }

    else
    {
      v26 = 0;
      v54 = *(v14 + 52);
      v55 = *(v14 + 48);
      v52 = *(v14 + 60);
      v53 = *(v14 + 56);
      v56 = *(v14 + 68);
      v49 = *(v14 + 44);
      v50 = *(v14 + 40);
      v51 = *(v14 + 64);
      do
      {
        v27 = v22;
        v28 = __sincosf_stret(v22);
        v67 = v28;
        v65 = __sincosf_stret(v57);
        v66[0] = v20 - ((v28.__cosval * v55) - (v28.__sinval * v54));
        v66[1] = v21 - ((v54 * v28.__cosval) + (v28.__sinval * v55));
        v63 = v25 - ((v65.__cosval * v53) - (v65.__sinval * v52));
        v64 = v24 - ((v52 * v65.__cosval) + (v65.__sinval * v53));
        b2PositionSolverManifold::Initialize(&v58, v14, v66, &v63, v26, v64);
        v29 = v60 - v20;
        v30 = v61 - v21;
        v31 = v60 - v25;
        v32 = v61 - v24;
        if (v13 >= v62)
        {
          v13 = v62;
        }

        v33 = ((v50 + v49) + ((v51 * ((v29 * v59) - (v30 * v58))) * ((v29 * v59) - (v30 * v58)))) + ((v56 * ((v31 * v59) - (v32 * v58))) * ((v31 * v59) - (v32 * v58)));
        v34 = 0.0;
        if (v33 > 0.0)
        {
          v35 = fminf((v62 + 0.0045) * 0.2, 0.0);
          if (v35 >= -0.2)
          {
            v36 = -v35;
          }

          else
          {
            v36 = 0.2;
          }

          v34 = v36 / v33;
        }

        v37 = v58 * v34;
        v38 = *(this + 3);
        v39 = *(*v38 + 8 * v16);
        v40 = v59 * v34;
        v41 = *(*v38 + 8 * v15);
        if ((*(v41 + 8) & *(v39 + 12)) != 0)
        {
          v20 = v20 - (v50 * v37);
          v21 = v21 - (v50 * v40);
          v22 = v27 + (-v51 * ((v37 * -v30) + (v29 * v40)));
        }

        else
        {
          v22 = v27;
        }

        if ((*(v39 + 8) & *(v41 + 12)) != 0)
        {
          v25 = v25 + (v49 * v37);
          v24 = v24 + (v49 * v40);
          v57 = v57 + (v56 * ((v37 * -v32) + (v31 * v40)));
        }

        ++v26;
      }

      while (v17 != v26);
    }

    v42 = *v38;
    v43 = *(*v38 + 8 * v16);
    v44 = *(v42 + 8 * v15);
    if ((*(v44 + 8) & *(v43 + 12)) != 0)
    {
      v45 = (*(this + 5) + 16 * v16);
      *v45 = v20;
      v45[1] = v21;
      *(*(this + 5) + 16 * v16 + 12) = v22;
      v46 = **(this + 3);
      v44 = *(v46 + 8 * v15);
      v43 = *(v46 + 8 * v16);
    }

    if ((*(v43 + 8) & *(v44 + 12)) != 0)
    {
      v47 = (*(this + 5) + 16 * v15);
      *v47 = v25;
      v47[1] = v24;
      *(*(this + 5) + 16 * v15 + 12) = v57;
    }

    ++v12;
  }

  while (v12 < *(this + 20));
  return v13 >= -0.0135;
}

float b2PositionSolverManifold::Initialize(float *a1, uint64_t a2, float *a3, float *a4, int a5, float result)
{
  if (*(a2 + 84) < 1)
  {
    b2PositionSolverManifold::Initialize();
  }

  v6 = *(a2 + 72);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v44 = a4[2];
      v43 = a4[3];
      v45 = *(a2 + 16);
      v46 = *(a2 + 20);
      v47 = (v43 * v45) - (v44 * v46);
      v48 = (v43 * v46) + (v44 * v45);
      *a1 = v47;
      a1[1] = v48;
      v50 = a4[2];
      v49 = a4[3];
      v51 = *(a2 + 24);
      v52 = *(a2 + 28);
      v53 = *a4 + ((v49 * v51) - (v50 * v52));
      v54 = ((v49 * v52) + (v50 * v51)) + a4[1];
      v55 = (a2 + 8 * a5);
      v57 = a3[2];
      v56 = a3[3];
      v58 = v55[1];
      v59 = *a3 + ((v56 * *v55) - (v57 * v58));
      v60 = ((v56 * v58) + (v57 * *v55)) + a3[1];
      v61 = (((v48 * (v60 - v54)) + ((v59 - v53) * v47)) - *(a2 + 76)) - *(a2 + 80);
      a1[3] = v60;
      a1[4] = v61;
      result = -((v43 * v45) - (v44 * v46));
      *a1 = result;
      a1[1] = -v48;
      a1[2] = v59;
      return result;
    }

    if (v6 != 3)
    {
      return result;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v8 = a3[2];
      v7 = a3[3];
      v9 = *(a2 + 16);
      v10 = *(a2 + 20);
      v11 = (v7 * v9) - (v8 * v10);
      v12 = (v7 * v10) + (v8 * v9);
      *a1 = v11;
      a1[1] = v12;
      v14 = a3[2];
      v13 = a3[3];
      v15 = *(a2 + 24);
      v16 = *(a2 + 28);
      v17 = *a3 + ((v13 * v15) - (v14 * v16));
      v18 = ((v13 * v16) + (v14 * v15)) + a3[1];
      v19 = (a2 + 8 * a5);
      v21 = a4[2];
      v20 = a4[3];
      v22 = v19[1];
      v23 = *a4 + ((v20 * *v19) - (v21 * v22));
      v24 = ((v20 * v22) + (v21 * *v19)) + a4[1];
      result = (((v12 * (v24 - v18)) + ((v23 - v17) * v11)) - *(a2 + 76)) - *(a2 + 80);
      a1[3] = v24;
      a1[4] = result;
      a1[2] = v23;
    }

    return result;
  }

  v26 = a3[2];
  v25 = a3[3];
  v27 = *(a2 + 24);
  v28 = *(a2 + 28);
  v29 = *a3 + ((v25 * v27) - (v26 * v28));
  v30 = ((v25 * v28) + (v26 * v27)) + a3[1];
  v32 = a4[2];
  v31 = a4[3];
  v33 = *(a2 + 4);
  v34 = *a4 + ((v31 * *a2) - (v32 * v33));
  v35 = ((v31 * v33) + (v32 * *a2)) + a4[1];
  v36 = v34 - v29;
  v37 = v35 - v30;
  *a1 = v34 - v29;
  a1[1] = v35 - v30;
  v38 = (v37 * v37) + (v36 * v36);
  v39 = sqrtf(v38);
  if (v39 >= 0.00000011921)
  {
    v40 = 1.0 / v39;
    v41 = v36 * (1.0 / v39);
    v42 = v37 * v40;
    *a1 = v41;
    a1[1] = v42;
    v38 = (v37 * v42) + (v36 * v41);
  }

  a1[2] = (v29 + v34) * 0.5;
  a1[3] = (v30 + v35) * 0.5;
  result = (v38 - *(a2 + 76)) - *(a2 + 80);
  a1[4] = result;
  return result;
}

BOOL b2ContactSolver::SolveTOIPositionConstraints(b2ContactSolver *this, int a2, int a3)
{
  if (*(this + 20) < 1)
  {
    return 1;
  }

  v78 = v12;
  v79 = v11;
  v80 = v10;
  v81 = v9;
  v82 = v8;
  v83 = v7;
  v84 = v6;
  v85 = v5;
  v86 = v3;
  v87 = v4;
  v14 = 0;
  v66 = 0.0;
  v57 = a2;
  v58 = a3;
  do
  {
    v15 = *(this + 8) + 88 * v14;
    v16 = *(v15 + 32);
    v17 = v16 == a2 || v16 == a3;
    v64 = 0.0;
    v60 = 0.0;
    if (v17)
    {
      v60 = *(v15 + 40);
      v64 = *(v15 + 64);
    }

    v18 = *(v15 + 36);
    v65 = 0.0;
    v19 = v18 == a2 || v18 == a3;
    v59 = 0.0;
    if (v19)
    {
      v59 = *(v15 + 44);
      v65 = *(v15 + 68);
    }

    v20 = v16;
    v21 = *(v15 + 84);
    v22 = *(this + 5);
    v23 = (v22 + 16 * v20);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[3];
    v27 = (v22 + 16 * v18);
    v28 = *v27;
    v29 = v27[1];
    v67 = v27[3];
    if (v21 <= 0)
    {
      v46 = *(this + 3);
    }

    else
    {
      v30 = 0;
      v62 = *(v15 + 52);
      v63 = *(v15 + 48);
      v31 = *(v15 + 60);
      v61 = *(v15 + 56);
      do
      {
        v32 = v26;
        v33 = __sincosf_stret(v26);
        v77 = v33;
        v75 = __sincosf_stret(v67);
        v76[0] = v24 - ((v33.__cosval * v63) - (v33.__sinval * v62));
        v76[1] = v25 - ((v62 * v33.__cosval) + (v33.__sinval * v63));
        v73 = v28 - ((v75.__cosval * v61) - (v75.__sinval * v31));
        v74 = v29 - ((v31 * v75.__cosval) + (v75.__sinval * v61));
        b2PositionSolverManifold::Initialize(&v68, v15, v76, &v73, v30, v74);
        v34 = v70 - v24;
        v35 = v71 - v25;
        v36 = v70 - v28;
        v37 = v71 - v29;
        v38 = v66;
        if (v66 >= v72)
        {
          v38 = v72;
        }

        v66 = v38;
        v39 = ((v60 + v59) + ((v64 * ((v34 * v69) - (v35 * v68))) * ((v34 * v69) - (v35 * v68)))) + ((v65 * ((v36 * v69) - (v37 * v68))) * ((v36 * v69) - (v37 * v68)));
        v40 = 0.0;
        if (v39 > 0.0)
        {
          v41 = fminf((v72 + 0.0045) * 0.75, 0.0);
          v42 = -v41;
          v43 = v41 < -0.2;
          v44 = 0.2;
          if (!v43)
          {
            v44 = v42;
          }

          v40 = v44 / v39;
        }

        v45 = v68 * v40;
        v46 = *(this + 3);
        v47 = *(*v46 + 8 * v20);
        v48 = v69 * v40;
        v49 = *(*v46 + 8 * v18);
        if ((*(v49 + 8) & *(v47 + 12)) != 0)
        {
          v24 = v24 - (v60 * v45);
          v25 = v25 - (v60 * v48);
          v26 = v32 + (-v64 * ((v45 * -v35) + (v34 * v48)));
        }

        else
        {
          v26 = v32;
        }

        if ((*(v47 + 8) & *(v49 + 12)) != 0)
        {
          v28 = v28 + (v59 * v45);
          v29 = v29 + (v59 * v48);
          v67 = v67 + (v65 * ((v45 * -v37) + (v36 * v48)));
        }

        ++v30;
      }

      while (v21 != v30);
    }

    v50 = *v46;
    v51 = *(*v46 + 8 * v20);
    v52 = *(v50 + 8 * v18);
    if ((*(v52 + 8) & *(v51 + 12)) != 0)
    {
      v53 = (*(this + 5) + 16 * v20);
      *v53 = v24;
      v53[1] = v25;
      *(*(this + 5) + 16 * v20 + 12) = v26;
      v54 = **(this + 3);
      v52 = *(v54 + 8 * v18);
      v51 = *(v54 + 8 * v20);
    }

    if ((*(v51 + 8) & *(v52 + 12)) != 0)
    {
      v55 = (*(this + 5) + 16 * v18);
      *v55 = v28;
      v55[1] = v29;
      *(*(this + 5) + 16 * v18 + 12) = v67;
    }

    ++v14;
    a2 = v57;
    a3 = v58;
  }

  while (v14 < *(this + 20));
  return v66 >= -0.00675;
}

void b2EdgeAndCircleContact::b2EdgeAndCircleContact(b2EdgeAndCircleContact *this, b2Fixture *a2, b2Fixture *a3)
{
  b2Contact::b2Contact(this, a2, 0, a3, 0);
  *v3 = &unk_287079518;
  if (*(*(v3[10] + 32) + 8) != 1)
  {
    b2EdgeAndCircleContact::b2EdgeAndCircleContact();
  }

  if (*(*(v3[11] + 32) + 8))
  {
    b2EdgeAndCircleContact::b2EdgeAndCircleContact();
  }
}

void b2EdgeAndPolygonContact::b2EdgeAndPolygonContact(b2EdgeAndPolygonContact *this, b2Fixture *a2, b2Fixture *a3)
{
  b2Contact::b2Contact(this, a2, 0, a3, 0);
  *v3 = &unk_2870794C8;
  if (*(*(v3[10] + 32) + 8) != 1)
  {
    b2EdgeAndPolygonContact::b2EdgeAndPolygonContact();
  }

  if (*(*(v3[11] + 32) + 8) != 2)
  {
    b2EdgeAndPolygonContact::b2EdgeAndPolygonContact();
  }
}

void b2PolygonAndCircleContact::b2PolygonAndCircleContact(b2PolygonAndCircleContact *this, b2Fixture *a2, b2Fixture *a3)
{
  b2Contact::b2Contact(this, a2, 0, a3, 0);
  *v3 = &unk_287079450;
  if (*(*(v3[10] + 32) + 8) != 2)
  {
    b2PolygonAndCircleContact::b2PolygonAndCircleContact();
  }

  if (*(*(v3[11] + 32) + 8))
  {
    b2PolygonAndCircleContact::b2PolygonAndCircleContact();
  }
}

void b2PolygonContact::b2PolygonContact(b2PolygonContact *this, b2Fixture *a2, b2Fixture *a3)
{
  b2Contact::b2Contact(this, a2, 0, a3, 0);
  *v3 = &unk_287079740;
  if (*(*(v3[10] + 32) + 8) != 2)
  {
    b2PolygonContact::b2PolygonContact();
  }

  if (*(*(v3[11] + 32) + 8) != 2)
  {
    b2PolygonContact::b2PolygonContact();
  }
}

uint64_t _ZNSt3__120__shared_ptr_emplaceI7PKCGridNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287078F20;
  PKCGrid::PKCGrid((a1 + 24));
  return a1;
}

void std::__shared_ptr_emplace<PKCGrid>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287078F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void PKCGrid::~PKCGrid(PKCGrid *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }
}

float noise1(float a1)
{
  v1 = a1 - (a1 <= 0.0);
  v2 = a1 - v1;
  v3 = v2 + -1.0;
  v4 = (v1 + 1);
  v5 = (v2 * (v2 * v2)) * ((v2 * ((v2 * 6.0) + -15.0)) + 10.0);
  LOBYTE(v1) = perm_0[v1];
  v6 = ((v1 & 7u) + 1);
  if ((v1 & 8) != 0)
  {
    v6 = -v6;
  }

  v7 = v2 * v6;
  v8 = ((perm_0[v4] & 7u) + 1);
  if ((perm_0[v4] & 8) != 0)
  {
    v8 = -v8;
  }

  return (v7 + (v5 * ((v3 * v8) - v7))) * 0.188;
}

float pnoise1(int a1, float a2)
{
  v2 = a2 - (a2 <= 0.0);
  v3 = a2 - v2;
  v4 = v3 + -1.0;
  v5 = ((v2 + 1) % a1);
  v6 = (v3 * (v3 * v3)) * ((v3 * ((v3 * 6.0) + -15.0)) + 10.0);
  LOBYTE(v2) = perm_0[(v2 % a1)];
  v7 = ((v2 & 7u) + 1);
  if ((v2 & 8) != 0)
  {
    v7 = -v7;
  }

  v8 = v3 * v7;
  v9 = ((perm_0[v5] & 7u) + 1);
  if ((perm_0[v5] & 8) != 0)
  {
    v9 = -v9;
  }

  return (v8 + (v6 * ((v4 * v9) - v8))) * 0.188;
}

float noise2(float a1, float a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a1 - (a1 <= 0.0);
  v8 = a2 - (a2 <= 0.0);
  *&v9 = a1 - v7;
  *&a6 = a2 - v8;
  *v10.i32 = *&v9 + -1.0;
  *&a4 = *&a6 + -1.0;
  v11 = (v7 + 1);
  v12 = (v8 + 1);
  v13 = (*&a6 * (*&a6 * *&a6)) * ((*&a6 * ((*&a6 * 6.0) + -15.0)) + 10.0);
  *&a7 = (*&v9 * ((*&v9 * 6.0) + -15.0)) + 10.0;
  v14 = (*&v9 * (*&v9 * *&v9)) * *&a7;
  v15 = perm_0[v8];
  v16 = &perm_0[v7];
  v17 = perm_0[v12];
  v18 = &perm_0[v11];
  LOBYTE(a7) = v18[v15];
  BYTE4(a7) = v16[v15];
  v19 = vdup_lane_s32(*&a6, 0);
  v20 = vceqz_s32(vand_s8(*&a7, 0x400000004));
  v10.i32[1] = v9;
  v21 = vceqz_s32(vand_s8(*&a7, 0x200000002));
  v22.i64[0] = v21.i32[0];
  v22.i64[1] = v21.i32[1];
  __asm
  {
    FMOV            V19.2D, #-2.0
    FMOV            V20.2D, #2.0
  }

  v29 = vmulq_f64(vbslq_s8(v22, _Q20, _Q19), vcvtq_f64_f32(vbsl_s8(v20, v19, v10)));
  v30 = vbsl_s8(v20, v10, v19);
  v31 = vcvtq_f64_f32(vbsl_s8(vceqz_s32(vand_s8(*&a7, 0x100000001)), v30, vneg_f32(v30)));
  *&v29.f64[0] = vcvt_f32_f64(vaddq_f64(v29, v31));
  LOBYTE(v31.f64[0]) = v18[v17];
  BYTE4(v31.f64[0]) = v16[v17];
  v32 = vceqz_s32(vand_s8(*&v31.f64[0], 0x400000004));
  v33 = vdup_lane_s32(*&a4, 0);
  v34 = vceqz_s32(vand_s8(*&v31.f64[0], 0x200000002));
  v22.i64[0] = v34.i32[0];
  v22.i64[1] = v34.i32[1];
  v35 = vmulq_f64(vbslq_s8(v22, _Q20, _Q19), vcvtq_f64_f32(vbsl_s8(v32, v33, v10)));
  v36 = vbsl_s8(v32, v10, v33);
  *&v29.f64[0] = vmla_n_f32(*&v29.f64[0], vsub_f32(vcvt_f32_f64(vaddq_f64(v35, vcvtq_f64_f32(vbsl_s8(vceqz_s32(vand_s8(*&v31.f64[0], 0x100000001)), v36, vneg_f32(v36))))), *&v29.f64[0]), v13);
  return (*(v29.f64 + 1) + (v14 * (*v29.f64 - *(v29.f64 + 1)))) * 0.507;
}

float pnoise2(int a1, int a2, float a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a3 - (a3 <= 0.0);
  v10 = *&a4 - (*&a4 <= 0.0);
  *&v11 = a3 - v9;
  *&a8 = *&a4 - v10;
  *v12.i32 = *&v11 + -1.0;
  *&a4 = *&a8 + -1.0;
  v13 = ((v9 + 1) % a1);
  v14 = ((v10 + 1) % a2);
  v15 = (*&a8 * (*&a8 * *&a8)) * ((*&a8 * ((*&a8 * 6.0) + -15.0)) + 10.0);
  *&a9 = (*&v11 * ((*&v11 * 6.0) + -15.0)) + 10.0;
  v16 = (*&v11 * (*&v11 * *&v11)) * *&a9;
  v17 = perm_0[(v10 % a2)];
  v18 = &perm_0[(v9 % a1)];
  v19 = perm_0[v14];
  v20 = &perm_0[v13];
  LOBYTE(a9) = v20[v17];
  BYTE4(a9) = v18[v17];
  v21 = vdup_lane_s32(*&a8, 0);
  v22 = vceqz_s32(vand_s8(*&a9, 0x400000004));
  v12.i32[1] = v11;
  v23 = vceqz_s32(vand_s8(*&a9, 0x200000002));
  v24.i64[0] = v23.i32[0];
  v24.i64[1] = v23.i32[1];
  __asm
  {
    FMOV            V19.2D, #-2.0
    FMOV            V20.2D, #2.0
  }

  v31 = vmulq_f64(vbslq_s8(v24, _Q20, _Q19), vcvtq_f64_f32(vbsl_s8(v22, v21, v12)));
  v32 = vbsl_s8(v22, v12, v21);
  v33 = vcvtq_f64_f32(vbsl_s8(vceqz_s32(vand_s8(*&a9, 0x100000001)), v32, vneg_f32(v32)));
  *&v31.f64[0] = vcvt_f32_f64(vaddq_f64(v31, v33));
  LOBYTE(v33.f64[0]) = v20[v19];
  BYTE4(v33.f64[0]) = v18[v19];
  v34 = vceqz_s32(vand_s8(*&v33.f64[0], 0x400000004));
  v35 = vdup_lane_s32(*&a4, 0);
  v36 = vceqz_s32(vand_s8(*&v33.f64[0], 0x200000002));
  v24.i64[0] = v36.i32[0];
  v24.i64[1] = v36.i32[1];
  v37 = vmulq_f64(vbslq_s8(v24, _Q20, _Q19), vcvtq_f64_f32(vbsl_s8(v34, v35, v12)));
  v38 = vbsl_s8(v34, v12, v35);
  *&v31.f64[0] = vmla_n_f32(*&v31.f64[0], vsub_f32(vcvt_f32_f64(vaddq_f64(v37, vcvtq_f64_f32(vbsl_s8(vceqz_s32(vand_s8(*&v33.f64[0], 0x100000001)), v38, vneg_f32(v38))))), *&v31.f64[0]), v15);
  return (*(v31.f64 + 1) + (v16 * (*v31.f64 - *(v31.f64 + 1)))) * 0.507;
}

float noise3(float a1, float a2, float a3, double a4, double a5, double a6)
{
  v9 = a1 - (a1 <= 0.0);
  v10 = a2 - (a2 <= 0.0);
  v11 = a3 - (a3 <= 0.0);
  *&v12 = a1 - v9;
  *v6.i32 = a2 - v10;
  *v7.i32 = a3 - v11;
  *v13.i32 = *&v12 + -1.0;
  *&a5 = *v6.i32 + -1.0;
  *&a6 = *v7.i32 + -1.0;
  v14 = (v9 + 1);
  v15 = (v10 + 1);
  v16 = (v11 + 1);
  v17 = (a2 - (a2 <= 0.0));
  v18 = (*v7.i32 * (*v7.i32 * *v7.i32)) * ((*v7.i32 * ((*v7.i32 * 6.0) + -15.0)) + 10.0);
  v19 = (*v6.i32 * (*v6.i32 * *v6.i32)) * ((*v6.i32 * ((*v6.i32 * 6.0) + -15.0)) + 10.0);
  *v8.i32 = *&v12 * (*&v12 * *&v12);
  v20 = *v8.i32 * ((*&v12 * ((*&v12 * 6.0) + -15.0)) + 10.0);
  v21 = perm_0[v11];
  v22 = perm_0[v17 + v21];
  v23 = &perm_0[v9];
  v24 = perm_0[v16];
  v25 = perm_0[v17 + v24];
  v26 = perm_0[v15 + v21];
  v27 = perm_0[v15 + v24];
  v8.i8[0] = perm_0[v14 + v22];
  v8.i8[4] = v23[v22];
  v28 = vand_s8(v8, 0xF0000000FLL);
  v13.i32[1] = v12;
  v29 = vdup_lane_s32(v7, 0);
  v30 = vdup_lane_s32(v6, 0);
  v31 = vbsl_s8(vcgt_u32(0x400000004, v28), v30, vbsl_s8(vceq_s32(vand_s8(v8, 0xD0000000DLL), 0xC0000000CLL), v13, v29));
  v32 = vbsl_s8(vcgt_u32(0x800000008, v28), v13, v30);
  v33 = vbsl_s8(vceqz_s32(vand_s8(v8, 0x100000001)), v32, vneg_f32(v32));
  v34 = vceqz_s32(vand_s8(v8, 0x200000002));
  v35 = vadd_f32(v33, vbsl_s8(v34, v31, vneg_f32(v31)));
  v34.i8[0] = perm_0[v14 + v25];
  v34.i8[4] = v23[v25];
  v36 = vand_s8(v34, 0xF0000000FLL);
  v37 = vdup_lane_s32(*&a6, 0);
  v38 = vbsl_s8(vcgt_u32(0x400000004, v36), v30, vbsl_s8(vceq_s32(vand_s8(v34, 0xD0000000DLL), 0xC0000000CLL), v13, v37));
  v39 = vbsl_s8(vcgt_u32(0x800000008, v36), v13, v30);
  v40 = vsub_f32(vadd_f32(vbsl_s8(vceqz_s32(vand_s8(v34, 0x100000001)), v39, vneg_f32(v39)), vbsl_s8(vceqz_s32(vand_s8(v34, 0x200000002)), v38, vneg_f32(v38))), v35);
  v41 = vmla_n_f32(v35, v40, v18);
  v40.i8[0] = perm_0[v14 + v26];
  v40.i8[4] = v23[v26];
  v42 = vand_s8(v40, 0xFF000000FFLL);
  v43 = vdup_lane_s32(*&a5, 0);
  v44 = vbsl_s8(vcgt_u32(0x400000004, (*&v42 & 0xFFFFFF0FFFFFFF0FLL)), v43, vbsl_s8(vceq_s32((*&v42 & 0xFFFFFF0DFFFFFF0DLL), 0xC0000000CLL), v13, v29));
  v45 = vbsl_s8(vcgt_u32(0x800000008, (*&v42 & 0xFFFFFF0FFFFFFF0FLL)), v13, v43);
  v46 = vbsl_s8(vceqz_s32((*&v42 & 0xFFFFFF01FFFFFF01)), v45, vneg_f32(v45));
  v47 = vceqz_s32((*&v42 & 0xFFFFFF02FFFFFF02));
  v48 = vadd_f32(v46, vbsl_s8(v47, v44, vneg_f32(v44)));
  v47.i8[0] = perm_0[v14 + v27];
  v47.i8[4] = v23[v27];
  v49 = vand_s8(v47, 0xFF000000FFLL);
  v50 = vbsl_s8(vcgt_u32(0x400000004, (*&v49 & 0xFFFFFF0FFFFFFF0FLL)), v43, vbsl_s8(vceq_s32((*&v49 & 0xFFFFFF0DFFFFFF0DLL), 0xC0000000CLL), v13, v37));
  v51 = vbsl_s8(vcgt_u32(0x800000008, (*&v49 & 0xFFFFFF0FFFFFFF0FLL)), v13, v43);
  v52 = vmla_n_f32(v41, vsub_f32(vmla_n_f32(v48, vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v49 & 0xFFFFFF01FFFFFF01)), v51, vneg_f32(v51)), vbsl_s8(vceqz_s32((*&v49 & 0xFFFFFF02FFFFFF02)), v50, vneg_f32(v50))), v48), v18), v41), v19);
  return (v52.f32[1] + (v20 * (v52.f32[0] - v52.f32[1]))) * 0.936;
}

float pnoise3(int a1, int a2, int a3, float a4, float a5, float a6, double a7, double a8, double a9, double a10)
{
  v12 = a4 - (a4 <= 0.0);
  v13 = a5 - (a5 <= 0.0);
  v14 = a6 - (a6 <= 0.0);
  *&v15 = a4 - v12;
  *&a10 = a5 - v13;
  *v10.i32 = a6 - v14;
  *v16.i32 = *&v15 + -1.0;
  *&a8 = *&a10 + -1.0;
  *&a9 = *v10.i32 + -1.0;
  v17 = ((v12 + 1) % a1);
  v18 = ((v13 + 1) % a2);
  v19 = ((v14 + 1) % a3);
  v20 = (v13 % a2);
  v21 = (*v10.i32 * (*v10.i32 * *v10.i32)) * ((*v10.i32 * ((*v10.i32 * 6.0) + -15.0)) + 10.0);
  v22 = (*&a10 * (*&a10 * *&a10)) * ((*&a10 * ((*&a10 * 6.0) + -15.0)) + 10.0);
  *v11.i32 = *&v15 * (*&v15 * *&v15);
  v23 = *v11.i32 * ((*&v15 * ((*&v15 * 6.0) + -15.0)) + 10.0);
  v24 = perm_0[(v14 % a3)];
  v25 = perm_0[v20 + v24];
  v26 = &perm_0[(v12 % a1)];
  v27 = perm_0[v19];
  v28 = perm_0[v20 + v27];
  v29 = perm_0[v18 + v24];
  v30 = perm_0[v18 + v27];
  v31 = &perm_0[v17];
  v11.i8[0] = v31[v25];
  v11.i8[4] = v26[v25];
  v32 = vand_s8(v11, 0xF0000000FLL);
  v16.i32[1] = v15;
  v33 = vdup_lane_s32(v10, 0);
  v34 = vdup_lane_s32(*&a10, 0);
  v35 = vbsl_s8(vcgt_u32(0x400000004, v32), v34, vbsl_s8(vceq_s32(vand_s8(v11, 0xD0000000DLL), 0xC0000000CLL), v16, v33));
  v36 = vbsl_s8(vcgt_u32(0x800000008, v32), v16, v34);
  v37 = vbsl_s8(vceqz_s32(vand_s8(v11, 0x100000001)), v36, vneg_f32(v36));
  v38 = vceqz_s32(vand_s8(v11, 0x200000002));
  v39 = vadd_f32(v37, vbsl_s8(v38, v35, vneg_f32(v35)));
  v38.i8[0] = v31[v28];
  v38.i8[4] = v26[v28];
  v40 = vand_s8(v38, 0xF0000000FLL);
  v41 = vdup_lane_s32(*&a9, 0);
  v42 = vbsl_s8(vcgt_u32(0x400000004, v40), v34, vbsl_s8(vceq_s32(vand_s8(v38, 0xD0000000DLL), 0xC0000000CLL), v16, v41));
  v43 = vbsl_s8(vcgt_u32(0x800000008, v40), v16, v34);
  v44 = vsub_f32(vadd_f32(vbsl_s8(vceqz_s32(vand_s8(v38, 0x100000001)), v43, vneg_f32(v43)), vbsl_s8(vceqz_s32(vand_s8(v38, 0x200000002)), v42, vneg_f32(v42))), v39);
  v45 = vmla_n_f32(v39, v44, v21);
  v44.i8[0] = v31[v29];
  v44.i8[4] = v26[v29];
  v46 = vand_s8(v44, 0xFF000000FFLL);
  v47 = vdup_lane_s32(*&a8, 0);
  v48 = vbsl_s8(vcgt_u32(0x400000004, (*&v46 & 0xFFFFFF0FFFFFFF0FLL)), v47, vbsl_s8(vceq_s32((*&v46 & 0xFFFFFF0DFFFFFF0DLL), 0xC0000000CLL), v16, v33));
  v49 = vbsl_s8(vcgt_u32(0x800000008, (*&v46 & 0xFFFFFF0FFFFFFF0FLL)), v16, v47);
  v50 = vbsl_s8(vceqz_s32((*&v46 & 0xFFFFFF01FFFFFF01)), v49, vneg_f32(v49));
  v51 = vceqz_s32((*&v46 & 0xFFFFFF02FFFFFF02));
  v52 = vadd_f32(v50, vbsl_s8(v51, v48, vneg_f32(v48)));
  v51.i8[0] = v31[v30];
  v51.i8[4] = v26[v30];
  v53 = vand_s8(v51, 0xFF000000FFLL);
  v54 = vbsl_s8(vcgt_u32(0x400000004, (*&v53 & 0xFFFFFF0FFFFFFF0FLL)), v47, vbsl_s8(vceq_s32((*&v53 & 0xFFFFFF0DFFFFFF0DLL), 0xC0000000CLL), v16, v41));
  v55 = vbsl_s8(vcgt_u32(0x800000008, (*&v53 & 0xFFFFFF0FFFFFFF0FLL)), v16, v47);
  v56 = vmla_n_f32(v45, vsub_f32(vmla_n_f32(v52, vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v53 & 0xFFFFFF01FFFFFF01)), v55, vneg_f32(v55)), vbsl_s8(vceqz_s32((*&v53 & 0xFFFFFF02FFFFFF02)), v54, vneg_f32(v54))), v52), v21), v45), v22);
  return (v56.f32[1] + (v23 * (v56.f32[0] - v56.f32[1]))) * 0.936;
}

float noise4(float a1, float a2, float a3, float a4, double a5, double a6, double a7, int8x8_t a8)
{
  v13 = a1 - (a1 <= 0.0);
  v14 = a2 - (a2 <= 0.0);
  v15 = a3 - (a3 <= 0.0);
  v16 = a4 - (a4 <= 0.0);
  *&v17 = a1 - v13;
  *v9.i32 = a2 - v14;
  *v10.i32 = a3 - v15;
  *v8.i32 = a4 - v16;
  *v18.i32 = *&v17 + -1.0;
  *&a6 = *v9.i32 + -1.0;
  *v12.i32 = *v10.i32 + -1.0;
  *v11.i32 = *v8.i32 + -1.0;
  v19 = (v13 + 1);
  v20 = (v14 + 1);
  v21 = (v15 + 1);
  v22 = (v16 + 1);
  v23 = v13;
  v24 = (a2 - (a2 <= 0.0));
  v25 = (a3 - (a3 <= 0.0));
  a8.i32[0] = 10.0;
  v26 = (*v8.i32 * (*v8.i32 * *v8.i32)) * ((*v8.i32 * ((*v8.i32 * 6.0) + -15.0)) + 10.0);
  v27 = (*v10.i32 * (*v10.i32 * *v10.i32)) * ((*v10.i32 * ((*v10.i32 * 6.0) + -15.0)) + 10.0);
  v28 = (*v9.i32 * (*v9.i32 * *v9.i32)) * ((*v9.i32 * ((*v9.i32 * 6.0) + -15.0)) + 10.0);
  v29 = (*&v17 * (*&v17 * *&v17)) * ((*&v17 * ((*&v17 * 6.0) + -15.0)) + 10.0);
  v30 = perm_0[v16];
  v31 = perm_0[v25 + v30];
  v32 = perm_0[v24 + v31];
  v33 = perm_0[v22];
  v34 = perm_0[v25 + v33];
  v35 = perm_0[v24 + v34];
  v36 = perm_0[v21 + v30];
  v37 = perm_0[v24 + v36];
  v38 = perm_0[v21 + v33];
  v39 = perm_0[v24 + v38];
  v40 = perm_0[v20 + v31];
  v41 = perm_0[v20 + v34];
  v42 = perm_0[v20 + v36];
  v43 = perm_0[v20 + v38];
  v44 = &perm_0[v19];
  a8.i8[0] = v44[v32];
  a8.i8[4] = perm_0[v23 + v32];
  v45 = vand_s8(a8, 0xFF000000FFLL);
  v18.i32[1] = v17;
  v46 = vdup_lane_s32(v9, 0);
  v47 = vbsl_s8(vcgt_u32(0x1800000018, (*&v45 & 0xFFFFFF1FFFFFFF1FLL)), v18, v46);
  v48 = vdup_lane_s32(v10, 0);
  v49 = vbsl_s8(vcgt_u32(0x1000000010, (*&v45 & 0xFFFFFF1FFFFFFF1FLL)), v46, v48);
  v50 = vdup_lane_s32(v8, 0);
  v51 = vbsl_s8(vcgt_u32(0x800000008, (*&v45 & 0xFFFFFF1FFFFFFF1FLL)), v48, v50);
  v52 = vadd_f32(vbsl_s8(vceqz_s32((*&v45 & 0xFFFFFF01FFFFFF01)), v47, vneg_f32(v47)), vbsl_s8(vceqz_s32((*&v45 & 0xFFFFFF02FFFFFF02)), v49, vneg_f32(v49)));
  v53 = vceqz_s32((*&v45 & 0xFFFFFF04FFFFFF04));
  v54 = vadd_f32(vbsl_s8(v53, v51, vneg_f32(v51)), v52);
  v53.i8[0] = v44[v35];
  v53.i8[4] = perm_0[v23 + v35];
  v55 = vand_s8(v53, 0xFF000000FFLL);
  v56 = vbsl_s8(vcgt_u32(0x1800000018, (*&v55 & 0xFFFFFF1FFFFFFF1FLL)), v18, v46);
  v57 = vbsl_s8(vcgt_u32(0x1000000010, (*&v55 & 0xFFFFFF1FFFFFFF1FLL)), v46, v48);
  v58 = vdup_lane_s32(v11, 0);
  v59 = vbsl_s8(vcgt_u32(0x800000008, (*&v55 & 0xFFFFFF1FFFFFFF1FLL)), v48, v58);
  v60 = vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v55 & 0xFFFFFF04FFFFFF04)), v59, vneg_f32(v59)), vadd_f32(vbsl_s8(vceqz_s32((*&v55 & 0xFFFFFF01FFFFFF01)), v56, vneg_f32(v56)), vbsl_s8(vceqz_s32((*&v55 & 0xFFFFFF02FFFFFF02)), v57, vneg_f32(v57)))), v54);
  v61 = vmla_n_f32(v54, v60, v26);
  v60.i8[0] = v44[v37];
  v60.i8[4] = perm_0[v23 + v37];
  v62 = vand_s8(v60, 0xFF000000FFLL);
  v63 = vbsl_s8(vcgt_u32(0x1800000018, (*&v62 & 0xFFFFFF1FFFFFFF1FLL)), v18, v46);
  v64 = vdup_lane_s32(v12, 0);
  v65 = vbsl_s8(vcgt_u32(0x1000000010, (*&v62 & 0xFFFFFF1FFFFFFF1FLL)), v46, v64);
  v66 = vbsl_s8(vcgt_u32(0x800000008, (*&v62 & 0xFFFFFF1FFFFFFF1FLL)), v64, v50);
  v67 = vadd_f32(vbsl_s8(vceqz_s32((*&v62 & 0xFFFFFF04FFFFFF04)), v66, vneg_f32(v66)), vadd_f32(vbsl_s8(vceqz_s32((*&v62 & 0xFFFFFF01FFFFFF01)), v63, vneg_f32(v63)), vbsl_s8(vceqz_s32((*&v62 & 0xFFFFFF02FFFFFF02)), v65, vneg_f32(v65))));
  v66.i8[0] = v44[v39];
  v66.i8[4] = perm_0[v23 + v39];
  v68 = vand_s8(v66, 0xFF000000FFLL);
  v69 = vbsl_s8(vcgt_u32(0x1800000018, (*&v68 & 0xFFFFFF1FFFFFFF1FLL)), v18, v46);
  v70 = vbsl_s8(vcgt_u32(0x1000000010, (*&v68 & 0xFFFFFF1FFFFFFF1FLL)), v46, v64);
  v71 = vbsl_s8(vcgt_u32(0x800000008, (*&v68 & 0xFFFFFF1FFFFFFF1FLL)), v64, v58);
  v72 = vmla_n_f32(v67, vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v68 & 0xFFFFFF04FFFFFF04)), v71, vneg_f32(v71)), vadd_f32(vbsl_s8(vceqz_s32((*&v68 & 0xFFFFFF01FFFFFF01)), v69, vneg_f32(v69)), vbsl_s8(vceqz_s32((*&v68 & 0xFFFFFF02FFFFFF02)), v70, vneg_f32(v70)))), v67), v26);
  v73 = vsub_f32(v72, v61);
  v72.i8[0] = v44[v40];
  v74 = vmla_n_f32(v61, v73, v27);
  v72.i8[4] = perm_0[v23 + v40];
  v75 = vand_s8(v72, 0xFF000000FFLL);
  v76 = vdup_lane_s32(*&a6, 0);
  v77 = vbsl_s8(vcgt_u32(0x1800000018, (*&v75 & 0xFFFFFF1FFFFFFF1FLL)), v18, v76);
  v78 = vbsl_s8(vcgt_u32(0x1000000010, (*&v75 & 0xFFFFFF1FFFFFFF1FLL)), v76, v48);
  v79 = vbsl_s8(vcgt_u32(0x800000008, (*&v75 & 0xFFFFFF1FFFFFFF1FLL)), v48, v50);
  v80 = vadd_f32(vbsl_s8(vceqz_s32((*&v75 & 0xFFFFFF01FFFFFF01)), v77, vneg_f32(v77)), vbsl_s8(vceqz_s32((*&v75 & 0xFFFFFF02FFFFFF02)), v78, vneg_f32(v78)));
  v81 = vbsl_s8(vceqz_s32((*&v75 & 0xFFFFFF04FFFFFF04)), v79, vneg_f32(v79));
  v82 = vadd_f32(v81, v80);
  v81.i8[0] = v44[v41];
  v81.i8[4] = perm_0[v23 + v41];
  v83 = vand_s8(v81, 0xFF000000FFLL);
  v84 = vbsl_s8(vcgt_u32(0x1800000018, (*&v83 & 0xFFFFFF1FFFFFFF1FLL)), v18, v76);
  v85 = vbsl_s8(vcgt_u32(0x1000000010, (*&v83 & 0xFFFFFF1FFFFFFF1FLL)), v76, v48);
  v86 = vbsl_s8(vcgt_u32(0x800000008, (*&v83 & 0xFFFFFF1FFFFFFF1FLL)), v48, v58);
  v87 = vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v83 & 0xFFFFFF04FFFFFF04)), v86, vneg_f32(v86)), vadd_f32(vbsl_s8(vceqz_s32((*&v83 & 0xFFFFFF01FFFFFF01)), v84, vneg_f32(v84)), vbsl_s8(vceqz_s32((*&v83 & 0xFFFFFF02FFFFFF02)), v85, vneg_f32(v85)))), v82);
  v88 = vmla_n_f32(v82, v87, v26);
  v87.i8[0] = v44[v42];
  v87.i8[4] = perm_0[v23 + v42];
  v89 = vand_s8(v87, 0xFF000000FFLL);
  v90 = vbsl_s8(vcgt_u32(0x1800000018, (*&v89 & 0xFFFFFF1FFFFFFF1FLL)), v18, v76);
  v91 = vbsl_s8(vcgt_u32(0x1000000010, (*&v89 & 0xFFFFFF1FFFFFFF1FLL)), v76, v64);
  v92 = vbsl_s8(vcgt_u32(0x800000008, (*&v89 & 0xFFFFFF1FFFFFFF1FLL)), v64, v50);
  v93 = vadd_f32(vbsl_s8(vceqz_s32((*&v89 & 0xFFFFFF01FFFFFF01)), v90, vneg_f32(v90)), vbsl_s8(vceqz_s32((*&v89 & 0xFFFFFF02FFFFFF02)), v91, vneg_f32(v91)));
  v94 = vceqz_s32((*&v89 & 0xFFFFFF04FFFFFF04));
  v95 = vadd_f32(vbsl_s8(v94, v92, vneg_f32(v92)), v93);
  v94.i8[0] = v44[v43];
  v94.i8[4] = perm_0[v23 + v43];
  v96 = vand_s8(v94, 0xFF000000FFLL);
  v97 = vbsl_s8(vcgt_u32(0x1800000018, (*&v96 & 0xFFFFFF1FFFFFFF1FLL)), v18, v76);
  v98 = vbsl_s8(vcgt_u32(0x1000000010, (*&v96 & 0xFFFFFF1FFFFFFF1FLL)), v76, v64);
  v99 = vbsl_s8(vcgt_u32(0x800000008, (*&v96 & 0xFFFFFF1FFFFFFF1FLL)), v64, v58);
  v100 = vmla_n_f32(v74, vsub_f32(vmla_n_f32(v88, vsub_f32(vmla_n_f32(v95, vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v96 & 0xFFFFFF04FFFFFF04)), v99, vneg_f32(v99)), vadd_f32(vbsl_s8(vceqz_s32((*&v96 & 0xFFFFFF01FFFFFF01)), v97, vneg_f32(v97)), vbsl_s8(vceqz_s32((*&v96 & 0xFFFFFF02FFFFFF02)), v98, vneg_f32(v98)))), v95), v26), v88), v27), v74), v28);
  return (v100.f32[1] + (v29 * (v100.f32[0] - v100.f32[1]))) * 0.87;
}

float pnoise4(int a1, int a2, int a3, int a4, float a5, float a6, float a7, float a8, double a9, double a10, double a11, int8x8_t a12)
{
  v17 = a5 - (a5 <= 0.0);
  v18 = a6 - (a6 <= 0.0);
  v19 = a7 - (a7 <= 0.0);
  v20 = a8 - (a8 <= 0.0);
  *&v21 = a5 - v17;
  *v13.i32 = a6 - v18;
  *v14.i32 = a7 - v19;
  *v12.i32 = a8 - v20;
  *v22.i32 = *&v21 + -1.0;
  *&a10 = *v13.i32 + -1.0;
  *v15.i32 = *v14.i32 + -1.0;
  *v16.i32 = *v12.i32 + -1.0;
  v23 = ((v17 + 1) % a1);
  v24 = ((v18 + 1) % a2);
  v25 = ((v19 + 1) % a3);
  v26 = ((v20 + 1) % a4);
  v27 = (v17 % a1);
  v28 = (v18 % a2);
  v29 = (v19 % a3);
  a12.i32[0] = 10.0;
  v30 = (*v12.i32 * (*v12.i32 * *v12.i32)) * ((*v12.i32 * ((*v12.i32 * 6.0) + -15.0)) + 10.0);
  v31 = (*v14.i32 * (*v14.i32 * *v14.i32)) * ((*v14.i32 * ((*v14.i32 * 6.0) + -15.0)) + 10.0);
  v32 = (*v13.i32 * (*v13.i32 * *v13.i32)) * ((*v13.i32 * ((*v13.i32 * 6.0) + -15.0)) + 10.0);
  v33 = (*&v21 * (*&v21 * *&v21)) * ((*&v21 * ((*&v21 * 6.0) + -15.0)) + 10.0);
  v34 = perm_0[(v20 % a4)];
  v35 = perm_0[v29 + v34];
  v36 = perm_0[v28 + v35];
  v37 = perm_0[v26];
  v38 = perm_0[v29 + v37];
  v39 = perm_0[v28 + v38];
  v40 = perm_0[v25 + v34];
  v41 = perm_0[v28 + v40];
  v42 = perm_0[v25 + v37];
  v43 = perm_0[v28 + v42];
  v44 = perm_0[v24 + v35];
  v45 = perm_0[v24 + v38];
  v46 = perm_0[v24 + v40];
  v47 = perm_0[v24 + v42];
  v48 = &perm_0[v23];
  a12.i8[0] = v48[v36];
  a12.i8[4] = perm_0[v27 + v36];
  v49 = vand_s8(a12, 0xFF000000FFLL);
  v22.i32[1] = v21;
  v50 = vdup_lane_s32(v13, 0);
  v51 = vbsl_s8(vcgt_u32(0x1800000018, (*&v49 & 0xFFFFFF1FFFFFFF1FLL)), v22, v50);
  v52 = vdup_lane_s32(v14, 0);
  v53 = vbsl_s8(vcgt_u32(0x1000000010, (*&v49 & 0xFFFFFF1FFFFFFF1FLL)), v50, v52);
  v54 = vdup_lane_s32(v12, 0);
  v55 = vbsl_s8(vcgt_u32(0x800000008, (*&v49 & 0xFFFFFF1FFFFFFF1FLL)), v52, v54);
  v56 = vadd_f32(vbsl_s8(vceqz_s32((*&v49 & 0xFFFFFF01FFFFFF01)), v51, vneg_f32(v51)), vbsl_s8(vceqz_s32((*&v49 & 0xFFFFFF02FFFFFF02)), v53, vneg_f32(v53)));
  v57 = vceqz_s32((*&v49 & 0xFFFFFF04FFFFFF04));
  v58 = vadd_f32(vbsl_s8(v57, v55, vneg_f32(v55)), v56);
  v57.i8[0] = v48[v39];
  v57.i8[4] = perm_0[v27 + v39];
  v59 = vand_s8(v57, 0xFF000000FFLL);
  v60 = vbsl_s8(vcgt_u32(0x1800000018, (*&v59 & 0xFFFFFF1FFFFFFF1FLL)), v22, v50);
  v61 = vbsl_s8(vcgt_u32(0x1000000010, (*&v59 & 0xFFFFFF1FFFFFFF1FLL)), v50, v52);
  v62 = vdup_lane_s32(v16, 0);
  v63 = vbsl_s8(vcgt_u32(0x800000008, (*&v59 & 0xFFFFFF1FFFFFFF1FLL)), v52, v62);
  v64 = vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v59 & 0xFFFFFF04FFFFFF04)), v63, vneg_f32(v63)), vadd_f32(vbsl_s8(vceqz_s32((*&v59 & 0xFFFFFF01FFFFFF01)), v60, vneg_f32(v60)), vbsl_s8(vceqz_s32((*&v59 & 0xFFFFFF02FFFFFF02)), v61, vneg_f32(v61)))), v58);
  v65 = vmla_n_f32(v58, v64, v30);
  v64.i8[0] = v48[v41];
  v64.i8[4] = perm_0[v27 + v41];
  v66 = vand_s8(v64, 0xFF000000FFLL);
  v67 = vbsl_s8(vcgt_u32(0x1800000018, (*&v66 & 0xFFFFFF1FFFFFFF1FLL)), v22, v50);
  v68 = vdup_lane_s32(v15, 0);
  v69 = vbsl_s8(vcgt_u32(0x1000000010, (*&v66 & 0xFFFFFF1FFFFFFF1FLL)), v50, v68);
  v70 = vbsl_s8(vcgt_u32(0x800000008, (*&v66 & 0xFFFFFF1FFFFFFF1FLL)), v68, v54);
  v71 = vadd_f32(vbsl_s8(vceqz_s32((*&v66 & 0xFFFFFF04FFFFFF04)), v70, vneg_f32(v70)), vadd_f32(vbsl_s8(vceqz_s32((*&v66 & 0xFFFFFF01FFFFFF01)), v67, vneg_f32(v67)), vbsl_s8(vceqz_s32((*&v66 & 0xFFFFFF02FFFFFF02)), v69, vneg_f32(v69))));
  v70.i8[0] = v48[v43];
  v70.i8[4] = perm_0[v27 + v43];
  v72 = vand_s8(v70, 0xFF000000FFLL);
  v73 = vbsl_s8(vcgt_u32(0x1800000018, (*&v72 & 0xFFFFFF1FFFFFFF1FLL)), v22, v50);
  v74 = vbsl_s8(vcgt_u32(0x1000000010, (*&v72 & 0xFFFFFF1FFFFFFF1FLL)), v50, v68);
  v75 = vbsl_s8(vcgt_u32(0x800000008, (*&v72 & 0xFFFFFF1FFFFFFF1FLL)), v68, v62);
  v76 = vmla_n_f32(v71, vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v72 & 0xFFFFFF04FFFFFF04)), v75, vneg_f32(v75)), vadd_f32(vbsl_s8(vceqz_s32((*&v72 & 0xFFFFFF01FFFFFF01)), v73, vneg_f32(v73)), vbsl_s8(vceqz_s32((*&v72 & 0xFFFFFF02FFFFFF02)), v74, vneg_f32(v74)))), v71), v30);
  v77 = vsub_f32(v76, v65);
  v76.i8[0] = v48[v44];
  v78 = vmla_n_f32(v65, v77, v31);
  v76.i8[4] = perm_0[v27 + v44];
  v79 = vand_s8(v76, 0xFF000000FFLL);
  v80 = vdup_lane_s32(*&a10, 0);
  v81 = vbsl_s8(vcgt_u32(0x1800000018, (*&v79 & 0xFFFFFF1FFFFFFF1FLL)), v22, v80);
  v82 = vbsl_s8(vcgt_u32(0x1000000010, (*&v79 & 0xFFFFFF1FFFFFFF1FLL)), v80, v52);
  v83 = vbsl_s8(vcgt_u32(0x800000008, (*&v79 & 0xFFFFFF1FFFFFFF1FLL)), v52, v54);
  v84 = vadd_f32(vbsl_s8(vceqz_s32((*&v79 & 0xFFFFFF01FFFFFF01)), v81, vneg_f32(v81)), vbsl_s8(vceqz_s32((*&v79 & 0xFFFFFF02FFFFFF02)), v82, vneg_f32(v82)));
  v85 = vbsl_s8(vceqz_s32((*&v79 & 0xFFFFFF04FFFFFF04)), v83, vneg_f32(v83));
  v86 = vadd_f32(v85, v84);
  v85.i8[0] = v48[v45];
  v85.i8[4] = perm_0[v27 + v45];
  v87 = vand_s8(v85, 0xFF000000FFLL);
  v88 = vbsl_s8(vcgt_u32(0x1800000018, (*&v87 & 0xFFFFFF1FFFFFFF1FLL)), v22, v80);
  v89 = vbsl_s8(vcgt_u32(0x1000000010, (*&v87 & 0xFFFFFF1FFFFFFF1FLL)), v80, v52);
  v90 = vbsl_s8(vcgt_u32(0x800000008, (*&v87 & 0xFFFFFF1FFFFFFF1FLL)), v52, v62);
  v91 = vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v87 & 0xFFFFFF04FFFFFF04)), v90, vneg_f32(v90)), vadd_f32(vbsl_s8(vceqz_s32((*&v87 & 0xFFFFFF01FFFFFF01)), v88, vneg_f32(v88)), vbsl_s8(vceqz_s32((*&v87 & 0xFFFFFF02FFFFFF02)), v89, vneg_f32(v89)))), v86);
  v92 = vmla_n_f32(v86, v91, v30);
  v91.i8[0] = v48[v46];
  v91.i8[4] = perm_0[v27 + v46];
  v93 = vand_s8(v91, 0xFF000000FFLL);
  v94 = vbsl_s8(vcgt_u32(0x1800000018, (*&v93 & 0xFFFFFF1FFFFFFF1FLL)), v22, v80);
  v95 = vbsl_s8(vcgt_u32(0x1000000010, (*&v93 & 0xFFFFFF1FFFFFFF1FLL)), v80, v68);
  v96 = vbsl_s8(vcgt_u32(0x800000008, (*&v93 & 0xFFFFFF1FFFFFFF1FLL)), v68, v54);
  v97 = vadd_f32(vbsl_s8(vceqz_s32((*&v93 & 0xFFFFFF01FFFFFF01)), v94, vneg_f32(v94)), vbsl_s8(vceqz_s32((*&v93 & 0xFFFFFF02FFFFFF02)), v95, vneg_f32(v95)));
  v98 = vceqz_s32((*&v93 & 0xFFFFFF04FFFFFF04));
  v99 = vadd_f32(vbsl_s8(v98, v96, vneg_f32(v96)), v97);
  v98.i8[0] = v48[v47];
  v98.i8[4] = perm_0[v27 + v47];
  v100 = vand_s8(v98, 0xFF000000FFLL);
  v101 = vbsl_s8(vcgt_u32(0x1800000018, (*&v100 & 0xFFFFFF1FFFFFFF1FLL)), v22, v80);
  v102 = vbsl_s8(vcgt_u32(0x1000000010, (*&v100 & 0xFFFFFF1FFFFFFF1FLL)), v80, v68);
  v103 = vbsl_s8(vcgt_u32(0x800000008, (*&v100 & 0xFFFFFF1FFFFFFF1FLL)), v68, v62);
  v104 = vmla_n_f32(v78, vsub_f32(vmla_n_f32(v92, vsub_f32(vmla_n_f32(v99, vsub_f32(vadd_f32(vbsl_s8(vceqz_s32((*&v100 & 0xFFFFFF04FFFFFF04)), v103, vneg_f32(v103)), vadd_f32(vbsl_s8(vceqz_s32((*&v100 & 0xFFFFFF01FFFFFF01)), v101, vneg_f32(v101)), vbsl_s8(vceqz_s32((*&v100 & 0xFFFFFF02FFFFFF02)), v102, vneg_f32(v102)))), v99), v30), v92), v31), v78), v32);
  return (v104.f32[1] + (v33 * (v104.f32[0] - v104.f32[1]))) * 0.87;
}

uint64_t stringToShape(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  if ([(NSString *)v1 isEqualToString:@"empty"])
  {
    v3 = 0;
    goto LABEL_6;
  }

  if ([(NSString *)v2 isEqualToString:@"infinite"])
  {
LABEL_5:
    v3 = 1;
    goto LABEL_6;
  }

  if ([(NSString *)v2 isEqualToString:@"ellipsoidal"])
  {
    v3 = 2;
  }

  else if ([(NSString *)v2 isEqualToString:@"box"])
  {
    v3 = 3;
  }

  else if ([(NSString *)v2 isEqualToString:@"cgpath"])
  {
    v3 = 4;
  }

  else if ([(NSString *)v2 isEqualToString:@"convexhull"])
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

LABEL_6:

  return v3;
}

void std::__shared_ptr_emplace<PKCPathHolder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287079150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C0280);
}

void PKCPathHolder::~PKCPathHolder(PKCPathHolder *this)
{
  v1 = *this;
  if (v1)
  {
    CGPathRelease(v1);
  }
}

float b2DistanceJointDef::Initialize(b2DistanceJointDef *this, b2Body *a2, b2Body *a3, const b2Vec2 *a4, const b2Vec2 *a5)
{
  this->bodyA = a2;
  this->bodyB = a3;
  v5 = a4->x - a2->var8.var0.x;
  v6 = a4->y - a2->var8.var0.y;
  var0 = a2->var8.var1.var0;
  var1 = a2->var8.var1.var1;
  this->localAnchorA.x = (v6 * var0) + (var1 * v5);
  this->localAnchorA.y = (var1 * v6) - (var0 * v5);
  v9 = a5->x - a3->var8.var0.x;
  v10 = a5->y - a3->var8.var0.y;
  v12 = a3->var8.var1.var0;
  v11 = a3->var8.var1.var1;
  this->localAnchorB.x = (v10 * v12) + (v11 * v9);
  this->localAnchorB.y = (v11 * v10) - (v12 * v9);
  result = sqrtf(((a5->y - a4->y) * (a5->y - a4->y)) + ((a5->x - a4->x) * (a5->x - a4->x)));
  this->length = result;
  return result;
}

void b2DistanceJoint::b2DistanceJoint(b2DistanceJoint *this, const b2JointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_2870799A0;
  *(v3 + 140) = *(&a2->var4 + 4);
  *(v3 + 148) = *(&a2[1].var0 + 1);
  *(v3 + 164) = HIDWORD(a2[1].var1);
  *(v3 + 128) = a2[1].var2;
  *(v3 + 156) = 0;
  *(v3 + 160) = 0;
  *(v3 + 136) = 0;
}

void b2DistanceJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 168) = v6;
  *(a1 + 172) = v7;
  v8 = *(v4 + 64);
  *(a1 + 200) = v8;
  v9 = *(v5 + 64);
  *(a1 + 208) = v9;
  v10 = *(v4 + 212);
  v11 = *(v5 + 212);
  *(a1 + 216) = v10;
  *(a1 + 220) = v11;
  v62 = v11;
  v60 = *(v4 + 224);
  v61 = *(v5 + 224);
  *(a1 + 224) = v60;
  *(a1 + 228) = v61;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = (v12 + 16 * v6);
  v16 = *v14;
  v15 = v14[1];
  v17 = (v13 + 16 * v6);
  v63 = v17[1];
  v64 = *v17;
  v18 = (v12 + 16 * v7);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[3];
  v22 = (v13 + 16 * v7);
  v66 = *v22;
  v67 = v17[3];
  v65 = v22[1];
  v68 = v22[3];
  v23 = __sincosf_stret(v14[3]);
  v24 = __sincosf_stret(v21);
  v25 = *(a1 + 140) - *&v8;
  v26 = *(a1 + 144) - *(&v8 + 1);
  v27 = (v23.__cosval * v25) - (v23.__sinval * v26);
  v28 = (v23.__cosval * v26) + (v23.__sinval * v25);
  *(a1 + 184) = v27;
  *(a1 + 188) = v28;
  v29 = *(a1 + 148) - *&v9;
  v30 = *(a1 + 152) - *(&v9 + 1);
  v31 = (v24.__cosval * v29) - (v24.__sinval * v30);
  v32 = (v24.__cosval * v30) + (v24.__sinval * v29);
  *(a1 + 192) = v31;
  *(a1 + 196) = v32;
  v33 = ((v19 + v31) - v16) - v27;
  v34 = ((v20 + v32) - v15) - v28;
  v35 = sqrtf((v34 * v34) + (v33 * v33));
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  if (v35 > 0.0045)
  {
    v37 = v33 * (1.0 / v35);
    v38 = v34 * (1.0 / v35);
  }

  *(a1 + 176) = v37;
  *(a1 + 180) = v38;
  v39 = (v62 + (v10 + ((v60 * ((v27 * v38) - (v28 * v37))) * ((v27 * v38) - (v28 * v37))))) + ((v61 * ((v31 * v38) - (v32 * v37))) * ((v31 * v38) - (v32 * v37)));
  v40 = 1.0 / v39;
  if (v39 == 0.0)
  {
    v40 = 0.0;
  }

  *(a1 + 232) = v40;
  v41 = *(a1 + 128);
  v42 = 0.0;
  if (v41 > 0.0)
  {
    v43 = v35 - *(a1 + 164);
    v44 = (v41 * 6.2832) * ((v40 + v40) * *(a1 + 132));
    v45 = (v41 * 6.2832) * ((v41 * 6.2832) * v40);
    v46 = *a2 * (v44 + (*a2 * v45));
    if (v46 == 0.0)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = 1.0 / v46;
    }

    v42 = (v45 * (v43 * *a2)) * v36;
    v47 = v39 + v36;
    v48 = 1.0 / (v39 + v36);
    if (v47 == 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = v48;
    }

    *(a1 + 232) = v49;
  }

  *(a1 + 156) = v36;
  *(a1 + 136) = v42;
  if (*(a2 + 20) == 1)
  {
    v50 = *(a2 + 8) * *(a1 + 160);
    *(a1 + 160) = v50;
    v51 = v37 * v50;
    v52 = v38 * v50;
    v53 = v64 - (v10 * v51);
    v54 = v63 - (v10 * v52);
    v55 = v67 - (v60 * ((v51 * -v28) + (v27 * v52)));
    v56 = v66 + (v62 * v51);
    v57 = v65 + (v62 * v52);
    v58 = v68 + (v61 * ((v51 * -v32) + (v31 * v52)));
  }

  else
  {
    *(a1 + 160) = 0;
    v55 = v67;
    v58 = v68;
    v57 = v65;
    v56 = v66;
    v54 = v63;
    v53 = v64;
  }

  *v17 = v53;
  v17[1] = v54;
  *(*(a2 + 32) + 16 * *(a1 + 168) + 12) = v55;
  v59 = (*(a2 + 32) + 16 * *(a1 + 172));
  *v59 = v56;
  v59[1] = v57;
  *(*(a2 + 32) + 16 * *(a1 + 172) + 12) = v58;
}

float b2DistanceJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 + 16 * *(a1 + 168));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = (v2 + 16 * *(a1 + 172));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v12 = *(a1 + 184);
  v11 = *(a1 + 188);
  v14 = *(a1 + 192);
  v13 = *(a1 + 196);
  v15 = *(a1 + 176);
  v16 = *(a1 + 180);
  v17 = *(a1 + 160);
  v18 = -(*(a1 + 232) * ((*(a1 + 136) + ((v16 * ((v9 + (v10 * v14)) - (v5 + (v6 * v12)))) + (v15 * ((*v7 - (v10 * v13)) - (*v3 - (v6 * v11)))))) + (*(a1 + 156) * v17)));
  *(a1 + 160) = v17 - (*(a1 + 232) * ((*(a1 + 136) + ((v16 * ((v9 + (v10 * v14)) - (v5 + (v6 * v12)))) + (v15 * ((*v7 - (v10 * v13)) - (*v3 - (v6 * v11)))))) + (*(a1 + 156) * v17)));
  v19 = v15 * v18;
  v20 = v16 * v18;
  v21 = *(a1 + 216);
  v22 = *(a1 + 220);
  result = v4 - (v21 * v19);
  v24 = v6 - (*(a1 + 224) * ((v12 * v20) - (v11 * v19)));
  v25 = v10 + (*(a1 + 228) * ((v14 * v20) - (v13 * v19)));
  *v3 = result;
  v3[1] = v5 - (v21 * v20);
  *(*(a2 + 32) + 16 * *(a1 + 168) + 12) = v24;
  v26 = (*(a2 + 32) + 16 * *(a1 + 172));
  *v26 = v8 + (v19 * v22);
  v26[1] = v9 + (v20 * v22);
  *(*(a2 + 32) + 16 * *(a1 + 172) + 12) = v25;
  return result;
}

BOOL b2DistanceJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) > 0.0)
  {
    return 1;
  }

  v5 = *(a2 + 24);
  v6 = (v5 + 16 * *(a1 + 168));
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[3];
  v10 = (v5 + 16 * *(a1 + 172));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v14 = __sincosf_stret(v9);
  v15 = __sincosf_stret(v13);
  v16 = *(a1 + 140) - *(a1 + 200);
  v17 = *(a1 + 144) - *(a1 + 204);
  v18 = (v14.__cosval * v16) - (v14.__sinval * v17);
  v19 = (v14.__cosval * v17) + (v14.__sinval * v16);
  v20 = *(a1 + 148) - *(a1 + 208);
  v21 = *(a1 + 152) - *(a1 + 212);
  v22 = (v15.__cosval * v20) - (v15.__sinval * v21);
  v23 = (v15.__cosval * v21) + (v15.__sinval * v20);
  v24 = ((v11 + v22) - v8) - v18;
  v25 = ((v12 + v23) - v7) - v19;
  v26 = sqrtf((v25 * v25) + (v24 * v24));
  if (v26 >= 0.00000011921)
  {
    v24 = v24 * (1.0 / v26);
    v25 = v25 * (1.0 / v26);
  }

  else
  {
    v26 = 0.0;
  }

  v27 = fminf(v26 - *(a1 + 164), 0.2);
  if (v27 < -0.2)
  {
    v27 = -0.2;
  }

  v28 = *(a1 + 228);
  v29 = -(*(a1 + 232) * v27);
  v30 = v24 * v29;
  v31 = v25 * v29;
  v32 = *(a1 + 216);
  v33 = *(a1 + 220);
  v34 = v9 - (*(a1 + 224) * ((v18 * v31) - (v19 * v30)));
  *v6 = v8 - (v32 * v30);
  v6[1] = v7 - (v32 * v31);
  *(*(a2 + 24) + 16 * *(a1 + 168) + 12) = v34;
  v35 = (*(a2 + 24) + 16 * *(a1 + 172));
  *v35 = v11 + (v33 * v30);
  v35[1] = v12 + (v33 * v31);
  *(*(a2 + 24) + 16 * *(a1 + 172) + 12) = v13 + (v28 * ((v22 * v31) - (v23 * v30)));
  v36 = -v27;
  if (v27 > 0.0)
  {
    v36 = v27;
  }

  return v36 < 0.0045;
}

float b2FrictionJointDef::Initialize(b2FrictionJointDef *this, b2Body *a2, b2Body *a3, const b2Vec2 *a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  v4 = a4->x - a2->var8.var0.x;
  v5 = a4->y - a2->var8.var0.y;
  var0 = a2->var8.var1.var0;
  var1 = a2->var8.var1.var1;
  *(this + 9) = (v5 * var0) + (var1 * v4);
  *(this + 10) = (var1 * v5) - (var0 * v4);
  v8 = a4->x - a3->var8.var0.x;
  v9 = a4->y - a3->var8.var0.y;
  v11 = a3->var8.var1.var0;
  v10 = a3->var8.var1.var1;
  v12 = (v9 * v11) + (v10 * v8);
  result = (v10 * v9) - (v11 * v8);
  *(this + 11) = v12;
  *(this + 12) = result;
  return result;
}

void b2FrictionJoint::b2FrictionJoint(b2FrictionJoint *this, const b2FrictionJointDef *a2)
{
  b2Joint::b2Joint(this, a2);
  *v3 = &unk_287079948;
  *(v3 + 128) = *(a2 + 36);
  *(v3 + 136) = *(a2 + 44);
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 156) = *(a2 + 52);
}

void b2FrictionJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 164) = v6;
  *(a1 + 168) = v7;
  v8 = *(v4 + 64);
  *(a1 + 188) = v8;
  v9 = *(v5 + 64);
  *(a1 + 196) = v9;
  v47 = *(v5 + 212);
  v48 = *(v4 + 212);
  *(a1 + 204) = v48;
  *(a1 + 208) = v47;
  v10 = *(v4 + 224);
  v11 = *(v5 + 224);
  *(a1 + 212) = v10;
  *(a1 + 216) = v11;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(v12 + 16 * v6 + 12);
  v15 = (v13 + 16 * v6);
  v49 = *v15;
  v16 = v15[1].f32[1];
  v17 = *(v12 + 16 * v7 + 12);
  v18 = (v13 + 16 * v7);
  v19 = *v18;
  v20 = v18[1].f32[1];
  v21 = __sincosf_stret(v14);
  v22 = __sincosf_stret(v17);
  v23 = *(a1 + 128) - *&v8;
  v24 = *(a1 + 132) - *(&v8 + 1);
  _S2 = (v21.__cosval * v23) - (v21.__sinval * v24);
  v26 = (v21.__cosval * v24) + (v21.__sinval * v23);
  *(a1 + 172) = _S2;
  *(a1 + 176) = v26;
  v27 = *(a1 + 136) - *&v9;
  v28 = *(a1 + 140) - *(&v9 + 1);
  _S4 = (v22.__cosval * v27) - (v22.__sinval * v28);
  v30 = (v22.__cosval * v28) + (v22.__sinval * v27);
  *(a1 + 180) = _S4;
  *(a1 + 184) = v30;
  v31 = ((v48 + v47) + ((v10 * v26) * v26)) + ((v11 * v30) * v30);
  v32 = (v30 * -(v11 * _S4)) + (-(v10 * _S2) * v26);
  v33 = ((v48 + v47) + ((v10 * _S2) * _S2)) + ((v11 * _S4) * _S4);
  v34 = (v31 * v33) - (v32 * v32);
  if (v34 != 0.0)
  {
    v34 = 1.0 / v34;
  }

  v35 = -(v34 * v32);
  *(a1 + 220) = v33 * v34;
  *(a1 + 224) = v35;
  *(a1 + 228) = v35;
  *(a1 + 232) = v31 * v34;
  v36 = v10 + v11;
  if ((v10 + v11) > 0.0)
  {
    v36 = 1.0 / (v10 + v11);
  }

  *(a1 + 236) = v36;
  if (*(a2 + 20) == 1)
  {
    v37 = *(a2 + 8);
    v38 = v37 * *(a1 + 152);
    *(a1 + 152) = v38;
    _D5 = vmul_n_f32(*(a1 + 144), v37);
    *(a1 + 144) = _D5;
    __asm { FMLA            S3, S2, V5.S[1] }

    v16 = v16 + (-v10 * (v38 + _S3));
    v19 = vadd_f32(v19, vmul_n_f32(_D5, v47));
    __asm { FMLA            S0, S4, V5.S[1] }

    v20 = v20 + (v11 * (v38 + _S0));
    v46 = vsub_f32(v49, vmul_n_f32(_D5, v48));
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    v46 = v49;
  }

  *v15 = v46;
  *(*(a2 + 32) + 16 * *(a1 + 164) + 12) = v16;
  *(*(a2 + 32) + 16 * *(a1 + 168)) = v19;
  *(*(a2 + 32) + 16 * *(a1 + 168) + 12) = v20;
}

float32x2_t b2FrictionJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 + 16 * *(a1 + 164));
  v4 = v3[1].f32[1];
  v5 = (v2 + 16 * *(a1 + 168));
  v6 = *v5;
  v7 = v5[1].f32[1];
  v9 = *(a1 + 204);
  v8 = *(a1 + 208);
  v11 = *(a1 + 212);
  v10 = *(a1 + 216);
  v12 = *a2;
  v13 = *(a1 + 156);
  v14 = *a2 * *(a1 + 160);
  v15 = *(a1 + 152);
  v16 = v15 - ((v7 - v4) * *(a1 + 236));
  if (v16 >= v14)
  {
    v16 = *a2 * *(a1 + 160);
  }

  if (v16 >= -v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = -v14;
  }

  v18 = v17 - v15;
  v19 = -v11;
  v20 = v4 - (v11 * v18);
  v21 = v7 + (v10 * v18);
  _S6 = *(a1 + 180);
  v23 = *(a1 + 184);
  _S19 = *(a1 + 172);
  v25 = *(a1 + 176);
  v26 = *v3;
  *(a1 + 152) = v17;
  v27 = *(a1 + 144);
  v28 = vsub_f32(v27, vmla_n_f32(vmul_n_f32(*(a1 + 228), ((v6.f32[1] + (_S6 * v21)) - v26.f32[1]) - (_S19 * v20)), *(a1 + 220), (v25 * v20) + ((v6.f32[0] - (v23 * v21)) - v26.f32[0])));
  *(a1 + 144) = v28;
  v29 = v12 * v13;
  v30 = COERCE_FLOAT(vmul_f32(v28, v28).i32[1]) + (v28.f32[0] * v28.f32[0]);
  if (v30 > (v29 * v29))
  {
    v31 = sqrtf(v30);
    if (v31 >= 0.00000011921)
    {
      v28 = vmul_n_f32(v28, 1.0 / v31);
    }

    v28 = vmul_n_f32(v28, v29);
    *(a1 + 144) = v28;
  }

  _D4 = vsub_f32(v28, v27);
  __asm { FMLA            S20, S19, V4.S[1] }

  v38 = v20 + (v19 * _S20);
  __asm { FMLA            S16, S6, V4.S[1] }

  *v3 = vsub_f32(v26, vmul_n_f32(_D4, v9));
  *(*(a2 + 32) + 16 * *(a1 + 164) + 12) = v38;
  result = vadd_f32(v6, vmul_n_f32(_D4, v8));
  *(*(a2 + 32) + 16 * *(a1 + 168)) = result;
  *(*(a2 + 32) + 16 * *(a1 + 168) + 12) = v21 + (v10 * _S16);
  return result;
}

uint64_t b2FrictionJoint::SetMaxForce(uint64_t this, float a2)
{
  if ((SLODWORD(a2) <= -1 || ((LODWORD(a2) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F) && (LODWORD(a2) - 1) >= 0x7FFFFF && (LODWORD(a2) & 0x7FFFFFFF) != 0)
  {
    b2FrictionJoint::SetMaxForce();
  }

  *(this + 156) = a2;
  return this;
}

uint64_t b2FrictionJoint::SetMaxTorque(uint64_t this, float a2)
{
  if ((SLODWORD(a2) <= -1 || ((LODWORD(a2) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F) && (LODWORD(a2) - 1) >= 0x7FFFFF && (LODWORD(a2) & 0x7FFFFFFF) != 0)
  {
    b2FrictionJoint::SetMaxTorque();
  }

  *(this + 160) = a2;
  return this;
}

float b2GearJoint::b2GearJoint(b2Joint *a1, uint64_t a2)
{
  b2Joint::b2Joint(a1, a2);
  *v3 = &unk_287079EC0;
  v4 = *(a2 + 40);
  v5 = *(v4 + 8);
  v6 = *(*(a2 + 48) + 8);
  *(v3 + 128) = v5;
  *(v3 + 132) = v6;
  if ((v5 - 3) <= 0xFFFFFFFD)
  {
    b2GearJoint::b2GearJoint();
  }

  if ((v6 - 3) <= 0xFFFFFFFD)
  {
    b2GearJoint::b2GearJoint();
  }

  v7 = *(v4 + 96);
  v8 = *(v4 + 104);
  *(v3 + 136) = v7;
  *(v3 + 96) = v8;
  if (v5 == 1)
  {
    v9 = v8[27];
    v10 = v7[27];
    *(v3 + 168) = *(v4 + 128);
    *(v3 + 152) = *(v4 + 136);
    v11 = *(v4 + 176);
    *(v3 + 200) = v11;
    *(v3 + 184) = 0;
    v12 = (v9 - v10) - v11;
  }

  else
  {
    v14 = v7[10];
    v13 = v7[11];
    v16 = v7[8];
    v15 = v7[9];
    v18 = v8[10];
    v17 = v8[11];
    v20 = v8[8];
    v19 = v8[9];
    v21 = *(v4 + 128);
    *(v3 + 168) = v21;
    v22 = HIDWORD(v21);
    v23 = *&v21;
    v24 = *(v4 + 136);
    *(v3 + 152) = v24;
    *(v3 + 200) = *(v4 + 160);
    v25 = *(v4 + 144);
    *(v3 + 184) = v25;
    v26 = (v20 - v16) + ((v17 * *&v24) - (v18 * *(&v24 + 1)));
    v27 = (v19 - v15) + ((v17 * *(&v24 + 1)) + (v18 * *&v24));
    v12 = ((((v13 * v27) - (v14 * v26)) - *&v22) * *(&v25 + 1)) + ((((v14 * v27) + (v13 * v26)) - v23) * *&v25);
  }

  v28 = *(a2 + 48);
  v29 = *(v28 + 96);
  v30 = *(v28 + 104);
  *(v3 + 144) = v29;
  *(v3 + 104) = v30;
  if (v6 == 1)
  {
    v31 = v30[27];
    v32 = v29[27];
    *(v3 + 176) = *(v28 + 128);
    *(v3 + 160) = *(v28 + 136);
    v33 = *(v28 + 176);
    *(v3 + 204) = v33;
    *(v3 + 192) = 0;
    v34 = (v31 - v32) - v33;
  }

  else
  {
    v36 = v29[10];
    v35 = v29[11];
    v38 = v29[8];
    v37 = v29[9];
    v40 = v30[10];
    v39 = v30[11];
    v42 = v30[8];
    v41 = v30[9];
    v43 = *(v28 + 128);
    *(v3 + 176) = v43;
    v44 = HIDWORD(v43);
    v45 = *&v43;
    v46 = *(v28 + 136);
    *(v3 + 160) = v46;
    *(v3 + 204) = *(v28 + 160);
    v47 = *(v28 + 144);
    *(v3 + 192) = v47;
    v48 = (v42 - v38) + ((v39 * *&v46) - (v40 * *(&v46 + 1)));
    v49 = (v41 - v37) + ((v39 * *(&v46 + 1)) + (v40 * *&v46));
    v34 = ((((v35 * v49) - (v36 * v48)) - *&v44) * *(&v47 + 1)) + ((((v36 * v49) + (v35 * v48)) - v45) * *&v47);
  }

  v50 = *(a2 + 56);
  result = v12 + (v50 * v34);
  *(v3 + 208) = result;
  *(v3 + 212) = v50;
  *(v3 + 216) = 0;
  return result;
}

float b2GearJoint::InitVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(v4 + 28);
  v7 = *(v5 + 28);
  *(a1 + 220) = v6;
  *(a1 + 224) = v7;
  v8 = *(a1 + 136);
  v9 = *(a1 + 144);
  v10 = *(v8 + 28);
  v11 = *(v9 + 28);
  *(a1 + 228) = v10;
  *(a1 + 232) = v11;
  *(a1 + 236) = *(v4 + 64);
  *(a1 + 244) = *(v5 + 64);
  v12 = *(v8 + 64);
  *(a1 + 252) = v12;
  v13 = *(v9 + 64);
  *(a1 + 260) = v13;
  v85 = *(v4 + 212);
  *(a1 + 268) = v85;
  v87 = *(v5 + 212);
  *(a1 + 272) = v87;
  v14 = *(v8 + 212);
  *(a1 + 276) = v14;
  v89 = *(v9 + 212);
  *(a1 + 280) = v89;
  v15 = *(v4 + 224);
  *(a1 + 284) = v15;
  v86 = *(v5 + 224);
  *(a1 + 288) = v86;
  v16 = *(v8 + 224);
  *(a1 + 292) = v16;
  v88 = *(v9 + 224);
  *(a1 + 296) = v88;
  v18 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = (v17 + 16 * v6);
  v90 = v19[1];
  v91 = *v19;
  v20 = v19[3];
  v21 = (v17 + 16 * v7);
  v22 = *v21;
  v92 = v20;
  v93 = v21[1];
  v23 = v21[3];
  v24 = (v17 + 16 * v10);
  v25 = *v24;
  v26 = v24[3];
  v27 = *(v18 + 16 * v11 + 12);
  v28 = (v17 + 16 * v11);
  v95 = v24[1];
  v96 = *v28;
  v94 = v28[1];
  v97 = v28[3];
  v29 = __sincosf_stret(*(v18 + 16 * v7 + 12));
  v30 = __sincosf_stret(v27);
  cosval = v30.__cosval;
  if (*(a1 + 128) == 1)
  {
    v32 = v15 + v16;
    v33 = 1.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 1.0;
    v37 = v85;
  }

  else
  {
    v84 = v22;
    v38 = *(v18 + 16 * v6 + 12);
    v39 = __sincosf_stret(*(v18 + 16 * v10 + 12));
    v40 = v38;
    v22 = v84;
    v41 = __sincosf_stret(v40);
    cosval = v30.__cosval;
    v42 = *(a1 + 184);
    v43 = *(a1 + 188);
    v34 = (v39.__cosval * v42) - (v39.__sinval * v43);
    v35 = (v39.__cosval * v43) + (v39.__sinval * v42);
    v44 = *(a1 + 168) - *&v12;
    v45 = *(a1 + 172) - *(&v12 + 1);
    v46 = (v39.__cosval * v44) - (v39.__sinval * v45);
    v47 = (v39.__cosval * v45) + (v39.__sinval * v44);
    v48 = *(a1 + 152) - *(a1 + 236);
    v49 = *(a1 + 156) - *(a1 + 240);
    v36 = (v46 * v35) - (v47 * v34);
    v33 = (((v41.__cosval * v48) - (v41.__sinval * v49)) * v35) - (((v41.__cosval * v49) + (v41.__sinval * v48)) * v34);
    v37 = v85;
    v32 = ((v85 + v14) + ((v16 * v36) * v36)) + ((v15 * v33) * v33);
  }

  *(a1 + 300) = v34;
  *(a1 + 304) = v35;
  *(a1 + 316) = v33;
  *(a1 + 324) = v36;
  v50 = 0.0;
  v51 = v32 + 0.0;
  if (*(a1 + 132) == 1)
  {
    *(a1 + 308) = 0;
    v52 = *(a1 + 212);
    v53 = v88;
    v54 = v51 + ((v52 * v52) * (v86 + v88));
    v55 = 0.0;
    v56 = v52;
  }

  else
  {
    v57 = *(a1 + 192);
    v58 = *(a1 + 196);
    v59 = (cosval * v57) - (v30.__sinval * v58);
    v60 = (cosval * v58) + (v30.__sinval * v57);
    v61 = *(a1 + 176) - *&v13;
    v62 = *(a1 + 180) - *(&v13 + 1);
    v63 = (cosval * v61) - (v30.__sinval * v62);
    v64 = (cosval * v62) + (v30.__sinval * v61);
    v65 = *(a1 + 160) - *(a1 + 244);
    v66 = *(a1 + 164) - *(a1 + 248);
    v67 = (v29.__cosval * v65) - (v29.__sinval * v66);
    v68 = (v29.__cosval * v66) + (v29.__sinval * v65);
    v69 = *(a1 + 212);
    v50 = v59 * v69;
    v55 = v60 * v69;
    *(a1 + 308) = v59 * v69;
    v56 = v69 * ((v63 * v60) - (v64 * v59));
    v52 = v69 * ((v67 * v60) - (v68 * v59));
    v70 = v69 * v69;
    v53 = v88;
    v54 = v51 + (((v56 * (v88 * v56)) + (v70 * (v87 + v89))) + ((v86 * v52) * v52));
  }

  v72 = v90;
  v71 = v91;
  *(a1 + 312) = v55;
  *(a1 + 320) = v52;
  *(a1 + 328) = v56;
  v73 = 1.0 / v54;
  v74 = v54 <= 0.0;
  v75 = 0.0;
  if (!v74)
  {
    v75 = v73;
  }

  *(a1 + 332) = v75;
  if (*(a2 + 20) == 1)
  {
    v76 = *(a1 + 216);
    v71 = v91 + (v34 * (v37 * v76));
    v72 = v90 + ((v37 * v76) * v35);
    v77 = v92 + ((v15 * v76) * v33);
    v22 = v22 + ((v87 * v76) * v50);
    v78 = v93 + ((v87 * v76) * v55);
    v23 = v23 + ((v86 * v76) * v52);
    v25 = v25 - (v34 * (v14 * v76));
    v26 = v26 + (-(v16 * v76) * v36);
    v95 = v95 - ((v14 * v76) * v35);
    v96 = v96 - ((v89 * v76) * v50);
    v94 = v94 - ((v89 * v76) * v55);
    v97 = v97 + (-(v53 * v76) * v56);
  }

  else
  {
    *(a1 + 216) = 0;
    v77 = v92;
    v78 = v93;
  }

  v79 = (*(a2 + 32) + 16 * v6);
  *v79 = v71;
  v79[1] = v72;
  *(*(a2 + 32) + 16 * *(a1 + 220) + 12) = v77;
  v80 = (*(a2 + 32) + 16 * *(a1 + 224));
  *v80 = v22;
  v80[1] = v78;
  *(*(a2 + 32) + 16 * *(a1 + 224) + 12) = v23;
  v81 = (*(a2 + 32) + 16 * *(a1 + 228));
  *v81 = v25;
  v81[1] = v95;
  *(*(a2 + 32) + 16 * *(a1 + 228) + 12) = v26;
  v82 = (*(a2 + 32) + 16 * *(a1 + 232));
  *v82 = v96;
  v82[1] = v94;
  result = v97;
  *(*(a2 + 32) + 16 * *(a1 + 232) + 12) = v97;
  return result;
}

float b2GearJoint::SolveVelocityConstraints(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 + 16 * *(a1 + 224));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = (v2 + 16 * *(a1 + 228));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = (v2 + 16 * *(a1 + 220));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v15 = (v2 + 16 * *(a1 + 232));
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[3];
  v19 = *(a1 + 300);
  v20 = *(a1 + 304);
  v21 = *(a1 + 308);
  v22 = *(a1 + 312);
  v23 = *(a1 + 316);
  v24 = *(a1 + 324);
  v25 = *(a1 + 320);
  v26 = *(a1 + 328);
  v27 = -(*(a1 + 332) * (((((v13 - v9) * v20) + (v19 * (*v11 - *v7))) + (((v5 - v17) * v22) + (v21 * (v4 - *v15)))) + (((v23 * v14) - (v24 * v10)) + ((v25 * v6) - (v26 * v18)))));
  *(a1 + 216) = *(a1 + 216) - (*(a1 + 332) * (((((v13 - v9) * v20) + (v19 * (*v11 - *v7))) + (((v5 - v17) * v22) + (v21 * (v4 - *v15)))) + (((v23 * v14) - (v24 * v10)) + ((v25 * v6) - (v26 * v18)))));
  v28 = *(a1 + 268) * v27;
  v29 = v14 + ((*(a1 + 284) * v27) * v23);
  v30 = v27 * *(a1 + 272);
  result = v4 + (v21 * v30);
  v32 = v5 + (v22 * v30);
  v33 = v6 + ((v27 * *(a1 + 288)) * v25);
  v34 = v27 * *(a1 + 276);
  v35 = v8 - (v19 * v34);
  v36 = v9 - (v20 * v34);
  v37 = v10 + (-(*(a1 + 292) * v27) * v24);
  v38 = v27 * *(a1 + 280);
  v39 = v18 + (-(*(a1 + 296) * v27) * v26);
  *v11 = v12 + (v19 * v28);
  v11[1] = v13 + (v20 * v28);
  *(*(a2 + 32) + 16 * *(a1 + 220) + 12) = v29;
  v40 = (*(a2 + 32) + 16 * *(a1 + 224));
  *v40 = result;
  v40[1] = v32;
  *(*(a2 + 32) + 16 * *(a1 + 224) + 12) = v33;
  v41 = (*(a2 + 32) + 16 * *(a1 + 228));
  *v41 = v35;
  v41[1] = v36;
  *(*(a2 + 32) + 16 * *(a1 + 228) + 12) = v37;
  v42 = (*(a2 + 32) + 16 * *(a1 + 232));
  *v42 = v16 - (v21 * v38);
  v42[1] = v17 - (v22 * v38);
  *(*(a2 + 32) + 16 * *(a1 + 232) + 12) = v39;
  return result;
}

uint64_t b2GearJoint::SolvePositionConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = (v4 + 16 * *(a1 + 224));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = (v4 + 16 * *(a1 + 228));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = (v4 + 16 * *(a1 + 220));
  v85 = *v13;
  v86 = v6;
  v82 = v13[1];
  v14 = v13[3];
  v15 = (v4 + 16 * *(a1 + 232));
  v84 = *v15;
  v87 = v15[1];
  v88 = v7;
  v16 = v15[3];
  v17 = __sincosf_stret(v8);
  v18 = __sincosf_stret(v16);
  v83 = v14;
  if (*(a1 + 128) == 1)
  {
    v19 = *(a1 + 284);
    v20 = *(a1 + 292);
    v21 = v19 + v20;
    v22 = (v14 - v12) - *(a1 + 200);
    v23 = 1.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 1.0;
    v27 = v10;
    v28 = v85;
    v29 = v82;
  }

  else
  {
    v30 = __sincosf_stret(v12);
    v31 = __sincosf_stret(v14);
    v32 = *(a1 + 184);
    v33 = *(a1 + 188);
    v24 = (v30.__cosval * v32) - (v30.__sinval * v33);
    v25 = (v30.__cosval * v33) + (v30.__sinval * v32);
    v34 = *(a1 + 168) - *(a1 + 252);
    v35 = *(a1 + 172) - *(a1 + 256);
    v36 = *(a1 + 152) - *(a1 + 236);
    v37 = *(a1 + 156) - *(a1 + 240);
    v38 = (v31.__cosval * v36) - (v31.__sinval * v37);
    v39 = (v31.__cosval * v37) + (v31.__sinval * v36);
    v26 = (((v30.__cosval * v34) - (v30.__sinval * v35)) * v25) - (((v30.__cosval * v35) + (v30.__sinval * v34)) * v24);
    v23 = (v38 * v25) - (v39 * v24);
    v20 = *(a1 + 292);
    v19 = *(a1 + 284);
    v21 = ((*(a1 + 276) + *(a1 + 268)) + ((v26 * v20) * v26)) + ((v19 * v23) * v23);
    v28 = v85;
    v27 = v10;
    v29 = v82;
    v22 = (v33 * (((v30.__cosval * ((v82 - v11) + v39)) - (v30.__sinval * ((v85 - v10) + v38))) - v35)) + ((((v30.__sinval * ((v82 - v11) + v39)) + (v30.__cosval * ((v85 - v10) + v38))) - v34) * v32);
  }

  v40 = 0.0;
  v41 = v21 + 0.0;
  if (*(a1 + 132) == 1)
  {
    v42 = v84;
    v43 = *(a1 + 212);
    v44 = *(a1 + 288);
    v45 = *(a1 + 296);
    v46 = v41 + ((v43 * v43) * (v44 + v45));
    v47 = (v8 - v16) - *(a1 + 204);
    v48 = 0.0;
    v49 = v43;
    v50 = v43;
  }

  else
  {
    v51 = *(a1 + 192);
    v52 = *(a1 + 196);
    v53 = (v18.__cosval * v51) - (v18.__sinval * v52);
    v54 = (v18.__cosval * v52) + (v18.__sinval * v51);
    v55 = *(a1 + 176) - *(a1 + 260);
    v56 = *(a1 + 180) - *(a1 + 264);
    v81 = v19;
    v57 = v27;
    v58 = v29;
    v59 = *(a1 + 160) - *(a1 + 244);
    v60 = *(a1 + 164) - *(a1 + 248);
    v61 = (v17.__cosval * v59) - (v17.__sinval * v60);
    v62 = (v17.__cosval * v60) + (v17.__sinval * v59);
    v43 = *(a1 + 212);
    v40 = v53 * v43;
    v48 = v54 * v43;
    v50 = v43 * ((((v18.__cosval * v55) - (v18.__sinval * v56)) * v54) - (((v18.__cosval * v56) + (v18.__sinval * v55)) * v53));
    v49 = v43 * ((v61 * v54) - (v62 * v53));
    v45 = *(a1 + 296);
    v44 = *(a1 + 288);
    v46 = v41 + (((v50 * (v50 * v45)) + ((v43 * v43) * (*(a1 + 280) + *(a1 + 272)))) + ((v44 * v49) * v49));
    v42 = v84;
    v63 = (v86 - v84) + v61;
    v64 = (v88 - v87) + v62;
    v65 = (v18.__sinval * v64) + (v18.__cosval * v63);
    v66 = ((v18.__cosval * v64) - (v18.__sinval * v63)) - v56;
    v29 = v58;
    v27 = v57;
    v19 = v81;
    v67 = v52 * v66;
    v28 = v85;
    v47 = v67 + ((v65 - v55) * v51);
  }

  v68 = 0.0;
  if (v46 > 0.0)
  {
    v68 = -((v22 + (v43 * v47)) - *(a1 + 208)) / v46;
  }

  v69 = v68 * *(a1 + 268);
  v70 = v28 + (v24 * v69);
  v71 = v83 + ((v68 * v19) * v23);
  v72 = v68 * *(a1 + 272);
  v73 = v8 + ((v68 * v44) * v49);
  v74 = v68 * *(a1 + 276);
  v75 = v27 - (v24 * v74);
  v76 = v68 * *(a1 + 280);
  *v13 = v70;
  v13[1] = v29 + (v25 * v69);
  *(*(a2 + 24) + 16 * *(a1 + 220) + 12) = v71;
  v77 = (*(a2 + 24) + 16 * *(a1 + 224));
  *v77 = v86 + (v40 * v72);
  v77[1] = v88 + (v48 * v72);
  *(*(a2 + 24) + 16 * *(a1 + 224) + 12) = v73;
  v78 = (*(a2 + 24) + 16 * *(a1 + 228));
  *v78 = v75;
  v78[1] = v11 - (v25 * v74);
  *(*(a2 + 24) + 16 * *(a1 + 228) + 12) = v12 + (-(v20 * v68) * v26);
  v79 = (*(a2 + 24) + 16 * *(a1 + 232));
  *v79 = v42 - (v40 * v76);
  v79[1] = v87 - (v48 * v76);
  *(*(a2 + 24) + 16 * *(a1 + 232) + 12) = v16 + (-(v45 * v68) * v50);
  return 1;
}