void sub_296BC2880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  IR::IRCoordinateTree::~IRCoordinateTree(&a27);
  v35 = *v32;
  if (*v32)
  {
    *(v32 + 8) = v35;
    operator delete(v35);
  }

  v36 = *(v32 + 24);
  if (v36)
  {
    *(v32 + 32) = v36;
    operator delete(v36);
  }

  v37 = *(v32 + 48);
  if (v37)
  {
    *(v32 + 56) = v37;
    operator delete(v37);
  }

  a27 = (v33 - 216);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a27);
  v38 = *(v32 + 152);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(a1);
}

void IR::HOA2BinauralIRRenderer::flattenIRCoordinateTree(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  IR::IRCoordinates::IRCoordinates(v8);
  v6[0] = v8[0];
  v6[1] = v8[1];
  v7 = v9;
  IR::HOA2BinauralIRRenderer::extractSubNodesFromIRTree(a1, a3, a2, v6, 1);
}

void sub_296BC2C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::assign(uint64_t *a1, unint64_t a2, char **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = a1[1];
    v16 = *a1 + 24 * a2;
    if (v15 != v16)
    {
      v17 = a1[1];
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v12, *a3, a3[1], (a3[1] - *a3) >> 2);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }
}

void std::vector<std::vector<std::vector<float>>>::assign(uint64_t a1, unint64_t a2, char ***a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    std::vector<std::vector<std::vector<float>>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v9 = (*(a1 + 8) - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v6, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = *(a1 + 8);
    v16 = *a1 + 24 * a2;
    while (v15 != v16)
    {
      v15 -= 3;
      v17 = v15;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v12, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    *(a1 + 8) = v13;
  }
}

void std::vector<std::vector<DSPSplitComplex>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<DSPSplitComplex>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void IR::HOA2BinauralIRRenderer::process(uint64_t a1, void **a2, int a3, unsigned int a4, uint64_t a5, float a6, float a7, float a8)
{
  LODWORD(v12) = a3;
  v15 = *a1;
  v16 = *(a1 + 8);
  if (*a1 != v16)
  {
    while (!IR::IRCoordinates::operator==(v15, a5))
    {
      v15 += 36;
      if (v15 == v16)
      {
        v15 = v16;
        break;
      }
    }
  }

  if (*(a1 + 440) == v12 && *(a1 + 448) == a4 && v15 != *(a1 + 8))
  {
    v18 = 954437177 * ((v15 - *a1) >> 2);
    HOA::RotationMatrix::setRotationMatrixYPR(*(a1 + 512), a6, a7, a8);
    HOA::RotationMatrix::toRegularMatrix(*(a1 + 512), *(a1 + 520), (*(a1 + 528) - *(a1 + 520)) >> 2, 0);
    vDSP_mmul(*(a1 + 488), 1, *(a1 + 520), 1, *(a1 + 544), 1, *(a1 + 456), *(a1 + 452), *(a1 + 452));
    vDSP_mmul(*(a1 + 544), 1, *(*(a1 + 464) + 24 * v18), 1, *(a1 + 696), 1, *(a1 + 456), *(a1 + 444), *(a1 + 452));
    LODWORD(v19) = *(a1 + 440);
    if (*(a1 + 460))
    {
      if (v19)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          bzero(*(*(a1 + 784) + v20), 4 * *(a1 + 572));
          bzero(*(*(a1 + 808) + v20), 4 * *(a1 + 572));
          ++v21;
          v19 = *(a1 + 440);
          v20 += 24;
        }

        while (v21 < v19);
      }

      if (*(a1 + 456))
      {
        v22 = 0;
        do
        {
          bzero(*(a1 + 720), 4 * *(a1 + 572));
          bzero(*(a1 + 744), 4 * *(a1 + 572));
          vDSP_ctoz((*(a1 + 696) + 4 * (*(a1 + 444) * v22)), 2, (a1 + 768), 1, *(a1 + 444) >> 1);
          vDSP_DFT_Execute(*(a1 + 584), *(a1 + 720), *(a1 + 744), *(a1 + 720), *(a1 + 744));
          v19 = *(a1 + 744);
          v23 = *v19;
          *v19 = 0.0;
          LODWORD(v19) = *(a1 + 440);
          if (v19)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            do
            {
              vDSP_zvma((a1 + 768), 1, (*(*(a1 + 648) + v25) + 16 * v22), 1, (*(a1 + 832) + v24), 1, (*(a1 + 832) + v24), 1, *(a1 + 572));
              **(*(a1 + 808) + v25) = **(*(a1 + 808) + v25) + (v23 * *(*(*(a1 + 672) + v25) + 4 * v22));
              ++v26;
              v19 = *(a1 + 440);
              v25 += 24;
              v24 += 16;
            }

            while (v26 < v19);
          }

          ++v22;
        }

        while (v22 < *(a1 + 456));
      }

      if (v19)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        do
        {
          vDSP_DFT_Execute(*(a1 + 592), *(*(a1 + 784) + v28), *(*(a1 + 808) + v28), *(*(a1 + 784) + v28), *(*(a1 + 808) + v28));
          vDSP_ztoc((*(a1 + 832) + v27), 1, a2[v29], 2, *(a1 + 448) >> 1);
          MEMORY[0x29C260530](a2[v29], 1, a1 + 576, a2[v29], 1, *(a1 + 448));
          ++v29;
          v28 += 24;
          v27 += 16;
        }

        while (v29 < *(a1 + 440));
      }
    }

    else if (v19)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        vDSP_mmul(*(*(a1 + 784) + v31), 1, *(a1 + 696), 1, a2[v32++], 1, 1uLL, *(a1 + 444), *(a1 + 456));
        v31 += 24;
      }

      while (v32 < *(a1 + 440));
    }
  }

  else if (v12)
  {
    v12 = v12;
    do
    {
      v30 = *a2++;
      bzero(v30, 4 * a4);
      --v12;
    }

    while (v12);
  }
}

void IR::HOA2BinauralIRRenderer::extractSubNodesFromIRTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a3 + 16) != *(a3 + 8))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0x8E38E38E38E38E39;
    do
    {
      v13 = v12;
      if (a5)
      {
        IR::IRCoordinates::reset(a4);
      }

      v14 = *(a1 + 24);
      v15 = *(a1 + 32);
      if (v14 != v15)
      {
        while (*v14 != *a3)
        {
          if (++v14 == v15)
          {
            goto LABEL_11;
          }
        }
      }

      if (v14 != v15)
      {
        IR::IRCoordinates::set(a4, *a3, *(*(a3 + 8) + 4 * v10));
      }

LABEL_11:
      v16 = *(a3 + 32);
      if (v16 == *(a3 + 40))
      {
        v18 = *a2;
        v19 = *(a2 + 8);
        if (*a2 != v19)
        {
          while (!IR::IRCoordinates::operator==(v18, a4))
          {
            v18 += 36;
            if (v18 == v19)
            {
              v18 = v19;
              break;
            }
          }

          v19 = *(a2 + 8);
        }

        v12 = v13;
        if (v18 == v19)
        {
          v20 = *(a2 + 16);
          if (v19 >= v20)
          {
            v24 = (&v19[-*a2] >> 2) * v13;
            v25 = v24 + 1;
            if ((v24 + 1) > 0x71C71C71C71C71CLL)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v26 = ((v20 - *a2) >> 2) * v13;
            if (2 * v26 > v25)
            {
              v25 = 2 * v26;
            }

            if (v26 >= 0x38E38E38E38E38ELL)
            {
              v27 = 0x71C71C71C71C71CLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              std::allocator<IR::IRCoordinates>::allocate_at_least[abi:ne200100](a2, v27);
            }

            v28 = 36 * v24;
            v29 = *a4;
            v30 = *(a4 + 16);
            *(v28 + 32) = *(a4 + 32);
            *v28 = v29;
            *(v28 + 16) = v30;
            v23 = 36 * v24 + 36;
            v31 = *(a2 + 8) - *a2;
            v32 = 36 * v24 - v31;
            memcpy((v28 - v31), *a2, v31);
            v33 = *a2;
            *a2 = v32;
            *(a2 + 8) = v23;
            *(a2 + 16) = 0;
            if (v33)
            {
              operator delete(v33);
            }

            v12 = v13;
          }

          else
          {
            v21 = *a4;
            v22 = *(a4 + 16);
            *(v19 + 8) = *(a4 + 32);
            *v19 = v21;
            *(v19 + 1) = v22;
            v23 = (v19 + 36);
          }

          *(a2 + 8) = v23;
        }
      }

      else
      {
        v17 = *(a4 + 16);
        v34[0] = *a4;
        v34[1] = v17;
        v35 = *(a4 + 32);
        IR::HOA2BinauralIRRenderer::extractSubNodesFromIRTree(a1, a2, v16 + 56 * v10, v34, 0);
        v12 = v13;
      }

      v10 = ++v11;
    }

    while (v11 < ((*(a3 + 16) - *(a3 + 8)) >> 2));
  }
}

uint64_t IR::HOA2BinauralIRRenderer::getRefHOAIRCoordinates@<X0>(IR::HOA2BinauralIRRenderer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<IR::IRCoordinates>::__init_with_size[abi:ne200100]<IR::IRCoordinates*,IR::IRCoordinates*>(a2, *this, *(this + 1), 0x8E38E38E38E38E39 * ((*(this + 1) - *this) >> 2));
}

uint64_t IR::HOA2BinauralIRRenderer::getVariableDimensionsInRefHOAIR@<X0>(IR::HOA2BinauralIRRenderer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType*,IR::IRCoordinateType*>(a2, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 2);
}

uint64_t IR::HOA2BinauralIRRenderer::getInterpolationMethodForVariableDimensionsInRefHOAIR@<X0>(IR::HOA2BinauralIRRenderer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod*,IR::IRInterpolationMethod*>(a2, *(this + 12), *(this + 13), (*(this + 13) - *(this + 12)) >> 2);
}

uint64_t IR::HOA2BinauralIRRenderer::getPeriodForVariableDimensionsInRefHOAIR@<X0>(IR::HOA2BinauralIRRenderer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, *(this + 9), *(this + 10), (*(this + 10) - *(this + 9)) >> 2);
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v19, a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v18, a2, (a2 + v10), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, v11, a3, a1[1]);
  }
}

size_t *std::vector<std::vector<DSPSplitComplex>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<DSPSplitComplex>::__init_with_size[abi:ne200100]<DSPSplitComplex*,DSPSplitComplex*>(v7, *a3, a3[1], (a3[1] - *a3) >> 4);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<DSPSplitComplex>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<float>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_296BC3B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<DSPSplitComplex>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<DSPSplitComplex>::__init_with_size[abi:ne200100]<DSPSplitComplex*,DSPSplitComplex*>(v4, *a3, a3[1], (a3[1] - *a3) >> 4);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<DSPSplitComplex>::__init_with_size[abi:ne200100]<DSPSplitComplex*,DSPSplitComplex*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DSPSplitComplex>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BC3C2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DSPSplitComplex>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<DSPSplitComplex>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::vector<DSPSplitComplex>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<DSPSplitComplex>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_296BC3CE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<IR::IRCoordinates>::__init_with_size[abi:ne200100]<IR::IRCoordinates*,IR::IRCoordinates*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IR::IRCoordinates>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BC3D5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IR::IRCoordinates>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    std::allocator<IR::IRCoordinates>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void IR::IRData::Implementation::getTriangulationData(IR::IRData::Implementation *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v55[1] = *MEMORY[0x29EDCA608];
  v3 = *(this + 64);
  if (v3 == *(this + 65))
  {
    v49 = 0;
    v50 = 0;
    *a2 = applesauce::CF::details::make_CFDictionaryRef(&v49);
  }

  else
  {
    v29 = a2;
    v5 = 0;
    v6 = 0;
    v47 = 0;
    v48 = 0;
    memset(v45, 0, sizeof(v45));
    v46 = 0;
    memset(v43, 0, sizeof(v43));
    memset(v44, 0, sizeof(v44));
    v40 = 0;
    __dst = 0;
    v42 = 0;
    do
    {
      v7 = v46;
      v8 = 16 * v5;
      v9 = *(v3 + 16 * v5);
      if (v46 != v47)
      {
        while (*v7 != *v9)
        {
          v7 += 16;
          if (v7 == v47)
          {
            goto LABEL_8;
          }
        }
      }

      if (v7 == v47)
      {
LABEL_8:
        std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::push_back[abi:ne200100](&v46, v9);
        v10 = **(*(this + 64) + v8);
        v50 = 0;
        v51[0] = 0;
        v49 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v49, *(v10 + 224), *(v10 + 232), (*(v10 + 232) - *(v10 + 224)) >> 2);
        memset(&v39, 0, sizeof(v39));
        std::vector<IR::IRDataType>::reserve(&v39, (v50 - v49) >> 2);
        v11 = v49;
        if (v50 != v49)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            LODWORD(cf) = bswap32(*(v11 + v12));
            std::vector<int>::push_back[abi:ne200100](&v39.__begin_, &cf);
            v12 = v13;
            v11 = v49;
            ++v13;
          }

          while (v12 < (v50 - v49) >> 2);
        }

        applesauce::CF::make_DataRef(v39.__begin_, v39.__end_ - v39.__begin_, &cf);
        std::vector<applesauce::CF::DataRef>::push_back[abi:ne200100](v45, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        v14 = **(*(this + 64) + v8);
        v37 = 0;
        v38 = 0;
        cf = 0;
        std::vector<std::list<int>>::__init_with_size[abi:ne200100]<std::list<int>*,std::list<int>*>(&cf, *(v14 + 272), *(v14 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(v14 + 280) - *(v14 + 272)) >> 3));
        __p = 0;
        v34 = 0;
        v35 = 0;
        memset(&v32, 0, sizeof(v32));
        std::vector<IR::IRDataType>::reserve(&v32, 0xAAAAAAAAAAAAAAABLL * ((v37 - cf) >> 3));
        v15 = cf;
        if (v37 != cf)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = &v15[6 * v16];
            v19 = *(v18 + 1);
            if (v19 != v18)
            {
              do
              {
                LODWORD(v31) = bswap32(*(v19 + 16));
                std::vector<int>::push_back[abi:ne200100](&__p, &v31);
                v19 = *(v19 + 8);
              }

              while (v19 != v18);
              v15 = cf;
            }

            LODWORD(v31) = bswap32(v15[6 * v16 + 4]);
            std::vector<int>::push_back[abi:ne200100](&v32.__begin_, &v31);
            v15 = cf;
            v16 = ++v17;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v37 - cf) >> 3) > v17);
        }

        applesauce::CF::make_DataRef(__p, v34 - __p, &v31);
        std::vector<applesauce::CF::DataRef>::push_back[abi:ne200100](v44, &v31);
        if (v31)
        {
          CFRelease(v31);
        }

        applesauce::CF::make_DataRef(v32.__begin_, v32.__end_ - v32.__begin_, &v31);
        std::vector<applesauce::CF::DataRef>::push_back[abi:ne200100](v43, &v31);
        if (v31)
        {
          CFRelease(v31);
        }

        if (v32.__begin_)
        {
          v32.__end_ = v32.__begin_;
          operator delete(v32.__begin_);
        }

        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        __p = &cf;
        std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v39.__begin_)
        {
          v39.__end_ = v39.__begin_;
          operator delete(v39.__begin_);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        v9 = *(*(this + 64) + v8);
      }

      v20 = bswap32(*(v9 + 136));
      v21 = ((((*(*v9 + 232) - *(*v9 + 224)) >> 2) / 3uLL) + 4) >> 1;
      LODWORD(v39.__begin_) = v20;
      std::vector<unsigned int>::vector[abi:ne200100](&v49, v21);
      std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v40, __dst, v49, v50, (v50 - v49) >> 2);
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }

      v3 = *(this + 64);
      v5 = ++v6;
    }

    while (v6 < ((*(this + 65) - v3) >> 4));
    v30 = (v47 - v46) >> 4;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],unsigned int>(&v49, "NumTriangulations", &v30);
    applesauce::CF::make_DataRef(v40, __dst - v40, &cf);
    applesauce::CF::TypeRef::TypeRef(v51, "TriAssignment");
    v22 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v51[1] = v22;
    v23 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DataRef>(v45);
    __p = v23;
    applesauce::CF::TypeRef::TypeRef(v52, "TriVertices");
    if (v23)
    {
      CFRetain(v23);
    }

    v52[1] = v23;
    v24 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DataRef>(v44);
    v32.__begin_ = v24;
    applesauce::CF::TypeRef::TypeRef(v53, "TriBinSerial");
    if (v24)
    {
      CFRetain(v24);
    }

    v53[1] = v24;
    v25 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DataRef>(v43);
    v31 = v25;
    applesauce::CF::TypeRef::TypeRef(v54, "TriBinLengths");
    if (v25)
    {
      CFRetain(v25);
    }

    v55[0] = v25;
    v39.__begin_ = &v49;
    v39.__end_ = 5;
    v26 = 0;
    *v29 = applesauce::CF::details::make_CFDictionaryRef(&v39);
    do
    {
      v27 = v55[v26];
      if (v27)
      {
        CFRelease(v27);
      }

      v28 = *&v54[v26 * 8];
      if (v28)
      {
        CFRelease(v28);
      }

      v26 -= 2;
    }

    while (v26 != -10);
    if (v25)
    {
      CFRelease(v25);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v40)
    {
      __dst = v40;
      operator delete(v40);
    }

    v49 = v43;
    std::vector<applesauce::CF::DataRef>::__destroy_vector::operator()[abi:ne200100](&v49);
    v49 = v44;
    std::vector<applesauce::CF::DataRef>::__destroy_vector::operator()[abi:ne200100](&v49);
    v49 = v45;
    std::vector<applesauce::CF::DataRef>::__destroy_vector::operator()[abi:ne200100](&v49);
    v49 = &v46;
    std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__destroy_vector::operator()[abi:ne200100](&v49);
  }
}

void **IR::IRData::Implementation::flattenVBAPTree(void **result, uint64_t *a2, int a3)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[1];
  if (((result[15] - result[14]) >> 2) - 1 == a3)
  {
    while (v4 != v5)
    {
      result = std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::push_back[abi:ne200100](v3 + 64, (v4 + 32));
      v4 += 120;
    }
  }

  else if (v4 != v5)
  {
    v7 = (v4 + 72);
    do
    {
      if (*v7 != v7[1])
      {
        result = IR::IRData::Implementation::flattenVBAPTree(v3, v7, (a3 + 1));
      }

      v8 = v7 + 6;
      v7 += 15;
    }

    while (v8 != v5);
  }

  return result;
}

void **std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::push_back[abi:ne200100](void **result, __int128 *a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::shared_ptr<IR::VBAPTriangulationKernel>>::allocate_at_least[abi:ne200100](result, v11);
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
    result = std::__split_buffer<std::shared_ptr<IR::VBAPTriangulationKernel>>::~__split_buffer(v18);
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

uint64_t IR::IRData::Implementation::normalizeTriangleCoeffs(uint64_t a1, float *a2, int a3, int a4)
{
  if (a3 == 3)
  {
    a3 = *(*(a1 + 208) + 4 * a4);
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v4 = a2[1];
      v5 = a2[2];
      v6 = fmaxf(fabsf(*a2), fmaxf(fabsf(v4), fabsf(v5)));
      if (v6 <= 1.8447e19)
      {
        v14 = 1.0;
        if (v6 >= 5.421e-20)
        {
          goto LABEL_22;
        }

        v7 = 1769996288;
      }

      else
      {
        v7 = 360710144;
      }

      v14 = *&v7;
LABEL_22:
      v15 = sqrtf((((v4 * v14) * (v4 * v14)) + ((*a2 * v14) * (*a2 * v14))) + ((v5 * v14) * (v5 * v14))) / v14;
      if (v15 > 0.0)
      {
        v16 = 0;
        v17 = 1.0 / v15;
        do
        {
          a2[v16] = v17 * a2[v16];
          ++v16;
        }

        while (v16 != 3);
      }

      return 0;
    }

    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + fabsf(a2[v10++]);
    }

    while (v10 != 3);
    if (v11 > 0.0)
    {
      v12 = 0;
      v13 = 1.0 / v11;
      do
      {
        a2[v12] = v13 * a2[v12];
        ++v12;
      }

      while (v12 != 3);
    }
  }

  else
  {
    v8 = *a2;
    v9 = a2 + 1;
    if (*a2 >= a2[1])
    {
      v9 = a2;
    }

    else
    {
      v8 = a2[1];
    }

    if (v8 < a2[2])
    {
      v9 = a2 + 2;
    }

    *a2 = 0;
    a2[2] = 0.0;
    *v9 = 1.0;
  }

  return 0;
}

uint64_t IR::IRData::Implementation::getTriangleIndicesAndCoordinates(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6, int a7, VBAP ***a8)
{
  *&v27[3] = *MEMORY[0x29EDCA608];
  result = 1852793972;
  if (*a8)
  {
    if (**a8)
    {
      v17 = IR::IRCoordinates::get(a2, 0);
      v18 = IR::IRCoordinates::get(a2, 1u);
      VBAP::convertSphericalDegreesToCartesian(v27, v17, v18, v19);
      v26 = 0;
      result = VBAP::triangleLookup(**a8, v27, &v26, a5);
      if (!result)
      {
        IR::IRData::Implementation::normalizeTriangleCoeffs(a1, a5, a3, a7);
        v20 = *(a5 + 8);
        *a6 = *a5;
        *(a6 + 8) = v20;
        if (a3 >= 2 && (a3 != 3 || *(*(a1 + 208) + 4 * a7) >= 2u))
        {
          v21 = 0;
          v22 = 0.0;
          do
          {
            v22 = v22 + fabsf(*(a6 + v21));
            v21 += 4;
          }

          while (v21 != 12);
          if (v22 > 0.0)
          {
            v23 = 0;
            v24 = 1.0 / v22;
            do
            {
              *(a6 + v23) = v24 * *(a6 + v23);
              v23 += 4;
            }

            while (v23 != 12);
          }
        }

        result = 0;
        v25 = ((*a8)[2] + 12 * v26);
        *a4 = *v25;
        a4[1] = v25[1];
        a4[2] = v25[2];
      }
    }
  }

  return result;
}

void *std::vector<applesauce::CF::DataRef>::push_back[abi:ne200100](void *result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

    v15 = result;
    if (v10)
    {
      std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 0;
    v12 = (8 * v7);
    *v12 = *a2;
    *a2 = 0;
    v13 = 8 * v7 + 8;
    v14 = 0;
    std::vector<applesauce::CF::DataRef>::__swap_out_circular_buffer(result, &v11);
    v6 = v3[1];
    result = std::__split_buffer<applesauce::CF::DataRef>::~__split_buffer(&v11);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    result[1] = v6;
  }

  v3[1] = v6;
  return result;
}

void sub_296BC4B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::DataRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::make_DataRef@<X0>(UInt8 *bytes@<X0>, CFIndex length@<X1>, CFDataRef *a3@<X8>)
{
  v4 = CFDataCreate(0, bytes, length);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  *a3 = v4;
  v5 = CFGetTypeID(v4);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v8, "Could not construct");
  }

  return result;
}

void sub_296BC4BE4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::loadTriangulationData(uint64_t a1, unsigned int a2, const __CFDictionary **a3, std::vector<unsigned int> *a4, void *a5, void *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  cf = @"NumTriangulations";
  v12 = applesauce::CF::details::has_key<__CFString const*>(v6, &cf);
  if (!v12)
  {
    IRDataLog = IR::getIRDataLog(v12);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(IRDataLog, v41, v42, v43, v44, v45, v46, v47);
    }

    return 0;
  }

  if (!*a3)
  {
    v197 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v197);
  }

  v214 = @"NumTriangulations";
  LODWORD(valuePtr) = 0;
  v219 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v219)
  {
    v198 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v198, "Could not construct");
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(*a3, &v214, &v219, &cf);
  if (!cf)
  {
    v199 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v199, "Could not construct");
  }

  v13 = applesauce::CF::convert_to<unsigned int,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v14 = v219;
  if (v219)
  {
    CFRelease(v219);
  }

  if (!v13)
  {
    v48 = IR::getIRDataLog(v14);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v48, v49, v50, v51, v52, v53, v54, v55);
    }

    return 0;
  }

  v210 = v13;
  std::vector<std::vector<int>>::resize(a5, v13);
  v15 = *a3;
  if (!*a3)
  {
    v200 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v200);
  }

  cf = @"TriVertices";
  v16 = applesauce::CF::details::has_key<__CFString const*>(v15, &cf);
  if (!v16)
  {
    v56 = IR::getIRDataLog(v16);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v56, v57, v58, v59, v60, v61, v62, v63);
    }

    return 0;
  }

  v17 = *a3;
  if (!*a3)
  {
    v201 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v201);
  }

  v214 = @"TriVertices";
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(v17, &v214, &cf);
  if (v218 != 1)
  {
    v64 = IR::getIRDataLog(v18);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v64, v65, v66, v67, v68, v69, v70, v71);
    }

    if (v218 == 1 && cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  v19 = cf;
  if (!cf)
  {
    v214 = 0;
    v202 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v202, "Could not construct");
  }

  CFRetain(cf);
  v214 = v19;
  Count = CFArrayGetCount(v19);
  v206 = a3;
  v207 = a4;
  v204 = a6;
  v205 = Count;
  if (Count == v210)
  {
    v21 = 0;
    v208 = v19;
    do
    {
      valuePtr = 0;
      applesauce::CF::at_or<applesauce::CF::DataRef>(v19, v21, &valuePtr, &v219);
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      if (!v219)
      {
        v194 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v194, "Could not construct");
      }

      Length = CFDataGetLength(v219);
      v23 = (*a5 + 24 * v21);
      v23->__end_ = v23->__begin_;
      std::vector<IR::IRDataType>::reserve(v23, Length >> 2);
      if (!v219)
      {
        v195 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v195, "Could not construct");
      }

      BytePtr = CFDataGetBytePtr(v219);
      if (Length >= 4)
      {
        v25 = BytePtr;
        if (Length >> 2 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = Length >> 2;
        }

        do
        {
          v27 = *a5 + 24 * v21;
          v28 = bswap32(*v25);
          v30 = *(v27 + 8);
          v29 = *(v27 + 16);
          if (v30 >= v29)
          {
            v32 = *v27;
            v33 = v30 - *v27;
            v34 = v33 >> 2;
            v35 = (v33 >> 2) + 1;
            if (v35 >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v36 = v29 - v32;
            if (v36 >> 1 > v35)
            {
              v35 = v36 >> 1;
            }

            v37 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
            v38 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v37)
            {
              v38 = v35;
            }

            if (v38)
            {
              std::allocator<float>::allocate_at_least[abi:ne200100](*a5 + 24 * v21, v38);
            }

            *(4 * v34) = v28;
            v31 = 4 * v34 + 4;
            memcpy(0, v32, v33);
            v39 = *v27;
            *v27 = 0;
            *(v27 + 8) = v31;
            *(v27 + 16) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v30 = v28;
            v31 = (v30 + 1);
          }

          *(v27 + 8) = v31;
          ++v25;
          --v26;
        }

        while (v26);
      }

      if (v219)
      {
        CFRelease(v219);
      }

      ++v21;
      v19 = v208;
    }

    while (v21 != v210);
  }

  else
  {
    v72 = IR::getIRDataLog(Count);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v72, v73, v74, v75, v76, v77, v78, v79);
    }
  }

  CFRelease(v19);
  v80 = a2;
  if (v218 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v205 != v210)
  {
    return 0;
  }

  v81 = *a3;
  if (!*a3)
  {
    v203 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v203);
  }

  cf = @"TriAssignment";
  v82 = applesauce::CF::details::has_key<__CFString const*>(v81, &cf);
  if (!v82)
  {
    v102 = IR::getIRDataLog(v82);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v102, v103, v104, v105, v106, v107, v108, v109);
    }

    return 0;
  }

  v83 = applesauce::CF::DictionaryRef::operator->(a3);
  v214 = @"TriAssignment";
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(*v83, &v214, &cf);
  if (v218 != 1)
  {
    v110 = IR::getIRDataLog(v84);
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v110, v111, v112, v113, v114, v115, v116, v117);
    }

    std::optional<applesauce::CF::DataRef>::~optional(&cf);
    return 0;
  }

  applesauce::CF::DataRef::DataRef(&v214, &cf);
  v219 = applesauce::CF::DataRef::operator->(&v214);
  byte_length = applesauce::CF::DataRef_proxy::get_byte_length(&v219);
  v86 = byte_length >> 2;
  v207->__end_ = v207->__begin_;
  if (byte_length >> 2 == a2)
  {
    std::vector<IR::IRDataType>::reserve(v207, a2);
    v219 = applesauce::CF::DataRef::operator->(&v214);
    raw_data = applesauce::CF::DataRef_proxy::get_raw_data(&v219);
    v88 = v207;
    if (byte_length >= 4)
    {
      v89 = raw_data;
      if (a2 <= 1)
      {
        v90 = 1;
      }

      else
      {
        v90 = a2;
      }

      end = v207->__end_;
      do
      {
        v92 = bswap32(*v89);
        value = v88->__end_cap_.__value_;
        if (end >= value)
        {
          begin = v88->__begin_;
          v95 = end - v88->__begin_;
          v96 = v95 >> 2;
          v97 = (v95 >> 2) + 1;
          if (v97 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v98 = value - begin;
          if (v98 >> 1 > v97)
          {
            v97 = v98 >> 1;
          }

          if (v98 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v99 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v99 = v97;
          }

          if (v99)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](v88, v99);
          }

          v100 = v88;
          *(4 * v96) = v92;
          end = (4 * v96 + 4);
          memcpy(0, begin, v95);
          v101 = v100->__begin_;
          v100->__begin_ = 0;
          v100->__end_ = end;
          v100->__end_cap_.__value_ = 0;
          if (v101)
          {
            operator delete(v101);
          }

          v80 = a2;
        }

        else
        {
          *end++ = v92;
        }

        v88 = v207;
        v207->__end_ = end;
        ++v89;
        --v90;
      }

      while (v90);
    }
  }

  else
  {
    v118 = IR::getIRDataLog(v207);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v118, v119, v120, v121, v122, v123, v124, v125);
    }
  }

  applesauce::CF::DataRef::~DataRef(&v214);
  std::optional<applesauce::CF::DataRef>::~optional(&cf);
  if (v86 != v80)
  {
    return 0;
  }

  v126 = applesauce::CF::DictionaryRef::operator->(v206);
  cf = @"TriBinLengths";
  v127 = applesauce::CF::details::has_key<__CFString const*>(*v126, &cf);
  if (!v127 || (v128 = applesauce::CF::DictionaryRef::operator->(v206), v214 = @"TriBinSerial", v127 = applesauce::CF::details::has_key<__CFString const*>(*v128, &v214), !v127))
  {
    v145 = IR::getIRDataLog(v127);
    if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v145, v146, v147, v148, v149, v150, v151, v152);
    }

    return 0;
  }

  v129 = applesauce::CF::DictionaryRef::operator->(v206);
  v214 = @"TriBinLengths";
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(*v129, &v214, &cf);
  v130 = applesauce::CF::DictionaryRef::operator->(v206);
  v219 = @"TriBinSerial";
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(*v130, &v219, &v214);
  if (v218 == 1 && v215 == 1)
  {
    applesauce::CF::ArrayRef::ArrayRef(&v219, &cf);
    applesauce::CF::ArrayRef::ArrayRef(&valuePtr, &v214);
    std::vector<std::vector<std::list<int>>>::resize(v204, v210);
    v213 = applesauce::CF::ArrayRef::operator->(&v219);
    size = applesauce::CF::ArrayRef_proxy::get_size(&v213);
    if (size == v210 && (v212 = applesauce::CF::ArrayRef::operator->(&valuePtr), size = applesauce::CF::ArrayRef_proxy::get_size(&v212), size == v210))
    {
      v133 = 0;
      while (1)
      {
        v134 = applesauce::CF::ArrayRef::operator->(&v219);
        v212 = 0;
        applesauce::CF::at_or<applesauce::CF::DataRef>(*v134, v133, &v212, &v213);
        applesauce::CF::DataRef::~DataRef(&v212);
        v135 = applesauce::CF::ArrayRef::operator->(&valuePtr);
        v211 = 0;
        applesauce::CF::at_or<applesauce::CF::DataRef>(*v135, v133, &v211, &v212);
        applesauce::CF::DataRef::~DataRef(&v211);
        v211 = applesauce::CF::DataRef::operator->(&v213);
        v136 = applesauce::CF::DataRef_proxy::get_byte_length(&v211);
        v137 = v136 >> 2;
        v211 = applesauce::CF::DataRef::operator->(&v212);
        v138 = applesauce::CF::DataRef_proxy::get_byte_length(&v211);
        v209 = v138 >> 2;
        if (v138 >> 2 < v136 >> 2)
        {
          break;
        }

        v139 = v138;
        std::vector<std::list<int>>::resize((*v204 + 24 * v133), v137);
        v211 = applesauce::CF::DataRef::operator->(&v213);
        v140 = applesauce::CF::DataRef_proxy::get_raw_data(&v211);
        v211 = applesauce::CF::DataRef::operator->(&v212);
        v141 = applesauce::CF::DataRef_proxy::get_raw_data(&v211);
        if (v136 >= 4 && v139 >= 4)
        {
          v142 = bswap32(*v140);
          v143 = std::__list_imp<int>::clear(*(*v204 + 24 * v133));
          if (v142 >= 1)
          {
            operator new();
          }

          v170 = IR::getIRDataLog(v143);
          if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
          {
            IR::IRData::Implementation::loadTriangulationData(v170, v171, v172, v173, v174, v175, v176, v177);
          }

          goto LABEL_118;
        }

        if (v137 || v209)
        {
          v186 = IR::getIRDataLog(v141);
          if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
          {
            IR::IRData::Implementation::loadTriangulationData(v186, v187, v188, v189, v190, v191, v192, v193);
          }

          goto LABEL_118;
        }

        applesauce::CF::DataRef::~DataRef(&v212);
        applesauce::CF::DataRef::~DataRef(&v213);
        ++v133;
        v144 = 1;
        if (v133 == v210)
        {
          goto LABEL_120;
        }
      }

      v178 = IR::getIRDataLog(v138);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::loadTriangulationData(v178, v179, v180, v181, v182, v183, v184, v185);
      }

LABEL_118:
      applesauce::CF::DataRef::~DataRef(&v212);
      applesauce::CF::DataRef::~DataRef(&v213);
    }

    else
    {
      v162 = IR::getIRDataLog(size);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::loadTriangulationData(v162, v163, v164, v165, v166, v167, v168, v169);
      }
    }

    v144 = 0;
LABEL_120:
    applesauce::CF::ArrayRef::~ArrayRef(&valuePtr);
    applesauce::CF::ArrayRef::~ArrayRef(&v219);
  }

  else
  {
    v154 = IR::getIRDataLog(v131);
    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::loadTriangulationData(v154, v155, v156, v157, v158, v159, v160, v161);
    }

    v144 = 0;
  }

  std::optional<applesauce::CF::ArrayRef>::~optional(&v214);
  std::optional<applesauce::CF::ArrayRef>::~optional(&cf);
  return v144;
}

void sub_296BC57EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va4, a9);
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v13 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  va_copy(va4, va3);
  v18 = va_arg(va4, const void *);
  applesauce::CF::DataRef::~DataRef(va);
  applesauce::CF::DataRef::~DataRef(va1);
  applesauce::CF::ArrayRef::~ArrayRef(va3);
  applesauce::CF::ArrayRef::~ArrayRef((v9 - 88));
  std::optional<applesauce::CF::ArrayRef>::~optional(va2);
  std::optional<applesauce::CF::ArrayRef>::~optional(va4);
  _Unwind_Resume(a1);
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

applesauce::CF::ArrayRef *applesauce::CF::ArrayRef::ArrayRef(applesauce::CF::ArrayRef *this, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *this = v3;
  return this;
}

void *applesauce::CF::ArrayRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

const __CFArray *applesauce::CF::ArrayRef_proxy::get_size(const __CFArray ***this)
{
  result = **this;
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void *applesauce::CF::DataRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

const __CFData *applesauce::CF::DataRef_proxy::get_byte_length(const __CFData ***this)
{
  result = **this;
  if (result)
  {
    return CFDataGetLength(result);
  }

  return result;
}

const __CFData *applesauce::CF::DataRef_proxy::get_raw_data(const __CFData ***this)
{
  result = **this;
  if (result)
  {
    return CFDataGetBytePtr(result);
  }

  return result;
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::DataRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void std::vector<std::vector<std::list<int>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::list<int>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void *std::vector<std::list<int>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::list<int>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      result = std::__list_imp<int>::clear(v3);
    }

    v2[1] = v7;
  }

  return result;
}

BOOL IR::IRData::Implementation::initVBAPTriangulation(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v5 = a1;
  v92 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 512);
  std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::clear[abi:ne200100]((a1 + 512));
  v8 = *(v5 + 272);
  if (*(v5 + 112) == *(v5 + 120))
  {
    if (*v8 == v8[1])
    {
      IRDataLog = IR::getIRDataLog(v7);
      if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::initVBAPTriangulation(IRDataLog, v66, v67, v68, v69, v70, v71, v72);
      }

      return 0;
    }

    v9 = std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::push_back[abi:ne200100](v6, (*v8 + 32));
  }

  else
  {
    v9 = IR::IRData::Implementation::flattenVBAPTree(v5, v8, 0);
  }

  v4 = v4;
  v10 = *(v5 + 512);
  if (v4 >= ((*(v5 + 520) - v10) >> 4))
  {
    return 0;
  }

  v76 = 0;
  v75 = v5;
  do
  {
    v11 = 16 * v4;
    v12 = *(v10 + 16 * v4);
    if (!v12)
    {
      v31 = IR::getIRDataLog(v9);
      v9 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        *buf = 136315394;
        *&buf[4] = "initVBAPTriangulation";
        *&buf[12] = 1024;
        *&buf[14] = v4;
        _os_log_error_impl(&dword_296B9D000, v31, OS_LOG_TYPE_ERROR, "IRData::%s: VBAPKernel[%d] is null", buf, 0x12u);
      }

      goto LABEL_84;
    }

    if (!v4)
    {
LABEL_21:
      v23 = *a2;
      v24 = a2[1];
      if (*a2 != v24)
      {
        v25 = *(v12 + 136);
        if ((v25 & 0x80000000) == 0 && 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) > v25)
        {
          v26 = (*(v23 + 24 * v25 + 8) - *(v23 + 24 * v25)) >> 2;
          v27 = *(v12 + 48) - *(v12 + 40);
          if ((v27 >> 1) - 4 == v26 / 3 && *(v12 + 140) == v27 >> 2)
          {
            v28 = IR::getIRDataLog(v9);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v64 = (*(*(*v6 + 2 * v4) + 48) - *(*(*v6 + 2 * v4) + 40)) >> 2;
              *buf = 136315394;
              *&buf[4] = "initVBAPTriangulation";
              *&buf[12] = 2048;
              *&buf[14] = v64;
              _os_log_debug_impl(&dword_296B9D000, v28, OS_LOG_TYPE_DEBUG, "IRData::%s: creating new VBAP instance with %lu vertices and precomputed triangulation", buf, 0x16u);
            }

            LODWORD(__p) = 0;
            std::allocate_shared[abi:ne200100]<VBAP,std::allocator<VBAP>,std::vector<float> &,std::vector<float> &,VBAP::Algorithm,std::vector<int> const&,std::vector<std::list<int>> const&,0>();
          }
        }
      }

      v29 = IR::getIRDataLog(v9);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = (*(*(*v6 + 2 * v4) + 48) - *(*(*v6 + 2 * v4) + 40)) >> 2;
        *buf = 136315394;
        *&buf[4] = "initVBAPTriangulation";
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_296B9D000, v29, OS_LOG_TYPE_DEFAULT, "IRData::%s: creating new VBAP instance with %lu vertices, no precomputed triangulation", buf, 0x16u);
      }

      LODWORD(__p) = 0;
      std::allocate_shared[abi:ne200100]<VBAP,std::allocator<VBAP>,std::vector<float> &,std::vector<float> &,VBAP::Algorithm,0>();
    }

    v13 = 0;
    while (1)
    {
      v14 = 16 * v13;
      v15 = *(v10 + 16 * v13);
      if (v15)
      {
        v16 = *v15;
        if (*v15)
        {
          v18 = v15[5];
          v17 = v15[6];
          v19 = *(v12 + 40);
          if (v17 - v18 == *(v12 + 48) - v19)
          {
            while (v18 != v17)
            {
              if (*v18 != *v19)
              {
                goto LABEL_20;
              }

              ++v18;
              ++v19;
            }

            v21 = v15[8];
            v20 = v15[9];
            v22 = *(v12 + 64);
            if (v20 - v21 == *(v12 + 72) - v22)
            {
              break;
            }
          }
        }
      }

LABEL_20:
      if (++v13 == v4)
      {
        goto LABEL_21;
      }
    }

    while (v21 != v20)
    {
      if (*v21 != *v22)
      {
        goto LABEL_20;
      }

      ++v21;
      ++v22;
    }

    v32 = v15[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(v12 + 8);
    *v12 = v16;
    *(v12 + 8) = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    v34 = *(*v6 + 2 * v4);
    *(v34 + 34) = *(*(*v6 + v14) + 136);
    v35 = *v34;
    __p = 0;
    v86 = 0;
    v87 = 0;
    v36 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v35 + 80), *(v35 + 88), (*(v35 + 88) - *(v35 + 80)) >> 2);
    v37 = (v86 - __p) >> 2;
    v38 = *(*v6 + 2 * v4);
    v39 = (v38[6] - v38[5]) >> 2;
    v79 = v37 / 3;
    v40 = ((*(*v38 + 232) - *(*v38 + 224)) >> 2) / 3uLL;
    v76 = 2 * (v37 / 3 + v39) - 4 == v40;
    if (2 * (v37 / 3 + v39) - 4 != v40)
    {
      v57 = IR::getIRDataLog(v36);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v63 = (*(*(*v6 + 2 * v4) + 48) - *(*(*v6 + 2 * v4) + 40)) >> 2;
        *buf = 136315394;
        *&buf[4] = "initVBAPTriangulation";
        *&buf[12] = 2048;
        *&buf[14] = v63;
        _os_log_error_impl(&dword_296B9D000, v57, OS_LOG_TYPE_ERROR, "IRData::%s: failed to initialize VBAP triangulation with %lu vertices", buf, 0x16u);
      }

      v59 = *(*v6 + 2 * v4);
      v59[3] = v59[2];
      v59[6] = v59[5];
      v59[9] = v59[8];
      std::vector<std::vector<float>>::clear[abi:ne200100](v59 + 14);
      v60 = *(*v6 + 2 * v4);
      v61 = *(v60 + 88);
      v62 = *(v60 + 96);
      while (v62 != v61)
      {
        v62 -= 24;
        *buf = v62;
        std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      *(v60 + 96) = v61;
      v5 = v75;
      *(v75 + 496) = 0;
      goto LABEL_82;
    }

    std::vector<float>::resize((v38 + 2), 3 * v40);
    v41 = memcpy(*(*(*v6 + 2 * v4) + 16), *(**(*v6 + 2 * v4) + 224), *(**(*v6 + 2 * v4) + 232) - *(**(*v6 + 2 * v4) + 224));
    if (v37 < 3)
    {
      goto LABEL_74;
    }

    v80 = 0;
    v77 = v40;
    v78 = v4;
    do
    {
      v42 = *(*(*v6 + v11) + 16);
      v83 = 0;
      v84 = 0;
      v82 = &v83;
      if (v40 < 1)
      {
LABEL_90:
        __assert_rtn("initVBAPTriangulation", "IRDataTriangulation.cpp", 402, "!realSpeakersConnected.empty()");
      }

      v43 = v80 + v39;
      v44 = (v42 + 8);
      do
      {
        v45 = v44 - 2;
        v46 = *(v44 - 2);
        v47 = *(v44 - 1);
        if (v46 == v43)
        {
          if (v47 < v39)
          {
            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v82, v44 - 1);
          }

          if (*v44 < v39)
          {
            v48 = (v42 + 8);
LABEL_59:
            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v82, v48);
          }
        }

        else if (v47 == v43)
        {
          if (v46 < v39)
          {
            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v82, v45);
          }

          v48 = v44;
          if (*v44 < v39)
          {
            goto LABEL_59;
          }
        }

        else if (*v44 == v43)
        {
          if (v46 < v39)
          {
            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v82, v45);
            v47 = *(v44 - 1);
          }

          if (v47 < v39)
          {
            v48 = (v42 + 4);
            goto LABEL_59;
          }
        }

        v42 += 12;
        v44 += 3;
        LODWORD(v40) = v40 - 1;
      }

      while (v40);
      if (!v84)
      {
        goto LABEL_90;
      }

      memset(__src, 0, sizeof(__src));
      v49 = *(*(*(*v6 + v11) + 88) + 8) - **(*(*v6 + v11) + 88);
      std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::reserve(__src, (v49 >> 3));
      if ((v49 & 0x7FFFFFFF8) != 0)
      {
        operator new();
      }

      v50 = (*(*(*(*v6 + v11) + 112) + 8) - **(*(*v6 + v11) + 112)) >> 2;
      LODWORD(v88) = 0;
      std::vector<float>::vector[abi:ne200100](buf, v50);
      v51 = v82;
      if (v82 != &v83)
      {
        do
        {
          v52 = v51[1];
          if (v52)
          {
            do
            {
              v53 = v52;
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            do
            {
              v53 = v51[2];
              v54 = *v53 == v51;
              v51 = v53;
            }

            while (!v54);
          }

          v51 = v53;
        }

        while (v53 != &v83);
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](*(*v6 + v11) + 112, buf);
      std::vector<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::push_back[abi:ne200100]((*(*v6 + v11) + 88), __src);
      LODWORD(v40) = v77;
      v4 = v78;
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      *buf = __src;
      std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
      std::__tree<int>::destroy(&v82, v83);
      ++v80;
    }

    while (v80 != v79);
LABEL_74:
    v55 = IR::getIRDataLog(v41);
    v5 = v75;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v56 = (*(*(*v6 + v11) + 48) - *(*(*v6 + v11) + 40)) >> 2;
      *buf = 136315650;
      *&buf[4] = "initVBAPTriangulation";
      *&buf[12] = 2048;
      *&buf[14] = v56;
      v90 = 1024;
      LODWORD(v91) = v79;
      _os_log_debug_impl(&dword_296B9D000, v55, OS_LOG_TYPE_DEBUG, "IRData::%s: initialized VBAP triangulation with %lu vertices and %d virtual speakers", buf, 0x1Cu);
    }

LABEL_82:
    v9 = __p;
    if (__p)
    {
      v86 = __p;
      operator delete(__p);
    }

LABEL_84:
    ++v4;
    v10 = *(v5 + 512);
  }

  while (v4 < (*(v5 + 520) - v10) >> 4);
  return v76;
}

void sub_296BC68A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<std::unique_ptr<IR::FFTFilterKernel<float>>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::unique_ptr<IR::FFTFilterKernel<float>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    IR::FFTFilterKernel<float>::~FFTFilterKernel();
  }

  return a1;
}

void **std::__split_buffer<std::shared_ptr<IR::VBAPTriangulationKernel>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<IR::VBAPTriangulationKernel>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<IR::VBAPTriangulationKernel>>::clear[abi:ne200100](uint64_t a1)
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

void std::vector<applesauce::CF::DataRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::DataRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DataRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<applesauce::CF::DataRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DataRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::list<int>>::__init_with_size[abi:ne200100]<std::list<int>*,std::list<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::list<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_296BC6C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::list<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::list<int>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::list<int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::list<int>>,std::list<int>*,std::list<int>*,std::list<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::list<int>::list(a4, v6);
      v6 += 24;
      a4 += 3;
      v7 -= 24;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_296BC6D74(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 24);
    do
    {
      std::__list_imp<int>::clear(v4);
      v4 -= 3;
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *std::list<int>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void sub_296BC6F38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<applesauce::CF::DataRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::DataRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::vector<int>>::allocate_at_least[abi:ne200100](a1, v9);
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
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::allocator<std::vector<int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

applesauce::CF::DataRef *applesauce::CF::DataRef::DataRef(applesauce::CF::DataRef *this, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *this = v3;
  return this;
}

void std::vector<std::vector<std::list<int>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::list<int>>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<std::list<int>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::list<int>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::list<int>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::list<int>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[3 * a2];
      do
      {
        *v4 = v4;
        v4[1] = v4;
        v4[2] = 0;
        v4 += 3;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v20 = result;
    if (v9)
    {
      std::allocator<std::list<int>>::allocate_at_least[abi:ne200100](result, v9);
    }

    v11 = 24 * v6;
    v17 = 0;
    v18 = 24 * v6;
    *(&v19 + 1) = 0;
    v12 = 24 * v6;
    do
    {
      *v12 = v12;
      *(v12 + 8) = v12;
      *(v12 + 16) = 0;
      v12 += 24;
    }

    while (v12 != 24 * v6 + 24 * a2);
    *&v19 = v11 + 24 * a2;
    v13 = *(result + 8);
    v14 = (v11 + *result - v13);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::list<int>>,std::list<int>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<std::list<int>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_296BC77B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::list<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::list<int>>,std::list<int>*>(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      result = std::construct_at[abi:ne200100]<std::list<int>,std::list<int>,std::list<int>*>(a4, v7);
      v7 += 3;
      a4 += 3;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<int>::clear(v6);
      v6 += 3;
    }
  }

  return result;
}

uint64_t *std::construct_at[abi:ne200100]<std::list<int>,std::list<int>,std::list<int>*>(uint64_t *result, void *a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  v2 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v3 = a2[1];
    v5 = *(*a2 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = *result;
    *(v7 + 8) = v3;
    *v3 = v7;
    *result = v4;
    *(v4 + 8) = result;
    result[2] = v2;
    a2[2] = 0;
  }

  return result;
}

uint64_t std::__split_buffer<std::list<int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__list_imp<int>::clear((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<IR::FFTFilterKernel<float>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<IR::FFTFilterKernel<float>>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::DataRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_296BC79A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],unsigned int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  return a1;
}

void sub_296BC7A54(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFNumberGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

void applesauce::CF::at_or<applesauce::CF::DataRef>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  applesauce::CF::details::at_as<applesauce::CF::DataRef>(a1, a2, &cf);
  if (v9 != 1)
  {
    *a4 = *a3;
    *a3 = 0;
    return;
  }

  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
    v7 = v9;
    *a4 = v6;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::details::at_as<applesauce::CF::DataRef>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(a1) <= a2)
  {
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDataGetTypeID())
  {
    CFRelease(v7);
LABEL_7:
    v9 = 0;
    *a3 = 0;
    goto LABEL_8;
  }

  *a3 = v7;
  v9 = 1;
LABEL_8:
  a3[8] = v9;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

void std::__shared_ptr_emplace<VBAP>::__shared_ptr_emplace[abi:ne200100]<std::vector<float> &,std::vector<float> &,VBAP::Algorithm,std::vector<int> const&,std::vector<std::list<int>> const&,std::allocator<VBAP>,0>(void *a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEC000;
  std::construct_at[abi:ne200100]<VBAP,std::vector<float> &,std::vector<float> &,VBAP::Algorithm,std::vector<int> const&,std::vector<std::list<int>> const&,VBAP*>((a1 + 3), a2, a3, a4);
}

void std::__shared_ptr_emplace<VBAP>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DEC000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

void std::construct_at[abi:ne200100]<VBAP,std::vector<float> &,std::vector<float> &,VBAP::Algorithm,std::vector<int> const&,std::vector<std::list<int>> const&,VBAP*>(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  memset(v8, 0, sizeof(v8));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v8, *a2, a2[1], (a2[1] - *a2) >> 2);
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  VBAP::VBAP(a1, v8, __p, *a4);
}

void sub_296BC7F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<VBAP>::__shared_ptr_emplace[abi:ne200100]<std::vector<float> &,std::vector<float> &,VBAP::Algorithm,std::allocator<VBAP>,0>(void *a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1DEC000;
  std::construct_at[abi:ne200100]<VBAP,std::vector<float> &,std::vector<float> &,VBAP::Algorithm,VBAP*>((a1 + 3), a2, a3, a4);
}

void std::construct_at[abi:ne200100]<VBAP,std::vector<float> &,std::vector<float> &,VBAP::Algorithm,VBAP*>(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  memset(v15, 0, sizeof(v15));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, *a2, a2[1], (a2[1] - *a2) >> 2);
  memset(v14, 0, sizeof(v14));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v14, *a3, a3[1], (a3[1] - *a3) >> 2);
  v7 = *a4;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  VBAP::VBAP(a1, v15, v14, v7);
}

void sub_296BC8178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  *(v18 - 40) = v17;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v20 = *(v18 - 64);
  if (v20)
  {
    *(v18 - 56) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

id AudioDSP::Core::getADCHeadTrackerLog(AudioDSP::Core *this)
{
  if (AudioDSP::Core::getADCHeadTrackerLog(void)::onceToken != -1)
  {
    AudioDSP::Core::getADCHeadTrackerLog();
  }

  v2 = AudioDSP::Core::getADCHeadTrackerLog(void)::gLog;

  return v2;
}

uint64_t ___ZN8AudioDSP4Core20getADCHeadTrackerLogEv_block_invoke()
{
  AudioDSP::Core::getADCHeadTrackerLog(void)::gLog = os_log_create("com.apple.coreaudio", "ADCHeadTracker");

  return MEMORY[0x2A1C71028]();
}

pthread_t AudioDSP::Core::HeadTracker::Implementation::Initialize(AudioDSP::Core::HeadTracker::Implementation *this)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 64);
  v2 = atomic_load(this + 49);
  if (v2)
  {
    if (!*(this + 5))
    {
      operator new();
    }
  }

  else
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 5, 0);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 64);
}

void sub_296BC86A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  v18 = v17;
  MEMORY[0x29C25FC20](v18, 0x20C40A4A59CD2);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v15 + 64);
  _Unwind_Resume(a1);
}

uint64_t AudioDSP::Core::HeadTracker::Implementation::ConnectRM(id *a1, unsigned int a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = getRMMediaSessionClass() && [getRMMediaSessionClass() isAvailable] && getRMMediaSessionOptionsClass() != 0;
  v5 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock((a1 + 8));
  *(a1 + 13) = 0;
  if (a2 && v4)
  {
    if (*(a1 + 14) == a2 && *(a1 + 50) == 1)
    {
      v6 = AudioDSP::Core::getADCHeadTrackerLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *a1;
        if (*(*a1 + 23) < 0)
        {
          v7 = *v7;
        }

        v24 = 136315394;
        v25 = v7;
        v26 = 2080;
        v27 = "ConnectRM";
        _os_log_impl(&dword_296B9D000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] RelativeMotion MediaSession is already connected.", &v24, 0x16u);
      }

LABEL_25:
      v8 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v9 = a1[5];
    if (v9)
    {
      caulk::concurrent::messenger::drain(v9);
    }

    v6 = objc_alloc_init(getRMMediaSessionOptionsClass());
    v10 = [v6 setPredictionIntervalMicroseconds:100000];
    if (a2 >= 6)
    {
      v17 = AudioDSP::Core::getADCHeadTrackerLog(v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *a1;
        if (*(*a1 + 23) < 0)
        {
          v18 = *v18;
        }

        v24 = 136315394;
        v25 = v18;
        v26 = 2080;
        v27 = "ConnectRM";
        _os_log_impl(&dword_296B9D000, v17, OS_LOG_TYPE_DEFAULT, "[%s|%s] Invalid head tracking mode.", &v24, 0x16u);
      }

      v8 = 103;
    }

    else
    {
      [v6 setClientMode:qword_296C19C30[a2 - 1]];
      v11 = [objc_alloc(getRMMediaSessionClass()) _initWithOptions:v6];
      v12 = a1[4];
      a1[4] = v11;

      if ([a1[4] _start])
      {
        [getRMMediaSessionClass() defaultFaceToDevicePitchAngle];
        *&v13 = v13;
        *(a1 + 13) = LODWORD(v13);
        *(a1 + 50) = 1;
        *(a1 + 14) = a2;
        *(a1 + 48) = 0;
        AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(a1, 1);
        v15 = AudioDSP::Core::getADCHeadTrackerLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *a1;
          if (*(*a1 + 23) < 0)
          {
            v16 = *v16;
          }

          v24 = 136315394;
          v25 = v16;
          v26 = 2080;
          v27 = "ConnectRM";
          _os_log_impl(&dword_296B9D000, v15, OS_LOG_TYPE_DEFAULT, "[%s|%s] RelativeMotion MediaSession has started.", &v24, 0x16u);
        }

        goto LABEL_25;
      }

      v20 = a1[4];
      a1[4] = 0;

      v17 = AudioDSP::Core::getADCHeadTrackerLog(v21);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a1;
        if (*(*a1 + 23) < 0)
        {
          v22 = *v22;
        }

        v24 = 136315394;
        v25 = v22;
        v26 = 2080;
        v27 = "ConnectRM";
        _os_log_impl(&dword_296B9D000, v17, OS_LOG_TYPE_DEFAULT, "[%s|%s] Could not initialize RelativeMotion MediaSession.", &v24, 0x16u);
      }

      v8 = 104;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    v8 = 4294900553;
    v6 = AudioDSP::Core::getADCHeadTrackerLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      AudioDSP::Core::HeadTracker::Implementation::ConnectRM();
    }

    goto LABEL_44;
  }

  if (!v4)
  {
    v6 = AudioDSP::Core::getADCHeadTrackerLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v19 = *v19;
      }

      v24 = 136315394;
      v25 = v19;
      v26 = 2080;
      v27 = "ConnectRM";
      _os_log_impl(&dword_296B9D000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] RelativeMotion is not available.", &v24, 0x16u);
    }

    v8 = 105;
    goto LABEL_44;
  }

  v8 = 0;
LABEL_45:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((a1 + 8));
  return v8;
}

id getRMMediaSessionClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRMMediaSessionClass(void)::softClass;
  v7 = getRMMediaSessionClass(void)::softClass;
  if (!getRMMediaSessionClass(void)::softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = ___ZL22getRMMediaSessionClassv_block_invoke;
    v3[3] = &unk_29EE51FD8;
    v3[4] = &v4;
    ___ZL22getRMMediaSessionClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_296BC8C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRMMediaSessionOptionsClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRMMediaSessionOptionsClass(void)::softClass;
  v7 = getRMMediaSessionOptionsClass(void)::softClass;
  if (!getRMMediaSessionOptionsClass(void)::softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = ___ZL29getRMMediaSessionOptionsClassv_block_invoke;
    v3[3] = &unk_29EE51FD8;
    v3[4] = &v4;
    ___ZL29getRMMediaSessionOptionsClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_296BC8CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(AudioDSP::Core::HeadTracker::Implementation *this, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(this + 49);
  if (v3)
  {
    v4 = *(this + 5);
    if (v4)
    {
      v6 = *this;
      if (*(*this + 23) < 0)
      {
        v6 = *v6;
      }

      if (!*MEMORY[0x29EDC8320])
      {
        __break(1u);
      }

      v7 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x29EDC8320]);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v8 = *(this + 14);
      *(v7 + 24) = a2;
      *(v7 + 28) = v8;
      *(v7 + 32) = v6;
      *v7 = &unk_2A1DECB98;

      MEMORY[0x2A1C6AB40](v4, v7);
    }

    else
    {
      v10 = AudioDSP::Core::getADCHeadTrackerLog(this);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *this;
        if (*(*this + 23) < 0)
        {
          v11 = *v11;
        }

        v12 = 136315394;
        v13 = v11;
        v14 = 2080;
        v15 = "SetBluetoothLowLatencyMode";
        _os_log_impl(&dword_296B9D000, v10, OS_LOG_TYPE_DEFAULT, "[%s|%s] Messenger was not initialized. Bluetooth latency mode could not be updated.", &v12, 0x16u);
      }
    }
  }

  else
  {
    v9 = AudioDSP::Core::getADCHeadTrackerLog(this);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode();
    }
  }
}

pthread_t AudioDSP::Core::HeadTracker::Implementation::DisconnectRM(AudioDSP::Core::HeadTracker::Implementation *this)
{
  v12 = *MEMORY[0x29EDCA608];
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 64);
  if (*(this + 50) == 1)
  {
    *(this + 50) = 0;
    *(this + 13) = 0;
    v2 = *(this + 5);
    if (v2)
    {
      caulk::concurrent::messenger::drain(v2);
    }

    [*(this + 4) _stop];
    v3 = *(this + 4);
    *(this + 4) = 0;

    AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(this, 0);
    v5 = AudioDSP::Core::getADCHeadTrackerLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *this;
      if (*(*this + 23) < 0)
      {
        v6 = *v6;
      }

      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = "DisconnectRM";
      _os_log_impl(&dword_296B9D000, v5, OS_LOG_TYPE_DEFAULT, "[%s|%s] RelativeMotion MediaSession has stopped.", &v8, 0x16u);
    }
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 64);
}

unint64_t AudioDSP::Core::HeadTracker::Implementation::GetCurrentHeadPose(AudioDSP::Core::HeadTracker::Implementation *this, float32x4_t *a2, BOOL *a3)
{
  *a2 = xmmword_296C19BF0;
  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 64))
  {
    if (*(this + 50) != 1)
    {
      v8 = 107;
LABEL_24:
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 64);
      return v8;
    }

    v6 = atomic_load(this + 12);
    if ((v6 & 1) == 0)
    {
      *a3 = 1;
      if ((*(this + 48) & 1) == 0)
      {
        *(this + 48) = 1;
        AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(this, 0);
      }

      v8 = 109;
      goto LABEL_24;
    }

    v16 = 0.0;
    v7 = [*(this + 4) _currentAudioListenerPose:v17 timestamp:&v16];
    if (v16 <= 0.0)
    {
      *a3 = 1;
      if ((*(this + 48) & 1) == 0)
      {
        *(this + 48) = 1;
        AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(this, 0);
      }

      v11 = *(this + 13);
      if (fabsf(v11) > 0.00000011921)
      {
        v12 = v11 * 3.14159265 / 180.0 * -0.5;
        v13 = __sincosf_stret(v12);
        v14.vector.i32[0] = 0;
        v14.vector.i32[2] = 0;
        v14.vector.i32[1] = LODWORD(v13.__sinval);
        v14.vector.i32[3] = LODWORD(v13.__cosval);
        *a2 = v14;
      }

      v8 = 106;
      goto LABEL_24;
    }

    v8 = v7;
    v9 = *(this + 48);
    if (v7 == 4)
    {
      if (v9)
      {
LABEL_23:
        v8 = 0;
        *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(v17[0]), v17[1]);
        *a3 = *(this + 48);
        goto LABEL_24;
      }

      v10 = 0;
    }

    else if (!*(this + 48) || (v10 = *(this + 48), v7))
    {
LABEL_21:
      if (v8 > 4 || ((1 << v8) & 0x15) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    *(this + 48) = v10 ^ 1;
    AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(this, v9);
    goto LABEL_21;
  }

  return 102;
}

pthread_t AudioDSP::Core::HeadTracker::Implementation::SetCanAccessHALAPIs(AudioDSP::Core::HeadTracker::Implementation *this, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 64);
  v5 = atomic_load(this + 49);
  if ((v5 & 1) != a2)
  {
    atomic_store(a2, this + 49);
    v6 = AudioDSP::Core::getADCHeadTrackerLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *this;
      if (*(*this + 23) < 0)
      {
        v7 = *v7;
      }

      v8 = "false";
      v10 = 136315650;
      v11 = v7;
      v12 = 2080;
      v13 = "SetCanAccessHALAPIs";
      if (a2)
      {
        v8 = "true";
      }

      v14 = 2080;
      v15 = v8;
      _os_log_impl(&dword_296B9D000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] CanAccessHALAPIs = %s", &v10, 0x20u);
    }

    AudioDSP::Core::HeadTracker::Implementation::Initialize(this);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 64);
}

AudioDSP::Core *AudioDSP::Core::HeadTracker::Implementation::GetUserChoice(AudioDSP::Core::HeadTracker::Implementation *this, AudioObjectID a2, unsigned int *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  outData = 0x100000000;
  v6 = [MEMORY[0x29EDB9F48] mainBundle];
  v7 = [v6 bundleIdentifier];

  inQualifierData = v7;
  *&inAddress.mSelector = 0x676C6F6273706366;
  inAddress.mElement = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(a2, &inAddress, 8u, &inQualifierData, &ioDataSize, &outData);
  v9 = AudioDSP::Core::getADCHeadTrackerLog(PropertyData);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *this;
    if (*(*this + 23) < 0)
    {
      v10 = *v10;
    }

    v11 = BYTE4(outData);
    v12 = [MEMORY[0x29EDB9F48] mainBundle];
    v13 = [v12 bundleIdentifier];
    v14 = v13;
    v15 = [v13 UTF8String];
    inAddress.mSelector = 136315906;
    *&inAddress.mScope = v10;
    v24 = 2080;
    v25 = "GetUserChoice";
    v26 = 1024;
    v27 = v11;
    v28 = 2080;
    v29 = v15;
    _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Accessibility option for head tracking = %u, client BundleID = %s", &inAddress, 0x26u);
  }

  if (PropertyData)
  {
    v17 = AudioDSP::Core::getADCHeadTrackerLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *this;
      if (*(*this + 23) < 0)
      {
        v18 = *v18;
      }

      inAddress.mSelector = 136315650;
      *&inAddress.mScope = v18;
      v24 = 2080;
      v25 = "GetUserChoice";
      v26 = 1024;
      v27 = PropertyData;
      _os_log_impl(&dword_296B9D000, v17, OS_LOG_TYPE_DEFAULT, "[%s|%s] Accessibility option for head tracking is unavailable. Error: %d", &inAddress, 0x1Cu);
    }
  }

  else
  {
    *a3 = BYTE4(outData);
  }

  return PropertyData;
}

void AudioDSP::Core::HeadTracker::HeadTracker(std::string *this, __int128 *a2, __int16 a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  if ((a3 & 0x100) == 0)
  {
    v6 = [MEMORY[0x29EDB9F48] mainBundle];
    v7 = [v6 bundleIdentifier];

    [v7 isEqualToString:@"com.apple.audiomxd"];
  }

  operator new();
}

void sub_296BC96DC(_Unwind_Exception *a1)
{
  std::unique_ptr<AudioDSP::Core::HeadTracker::Implementation>::reset[abi:ne200100](v2, 0);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void CASmartPreferences::Read(CASmartPreferences *this, const __CFString *a2, const __CFString *a3, BOOL *a4)
{
  v4[4] = *MEMORY[0x29EDCA608];
  v4[0] = &unk_2A1DEC0C8;
  v4[1] = a3;
  v4[3] = v4;
  CASmartPreferences::AddHandler<BOOL>(this, a2, CASmartPreferences::InterpretBoolean, v4);
}

void sub_296BC97FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AudioDSP::Core::HeadTracker::HeadTracker(std::string *a1, uint64_t a2, __int16 a3)
{
  caulk::make_string("%p", &__p, a2);
  AudioDSP::Core::HeadTracker::HeadTracker(a1, &__p, a3);
}

{
  caulk::make_string("%p", &__p, a2);
  AudioDSP::Core::HeadTracker::HeadTracker(a1, &__p, a3);
}

void sub_296BC987C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

void sub_296BC99A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSP::Core::HeadTracker::~HeadTracker(AudioDSP::Core::HeadTracker::Implementation **this)
{
  v2 = (this + 3);
  AudioDSP::Core::HeadTracker::Implementation::DisconnectRM(this[3]);
  AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener(this);
  std::unique_ptr<AudioDSP::Core::HeadTracker::Implementation>::reset[abi:ne200100](v2, 0);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener(AudioDSP::Core::HeadTracker *this)
{
  v1 = this;
  v27 = *MEMORY[0x29EDCA608];
  v2 = atomic_load((*(this + 3) + 49));
  if (v2)
  {
    atomic_store(1u, (*(this + 3) + 12));
    v3 = *(this + 3);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v3 + 16);
    v4 = *(*(v1 + 3) + 8);
    if (!v4)
    {
      v15 = AudioDSP::Core::getADCHeadTrackerLog(v4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener();
      }

      goto LABEL_22;
    }

    *&v18.mSelector = 0x676C6F6273706366;
    v18.mElement = 0;
    v5 = AudioObjectRemovePropertyListener(v4, &v18, AudioDSP::Core::HeadTracker::CallbackFunction, v1);
    v6 = v5;
    v7 = AudioDSP::Core::getADCHeadTrackerLog(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = v1;
        if (*(v1 + 23) < 0)
        {
          v9 = *v1;
        }

        v10 = *(*(v1 + 3) + 8);
        *buf = 136315906;
        v20 = v9;
        v21 = 2080;
        v22 = "UnregisterUserChoiceListener";
        v23 = 1024;
        v24 = v10;
        v25 = 1024;
        v26 = v6;
        v11 = "[%s|%s] Failed to unregister SpatialConfig listener. Device ID: %u. Error: %d";
        v12 = v7;
        v13 = 34;
LABEL_20:
        _os_log_impl(&dword_296B9D000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }

    else if (v8)
    {
      v16 = v1;
      if (*(v1 + 23) < 0)
      {
        v16 = *v1;
      }

      v17 = *(*(v1 + 3) + 8);
      *buf = 136315650;
      v20 = v16;
      v21 = 2080;
      v22 = "UnregisterUserChoiceListener";
      v23 = 1024;
      v24 = v17;
      v11 = "[%s|%s] SpatialConfig listener is unregistered for device ID: %u";
      v12 = v7;
      v13 = 28;
      goto LABEL_20;
    }

    *(*(v1 + 3) + 8) = 0;
LABEL_22:
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v3 + 16);
    return;
  }

  v14 = AudioDSP::Core::getADCHeadTrackerLog(this);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    *buf = 136315394;
    v20 = v1;
    v21 = 2080;
    v22 = "UnregisterUserChoiceListener";
    _os_log_impl(&dword_296B9D000, v14, OS_LOG_TYPE_DEFAULT, "[%s|%s] Host disallowed HAL API access. Control center listener is not available.", buf, 0x16u);
  }
}

pthread_t AudioDSP::Core::HeadTracker::Initialize(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    AudioDSP::Core::HeadTracker::Implementation::SetCanAccessHALAPIs(*(a1 + 24), a2 & 1);
  }

  v3 = *(a1 + 24);

  return AudioDSP::Core::HeadTracker::Implementation::Initialize(v3);
}

uint64_t AudioDSP::Core::HeadTracker::ConnectRM(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 13) == 1)
  {
    v3 = AudioDSP::Core::getADCHeadTrackerLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      AudioDSP::Core::HeadTracker::ConnectRM();
    }

LABEL_7:

    return 108;
  }

  if (*(v2 + 14) == 1)
  {
    v3 = AudioDSP::Core::getADCHeadTrackerLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      AudioDSP::Core::HeadTracker::ConnectRM();
    }

    goto LABEL_7;
  }

  return AudioDSP::Core::HeadTracker::Implementation::ConnectRM(v2, a2);
}

uint64_t AudioDSP::Core::HeadTracker::HasActiveRMConnection(AudioDSP::Core::HeadTracker *this)
{
  v1 = *(this + 3);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v1 + 64);
  v2 = *(v1 + 50);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 64);
  return v2;
}

float AudioDSP::Core::HeadTracker::GetAppliedFaceToDevicePitchAngleOffset(AudioDSP::Core::HeadTracker *this)
{
  v1 = *(this + 3);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v1 + 64);
  v2 = *(v1 + 52);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 64);
  return v2;
}

BOOL AudioDSP::Core::HeadTracker::HardwareSupportsHeadTracking(AudioDSP::Core::HeadTracker *this, unsigned int *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  DeviceOrPortID = AudioDSPCoreUtility::GetDeviceOrPortID(this, a2);
  v4 = DeviceOrPortID;
  if (DeviceOrPortID || (DeviceOrPortID = *this, !DeviceOrPortID))
  {
    v11 = AudioDSP::Core::getADCHeadTrackerLog(DeviceOrPortID);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      ioDataSize.mSelector = 136315394;
      *&ioDataSize.mScope = "HardwareSupportsHeadTracking";
      v30 = 1024;
      v31 = v4;
      _os_log_impl(&dword_296B9D000, v11, OS_LOG_TYPE_DEFAULT, "%s: Could not extract device ID. Error %d", &ioDataSize, 0x12u);
    }

    goto LABEL_15;
  }

  *&inAddress.mSelector = 0x676C6F6262747366;
  inAddress.mElement = 0;
  HasProperty = AudioObjectHasProperty(DeviceOrPortID, &inAddress);
  if (!HasProperty)
  {
    v12 = AudioDSP::Core::getADCHeadTrackerLog(HasProperty);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *this;
      ioDataSize.mSelector = 136315394;
      *&ioDataSize.mScope = "HardwareSupportsHeadTracking";
      v30 = 1024;
      v31 = v13;
      _os_log_impl(&dword_296B9D000, v12, OS_LOG_TYPE_DEFAULT, "%s: Head-tracking is not supported, feature dictionary not available. Device ID: %d", &ioDataSize, 0x12u);
    }

    goto LABEL_15;
  }

  outData = 0;
  v6 = *this;
  ioDataSize.mSelector = 8;
  PropertyData = AudioObjectGetPropertyData(v6, &inAddress, 0, 0, &ioDataSize.mSelector, &outData);
  v8 = PropertyData;
  if (PropertyData)
  {
    v9 = AudioDSP::Core::getADCHeadTrackerLog(PropertyData);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *this;
      ioDataSize.mSelector = 136315650;
      *&ioDataSize.mScope = "HardwareSupportsHeadTracking";
      v30 = 1024;
      v31 = v8;
      v32 = 1024;
      v33 = v10;
      _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "%s: Head-tracking is not supported, Error %d, Device ID: %d", &ioDataSize, 0x18u);
    }

    if (outData)
    {
      CFRelease(outData);
    }

LABEL_15:
    v14 = 0;
LABEL_16:
    *this = 0;
    return v14;
  }

  cf = outData;
  if (!outData)
  {
    goto LABEL_36;
  }

  v16 = CFGetTypeID(outData);
  if (v16 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!cf)
  {
LABEL_36:
    v24 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v24, "Could not construct");
  }

  v17 = applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[52]>(cf, "kBluetoothAudioDeviceFeatureHeadTrackedSpatialAudio");
  if (v17 & 0x100) != 0 && (v17)
  {
    CFRelease(cf);
    LODWORD(cf) = 0;
    v18 = *this;
    *&ioDataSize.mSelector = 0x676C6F6273706873;
    ioDataSize.mElement = 0;
    LODWORD(outData) = 4;
    v19 = AudioObjectGetPropertyData(v18, &ioDataSize, 0, 0, &outData, &cf);
    if (v19)
    {
      v20 = AudioDSP::Core::getADCHeadTrackerLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        ioDataSize.mSelector = 136315138;
        *&ioDataSize.mScope = "HardwareSupportsHeadTracking";
        _os_log_impl(&dword_296B9D000, v20, OS_LOG_TYPE_DEFAULT, "%s: Error getting HAL property.", &ioDataSize, 0xCu);
      }
    }

    v14 = cf != 0;
    if (!cf)
    {
      v21 = AudioDSP::Core::getADCHeadTrackerLog(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        ioDataSize.mSelector = 136315138;
        *&ioDataSize.mScope = "HardwareSupportsHeadTracking";
        _os_log_impl(&dword_296B9D000, v21, OS_LOG_TYPE_DEFAULT, "%s: Head-tracking is disabled by the user.", &ioDataSize, 0xCu);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v22 = AudioDSP::Core::getADCHeadTrackerLog(v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *this;
      ioDataSize.mSelector = 136315394;
      *&ioDataSize.mScope = "HardwareSupportsHeadTracking";
      v30 = 1024;
      v31 = v23;
      _os_log_impl(&dword_296B9D000, v22, OS_LOG_TYPE_DEFAULT, "%s: Head-tracking is not supported, HeadTrackedSpatialAudio = false. Device ID: %d", &ioDataSize, 0x12u);
    }

    *this = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  return v14;
}

void sub_296BCA2EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSP::Core::HeadTracker::RegisterUserChoiceListener(AudioDSP::Core::HeadTracker *this, unsigned int *a2)
{
  v2 = this;
  v34 = *MEMORY[0x29EDCA608];
  v3 = atomic_load((*(this + 3) + 49));
  if (v3)
  {
    inObjectID = 0;
    v4 = AudioDSP::Core::HeadTracker::HardwareSupportsHeadTracking(&inObjectID, a2);
    v5 = *(v2 + 3);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v5 + 16);
    v6 = inObjectID;
    if (inObjectID)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = *(*(v2 + 3) + 8);
      if (inObjectID == v8)
      {
        v9 = AudioDSP::Core::getADCHeadTrackerLog(inObjectID);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v2;
          if (*(v2 + 23) < 0)
          {
            v10 = *v2;
          }

          *buf = 136315650;
          v27 = v10;
          v28 = 2080;
          v29 = "RegisterUserChoiceListener";
          v30 = 1024;
          v31 = inObjectID;
          _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] SpatialConfig listener is already registered for device ID: %u", buf, 0x1Cu);
        }
      }

      else
      {
        if (v8)
        {
          AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener(v2);
          v6 = inObjectID;
        }

        *&inAddress.mSelector = 0x676C6F6273706366;
        inAddress.mElement = 0;
        v13 = AudioObjectAddPropertyListener(v6, &inAddress, AudioDSP::Core::HeadTracker::CallbackFunction, v2);
        v14 = v13;
        v15 = AudioDSP::Core::getADCHeadTrackerLog(v13);
        v16 = v15;
        if (v14)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v22 = v2;
            if (*(v2 + 23) < 0)
            {
              v22 = *v2;
            }

            *buf = 136315906;
            v27 = v22;
            v28 = 2080;
            v29 = "RegisterUserChoiceListener";
            v30 = 1024;
            v31 = inObjectID;
            v32 = 1024;
            v33 = v14;
            _os_log_error_impl(&dword_296B9D000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to register SpatialConfig listener for device ID: %u. Error: %d", buf, 0x22u);
          }
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v2;
            if (*(v2 + 23) < 0)
            {
              v17 = *v2;
            }

            *buf = 136315650;
            v27 = v17;
            v28 = 2080;
            v29 = "RegisterUserChoiceListener";
            v30 = 1024;
            v31 = inObjectID;
            _os_log_impl(&dword_296B9D000, v16, OS_LOG_TYPE_DEFAULT, "[%s|%s] SpatialConfig listener is registered for device ID: %u.", buf, 0x1Cu);
          }

          v23 = 0;
          UserChoice = AudioDSP::Core::HeadTracker::Implementation::GetUserChoice(*(v2 + 3), inObjectID, &v23);
          if (!UserChoice)
          {
            v19 = AudioDSP::Core::getADCHeadTrackerLog(UserChoice);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v2;
              if (*(v2 + 23) < 0)
              {
                v20 = *v2;
              }

              v21 = v23;
              *buf = 136315650;
              v27 = v20;
              v28 = 2080;
              v29 = "RegisterUserChoiceListener";
              v30 = 1024;
              v31 = v23;
              _os_log_impl(&dword_296B9D000, v19, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting mIsEnabled = %u.", buf, 0x1Cu);
            }

            else
            {
              v21 = v23;
            }

            atomic_store(v21 != 0, (*(v2 + 3) + 12));
          }
        }
      }
    }

    else
    {
      v12 = AudioDSP::Core::getADCHeadTrackerLog(inObjectID);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        AudioDSP::Core::HeadTracker::RegisterUserChoiceListener();
      }

      if (*(*(v2 + 3) + 8))
      {
        AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener(v2);
      }
    }

    *(*(v2 + 3) + 8) = inObjectID;
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v5 + 16);
  }

  else
  {
    v11 = AudioDSP::Core::getADCHeadTrackerLog(this);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315394;
      v27 = v2;
      v28 = 2080;
      v29 = "RegisterUserChoiceListener";
      _os_log_impl(&dword_296B9D000, v11, OS_LOG_TYPE_DEFAULT, "[%s|%s] Host disallowed HAL API access. Control center listener is not available.", buf, 0x16u);
    }
  }
}

AudioDSP::Core *AudioDSP::Core::HeadTracker::CallbackFunction(AudioDSP::Core::HeadTracker *this, unsigned int a2, unsigned int a3, const AudioObjectPropertyAddress *a4, void *a5)
{
  v5 = a4;
  v19 = *MEMORY[0x29EDCA608];
  v12 = 0;
  UserChoice = AudioDSP::Core::HeadTracker::Implementation::GetUserChoice(*&a4[2].mSelector, this, &v12);
  v7 = UserChoice;
  if (!UserChoice)
  {
    v8 = v12;
    atomic_store(v12 != 0, (*&v5[2].mSelector + 12));
    v9 = AudioDSP::Core::getADCHeadTrackerLog(UserChoice);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (SHIBYTE(v5[1].mElement) < 0)
      {
        v5 = *&v5->mSelector;
      }

      v10 = "enabled";
      *buf = 136315650;
      v14 = v5;
      v15 = 2080;
      v16 = "CallbackFunction";
      if (!v8)
      {
        v10 = "disabled";
      }

      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] User has %s head-tracking.", buf, 0x20u);
    }
  }

  return v7;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
}

uint64_t std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x29C25F720]();

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

void ___ZL22getRMMediaSessionClassv_block_invoke(uint64_t a1)
{
  RelativeMotionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RMMediaSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRMMediaSessionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL22getRMMediaSessionClassv_block_invoke_cold_1();
    RelativeMotionLibrary();
  }
}

void RelativeMotionLibrary(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v1[0] = 0;
  if (!RelativeMotionLibraryCore(char **)::frameworkLibrary)
  {
    v1[1] = MEMORY[0x29EDCA5F8];
    v1[2] = 3221225472;
    v1[3] = ___ZL25RelativeMotionLibraryCorePPc_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_29EE51FF8;
    v3 = 0;
    RelativeMotionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!RelativeMotionLibraryCore(char **)::frameworkLibrary)
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

uint64_t ___ZL25RelativeMotionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  RelativeMotionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL29getRMMediaSessionOptionsClassv_block_invoke(uint64_t a1)
{
  RelativeMotionLibrary();
  result = objc_getClass("RMMediaSessionOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRMMediaSessionOptionsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL29getRMMediaSessionOptionsClassv_block_invoke_cold_1();
    return AudioDSP::Core::HeadTracker::Implementation::Implementation(v3, v4, v5);
  }

  return result;
}

uint64_t AudioDSP::Core::HeadTracker::Implementation::Implementation(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 14) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 28));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 49) = a3;
  *(a1 + 50) = 0;
  *(a1 + 52) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 76));
  return a1;
}

void sub_296BCABC4(_Unwind_Exception *a1)
{
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v1 + 40), 0);

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AudioDSP::Core::HeadTracker::Implementation>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v2 + 40), 0);

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

void CASmartPreferences::AddHandler<BOOL>(CASmartPreferences *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = *MEMORY[0x29EDCA608];
  CASmartPreferences::instance(a1);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_296BCAD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v6 + 8);
  _Unwind_Resume(a1);
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

void *std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2A1DEC110;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2A1DEC110;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x29C25FC20);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2A1DEC110;
  a2[1] = v2;
  return std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__invoke_void_return_wrapper<BOOL,false>::__call[abi:ne200100]<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1} &,void const*>(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    std::function<void ()(BOOL)>::operator()((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<CASmartPreferences::Read(__CFString const*,__CFString const*,BOOL &)::{lambda(BOOL)#1},std::allocator<CASmartPreferences::Read(__CFString const*,__CFString const*,BOOL &)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1DEC0C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

pthread_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(uint64_t a1)
{
  result = pthread_self();
  v3 = result;
  if (atomic_load_explicit(a1, memory_order_acquire) == result)
  {
    v4 = *(a1 + 8) + 1;
  }

  else
  {
    result = caulk::pooled_semaphore_mutex::_lock((a1 + 12));
    atomic_store(v3, a1);
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return result;
}

pthread_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(uint64_t a1)
{
  result = pthread_self();
  if (atomic_load_explicit(a1, memory_order_acquire) == result && (v3 = *(a1 + 8), v3 > 0))
  {
    v4 = v3 - 1;
    *(a1 + 8) = v4;
    if (!v4)
    {
      atomic_store(0, a1);

      return caulk::pooled_semaphore_mutex::_unlock((a1 + 12));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(unsigned int)::$_0,unsigned int &,HeadTrackingMode &,char const*>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x29C25FC20);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(unsigned int)::$_0,unsigned int &,HeadTrackingMode &,char const*>::perform(caulk::concurrent::message *a1, unsigned int *a2)
{
  v3 = a1;
  caulk::concurrent::details::message_call<AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode::$_0,unsigned int &,HeadTrackingMode &,char const*>::perform(a1, a2);
  return caulk::concurrent::details::rt_message_call<AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode::$_0,unsigned int &,HeadTrackingMode &,char const*>::rt_cleanup::~rt_cleanup(&v3);
}

void sub_296BCB3CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode::$_0,unsigned int &,HeadTrackingMode &,char const*>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::message_call<AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(unsigned int)::$_0,unsigned int &,HeadTrackingMode &,char const*>::perform(uint64_t a1, unsigned int *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 24);
  v2 = *(a1 + 28);
  v4 = *(a1 + 32);
  inObjectID = 0;
  DeviceOrPortID = AudioDSPCoreUtility::GetDeviceOrPortID(&inObjectID, a2);
  if (DeviceOrPortID || (DeviceOrPortID = inObjectID, !inObjectID))
  {
    v8 = AudioDSP::Core::getADCHeadTrackerLog(DeviceOrPortID);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = v4;
      v25 = 2080;
      v26 = "operator()";
      v9 = "[%s|%s] Could not update bluetooth low latency mode. Unknown port ID.";
      v10 = v8;
      v11 = 22;
LABEL_32:
      _os_log_impl(&dword_296B9D000, v10, OS_LOG_TYPE_DEFAULT, v9, &inAddress, v11);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  outData = 0;
  *&inAddress.mSelector = 0x676C6F627370656ELL;
  inAddress.mElement = 0;
  ioDataSize = 4;
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v7 = PropertyData;
    v8 = AudioDSP::Core::getADCHeadTrackerLog(PropertyData);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      inAddress.mSelector = 136315650;
      *&inAddress.mScope = v4;
      v25 = 2080;
      v26 = "operator()";
      v27 = 1024;
      LODWORD(v28) = v7;
      v9 = "[%s|%s] Could not get current bluetooth low latency mode. Error %d";
LABEL_31:
      v10 = v8;
      v11 = 28;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v3)
  {
    if (v2 == 1)
    {
      v12 = 1;
    }

    else
    {
      if (v2 == 4 || v2 == 2)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v12 = outData | v14;
    }
  }

  else
  {
    if (v2 == 1)
    {
      outData = 0;
      goto LABEL_28;
    }

    if (v2 == 4 || v2 == 2)
    {
      v16 = -2;
    }

    else
    {
      v16 = -3;
    }

    v12 = outData & v16;
  }

  outData = v12;
LABEL_28:
  *&inAddress.mSelector = 0x676C6F627370656ELL;
  inAddress.mElement = 0;
  v17 = AudioObjectSetPropertyData(inObjectID, &inAddress, 0, 0, 4u, &outData);
  v18 = v17;
  v8 = AudioDSP::Core::getADCHeadTrackerLog(v17);
  v19 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = "enabled";
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = v4;
    v25 = 2080;
    v26 = "operator()";
    if (!v3)
    {
      v20 = "disabled";
    }

    v27 = 2080;
    v28 = v20;
    v9 = "[%s|%s] Bluetooth low latency mode %s";
    v10 = v8;
    v11 = 32;
    goto LABEL_32;
  }

  if (v19)
  {
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = v4;
    v25 = 2080;
    v26 = "operator()";
    v27 = 1024;
    LODWORD(v28) = v18;
    v9 = "[%s|%s] Setting bluetooth low latency mode failed with error %d";
    goto LABEL_31;
  }

LABEL_33:
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode(unsigned int)::$_0,unsigned int &,HeadTrackingMode &,char const*>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x29EDC8320];
  if (*MEMORY[0x29EDC8320])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(uint64_t a1)
{
  v2 = pthread_self();
  if (atomic_load_explicit(a1, memory_order_acquire) == v2)
  {
    ++*(a1 + 8);
    return 1;
  }

  else
  {
    result = caulk::pooled_semaphore_mutex::try_lock((a1 + 12));
    if (result)
    {
      atomic_store(v2, a1);
      result = 1;
      *(a1 + 8) = 1;
    }
  }

  return result;
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[52]>(const __CFDictionary *a1, const UInt8 *a2)
{
  v2 = applesauce::CF::details::at_key<char const(&)[52]>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[52]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BCB86C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BCB818);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

double IR::DataResampler<float>::DataResampler(uint64_t a1, int a2, float a3, float a4)
{
  *a1 = &unk_2A1DECBC0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = 0;
  v4 = a3;
  result = 0.1;
  if (v4 < 0.1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid input sample rate, must be > 0.1)");
    goto LABEL_8;
  }

  if (a4 < 0.1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid output sample rate, must be > 0.1)");
    goto LABEL_8;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid input length, must be > 0)");
LABEL_8:
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
  }

  return result;
}

void sub_296BCBA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  std::optional<CA::AudioSampleRateConverter>::~optional(a10);
  _Unwind_Resume(a1);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95F0] + 16);
  return result;
}

uint64_t std::optional<CA::AudioSampleRateConverter>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

uint64_t IR::DataResampler<float>::~DataResampler(uint64_t a1)
{
  *a1 = &unk_2A1DECBC0;
  if (*(a1 + 32) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

void IR::DataResampler<float>::~DataResampler(uint64_t a1)
{
  IR::DataResampler<float>::~DataResampler(a1);

  JUMPOUT(0x29C25FC20);
}

uint64_t IR::DataResampler<float>::Initialize(uint64_t a1, const __CFDictionary **a2)
{
  v3 = 64;
  if (*a2)
  {
    v4 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(*a2, &IR::kIRDataResamplerConfigQualityKey);
    if ((v4 & 0x100000000) != 0)
    {
      v3 = v4;
    }

    else
    {
      v3 = 64;
    }
  }

  return IR::DataResampler<float>::Initialize(a1, v3);
}

uint64_t IR::DataResampler<float>::Initialize(uint64_t a1, unsigned int a2)
{
  v29 = *MEMORY[0x29EDCA608];
  *(a1 + 20) = 0;
  if (a2 < 0x80)
  {
    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(v20, 1);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v20, *MEMORY[0x29EDBFAD0], *(a1 + 12));
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v20, *MEMORY[0x29EDBFAE0], *(a1 + 16));
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v20, *MEMORY[0x29EDBFAD8], 1);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v20, *MEMORY[0x29EDBFAE8], a2);
    CA::AudioSampleRateConverterBuilder::Build(&v18);
    if (v19 == 1)
    {
      v7 = caulk::expected<CA::AudioSampleRateConverter,int>::value(&v18);
      v8 = v7;
      if (*(a1 + 32) == 1)
      {
        v9 = *(a1 + 24);
        *(a1 + 24) = *v7;
        *v7 = v9;
      }

      else
      {
        v12 = *v7;
        *v8 = 0;
        *(a1 + 24) = v12;
        *(a1 + 32) = 1;
      }

      *buf = 0;
      ExpectedNumberOfOutputFrames = AudioSampleRateConverterGetExpectedNumberOfOutputFrames();
      if (*buf)
      {
        v10 = 0;
        *(a1 + 20) = 1;
        v4 = ExpectedNumberOfOutputFrames;
      }

      else
      {
        if (IR::getDataResamplerLog(void)::onceToken != -1)
        {
          IR::DataResampler<float>::Initialize();
        }

        v14 = IR::getDataResamplerLog(void)::gLog;
        if (os_log_type_enabled(IR::getDataResamplerLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          IR::DataResampler<float>::Initialize(v14);
        }

        v4 = 0;
        v10 = 101;
      }
    }

    else
    {
      v10 = v18;
      if (IR::getDataResamplerLog(void)::onceToken != -1)
      {
        IR::DataResampler<float>::Initialize();
      }

      v11 = IR::getDataResamplerLog(void)::gLog;
      if (os_log_type_enabled(IR::getDataResamplerLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 12);
        v17 = *(a1 + 16);
        *buf = 136315906;
        v22 = "Initialize";
        v23 = 1024;
        v24 = v10;
        v25 = 2048;
        v26 = v16;
        v27 = 2048;
        v28 = v17;
        _os_log_error_impl(&dword_296B9D000, v11, OS_LOG_TYPE_ERROR, "IRDataResampler::%s: SRC builder returned error: %d. Native IR SampleRate: %.2f, target SampleRate: %.2f", buf, 0x26u);
      }

      v4 = 0;
    }

    if (v19 == 1)
    {
      AudioSampleRateConverterDispose();
    }

    CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(v20);
    v5 = v10 << 32;
  }

  else
  {
    if (IR::getDataResamplerLog(void)::onceToken != -1)
    {
      IR::DataResampler<float>::Initialize();
    }

    v3 = IR::getDataResamplerLog(void)::gLog;
    if (os_log_type_enabled(IR::getDataResamplerLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::DataResampler<float>::Initialize(a2, v3);
    }

    v4 = 0;
    v5 = 0x6600000000;
  }

  return v5 | v4;
}

void sub_296BCBED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::AudioSampleRateConverterBuilder::Build@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  result = AudioSampleRateConverterCreate();
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0;
  }

  else
  {
    CA::AudioSampleRateConverter::AudioSampleRateConverter(&v5, v6);
    v4 = v5;
    v5 = 0;
    *a1 = v4;
    *(a1 + 8) = 1;
    return AudioSampleRateConverterDispose();
  }

  return result;
}

uint64_t caulk::expected<CA::AudioSampleRateConverter,int>::value(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2A1DECC30;
    exception[2] = v3;
  }

  return result;
}

uint64_t IR::DataResampler<float>::GetRequiredNumberOfInputFrames(uint64_t a1)
{
  LODWORD(result) = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
  v3 = *(a1 + 8);
  if (v3 >= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

os_log_t ___ZN2IR19getDataResamplerLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "DataResampler");
  IR::getDataResamplerLog(void)::gLog = result;
  return result;
}

uint64_t IR::DataResampler<float>::Process(uint64_t a1, float *a2, unsigned int a3, float *a4, vDSP_Length a5)
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (!*(a1 + 20))
  {
    return 103;
  }

  v9 = (a1 + 24);
  AudioSampleRateConverterReset();
  RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
  if (RequiredNumberOfInputFrames <= a3)
  {
    v13 = a4;
    v14[0] = a2;
    v11 = CA::AudioSampleRateConverter::Process(v9, v14, 1, RequiredNumberOfInputFrames, &v13);
    if (v11)
    {
      vDSP_vclr(a4, 1, a5);
    }
  }

  else
  {
    vDSP_vclr(a4, 1, a5);
    return 4294956422;
  }

  return v11;
}

void sub_296BCC15C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(uint64_t a1, int a2)
{
  *a1 = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    _os_assert_log();
    v5 = _os_crash();
    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(v5);
  }

  *(a1 + 8) = Mutable;
  return a1;
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<double>(uint64_t a1, const void *a2, double a3)
{
  v4 = *(a1 + 8);
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  CFDictionarySetValue(v4, a2, v5);
  CFRelease(v5);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(uint64_t a1, const void *a2, int a3)
{
  v4 = *(a1 + 8);
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  CFDictionarySetValue(v4, a2, v5);
  CFRelease(v5);
}

void *CA::AudioSampleRateConverter::AudioSampleRateConverter(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    _os_assert_log();
    v2 = _os_crash();
    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(v2);
  }

  return result;
}

void caulk::bad_expected_access<int>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x29C25FC20);
}

uint64_t caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  return a1;
}

void CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(CA::AudioSampleRateConverterBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t AudioDSPCoreUtility::GetDeviceOrPortID(AudioDSPCoreUtility *this, unsigned int *a2)
{
  v15 = @"VirtualAudioDevice_Default";
  v14 = 0;
  outData[0] = &v15;
  outData[1] = 8;
  outData[2] = &v14;
  outData[3] = 4;
  *&inAddress.mSelector = 0x676C6F6264756964;
  inAddress.mElement = 0;
  ioDataSize[0] = 32;
  PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, ioDataSize, outData);
  if (PropertyData || (*ioDataSize = 0, *&inAddress.mSelector = 0x6F75747064616370, inAddress.mElement = 0, LODWORD(cf) = 8, PropertyData = AudioObjectGetPropertyData(v14, &inAddress, 0, 0, &cf, ioDataSize), PropertyData))
  {
    v4 = PropertyData;
    *this = 0;
  }

  else
  {
    *&inAddress.mSelector = *ioDataSize;
    if (!*ioDataSize)
    {
      goto LABEL_17;
    }

    v6 = CFGetTypeID(*ioDataSize);
    if (v6 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    if (!*&inAddress.mSelector)
    {
LABEL_17:
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v8, "Could not construct");
    }

    if (CFArrayGetCount(*&inAddress.mSelector) == 1)
    {
      v7 = *&inAddress.mSelector;
      if (*&inAddress.mSelector)
      {
        CFArrayGetCount(*&inAddress.mSelector);
      }

      applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v7, 0, &cf);
      *this = applesauce::CF::convert_to<unsigned int,0>(cf);
      if (cf)
      {
        CFRelease(cf);
      }

      v4 = 0;
    }

    else
    {
      *this = 0;
      v4 = 0xFFFFFFFFLL;
    }

    if (*&inAddress.mSelector)
    {
      CFRelease(*&inAddress.mSelector);
    }
  }

  return v4;
}

void sub_296BCC680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11)
{
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::ArrayRef::~ArrayRef(&a11);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a3 = v7;
  return result;
}

void SincKernelFactorySingleton::SincKernelFactorySingleton(SincKernelFactorySingleton *this)
{
  *this = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 8));
  operator new();
}

void sub_296BCC860(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29C25FC20](v3, 0x80C40D6874129);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    std::default_delete<SincKernelFactory>::operator()[abi:ne200100](v1, v5);
  }

  _Unwind_Resume(a1);
}

void *SincKernelFactorySingleton::instance(SincKernelFactorySingleton *this)
{
  {
    SincKernelFactorySingleton::SincKernelFactorySingleton(&SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton);
  }

  return &SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton;
}

uint64_t SincKernelFactorySingleton::ReferenceSincKernel(SincKernelFactory **this, int a2, int a3, double a4, double a5)
{
  caulk::pooled_semaphore_mutex::_lock((this + 1));
  v10 = SincKernelFactory::ReferenceSincKernel(*this, a2, a3, a4, a5);
  caulk::pooled_semaphore_mutex::_unlock((this + 1));
  return v10;
}

uint64_t SincKernelFactorySingleton::ReleaseSincKernel(void **a1, uint64_t a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 1));
  SincKernelFactory::ReleaseSincKernel(*a1, a2);

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 1));
}

uint64_t IR::DelayLine<float>::DelayLine(uint64_t a1, int a2, int a3, std::vector<unsigned int>::size_type __n, unsigned int a5, int a6)
{
  v6 = a1;
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = __n;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  v7 = (a1 + 16);
  *(a1 + 48) = 0u;
  v8 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065347625;
  *(a1 + 136) = 0u;
  v9 = (a1 + 136);
  *(a1 + 184) = 0u;
  v10 = (a1 + 184);
  *(a1 + 232) = 0u;
  v11 = (a1 + 232);
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  if (!__n)
  {
    __assert_rtn("DelayLine", "DelayLine.cpp", 250, "inNumTaps > 0");
  }

  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        goto LABEL_9;
      case 2:
        goto LABEL_13;
      case 3:
LABEL_9:
        *&__u = 2.0;
        std::vector<float>::assign((a1 + 48), __n, &__u, 0);
        v14 = *(v6 + 8);
        *&__u = 2.0;
        std::vector<float>::assign((v6 + 72), v14, &__u, v15);
        v17 = 0;
        v18 = a2 + 4;
        goto LABEL_20;
    }

LABEL_12:
    *&__u = 0.0;
    std::vector<float>::assign((a1 + 48), __n, &__u, 0);
    v19 = *(v6 + 8);
    *&__u = 0.0;
    std::vector<float>::assign((v6 + 72), v19, &__u, v20);
    v17 = 0;
    v18 = a2 + 1;
    goto LABEL_20;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      goto LABEL_15;
    }

LABEL_13:
    *&__u = 3.0;
    std::vector<float>::assign((a1 + 48), __n, &__u, 0);
    v21 = *(v6 + 8);
    *&__u = 3.0;
    std::vector<float>::assign((v6 + 72), v21, &__u, v22);
    v17 = 0;
    v18 = a2 + 6;
    goto LABEL_20;
  }

  if (a3 == 6)
  {
    *&__u = 0.0;
    std::vector<IR::IRInterpolationMethod>::assign((a1 + 304), __n, &__u);
    std::vector<float>::resize(v10, a5);
    std::vector<float>::resize((v6 + 208), a5);
    std::vector<float>::resize(v11, a5);
    std::vector<float>::resize((v6 + 256), a5);
    v24 = *(v6 + 208);
    v25 = (*(v6 + 216) - v24) >> 2;
    *&__u = 0.0;
    __B = 1.0 / a5;
    vDSP_vramp(&__u, &__B, v24, 1, v25);
    v26 = *(v6 + 208);
    begin = v10->__begin_;
    __B = 1.0;
    *&__u = -1.0;
    a1 = MEMORY[0x29C260510](v26, 1, &__u, &__B, begin, 1, a5);
  }

  else if (a3 != 7)
  {
    goto LABEL_12;
  }

LABEL_15:
  SincKernelFactorySingleton::instance(a1);
  v28 = SincKernelFactorySingleton::ReferenceSincKernel(&SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton, 11, 128, 80.0, 0.9);
  *(v6 + 112) = v28;
  v30 = *(v28 + 16);
  *(v6 + 120) = v30;
  v31 = v30 - 1;
  if ((v30 ^ (v30 - 1)) <= v30 - 1)
  {
    __assert_rtn("DelayLine", "DelayLine.cpp", 293, "isPowerOfTwo(mFractionalPhases)");
  }

  v32 = __clz(v30) ^ 0x1F;
  if (v30 >= 2)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  *(v6 + 124) = v31;
  *(v6 + 128) = v33;
  v34 = *(v28 + 12);
  *(v6 + 132) = v34;
  *(v6 + 104) = *v28;
  v35 = *(v6 + 8);
  *v29.i32 = v34;
  *&__u = v34;
  std::vector<float>::assign(v8, v35, &__u, v29);
  v36 = *(v6 + 8);
  *v37.i32 = *(v6 + 132);
  __u = v37.u32[0];
  std::vector<float>::assign((v6 + 280), v36, &__u, v37);
  v38 = *(v6 + 8);
  __u = ((*(v6 + 132) * 1024.0) + 0.5);
  std::vector<IR::IRInterpolationMethod>::assign(v9, v38, &__u);
  v39 = *(v6 + 132);
  *&__u = 0.0;
  std::vector<float>::assign((v6 + 160), v39, &__u, v40);
  v41 = *(v6 + 8);
  *v42.i32 = *(v6 + 132);
  __u = v42.u32[0];
  std::vector<float>::assign((v6 + 72), v41, &__u, v42);
  v18 = a6 + a2 + v34;
  v17 = v34 - 1;
LABEL_20:
  v43 = 1 << -__clz(v18 - 1);
  *&__u = 0.0;
  std::vector<float>::resize(v7, v43 + v17, &__u, v16);
  *(v6 + 40) = v43 - 1;
  IR::DelayLine<float>::reset(v6);
  return v6;
}

void sub_296BCCDF8(_Unwind_Exception *exception_object)
{
  v8 = v1[38];
  if (v8)
  {
    v1[39] = v8;
    operator delete(v8);
  }

  v9 = v1[35];
  if (v9)
  {
    v1[36] = v9;
    operator delete(v9);
  }

  v10 = v1[32];
  if (v10)
  {
    v1[33] = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    v1[30] = v11;
    operator delete(v11);
  }

  v12 = v1[26];
  if (v12)
  {
    v1[27] = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    v1[24] = v13;
    operator delete(v13);
  }

  v14 = v1[20];
  if (v14)
  {
    v1[21] = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    v1[18] = v15;
    operator delete(v15);
  }

  v16 = v1[9];
  if (v16)
  {
    v1[10] = v16;
    operator delete(v16);
  }

  v17 = *v3;
  if (*v3)
  {
    v1[7] = v17;
    operator delete(v17);
  }

  v18 = *v2;
  if (*v2)
  {
    v1[3] = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void IR::DelayLine<float>::reset(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2 == 5 || v2 == 7)
  {
LABEL_12:
    v10 = *(a1 + 16);
    v11 = *(a1 + 24) - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    *(a1 + 44) = *(a1 + 132) - 1;
    goto LABEL_15;
  }

  if (v2 == 6)
  {
    v4 = *(a1 + 256);
    v5 = *(a1 + 264) - v4;
    if (v5 >= 1)
    {
      bzero(v4, v5);
    }

    v6 = *(a1 + 232);
    v7 = *(a1 + 240) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v8 = *(a1 + 304);
    v9 = *(a1 + 312) - v8;
    if (v9 >= 1)
    {
      bzero(v8, v9);
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24) - v12;
  if (v13 >= 1)
  {
    bzero(v12, v13);
  }

LABEL_15:
  *(a1 + 12) = 1;
}

uint64_t IR::DelayLine<float>::~DelayLine(uint64_t a1)
{
  if ((*(a1 + 4) - 5) <= 2)
  {
    SincKernelFactorySingleton::instance(a1);
    SincKernelFactorySingleton::ReleaseSincKernel(&SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton, *(a1 + 112));
  }

  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 280);
  if (v3)
  {
    *(a1 + 288) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 256);
  if (v4)
  {
    *(a1 + 264) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    *(a1 + 240) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 208);
  if (v6)
  {
    *(a1 + 216) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    *(a1 + 192) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    *(a1 + 168) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    *(a1 + 144) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    *(a1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    *(a1 + 24) = v12;
    operator delete(v12);
  }

  return a1;
}

uint64_t IR::DelayLine<float>::getLatencyFrames(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_296C19D0C[a1 - 1];
  }
}

uint64_t IR::DelayLine<float>::setDelay(uint64_t result, unsigned int a2, float a3)
{
  if (*(result + 8) <= a2)
  {
    IR::DelayLine<float>::setDelay();
  }

  if (*result < a3)
  {
    a3 = *result;
  }

  v3 = *(result + 4);
  if (v3 <= 7)
  {
    v4 = 1 << v3;
    if ((v4 & 0xE0) != 0)
    {
      a3 = a3 + *(result + 132);
    }

    else
    {
      v5 = a3 + 2.0;
      if ((v4 & 0x14) != 0)
      {
        a3 = a3 + 3.0;
      }

      if ((v4 & 0xA) != 0)
      {
        a3 = v5;
      }
    }
  }

  *(*(result + 48) + 4 * a2) = a3;
  return result;
}

void IR::DelayLine<float>::process(float *a1, _DWORD *a2, uint64_t a3, vDSP_Length a4)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a3;
  IR::DelayLine<float>::process(a1, a2, v4, 1u, a4);
}

void IR::DelayLine<float>::process(float *a1, _DWORD *__src, uint64_t a3, unsigned int a4, vDSP_Length a5)
{
  v5 = a1;
  v186 = *MEMORY[0x29EDCA608];
  v6 = a1[24];
  if (a5)
  {
    v7 = __src;
    if (!__src)
    {
      IR::DelayLine<float>::process();
    }

    v8 = a5;
    v10 = *(a1 + 2);
    if (v10 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v10;
    }

    v12 = (*(a1 + 3) - *(a1 + 2)) >> 2;
    if (*(a1 + 12) == 1)
    {
      a1 = IR::DelayLine<float>::swapDelays(a1);
      *(v5 + 12) = 0;
    }

    v13 = *(v5 + 4);
    if (v13 <= 3)
    {
      switch(v13)
      {
        case 1:
          v61 = 0;
          v62 = *(v5 + 16);
          v63 = *(v5 + 40);
          v64 = *(v5 + 44);
          do
          {
            *(v62 + 4 * v64) = v7[v61];
            if (v11)
            {
              v65 = 0;
              v66 = *(v5 + 72);
              do
              {
                if (v6 == 2.7183)
                {
                  v67 = *(v66 + 4 * v65) + ((*(*(v5 + 48) + 4 * v65) - *(v66 + 4 * v65)) / (v8 - v61));
                }

                else
                {
                  v68 = *(*(v5 + 48) + 4 * v65);
                  v67 = v68 + (*(v5 + 96) * (*(v66 + 4 * v65) - v68));
                }

                *(v66 + 4 * v65) = v67;
                v69 = v64 - v67;
                if (v69 < 0.0)
                {
                  v69 = v69 + v12;
                }

                v70 = *(v62 + 4 * (v63 & v69));
                v71 = *(v62 + 4 * ((v69 + 1) & v63));
                v72 = *(v62 + 4 * ((v69 + 2) & v63));
                v73 = *(v62 + 4 * ((v69 - 1) & v63));
                v74 = v73 + v70 * -2.5 + (v71 + v71) + v72 * -0.5;
                v75 = (v70 - v71) * 1.5 + (v72 - v73) * 0.5;
                *(*(a3 + 8 * v65++) + 4 * v61) = v70 + ((((v71 - v73) * 0.5) + ((v74 + (v75 * (v69 - v69))) * (v69 - v69))) * (v69 - v69));
              }

              while (v11 != v65);
            }

            v64 = v63 & (v64 + 1);
            ++v61;
          }

          while (v61 != v8);
          goto LABEL_105;
        case 2:
          v107 = 0;
          v108 = *(v5 + 16);
          v109 = *(v5 + 40);
          v64 = *(v5 + 44);
          do
          {
            *(v108 + 4 * v64) = v7[v107];
            if (v11)
            {
              v110 = 0;
              v111 = *(v5 + 72);
              do
              {
                if (v6 == 2.7183)
                {
                  v112 = *(v111 + 4 * v110) + ((*(*(v5 + 48) + 4 * v110) - *(v111 + 4 * v110)) / (v8 - v107));
                }

                else
                {
                  v113 = *(*(v5 + 48) + 4 * v110);
                  v112 = v113 + (*(v5 + 96) * (*(v111 + 4 * v110) - v113));
                }

                *(v111 + 4 * v110) = v112;
                v114 = v64 - v112;
                if (v114 < 0.0)
                {
                  v114 = v114 + v12;
                }

                v115 = *(v108 + 4 * (v109 & v114));
                v116 = *(v108 + 4 * ((v114 + 1) & v109));
                v117 = *(v108 + 4 * ((v114 + 2) & v109));
                v118 = *(v108 + 4 * ((v114 + 3) & v109));
                v119 = *(v108 + 4 * ((v114 - 1) & v109));
                v120 = *(v108 + 4 * ((v114 - 2) & v109));
                v121 = (v115 * -2.3333) + v119 * 1.25 + (v116 * 1.6667) + v117 * -0.5 + (v118 * 0.083333) + (v120 * -0.16667);
                *(*(a3 + 8 * v110++) + 4 * v107) = v115 + (((((v116 - v119) * 0.66667) + ((v120 - v117) * 0.083333)) + ((v121 + (((((v117 - v119) * 0.58333) + ((v120 - v118) * 0.083333)) + ((v115 - v116) * 1.3333)) * (v114 - v114))) * (v114 - v114))) * (v114 - v114));
              }

              while (v11 != v110);
            }

            v64 = v109 & (v64 + 1);
            ++v107;
          }

          while (v107 != v8);
          goto LABEL_105;
        case 3:
          v14 = 0;
          v15 = *(v5 + 16);
          v16 = *(v5 + 40);
          v17 = *(v5 + 44);
          do
          {
            *(v15 + 4 * v17) = v7[v14];
            if (v11)
            {
              v18 = 0;
              v19 = *(v5 + 72);
              do
              {
                if (v6 == 2.7183)
                {
                  v20 = *(v19 + 4 * v18) + ((*(*(v5 + 48) + 4 * v18) - *(v19 + 4 * v18)) / (v8 - v14));
                }

                else
                {
                  v21 = *(*(v5 + 48) + 4 * v18);
                  v20 = v21 + (*(v5 + 96) * (*(v19 + 4 * v18) - v21));
                }

                *(v19 + 4 * v18) = v20;
                v22 = v17 - v20;
                if (v22 < 0.0)
                {
                  v22 = v22 + v12;
                }

                v23 = *(v15 + 4 * (v16 & v22));
                v24 = *(v15 + 4 * ((v22 + 1) & v16));
                v25 = *(v15 + 4 * ((v22 - 1) & v16));
                v26 = (v24 + (v25 * -0.33333)) + v23 * -0.5 - (v24 * 0.16667);
                v27 = -(v23 - (v24 + v25) * 0.5);
                v28 = ((v24 - v25) * 0.16667) + (v23 - v24) * 0.5;
                *(*(a3 + 8 * v18++) + 4 * v14) = v23 + ((v26 + ((v27 + (v28 * (v22 - v22))) * (v22 - v22))) * (v22 - v22));
              }

              while (v11 != v18);
            }

            v17 = v16 & (v17 + 1);
            ++v14;
          }

          while (v14 != v8);
          goto LABEL_79;
      }

LABEL_69:
      v76 = 0;
      v77 = *(v5 + 16);
      v78 = *(v5 + 40);
      v17 = *(v5 + 44);
      do
      {
        *(v77 + 4 * v17) = v7[v76];
        if (v11)
        {
          v79 = 0;
          v80 = *(v5 + 72);
          do
          {
            if (v6 == 2.7183)
            {
              v81 = *(v80 + 4 * v79) + ((*(*(v5 + 48) + 4 * v79) - *(v80 + 4 * v79)) / (v8 - v76));
            }

            else
            {
              v82 = *(*(v5 + 48) + 4 * v79);
              v81 = v82 + (*(v5 + 96) * (*(v80 + 4 * v79) - v82));
            }

            *(v80 + 4 * v79) = v81;
            v83 = v17 - v81;
            if (v83 < 0.0)
            {
              v83 = v83 + v12;
            }

            v84 = *(v77 + 4 * (v78 & v83));
            *(*(a3 + 8 * v79++) + 4 * v76) = v84 + ((v83 - v83) * (*(v77 + 4 * ((v83 + 1) & v78)) - v84));
          }

          while (v11 != v79);
        }

        v17 = v78 & (v17 + 1);
        ++v76;
      }

      while (v76 != v8);
LABEL_79:
      *(v5 + 44) = v17;
      return;
    }

    v184 = a3;
    if (v13 <= 5)
    {
      if (v13 != 4)
      {
        goto LABEL_32;
      }

      v85 = 0;
      v86 = *(v5 + 16);
      v87 = *(v5 + 40);
      v64 = *(v5 + 44);
      do
      {
        *(v86 + 4 * v64) = v7[v85];
        if (v11)
        {
          v88 = 0;
          v89 = *(v5 + 72);
          do
          {
            if (v6 == 2.7183)
            {
              v90 = *(v89 + 4 * v88) + ((*(*(v5 + 48) + 4 * v88) - *(v89 + 4 * v88)) / (v8 - v85));
            }

            else
            {
              v91 = *(*(v5 + 48) + 4 * v88);
              v90 = v91 + (*(v5 + 96) * (*(v89 + 4 * v88) - v91));
            }

            *(v89 + 4 * v88) = v90;
            v92 = v64 - v90;
            if (v92 < 0.0)
            {
              v92 = v92 + v12;
            }

            v93 = *(v86 + 4 * (v87 & v92));
            v94 = *(v86 + 4 * ((v92 + 1) & v87));
            v95 = *(v86 + 4 * ((v92 + 2) & v87));
            v96 = *(v86 + 4 * ((v92 + 3) & v87));
            v97 = *(v86 + 4 * ((v92 - 1) & v87));
            v98 = *(v86 + 4 * ((v92 - 2) & v87));
            v99 = v92 - v92;
            v100 = v97 * -0.5 + v98 * 0.05 + (v93 * -0.33333) + v94 + v95 * -0.25 + (v96 * 0.033333);
            v101 = ((v95 + v98) * 0.041667);
            v102 = ((v94 + v97) * 0.66667) + v93 * -1.25 - v101;
            v103 = ((v94 + v97) * -0.16667) + v93 * 0.25 + v101;
            *(*(a3 + 8 * v88++) + 4 * v85) = v93 + ((v100 + ((v102 + ((((((v94 * -0.58333) + (v93 * 0.41667)) + (v95 * 0.29167)) + ((v96 + (v97 + v98)) * -0.041667)) + ((v103 + (((((v97 - v95) * 0.041667) + ((v96 - v98) * 0.0083333)) + ((v94 - v93) * 0.083333)) * v99)) * v99)) * v99)) * v99)) * v99);
          }

          while (v11 != v88);
        }

        v64 = v87 & (v64 + 1);
        ++v85;
      }

      while (v85 != v8);
LABEL_105:
      *(v5 + 44) = v64;
      return;
    }

    if (v13 != 6)
    {
      if (v13 == 7)
      {
LABEL_32:
        v29 = *(v5 + 132);
        if (v29)
        {
          v30 = v29 - 1;
        }

        else
        {
          v30 = 0;
        }

        v179 = *(v5 + 44);
        MEMORY[0x2A1C7C4A8](a1);
        v183 = v177 - v31;
        if (v11)
        {
          v32 = *(v5 + 48);
          v33 = v11;
          v34 = v183;
          do
          {
            v35 = *v32++;
            v36 = v35 * 1024.0;
            if ((v35 * 1024.0) < 0.0)
            {
              v37 = -1.0;
            }

            else
            {
              v37 = 1.0;
            }

            *v34++ = (v36 + (v37 * 0.5));
            --v33;
          }

          while (v33);
        }

        v178 = v12 - v30;
        v38 = v8 - v12;
        v180 = v8;
        v177[1] = v177;
        if (v8 <= v12)
        {
          v106 = *(v5 + 44);
          if (v106 + v8 >= v12)
          {
            v145 = v12;
            v146 = v12 - v106;
            v147 = 4 * v146;
            v148 = *(v5 + 16);
            if (v106 != v145)
            {
              memmove((v148 + 4 * v106), v7, 4 * v146);
              v148 = *(v5 + 16);
            }

            v149 = 4 * v8;
            if (v149 != v147)
            {
              memmove((v148 + 4 * v30), &v7[v146], v149 - v147);
            }

            *(v5 + 44) += v38 + v30;
            if (v178 < v8)
            {
              IR::DelayLine<float>::process();
            }
          }

          else
          {
            memmove((*(v5 + 16) + 4 * v106), v7, 4 * v8);
            *(v5 + 44) += v8;
          }

          v150 = v184;
          if (v29 >= 2)
          {
            memmove(*(v5 + 16), (*(v5 + 24) - 4 * v30), 4 * v30);
          }

          if (v11)
          {
            v151 = 0;
            v152 = *(v5 + 72);
            do
            {
              v153 = *(*(v5 + 48) + 4 * v151);
              v154 = *&v183[4 * v151];
              v155 = *(v150 + 8 * v151);
              v156 = *(v152 + 4 * v151);
              v157 = -1.0;
              if ((v156 * 1024.0) >= 0.0)
              {
                v157 = 1.0;
              }

              if ((((v156 * 1024.0) + (v157 * 0.5)) - v154) >= 0)
              {
                v158 = ((v156 * 1024.0) + (v157 * 0.5)) - v154;
              }

              else
              {
                v158 = v154 - ((v156 * 1024.0) + (v157 * 0.5));
              }

              v159 = *(v5 + 4);
              if (v159 == 7)
              {
                v160 = 8;
              }

              else
              {
                v160 = 1;
              }

              v161 = powf(*(v5 + 96), v160);
              v162 = v158 > 0x20;
              if (v158 >= 0x21 && v160 <= v8)
              {
                v166 = v161;
                v167 = *(v5 + 136);
                v182 = v151;
                v168 = *(v167 + 4 * v151);
                if (v159 == 7)
                {
                  v169 = 3;
                }

                else
                {
                  v169 = 0;
                }

                LODWORD(v181) = v169;
                v165 = v179;
                do
                {
                  if (v6 == 2.7183)
                  {
                    if (!(v8 >> v181))
                    {
                      IR::DelayLine<float>::process();
                    }

                    v170 = *(v5 + 136);
                    LODWORD(v171) = (v154 - *(v170 + 4 * v182)) / (v8 >> v181) + *(v170 + 4 * v182);
                    *(v170 + 4 * v182) = v171;
                  }

                  else
                  {
                    v156 = v153 + (v166 * (v156 - v153));
                    v172 = -1.0;
                    if ((v156 * 1024.0) >= 0.0)
                    {
                      v172 = 1.0;
                    }

                    v171 = ((v156 * 1024.0) + (v172 * 0.5));
                    v168 = v171;
                  }

                  IR::DelayLine<float>::processPolyphaseQ22_10(v5, v165, v171, v155, v160);
                  if (v168 - v154 >= 0)
                  {
                    v173 = v168 - v154;
                  }

                  else
                  {
                    v173 = v154 - v168;
                  }

                  v165 = *(v5 + 40) & (v165 + v160);
                  v164 = (v8 - v160);
                  v162 = v173 > 0x20;
                  v155 += v160;
                  v174 = v173 < 0x21 || v8 - v160 < v160;
                  LODWORD(v8) = v8 - v160;
                }

                while (!v174);
                v8 = v180;
                v151 = v182;
              }

              else
              {
                v164 = v8;
                v165 = v179;
              }

              v150 = v184;
              if (v164 >= 1)
              {
                if (v6 == 2.7183)
                {
                  LODWORD(v175) = *(*(v5 + 136) + 4 * v151);
                }

                else
                {
                  if (!v162)
                  {
                    v156 = v153;
                  }

                  v176 = -1.0;
                  if ((v156 * 1024.0) >= 0.0)
                  {
                    v176 = 1.0;
                  }

                  v175 = ((v156 * 1024.0) + (v176 * 0.5));
                }

                IR::DelayLine<float>::processPolyphaseQ22_10(v5, v165, v175, v155, v164);
              }

              v152 = *(v5 + 72);
              *(v152 + 4 * v151++) = v156;
            }

            while (v151 != v11);
          }
        }

        else
        {
          v39 = 0;
          v182 = v8;
          v40 = *(v5 + 44);
          v41 = v184;
          v181 = v7;
          do
          {
            v42 = v7[v39];
            v43 = *(v5 + 16);
            *(v43 + 4 * v40) = v42;
            if (v40 < v30)
            {
              *(v43 + 4 * (v40 + v178)) = v42;
            }

            if (v11)
            {
              v44 = 0;
              v45 = v8 - v39;
              do
              {
                if (v6 == 2.7183)
                {
                  v46 = *(v5 + 136);
                  LODWORD(v47) = (*&v183[4 * v44] - *(v46 + 4 * v44)) / v45 + *(v46 + 4 * v44);
                }

                else
                {
                  v48 = *(*(v5 + 48) + 4 * v44);
                  v49 = *(v5 + 72);
                  v50 = v48 + (*(v5 + 96) * (*(v49 + 4 * v44) - v48));
                  *(v49 + 4 * v44) = v50;
                  v51 = v50 * 1024.0;
                  if (v51 < 0.0)
                  {
                    v52 = -1.0;
                  }

                  else
                  {
                    v52 = 1.0;
                  }

                  v47 = (v51 + (v52 * 0.5));
                  v46 = *(v5 + 136);
                }

                *(v46 + 4 * v44) = v47;
                v53 = *(v5 + 128);
                v54 = 10 - v53;
                v55 = v47 + (1 << (9 - v53)) - 512;
                v56 = (v55 & 0x3FF) >> v54;
                if (*(v5 + 120) <= v56)
                {
                  IR::DelayLine<float>::process();
                }

                v57 = *(v5 + 132);
                v58 = (*(v5 + 104) + 4 * v57 * v56);
                v59 = *(v41 + 8 * v44);
                v60 = (*(v5 + 16) + 4 * ((v12 - (v30 + (v55 >> 10)) + *(v5 + 44)) & *(v5 + 40)) + 4 * v30);
                __C = 0.0;
                vDSP_dotpr(v60, -1, v58, 1, &__C, v57);
                *(v59 + 4 * v39) = __C;
                ++v44;
                v41 = v184;
              }

              while (v11 != v44);
              v40 = *(v5 + 44);
              LODWORD(v8) = v180;
              v7 = v181;
            }

            v40 = *(v5 + 40) & (v40 + 1);
            *(v5 + 44) = v40;
            ++v39;
          }

          while (v39 != v182);
        }

        return;
      }

      goto LABEL_69;
    }

    v104 = *(v5 + 44);
    v105 = *(v5 + 132) - 1;
    v180 = v8;
    if (v104 + v8 >= v12)
    {
      v122 = *(v5 + 16);
      v123 = 4 * (v12 - v104);
      if (v12 != v104)
      {
        memmove((v122 + 4 * v104), v7, 4 * (v12 - v104));
        v122 = *(v5 + 16);
      }

      v124 = 4 * v8;
      if (v124 != v123)
      {
        memmove((v122 + 4 * v105), &v7[(v12 - v104)], v124 - v123);
      }

      *(v5 + 44) += v8 - v12 + v105;
      a3 = v184;
      if (v12 - v105 <= v8)
      {
        IR::DelayLine<float>::process();
      }
    }

    else
    {
      memmove((*(v5 + 16) + 4 * v104), v7, 4 * v8);
      *(v5 + 44) += v8;
    }

    v125 = v12;
    if (v105)
    {
      memmove(*(v5 + 16), (*(v5 + 24) - 4 * v105), 4 * v105);
    }

    if (v11)
    {
      v126 = 0;
      v127 = v105 - v12;
      v183 = v104;
      do
      {
        __E = *(a3 + 8 * v126);
        v129 = v180;
        while (1)
        {
          while (1)
          {
            v130 = *(v5 + 304);
            v131 = *(v130 + 4 * v126);
            if (!v131)
            {
              break;
            }

            if (v129 >= v131)
            {
              v132 = v131;
            }

            else
            {
              v132 = v129;
            }

            v133 = *(*(v5 + 72) + 4 * v126) * 1024.0;
            if (v133 < 0.0)
            {
              v134 = -1.0;
            }

            else
            {
              v134 = 1.0;
            }

            IR::DelayLine<float>::processPolyphaseQ22_10(v5, v104, (v133 + (v134 * 0.5)), *(v5 + 256), v132);
            v135 = *(*(v5 + 280) + 4 * v126) * 1024.0;
            if (v135 < 0.0)
            {
              v136 = -1.0;
            }

            else
            {
              v136 = 1.0;
            }

            IR::DelayLine<float>::processPolyphaseQ22_10(v5, v104, (v135 + (v136 * 0.5)), *(v5 + 232), v132);
            v137 = *(v5 + 184);
            v138 = ((*(v5 + 192) - v137) >> 2) - *(*(v5 + 304) + 4 * v126);
            vDSP_vmma((v137 + 4 * v138), 1, *(v5 + 232), 1, (*(v5 + 208) + 4 * v138), 1, *(v5 + 256), 1, __E, 1, v132);
            *(*(v5 + 304) + 4 * v126) -= v132;
            v129 = (v129 - v132);
            if (v132 + v104 >= v125)
            {
              v139 = v127;
            }

            else
            {
              v139 = 0;
            }

            LODWORD(v104) = v132 + v104 + v139;
            __E += v132;
            if (!v129)
            {
              goto LABEL_138;
            }
          }

          v140 = *(v5 + 48);
          v141 = *(v5 + 72);
          v142 = *(v141 + 4 * v126);
          if (*(v140 + 4 * v126) == v142)
          {
            break;
          }

          *(v130 + 4 * v126) = (*(v5 + 192) - *(v5 + 184)) >> 2;
          *(*(v5 + 280) + 4 * v126) = v142;
          *(v141 + 4 * v126) = *(v140 + 4 * v126);
          if (!v129)
          {
            goto LABEL_138;
          }
        }

        v143 = v142 * 1024.0;
        if (v143 < 0.0)
        {
          v144 = -1.0;
        }

        else
        {
          v144 = 1.0;
        }

        IR::DelayLine<float>::processPolyphaseQ22_10(v5, v104, (v143 + (v144 * 0.5)), __E, v129);
LABEL_138:
        ++v126;
        LODWORD(v104) = v183;
      }

      while (v126 != v11);
    }
  }

  else if (v6 == 2.7183)
  {

    IR::DelayLine<float>::swapDelays(a1);
  }
}

void *IR::DelayLine<float>::swapDelays(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (*(a1 + 56) - v2) >> 2;
  v5 = a1 + 72;
  result = *(a1 + 72);
  v6 = (*(v5 + 8) - result) >> 2;
  if (v6 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    result = memmove(result, v2, 4 * v7);
  }

  if ((*(a1 + 4) | 2) == 7)
  {
    v8 = *(a1 + 136);
    v9 = *(a1 + 144) - v8;
    v10 = *(a1 + 48);
    v11 = (*(a1 + 56) - v10) >> 2 >= (v9 >> 2) ? v9 >> 2 : (*(a1 + 56) - v10) >> 2;
    v11 = v11;
    if (v11)
    {
      do
      {
        v12 = *v10++;
        v13 = v12 * 1024.0;
        if ((v12 * 1024.0) < 0.0)
        {
          v14 = -1.0;
        }

        else
        {
          v14 = 1.0;
        }

        *v8++ = (v13 + (v14 * 0.5));
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

void IR::DelayLine<float>::processPolyphaseQ22_10(uint64_t a1, int a2, int a3, float *__C, vDSP_Length __N)
{
  v5 = *(a1 + 128);
  v6 = a3 + (1 << (9 - v5)) - 512;
  v7 = (v6 & 0x3FF) >> (10 - v5);
  if (v7 >= *(a1 + 120))
  {
    IR::DelayLine<float>::processPolyphaseQ22_10();
  }

  v8 = __N;
  v11 = *(a1 + 132);
  v12 = (v11 - 1);
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24) - v13) >> 2;
  v15 = (a2 - (v11 + (v6 >> 10)) + v14 + 1) & *(a1 + 40);
  v16 = (*(a1 + 104) + 4 * v7 * v11);
  if (__N == 1)
  {
    __Ca = 0.0;
    vDSP_dotpr((v13 + 4 * v15 + 4 * v12), -1, v16, 1, &__Ca, v11);
    *__C = __Ca;
  }

  else
  {
    if (v14 >= v12 + __N + v15)
    {
      v20 = (v13 + 4 * v15);
      v22 = &v16[v12];
      v19 = __N;
      v21 = __C;
    }

    else
    {
      if (v14 < (v12 + __N))
      {
        IR::DelayLine<float>::processPolyphaseQ22_10();
      }

      v17 = v14 - (v12 + v15);
      v18 = &v16[v12];
      vDSP_conv((v13 + 4 * v15), 1, v18, -1, __C, 1, v17, v11);
      v19 = v8 - v17;
      v20 = *(a1 + 16);
      v21 = &__C[v17];
      v11 = *(a1 + 132);
      v22 = v18;
    }

    vDSP_conv(v20, 1, v22, -1, v21, 1, v19, v11);
  }
}

void SincKernelFactory::SincKernelFactory(SincKernelFactory *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<SincKernel *>::reserve(this, 0x20uLL);
}

void sub_296BCE4DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<SincKernel *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<std::unique_ptr<IR::FFTFilterKernel<float>>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::default_delete<SincKernelFactory>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x29C25FC20);
  }
}

IR::IRDirectivityMagnitude *IR::IRDirectivityMagnitude::IRDirectivityMagnitude(IR::IRDirectivityMagnitude *this, float a2, unsigned int a3)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 13) = 10;
  *(this + 7) = 0;
  *(this + 6) = 0u;
  v5 = (this + 96);
  *(this + 9) = 0u;
  v6 = (this + 144);
  *(this + 8) = 0;
  *(this + 9) = 0;
  v7 = (a2 * 0.085333);
  if (v7 <= a3)
  {
    v7 = a3;
  }

  v8 = (1 << -__clz(v7 - 1));
  *(this + 7) = 0uLL;
  *(this + 8) = 0uLL;
  *(this + 10) = 0uLL;
  *(this + 11) = 0uLL;
  *(this + 4) = v8;
  Setup = vDSP_DFT_zrop_CreateSetup(0, v8, vDSP_DFT_FORWARD);
  std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(void vdsp::DFT_DestroySetup<float>(vdsp::detail_DFT_Setup<float>::type))>>::reset[abi:ne200100](v4, Setup);
  std::vector<float>::resize(this + 5, *(this + 4));
  std::vector<float>::resize(v6, *(this + 4));
  std::vector<float>::resize(this + 7, *(this + 4));
  std::vector<float>::resize(v5, *(this + 4));
  IR::IRDirectivityMagnitude::initializeOctaveFrequencyFilterBank(this);
  return this;
}

void sub_296BCE700(_Unwind_Exception *a1)
{
  v8 = v2[21];
  if (v8)
  {
    v2[22] = v8;
    operator delete(v8);
  }

  v9 = *v4;
  if (*v4)
  {
    v2[19] = v9;
    operator delete(v9);
  }

  v10 = v2[15];
  if (v10)
  {
    v2[16] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v2[13] = v11;
    operator delete(v11);
  }

  v12 = *v6;
  if (*v6)
  {
    v2[8] = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    v2[4] = v13;
    operator delete(v13);
  }

  std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(void vdsp::DFT_DestroySetup<float>(vdsp::detail_DFT_Setup<float>::type))>>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void IR::IRDirectivityMagnitude::initializeOctaveFrequencyFilterBank(IR::IRDirectivityMagnitude *this)
{
  v2 = *(this + 1) * 0.5;
  v3 = 3.0;
  if (!*(this + 48))
  {
    v3 = 1.0;
  }

  v33 = v3;
  v4 = log2f(v2 / 1000.0);
  v5 = &unk_296C19D2C;
  v6 = vld1_dup_f32(v5);
  v6.f32[0] = v4;
  v7 = vrnda_f32(vmul_n_f32(v6, v33));
  __asm { FMOV            V1.2S, #-1.0 }

  v32 = vadd_f32(v7, _D1);
  v13 = (roundf(vaddv_f32(v32)) + 1.0);
  *(this + 13) = v13;
  std::vector<float>::vector[abi:ne200100](__C, v13);
  v14 = (*(this + 13) + 2);
  *&__u = 0.0;
  std::vector<IR::IRInterpolationMethod>::assign(this + 1, v14, &__u);
  v15 = *(this + 13);
  __B = v32.f32[0];
  *&__u = -v32.f32[1];
  vDSP_vgen(&__u, &__B, __C[0], 1, v15);
  v16 = *(this + 13);
  *&__u = v33;
  vDSP_vsdiv(__C[0], 1, &__u, __C[0], 1, v16);
  __u = *(this + 13);
  vvexp2f(__C[0], __C[0], &__u);
  HIDWORD(v17) = 1083129856;
  LODWORD(v17) = *(this + 4);
  *&v18 = 1000.0 / v2 * v17 * 0.5;
  v19 = *(this + 13);
  __u = v18;
  MEMORY[0x29C260530](__C[0], 1, &__u, __C[0], 1, v19);
  v20 = *(this + 13);
  *&__u = -1.0;
  MEMORY[0x29C2604C0](__C[0], 1, &__u, __C[0], 1, v20);
  vDSP_vfixr32(__C[0], 1, (*(this + 3) + 4), 1, *(this + 13));
  v21 = *(this + 3);
  *v21 = 0;
  *v22.i32 = roundf(*(this + 4) * 0.5) + -1.0;
  v21[*(this + 13) + 1] = *v22.i32;
  v23 = *(this + 13);
  v24 = *(this + 4) >> 1;
  *&__u = 0.0;
  std::vector<float>::assign(this + 7, v24 * v23, &__u, v22);
  *(this + 10) = v23;
  *(this + 11) = v24;
  if (*(this + 13))
  {
    v25 = 0;
    do
    {
      v26 = (*(this + 3) + 4 * v25);
      v27 = v26[1];
      v28 = v26[2];
      v29 = (*(this + 7) + 4 * (*v26 + ((*(this + 4) * v25) >> 1)));
      v30 = v27 - *v26 + 1;
      __B = 1.0;
      *&__u = 0.0;
      vDSP_vgen(&__u, &__B, v29, 1, v30);
      v31 = (*(this + 7) + 4 * (v27 + ((*(this + 4) * v25) >> 1)));
      __B = 0.0;
      *&__u = 1.0;
      vDSP_vgen(&__u, &__B, v31, 1, v28 - v27 + 1);
      ++v25;
    }

    while (v25 < *(this + 13));
  }

  if (__C[0])
  {
    __C[1] = __C[0];
    operator delete(__C[0]);
  }
}

void sub_296BCEA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IR::IRDirectivityMagnitude::computeMagnitudes(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 52) > ((a3[1] - *a3) >> 2))
  {
    IR::IRDirectivityMagnitude::computeMagnitudes();
  }

  if (*(a2 + 8) == *a2)
  {
    IR::IRDirectivityMagnitude::computeMagnitudes();
  }

  memcpy(*(a1 + 96), ***a2, 4 * *(**a2 + 24));
  v5 = *(a1 + 16) >> 1;
  __Z.realp = *(a1 + 120);
  __Z.imagp = &__Z.realp[v5];
  vDSP_ctoz(*(a1 + 96), 2, &__Z, 1, v5);
  v6 = *(a1 + 144);
  v7 = (v6 + ((2 * *(a1 + 16)) & 0x1FFFFFFFCLL));
  vDSP_DFT_Execute(*(a1 + 8), __Z.realp, __Z.imagp, v6, v7);
  v8 = *v7;
  *v7 = 0.0;
  __A.realp = v6;
  __A.imagp = v7;
  vDSP_zvabs(&__A, 1, *(a1 + 168), 1, *(a1 + 16) >> 1);
  *(*(a1 + 168) + ((2 * *(a1 + 16)) & 0x1FFFFFFFCLL)) = v8;
  if (*(a1 + 52))
  {
    v9 = 0;
    do
    {
      v10 = (*(a1 + 24) + 4 * v9);
      v11 = *v10;
      v12 = v10[2] - v11;
      v13 = (*(a1 + 56) + 4 * *(a1 + 88) * v9 + 4 * v11);
      v14 = (*(a1 + 168) + 4 * v11);
      __C = 0.0;
      vDSP_dotpr(v13, 1, v14, 1, &__C, v12 + 1);
      *(*a3 + 4 * v9++) = __C / v12;
    }

    while (v9 < *(a1 + 52));
  }
}

void sub_296BCEC5C(void *a1)
{
  MEMORY[0x29C25FC20](v2, 0x10B0C4043691516);
  __cxa_begin_catch(a1);
  std::unique_ptr<AudioDSP::Core::VBAP::Implementation>::reset[abi:ne200100](v1, 0);
  __cxa_rethrow();
}

void sub_296BCEC9C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::unique_ptr<AudioDSP::Core::VBAP::Implementation>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AudioDSP::Core::VBAP::Implementation>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    VBAP::~VBAP((v2 + 8));

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

void AudioDSP::Core::VBAP::~VBAP(AudioDSP::Core::VBAP *this)
{
  std::unique_ptr<AudioDSP::Core::VBAP::Implementation>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<AudioDSP::Core::VBAP::Implementation>::reset[abi:ne200100](this, 0);
}

uint64_t AudioDSP::Core::VBAP::calculateVBAPGains(uint64_t a1, float32x2_t *a2, float **a3)
{
  if (*a1)
  {
    return VBAP::calculateVBAPGains((*a1 + 8), a2, *a3);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t AudioDSP::Core::VBAP::triangleLookup(uint64_t a1, float32x2_t *a2, int *a3, float *a4)
{
  if (*a1)
  {
    return VBAP::triangleLookup((*a1 + 8), a2, a3, a4);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t AudioDSP::Core::VBAP::changeSpeakerLocations(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1)
  {
    return VBAP::changeSpeakerLocations(*a1 + 8, a2, a3);
  }

  else
  {
    return 4294956429;
  }
}

void AudioDSP::Core::VBAP::Implementation::Implementation(unint64_t *a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  v6 = *a2;
  v7 = a2[1];
  v9 = (v7 - v6) >> 2;
  *a1 = v9;
  v10 = (a1 + 1);
  memset(v12, 0, sizeof(v12));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v12, v6, v7, v9);
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  VBAP::VBAP(v10, v12, __p, *a4);
}

void IR::getFilePtr(const __CFURL **a1@<X0>, int a2@<W1>, FILE **a3@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = MEMORY[0x29EDCA640];
  *a3 = 0;
  a3[1] = v6;
  if (v5)
  {
    v7 = CFURLGetFileSystemRepresentation(v5, 1u, buffer, 1024);
    if (v7)
    {
      v8 = stat(buffer, &v20);
      v9 = v8;
      if (v8)
      {
        if (a2)
        {
          IRDataLog = IR::getIRDataLog(v8);
          if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_ERROR))
          {
            v11 = *__error();
            v12 = __error();
            v13 = strerror(*v12);
            *buf = 136316162;
            v22 = "getFilePtr";
            v23 = 1024;
            v24 = v9;
            v25 = 1024;
            v26 = v11;
            v27 = 2080;
            v28 = v13;
            v29 = 2080;
            v30 = buffer;
            _os_log_error_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_ERROR, "%s: error %d getting file status. Error code: %d (%s). File path: %s", buf, 0x2Cu);
          }
        }
      }

      else if ((v20.st_mode & 0xF000) == 0x4000)
      {
        if (a2)
        {
          v16 = IR::getIRDataLog(v8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            IR::getFilePtr();
          }
        }
      }

      else
      {
        v17 = fopen(buffer, "r");
        v18 = MEMORY[0x29EDCA640];
        *a3 = v17;
        a3[1] = v18;
        if (!v17)
        {
          if (a2)
          {
            v19 = IR::getIRDataLog(0);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              IR::getFilePtr();
            }
          }
        }
      }
    }

    else if (a2)
    {
      v15 = IR::getIRDataLog(v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        IR::getFilePtr();
      }
    }
  }

  else if (a2)
  {
    v14 = IR::getIRDataLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      IR::getFilePtr();
    }
  }
}

void IR::getFilePtr(CFTypeRef *this@<X0>, const IR::IRDataAttributes *a2@<X1>, FILE **a3@<X8>)
{
  v3 = a2;
  v5 = *this;
  if (*this)
  {
    CFRetain(*this);
  }

  v6 = v5;
  IR::getFilePtr(&v6, v3, a3);
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296BCF1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::~Implementation(IR::IRDataLoader::Implementation *this)
{
  v5 = *MEMORY[0x29EDCA608];
  IR::PersonalizedIRData::UnregisterObservers(this + 20);
  std::recursive_mutex::lock((this + 88));
  std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::clear(this + 168);
  IRDataLog = IR::getIRDataLog(v2);
  if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 136315138;
    *&v4[4] = "~Implementation";
    _os_log_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEFAULT, "%s: Personalized HRTF listener is unregistered, all callbacks are cleared.", v4, 0xCu);
  }

  std::recursive_mutex::unlock((this + 88));
  std::__tree<std::__value_type<unsigned int,CA::ChannelLayout>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CA::ChannelLayout>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CA::ChannelLayout>>>::destroy(this + 208, *(this + 27));
  std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::~__hash_table(this + 168);
  IR::PersonalizedIRData::~PersonalizedIRData((this + 160));
  std::recursive_mutex::~recursive_mutex((this + 88));
  std::recursive_mutex::~recursive_mutex((this + 24));
  *v4 = this;
  std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_296BCF2E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void IR::IRDataLoader::Implementation::load(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  IR::getPresetDataAttributes(a3, &v12);
  v13 = a6;
  v14 = a4;
  v11 = 0;
  IR::IRDataLoader::Implementation::load(a1, a2, &v12, &v11, a5);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_296BCF3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  applesauce::CF::DataRef::~DataRef(&a9);
  IR::IRDataAttributes::~IRDataAttributes(&a10);
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::load(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, uint64_t *a5@<X8>)
{
  std::recursive_mutex::lock((a1 + 24));
  v10 = *a4;
  if (v10)
  {
    CFRetain(v10);
  }

  cf = v10;
  IR::IRDataLoader::Implementation::loadPrivate(a1, a2, a3, &cf, a5);
  if (cf)
  {
    CFRelease(cf);
  }

  v12 = *a1;
  v11 = *(a1 + 8);
  if (*a1 != v11)
  {
    v13 = v12 + 21;
    while (1)
    {
      v14 = *(v13 - 1);
      if (!v14 || *(v14 + 8) == -1)
      {
        break;
      }

      v15 = v13 == v11;
      v13 += 21;
      if (v15)
      {
        v12 = *(a1 + 8);
        goto LABEL_19;
      }
    }

    v12 = v13 - 21;
    if (v13 - 21 != v11 && v13 != v11)
    {
      do
      {
        v16 = v13[20];
        if (v16 && *(v16 + 8) != -1)
        {
          std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>::operator=[abi:ne200100](v12, v13);
          v12 += 21;
        }

        v13 += 21;
      }

      while (v13 != v11);
      v11 = *(a1 + 8);
    }
  }

LABEL_19:
  std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::erase(a1, v12, v11);
  std::recursive_mutex::unlock((a1 + 24));
}

void sub_296BCF50C(_Unwind_Exception *a1)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::recursive_mutex::unlock((v1 + 24));
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::create(float a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, int a17)
{
  v17 = a17;
  v18 = a15;
  v19 = a14;
  v25 = a1;
  v24 = a9;
  v23 = a15;
  v20 = *a5;
  if (*a5)
  {
    CFRetain(*a5);
    a1 = v25;
    v19 = a14;
    v17 = a17;
    v18 = v23;
  }

  cf = v20;
  IR::IRDataAttributes::IRDataAttributes(v22, &cf, v19, v18 & 1, v17, 0, a1);
  if (cf)
  {
    CFRelease(cf);
  }

  std::allocate_shared[abi:ne200100]<IR::IRData,std::allocator<IR::IRData>,std::vector<std::vector<float>> const&,std::vector<std::vector<float>> const&,std::vector<IR::IRCoordinateType> const&,std::vector<std::vector<float>> const&,float &,unsigned int &,std::vector<float> const&,std::vector<IR::IRInterpolationMethod> const&,applesauce::CF::DictionaryRef const&,std::string const&,unsigned int &,BOOL &,unsigned int &,IR::IRSphericalInterpolation &,std::vector<float> const&,0>();
}

void sub_296BCF6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataLoader::Implementation::swapLoadedIR(uint64_t a1, float *a2, uint64_t *a3)
{
  std::recursive_mutex::lock((a1 + 24));
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (*a1 != v9)
  {
    while ((IR::IRDataAttributes::operator==(v8, a2) & 1) == 0)
    {
      if (a2[2] == 0.0)
      {
        if (IR::IRDataAttributes::equalsExceptSampleRate(a2, v8))
        {
          v10 = *(v8 + 160);
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              v12 = v11;
              v13 = *(v8 + 152);
              if (v13)
              {
                OriginalSampleRate = IR::IRData::getOriginalSampleRate(*(v8 + 152));
                if (OriginalSampleRate == IR::IRData::getSampleRate(v13))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
                  break;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }
          }
        }
      }

      v8 += 168;
      if (v8 == v9)
      {
        v8 = v9;
        break;
      }
    }
  }

  v15 = *(a1 + 8);
  if (v8 == v15)
  {
    if (v8 >= *(a1 + 16))
    {
      v20 = std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__emplace_back_slow_path<IR::IRDataAttributes const&,std::shared_ptr<IR::IRData const> const&>(a1, a2, a3);
    }

    else
    {
      v18 = IR::IRDataAttributes::IRDataAttributes(v15, a2);
      v19 = a3[1];
      *(v18 + 19) = *a3;
      *(v18 + 20) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
      }

      v20 = v18 + 168;
    }

    *(a1 + 8) = v20;
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = *(v8 + 160);
    *(v8 + 152) = v7;
    *(v8 + 160) = v6;
    v6 = v16;
    if (v16)
    {
LABEL_16:
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  std::recursive_mutex::unlock((a1 + 24));
  return 1;
}

void sub_296BCF8CC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::recursive_mutex::unlock((v1 + 24));
  _Unwind_Resume(a1);
}

void IR::IRDataLoader::Implementation::loadPrivate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v76 = *MEMORY[0x29EDCA608];
  v63[0] = 0;
  v63[1] = 0;
  if (*a4)
  {
    goto LABEL_15;
  }

  if ((*(a3 + 48) - 1) > 1)
  {
    goto LABEL_15;
  }

  v9 = atomic_load((a1 + 152));
  if (v9)
  {
    goto LABEL_15;
  }

  v10 = IR::PersonalizedIRData::CheckSupport((a1 + 160), 0);
  PersonalizedHRTF = IR::IRDataLoader::Implementation::hasFailedToFetchPersonalizedHRTF(a1);
  v12 = PersonalizedHRTF;
  v13 = *(a3 + 48);
  if (PersonalizedHRTF & 1 | ((v10 & 1) == 0))
  {
LABEL_5:
    IRDataLog = IR::getIRDataLog(PersonalizedHRTF);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if (v12)
      {
        v16 = "unavailable";
      }

      else
      {
        v16 = "disabled";
      }

      if (!*a3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](exception, "Could not construct");
      }

      applesauce::CF::get_filesystem_path(*a3, theString);
      CStringPtr = CFStringGetCStringPtr(theString[0], 0x8000100u);
      *buf = 136316162;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = "loadPrivate";
      v67 = 1024;
      *v68 = v13;
      *&v68[4] = 2080;
      *&v68[6] = v16;
      v69 = 2080;
      v70 = CStringPtr;
      _os_log_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEFAULT, "%s%s: Personalized HRIR type %u is %s. Reverting back to generic HRIR: %s.", buf, 0x30u);
      if (theString[0])
      {
        CFRelease(theString[0]);
      }
    }

LABEL_15:
    IR::IRDataLoader::Implementation::getLoadedIR(a1, a3, 0x100000000, a5);
    if (*a5)
    {
      v19 = IR::getIRDataLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        if (!*a3)
        {
          v58 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25F8D0](v58, "Could not construct");
        }

        applesauce::CF::get_filesystem_path(*a3, theString);
        v20 = CFStringGetCStringPtr(theString[0], 0x8000100u);
        *buf = 136315650;
        *&buf[4] = a2;
        *&buf[12] = 2080;
        *&buf[14] = "loadPrivate";
        v67 = 2080;
        *v68 = v20;
        _os_log_debug_impl(&dword_296B9D000, v19, OS_LOG_TYPE_DEBUG, "%s%s: Fetched IR from cache: %s", buf, 0x20u);
        if (theString[0])
        {
          CFRelease(theString[0]);
        }
      }

      goto LABEL_82;
    }

    v21 = a5[1];
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    IR::IRDataAttributes::IRDataAttributes(buf, a3);
    v71 = 0;
    if (*(a3 + 48))
    {
      IR::IRDataLoader::Implementation::getLoadedIR(a1, buf, 0, a5);
      if (*a5)
      {
        IR::IRDataLoader::Implementation::addIRDataToCache(a1, a2, a3, a5);
        v23 = IR::getIRDataLog(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          if (*(a2 + 23) < 0)
          {
            a2 = *a2;
          }

          v24 = applesauce::CF::URLRef::operator->(buf);
          applesauce::CF::get_filesystem_path(*v24, &v62);
          v25 = CFStringGetCStringPtr(v62.__r_.__value_.__l.__data_, 0x8000100u);
          LODWORD(theString[0]) = 136315650;
          *(theString + 4) = a2;
          WORD2(theString[1]) = 2080;
          *(&theString[1] + 6) = "loadPrivate";
          HIWORD(theString[2]) = 2080;
          v65 = v25;
          _os_log_debug_impl(&dword_296B9D000, v23, OS_LOG_TYPE_DEBUG, "%s%s: Fetched IR from cache: %s", theString, 0x20u);
          applesauce::CF::StringRef::~StringRef(&v62.__r_.__value_.__l.__data_);
        }

LABEL_74:
        if (v75)
        {
          CFRelease(v75);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v72)
        {
          CFRelease(v72);
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        goto LABEL_82;
      }

      v26 = a5[1];
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    if (!cf && (!v74 || ChannelLayoutTagIsHOAWithAnyNumberOfChannels(v74)))
    {
      std::allocate_shared[abi:ne200100]<IR::IRData,std::allocator<IR::IRData>,IR::IRDataAttributes &,applesauce::CF::DataRef &,std::vector<float> const&,0>();
    }

    AudioChannelLayoutTagPrivate = IR::IRDataLoader::Implementation::getAudioChannelLayoutTagPrivate(a1, buf, 0);
    IsSupportedHOA = ChannelLayoutTagIsSupportedHOA(AudioChannelLayoutTagPrivate);
    if (!IsSupportedHOA)
    {
      v40 = IR::getIRDataLog(IsSupportedHOA);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 23) >= 0)
        {
          v49 = a2;
        }

        else
        {
          v49 = *a2;
        }

        v50 = applesauce::CF::URLRef::operator->(buf);
        applesauce::CF::get_filesystem_path(*v50, &v62);
        v51 = CFStringGetCStringPtr(v62.__r_.__value_.__l.__data_, 0x8000100u);
        LODWORD(theString[0]) = 136315650;
        *(theString + 4) = v49;
        WORD2(theString[1]) = 2080;
        *(&theString[1] + 6) = "loadPrivate";
        HIWORD(theString[2]) = 2080;
        v65 = v51;
        _os_log_debug_impl(&dword_296B9D000, v40, OS_LOG_TYPE_DEBUG, "%s%s: HOA decoder attributes set, but IR is not HOA; loading without decoding: %s", theString, 0x20u);
        applesauce::CF::StringRef::~StringRef(&v62.__r_.__value_.__l.__data_);
      }

      v41 = cf;
      cf = 0;
      if (v41)
      {
        CFRelease(v41);
      }

      v74 = 0;
      v61 = 0;
      memset(theString, 0, sizeof(theString));
      IR::IRDataLoader::Implementation::loadPrivate(a1, a2, buf, &v61, theString);
      if (theString[0])
      {
        theString[1] = theString[0];
        operator delete(theString[0]);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      goto LABEL_74;
    }

    IR::IRDataLoader::Implementation::loadAndDecode(buf, a1, a2, theString);
    v29 = *theString;
    theString[0] = 0;
    theString[1] = 0;
    v30 = v63[1];
    *v63 = v29;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      v30 = theString[1];
      if (theString[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](theString[1]);
      }

      if (v63[0])
      {
        goto LABEL_38;
      }
    }

    else if (v29)
    {
LABEL_38:
      v31 = IR::getIRDataLog(v30);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        if (*(a2 + 23) >= 0)
        {
          v33 = a2;
        }

        else
        {
          v33 = *a2;
        }

        if (!*buf)
        {
          v60 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25F8D0](v60, "Could not construct");
        }

        applesauce::CF::get_filesystem_path(*buf, &v62);
        v34 = CFStringGetCStringPtr(v62.__r_.__value_.__l.__data_, 0x8000100u);
        LODWORD(theString[0]) = 136315650;
        *(theString + 4) = v33;
        WORD2(theString[1]) = 2080;
        *(&theString[1] + 6) = "loadPrivate";
        HIWORD(theString[2]) = 2080;
        v65 = v34;
        _os_log_impl(&dword_296B9D000, v31, OS_LOG_TYPE_DEFAULT, "%s%s: Decoded HOA IR: %s", theString, 0x20u);
        v32 = v62.__r_.__value_.__r.__words[0];
        if (v62.__r_.__value_.__r.__words[0])
        {
          CFRelease(v62.__r_.__value_.__l.__data_);
        }
      }

      v35 = IR::getIRDataLog(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a2 + 23);
        v37 = *a2;
        IR::IRDataAttributes::description(buf, 0, &v62);
        v38 = (v36 >= 0 ? a2 : v37);
        v39 = (v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v62 : v62.__r_.__value_.__r.__words[0];
        LODWORD(theString[0]) = 136315650;
        *(theString + 4) = v38;
        WORD2(theString[1]) = 2080;
        *(&theString[1] + 6) = "loadPrivate";
        HIWORD(theString[2]) = 2080;
        v65 = v39;
        _os_log_debug_impl(&dword_296B9D000, v35, OS_LOG_TYPE_DEBUG, "%s%s: IR attributes: %s", theString, 0x20u);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }
      }

LABEL_71:
      v45 = v63[0];
      if (v63[0])
      {
        IR::IRDataLoader::Implementation::addIRDataToCache(a1, a2, a3, v63);
        v45 = v63[0];
      }

      v46 = v63[1];
      *a5 = v45;
      a5[1] = v46;
      v63[0] = 0;
      v63[1] = 0;
      goto LABEL_74;
    }

    v44 = IR::getIRDataLog(v30);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v52 = a2;
      }

      else
      {
        v52 = *a2;
      }

      v53 = applesauce::CF::URLRef::operator->(buf);
      applesauce::CF::get_filesystem_path(*v53, &v62);
      v54 = CFStringGetCStringPtr(v62.__r_.__value_.__l.__data_, 0x8000100u);
      LODWORD(theString[0]) = 136315650;
      *(theString + 4) = v52;
      WORD2(theString[1]) = 2080;
      *(&theString[1] + 6) = "loadPrivate";
      HIWORD(theString[2]) = 2080;
      v65 = v54;
      _os_log_error_impl(&dword_296B9D000, v44, OS_LOG_TYPE_ERROR, "%s%s: Failed to decode HOA IR: %s", theString, 0x20u);
      applesauce::CF::StringRef::~StringRef(&v62.__r_.__value_.__l.__data_);
    }

    goto LABEL_71;
  }

  IR::IRDataLoader::Implementation::getLoadedIR(a1, a3, v13 | 0x100000000, buf);
  v42 = v63[1];
  *v63 = *buf;
  if (!*buf)
  {
    v47 = IR::getIRDataLog(v42);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v48 = a2;
      }

      else
      {
        v48 = *a2;
      }

      *buf = 136315650;
      *&buf[4] = v48;
      *&buf[12] = 2080;
      *&buf[14] = "loadPrivate";
      v67 = 1024;
      *v68 = v13;
      _os_log_impl(&dword_296B9D000, v47, OS_LOG_TYPE_DEFAULT, "%s%s: Could not find personalized HRIR type %u in IRDataLoader cache. Searching CFData cache.", buf, 0x1Cu);
    }

    IR::PersonalizedIRData::GetCFData((a1 + 160), v13, 1, buf);
    theString[0] = *&buf[8];
    *&buf[8] = 0;
    std::pair<BOOL,applesauce::CF::DataRef>::~pair(buf);
    if (theString[0])
    {
      goto LABEL_108;
    }

    PersonalizedHRTF = IR::PersonalizedIRData::GetStatus((a1 + 160));
    if ((PersonalizedHRTF & 1) == 0 && *(a3 + 56) == 1)
    {
      if (IR::PersonalizedIRData::GetDataSource((a1 + 160)) == 1)
      {
        IR::IRDataLoader::Implementation::rebuildPersonalizedHRTFCache(a1);
      }

      else
      {
        DataSource = IR::PersonalizedIRData::GetDataSource((a1 + 160));
        if (DataSource == 2)
        {
          *v68 = 0;
          IR::PersonalizedIRData::RebuildCFDataCache((a1 + 160), buf);
          std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](buf);
          IR::PersonalizedIRData::GetCFData((a1 + 160), v13, 1, buf);
          v56 = theString[0];
          theString[0] = *&buf[8];
          *&buf[8] = v56;
          PersonalizedHRTF = std::pair<BOOL,applesauce::CF::DataRef>::~pair(buf);
        }

        else
        {
          v57 = IR::getIRDataLog(DataSource);
          PersonalizedHRTF = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
          if (PersonalizedHRTF)
          {
            IR::IRDataLoader::Implementation::loadPrivate();
          }
        }
      }
    }

    if (theString[0])
    {
LABEL_108:
      std::allocate_shared[abi:ne200100]<IR::IRData,std::allocator<IR::IRData>,IR::IRDataAttributes const&,applesauce::CF::DataRef &,std::vector<float> const&,0>();
    }

    v12 = 1;
    goto LABEL_5;
  }

  v43 = IR::getIRDataLog(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    IR::IRDataLoader::Implementation::loadPrivate();
  }

  *a5 = *v63;
  v63[0] = 0;
  v63[1] = 0;
LABEL_82:
  if (v63[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63[1]);
  }
}

void sub_296BD0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(__p, a11);
  applesauce::CF::DataRef::~DataRef(__p);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>::operator=[abi:ne200100](v7, v4);
        v4 += 21;
        v7 += 21;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 = (v6 - 168);
      std::__destroy_at[abi:ne200100]<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>,0>(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void IR::IRDataLoader::Implementation::getLoadedIR(IR::IRDataLoader::Implementation *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  std::recursive_mutex::lock((this + 24));
  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    while (1)
    {
      IR::IRDataAttributes::IRDataAttributes(cf1, v6);
      v8 = *(v6 + 20);
      v18 = *(v6 + 19);
      v19 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *a2;
      v10 = (cf1[0] | *a2) == 0;
      if (cf1[0])
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v10 = CFEqual(cf1[0], v9) != 0;
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (cf1[0])
      {
        CFRelease(cf1[0]);
      }

      if (v10)
      {
        break;
      }

      v6 = (v6 + 168);
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(this + 1);
  }

  if (v6 == v7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    v12 = *(v6 + 20);
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      a3[1] = v13;
      if (v13)
      {
        *a3 = *(v6 + 19);
      }
    }
  }

  std::recursive_mutex::unlock((this + 24));
}

void IR::IRDataLoader::Implementation::getLoadedIR(uint64_t a1@<X0>, const IR::IRDataAttributes *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a3;
  IR::IRDataAttributes::IRDataAttributes(v18, a2);
  std::recursive_mutex::lock((a1 + 24));
  v7 = std::find_if[abi:ne200100]<std::__wrap_iter<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>> *>,IR::IRDataLoader::Implementation::getLoadedIR(IR::IRDataAttributes const&,std::optional<PersonalizedHRIRType const>)::$_0>(*a1, *(a1 + 8), v18, &v23);
  v8 = *(a1 + 8);
  if (v8 != v7)
  {
    goto LABEL_2;
  }

  if ((*(a2 + 120) & 1) == 0)
  {
    v21 = 1;
    v7 = std::find_if[abi:ne200100]<std::__wrap_iter<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>> *>,IR::IRDataLoader::Implementation::getLoadedIR(IR::IRDataAttributes const&,std::optional<PersonalizedHRIRType const>)::$_0>(*a1, v8, v18, &v23);
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  v21 = 0;
  v16 = std::find_if[abi:ne200100]<std::__wrap_iter<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>> *>,IR::IRDataLoader::Implementation::getLoadedIR(IR::IRDataAttributes const&,std::optional<PersonalizedHRIRType const>)::$_0>(*a1, v8, v18, &v23);
  v7 = v16;
  if (*(a1 + 8) == v16)
  {
    goto LABEL_2;
  }

  v17 = *(v16 + 160);
  if (!v17)
  {
    goto LABEL_2;
  }

  v9 = std::__shared_weak_count::lock(v17);
  if (v9 && v7[19])
  {
    operator new();
  }

LABEL_3:
  if (v7 == *(a1 + 8))
  {
    v12 = 0;
    v11 = v9;
    goto LABEL_22;
  }

  v10 = v7[20];
  if (!v10)
  {
    v12 = 0;
    v11 = 0;
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_8;
  }

  v11 = std::__shared_weak_count::lock(v10);
  if (v11)
  {
    v12 = v7[19];
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v7 + 21 != v13)
    {
      do
      {
        v14 = v7 + 21;
        std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>::operator=[abi:ne200100](v7, v7 + 21);
        v15 = (v7 + 42);
        v7 += 21;
      }

      while (v15 != v13);
      v13 = *(a1 + 8);
      v7 = v14;
    }

    while (v13 != v7)
    {
      v13 = (v13 - 168);
      std::__destroy_at[abi:ne200100]<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>,0>(v13);
    }

    v12 = 0;
    *(a1 + 8) = v7;
  }

LABEL_22:
  *a4 = v12;
  a4[1] = v11;
  std::recursive_mutex::unlock((a1 + 24));
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18[0])
  {
    CFRelease(v18[0]);
  }
}

void sub_296BD0DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::recursive_mutex::unlock((v20 + 24));
  IR::IRDataAttributes::~IRDataAttributes(&a20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

uint64_t std::find_if[abi:ne200100]<std::__wrap_iter<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>> *>,IR::IRDataLoader::Implementation::getLoadedIR(IR::IRDataAttributes const&,std::optional<PersonalizedHRIRType const>)::$_0>(uint64_t a1, uint64_t a2, float *a3, int *a4)
{
  v4 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      if (IR::IRDataAttributes::operator==(a3, v4))
      {
        if (*(a4 + 4) != 1)
        {
          return v4;
        }

        v8 = *(v4 + 160);
        if (!v8)
        {
          goto LABEL_19;
        }

        v9 = std::__shared_weak_count::lock(v8);
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = *(v4 + 152);
        if (v11)
        {
          if ((a4[1] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v12 = *a4;
          v13 = *(IR::IRData::getIRDataAttributes(v11) + 48);
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          if (v12 == v13)
          {
            return v4;
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (a3[2] != 0.0)
        {
          goto LABEL_19;
        }

        if (!IR::IRDataAttributes::equalsExceptSampleRate(a3, v4))
        {
          goto LABEL_19;
        }

        v14 = *(v4 + 160);
        if (!v14)
        {
          goto LABEL_19;
        }

        v15 = std::__shared_weak_count::lock(v14);
        if (!v15)
        {
          goto LABEL_19;
        }

        v10 = v15;
        v16 = *(v4 + 152);
        if (v16)
        {
          OriginalSampleRate = IR::IRData::getOriginalSampleRate(*(v4 + 152));
          if (OriginalSampleRate == IR::IRData::getSampleRate(v16))
          {
            if (*(a4 + 4) != 1 || (v18 = *a4, v18 == *(IR::IRData::getIRDataAttributes(v16) + 48)))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
              return v4;
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_19:
      v4 += 168;
      if (v4 == a2)
      {
        return a2;
      }
    }
  }

  return v4;
}

void IR::IRDataLoader::Implementation::addIRDataToCache(uint64_t a1, uint64_t *a2, IR::IRDataAttributes *a3, IR::IRData **a4)
{
  v34 = *MEMORY[0x29EDCA608];
  IR::IRDataAttributes::IRDataAttributes(&v23, a3);
  v7 = *a4;
  if (!*a4)
  {
    goto LABEL_23;
  }

  v8 = SampleRate;
  if (SampleRate == 0.0)
  {
    SampleRate = IR::IRData::getSampleRate(v7);
    IRDataLog = IR::getIRDataLog(v9);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      v20 = applesauce::CF::URLRef::operator->(&v23);
      applesauce::CF::get_filesystem_path(*v20, &theString);
      CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
      *buf = 136315650;
      v29 = a2;
      v30 = 2080;
      v31 = "addIRDataToCache";
      v32 = 2080;
      v33 = CStringPtr;
      _os_log_debug_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEBUG, "%s%s: Added to cache: %s", buf, 0x20u);
      applesauce::CF::StringRef::~StringRef(&theString);
    }
  }

  else if (v8 != IR::IRData::getSampleRate(v7))
  {
    v14 = IR::getIRDataLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      IR::IRDataLoader::Implementation::addIRDataToCache();
    }

    goto LABEL_23;
  }

  std::recursive_mutex::lock((a1 + 24));
  v11 = *a1;
  v12 = *(a1 + 8);
  if (*a1 != v12)
  {
    while ((IR::IRDataAttributes::operator==(v11, &v23) & 1) == 0)
    {
      v11 += 21;
      if (v11 == v12)
      {
        v11 = v12;
        goto LABEL_17;
      }
    }

    if (v11 != v12)
    {
      for (i = v11 + 21; i != v12; i += 21)
      {
        if ((IR::IRDataAttributes::operator==(i, &v23) & 1) == 0)
        {
          std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>::operator=[abi:ne200100](v11, i);
          v11 += 21;
        }
      }
    }
  }

LABEL_17:
  std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::erase(a1, v11, *(a1 + 8));
  v16 = *(a1 + 8);
  if (v16 >= *(a1 + 16))
  {
    v19 = std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::__emplace_back_slow_path<IR::IRDataAttributes&,std::shared_ptr<IR::IRData const> const&>(a1, &v23, a4);
  }

  else
  {
    v17 = IR::IRDataAttributes::IRDataAttributes(v16, &v23);
    v18 = a4[1];
    *(v17 + 19) = *a4;
    *(v17 + 20) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(v18 + 2, 1uLL, memory_order_relaxed);
    }

    v19 = v17 + 168;
  }

  *(a1 + 8) = v19;
  std::recursive_mutex::unlock((a1 + 24));
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v23)
  {
    CFRelease(v23);
  }
}

void IR::IRDataLoader::Implementation::rebuildPersonalizedHRTFCache(IR::IRDataLoader::Implementation *this)
{
  v1 = 0;
  v9 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong(this + 152, &v1, 1u);
  if (!v1)
  {
    std::recursive_mutex::lock((this + 24));
    v3 = *this;
    v4 = *(this + 1);
    if (*this == v4)
    {
      goto LABEL_14;
    }

    while (!*(v3 + 48))
    {
      v3 += 168;
      if (v3 == v4)
      {
        v3 = *(this + 1);
        goto LABEL_14;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 168;
      if ((v3 + 168) != v4)
      {
        do
        {
          if (!*(v6 + 48))
          {
            std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>::operator=[abi:ne200100](v3, v6);
            v3 += 168;
          }

          v6 += 168;
        }

        while (v6 != v4);
        v4 = *(this + 1);
      }
    }

LABEL_14:
    std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::erase(this, v3, v4);
    std::recursive_mutex::unlock((this + 24));
    operator new();
  }

  IRDataLog = IR::getIRDataLog(this);
  if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "rebuildPersonalizedHRTFCache";
    _os_log_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEFAULT, "%s: Personalized HRTF cache rebuilding is already in progress.", &v7, 0xCu);
  }
}

void IR::IRDataLoader::Implementation::executePersonalizedHRTFCallbacks(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v20 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v3 = IR::PersonalizedIRData::CheckSupport((a1 + 160), 0) ^ 1;
  }

  std::recursive_mutex::lock((a1 + 88));
  if (!a2)
  {
    atomic_store(0, (a1 + 152));
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    if (a2)
    {
      v8 = "Unchanged";
    }

    else
    {
      v8 = "Modified";
    }

    if (v3)
    {
      v9 = "Invalid";
    }

    else
    {
      v9 = "Valid";
    }

    do
    {
      if ((a2 != 1 || *(v7 + 10) != 1) && v7[9])
      {
        IRDataLog = IR::getIRDataLog(v6);
        if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v7 + 2;
          if (*(v7 + 39) < 0)
          {
            v11 = *v11;
          }

          *buf = 136315906;
          v13 = "executePersonalizedHRTFCallbacks";
          v14 = 2080;
          v15 = v8;
          v16 = 2080;
          v17 = v9;
          v18 = 2080;
          v19 = v11;
          _os_log_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEFAULT, "%s: Executing client callback with (DataStatus, DataValidity) = (%s, %s) for clientID = %s.", buf, 0x2Au);
        }

        v6 = std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator()((v7 + 6), a2, v3);
      }

      v7 = *v7;
    }

    while (v7);
  }

  std::recursive_mutex::unlock((a1 + 88));
}

uint64_t IR::IRDataLoader::Implementation::checkIfPersonalizedHRTFIsAllowed(IR::IRDataLoader::Implementation *this)
{
  std::recursive_mutex::lock((this + 24));
  v2 = IR::PersonalizedIRData::CheckSupport(this + 20, 0);
  std::recursive_mutex::unlock((this + 24));
  return v2;
}

uint64_t IR::IRDataLoader::Implementation::hasFailedToFetchPersonalizedHRTF(IR::IRDataLoader::Implementation *this)
{
  v8 = *MEMORY[0x29EDCA608];
  std::recursive_mutex::lock((this + 24));
  Status = IR::PersonalizedIRData::GetStatus((this + 160));
  v3 = (HIDWORD(Status) == 1) & Status;
  if (v3 == 1)
  {
    IRDataLog = IR::getIRDataLog(Status);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "hasFailedToFetchPersonalizedHRTF";
      _os_log_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEFAULT, "%s: Personalized HRTF is invalid/not enrolled.", &v6, 0xCu);
    }
  }

  std::recursive_mutex::unlock((this + 24));
  return v3;
}

uint64_t std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  std::recursive_mutex::lock((a1 + 88));
  if (std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::find<std::string>((a1 + 168), a2) && (*buf = a2, v8 = std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 168), a2), *(v8 + 10) == a4))
  {
    IRDataLog = IR::getIRDataLog(v8);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      v10 = "OnDataOrAccessiblityChange";
      *buf = 136315650;
      *&buf[4] = "addToPersonalizedHRTFCallbackPool";
      v18 = 2080;
      v19 = a2;
      if (a4 == 1)
      {
        v10 = "OnDataChangeOnly";
      }

      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEFAULT, "%s: ID %s already exists in personalized HRTF callback pool (%s).", buf, 0x20u);
    }
  }

  else
  {
    *buf = a4;
    std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::__value_func[abi:ne200100](&buf[8], a3);
    v16 = a2;
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 168), a2);
    std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>::operator=[abi:ne200100](v11 + 10, buf);
    v12 = std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](&buf[8]);
    v13 = IR::getIRDataLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "OnDataOrAccessiblityChange";
      if (a4 == 1)
      {
        v14 = "OnDataChangeOnly";
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      *buf = 136315650;
      *&buf[4] = "addToPersonalizedHRTFCallbackPool";
      v18 = 2080;
      v19 = v14;
      v20 = 2080;
      v21 = a2;
      _os_log_impl(&dword_296B9D000, v13, OS_LOG_TYPE_DEFAULT, "%s: Callback is added in the personalized HRTF callback pool (%s) with caller ID %s.", buf, 0x20u);
    }

    v15 = a1;
    if (atomic_load_explicit(&IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::sOnceflag, memory_order_acquire) != -1)
    {
      *buf = &v15;
      v16 = buf;
      std::__call_once(&IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::sOnceflag, &v16, std::__call_once_proxy[abi:ne200100]<std::tuple<IR::IRDataLoader::Implementation::addToPersonalizedHRTFCallbackPool(std::string,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>,IR::PersonalizedHRIRCallbackType)::$_0 &&>>);
    }
  }

  std::recursive_mutex::unlock((a1 + 88));
}

_DWORD *std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>::operator=[abi:ne200100](_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator=[abi:ne200100]((a1 + 2), (a2 + 2));
  return a1;
}

void IR::IRDataLoader::Implementation::removeFromPersonalizedHRTFCallbackPool(uint64_t a1, const void **a2)
{
  v10 = *MEMORY[0x29EDCA608];
  std::recursive_mutex::lock((a1 + 88));
  if (std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::find<std::string>((a1 + 168), a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<IR::PersonalizedHRIRCallbackType,std::function<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>>>>>::__erase_unique<std::string>((a1 + 168), a2);
    IRDataLog = IR::getIRDataLog(v4);
    if (os_log_type_enabled(IRDataLog, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      v6 = 136315394;
      v7 = "removeFromPersonalizedHRTFCallbackPool";
      v8 = 2080;
      v9 = a2;
      _os_log_impl(&dword_296B9D000, IRDataLog, OS_LOG_TYPE_DEFAULT, "%s: Callback for caller ID %s is removed from Personalized HRTF callback pool.", &v6, 0x16u);
    }
  }

  std::recursive_mutex::unlock((a1 + 88));
}

uint64_t IR::IRDataLoader::Implementation::getPersonalizedHRTFCacheStatus(IR::IRDataLoader::Implementation *this)
{
  std::recursive_mutex::lock((this + 24));
  Status = IR::PersonalizedIRData::GetStatus((this + 160));
  std::recursive_mutex::unlock((this + 24));
  return Status;
}

void IR::IRDataLoader::Implementation::clearPersonalizedIRDataCache(IR::IRDataLoader::Implementation *this)
{
  std::recursive_mutex::lock((this + 24));
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    while (!*(v2 + 48))
    {
      v2 += 168;
      if (v2 == v3)
      {
        v2 = *(this + 1);
        goto LABEL_11;
      }
    }

    if (v2 != v3)
    {
      v4 = v2 + 168;
      if ((v2 + 168) != v3)
      {
        do
        {
          if (!*(v4 + 48))
          {
            std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>::operator=[abi:ne200100](v2, v4);
            v2 += 168;
          }

          v4 += 168;
        }

        while (v4 != v3);
        v3 = *(this + 1);
      }
    }
  }

LABEL_11:
  std::vector<std::pair<IR::IRDataAttributes,std::weak_ptr<IR::IRData const>>>::erase(this, v2, v3);
  IR::PersonalizedIRData::ClearCache(this + 20);

  std::recursive_mutex::unlock((this + 24));
}