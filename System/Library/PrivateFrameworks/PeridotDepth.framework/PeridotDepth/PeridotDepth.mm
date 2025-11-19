void getInfoForDimensions(CGSize a1, uint64_t a2)
{
  height = a1.height;
  width = a1.width;
  v11 = +[PDUserDefaults defaults];
  v5 = [v11 storeRawFramesInPointCloud];
  *(a2 + 48) = 0x1D2024C08;
  *(a2 + 64) = 0;
  *a2 = width;
  *(a2 + 8) = height;
  if (width == 512.0 && height == 768.0)
  {
    v8 = 2;
  }

  else if (width == 1024.0 && height == 768.0)
  {
    v8 = 4;
  }

  else if (width == 0.0 && height == 0.0)
  {
    v8 = 8;
  }

  else
  {
    v8 = 8;
    v9 = v5;
    peridot_depth_log("Unknown raw sensor dimensions: %fx%f. Will allow up to %zu banks per frame.", width, height, 8uLL);
    v5 = v9;
  }

  *(a2 + 16) = v8;
  *(a2 + 24) = 42 * v8;
  *(a2 + 56) = 224 * v8;
  if (v5)
  {
    v10 = (width * height);
    *(a2 + 64) = v10;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 32) = v10 + 224 * v8 + 24;
  *(a2 + 40) = [MEMORY[0x277CED0A0] requiredStorageBytesForLength:? additionalDataSize:?];
}

CFMutableDataRef PDPeridotCalibCreateWithBinaryRepresentation(const __CFData *a1)
{
  if (!a1 || CFDataGetLength(a1) != 402528 || *CFDataGetBytePtr(a1) != 9)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];

  return CFDataCreateMutableCopy(v2, 402528, a1);
}

void SparseMatrix::SparseMatrix(SparseMatrix *this, int a2, int a3, const int *a4, int a5, int a6)
{
  *(this + 10) = a2;
  *(this + 11) = a6;
  *(this + 8) = a5 + a3 * a6;
  *(this + 9) = a3;
  operator new[]();
}

void SparseMatrix::SparseMatrix(SparseMatrix *a1, int a2, int a3, const int **a4, int a5)
{
  v7 = *a4;
  v8 = a4[1];
  if (v7 == v8)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v9 = v8 - v7 - 4;
  if (v9 >= 0x1C)
  {
    v12 = (v9 >> 2) + 1;
    v11 = &v7[v12 & 0x7FFFFFFFFFFFFFF8];
    v13 = (v7 + 4);
    v14 = 0uLL;
    v15 = v12 & 0x7FFFFFFFFFFFFFF8;
    v16 = 0uLL;
    do
    {
      v14 = vaddq_s32(v13[-1], v14);
      v16 = vaddq_s32(*v13, v16);
      v13 += 2;
      v15 -= 8;
    }

    while (v15);
    v10 = vaddvq_s32(vaddq_s32(v16, v14));
    if (v12 == (v12 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_5:
      SparseMatrix::SparseMatrix(a1, a2, a3, v7, v10, a5);
    }
  }

  else
  {
    v10 = 0;
    v11 = v7;
  }

  do
  {
    v17 = *v11++;
    v10 += v17;
  }

  while (v11 != v8);
  goto LABEL_5;
}

{
  v7 = *a4;
  v8 = a4[1];
  if (v7 == v8)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v9 = v8 - v7 - 4;
  if (v9 >= 0x1C)
  {
    v12 = (v9 >> 2) + 1;
    v11 = &v7[v12 & 0x7FFFFFFFFFFFFFF8];
    v13 = (v7 + 4);
    v14 = 0uLL;
    v15 = v12 & 0x7FFFFFFFFFFFFFF8;
    v16 = 0uLL;
    do
    {
      v14 = vaddq_s32(v13[-1], v14);
      v16 = vaddq_s32(*v13, v16);
      v13 += 2;
      v15 -= 8;
    }

    while (v15);
    v10 = vaddvq_s32(vaddq_s32(v16, v14));
    if (v12 == (v12 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_5:
      SparseMatrix::SparseMatrix(a1, a2, a3, v7, v10, a5);
    }
  }

  else
  {
    v10 = 0;
    v11 = v7;
  }

  do
  {
    v17 = *v11++;
    v10 += v17;
  }

  while (v11 != v8);
  goto LABEL_5;
}

void SparseMatrix::SparseMatrix(SparseMatrix *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

double SparseMatrix::freeMem(SparseMatrix *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x22AA53170](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x22AA53170](v4, 0x1000C8052888210);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x22AA53170](v5, 0x1000C8052888210);
  }

  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void SparseMatrix::~SparseMatrix(SparseMatrix *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x22AA53170](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x22AA53170](v4, 0x1000C8052888210);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x22AA53170](v5, 0x1000C8052888210);
  }

  *this = 0u;
  *(this + 1) = 0u;
}

{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x22AA53170](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x22AA53170](v4, 0x1000C8052888210);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x22AA53170](v5, 0x1000C8052888210);
  }

  *this = 0u;
  *(this + 1) = 0u;
}

void SparseMatrix::SparseMatrix(SparseMatrix *this, const SparseMatrix *a2)
{
  *(this + 2) = *(a2 + 2);
  operator new[]();
}

{
  *(this + 2) = *(a2 + 2);
  operator new[]();
}

double SparseMatrix::SparseMatrix(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  v2 = a2[2];
  a1[1] = a2[1];
  a1[2] = v2;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

{
  *a1 = *a2;
  v2 = a2[2];
  a1[1] = a2[1];
  a1[2] = v2;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t *SparseMatrix::operator=(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    MEMORY[0x22AA53170](v4, 0x1000C8000313F17);
  }

  v5 = a1[1];
  if (v5)
  {
    MEMORY[0x22AA53170](v5, 0x1000C8052888210);
  }

  v6 = a1[2];
  if (v6)
  {
    MEMORY[0x22AA53170](v6, 0x1000C8052888210);
  }

  v7 = a1[3];
  if (v7)
  {
    MEMORY[0x22AA53170](v7, 0x1000C8052888210);
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  *a1 = *a2;
  v8 = a2[2];
  *(a1 + 1) = a2[1];
  *(a1 + 2) = v8;
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

uint64_t SparseMatrix::AddValue(uint64_t this, int a2, int a3, double a4)
{
  v4 = 4 * a3;
  v5 = *(this + 24);
  v6 = (*(this + 16) + v4);
  v7 = *(v5 + v4) + *v6;
  if (*(this + 36) - 1 == a3)
  {
    v8 = *(this + 32);
  }

  else
  {
    v8 = v6[1];
  }

  if (v7 >= v8)
  {
    SparseMatrix::AddValue();
  }

  v9 = *(this + 8);
  *(*this + 8 * v7) = a4;
  *(v9 + 4 * v7) = a2;
  ++*(v5 + 4 * a3);
  return this;
}

uint64_t SparseMatrix::Expand(uint64_t this, int a2, unint64_t a3)
{
  v3 = *(this + 44);
  if (v3 < a3)
  {
    SparseMatrix::Expand();
  }

  *(this + 40) += a2;
  *(this + 44) = v3 - a3;
  return this;
}

uint64_t SparseMatrix::Squeeze(uint64_t this, int a2, int a3)
{
  v3 = *(this + 36);
  v4 = *(this + 44) + a3;
  *(this + 40) -= a2;
  *(this + 44) = v4;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = *(this + 24);
    do
    {
      *(v6 + 4 * v5++) -= a3;
    }

    while (v5 < *(this + 36));
  }

  return this;
}

double SparseMatrix::operator()(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 40) <= a2 || *(a1 + 36) <= a3)
  {
    SparseMatrix::operator()();
  }

  v3 = *(*(a1 + 24) + 4 * a3);
  result = 0.0;
  if (v3 >= 1)
  {
    for (i = *(*(a1 + 16) + 4 * a3); *(*(a1 + 8) + 4 * i) != a2; ++i)
    {
      if (!--v3)
      {
        return result;
      }
    }

    return *(*a1 + 8 * i);
  }

  return result;
}

uint64_t SparseMatrix::MultATagxB@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 36);
  *a2 = &unk_283809BF8;
  if (v2)
  {
    operator new[]();
  }

  result = 0;
  *(a2 + 16) = 1;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = &unk_283809C28;
  *(a2 + 8) = 0;
  return result;
}

void SparseMatrix::operator*(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 10);
  *a3 = &unk_283809BF8;
  if (v6)
  {
    operator new[]();
  }

  *(a3 + 16) = 1;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = &unk_283809C28;
  *(a3 + 8) = 0;
  bzero(0, 0);
  v7 = *(a1 + 9);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = a1[2];
    v10 = a1[3];
    do
    {
      v11 = *(v10 + 4 * v8);
      if (v11 >= 1)
      {
        v12 = *(v9 + 4 * v8);
        v13 = v11 + v12;
        v14 = *a1;
        v15 = a1[1];
        do
        {
          *(*(a3 + 8) + 8 * *(v15 + 4 * v12)) = *(*(a3 + 8) + 8 * *(v15 + 4 * v12)) + *(v14 + 8 * v12) * *(*(a2 + 8) + 8 * v8);
          ++v12;
        }

        while (v12 < v13);
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void *SparseMatrix::ReverseStorageOfColumn(void *this, int a2)
{
  v2 = *(this[3] + 4 * a2);
  if (v2)
  {
    v3 = *(this[2] + 4 * a2);
    v4 = (*this + 8 * v3);
    v5 = (8 * v3 + 8 * v2 + *this - 8);
    do
    {
      if (v5 == v4)
      {
        break;
      }

      v6 = *v4;
      *v4++ = *v5;
      v7 = v5 == v4;
      *v5-- = v6;
    }

    while (!v7);
    v8 = this[1];
    v9 = 4 * v3;
    v10 = (v8 + 4 * v3);
    v11 = (v9 + 4 * v2 + v8 - 4);
    do
    {
      if (v11 == v10)
      {
        break;
      }

      v12 = *v10;
      *v10++ = *v11;
      v7 = v11 == v10;
      *v11-- = v12;
    }

    while (!v7);
  }

  return this;
}

double SparseMatrix::GetColumnAsDenseVector@<D0>(SparseMatrix *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 10);
  *a3 = &unk_283809BF8;
  if (v6)
  {
    operator new[]();
  }

  *(a3 + 16) = 1;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = &unk_283809C28;
  *(a3 + 8) = 0;
  bzero(0, 0);
  v8 = *(*(this + 3) + 4 * a2);
  if (v8 >= 1)
  {
    v9 = *(this + 1);
    v10 = *(*(this + 2) + 4 * a2);
    v11 = v8 + v10;
    v12 = *this;
    do
    {
      result = *(v12 + 8 * v10);
      *(*(a3 + 8) + 8 * *(v9 + 4 * v10++)) = result;
    }

    while (v10 < v11);
  }

  return result;
}

double SparseMatrix::CopyColumnToDenseVector(SparseMatrix *this, int a2, double *a3)
{
  bzero(a3, 8 * *(this + 10));
  v7 = *(*(this + 3) + 4 * a2);
  if (v7 >= 1)
  {
    v8 = *(this + 1);
    v9 = *(*(this + 2) + 4 * a2);
    v10 = v7 + v9;
    v11 = *this;
    do
    {
      result = *(v11 + 8 * v9);
      a3[*(v8 + 4 * v9++)] = result;
    }

    while (v9 < v10);
  }

  return result;
}

uint64_t SparseMatrix::GetColumnAsSparseVector@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 40);
  v4 = *(*(this + 24) + 4 * a2);
  v5 = *(*(this + 16) + 4 * a2);
  v6 = *(this + 8) + 4 * v5;
  v7 = *this + 8 * v5;
  *(a3 + 16) = v4;
  *(a3 + 20) = v4;
  *(a3 + 24) = v3;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return this;
}

uint64_t SparseMatrix::SolveLTInPlace(uint64_t result, uint64_t a2)
{
  v2 = *(result + 36);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = *result;
    v6 = *(result + 16);
    v7 = *(result + 24);
    v8 = *result + 8;
    v9 = *result + 24;
    v10 = (v4 + 24);
    v11 = v4;
    do
    {
      v12 = (v4 + 8 * v3);
      result = *(v6 + 4 * v3);
      v13 = *v12 / *(*&v5 + 8 * result);
      *v12 = v13;
      v14 = (v12 + 1);
      v15 = *(v7 + 4 * v3);
      if (v15 >= 2)
      {
        if (v15 > 4 && ((v16 = &v12[v15], v14 < *&v5 + 8 * result + 8 * v15) ? (v17 = v8 + 8 * result >= v16) : (v17 = 1), v17))
        {
          v18 = (v15 - 1) & 0xFFFFFFFFFFFFFFFCLL;
          v19 = v18 | 1;
          v20 = vdupq_lane_s64(*&v13, 0);
          v21 = (v9 + 8 * result);
          v22 = v18;
          v23 = v10;
          do
          {
            v24 = vmlsq_f64(*v23, v20, *v21);
            v23[-1] = vmlsq_f64(v23[-1], v20, v21[-1]);
            *v23 = v24;
            v21 += 2;
            v23 += 2;
            v22 -= 4;
          }

          while (v22);
          if (v15 - 1 == v18)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v19 = 1;
        }

        v25 = (v11 + 8 * v19);
        result = *&v5 + 8 * v19 + 8 * result;
        v26 = v15 - v19;
        do
        {
          v27 = *result;
          result += 8;
          *v25 = *v25 - v27 * v13;
          ++v25;
          --v26;
        }

        while (v26);
      }

LABEL_3:
      ++v3;
      v10 = (v10 + 8);
      v11 += 8;
    }

    while (v3 != v2);
  }

  return result;
}

void SparseMatrix::Serialize(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v40[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *a2, *(a2 + 8));
  }

  else
  {
    v34 = *a2;
  }

  std::ofstream::basic_ofstream(&v38);
  v8 = *(a1 + 36);
  v9 = *(a1 + 40);
  v28 = &unk_283809BF8;
  if (v8 * v9)
  {
    operator new[]();
  }

  v29 = 0;
  v30 = v9;
  v31 = v8;
  v32 = 0;
  v33 = 8 * v9 * v8;
  bzero(0, 0);
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    do
    {
      v13 = *(v12 + 4 * v10);
      if (v13 >= 1)
      {
        if (v10 < v8)
        {
          v14 = *(v11 + 4 * v10);
          v15 = v13 + v14;
          v16 = *(a1 + 8);
          while (1)
          {
            v17 = *(v16 + 4 * v14);
            if (v9 <= v17)
            {
              break;
            }

            *(v29 + 8 * v10 + 8 * v17 * v8) = *(*a1 + 8 * v14++);
            if (v14 >= v15)
            {
              goto LABEL_8;
            }
          }
        }

        __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
      }

LABEL_8:
      ++v10;
    }

    while (v10 != (v8 & ~(v8 >> 31)));
  }

  if ((a3 & 1) != 0 && v9 && v8)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      if (v19)
      {
        v20 = 0;
        do
        {
          std::ostream::write();
          ++v20;
          v19 = v30;
        }

        while (v20 < v30);
        LODWORD(v8) = v31;
      }

      ++v18;
    }

    while (v18 < v8);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v39[*(v38 - 24) - 8], *&v39[*(v38 - 24) + 24] | 4);
  }

  if (a4)
  {
    v21 = *(a2 + 23);
    if (v21 >= 0)
    {
      v22 = *(a2 + 23);
    }

    else
    {
      v22 = *(a2 + 8);
    }

    if (v22 + 5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 + 5 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v27 = 0;
    __p[0] = 0;
    HIBYTE(v27) = v22 + 5;
    if (v22)
    {
      if ((v21 & 0x80u) == 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      memmove(__p, v23, v22);
    }

    strcpy(__p + v22, ".meta");
    std::ofstream::basic_ofstream(&v35);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    v24 = MEMORY[0x22AA53010](&v35, *(a1 + 36));
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    MEMORY[0x22AA53010](v24, *(a1 + 40));
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v36[*(v35 - 24) - 8], *&v36[*(v35 - 24) + 24] | 4);
    }

    v35 = *MEMORY[0x277D82810];
    *&v36[*(v35 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
    MEMORY[0x22AA52F40](v36);
    std::ostream::~ostream();
    MEMORY[0x22AA53140](&v37);
  }

  v28 = &unk_283809BF8;
  if (v29 && v32 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v38 = *MEMORY[0x277D82810];
  *&v39[*(v38 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x22AA52F40](v39);
  std::ostream::~ostream();
  MEMORY[0x22AA53140](v40);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_22466AC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18 && a20 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v28 = MEMORY[0x277D82810];
  v29 = *MEMORY[0x277D82810];
  STACK[0x2A8] = *MEMORY[0x277D82810];
  *(&STACK[0x2A8] + *(v29 - 24)) = *(v28 + 24);
  MEMORY[0x22AA52F40](&STACK[0x2B0]);
  std::ostream::~ostream();
  MEMORY[0x22AA53140](&STACK[0x448]);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x22AA52F30](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x22AA52F30](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22466AF58(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x22AA53140](v1);
  _Unwind_Resume(a1);
}

void sub_22466B130(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x22AA53140](v1);
  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x22AA52F40](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x22AA53140](a1 + 52);
  return a1;
}

void SparseVector::SparseVector(SparseVector *this, int a2, int a3, int *a4, double *a5, char a6)
{
  *(this + 4) = a3;
  *(this + 5) = a3;
  *(this + 6) = a2;
  *(this + 28) = a6;
  *(this + 8) = 0;
  if (a6)
  {
    operator new[]();
  }

  *this = a5;
  *(this + 1) = a4;
  *(this + 6) = 0;
  *(this + 5) = 0;
}

void SparseVector::SparseVector(SparseVector *this, int a2, int a3)
{
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

{
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

void SparseVector::~SparseVector(SparseVector *this)
{
  if (*(this + 28) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    }

    if (*this)
    {
      MEMORY[0x22AA53170](*this, 0x1000C8000313F17);
    }
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x22AA53170](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x22AA53170](v4, 0x1000C8000313F17);
  }
}

{
  if (*(this + 28) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    }

    if (*this)
    {
      MEMORY[0x22AA53170](*this, 0x1000C8000313F17);
    }
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x22AA53170](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x22AA53170](v4, 0x1000C8000313F17);
  }
}

__n128 SparseVector::SparseVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 28) = 0;
  return result;
}

{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 28) = 0;
  return result;
}

void SparseVector::SparseVector(SparseVector *this, const SparseVector *a2)
{
  v2 = *(a2 + 20);
  *(this + 4) = v2;
  *(this + 20) = v2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

{
  v2 = *(a2 + 20);
  *(this + 4) = v2;
  *(this + 20) = v2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

uint64_t SparseVector::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    SparseVector::operator=();
  }

  if (*(a1 + 16) < *(a2 + 16))
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      MEMORY[0x22AA53170](v4, 0x1000C8052888210);
    }

    if (*a1)
    {
      MEMORY[0x22AA53170](*a1, 0x1000C8000313F17);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      MEMORY[0x22AA53170](v5, 0x1000C8052888210);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      MEMORY[0x22AA53170](v6, 0x1000C8000313F17);
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    operator new[]();
  }

  memcpy(*(a1 + 8), *(a2 + 8), 4 * *(a2 + 20));
  memcpy(*a1, *a2, 8 * *(a2 + 20));
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t SparseVector::MultATagxB(uint64_t this, const SparseVector *a2)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v4 = *(this + 8);
  v5 = *(this + 20);
  v6 = 0.0;
  v7 = *(a2 + 1);
LABEL_2:
  v9 = *v4++;
  v8 = v9;
  v10 = *v7;
  v2 = v2;
  if (v9 >= *v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  while (v2 + 1 < v5)
  {
    v11 = *v4++;
    v8 = v11;
    ++v2;
    if (v11 >= v10)
    {
LABEL_5:
      while (v10 < v8)
      {
        if (++v3 >= v5)
        {
          return this;
        }

        v12 = v7[1];
        ++v7;
        v10 = v12;
        v2 = v2;
        if (v8 < v12)
        {
          goto LABEL_3;
        }
      }

      v6 = v6 + *(*this + 8 * v2) * *(*a2 + 8 * v3);
      LODWORD(v2) = v2 + 1;
      if (v2 < v5 && ++v3 < *(a2 + 5))
      {
        ++v7;
        goto LABEL_2;
      }

      return this;
    }
  }

  return this;
}

uint64_t SparseVector::AddWithFactor(uint64_t this, const SparseVector *a2, double a3)
{
  if ((*(this + 28) & 1) == 0)
  {
    SparseVector::AddWithFactor();
  }

  if (*(this + 24) != *(a2 + 6))
  {
    SparseVector::AddWithFactor();
  }

  *(this + 32) = 0;
  v3 = *(a2 + 5);
  v4 = *this;
  v5 = *(this + 8);
  v6 = *(this + 20);
  v7 = *this + 8 * v6;
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *a2 + 8 * v3;
  v11 = 0;
  if (v6 >= 1 && v3 >= 1)
  {
    v13 = *this;
    v14 = *(this + 8);
    while (1)
    {
      v15 = *v14;
      v16 = *v9;
      if (*v14 == *v9)
      {
        break;
      }

      if (v15 >= v16)
      {
        if (*(this + 24) <= v16 || v11 >= *(this + 16))
        {
          SparseVector::AddWithFactor();
        }

        v24 = *v8 * a3;
        v25 = *(this + 40);
        *(*(this + 48) + 4 * v11) = v16;
        v26 = *(this + 32);
        *(v25 + 8 * v26) = v24;
        v11 = v26 + 1;
        *(this + 32) = v11;
LABEL_21:
        ++v8;
        ++v9;
        if (v13 >= v7)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

      if (*(this + 24) <= v15 || v11 >= *(this + 16))
      {
        SparseVector::AddWithFactor();
      }

      v21 = *v13++;
      v22 = *(this + 40);
      *(*(this + 48) + 4 * v11) = v15;
      v23 = *(this + 32);
      *(v22 + 8 * v23) = v21;
      v11 = v23 + 1;
      *(this + 32) = v11;
      ++v14;
      if (v13 >= v7)
      {
        goto LABEL_27;
      }

LABEL_22:
      if (v8 >= v10)
      {
        goto LABEL_27;
      }
    }

    if (*(this + 24) <= v15 || v11 >= *(this + 16))
    {
      SparseVector::AddWithFactor();
    }

    v17 = *v13++;
    v18 = v17 + a3 * *v8;
    v19 = *(this + 40);
    *(*(this + 48) + 4 * v11) = v15;
    v20 = *(this + 32);
    *(v19 + 8 * v20) = v18;
    v11 = v20 + 1;
    *(this + 32) = v11;
    ++v14;
    goto LABEL_21;
  }

  v14 = *(this + 8);
  v13 = *this;
LABEL_27:
  while (v13 < v7)
  {
    if (*(this + 24) <= *v14 || v11 >= *(this + 16))
    {
      SparseVector::AddWithFactor();
    }

    v27 = *v13++;
    v28 = *(this + 40);
    *(*(this + 48) + 4 * v11) = *v14;
    v29 = *(this + 32);
    *(v28 + 8 * v29) = v27;
    v11 = v29 + 1;
    *(this + 32) = v11;
    ++v14;
  }

  if (v8 >= v10)
  {
    *this = *(this + 40);
    *(this + 40) = v4;
    *(this + 48) = v5;
    *(this + 20) = v11;
  }

  else
  {
    do
    {
      if (*(this + 24) <= *v9 || v11 >= *(this + 16))
      {
        SparseVector::AddWithFactor();
      }

      v30 = *v8++;
      v31 = *(this + 40);
      *(*(this + 48) + 4 * v11) = *v9;
      v32 = *(this + 32);
      *(v31 + 8 * v32) = v30 * a3;
      v11 = v32 + 1;
      *(this + 32) = v11;
      ++v9;
    }

    while (v8 < v10);
    *this = v31;
    *(this + 40) = v4;
    *(this + 48) = v5;
    *(this + 20) = v11;
  }

  return this;
}

void SparseVector::operator-(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *(a3 + 16) = (*(a2 + 20) + *(a1 + 20));
  *(a3 + 24) = v3;
  *(a3 + 28) = 1;
  *(a3 + 32) = 0;
  operator new[]();
}

double operator+=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    do
    {
      v5 = *v3++;
      v6 = v5;
      LODWORD(v5) = *v4++;
      v7 = *(a1 + 8);
      result = v6 + *(v7 + 8 * LODWORD(v5));
      *(v7 + 8 * LODWORD(v5)) = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t SparseVector::Serialize(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 24);
  v14 = &unk_283809BF8;
  if (v6)
  {
    operator new[]();
  }

  v16 = 1;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v14 = &unk_283809C28;
  v15 = 0;
  bzero(0, 0);
  v7 = *(a1 + 20);
  if (v7 >= 1)
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    do
    {
      v10 = *v8++;
      v11 = v10;
      LODWORD(v10) = *v9++;
      *(v15 + 8 * v10) = v11;
      --v7;
    }

    while (v7);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  Matrix<double>::Serialize(&v14, &__p, a3, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = &unk_283809BF8;
  result = v15;
  if (v15)
  {
    if (v18 == 1)
    {
      return MEMORY[0x22AA53170]();
    }
  }

  return result;
}

void sub_22466C160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void sub_22466C174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MatrixNxPts<1u,double>::~MatrixNxPts(&a15);
  _Unwind_Resume(a1);
}

double SparseVector::GetAsDenseVector@<D0>(SparseVector *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 6);
  *a2 = &unk_283809BF8;
  if (v4)
  {
    operator new[]();
  }

  *(a2 + 16) = 1;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = &unk_283809C28;
  *(a2 + 8) = 0;
  bzero(0, 0);
  v6 = *(this + 5);
  if (v6 >= 1)
  {
    v7 = *this;
    v8 = *(this + 1);
    do
    {
      v9 = *v7++;
      result = v9;
      LODWORD(v9) = *v8++;
      *(*(a2 + 8) + 8 * LODWORD(v9)) = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

void Matrix<double>::Serialize(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v32[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  std::ofstream::basic_ofstream(&v30);
  if (a3)
  {
    v8 = *(a1 + 20);
    if (v8 && *(a1 + 16))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        if (v10)
        {
          for (i = 0; i < v10; ++i)
          {
            if (*(a1 + 20) <= v9)
            {
              __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
            }

            std::ostream::write();
            v10 = *(a1 + 16);
          }

          v8 = *(a1 + 20);
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  else
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      LODWORD(v13) = *(a1 + 20);
      if (v13)
      {
        for (j = 0; j < v12; ++j)
        {
          if (v13)
          {
            v15 = 0;
            v16 = 0;
            do
            {
              if (j >= *(a1 + 16))
              {
                __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
              }

              std::ostream::write();
              ++v16;
              v13 = *(a1 + 20);
              v15 += 8;
            }

            while (v16 < v13);
            v12 = *(a1 + 16);
          }
        }
      }
    }
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v31[*(v30 - 24) - 8], *&v31[*(v30 - 24) + 24] | 4);
  }

  if (a4)
  {
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = *(a2 + 8);
    }

    if (v18 + 5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v18 + 5 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    HIBYTE(v25) = v18 + 5;
    if (v18)
    {
      if ((v17 & 0x80u) == 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      memmove(__p, v21, v18);
    }

    strcpy(__p + v18, ".meta");
    std::ofstream::basic_ofstream(&v27);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    v22 = MEMORY[0x22AA53000](&v27, *(a1 + 20));
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    MEMORY[0x22AA53000](v22, *(a1 + 16));
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v28[*(v27 - 24) - 8], *&v28[*(v27 - 24) + 24] | 4);
    }

    v19 = *MEMORY[0x277D82810];
    v27 = *MEMORY[0x277D82810];
    v20 = *(MEMORY[0x277D82810] + 24);
    *&v28[*(v27 - 24) - 8] = v20;
    MEMORY[0x22AA52F40](v28);
    std::ostream::~ostream();
    MEMORY[0x22AA53140](&v29);
  }

  else
  {
    v19 = *MEMORY[0x277D82810];
    v20 = *(MEMORY[0x277D82810] + 24);
  }

  v30 = v19;
  *&v31[*(v19 - 24) - 8] = v20;
  MEMORY[0x22AA52F40](v31);
  std::ostream::~ostream();
  MEMORY[0x22AA53140](v32);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_22466C7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x277D82810];
  v23 = *MEMORY[0x277D82810];
  STACK[0x270] = *MEMORY[0x277D82810];
  *(&STACK[0x270] + *(v23 - 24)) = *(v22 + 24);
  MEMORY[0x22AA52F40](&STACK[0x278]);
  std::ostream::~ostream();
  MEMORY[0x22AA53140](&STACK[0x410]);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void Matrix<double>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809BF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27852C628, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void SparseVector::AddWithFactor()
{
  __assert_rtn("AddWithFactor", "SparseMatrix.cpp", 594, "m_ownsData");
}

{
  __assert_rtn("AddWithFactor", "SparseMatrix.cpp", 595, "this->m_size == rhs.m_size");
}

{
  __assert_rtn("AddValueToHelper", "SparseMatrix.hpp", 175, "pos<m_size && m_helperNNZ<m_maxNNZ");
}

void CRandomGenerator::CRandomGenerator(CRandomGenerator *this, unsigned int a2)
{
  *this = &unk_283809C60;
  v2 = 5489;
  v3 = 1;
  for (i = 3; i != 626; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(this + i) = i + v5 - 2;
    ++v3;
  }

  *(this + 2) = a2;
  v6 = 1;
  for (j = 3; j != 626; ++j)
  {
    v8 = 1812433253 * (a2 ^ (a2 >> 30));
    a2 = v8 + v6;
    *(this + j) = j + v8 - 2;
    ++v6;
  }

  *(this + 313) = 0;
}

{
  *this = &unk_283809C60;
  v2 = 5489;
  v3 = 1;
  for (i = 3; i != 626; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(this + i) = i + v5 - 2;
    ++v3;
  }

  *(this + 2) = a2;
  v6 = 1;
  for (j = 3; j != 626; ++j)
  {
    v8 = 1812433253 * (a2 ^ (a2 >> 30));
    a2 = v8 + v6;
    *(this + j) = j + v8 - 2;
    ++v6;
  }

  *(this + 313) = 0;
}

uint64_t CRandomGenerator::Init(uint64_t this, unsigned int a2)
{
  *(this + 8) = a2;
  v2 = 1;
  for (i = 3; i != 626; ++i)
  {
    v4 = 1812433253 * (a2 ^ (a2 >> 30));
    a2 = v4 + v2;
    *(this + 4 * i) = i + v4 - 2;
    ++v2;
  }

  *(this + 2504) = 0;
  return this;
}

float CRandomGenerator::UniformRand(CRandomGenerator *this)
{
  v1 = *(this + 313);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(this + v2 + 2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(this + (v1 + 397) % 0x270uLL + 2) ^ ((v3 & 0x7FFFFFFE | *(this + v1 + 2) & 0x80000000) >> 1);
  *(this + v1 + 2) = v5;
  *(this + 313) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return vcvts_n_f32_u32((v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18), 0x20uLL) + 0.0;
}

float CRandomGenerator::NormalRand(CRandomGenerator *this, float a2)
{
  v3[0] = 0.0;
  v3[1] = a2;
  v4 = 0;
  return std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v3, this + 8, v3);
}

float std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, float *a3)
{
  if (*(a1 + 12))
  {
    *(a1 + 12) = 0;
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = *(a2 + 2496);
    v7 = *(a2 + 4 * v6);
    do
    {
      v8 = (v6 + 1) % 0x270;
      v9 = *(a2 + 4 * v8);
      v10 = v9 & 0x7FFFFFFE | v7 & 0x80000000;
      if (v9)
      {
        v11 = -1727483681;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11 ^ *(a2 + 4 * ((v6 + 397) % 0x270)) ^ (v10 >> 1);
      *(a2 + 4 * v6) = v12;
      v13 = v12 ^ (v12 >> 11);
      v6 = v8 - 623;
      if (v8 < 0x26F)
      {
        v6 = v8 + 1;
      }

      v14 = (v13 << 7) & 0x9D2C5680 ^ v13;
      v7 = *(a2 + 4 * v6);
      if (v8 >= 0xE3)
      {
        v15 = -227;
      }

      else
      {
        v15 = 397;
      }

      v16 = *(a2 + 4 * (v15 + v8));
      if (v7)
      {
        v17 = -1727483681;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 ^ v16 ^ ((v7 & 0x7FFFFFFE | *(a2 + 4 * v8) & 0x80000000) >> 1);
      v19 = ((v18 ^ (v18 >> 11)) << 7) & 0x9D2C5680 ^ v18 ^ (v18 >> 11);
      v20 = (vcvts_n_f32_u32((v14 << 15) & 0xEFC60000 ^ v14 ^ (((v14 << 15) & 0xEFC60000 ^ v14) >> 18), 0x20uLL) * 2.0) + -1.0;
      v21 = (vcvts_n_f32_u32((v19 << 15) & 0xEFC60000 ^ v19 ^ (((v19 << 15) & 0xEFC60000 ^ v19) >> 18), 0x20uLL) * 2.0) + -1.0;
      v22 = (v21 * v21) + (v20 * v20);
      *(a2 + 4 * v8) = v18;
    }

    while (v22 > 1.0 || v22 == 0.0);
    *(a2 + 2496) = v6;
    v23 = sqrtf((logf((v21 * v21) + (v20 * v20)) * -2.0) / v22);
    *(a1 + 8) = v21 * v23;
    *(a1 + 12) = 1;
    v5 = v20 * v23;
  }

  return *a3 + (v5 * a3[1]);
}

void DisjointSet::DisjointSet(DisjointSet *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void DisjointSet::~DisjointSet(DisjointSet *this)
{
  if (*this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x22AA53170](v2, 0x1000C80BDFB0063);
    }
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x22AA531A0](v3, 0x1000C40BDFB0063);
  }

  *this = 0;
}

{
  if (*this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x22AA53170](v2, 0x1000C80BDFB0063);
    }
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x22AA531A0](v3, 0x1000C40BDFB0063);
  }

  *this = 0;
}

uint64_t DisjointSet::SetCapacity(uint64_t this, unsigned int a2)
{
  if (*this < a2)
  {
    if (*this)
    {
      v2 = *(this + 8);
      if (v2)
      {
        MEMORY[0x22AA53170](v2, 0x1000C80BDFB0063);
      }
    }

    operator new[]();
  }

  return this;
}

uint64_t DisjointSet::Compact(DisjointSet *this, unsigned int a2, int a3)
{
  if (a3)
  {
    v3 = *(this + 2);
    if (!v3)
    {
      operator new[]();
    }

    if (!a2)
    {
      goto LABEL_25;
    }

    v4 = 0;
    v5 = *(this + 1);
    if (a2 < 4 || (v3 - v5) < 0x20)
    {
      goto LABEL_17;
    }

    if (a2 >= 0x10)
    {
      v4 = a2 & 0xFFF0;
      v6 = (v5 + 16);
      v7 = (v3 + 16);
      v8 = v4;
      do
      {
        v9 = *v6;
        *(v7 - 1) = *(v6 - 1);
        *v7 = v9;
        v6 += 2;
        v7 += 2;
        v8 -= 16;
      }

      while (v8);
      if (v4 == a2)
      {
        goto LABEL_19;
      }

      if ((a2 & 0xC) == 0)
      {
LABEL_17:
        v15 = (v5 + 2 * v4);
        v16 = (v3 + 2 * v4);
        v17 = a2 - v4;
        do
        {
          v18 = *v15++;
          *v16++ = v18;
          --v17;
        }

        while (v17);
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 0;
    }

    v10 = v4;
    v4 = a2 & 0xFFFC;
    v11 = (v5 + 2 * v10);
    v12 = (v3 + 2 * v10);
    v13 = v10 - v4;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      v13 += 4;
    }

    while (v13);
    if (v4 != a2)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  if (!a2)
  {
LABEL_25:
    *(this + 12) = a2;
    return 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(this + 1);
  do
  {
    while (1)
    {
      v23 = *(v21 + 2 * v19);
      if (v19 > v23)
      {
        break;
      }

      v22 = v20;
      v20 = (v20 + 1);
      *(v21 + 2 * v19++) = v22;
      if (a2 == v19)
      {
        goto LABEL_24;
      }
    }

    *(v21 + 2 * v19++) = *(v21 + 2 * v23);
  }

  while (a2 != v19);
LABEL_24:
  *(this + 12) = a2;
  return v20;
}

uint64_t DisjointSet::UnCompact(uint64_t this)
{
  v1 = *(this + 16);
  if (!v1)
  {
    DisjointSet::UnCompact();
  }

  if (*(this + 24))
  {
    v2 = 0;
    v3 = *(this + 8);
    do
    {
      *(v3 + 2 * v2) = *(v1 + 2 * v2);
      ++v2;
    }

    while (v2 < *(this + 24));
  }

  return this;
}

uint64_t DisjointSet::GetCompactedMap(uint64_t a1, unsigned int a2, std::vector<unsigned int> *this)
{
  v5 = a2;
  begin = this->__begin_;
  v7 = this->__end_ - this->__begin_;
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (v9 != 0 && v8)
  {
    std::vector<float>::__append(this, v9);
    begin = this->__begin_;
  }

  else if (!v8)
  {
    this->__end_ = &begin[v5];
  }

  *begin = 0;
  if (a2 < 2)
  {
    return 1;
  }

  v11 = *(a1 + 8);
  v12 = 1;
  result = 1;
  do
  {
    while (1)
    {
      v15 = *(v11 + 2 * v12);
      v16 = v12 == v15;
      if (v12 <= v15)
      {
        break;
      }

      begin[v12++] = begin[v15];
      if (v5 == v12)
      {
        return result;
      }
    }

    if (v12 == v15)
    {
      v14 = result;
    }

    else
    {
      v14 = 0;
    }

    if (v16)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    begin[v12++] = v14;
  }

  while (v5 != v12);
  return result;
}

uint64_t DisjointSet::GetCompactedMap(uint64_t a1, std::vector<unsigned int> *this)
{
  v3 = *(a1 + 4);
  begin = this->__begin_;
  v5 = this->__end_ - this->__begin_;
  v6 = v3 >= v5;
  v7 = v3 - v5;
  if (v7 != 0 && v6)
  {
    std::vector<float>::__append(this, v7);
    begin = this->__begin_;
  }

  else if (!v6)
  {
    this->__end_ = &begin[v3];
  }

  *begin = 0;
  if ((v3 & 0xFFFE) == 0)
  {
    return 1;
  }

  v9 = *(a1 + 8);
  v10 = 1;
  result = 1;
  do
  {
    while (1)
    {
      v12 = *(v9 + 2 * v10);
      v13 = v10 == v12;
      if (v10 <= v12)
      {
        break;
      }

      begin[v10++] = begin[v12];
      if (v3 == v10)
      {
        return result;
      }
    }

    if (v10 == v12)
    {
      v14 = result;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    begin[v10++] = v14;
  }

  while (v3 != v10);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void GeomUtils::FindSpots(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v23 = 1;
  v24 = 0;
  v25 = 0;
  v21 = &unk_283809C28;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 0;
  v16 = &unk_283809C28;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v11 = &unk_283809C28;
  v7 = 0;
  v8 = 1;
  v9 = 0;
  v10 = 0;
  v6 = &unk_283809C28;
  v3[6] = 0;
  v3[7] = 1;
  v4 = 0;
  v5 = 0;
  v3[5] = &unk_283809C28;
  Matrix<double>::Matrix(v3, a3, 0, -1);
}

void sub_22466F924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(v64 - 256);
  MatrixNxPts<1u,double>::~MatrixNxPts(v64 - 216);
  MatrixNxPts<1u,double>::~MatrixNxPts(v64 - 176);
  Matrix<double>::~Matrix(&a64);
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x280]);
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x2A8]);
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x2D0]);
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x2F8]);
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x320]);
  _Unwind_Resume(a1);
}

void GeomUtils::ImTxTy2AlphaBeta<double>(int a1, uint64_t a2, int a3, int a4, int a5, Algo *this, Algo *a7, int a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v16 = this;
  Algo::LinearSpace(this, a10, a11, &v58);
  v19 = v60;
  v20 = v61;
  v21 = *(a14 + 8);
  if (*(a14 + 32) < 8 * v60 * v61)
  {
    if (v21)
    {
      if (*(a14 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a14 + 16) = v60;
  *(a14 + 20) = v20;
  memcpy(v21, v59, 8 * v19 * v20);
  v58 = &unk_283809BF8;
  if (v59 && v62 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  Algo::LinearSpace(a7, a12, a13, &v58);
  v22 = v60;
  v23 = v61;
  v24 = *(a15 + 8);
  if (*(a15 + 32) < 8 * v60 * v61)
  {
    if (v24 && *(a15 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a15 + 16) = v60;
  *(a15 + 20) = v23;
  memcpy(v24, v59, 8 * v22 * v23);
  v58 = &unk_283809BF8;
  if (v59 && v62 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v58 = &unk_283809BF8;
  if (a7 * v16)
  {
    operator new[]();
  }

  v59 = 0;
  v60 = a7;
  v61 = v16;
  v62 = 0;
  v63 = 8 * a7 * v16;
  v53[0] = &unk_283809BF8;
  v53[1] = 0;
  v54 = a7;
  v55 = v16;
  v56 = 0;
  v57 = v63;
  v25 = *(a14 + 8);
  v26 = *(a14 + 16);
  v27 = *(a14 + 20);
  v48 = &unk_283809BF8;
  v49 = v25;
  v52 = 8 * v26 * v27;
  v50 = __PAIR64__(v27, v26);
  v51 = 0;
  v28 = *(a15 + 8);
  v29 = *(a15 + 16);
  v30 = *(a15 + 20);
  v43 = &unk_283809BF8;
  v44 = v28;
  v47 = 8 * v29 * v30;
  v45 = __PAIR64__(v30, v29);
  v46 = 0;
  Algo::MeshGrid<double>(&v48, &v43, &v58, v53);
  v43 = &unk_283809BF8;
  if (v44 && v46 == 1)
  {
    MEMORY[0x22AA53170]();
    v44 = 0;
    v47 = 0;
    v46 = 0;
  }

  v45 = 0;
  v48 = &unk_283809BF8;
  if (v49 && v51 == 1)
  {
    MEMORY[0x22AA53170]();
    v49 = 0;
    v52 = 0;
    v51 = 0;
  }

  v50 = 0;
  v39 = 1;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = &unk_283809C28;
  v38 = 0;
  v33 = 1;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v32[5] = &unk_283809C28;
  v32[6] = 0;
  Matrix<double>::Matrix(v32, a2, 0, -1);
}

void sub_224670434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a55);
  Matrix<double>::~Matrix(v55 - 200);
  Matrix<double>::~Matrix(v55 - 160);
  _Unwind_Resume(a1);
}

void sub_2246704FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  Matrix<double>::~Matrix(&a60);
  Matrix<double>::~Matrix(v60 - 240);
  Matrix<double>::~Matrix(v60 - 200);
  Matrix<double>::~Matrix(v60 - 160);
  _Unwind_Resume(a1);
}

void sub_22467160C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a27);
  Matrix<double>::~Matrix(&a32);
  Matrix<double>::~Matrix(&a37);
  Matrix<double>::~Matrix(&a42);
  Matrix<double>::~Matrix(&a47);
  Matrix<double>::~Matrix(&a52);
  Matrix<double>::~Matrix(&a57);
  Matrix<double>::~Matrix(&a62);
  Matrix<double>::~Matrix(&a67);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x200]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x228]);
  Matrix<double>::~Matrix(&STACK[0x250]);
  Matrix<double>::~Matrix(&STACK[0x278]);
  Matrix<double>::~Matrix(&STACK[0x2A0]);
  Matrix<double>::~Matrix(&STACK[0x2C8]);
  MatrixNxPts<3u,double>::~MatrixNxPts(v67 - 192);
  Matrix<double>::~Matrix(v67 - 152);
  _Unwind_Resume(a1);
}

void *GeomUtils::ApproxPolyDP(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v5 = *(a1 + 20);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = a4 * a4;
    v9 = *(a1 + 8);
    v10 = *v9;
    v11 = 0.0;
    do
    {
      v12 = (v9[v5 + v6] - v9[v5]) * (v9[v5 + v6] - v9[v5]);
      if (v12 + (v9[v6] - v10) * (v9[v6] - v10) > v11)
      {
        v11 = v12 + (v9[v6] - v10) * (v9[v6] - v10);
        v7 = v6;
      }

      ++v6;
    }

    while (v5 != v6);
    v13 = v5;
    if (!v7)
    {
      goto LABEL_12;
    }

    v14 = 0;
    v15 = &v9[v7];
    v16 = *v15;
    v17 = v15[v5];
    v18 = v7;
    do
    {
      v19 = (v9[v13 + v14] - v17) * (v9[v13 + v14] - v17);
      if (v19 + (v9[v14] - v16) * (v9[v14] - v16) > v11)
      {
        v11 = v19 + (v9[v14] - v16) * (v9[v14] - v16);
        v18 = v14;
      }

      ++v14;
    }

    while (v5 != v14);
    if (v7 != v18)
    {
      v23 = 0;
      v24 = &v9[v18];
      v25 = *v24;
      v26 = v24[v5];
      v27 = v18;
      do
      {
        v28 = (v9[v13 + v23] - v26) * (v9[v13 + v23] - v26);
        if (v28 + (v9[v23] - v25) * (v9[v23] - v25) > v11)
        {
          v11 = v28 + (v9[v23] - v25) * (v9[v23] - v25);
          v27 = v23;
        }

        ++v23;
      }

      while (v5 != v23);
      if (v18 == v27)
      {
        v29 = v7;
      }

      else
      {
        v29 = v18;
      }

      if (v29 <= v27)
      {
        v20 = v27;
      }

      else
      {
        v20 = v29;
      }

      if (v29 >= v27)
      {
        v21 = v27;
      }

      else
      {
        v21 = v29;
      }

      if (v11 <= v8)
      {
LABEL_13:
        result = *(a3 + 8);
        if (*(a3 + 32) > 0xFuLL)
        {
          goto LABEL_20;
        }

LABEL_16:
        if (result && *(a3 + 24) == 1)
        {
          MEMORY[0x22AA53170]();
        }

        operator new[]();
      }
    }

    else
    {
LABEL_12:
      v20 = v7;
      v21 = 0;
      if (v11 <= v8)
      {
        goto LABEL_13;
      }
    }

    v38 = v20;
    v39 = 8 * v5;
    v30 = v20 - v21 + 1;
    if (a2)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v41 = v5 - v30 + v31;
    v42[0] = &unk_283809BF8;
    if (2 * v30)
    {
      operator new[]();
    }

    v43 = 2;
    v44 = v20 - v21 + 1;
    v45 = 0;
    v46 = 16 * v44;
    v42[0] = &unk_283809D28;
    v42[1] = 0;
    if (2 * v41)
    {
      operator new[]();
    }

    v32 = *(a1 + 8);
    v37 = 8 * v21;
    memcpy(0, &v32[v37], 8 * v30);
    memcpy((8 * v30), &v32[v37 + v39], 8 * v30);
    v33 = 8 * v38;
    v34 = 8 * (v5 - v38);
    memcpy(0, &v32[v33], v34);
    v35 = (8 * v41);
    memcpy(v35, &v32[v33 + v39], v34);
    memcpy((v39 - v33), v32, 8 * (v21 + 1));
    if (a2)
    {
      v36 = 8 * (v21 + 1);
    }

    else
    {
      v36 = 8 * v21;
    }

    memcpy(&v35[v39 - v33], &v32[v39], v36);
    GeomUtils::ApproxPolyDP(v42);
  }

  v21 = 0;
  result = *(a3 + 8);
  if (*(a3 + 32) <= 0xFuLL)
  {
    goto LABEL_16;
  }

LABEL_20:
  *(a3 + 16) = 0x100000002;
  *result = *(*(a1 + 8) + 8 * v21);
  *(*(a3 + 8) + 8) = *(*(a1 + 8) + 8 * (v21 + v5));
  return result;
}

void sub_224671DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  MatrixNxPts<2u,double>::~MatrixNxPts(&a24);
  MatrixNxPts<2u,double>::~MatrixNxPts(v24 - 144);
  _Unwind_Resume(a1);
}

void GeomUtils::ApproxPolyDP(uint64_t a1)
{
  if (*(a1 + 20))
  {
    operator new();
  }

  operator new();
}

void GeomUtils::AlgebricCameraCalibration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (-858993459 * ((a1[1] - *a1) >> 3))
  {
    v4 = &unk_283809BF8;
    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    GeomUtils::ComputeHomography(v3, v2);
  }

  v4 = &unk_283809BF8;
  v5 = 0;
  v6 = 0x400000000;
  v7 = 0;
  v8 = 0;
  Matrix<double>::Svd0LowestSingularVector(&v4);
}

void sub_224672A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::vector<Matrix<double>>::~vector[abi:ne200100](va);
  std::vector<Matrix<double>>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_224672AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  Matrix<double>::~Matrix(&a26);
  Matrix<double>::~Matrix(v26 - 144);
  Matrix<double>::~Matrix(&a18);
  std::vector<Matrix<double>>::~vector[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void sub_224672B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Matrix<double>::~Matrix(v15 - 144);
  std::vector<Matrix<double>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GeomUtils::ComputeHomography(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  v9[0] = &unk_283809BF8;
  if (v2)
  {
    operator new[]();
  }

  v10 = 3;
  v11 = 0;
  v12 = 0;
  v13 = 24 * v2;
  v9[0] = &unk_283809CF0;
  v9[1] = 0;
  v3 = *(a1 + 20);
  v4[0] = &unk_283809BF8;
  if (v3)
  {
    operator new[]();
  }

  v5 = 3;
  v6 = 0;
  v7 = 0;
  v8 = 24 * v3;
  v4[0] = &unk_283809CF0;
  v4[1] = 0;
  GeomUtils::ComputeHomography(v4, v9);
}

{
  v69 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 20);
  v5 = *(a2 + 8);
  v6 = *(a2 + 20);
  v47 = 1;
  v48 = v6;
  v49 = 0;
  v50 = 8 * v6;
  v46[0] = &unk_283809C28;
  v46[1] = v5;
  v42 = 1;
  v43 = v6;
  v44 = 0;
  v45 = 8 * v6;
  v40 = &unk_283809C28;
  v41 = &v5[v6];
  v60 = 0.0;
  vDSPMeanv<double>(v5, 1, &v60, v6);
  v7 = v60;
  v60 = 0.0;
  vDSPMeanv<double>(v41, 1, &v60, v43);
  v8 = v60;
  MatrixNxPts<1u,double>::operator-(v46, &v51, v7);
  MatrixNxPts<1u,double>::Abs(&v51, &v60);
  v37[0] = 0.0;
  vDSPMeanv<double>(v61, 1, v37, HIDWORD(v62) * LODWORD(v62));
  v9 = v37[0];
  v60 = COERCE_DOUBLE(&unk_283809BF8);
  if (v61 && v63 == 1)
  {
    MEMORY[0x22AA53170](v61);
    v61 = 0;
    v64 = 0.0;
    LOBYTE(v63) = 0;
  }

  v62 = 0.0;
  v51 = COERCE_DOUBLE(&unk_283809BF8);
  if (v52 && v54 == 1)
  {
    MEMORY[0x22AA53170](v52);
  }

  MatrixNxPts<1u,double>::operator-(&v40, &v51, v8);
  MatrixNxPts<1u,double>::Abs(&v51, &v60);
  v37[0] = 0.0;
  vDSPMeanv<double>(v61, 1, v37, HIDWORD(v62) * LODWORD(v62));
  v10 = v37[0];
  v60 = COERCE_DOUBLE(&unk_283809BF8);
  if (v61 && v63 == 1)
  {
    MEMORY[0x22AA53170](v61);
    v61 = 0;
    v64 = 0.0;
    LOBYTE(v63) = 0;
  }

  v62 = 0.0;
  v51 = COERCE_DOUBLE(&unk_283809BF8);
  if (v52 && v54 == 1)
  {
    MEMORY[0x22AA53170](v52);
  }

  v60 = 1.0 / v9;
  v61 = 0;
  v62 = -v7 / v9;
  v63 = 0;
  v64 = 1.0 / v10;
  v65 = -v8 / v10;
  v66 = 0;
  v67 = 0;
  v68 = 0x3FF0000000000000;
  v51 = v9;
  v52 = 0;
  v53 = v7;
  v54 = 0;
  v55 = v10;
  v56 = v8;
  v57 = 0;
  v58 = 0;
  v59 = 0x3FF0000000000000;
  *&v37[0] = &unk_283809BF8;
  *&v37[1] = &v60;
  *&v37[2] = 0x300000003;
  v38 = 0;
  v39 = 72;
  v32 = &unk_283809BF8;
  v33 = &v51;
  v34 = 0x300000003;
  v35 = 0;
  v36 = 72;
  v11 = *(a2 + 20);
  v20 = &unk_283809BF8;
  if (v11)
  {
    operator new[]();
  }

  v21 = 0;
  v22 = 3;
  v23 = 0;
  v24 = 0;
  v25 = 24 * v11;
  Matrix<double>::MultAxBToC(v37, a2, &v20);
  v28 = 3;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v26 = &unk_283809CF0;
  v27 = v21;
  v20 = &unk_283809BF8;
  if (18 * v4)
  {
    operator new[]();
  }

  v12 = 0;
  v21 = 0;
  v22 = 2 * v4;
  v23 = 9;
  v24 = 0;
  v25 = 144 * v4;
  if (v4)
  {
    v13 = v27;
    v14 = *(a1 + 8);
    v15 = v4;
    do
    {
      v16 = *v14;
      v17 = v14[v4];
      v18 = *v13;
      v19 = v13[v4];
      *v12 = *v14;
      *(v12 + 8) = v17;
      *(v12 + 16) = 0x3FF0000000000000;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = -(v18 * v16);
      *(v12 + 56) = -(v18 * v17);
      *(v12 + 64) = -v18;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 72) = 0;
      *(v12 + 96) = v16;
      *(v12 + 104) = v17;
      *(v12 + 112) = 0x3FF0000000000000;
      *(v12 + 120) = -(v19 * v16);
      *(v12 + 128) = -(v19 * v17);
      *(v12 + 136) = -v19;
      v12 += 144;
      ++v14;
      ++v13;
      --v15;
    }

    while (v15);
    if (v4 > 4)
    {
      Matrix<double>::Transpose(&v20);
    }
  }

  Matrix<double>::Svd0LowestSingularVector(&v20);
}

void sub_224672DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void sub_224672E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  MatrixNxPts<3u,double>::~MatrixNxPts(&a9);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a14);
  _Unwind_Resume(a1);
}

void **std::vector<Matrix<double>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 40;
      v6 = v3 - 40;
      v7 = v3 - 40;
      do
      {
        v8 = *v7;
        v7 -= 40;
        (*v8)(v6);
        v5 -= 40;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_22467343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a14);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a19);
  Matrix<double>::~Matrix(&a24);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a29);
  MatrixNxPts<1u,double>::~MatrixNxPts(v29 - 184);
  MatrixNxPts<1u,double>::~MatrixNxPts(v29 - 144);
  Matrix<double>::~Matrix(v29 - 104);
  _Unwind_Resume(a1);
}

uint64_t GeomUtils::DistortRadialLiteInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 16) != 2)
  {
    GeomUtils::DistortRadialLiteInternal();
  }

  v9 = *(a2 + 32);
  if (a5)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v10 = *(a2 + 40);
  }

  if (a5)
  {
    v9 = *(a2 + 40);
  }

  v11 = *(a2 + 24);
  v63 = v9;
  v64 = 1;
  v65 = v11;
  v66 = 0;
  v67 = 8 * v11;
  v61 = 8 * v11;
  v62 = &unk_283809C28;
  v58 = 1;
  v59 = v11;
  v60 = 0;
  v56 = &unk_283809C28;
  v57 = v10;
  v12 = *(a1 + 20);
  v50 = &unk_283809BF8;
  if (v12)
  {
    operator new[]();
  }

  v52 = 1;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = &unk_283809C28;
  v51 = 0;
  v46 = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = &unk_283809C28;
  v45 = 0;
  v38 = &unk_283809BF8;
  v39 = 0;
  v40 = 2;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v13 = *(a1 + 20);
  if (a5)
  {
    if (v13)
    {
      if (*(a1 + 16))
      {
        v29 = 120;
      }

      else
      {
        v29 = 126;
      }

      __assert_rtn("operator()", "Matrix.hpp", v29, "row < m_rows && col < m_cols");
    }
  }

  else if (v13)
  {
    if (*(a1 + 16))
    {
      v30 = 120;
    }

    else
    {
      v30 = 126;
    }

    __assert_rtn("operator()", "Matrix.hpp", v30, "row < m_rows && col < m_cols");
  }

  Matrix<double>::DotMult<double>(&v38, &v38, v36);
  if (a6)
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>(&v62, &v56, &v50, &v44);
  }

  else
  {
    if (!v53)
    {
      __assert_rtn("Interp1WithExtrap", "Algo.hpp", 1355, "xq.GetNumOfPoints() > 0");
    }

    Interp1WithExtrap<double,LinearInterpolator<double>>(&v62, &v56, &v50, &v44, 0);
  }

  Matrix<double>::DotDiv(&v44, &v50, v68);
  v16 = v71;
  v34 = v69;
  v35 = v70;
  v17 = v53;
  if (v53 >= 1)
  {
    if (!v52)
    {
      goto LABEL_28;
    }

    v18 = 0;
    do
    {
      if (*(v51 + 8 * v18) == 0.0)
      {
        if (v18 >= v35)
        {
          goto LABEL_28;
        }

        v34[v18] = 1.0;
      }

      ++v18;
    }

    while (v17 != v18);
    if (!v40)
    {
LABEL_28:
      __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
    }

    v19 = v41;
    if (v40 == 1)
    {
      if (!v41 || !v35 || !*(a3 + 16) || !*(a3 + 20))
      {
        goto LABEL_28;
      }

      v31 = *(a3 + 8);
      v32 = *v39 * *v34;
      goto LABEL_78;
    }

    v20 = 0;
    do
    {
      if (v19 == v20)
      {
        goto LABEL_28;
      }

      if (v20 >= v35)
      {
        goto LABEL_28;
      }

      v21 = *(a3 + 16);
      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = *(a3 + 20);
      if (v20 >= v22)
      {
        goto LABEL_28;
      }

      *(*(a3 + 8) + 8 * v20) = v39[v20] * v34[v20];
      if (v21 == 1)
      {
        goto LABEL_28;
      }

      *(*(a3 + 8) + 8 * v22 + 8 * v20) = v34[v20] * v39[v19 + v20];
      ++v20;
    }

    while (v17 != v20);
    if (a5)
    {
      v23 = *(a3 + 16);
      if (!v23)
      {
        goto LABEL_28;
      }

      v24 = *(a3 + 20);
      if (v23 != 1)
      {
        v25 = 0;
        v26 = 8 * v24;
        v27 = 8 * v17;
        while (v26 != v25)
        {
          *(*(a3 + 8) + v25) = *(*(a3 + 8) + v25) + *(a2 + 216) * *a2;
          *(*(a3 + 8) + v26 + v25) = *(*(a3 + 8) + v26 + v25) + *(a2 + 224) * *a2;
          v25 += 8;
          if (v27 == v25)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_28;
      }

      if (!v24)
      {
        goto LABEL_28;
      }

      v31 = *(a3 + 8);
      v32 = *v31 + *(a2 + 216) * *a2;
LABEL_78:
      *v31 = v32;
      goto LABEL_28;
    }
  }

LABEL_43:
  if (v34 && v16)
  {
    MEMORY[0x22AA53170]();
  }

  v36[0] = &unk_283809BF8;
  if (v36[1] && v37 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v38 = &unk_283809BF8;
  if (v39 && v42 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v44 = &unk_283809BF8;
  if (v45 && v48 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v50 = &unk_283809BF8;
  if (v51 && v54 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v56 = &unk_283809BF8;
  if (v57 && v60 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v62 = &unk_283809BF8;
  if (v63 && v66 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  return 0;
}

void sub_224673DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a29);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a34);
  MatrixNxPts<1u,double>::~MatrixNxPts(v34 - 224);
  MatrixNxPts<1u,double>::~MatrixNxPts(v34 - 184);
  _Unwind_Resume(a1);
}

uint64_t Matrix<double>::operator()(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  if (*a2 >= *(a1 + 16) || (v3 = *a3, v4 = *(a1 + 20), v3 >= v4))
  {
    Matrix<double>::operator()();
  }

  return *(a1 + 8) + 8 * v3 + 8 * v4 * *a2;
}

void Matrix<double>::DotMult<double>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 20);
  if (v3 != *(a1 + 20) || (v4 = *(a2 + 16), v4 != *(a1 + 16)))
  {
    Matrix<double>::DotMult<double>();
  }

  *a3 = &unk_283809BF8;
  if (v4 * v3)
  {
    operator new[]();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = v4;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = 8 * v3 * v4;
  vDSPVmul<double,double>(*(a1 + 8), 1, *(a2 + 8), 1, 0, 1, 0);
}

uint64_t GeomUtils::DistortRadialLite<double>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  GeomUtils::DistortRadialLiteInternal(a1, a2, a3, 0, a4, a5);
  return 0;
}

{
  GeomUtils::DistortRadialLiteInternal(a1, a2, a3, 1, a4, a5);
  return 0;
}

void GeomUtils::ToHomg(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 20);
  *a2 = &unk_283809BF8;
  if (v2)
  {
    operator new[]();
  }

  *(a2 + 16) = 3;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 24 * v2;
  *a2 = &unk_283809CF0;
  *(a2 + 8) = 0;
}

float64x2_t *GeomUtils::ToNonHomg@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 20);
  *a2 = &unk_283809BF8;
  v4 = (2 * v3);
  if (v4)
  {
    operator new[]();
  }

  result = 0;
  *(a2 + 16) = 2;
  *(a2 + 20) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 16 * v3;
  *a2 = &unk_283809D28;
  *(a2 + 8) = 0;
  if (v3)
  {
    v6 = *(a1 + 8);
    if (v3 < 0x14)
    {
      LODWORD(v7) = 0;
LABEL_6:
      v8 = *(a1 + 8);
      v9 = 0;
LABEL_7:
      v10 = v3 - v7;
      do
      {
        *v9 = *v8 / v8[v4];
        v9[v3] = v8[v3] / v8[v4];
        ++v9;
        ++v8;
        --v10;
      }

      while (v10);
      return result;
    }

    LODWORD(v7) = 0;
    v11 = 8 * (v3 - 1) + 8;
    v12 = 8 * v3;
    v13 = v11 + 8 * v3;
    v14 = &v6->f64[v4];
    v15 = &v14[v11];
    v16 = &v6->f64[v3];
    v17 = v6 + v13;
    if ((v6 + v11))
    {
      v18 = v6 >= v11;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    if (v15)
    {
      v20 = v14 >= v11;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    if (v17)
    {
      v22 = v16 >= v11;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    v25 = v12 < v6 + v11 && v6 < v13;
    v27 = v12 < v15 && v14 < v13;
    v29 = v12 < v17 && v16 < v13;
    v30 = v12 >= v11 || v13 == 0;
    if (!v30 || (v19 & 1) != 0 || (v21 & 1) != 0 || (v23 & 1) != 0 || v25 || v27 || v29)
    {
      goto LABEL_6;
    }

    v7 = v3 & 0xFFFFFFFE;
    v9 = (8 * v7);
    v8 = &v6->f64[v7];
    v31 = v7;
    do
    {
      v32 = *(v6 + 8 * v4);
      *result = vdivq_f64(*v6, v32);
      *(result++ + 8 * v3) = vdivq_f64(*(v6++ + 8 * v3), v32);
      v31 -= 2;
    }

    while (v31);
    if (v7 != v3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

{
  v3 = *(a1 + 20);
  *a2 = &unk_283809BF8;
  v4 = (2 * v3);
  if (v4)
  {
    operator new[]();
  }

  result = 0;
  *(a2 + 16) = 2;
  *(a2 + 20) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 16 * v3;
  *a2 = &unk_283809D28;
  *(a2 + 8) = 0;
  if (v3)
  {
    v6 = *(a1 + 8);
    if (v3 < 0x14)
    {
      LODWORD(v7) = 0;
LABEL_6:
      v8 = *(a1 + 8);
      v9 = 0;
LABEL_7:
      v10 = v3 - v7;
      do
      {
        *v9 = *v8 / v8[v4];
        v9[v3] = v8[v3] / v8[v4];
        ++v9;
        ++v8;
        --v10;
      }

      while (v10);
      return result;
    }

    LODWORD(v7) = 0;
    v11 = 8 * (v3 - 1) + 8;
    v12 = 8 * v3;
    v13 = v11 + 8 * v3;
    v14 = &v6->f64[v4];
    v15 = &v14[v11];
    v16 = &v6->f64[v3];
    v17 = v6 + v13;
    if ((v6 + v11))
    {
      v18 = v6 >= v11;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    if (v15)
    {
      v20 = v14 >= v11;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    if (v17)
    {
      v22 = v16 >= v11;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    v25 = v12 < v6 + v11 && v6 < v13;
    v27 = v12 < v15 && v14 < v13;
    v29 = v12 < v17 && v16 < v13;
    v30 = v12 >= v11 || v13 == 0;
    if (!v30 || (v19 & 1) != 0 || (v21 & 1) != 0 || (v23 & 1) != 0 || v25 || v27 || v29)
    {
      goto LABEL_6;
    }

    v7 = v3 & 0xFFFFFFFE;
    v9 = (8 * v7);
    v8 = &v6->f64[v7];
    v31 = v7;
    do
    {
      v32 = *(v6 + 8 * v4);
      *result = vdivq_f64(*v6, v32);
      *(result++ + 8 * v3) = vdivq_f64(*(v6++ + 8 * v3), v32);
      v31 -= 2;
    }

    while (v31);
    if (v7 != v3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_224674F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  Matrix<double>::~Matrix(&a20);
  Matrix<double>::~Matrix(&a15);
  Matrix<double>::~Matrix(&a25);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a30);
  Matrix<double>::~Matrix(&a35);
  Matrix<double>::~Matrix(&a40);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a45);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a50);
  _Unwind_Resume(a1);
}

void MatrixNxPts<1u,double>::operator-(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (v5 * v4)
  {
    operator new[]();
  }

  v6 = -a3;
  vDSPVsadd<double>(*(a1 + 8), 1, &v6, 0, 1, 0);
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 8 * v4 * v5;
  *a2 = &unk_283809C28;
  *(a2 + 8) = 0;
}

void MatrixNxPts<1u,double>::Abs(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (v4 * v3)
  {
    operator new[]();
  }

  vDSPVabs<double>(*(a1 + 8), 1, 0, 1, 0);
  *(a2 + 16) = 1;
  *(a2 + 20) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 8 * v3 * v4;
  *a2 = &unk_283809C28;
  *(a2 + 8) = 0;
}

void sub_224675270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467539C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_2246753B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(v2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void Matrix<double>::Svd0LowestSingularVector(uint64_t a1)
{
  v9 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v6 = 0;
  v7[0] = &unk_283809BF8;
  v8 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v3 = 0;
  v4[0] = &unk_283809BF8;
  v5 = 0;
  v1[2] = 1;
  v2 = 0;
  v1[0] = &unk_283809C28;
  v1[1] = 0;
  Matrix<double>::Svd(a1, v7, v1, v4);
}

void sub_2246755C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(va2);
  _Unwind_Resume(a1);
}

void GeomUtils::homography2d(void *a1@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  *a1 = &unk_283809BF8;
  operator new[]();
}

void sub_224675C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  Matrix<double>::~Matrix(&a14);
  Matrix<double>::~Matrix(&a9);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a19);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a24);
  Matrix<double>::~Matrix(&a29);
  Matrix<double>::~Matrix(&a34);
  Matrix<double>::~Matrix(v34);
  _Unwind_Resume(a1);
}

void GeomUtils::ransacComputeHomography(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    operator new[]();
  }

  if (*(a2 + 20))
  {
    operator new[]();
  }

  Algo::Normalize2DPts();
}

{
  v3 = *(a1 + 20);
  v11 = &unk_283809BF8;
  if (v3)
  {
    operator new[]();
  }

  v13 = 3;
  v14 = 0;
  v15 = 0;
  v16 = 24 * v3;
  v11 = &unk_283809CF0;
  v12 = 0;
  v4 = *(a2 + 20);
  v5 = &unk_283809BF8;
  if (v4)
  {
    operator new[]();
  }

  __dst = 0;
  v7 = 3;
  v8 = 0;
  v9 = 0;
  v10 = 24 * v4;
  v5 = &unk_283809CF0;
  memcpy(0, *(a1 + 8), 8 * (*(a1 + 20) * *(a1 + 16)));
  memcpy(0, *(a2 + 8), 8 * (*(a2 + 20) * *(a2 + 16)));
  __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
}

void sub_22467747C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a16);
  Matrix<double>::~Matrix(&a26);
  Matrix<double>::~Matrix(&a31);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a37);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a42);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a47);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a52);
  _Unwind_Resume(a1);
}

void sub_224677814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void sub_224677828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  MatrixNxPts<3u,double>::~MatrixNxPts(va1);
  _Unwind_Resume(a1);
}

uint64_t GeomUtils::ransacFitPlane(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int *a5, _DWORD *a6)
{
  result = Algo::RansacPlane(a1, 3, 10, 50, 1u, a4, a5, a6);
  v11 = *a5;
  if (*a5 > 2)
  {
    if (v11 == 3)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    v24 = &unk_283809BF8;
    if (4 * v12)
    {
      operator new[]();
    }

    v25 = 0;
    v26 = v12;
    v27 = 4;
    v28 = 0;
    v29 = 32 * v12;
    if (!v11)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 20);
    if (v14)
    {
      if (v14 == 1)
      {
        v21 = **(a4 + 8);
        if (v13 > v21)
        {
          MEMORY[0] = *(*(a1 + 8) + 8 * v21);
        }
      }

      else
      {
        if (v14 >= 3)
        {
          v15 = 0;
          do
          {
            v16 = *(*(a4 + 8) + v15);
            if (v13 <= v16 || 4 * v12 == v15)
            {
              goto LABEL_26;
            }

            v18 = 8 * v16;
            v19 = (8 * v15) & 0x7FFFFFFE0;
            *(v25 + v19) = *(*(a1 + 8) + v18);
            *(v25 + v19 + 8) = *(*(a1 + 8) + v18 + 8 * v13);
            *(v25 + v19 + 16) = *(*(a1 + 8) + v18 + 8 * (2 * v13));
            *(v25 + v19 + 24) = 0x3FF0000000000000;
            v15 += 4;
          }

          while (4 * v11 != v15);
          if (v11 == 3)
          {
            if (v12 <= 3)
            {
              __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
            }

            v20 = v25;
            *(v25 + 96) = 0u;
            *(v20 + 112) = 0u;
          }

LABEL_21:
          Matrix<double>::Svd0LowestSingularVector(&v24);
        }

        v22 = **(a4 + 8);
        if (v13 > v22)
        {
          v23 = (*(a1 + 8) + 8 * v22);
          MEMORY[0] = *v23;
          MEMORY[8] = v23[v13];
        }
      }
    }

LABEL_26:
    __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
  }

  *a5 = 0;
  *a3 = 0x4197D78400000000;
  return result;
}

void sub_224677D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a9);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a14);
  Matrix<double>::~Matrix(&a19);
  _Unwind_Resume(a1);
}

void sub_224677D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void GeomUtils::estimateBestRotMat(uint64_t a1)
{
  v9 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = &unk_283809BF8;
  v8 = 0;
  v6 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v3 = 0;
  v4[0] = &unk_283809BF8;
  v5 = 0;
  v1[2] = 1;
  v2 = 0;
  v1[0] = &unk_283809C28;
  v1[1] = 0;
  Matrix<double>::Svd(a1, v7, v1, v4);
}

void sub_224678020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  MatrixNxPts<1u,double>::~MatrixNxPts(va2);
  Matrix<double>::~Matrix(va3);
  Matrix<double>::~Matrix(v2 - 104);
  _Unwind_Resume(a1);
}

void Matrix<double>::Svd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (v4 * v5)
  {
    operator new[]();
  }

  if (v4 >= 1)
  {
    v6 = *(a1 + 8);
    v7 = v6 + 8 * v4;
    do
    {
      v6 += 8;
    }

    while (v6 < v7);
  }

  if (*(a3 + 32) < (8 * v4))
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a3 + 16) = 1;
  *(a3 + 20) = v4;
  if (*(a4 + 32) < (8 * v4 * v4))
  {
    if (*(a4 + 8) && *(a4 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a4 + 16) = v4;
  *(a4 + 20) = v4;
  if (v5 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*(a2 + 32) < (8 * v5 * v8))
  {
    if (*(a2 + 8) && *(a2 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a2 + 16) = v5;
  *(a2 + 20) = v8;
  operator new[]();
}

void sub_224678434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224678448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224678470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224678484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224678498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t GeomUtils::CalcRotTrans(uint64_t a1, double *a2, double *a3, uint64_t a4, double *a5, float64x2_t *a6)
{
  dgesvd_NEWLAPACK();
  v44 = malloc_type_malloc(8 * 0.0, 0x100004000313F17uLL);
  dgesvd_NEWLAPACK();
  free(v44);
  _Q0 = 0u;
  _D3 = 0;
  v12 = 0.0 * 0.0 + 0.0;
  v13 = 0.0 - 0.0 + 0.0 * 0.0 + 0.0 * 0.0;
  v14 = v12 + 0.0 * 0.0 + 0.0;
  __asm
  {
    FMLA            D13, D3, V0.D[1]
    FMLA            D14, D3, V0.D[1]
  }

  v45 = v12 + 0.0 + 0.0 * 0.0;
  v20 = 0.0;
  *v21.i64 = v45 * 0.0 + 0.0 + v13 * 0.0 + v14 * 0.0;
  v22 = _D13 * 0.0 + 0.0 + _D14 * 0.0 + v14 * 0.0;
  if ((*&v22 ^ v21.i64[0]) < 0 || (v23 = 0.0 - 0.0 + 0.0 * 0.0 + 0.0 * 0.0, v24 = v12 + 0.0 + 0.0 * 0.0, v25 = v24 * 0.0 + 0.0 + v23 * 0.0 + v14 * 0.0, (*&v25 ^ v21.i64[0]) < 0))
  {
    __asm
    {
      FMLA            D28, D3, V0.D[1]
      FMLA            D30, D3, V0.D[1]
    }

    *v21.i64 = (v12 - 0.0 + 0.0 * 0.0) * 0.0 + 0.0 + (0.0 + 0.0 + 0.0 * 0.0 + 0.0 * 0.0) * 0.0 + v14 * 0.0;
    v31 = *v21.i64;
    v30 = *v21.i64;
    v29 = _D28 * 0.0 + 0.0 + _D30 * 0.0 + v14 * 0.0;
    v22 = v29;
    v28 = v29;
    v27 = *v21.i64;
    v26 = v27;
    v25 = v27;
  }

  else
  {
    v26 = v24 * 0.0 + 0.0 + v23 * 0.0 + v14 * 0.0;
    v27 = v26;
    v28 = _D13 * 0.0 + 0.0 + _D14 * 0.0 + v14 * 0.0;
    v29 = v28;
    v30 = v45 * 0.0 + 0.0 + v13 * 0.0 + v14 * 0.0;
    v31 = v30;
  }

  v9.i64[0] = 1.0;
  v34.f64[0] = NAN;
  v34.f64[1] = NAN;
  v35 = *vbslq_s8(vnegq_f64(v34), v9, v21).i64;
  *a5 = *v21.i64 * v35;
  a5[1] = v35 * v31;
  a5[2] = v35 * v30;
  a5[3] = v29 * v35;
  a5[4] = v35 * v22;
  a5[5] = v35 * v28;
  a5[6] = v27 * v35;
  a5[7] = v35 * v26;
  a5[8] = v35 * v25;
  v36 = *a3 - *a2;
  v34.f64[0] = a3[1] - a2[1];
  v37 = a3[2] - a2[2];
  v38 = sqrt(v36 * v36 + 0.0 + v34.f64[0] * v34.f64[0] + v37 * v37);
  _NF = v36 / v38 * 0.0 + 0.0 + v34.f64[0] / v38 * 0.0 + v37 / v38 * 0.0 < 0.0;
  v40 = vnegq_f64(0);
  if (_NF)
  {
    v20 = -0.0;
  }

  v41 = vdup_n_s32(_NF);
  v42.i64[0] = v41.u32[0];
  v42.i64[1] = v41.u32[1];
  *a6 = vmulq_n_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v42, 0x3FuLL)), v40, 0), v38);
  a6[1].f64[0] = v38 * v20;
  return 0;
}

char *GeomUtils::homogDist2d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, double a6)
{
  v96 = 3;
  v97 = 0;
  v98 = 0;
  v94 = &unk_283809CF0;
  v95 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v89 = &unk_283809BF8;
  v92 = 0;
  v9 = *(a1 + 16);
  v10 = *(a2 + 20);
  v84 = &unk_283809BF8;
  if (v10 * v9)
  {
    operator new[]();
  }

  __src = 0;
  v86 = __PAIR64__(v10, v9);
  v87 = 0;
  v88 = 8 * v9 * v10;
  Matrix<double>::MultAxBToC(a1, a2, &v84);
  v11 = 8 * v86 * HIDWORD(v86);
  if (v93 < v11)
  {
    if (v90)
    {
      if (v92 == 1)
      {
        MEMORY[0x22AA53170](v90, 0x1000C8000313F17);
      }
    }

    operator new[]();
  }

  v91 = v86;
  memcpy(v90, __src, v11);
  v84 = &unk_283809BF8;
  if (__src && v87 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v84 = &unk_283809BF8;
  if (HIDWORD(v91))
  {
    operator new[]();
  }

  v86 = 1;
  v87 = 0;
  v88 = 0;
  v84 = &unk_283809C28;
  __src = 0;
  v12 = *(a3 + 20);
  v13 = (2 * v12);
  if (v13)
  {
    operator new[]();
  }

  v14 = 0;
  if (v12)
  {
    v15 = *(a3 + 8);
    if (v12 >= 0x14)
    {
      LODWORD(v16) = 0;
      v39 = 8 * (v12 - 1) + 8;
      v40 = 8 * v12;
      v41 = v39 + 8 * v12;
      v42 = &v15->f64[v13];
      v43 = &v42[v39];
      v44 = &v15->f64[v12];
      v45 = v15 + v41;
      if ((v15 + v39))
      {
        v46 = v15 >= v39;
      }

      else
      {
        v46 = 1;
      }

      v47 = !v46;
      if (v43)
      {
        v48 = v42 >= v39;
      }

      else
      {
        v48 = 1;
      }

      v49 = !v48;
      if (v45)
      {
        v50 = v44 >= v39;
      }

      else
      {
        v50 = 1;
      }

      v51 = !v50;
      v53 = v40 < v15 + v39 && v15 < v41;
      v55 = v40 < v43 && v42 < v41;
      v57 = v40 < v45 && v44 < v41;
      v58 = v40 >= v39 || v41 == 0;
      if (v58 && (v47 & 1) == 0 && (v49 & 1) == 0 && (v51 & 1) == 0 && !v53 && !v55 && !v57)
      {
        v16 = v12 & 0xFFFFFFFE;
        v18 = (8 * v16);
        v17 = &v15->f64[v16];
        v59 = v16;
        do
        {
          v60 = *(v15 + 8 * v13);
          *v14 = vdivq_f64(*v15, v60);
          *(v14++ + 8 * v12) = vdivq_f64(*(v15++ + 8 * v12), v60);
          v59 -= 2;
        }

        while (v59);
        if (v16 == v12)
        {
LABEL_21:
          operator new[]();
        }

LABEL_19:
        v19 = v12 - v16;
        do
        {
          *v18 = *v17 / v17[v13];
          v18[v12] = v17[v12] / v17[v13];
          ++v18;
          ++v17;
          --v19;
        }

        while (v19);
        goto LABEL_21;
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    v17 = *(a3 + 8);
    v18 = 0;
    goto LABEL_19;
  }

  if (v98 < 24 * v12)
  {
    if (v95 && v97 == 1)
    {
      MEMORY[0x22AA53170](v95, 0x1000C8000313F17);
    }

    operator new[]();
  }

  v96 = 3;
  memcpy(v95, 0, 24 * v12);
  v20 = HIDWORD(v91);
  v21 = (2 * HIDWORD(v91));
  if (v21)
  {
    operator new[]();
  }

  v22 = 0;
  if (HIDWORD(v91))
  {
    v23 = v90;
    if (HIDWORD(v91) >= 0x14)
    {
      LODWORD(v24) = 0;
      v61 = 8 * (HIDWORD(v91) - 1) + 8;
      v62 = 8 * HIDWORD(v91);
      v63 = v61 + v62;
      v64 = &v90->f64[v21];
      v65 = &v64[v61];
      v66 = v90 + v62;
      v67 = v90 + v61 + v62;
      if ((v90 + v61))
      {
        v68 = v90 >= v61;
      }

      else
      {
        v68 = 1;
      }

      v69 = !v68;
      if (v65)
      {
        v70 = v64 >= v61;
      }

      else
      {
        v70 = 1;
      }

      v71 = !v70;
      if (v67)
      {
        v72 = v66 >= v61;
      }

      else
      {
        v72 = 1;
      }

      v73 = !v72;
      v75 = v62 < v90 + v61 && v90 < v63;
      v77 = v62 < v65 && v64 < v63;
      v79 = v62 < v67 && v66 < v63;
      v80 = v62 >= v61 || v63 == 0;
      if (v80 && (v69 & 1) == 0 && (v71 & 1) == 0 && (v73 & 1) == 0 && !v75 && !v77 && !v79)
      {
        v24 = HIDWORD(v91) & 0xFFFFFFFE;
        v26 = (8 * v24);
        v25 = &v90->f64[v24];
        v81 = v24;
        do
        {
          v82 = *(v23 + 8 * v21);
          *v22 = vdivq_f64(*v23, v82);
          *(v22++ + 8 * v20) = vdivq_f64(*(v23++ + 8 * v20), v82);
          v81 -= 2;
        }

        while (v81);
        if (v24 == v20)
        {
LABEL_35:
          operator new[]();
        }

LABEL_33:
        v27 = v20 - v24;
        do
        {
          *v26 = *v25 / v25[v21];
          v26[v20] = v25[v20] / v25[v21];
          ++v26;
          ++v25;
          --v27;
        }

        while (v27);
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v24) = 0;
    }

    v25 = v90;
    v26 = 0;
    goto LABEL_33;
  }

  v91 = 3;
  memcpy(v90, 0, 24 * v20);
  v28 = HIDWORD(v91);
  if (HIDWORD(v91))
  {
    v29 = 0;
    v30 = 0;
    v31 = "row < m_rows && col < m_cols";
    while (v96 && v29 < HIDWORD(v96) && v91)
    {
      v32 = 120;
      if (v96 == 1 || v91 == 1 || v96 < 3 || v91 < 3)
      {
        goto LABEL_165;
      }

      if (v29 >= (HIDWORD(v86) * v86))
      {
        goto LABEL_164;
      }

      v33 = &v95[8 * v29];
      v34 = &v90->f64[v29];
      v35 = v33[HIDWORD(v96)] - v34[v28];
      v36 = v35 * v35 + (*v33 - *v34) * (*v33 - *v34);
      v37 = *&v95[8 * (2 * HIDWORD(v96)) + 8 * v29] - v90->f64[(2 * v28) + v29];
      *(__src + v29) = v36 + v37 * v37;
      if (*(__src + v29) < a6)
      {
        if (*(a4 + 20) * *(a4 + 16) <= v30)
        {
LABEL_164:
          v32 = 132;
          v31 = "index < m_rows * m_cols";
LABEL_165:
          __assert_rtn("operator()", "Matrix.hpp", v32, v31);
        }

        *(*(a4 + 8) + 4 * v30++) = v29;
      }

      ++v29;
      v28 = HIDWORD(v91);
      if (v29 >= HIDWORD(v91))
      {
        goto LABEL_51;
      }
    }

    v32 = 120;
    goto LABEL_165;
  }

  v30 = 0;
LABEL_51:
  *a5 = v30;
  v84 = &unk_283809BF8;
  if (__src && v87 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v89 = &unk_283809BF8;
  if (v90 && v92 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v94 = &unk_283809BF8;
  result = v95;
  if (v95 && v97 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_2246794B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  MatrixNxPts<3u,double>::~MatrixNxPts(&a18);
  MatrixNxPts<2u,double>::~MatrixNxPts(&a13);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a23);
  Matrix<double>::~Matrix(&a28);
  MatrixNxPts<3u,double>::~MatrixNxPts(v28 - 144);
  _Unwind_Resume(a1);
}

BOOL GeomUtils::check3of4SpotsOnSameLine(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 4 || *(a1 + 16) != 3)
  {
    GeomUtils::check3of4SpotsOnSameLine();
  }

  if (*(a2 + 20) != 4 || *(a2 + 16) != 3)
  {
    GeomUtils::check3of4SpotsOnSameLine();
  }

  v2 = *(a1 + 8);
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[4];
  v6 = v2[5];
  v8 = v2[8];
  v7 = v2[9];
  v9 = v2[2];
  v10 = v2[6];
  v11 = v2[10];
  v12 = v6 * v11 - v10 * v7;
  v13 = -(v10 * v8);
  v14 = v5 * v7 - v6 * v8;
  if (fabs(*v2 * v12 - v3 * (v8 * v11 - v10 * v8) + v9 * v14) < 0.00000011920929)
  {
    return 1;
  }

  v15 = v2[3];
  v16 = v2[7];
  v17 = v2[11];
  v18 = v8 * v17 - v16 * v8;
  if (fabs(v18 * -v3 + v4 * (v6 * v17 - v16 * v7) + v15 * v14) < 0.00000011920929)
  {
    return 1;
  }

  v19 = v11 * -v16 + v10 * v17;
  if (fabs(v4 * v19 - v9 * v18 + v15 * (v13 + v5 * v11)) < 0.00000011920929)
  {
    return 1;
  }

  if (fabs((v7 * v17 - v16 * v7) * -v9 + v3 * v19 + v15 * v12) < 0.00000011920929)
  {
    return 1;
  }

  v20 = *(a2 + 8);
  v21 = v20[1];
  v22 = v20[5];
  v23 = v20[8];
  v24 = v20[9];
  v25 = v20[4] * v24 - v22 * v23;
  if (fabs(*v20 * (v22 * v20[10] - v20[6] * v24) - v21 * (v23 * v20[10] - v20[6] * v23) + v20[2] * v25) < 0.00000011920929)
  {
    return 1;
  }

  result = 1;
  if (fabs((v23 * v20[11] - v20[7] * v23) * -v21 + *v20 * (v22 * v20[11] - v20[7] * v24) + v20[3] * v25) >= 0.00000011920929)
  {
    v46 = 0;
    v28 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 0x100000000;
    v29 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 0x200000000;
    v30 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 2;
    v31 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 0x100000002;
    v32 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 0x200000002;
    v33 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 3;
    v34 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 0x100000003;
    v35 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
    v46 = 0x200000003;
    v36 = Matrix<double>::operator()(a2, &v46 + 1, &v46);
    if (fabs(v28 * (v32 * *v36 - v35 * v33) - v31 * (v30 * *v36 - v35 * v30) + v34 * (v29 * v33 - v32 * v30)) >= 0.00000011920929)
    {
      v46 = 1;
      v37 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 0x100000001;
      v38 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 0x200000001;
      v39 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 2;
      v40 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 0x100000002;
      v41 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 0x200000002;
      v42 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 3;
      v43 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 0x100000003;
      v44 = *Matrix<double>::operator()(a2, &v46 + 1, &v46);
      v46 = 0x200000003;
      v45 = Matrix<double>::operator()(a2, &v46 + 1, &v46);
      return fabs(v37 * (v41 * *v45 - v44 * v42) - v40 * (v39 * *v45 - v44 * v39) + v43 * (v38 * v42 - v41 * v39)) < 0.00000011920929;
    }

    return 1;
  }

  return result;
}

float32x2_t GeomUtils::ExtrinsicsToSimd4x3(float64x2_t *a1)
{
  v1 = *a1;
  v1.f64[1] = a1[1].f64[1];
  return vcvt_f32_f64(v1);
}

double GeomUtils::ExtrinsicsFromSimd4x3(float64x2_t *a1, float64x2_t *a2, int8x16_t a3, int8x16_t a4, __n128 a5, __n128 a6)
{
  v6 = vzip1_s32(*a3.i8, *a4.i8);
  v7 = vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL));
  v8 = vzip2_s32(*a4.i8, a5.n128_u64[0]);
  a5.n128_u32[1] = a3.u32[1];
  *a1 = vcvtq_f64_f32(v6);
  a1[1] = vcvtq_f64_f32(a5.n128_u64[0]);
  a1[2] = vcvtq_f64_f32(v8);
  a1[3] = vcvtq_f64_f32(v7);
  a1[4].f64[0] = a5.n128_f32[2];
  *a2 = vcvtq_f64_f32(a6.n128_u64[0]);
  result = a6.n128_f32[2];
  a2[1].f64[0] = a6.n128_f32[2];
  return result;
}

void Matrix<BOOL>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809C90;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8077774924);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void Matrix<unsigned short>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809CC0;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C80BDFB0063);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*,ImageUtils::Blob*,ImageUtils::Blob*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_224679C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 << 6;
  if (v6 << 6 < v4 || v3 > (v6 << 6) - v4)
  {
    __dst = 0;
    v24 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&__dst, v11);
    v12 = a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    *&v24 = v14 + v4;
    v16 = __dst;
    if (v14 < 1)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v15 = v14 >> 6;
      if (v14 >= 0x40)
      {
        memmove(__dst, v13, 8 * v15);
        v12 = a1;
      }

      v16 += v15;
      LODWORD(v17) = v14 & 0x3F;
      if ((v14 & 0x3F) != 0)
      {
        *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17) | *(v13 + v15) & (0xFFFFFFFFFFFFFFFFLL >> -v17);
      }

      v13 = *v12;
    }

    *v12 = __dst;
    __dst = v13;
    v18 = *(v12 + 8);
    *(v12 + 8) = v24;
    v24 = v18;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v16 = (*a1 + 8 * (v3 >> 6));
    v17 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
  }

  if (v4)
  {
    if (a3)
    {
      if (v17)
      {
        if ((64 - v17) >= v4)
        {
          v19 = v4;
        }

        else
        {
          v19 = (64 - v17);
        }

        *v16++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v17 - v19)) & (-1 << v17);
        v4 -= v19;
      }

      v20 = v4 >> 6;
      if (v4 >= 0x40)
      {
        memset(v16, 255, 8 * v20);
      }

      if ((v4 & 0x3F) != 0)
      {
        v21 = v16[v20] | (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
LABEL_43:
        v16[v20] = v21;
      }
    }

    else
    {
      if (v17)
      {
        if ((64 - v17) >= v4)
        {
          v22 = v4;
        }

        else
        {
          v22 = (64 - v17);
        }

        *v16++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v17 - v22)) & (-1 << v17));
        v4 -= v22;
      }

      v20 = v4 >> 6;
      if (v4 >= 0x40)
      {
        bzero(v16, 8 * v20);
      }

      if ((v4 & 0x3F) != 0)
      {
        v21 = v16[v20] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
        goto LABEL_43;
      }
    }
  }
}

void sub_224679EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27852C630, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t Algo::MeshGrid<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 20);
  v6 = *(a2 + 20);
  v7 = 8 * v6 * v5;
  if (*(a3 + 32) < v7)
  {
    if (*(a3 + 8) && *(a3 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a3 + 16) = v6;
  *(a3 + 20) = v5;
  v8 = *(a4 + 32);
  if (v8 < v7)
  {
    if (*(a4 + 8) && *(a4 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a4 + 16) = v6;
  *(a4 + 20) = v5;
  if (v6 && v5)
  {
    v9 = *(a1 + 8);
    v10 = *(a3 + 8);
    if (v5 <= 3)
    {
      do
      {
        *v10 = *v9;
        if (v5 == 1)
        {
          ++v10;
        }

        else
        {
          v10[1] = v9[1];
          if (v5 == 2)
          {
            v10 += 2;
          }

          else
          {
            v10[2] = v9[2];
            v10 += 3;
          }
        }

        --v6;
      }

      while (v6);
    }

    else
    {
      v11 = v5 & 0xFFFFFFFC;
      if ((v5 & 0xFFFFFFFC) == v5)
      {
        for (i = 0; i != v6; ++i)
        {
          if ((v10 - v9) > 0x1F)
          {
            v16 = &v10[v11];
            v17 = v10 + 2;
            v18 = (v9 + 2);
            v19 = v5 & 0xFFFFFFFC;
            do
            {
              v20 = *v18;
              *(v17 - 1) = *(v18 - 1);
              *v17 = v20;
              v17 += 2;
              v18 += 2;
              v19 -= 4;
            }

            while (v19);
            v10 = v16;
          }

          else
          {
            v13 = v5;
            v14 = v9;
            do
            {
              v15 = *v14++;
              *v10++ = v15;
              --v13;
            }

            while (v13);
          }
        }
      }

      else
      {
        for (j = 0; j != v6; ++j)
        {
          if ((v10 - v9) >= 0x20)
          {
            v24 = &v10[v11];
            v25 = v10 + 2;
            v26 = v5 & 0xFFFFFFFC;
            v27 = (v9 + 2);
            do
            {
              v28 = *v27;
              *(v25 - 1) = *(v27 - 1);
              *v25 = v28;
              v25 += 2;
              v27 += 2;
              v26 -= 4;
            }

            while (v26);
            v22 = v5 & 0xFFFFFFFC;
            v23 = &v9[v11];
            v10 = v24;
          }

          else
          {
            v22 = 0;
            v23 = v9;
          }

          v29 = v5 - v22;
          do
          {
            v30 = *v23++;
            *v10++ = v30;
            --v29;
          }

          while (v29);
        }
      }
    }
  }

  v32 = *(a3 + 16);
  v31 = *(a3 + 20);
  v33 = *(a4 + 8);
  if (v8 < 8 * v31 * v32)
  {
    if (v33)
    {
      if (*(a4 + 24) == 1)
      {
        MEMORY[0x22AA53170](*(a4 + 8), 0x1000C8000313F17);
      }
    }

    operator new[]();
  }

  *(a4 + 16) = v31;
  *(a4 + 20) = v32;
  vDSPMtranspose<double>(*(a3 + 8), 1, v33, 1, *(a3 + 20), *(a3 + 16));
  return 0;
}

uint64_t Interp2<double,CubicInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v8 = *(a1 + 20);
  if (v8 != *(a3 + 20))
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  v11 = *(a2 + 20);
  if (v11 != *(a3 + 16))
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  if (v8 <= 1)
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  if (v11 <= 1)
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  v14 = *(a4 + 20);
  if (v14 != *(a5 + 20))
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  if (*(a6 + 32) < (8 * v14))
  {
    if (*(a6 + 8))
    {
      if (*(a6 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a6 + 16) = 1;
  *(a6 + 20) = v14;
  v18 = *(a1 + 8);
  v19 = *v18;
  v20 = v18[*(a1 + 20) - 1];
  v21 = *(a2 + 8);
  v22 = *v21;
  v23 = v21[*(a2 + 20) - 1];
  v24 = *(a4 + 20);
  if ((a7 & 1) == 0)
  {
    if (!v24)
    {
      return 0;
    }

    v40 = 0;
    while (1)
    {
      v45 = *(*(a4 + 8) + 8 * v40);
      v46 = *(*(a5 + 8) + 8 * v40);
      v49 = v45 > v20 || v45 < v19 || v46 > v23 || v46 < v22;
      v44 = a8;
      if (v49)
      {
        goto LABEL_39;
      }

      v50 = *(a1 + 20);
      v51 = v50 - 1;
      v52 = *(a1 + 8);
      if (v50 - 1 >= 100)
      {
        v61 = 0;
        while (1)
        {
          v62 = (v61 + v51) >> 1;
          v63 = v52[v62];
          if (v63 == v45)
          {
            break;
          }

          if (v63 > v45)
          {
            v51 = v62 - 1;
          }

          else
          {
            v61 = v62 + 1;
          }

          if (v61 > v51)
          {
            goto LABEL_75;
          }
        }

        v61 = (v61 + v51) >> 1;
LABEL_75:
        if (v51 >= v61)
        {
          v51 = v61;
        }

        v56 = v51 & ~(v51 >> 31);
        v57 = *(a2 + 20);
        v42 = v57 - 1;
        v58 = *(a2 + 8);
        if (v57 - 1 < 100)
        {
LABEL_78:
          if (v57 < 1)
          {
LABEL_82:
            LODWORD(v64) = 0;
          }

          else
          {
            v64 = 0;
            while (v58[v64] <= v46)
            {
              if (v57 == ++v64)
              {
                goto LABEL_82;
              }
            }
          }

          v54 = v64 != 0;
          v65 = v64 - 1;
          if (v54)
          {
            v43 = v65;
          }

          else
          {
            v43 = 0;
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (v50 < 1)
        {
LABEL_55:
          LODWORD(v53) = 0;
        }

        else
        {
          v53 = 0;
          while (v52[v53] <= v45)
          {
            if (v50 == ++v53)
            {
              goto LABEL_55;
            }
          }
        }

        v54 = v53 != 0;
        v55 = v53 - 1;
        if (v54)
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = *(a2 + 20);
        v42 = v57 - 1;
        v58 = *(a2 + 8);
        if (v57 - 1 < 100)
        {
          goto LABEL_78;
        }
      }

      v41 = 0;
      while (1)
      {
        v59 = (v41 + v42) >> 1;
        v60 = v58[v59];
        if (v60 == v46)
        {
          break;
        }

        if (v60 > v46)
        {
          v42 = v59 - 1;
        }

        else
        {
          v41 = v59 + 1;
        }

        if (v41 > v42)
        {
          goto LABEL_35;
        }
      }

      v41 = (v41 + v42) >> 1;
LABEL_35:
      if (v42 >= v41)
      {
        v42 = v41;
      }

      v43 = v42 & ~(v42 >> 31);
LABEL_38:
      v44 = CubicInterpolator<double>::operator()(&v67, v52, v58, *(a3 + 8), v50, v57, v56, v43, v45, v46);
LABEL_39:
      *(*(a6 + 8) + 8 * v40++) = v44;
      if (v40 == v24)
      {
        return 0;
      }
    }
  }

  if (v24)
  {
    v25 = 0;
    v26 = v18[1] - v19;
    v27 = v21[1] - v22;
    v28 = 8 * v24;
    do
    {
      v30 = *(*(a4 + 8) + v25);
      v31 = *(*(a5 + 8) + v25);
      v34 = v30 > v20 || v30 < v19 || v31 > v23 || v31 < v22;
      v29 = a8;
      if (!v34)
      {
        v35 = ((v30 - v19) / v26);
        v36 = *(a1 + 20);
        if (v35 + 1 < v36 && *(*(a1 + 8) + 8 * (v35 + 1)) <= v30)
        {
          ++v35;
        }

        v37 = ((v31 - v22) / v27);
        v38 = *(a2 + 20);
        v39 = *(a2 + 8);
        if (v37 + 1 < v38 && v39[v37 + 1] <= v31)
        {
          ++v37;
        }

        v29 = CubicInterpolator<double>::operator()(&v67, *(a1 + 8), v39, *(a3 + 8), v36, v38, v35, v37, v30, v31);
      }

      *(*(a6 + 8) + v25) = v29;
      v25 += 8;
    }

    while (v28 != v25);
  }

  return 0;
}

double CubicInterpolator<double>::operator()(uint64_t a1, double *a2, double *a3, double *a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, double a9, double a10)
{
  if (a6 < 4)
  {
    if (a6 == 3)
    {
      v21 = CubicInterpolator<double>::operator()(a9, a1, a2, a4, a5, a7);
      v30 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[a5], a5, a7);
      v22 = v30;
      if (!a8)
      {
        v39 = -(v30 - v21 * 2.0);
        v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[2 * a5], a5, a7);
        v36 = (a10 - *a3) / (a3[1] - *a3);
        v25 = v22;
        v22 = v21;
        v21 = v39;
        return v22 + v36 * (v36 * (v21 + v22 * -2.5 + v25 * 2.0 + v24 * -0.5)) + v36 * (v36 * ((v22 - v25) * 1.5 + (v24 - v21) * 0.5)) * v36 + (v25 - v21) * 0.5 * v36;
      }

      v25 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[2 * a5], a5, a7);
      v24 = -(v22 - v25 * 2.0);
      v31 = a3[1];
      v32 = a10 - v31;
      v33 = v31 - *a3;
      goto LABEL_13;
    }

    v22 = CubicInterpolator<double>::operator()(a9, a1, a2, a4, a5, a7);
    v25 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[a5], a5, a7);
    v21 = -(v25 - v22 * 2.0);
    v24 = -(v22 - v25 * 2.0);
LABEL_12:
    v32 = a10 - *a3;
    v33 = a3[1] - *a3;
LABEL_13:
    v36 = v32 / v33;
    return v22 + v36 * (v36 * (v21 + v22 * -2.5 + v25 * 2.0 + v24 * -0.5)) + v36 * (v36 * ((v22 - v25) * 1.5 + (v24 - v21) * 0.5)) * v36 + (v25 - v21) * 0.5 * v36;
  }

  v18 = a6 - 2;
  if (a6 - 2 <= a8)
  {
    v34 = &a4[(a6 - 3) * a5];
    v21 = CubicInterpolator<double>::operator()(a9, a1, a2, v34, a5, a7);
    v22 = CubicInterpolator<double>::operator()(a9, a1, a2, &v34[a5], a5, a7);
    v25 = CubicInterpolator<double>::operator()(a9, a1, a2, &v34[2 * a5], a5, a7);
    v24 = -(v22 - v25 * 2.0);
    v26 = a3[v18];
    v27 = a10 - v26;
    v28 = a6 - 1;
    goto LABEL_9;
  }

  if (!a8)
  {
    v22 = CubicInterpolator<double>::operator()(a9, a1, a2, a4, a5, a7);
    v37 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[a5], a5, a7);
    v21 = -(v37 - v22 * 2.0);
    v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[2 * a5], a5, a7);
    v25 = v37;
    goto LABEL_12;
  }

  v19 = &a4[(a8 - 1) * a5];
  v21 = CubicInterpolator<double>::operator()(a9, a1, a2, v19, a5, a7);
  v22 = CubicInterpolator<double>::operator()(a9, a1, a2, &v19[a5], a5, a7);
  v23 = CubicInterpolator<double>::operator()(a9, a1, a2, &v19[2 * a5], a5, a7);
  v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &v19[3 * a5], a5, a7);
  v25 = v23;
  v26 = a3[a8];
  v27 = a10 - v26;
  v28 = a8 + 1;
LABEL_9:
  v36 = v27 / (a3[v28] - v26);
  return v22 + v36 * (v36 * (v21 + v22 * -2.5 + v25 * 2.0 + v24 * -0.5)) + v36 * (v36 * ((v22 - v25) * 1.5 + (v24 - v21) * 0.5)) * v36 + (v25 - v21) * 0.5 * v36;
}

double CubicInterpolator<double>::operator()(double a1, uint64_t a2, double *a3, double *a4, unsigned int a5, unsigned int a6)
{
  if (a5 >= 4)
  {
    v6 = a5 - 2;
    if (a5 - 2 <= a6)
    {
      v7 = a4[a5 - 3];
      v8 = a4[v6];
      v9 = a4[a5 - 1];
      v11 = a3[v6];
      v10 = -(v8 - v9 * 2.0);
      v12 = a1 - v11;
      v13 = a3[a5 - 1];
      goto LABEL_13;
    }

    if (a6)
    {
      v7 = a4[a6 - 1];
      v8 = a4[a6];
      v9 = a4[a6 + 1];
      v10 = a4[a6 + 2];
      v11 = a3[a6];
      v12 = a1 - v11;
      v13 = a3[a6 + 1];
LABEL_13:
      v14 = v12 / (v13 - v11);
      return v8 + v14 * ((v7 + v8 * -2.5 + v9 * 2.0 + v10 * -0.5) * v14) + v14 * (v14 * ((v8 - v9) * 1.5 + (v10 - v7) * 0.5)) * v14 + (v9 - v7) * 0.5 * v14;
    }

    v8 = *a4;
    v9 = a4[1];
    goto LABEL_11;
  }

  if (a5 != 3)
  {
    v8 = *a4;
    v9 = a4[1];
    v7 = -(v9 - *a4 * 2.0);
    v10 = -(*a4 - v9 * 2.0);
LABEL_12:
    v11 = *a3;
    v13 = a3[1];
    v12 = a1 - *a3;
    goto LABEL_13;
  }

  v8 = *a4;
  v9 = a4[1];
  if (!a6)
  {
LABEL_11:
    v7 = -(v9 - v8 * 2.0);
    v10 = a4[2];
    goto LABEL_12;
  }

  v10 = -(v9 - a4[2] * 2.0);
  v14 = (a1 - a3[1]) / (a3[1] - *a3);
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  return v8 + v14 * ((v7 + v8 * -2.5 + v9 * 2.0 + v10 * -0.5) * v14) + v14 * (v14 * ((v8 - v9) * 1.5 + (v10 - v7) * 0.5)) * v14 + (v9 - v7) * 0.5 * v14;
}

void Matrix<double>::Matrix(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_283809BF8;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

void sub_22467AD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Interp1<double,LinearInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = *(a1 + 20);
  if (v5 != *(a2 + 20))
  {
    Interp1<double,LinearInterpolator<double>>();
  }

  if (v5 <= 1)
  {
    Interp1<double,LinearInterpolator<double>>();
  }

  v8 = *(a1 + 8);
  v9 = *(a3 + 8);
  v10 = *(a2 + 8);
  v11 = *(a3 + 20);
  v12 = *(a4 + 8);
  if (*(a4 + 32) < (8 * v11))
  {
    if (v12)
    {
      if (*(a4 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a4 + 16) = 1;
  *(a4 + 20) = v11;
  if (v11 >= 1)
  {
    v13 = *v8;
    v14 = v8[v5 - 1];
    v15 = *(a1 + 20);
    v16 = v15 - 1;
    v17 = v10 + 8 * v5;
    v18 = v5 - 1;
    if (v15 - 1 >= 100)
    {
      for (i = 0; i != v11; ++i)
      {
        v33 = v9[i];
        v34 = v33 > v14 || v33 < v13;
        v32 = a5;
        if (!v34)
        {
          v30 = 0;
          v35 = v16;
          while (1)
          {
            v36 = (v30 + v35) >> 1;
            v37 = *(*(a1 + 8) + 8 * v36);
            if (v37 == v33)
            {
              break;
            }

            if (v37 > v33)
            {
              v35 = v36 - 1;
            }

            else
            {
              v30 = v36 + 1;
            }

            if (v30 > v35)
            {
              if (v33 >= v14)
              {
                goto LABEL_56;
              }

              goto LABEL_37;
            }
          }

          v30 = (v30 + v35) >> 1;
          if (v33 >= v14)
          {
LABEL_56:
            v32 = *(v17 - 8);
            goto LABEL_42;
          }

LABEL_37:
          if (v35 < v30)
          {
            v30 = v35;
          }

          v31 = v30 & ~(v30 >> 31);
          if (v18 <= v31)
          {
            v31 = v5 - 2;
          }

          v32 = *(*(a2 + 8) + 8 * v31) + (*(*(a2 + 8) + 8 * (v31 + 1)) - *(*(a2 + 8) + 8 * v31)) * ((v33 - v8[v31]) / (v8[v31 + 1] - v8[v31]));
        }

LABEL_42:
        v12[i] = v32;
      }
    }

    else if (v15 < 1)
    {
      do
      {
        v27 = *v9;
        v28 = *v9 > v14 || v27 < v13;
        v26 = a5;
        if (!v28)
        {
          if (v27 < v14)
          {
            v26 = **(a2 + 8) + (*(*(a2 + 8) + 8) - **(a2 + 8)) * ((v27 - *v8) / (v8[1] - *v8));
          }

          else
          {
            v26 = *(v17 - 8);
          }
        }

        *v12++ = v26;
        ++v9;
        --v11;
      }

      while (v11);
    }

    else
    {
      for (j = 0; j != v11; ++j)
      {
        v23 = v9[j];
        v24 = v23 > v14 || v23 < v13;
        v22 = a5;
        if (!v24)
        {
          v25 = 0;
          while (*(*(a1 + 8) + 8 * v25) <= v23)
          {
            if (v15 == ++v25)
            {
              LODWORD(v25) = 0;
              break;
            }
          }

          if (v23 < v14)
          {
            v20 = v25 != 0;
            v21 = v25 - 1;
            if (!v20)
            {
              v21 = 0;
            }

            if (v18 <= v21)
            {
              v21 = v5 - 2;
            }

            v22 = *(*(a2 + 8) + 8 * v21) + (*(*(a2 + 8) + 8 * (v21 + 1)) - *(*(a2 + 8) + 8 * v21)) * ((v23 - v8[v21]) / (v8[v21 + 1] - v8[v21]));
          }

          else
          {
            v22 = *(v17 - 8);
          }
        }

        v12[j] = v22;
      }
    }
  }

  return 0;
}

uint64_t GeomUtils::CalcRotationMatrix<double>(uint64_t a1, double a2, long double a3, long double a4)
{
  v8 = cos(a3);
  v9 = cos(a4);
  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(a1 + 20), !v11))
  {
    GeomUtils::CalcRotationMatrix<double>();
  }

  v12 = v9;
  **(a1 + 8) = v8 * v9;
  v13 = __sincos_stret(a2);
  v14 = sin(a3);
  v15 = sin(a4);
  if (v11 == 1)
  {
    GeomUtils::CalcRotationMatrix<double>();
  }

  *(*(a1 + 8) + 8) = v13.__sinval * v12 * v14 - v13.__cosval * v15;
  if (v11 <= 2)
  {
    GeomUtils::CalcRotationMatrix<double>();
  }

  *(*(a1 + 8) + 16) = v13.__cosval * v14 * v12 + v13.__sinval * v15;
  if (v10 == 1)
  {
    GeomUtils::CalcRotationMatrix<double>();
  }

  *(*(a1 + 8) + 8 * v11) = v8 * v15;
  *(*(a1 + 8) + 8 * v11 + 8) = v13.__sinval * v14 * v15 + v13.__cosval * v12;
  *(*(a1 + 8) + 8 * v11 + 16) = v13.__cosval * v14 * v15 - v13.__sinval * v12;
  if (v10 <= 2)
  {
    GeomUtils::CalcRotationMatrix<double>();
  }

  v16 = 8 * (2 * v11);
  *(*(a1 + 8) + v16) = -v14;
  *(*(a1 + 8) + v16 + 8) = v13.__sinval * v8;
  *(*(a1 + 8) + v16 + 16) = v13.__cosval * v8;
  return 0;
}

void sub_22467BB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  MatrixNxPts<2u,double>::~MatrixNxPts(&a24);
  Matrix<double>::~Matrix(&a29);
  Matrix<double>::~Matrix(&a34);
  Matrix<double>::~Matrix(&a39);
  Matrix<double>::~Matrix(v39 - 248);
  Matrix<double>::~Matrix(v39 - 208);
  Matrix<double>::~Matrix(v39 - 168);
  Matrix<double>::~Matrix(v39 - 128);
  _Unwind_Resume(a1);
}

uint64_t Matrix<double>::DotRepeatProductFromRight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  *a3 = &unk_283809BF8;
  if (v4 * v5)
  {
    operator new[]();
  }

  result = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  *(a3 + 24) = 0;
  *(a3 + 32) = 8 * v5 * v4;
  v7 = *(a2 + 16);
  if (v5 == v7)
  {
    v8 = *(a2 + 20);
    v9 = *(a1 + 20);
    if (v8 == 1)
    {
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          if (v5)
          {
            if (i < v4)
            {
              v11 = 0;
              v12 = 0;
              v13 = 0;
              while (8 * v5 != v13)
              {
                *(*(a3 + 8) + 8 * i + 8 * v12) = *(*(a1 + 8) + 8 * i + 8 * v11) * *(*(a2 + 8) + v13);
                v13 += 8;
                v12 += v4;
                v11 += v9;
                if (8 * v5 == v13)
                {
                  goto LABEL_7;
                }
              }
            }

            __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
          }

LABEL_7:
          ;
        }
      }

      return result;
    }
  }

  else
  {
    LODWORD(v9) = *(a1 + 20);
    v8 = *(a2 + 20);
  }

  if (v7 != 1 || v9 != v8)
  {
    __assert_rtn("DotRepeatProductFromRight", "Matrix.hpp", 1503, "0");
  }

  if (v5)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      if (v8)
      {
        if (v16 < v5)
        {
          v17 = 0;
          v18 = 8 * v15;
          v19 = v4;
          while (v19)
          {
            result = *(a3 + 8) + 8 * v14;
            *(result + v17) = *(*(a1 + 8) + v18) * *(*(a2 + 8) + v17);
            --v19;
            v18 += 8;
            v17 += 8;
            if (8 * v8 == v17)
            {
              goto LABEL_19;
            }
          }
        }

        __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
      }

LABEL_19:
      ++v16;
      v15 += v8;
      v14 += v4;
    }

    while (v16 != v5);
  }

  return result;
}

uint64_t DistortRadialLiteInternal<double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int a8, char a9)
{
  if (*(a1 + 16) != 2)
  {
    DistortRadialLiteInternal<double>();
  }

  if (a7)
  {
    v12 = a2;
  }

  else
  {
    v12 = a3;
  }

  if (a7)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  v50 = 1;
  v51 = a4;
  v52 = 0;
  v53 = 8 * a4;
  v48 = &unk_283809C28;
  v49 = v12;
  v44 = 1;
  v45 = a4;
  v46 = 0;
  v47 = v53;
  v42 = &unk_283809C28;
  v43 = v13;
  v14 = *(a1 + 20);
  v36 = &unk_283809BF8;
  if (v14)
  {
    operator new[]();
  }

  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = &unk_283809C28;
  v37 = 0;
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = &unk_283809C28;
  v31 = 0;
  Matrix<double>::DotMult<double>(a1, a1, v28);
  if (a8)
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>(&v48, &v42, &v36, &v30);
  }

  else
  {
    if (!v39)
    {
      __assert_rtn("Interp1WithExtrap", "Algo.hpp", 1355, "xq.GetNumOfPoints() > 0");
    }

    Interp1WithExtrap<double,LinearInterpolator<double>>(&v48, &v42, &v36, &v30, a9);
  }

  Matrix<double>::DotDiv(&v30, &v36, v54);
  v15 = v57;
  v26 = v55;
  v27 = v56;
  v16 = v39;
  if (v39 >= 1)
  {
    if (!v38)
    {
LABEL_49:
      __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
    }

    v17 = 0;
    do
    {
      if (*(v37 + 8 * v17) == 0.0)
      {
        if (v17 >= v27)
        {
          goto LABEL_49;
        }

        v26[v17] = 1.0;
      }

      ++v17;
    }

    while (v16 != v17);
    v18 = *(a1 + 16);
    if (!v18)
    {
      goto LABEL_60;
    }

    v19 = *(a1 + 20);
    if (v18 != 1)
    {
      v20 = 0;
      while (1)
      {
        if (v19 == v20)
        {
          goto LABEL_60;
        }

        if (v20 >= v27)
        {
          goto LABEL_59;
        }

        v21 = *(a5 + 16);
        if (!v21)
        {
          goto LABEL_59;
        }

        v22 = *(a5 + 20);
        if (v20 >= v22)
        {
          goto LABEL_59;
        }

        *(*(a5 + 8) + 8 * v20) = *(*(a1 + 8) + 8 * v20) * v26[v20];
        if (v21 == 1)
        {
          break;
        }

        *(*(a5 + 8) + 8 * v22 + 8 * v20) = v26[v20] * *(*(a1 + 8) + 8 * v19 + 8 * v20);
        if (v16 == ++v20)
        {
          goto LABEL_30;
        }
      }

      v24 = 120;
LABEL_51:
      __assert_rtn("operator()", "Matrix.hpp", v24, "row < m_rows && col < m_cols");
    }

    if (v19)
    {
      if (v27 && *(a5 + 16) && *(a5 + 20))
      {
        **(a5 + 8) = **(a1 + 8) * *v26;
        v24 = 126;
        goto LABEL_51;
      }

LABEL_59:
      v25 = 120;
    }

    else
    {
LABEL_60:
      v25 = 126;
    }

    __assert_rtn("operator()", "Matrix.hpp", v25, "row < m_rows && col < m_cols");
  }

LABEL_30:
  if (v26 && v15)
  {
    MEMORY[0x22AA53170]();
  }

  v28[0] = &unk_283809BF8;
  if (v28[1] && v29 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v30 = &unk_283809BF8;
  if (v31 && v34 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v36 = &unk_283809BF8;
  if (v37 && v40 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v42 = &unk_283809BF8;
  if (v43 && v46 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v48 = &unk_283809BF8;
  if (v49 && v52 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  return 0;
}

void sub_22467C598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a26);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a31);
  MatrixNxPts<1u,double>::~MatrixNxPts(v31 - 184);
  _Unwind_Resume(a1);
}

void std::vector<Matrix<double>>::__emplace_back_slow_path<Matrix<double> const&>(void *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v3 = 0x666666666666666;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    Matrix<double>::Matrix(8 * ((a1[1] - *a1) >> 3), a2, 0, -1);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void sub_22467C7C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_22467C7D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v4)
  {
    std::vector<Matrix<double>>::__emplace_back_slow_path<Matrix<double> const&>(v3, v2);
  }

  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<Matrix<double>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<Matrix<double>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 5;
        v7 = v4 - 5;
        v8 = v4 - 5;
        do
        {
          v9 = *v8;
          v8 -= 5;
          (*v9)(v7);
          v6 -= 5;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void Matrix<double>::MultAxBToC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  if (v6 == 1 && v7 == 1)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
    if (v7 * v6)
    {
      operator new[]();
    }

    vDSPVsmul<double>(*(a2 + 8), 1, *(a1 + 8), 0, 1, 0);
    v12 = 8 * v6 * v7;
    v13 = *(a3 + 8);
    if (*(a3 + 32) < v12)
    {
      if (v13 && *(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }

      operator new[]();
    }

    goto LABEL_27;
  }

  v10 = *(a2 + 16);
  v9 = *(a2 + 20);
  if (v9 == 1 && v10 == 1)
  {
    if (v7 * v6)
    {
      operator new[]();
    }

    vDSPVsmul<double>(*(a1 + 8), 1, *(a2 + 8), 0, 1, 0);
    v12 = 8 * v6 * v7;
    v13 = *(a3 + 8);
    if (*(a3 + 32) < v12)
    {
      if (v13 && *(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }

      operator new[]();
    }

LABEL_27:
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    memcpy(v13, 0, v12);
    goto LABEL_28;
  }

  if (v7 != v10)
  {
    Matrix<double>::MultAxBToC();
  }

  if (v6 != *(a3 + 16) || v9 != *(a3 + 20))
  {
    Matrix<double>::MultAxBToC();
  }

LABEL_28:
  LODWORD(v14) = *(a1 + 20);
  vDSPMmul<double>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 16), *(a3 + 20), v14);
}

void sub_22467CBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467CC08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467CC1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467CC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Interp1SortedWithExtrap<double,LinearInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>();
  }

  v4 = *(a3 + 20);
  if (v4 <= 1)
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>();
  }

  if (*(a4 + 32) < (8 * v4))
  {
    if (*(a4 + 8))
    {
      if (*(a4 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a4 + 16) = 1;
  *(a4 + 20) = v4;
  v5 = *(a3 + 20);
  if (v5)
  {
    v6 = *(a1 + 20);
    v7 = v6 - 1;
    v8 = *(*(a1 + 8) + 8 * (v6 - 1));
    v9 = v6 - 2;
    if (v6 - 1 >= 100)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v22 = *(*(a3 + 8) + 8 * v17);
        v23 = *(a1 + 8);
        v19 = v9;
        if (v22 < v8)
        {
          v24 = v7;
          if (v7 >= v18)
          {
            while (1)
            {
              v25 = (v18 + v24) >> 1;
              v26 = *(v23 + 8 * v25);
              if (v26 == v22)
              {
                break;
              }

              if (v26 > v22)
              {
                v24 = v25 - 1;
              }

              else
              {
                v18 = v25 + 1;
              }

              if (v18 > v24)
              {
                goto LABEL_24;
              }
            }

            v18 = (v18 + v24) >> 1;
          }

LABEL_24:
          if (v24 < v18)
          {
            v18 = v24;
          }

          v19 = v18 & ~(v18 >> 31);
        }

        if (v7 <= v19)
        {
          v21 = v9;
        }

        else
        {
          v21 = v19;
        }

        v20 = *(a2 + 8);
        *(*(a4 + 8) + 8 * v17++) = *(v20 + 8 * v21) + (*(v20 + 8 * (v21 + 1)) - *(v20 + 8 * v21)) * ((v22 - *(v23 + 8 * v21)) / (*(v23 + 8 * (v21 + 1)) - *(v23 + 8 * v21)));
        v18 = v19;
      }

      while (v17 != v5);
    }

    else if (v6 <= 0)
    {
      v27 = 0;
      v28 = 8 * v5;
      do
      {
        v29 = *(*(a3 + 8) + v27);
        if (v29 >= v8)
        {
          v30 = v9;
        }

        else
        {
          v30 = 0;
        }

        if (v7 <= v30)
        {
          v30 = v9;
        }

        v31 = *(a2 + 8);
        *(*(a4 + 8) + v27) = *(v31 + 8 * v30) + (*(v31 + 8 * (v30 + 1)) - *(v31 + 8 * v30)) * ((v29 - *(*(a1 + 8) + 8 * v30)) / (*(*(a1 + 8) + 8 * (v30 + 1)) - *(*(a1 + 8) + 8 * v30)));
        v27 += 8;
      }

      while (v28 != v27);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        v14 = *(*(a3 + 8) + 8 * i);
        v15 = *(a1 + 8);
        v12 = v6 - 2;
        if (v14 < v8)
        {
          v16 = 0;
          while (*(v15 + 8 * v16) <= v14)
          {
            if (v6 == ++v16)
            {
              LODWORD(v16) = 0;
              break;
            }
          }

          v11 = v16 != 0;
          v12 = v16 - 1;
          if (!v11)
          {
            v12 = 0;
          }
        }

        if (v7 <= v12)
        {
          v12 = v6 - 2;
        }

        v13 = *(a2 + 8);
        *(*(a4 + 8) + 8 * i) = *(v13 + 8 * v12) + (*(v13 + 8 * (v12 + 1)) - *(v13 + 8 * v12)) * ((v14 - *(v15 + 8 * v12)) / (*(v15 + 8 * (v12 + 1)) - *(v15 + 8 * v12)));
      }
    }
  }

  return 0;
}

uint64_t Interp1WithExtrap<double,LinearInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    Interp1WithExtrap<double,LinearInterpolator<double>>();
  }

  v6 = *(a3 + 20);
  v7 = *(a4 + 8);
  if (*(a4 + 32) < (8 * v6))
  {
    if (v7)
    {
      if (*(a4 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a4 + 16) = 1;
  *(a4 + 20) = v6;
  v8 = *(a1 + 20);
  v9 = *(a3 + 8);
  v10 = *(a2 + 8);
  v11 = *(a1 + 8);
  v12 = v11[v8 - 1];
  if (a5)
  {
    if (v6 >= 1)
    {
      v13 = *v11;
      v14 = v11[1] - *v11;
      do
      {
        v16 = *v9;
        v15 = v8 - 2;
        if (*v9 < v12)
        {
          v15 = ((v16 - v13) / v14);
          if (v15 + 1 < v8 && *(*(a1 + 8) + 8 * (v15 + 1)) <= v16)
          {
            ++v15;
          }
        }

        if (v8 - 1 <= v15)
        {
          v15 = v8 - 2;
        }

        *v7++ = *(v10 + 8 * v15) + (*(v10 + 8 * (v15 + 1)) - *(v10 + 8 * v15)) * ((v16 - v11[v15]) / (v11[v15 + 1] - v11[v15]));
        ++v9;
        --v6;
      }

      while (v6);
    }
  }

  else if (v6 >= 1)
  {
    v17 = v8 - 2;
    v18 = v8 - 1;
    if (v8 - 1 >= 100)
    {
      for (i = 0; i != v6; ++i)
      {
        v31 = v9[i];
        v30 = v17;
        if (v31 < v12)
        {
          v29 = 0;
          v32 = v18;
          while (1)
          {
            v33 = (v29 + v32) >> 1;
            v34 = *(*(a1 + 8) + 8 * v33);
            if (v34 == v31)
            {
              break;
            }

            if (v34 > v31)
            {
              v32 = v33 - 1;
            }

            else
            {
              v29 = v33 + 1;
            }

            if (v29 > v32)
            {
              goto LABEL_40;
            }
          }

          v29 = (v29 + v32) >> 1;
LABEL_40:
          if (v32 < v29)
          {
            v29 = v32;
          }

          v30 = v29 & ~(v29 >> 31);
        }

        if (v18 <= v30)
        {
          v30 = v17;
        }

        v7[i] = *(v10 + 8 * v30) + (*(v10 + 8 * (v30 + 1)) - *(v10 + 8 * v30)) * ((v31 - v11[v30]) / (v11[v30 + 1] - v11[v30]));
      }
    }

    else if (v8 <= 0)
    {
      do
      {
        v20 = *v9++;
        v21 = v20;
        if (v20 >= v12)
        {
          v22 = v17;
        }

        else
        {
          v22 = 0;
        }

        if (v18 <= v22)
        {
          v22 = v17;
        }

        *v7++ = *(v10 + 8 * v22) + (*(v10 + 8 * (v22 + 1)) - *(v10 + 8 * v22)) * ((v21 - v11[v22]) / (v11[v22 + 1] - v11[v22]));
        --v6;
      }

      while (v6);
    }

    else
    {
      for (j = 0; j != v6; ++j)
      {
        v26 = v9[j];
        v25 = v8 - 2;
        if (v26 < v12)
        {
          v27 = 0;
          while (*(*(a1 + 8) + 8 * v27) <= v26)
          {
            if (v8 == ++v27)
            {
              LODWORD(v27) = 0;
              break;
            }
          }

          v24 = v27 != 0;
          v25 = v27 - 1;
          if (!v24)
          {
            v25 = 0;
          }
        }

        if (v18 <= v25)
        {
          v25 = v8 - 2;
        }

        v7[j] = *(v10 + 8 * v25) + (*(v10 + 8 * (v25 + 1)) - *(v10 + 8 * v25)) * ((v26 - v11[v25]) / (v11[v25 + 1] - v11[v25]));
      }
    }
  }

  return 0;
}

void Matrix<double>::DotDiv(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 20);
  if (v3 != *(a1 + 20) || (v4 = *(a2 + 16), v4 != *(a1 + 16)))
  {
    Matrix<double>::DotDiv();
  }

  *a3 = &unk_283809BF8;
  if (v4 * v3)
  {
    operator new[]();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = v4;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = 8 * v3 * v4;
  vDSPVdiv<double>(*(a1 + 8), 1, *(a2 + 8), 1, 0, 1, 0);
}

void GeomUtils::check3of4SpotsOnSameLine()
{
  __assert_rtn("check3of4SpotsOnSameLine", "GeomUtils.cpp", 1221, "x1.Cols()==4 && x1.Rows()==3");
}

{
  __assert_rtn("check3of4SpotsOnSameLine", "GeomUtils.cpp", 1222, "x2.Cols()==4 && x2.Rows()==3");
}

void Interp2<double,CubicInterpolator<double>>()
{
  __assert_rtn("Interp2", "Algo.hpp", 755, "x.GetNumOfPoints() == v.Cols()");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 756, "y.GetNumOfPoints() == v.Rows()");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 759, "xq.GetNumOfPoints() == yq.GetNumOfPoints()");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 758, "v.Rows() >= 2");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 757, "v.Cols() >= 2");
}

void Interp1<double,LinearInterpolator<double>>()
{
  __assert_rtn("Interp1", "Algo.hpp", 1142, "xLen == v.GetNumOfPoints()");
}

{
  __assert_rtn("Interp1", "Algo.hpp", 1143, "xLen > 1");
}

uint64_t std::vector<Matrix<double>>::__emplace_back_slow_path<Matrix<double> const&>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 40;
  v4 = (a1 - 40);
  v5 = (a1 - 40);
  do
  {
    v6 = *v5;
    v5 -= 5;
    result = (*v6)(v4);
    v3 -= 40;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void Matrix<double>::MultAxBToC()
{
  __assert_rtn("MultAxBToC", "Matrix.hpp", 1596, "m_cols == B.Rows() && Input dimensions not legal");
}

{
  __assert_rtn("MultAxBToC", "Matrix.hpp", 1597, "m_rows == C->Rows() && B.Cols() == C->Cols() && Output dimensions not legal");
}

void Interp1SortedWithExtrap<double,LinearInterpolator<double>>()
{
  __assert_rtn("Interp1SortedWithExtrap", "Algo.hpp", 1450, "x.GetNumOfPoints() == v.GetNumOfPoints()");
}

{
  __assert_rtn("Interp1SortedWithExtrap", "Algo.hpp", 1451, "xqSorted.GetNumOfPoints() > 1");
}

double *ImageUtils::IntegralImage<double>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  result = *(a2 + 8);
  if (*(a2 + 32) < 8 * v3 * v4)
  {
    if (result)
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = 0.0;
    v8 = v4;
    do
    {
      v9 = *v6++;
      v7 = v7 + v9;
      *result++ = v7;
      --v8;
    }

    while (v8);
    if (v3 >= 2)
    {
      v10 = *(a2 + 8);
      for (i = 1; i != v3; ++i)
      {
        v12 = 0.0;
        v13 = v4;
        do
        {
          v14 = *v6++;
          v12 = v12 + v14;
          v15 = *v10++;
          *result++ = v12 + v15;
          --v13;
        }

        while (v13);
      }
    }
  }

  return result;
}

double *ImageUtils::IntegralImage<float>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  result = *(a2 + 8);
  if (*(a2 + 32) < 8 * v3 * v4)
  {
    if (result)
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = 0.0;
    v8 = v4;
    do
    {
      v9 = *v6++;
      v7 = v7 + v9;
      *result++ = v7;
      --v8;
    }

    while (v8);
    if (v3 >= 2)
    {
      v10 = *(a2 + 8);
      for (i = 1; i != v3; ++i)
      {
        v12 = 0.0;
        v13 = v4;
        do
        {
          v14 = *v6++;
          v12 = v12 + v14;
          v15 = *v10++;
          *result++ = v15 + v12;
          --v13;
        }

        while (v13);
      }
    }
  }

  return result;
}

uint64_t ImageUtils::AdaptiveThreshold<double>(uint64_t a1, unsigned int a2, int a3, uint64_t a4, double a5)
{
  if (a3)
  {
    return AdaptiveThreshold<double,true>(a1, a2, a4, a5);
  }

  else
  {
    return AdaptiveThreshold<double,false>(a1, a2, a4, a5);
  }
}

uint64_t AdaptiveThreshold<double,true>(uint64_t a1, unsigned int a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 20);
  if (v4 <= a2 || (v7 = *(a1 + 16), v7 <= a2))
  {
    AdaptiveThreshold<double,true>();
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = v10;
  v12 = v9;
  if (*(a3 + 32) < v7 * v4)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v7;
  *(a3 + 20) = v4;
  if (8 * v9 * v10)
  {
    operator new[]();
  }

  v13 = 0;
  if (v10)
  {
    v14 = *(a1 + 8);
    v15 = 0.0;
    v16 = v10;
    v17 = 0;
    do
    {
      v18 = *v14++;
      v15 = v15 + v18;
      *v17++ = v15;
      --v16;
    }

    while (v16);
    if (v12 >= 2)
    {
      for (i = 1; i != v12; ++i)
      {
        v20 = 0.0;
        v21 = v11;
        do
        {
          v22 = *v14++;
          v20 = v20 + v22;
          v23 = *v13++;
          *v17++ = v20 + v23;
          --v21;
        }

        while (v21);
      }
    }
  }

  v24 = a2 - 1;
  if (v24 >= v12 || v24 >= v11)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v25 = *(a1 + 20);
  v192 = v25 - 1;
  if (v192 >= v11)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v26 = ~a2;
  v191 = v25 + ~a2;
  if (v191 >= v11)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v27 = *(a1 + 16);
  v28 = v27 - 1;
  if (v27 - 1 >= v12)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v188 = *(a1 + 16);
  v29 = v27 + v26;
  if (v27 + v26 >= v12)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  LODWORD(v30) = 0;
  v31 = a2 >> 1;
  v32 = a2 & 1;
  v33 = (a2 >> 1) + v32 - 1;
  v34 = v4 - (a2 >> 1);
  v35 = v7 - (a2 >> 1);
  v36 = 8 * v24;
  v37 = v11 * v24;
  v38 = *(v36 + 8 * v37);
  v39 = 8 * v192;
  v40 = 8 * v191;
  v41 = v28 * v11;
  v42 = *(v39 + 8 * v37) - *(v40 + 8 * v37);
  v43 = v29 * v11;
  v44 = *(v36 + 8 * v41) - *(v36 + 8 * v43);
  v186 = v43;
  v187 = v41;
  v45 = *(v39 + 8 * v41) + *(v40 + 8 * v43) - *(v40 + 8 * v41) - *(v39 + 8 * v43);
  v46 = *(a1 + 8);
  v47 = *(a3 + 8);
  v48 = (a2 * a2);
  v49 = ~v33;
  v50 = (a2 >> 1) + (a2 & 1);
  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = v51 & 0xFFFFFFF0;
  v53 = v52;
  v54 = vdupq_lane_s64(*&a4, 0);
  v55 = vdupq_lane_s64(v38, 0);
  v56 = vdupq_lane_s64(*&v42, 0);
  v57 = v11 - v11 * v50;
  v58 = v11 + v11 * v31;
  v59 = 8 * v37;
  v60 = v51 - v31 - v32;
  v61 = v59 + 8 * v60;
  v62 = v59 + 8 * (v31 + v51);
  v63 = 1;
  v64.i64[0] = 0x101010101010101;
  v64.i64[1] = 0x101010101010101;
  do
  {
    v65 = v63;
    v66 = v57;
    v67 = v58;
    if (v50 <= 0xF)
    {
      v68 = 0;
      v69 = v46;
      v70 = v47;
LABEL_35:
      v80 = v51 - v68;
      do
      {
        v81 = *v69++;
        v70->i8[0] = (v81 + a4) * v48 <= *&v38;
        v70 = (v70 + 1);
        --v80;
      }

      while (v80);
      goto LABEL_37;
    }

    v69 = &v46[v53];
    v70 = (v47 + v52);
    v71 = v51 & 0xFFFFFFF0;
    do
    {
      v73 = *(v46 + 12);
      v72 = *(v46 + 14);
      v75 = *(v46 + 8);
      v74 = *(v46 + 10);
      v77 = *(v46 + 4);
      v76 = *(v46 + 6);
      v78 = *v46;
      v79 = *(v46 + 2);
      v46 += 16;
      *v47++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v78, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v79, v54), v48))), vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v77, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v76, v54), v48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v75, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v74, v54), v48))), vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v73, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v72, v54), v48))))), v64);
      v71 -= 16;
    }

    while (v71);
    v68 = v51 & 0xFFFFFFF0;
    if (v52 != v51)
    {
      goto LABEL_35;
    }

LABEL_37:
    if (v51 >= v34)
    {
      v84 = v51;
      v83 = v69;
      if (v51 >= v25)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v82 = 0;
      v83 = v69;
      do
      {
        if (v31 + v51 + v82 >= v11)
        {
          __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
        }

        if (v60 + v82 >= v11)
        {
          __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
        }

        v70->i8[v82] = (v69[v82] + a4) * v48 <= *(v62 + 8 * v82) - *(v61 + 8 * v82);
        ++v83;
        ++v82;
      }

      while (v51 + v82 < v34);
      v84 = v51 + v82;
      v70 = (v70 + v82);
      if (v51 + v82 >= v25)
      {
LABEL_28:
        v47 = v70;
        v46 = v83;
        goto LABEL_29;
      }
    }

    v85 = v25 + ~v84;
    if (v85 <= 0xE)
    {
      v46 = v83;
      v47 = v70;
LABEL_50:
      v97 = v25 - v84;
      do
      {
        v98 = *v46++;
        v47->i8[0] = (v98 + a4) * v48 <= v42;
        v47 = (v47 + 1);
        --v97;
      }

      while (v97);
      goto LABEL_29;
    }

    v86 = v85 + 1;
    v87 = (v85 + 1) & 0x1FFFFFFF0;
    v46 = &v83[v87];
    v47 = (v70 + v87);
    v84 += v87;
    v88 = v87;
    do
    {
      v90 = *(v83 + 12);
      v89 = *(v83 + 14);
      v92 = *(v83 + 8);
      v91 = *(v83 + 10);
      v94 = *(v83 + 4);
      v93 = *(v83 + 6);
      v95 = *v83;
      v96 = *(v83 + 2);
      v83 += 16;
      *v70++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v95, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v96, v54), v48))), vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v94, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v93, v54), v48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v92, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v91, v54), v48))), vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v90, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v89, v54), v48))))), v64);
      v88 -= 16;
    }

    while (v88);
    if (v86 != v87)
    {
      goto LABEL_50;
    }

LABEL_29:
    LODWORD(v30) = v30 + 1;
    v63 = v65 + 1;
    v57 = v66 + v11;
    v58 = v67 + v11;
  }

  while (v30 <= v33);
  if (v30 < v35)
  {
    v30 = v65;
    v190 = 8 * v60;
    v189 = 8 * (v31 + v51);
    v99.i64[0] = 0x101010101010101;
    v99.i64[1] = 0x101010101010101;
    while (1)
    {
      if (v31 + v30 >= v12)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v100 = (v31 + v30) * v11;
      v101 = v30 + v49;
      if (v30 + v49 >= v12)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v102 = v101 * v11;
      v103 = *(8 * v24 + 8 * v100) - *(8 * v24 + 8 * v101 * v11);
      if (v50 <= 0xF)
      {
        break;
      }

      v105 = &v46[v53];
      v106 = (v47 + v52);
      v107 = vdupq_lane_s64(*&v103, 0);
      v108 = v51 & 0xFFFFFFF0;
      do
      {
        v110 = *(v46 + 12);
        v109 = *(v46 + 14);
        v112 = *(v46 + 8);
        v111 = *(v46 + 10);
        v114 = *(v46 + 4);
        v113 = *(v46 + 6);
        v115 = *v46;
        v116 = *(v46 + 2);
        v46 += 16;
        *v47++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v115, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v116, v54), v48))), vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v114, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v113, v54), v48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v112, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v111, v54), v48))), vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v110, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v109, v54), v48))))), v99);
        v108 -= 16;
      }

      while (v108);
      v104 = v51 & 0xFFFFFFF0;
      if (v52 != v51)
      {
        goto LABEL_64;
      }

LABEL_66:
      if (v51 >= v34)
      {
        v127 = v51;
        v126 = v105;
        if (v51 >= v25)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v119 = 0;
        v120 = 8 * v67;
        v121 = v189 + v120;
        v122 = 8 * v66;
        v123 = v189 + v122;
        v124 = v190 + v120;
        v125 = v190 + v122;
        v126 = v105;
        do
        {
          if (v31 + v51 + v119 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          if (v60 + v119 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          v106->i8[v119] = (v105[v119] + a4) * v48 <= *(v121 + 8 * v119) - *(v124 + 8 * v119) - *(v123 + 8 * v119) + *(v125 + 8 * v119);
          ++v126;
          ++v119;
        }

        while (v51 + v119 < v34);
        v127 = v51 + v119;
        v106 = (v106 + v119);
        if (v51 + v119 >= v25)
        {
LABEL_55:
          v47 = v106;
          v46 = v126;
          goto LABEL_56;
        }
      }

      v128 = *(8 * v192 + 8 * v100) - *(8 * v191 + 8 * v100) - *(8 * v192 + 8 * v102) + *(8 * v191 + 8 * v102);
      v129 = v25 + ~v127;
      if (v129 >= 0xF)
      {
        v130 = v129 + 1;
        v131 = (v129 + 1) & 0x1FFFFFFF0;
        v46 = &v126[v131];
        v47 = (v106 + v131);
        v127 += v131;
        v132 = vdupq_lane_s64(*&v128, 0);
        v133 = v131;
        do
        {
          v135 = *(v126 + 12);
          v134 = *(v126 + 14);
          v137 = *(v126 + 8);
          v136 = *(v126 + 10);
          v139 = *(v126 + 4);
          v138 = *(v126 + 6);
          v140 = *v126;
          v141 = *(v126 + 2);
          v126 += 16;
          *v106++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v140, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v141, v54), v48))), vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v139, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v138, v54), v48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v137, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v136, v54), v48))), vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v135, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v134, v54), v48))))), v99);
          v133 -= 16;
        }

        while (v133);
        if (v130 == v131)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v46 = v126;
        v47 = v106;
      }

      v142 = v25 - v127;
      do
      {
        v143 = *v46++;
        v47->i8[0] = (v143 + a4) * v48 <= v128;
        v47 = (v47 + 1);
        --v142;
      }

      while (v142);
LABEL_56:
      ++v30;
      v66 += v11;
      v67 += v11;
      if (v30 >= v35)
      {
        goto LABEL_82;
      }
    }

    v104 = 0;
    v105 = v46;
    v106 = v47;
LABEL_64:
    v117 = v51 - v104;
    do
    {
      v118 = *v105++;
      v106->i8[0] = (v118 + a4) * v48 <= v103;
      v106 = (v106 + 1);
      --v117;
    }

    while (v117);
    goto LABEL_66;
  }

LABEL_82:
  if (v30 < v188)
  {
    v144 = vdupq_lane_s64(*&v44, 0);
    v145 = vdupq_lane_s64(*&v45, 0);
    v146 = 8 * v60;
    v147 = 8 * v186 + v146;
    v148 = 8 * v187 + v146;
    v149 = v31 + v51;
    v150 = 8 * v149;
    v151 = 8 * v186 + v150;
    v152 = 8 * v187 + v150;
    v153.i64[0] = 0x101010101010101;
    v153.i64[1] = 0x101010101010101;
    while (v50 > 0xF)
    {
      v155 = &v46[v53];
      v156 = (v47 + v52);
      v157 = v51 & 0xFFFFFFF0;
      do
      {
        v159 = *(v46 + 12);
        v158 = *(v46 + 14);
        v161 = *(v46 + 8);
        v160 = *(v46 + 10);
        v163 = *(v46 + 4);
        v162 = *(v46 + 6);
        v164 = *v46;
        v165 = *(v46 + 2);
        v46 += 16;
        *v47++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v164, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v165, v54), v48))), vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v163, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v162, v54), v48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v161, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v160, v54), v48))), vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v159, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v158, v54), v48))))), v153);
        v157 -= 16;
      }

      while (v157);
      v154 = v51 & 0xFFFFFFF0;
      if (v52 != v51)
      {
        goto LABEL_91;
      }

LABEL_93:
      if (v51 >= v34)
      {
        v170 = v51;
        v169 = v155;
        if (v51 >= v25)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v168 = 0;
        v169 = v155;
        do
        {
          if (v149 + v168 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          if (v60 + v168 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          v156->i8[v168] = (v155[v168] + a4) * v48 <= *(v152 + 8 * v168) - *(v148 + 8 * v168) - *(v151 + 8 * v168) + *(v147 + 8 * v168);
          ++v169;
          ++v168;
        }

        while (v51 + v168 < v34);
        v170 = v51 + v168;
        v156 = (v156 + v168);
        if (v51 + v168 >= v25)
        {
LABEL_84:
          v47 = v156;
          v46 = v169;
          goto LABEL_85;
        }
      }

      v171 = v25 + ~v170;
      if (v171 > 0xE)
      {
        v172 = v171 + 1;
        v173 = (v171 + 1) & 0x1FFFFFFF0;
        v46 = &v169[v173];
        v47 = (v156 + v173);
        v170 += v173;
        v174 = v173;
        do
        {
          v176 = *(v169 + 12);
          v175 = *(v169 + 14);
          v178 = *(v169 + 8);
          v177 = *(v169 + 10);
          v180 = *(v169 + 4);
          v179 = *(v169 + 6);
          v181 = *v169;
          v182 = *(v169 + 2);
          v169 += 16;
          *v156++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v181, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v182, v54), v48))), vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v180, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v179, v54), v48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v178, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v177, v54), v48))), vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v176, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v175, v54), v48))))), v153);
          v174 -= 16;
        }

        while (v174);
        if (v172 == v173)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v46 = v169;
        v47 = v156;
      }

      v183 = v25 - v170;
      do
      {
        v184 = *v46++;
        v47->i8[0] = (v184 + a4) * v48 <= v45;
        v47 = (v47 + 1);
        --v183;
      }

      while (v183);
LABEL_85:
      LODWORD(v30) = v30 + 1;
      if (v30 == v188)
      {
        return 0;
      }
    }

    v154 = 0;
    v155 = v46;
    v156 = v47;
LABEL_91:
    v166 = v51 - v154;
    do
    {
      v167 = *v155++;
      v156->i8[0] = (v167 + a4) * v48 <= v44;
      v156 = (v156 + 1);
      --v166;
    }

    while (v166);
    goto LABEL_93;
  }

  return 0;
}

void sub_22467E718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467E81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t AdaptiveThreshold<double,false>(uint64_t a1, unsigned int a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 20);
  if (v4 <= a2 || (v7 = *(a1 + 16), v7 <= a2))
  {
    AdaptiveThreshold<double,true>();
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = v10;
  v12 = v9;
  if (*(a3 + 32) < v7 * v4)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v7;
  *(a3 + 20) = v4;
  if (8 * v9 * v10)
  {
    operator new[]();
  }

  v13 = 0;
  if (v10)
  {
    v14 = *(a1 + 8);
    v15 = 0.0;
    v16 = v10;
    v17 = 0;
    do
    {
      v18 = *v14++;
      v15 = v15 + v18;
      *v17++ = v15;
      --v16;
    }

    while (v16);
    if (v12 >= 2)
    {
      for (i = 1; i != v12; ++i)
      {
        v20 = 0.0;
        v21 = v11;
        do
        {
          v22 = *v14++;
          v20 = v20 + v22;
          v23 = *v13++;
          *v17++ = v20 + v23;
          --v21;
        }

        while (v21);
      }
    }
  }

  v24 = a2 - 1;
  if (v24 >= v12 || v24 >= v11)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v25 = *(a1 + 20);
  v192 = v25 - 1;
  if (v192 >= v11)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v26 = ~a2;
  v191 = v25 + ~a2;
  if (v191 >= v11)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v27 = *(a1 + 16);
  v28 = v27 - 1;
  if (v27 - 1 >= v12)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v188 = *(a1 + 16);
  v29 = v27 + v26;
  if (v27 + v26 >= v12)
  {
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  LODWORD(v30) = 0;
  v31 = a2 >> 1;
  v32 = a2 & 1;
  v33 = (a2 >> 1) + v32 - 1;
  v34 = v4 - (a2 >> 1);
  v35 = v7 - (a2 >> 1);
  v36 = 8 * v24;
  v37 = v11 * v24;
  v38 = *(v36 + 8 * v37);
  v39 = 8 * v192;
  v40 = 8 * v191;
  v41 = v28 * v11;
  v42 = *(v39 + 8 * v37) - *(v40 + 8 * v37);
  v43 = v29 * v11;
  v44 = *(v36 + 8 * v41) - *(v36 + 8 * v43);
  v186 = v43;
  v187 = v41;
  v45 = *(v39 + 8 * v41) + *(v40 + 8 * v43) - *(v40 + 8 * v41) - *(v39 + 8 * v43);
  v46 = *(a1 + 8);
  v47 = *(a3 + 8);
  v48 = (a2 * a2);
  v49 = ~v33;
  v50 = (a2 >> 1) + (a2 & 1);
  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = v51 & 0xFFFFFFF0;
  v53 = v52;
  v54 = vdupq_lane_s64(*&a4, 0);
  v55 = vdupq_lane_s64(v38, 0);
  v56 = vdupq_lane_s64(*&v42, 0);
  v57 = v11 - v11 * v50;
  v58 = v11 + v11 * v31;
  v59 = 8 * v37;
  v60 = v51 - v31 - v32;
  v61 = v59 + 8 * v60;
  v62 = v59 + 8 * (v31 + v51);
  v63 = 1;
  v64.i64[0] = 0x101010101010101;
  v64.i64[1] = 0x101010101010101;
  do
  {
    v65 = v63;
    v66 = v57;
    v67 = v58;
    if (v50 <= 0xF)
    {
      v68 = 0;
      v69 = v46;
      v70 = v47;
LABEL_35:
      v80 = v51 - v68;
      do
      {
        v81 = *v69++;
        v70->i8[0] = (v81 + a4) * v48 > *&v38;
        v70 = (v70 + 1);
        --v80;
      }

      while (v80);
      goto LABEL_37;
    }

    v69 = &v46[v53];
    v70 = (v47 + v52);
    v71 = v51 & 0xFFFFFFF0;
    do
    {
      v73 = *(v46 + 12);
      v72 = *(v46 + 14);
      v75 = *(v46 + 8);
      v74 = *(v46 + 10);
      v77 = *(v46 + 4);
      v76 = *(v46 + 6);
      v78 = *v46;
      v79 = *(v46 + 2);
      v46 += 16;
      *v47++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v78, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v79, v54), v48))), vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v77, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v76, v54), v48))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v75, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v74, v54), v48))), vuzp1q_s32(vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v73, v54), v48)), vcgeq_f64(v55, vmulq_n_f64(vaddq_f64(v72, v54), v48)))))), v64);
      v71 -= 16;
    }

    while (v71);
    v68 = v51 & 0xFFFFFFF0;
    if (v52 != v51)
    {
      goto LABEL_35;
    }

LABEL_37:
    if (v51 >= v34)
    {
      v84 = v51;
      v83 = v69;
      if (v51 >= v25)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v82 = 0;
      v83 = v69;
      do
      {
        if (v31 + v51 + v82 >= v11)
        {
          __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
        }

        if (v60 + v82 >= v11)
        {
          __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
        }

        v70->i8[v82] = (v69[v82] + a4) * v48 > *(v62 + 8 * v82) - *(v61 + 8 * v82);
        ++v83;
        ++v82;
      }

      while (v51 + v82 < v34);
      v84 = v51 + v82;
      v70 = (v70 + v82);
      if (v51 + v82 >= v25)
      {
LABEL_28:
        v47 = v70;
        v46 = v83;
        goto LABEL_29;
      }
    }

    v85 = v25 + ~v84;
    if (v85 <= 0xE)
    {
      v46 = v83;
      v47 = v70;
LABEL_50:
      v97 = v25 - v84;
      do
      {
        v98 = *v46++;
        v47->i8[0] = (v98 + a4) * v48 > v42;
        v47 = (v47 + 1);
        --v97;
      }

      while (v97);
      goto LABEL_29;
    }

    v86 = v85 + 1;
    v87 = (v85 + 1) & 0x1FFFFFFF0;
    v46 = &v83[v87];
    v47 = (v70 + v87);
    v84 += v87;
    v88 = v87;
    do
    {
      v90 = *(v83 + 12);
      v89 = *(v83 + 14);
      v92 = *(v83 + 8);
      v91 = *(v83 + 10);
      v94 = *(v83 + 4);
      v93 = *(v83 + 6);
      v95 = *v83;
      v96 = *(v83 + 2);
      v83 += 16;
      *v70++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v95, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v96, v54), v48))), vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v94, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v93, v54), v48))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v92, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v91, v54), v48))), vuzp1q_s32(vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v90, v54), v48)), vcgeq_f64(v56, vmulq_n_f64(vaddq_f64(v89, v54), v48)))))), v64);
      v88 -= 16;
    }

    while (v88);
    if (v86 != v87)
    {
      goto LABEL_50;
    }

LABEL_29:
    LODWORD(v30) = v30 + 1;
    v63 = v65 + 1;
    v57 = v66 + v11;
    v58 = v67 + v11;
  }

  while (v30 <= v33);
  if (v30 < v35)
  {
    v30 = v65;
    v190 = 8 * v60;
    v189 = 8 * (v31 + v51);
    v99.i64[0] = 0x101010101010101;
    v99.i64[1] = 0x101010101010101;
    while (1)
    {
      if (v31 + v30 >= v12)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v100 = (v31 + v30) * v11;
      v101 = v30 + v49;
      if (v30 + v49 >= v12)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v102 = v101 * v11;
      v103 = *(8 * v24 + 8 * v100) - *(8 * v24 + 8 * v101 * v11);
      if (v50 <= 0xF)
      {
        break;
      }

      v105 = &v46[v53];
      v106 = (v47 + v52);
      v107 = vdupq_lane_s64(*&v103, 0);
      v108 = v51 & 0xFFFFFFF0;
      do
      {
        v110 = *(v46 + 12);
        v109 = *(v46 + 14);
        v112 = *(v46 + 8);
        v111 = *(v46 + 10);
        v114 = *(v46 + 4);
        v113 = *(v46 + 6);
        v115 = *v46;
        v116 = *(v46 + 2);
        v46 += 16;
        *v47++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v115, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v116, v54), v48))), vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v114, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v113, v54), v48))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v112, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v111, v54), v48))), vuzp1q_s32(vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v110, v54), v48)), vcgeq_f64(v107, vmulq_n_f64(vaddq_f64(v109, v54), v48)))))), v99);
        v108 -= 16;
      }

      while (v108);
      v104 = v51 & 0xFFFFFFF0;
      if (v52 != v51)
      {
        goto LABEL_64;
      }

LABEL_66:
      if (v51 >= v34)
      {
        v127 = v51;
        v126 = v105;
        if (v51 >= v25)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v119 = 0;
        v120 = 8 * v67;
        v121 = v189 + v120;
        v122 = 8 * v66;
        v123 = v189 + v122;
        v124 = v190 + v120;
        v125 = v190 + v122;
        v126 = v105;
        do
        {
          if (v31 + v51 + v119 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          if (v60 + v119 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          v106->i8[v119] = (v105[v119] + a4) * v48 > *(v121 + 8 * v119) - *(v124 + 8 * v119) - *(v123 + 8 * v119) + *(v125 + 8 * v119);
          ++v126;
          ++v119;
        }

        while (v51 + v119 < v34);
        v127 = v51 + v119;
        v106 = (v106 + v119);
        if (v51 + v119 >= v25)
        {
LABEL_55:
          v47 = v106;
          v46 = v126;
          goto LABEL_56;
        }
      }

      v128 = *(8 * v192 + 8 * v100) - *(8 * v191 + 8 * v100) - *(8 * v192 + 8 * v102) + *(8 * v191 + 8 * v102);
      v129 = v25 + ~v127;
      if (v129 >= 0xF)
      {
        v130 = v129 + 1;
        v131 = (v129 + 1) & 0x1FFFFFFF0;
        v46 = &v126[v131];
        v47 = (v106 + v131);
        v127 += v131;
        v132 = vdupq_lane_s64(*&v128, 0);
        v133 = v131;
        do
        {
          v135 = *(v126 + 12);
          v134 = *(v126 + 14);
          v137 = *(v126 + 8);
          v136 = *(v126 + 10);
          v139 = *(v126 + 4);
          v138 = *(v126 + 6);
          v140 = *v126;
          v141 = *(v126 + 2);
          v126 += 16;
          *v106++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v140, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v141, v54), v48))), vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v139, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v138, v54), v48))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v137, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v136, v54), v48))), vuzp1q_s32(vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v135, v54), v48)), vcgeq_f64(v132, vmulq_n_f64(vaddq_f64(v134, v54), v48)))))), v99);
          v133 -= 16;
        }

        while (v133);
        if (v130 == v131)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v46 = v126;
        v47 = v106;
      }

      v142 = v25 - v127;
      do
      {
        v143 = *v46++;
        v47->i8[0] = (v143 + a4) * v48 > v128;
        v47 = (v47 + 1);
        --v142;
      }

      while (v142);
LABEL_56:
      ++v30;
      v66 += v11;
      v67 += v11;
      if (v30 >= v35)
      {
        goto LABEL_82;
      }
    }

    v104 = 0;
    v105 = v46;
    v106 = v47;
LABEL_64:
    v117 = v51 - v104;
    do
    {
      v118 = *v105++;
      v106->i8[0] = (v118 + a4) * v48 > v103;
      v106 = (v106 + 1);
      --v117;
    }

    while (v117);
    goto LABEL_66;
  }

LABEL_82:
  if (v30 < v188)
  {
    v144 = vdupq_lane_s64(*&v44, 0);
    v145 = vdupq_lane_s64(*&v45, 0);
    v146 = 8 * v60;
    v147 = 8 * v186 + v146;
    v148 = 8 * v187 + v146;
    v149 = v31 + v51;
    v150 = 8 * v149;
    v151 = 8 * v186 + v150;
    v152 = 8 * v187 + v150;
    v153.i64[0] = 0x101010101010101;
    v153.i64[1] = 0x101010101010101;
    while (v50 > 0xF)
    {
      v155 = &v46[v53];
      v156 = (v47 + v52);
      v157 = v51 & 0xFFFFFFF0;
      do
      {
        v159 = *(v46 + 12);
        v158 = *(v46 + 14);
        v161 = *(v46 + 8);
        v160 = *(v46 + 10);
        v163 = *(v46 + 4);
        v162 = *(v46 + 6);
        v164 = *v46;
        v165 = *(v46 + 2);
        v46 += 16;
        *v47++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v164, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v165, v54), v48))), vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v163, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v162, v54), v48))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v161, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v160, v54), v48))), vuzp1q_s32(vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v159, v54), v48)), vcgeq_f64(v144, vmulq_n_f64(vaddq_f64(v158, v54), v48)))))), v153);
        v157 -= 16;
      }

      while (v157);
      v154 = v51 & 0xFFFFFFF0;
      if (v52 != v51)
      {
        goto LABEL_91;
      }

LABEL_93:
      if (v51 >= v34)
      {
        v170 = v51;
        v169 = v155;
        if (v51 >= v25)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v168 = 0;
        v169 = v155;
        do
        {
          if (v149 + v168 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          if (v60 + v168 >= v11)
          {
            __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
          }

          v156->i8[v168] = (v155[v168] + a4) * v48 > *(v152 + 8 * v168) - *(v148 + 8 * v168) - *(v151 + 8 * v168) + *(v147 + 8 * v168);
          ++v169;
          ++v168;
        }

        while (v51 + v168 < v34);
        v170 = v51 + v168;
        v156 = (v156 + v168);
        if (v51 + v168 >= v25)
        {
LABEL_84:
          v47 = v156;
          v46 = v169;
          goto LABEL_85;
        }
      }

      v171 = v25 + ~v170;
      if (v171 > 0xE)
      {
        v172 = v171 + 1;
        v173 = (v171 + 1) & 0x1FFFFFFF0;
        v46 = &v169[v173];
        v47 = (v156 + v173);
        v170 += v173;
        v174 = v173;
        do
        {
          v176 = *(v169 + 12);
          v175 = *(v169 + 14);
          v178 = *(v169 + 8);
          v177 = *(v169 + 10);
          v180 = *(v169 + 4);
          v179 = *(v169 + 6);
          v181 = *v169;
          v182 = *(v169 + 2);
          v169 += 16;
          *v156++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v181, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v182, v54), v48))), vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v180, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v179, v54), v48))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v178, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v177, v54), v48))), vuzp1q_s32(vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v176, v54), v48)), vcgeq_f64(v145, vmulq_n_f64(vaddq_f64(v175, v54), v48)))))), v153);
          v174 -= 16;
        }

        while (v174);
        if (v172 == v173)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v46 = v169;
        v47 = v156;
      }

      v183 = v25 - v170;
      do
      {
        v184 = *v46++;
        v47->i8[0] = (v184 + a4) * v48 > v45;
        v47 = (v47 + 1);
        --v183;
      }

      while (v183);
LABEL_85:
      LODWORD(v30) = v30 + 1;
      if (v30 == v188)
      {
        return 0;
      }
    }

    v154 = 0;
    v155 = v46;
    v156 = v47;
LABEL_91:
    v166 = v51 - v154;
    do
    {
      v167 = *v155++;
      v156->i8[0] = (v167 + a4) * v48 > v44;
      v156 = (v156 + 1);
      --v166;
    }

    while (v166);
    goto LABEL_93;
  }

  return 0;
}

void sub_22467F688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22467F78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::TraceOuterBoundaries(int32x2_t *a1, unsigned int a2, uint64_t a3)
{
  v123 = *MEMORY[0x277D85DE8];
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v102 = &unk_283809CC0;
  v105 = 0;
  v5 = vadd_s32(a1[2], 0x200000002);
  v6 = v5.u32[1];
  if (2 * v5.u32[0] * v5.u32[1])
  {
    operator new[]();
  }

  v7 = a1[2];
  v104 = v5;
  v8 = a1[1];
  v9 = 2 * v5.u32[1];
  bzero(0, v9);
  v10 = (2 * v6);
  if (v7)
  {
    v11 = 0;
    v12 = a1[2].u32[1];
    do
    {
      *v10 = 0;
      v13 = v10 + 2;
      memcpy(v13, v8, 2 * v12);
      v14 = a1[2].u32[0];
      v12 = a1[2].u32[1];
      v15 = &v13[2 * v12];
      v8 += 2 * v12;
      *v15 = 0;
      v10 = v15 + 2;
      ++v11;
    }

    while (v11 < v14);
  }

  bzero(v10, v9);
  v16 = v104.u32[1];
  v17 = a1[2].u32[1];
  v86 = a1[2].i32[0];
  v122[1] = 1;
  v122[2] = v104.i32[1];
  v122[3] = -1;
  v121[1] = 1;
  v121[2] = v17;
  v121[3] = -1;
  v18 = vsub_s32(0x100000000, vdup_n_s32(v104.u32[1]));
  v122[0] = v18.i32[0];
  v114 = v18;
  v115 = 1;
  v116 = v104.i32[1] + 1;
  v117 = v104.i32[1];
  v118 = v104.i32[1] - 1;
  v119 = -1;
  v120 = ~v104.i32[1];
  v19 = vsub_s32(0x100000000, vdup_n_s32(v17));
  v121[0] = v19.i32[0];
  v107 = v19;
  v108 = 1;
  v109 = v17 + 1;
  v110 = v17;
  v111 = v17 - 1;
  v85 = v17;
  v112 = -1;
  v113 = ~v17;
  if (a2 == 4)
  {
    v98 = v122;
    v92 = v121;
    v93 = &unk_2247A3FD0;
    v20 = a3;
    v21 = v86 * v17;
    if ((v86 * v17) < 1)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v20 = a3;
    if (a2 != 8)
    {
      goto LABEL_90;
    }

    v98 = &v114;
    v92 = &v107;
    v93 = &unk_2247A3FE0;
    v21 = v86 * v17;
    if ((v86 * v17) < 1)
    {
      goto LABEL_90;
    }
  }

  v22 = a1[1];
  v23 = *&v22 + 2 * v21;
  if (v23 <= *&v22 + 2)
  {
    v23 = *&v22 + 2;
  }

  v24 = v23 + ~*&v22;
  if (v24 < 6)
  {
    LOWORD(v25) = 0;
    v26 = a1[1];
    goto LABEL_26;
  }

  v27 = (v24 >> 1) + 1;
  if (v24 < 0x1E)
  {
    v25 = 0;
    v28 = 0;
LABEL_21:
    v26 = (*&v22 + 2 * (v27 & 0xFFFFFFFFFFFFFFFCLL));
    v34 = vdup_n_s16(v25);
    v35 = (*&v22 + 2 * v28);
    v36 = v28 - (v27 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v37 = *v35++;
      v34 = vmax_u16(v37, v34);
      v36 += 4;
    }

    while (v36);
    LOWORD(v25) = vmaxv_u16(v34);
    if (v27 == (v27 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v28 = v27 & 0xFFFFFFFFFFFFFFF0;
  v29 = (*&v22 + 16);
  v30 = 0uLL;
  v31 = v27 & 0xFFFFFFFFFFFFFFF0;
  v32 = 0uLL;
  do
  {
    v30 = vmaxq_u16(v29[-1], v30);
    v32 = vmaxq_u16(*v29, v32);
    v29 += 2;
    v31 -= 16;
  }

  while (v31);
  v33 = vmaxq_u16(v30, v32);
  v33.i16[0] = vmaxvq_u16(v33);
  v25 = v33.i32[0];
  if (v27 == v28)
  {
    goto LABEL_30;
  }

  if ((v27 & 0xC) != 0)
  {
    goto LABEL_21;
  }

  v26 = (*&v22 + 2 * v28);
LABEL_26:
  v38 = *&v22 + 2 * v21;
  do
  {
    v40 = *v26++;
    v39 = v40;
    if (v40 > v25)
    {
      LOWORD(v25) = v39;
    }
  }

  while (v26 < v38);
LABEL_30:
  if (v25)
  {
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v41 = v25;
    v42 = *(v20 + 8);
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v20) >> 3);
    if (v41 <= v43)
    {
      if (v41 < v43)
      {
        v44 = *v20 + 24 * v41;
        if (v42 != v44)
        {
          v45 = *(v20 + 8);
          do
          {
            v47 = *(v45 - 24);
            v45 -= 24;
            v46 = v47;
            if (v47)
            {
              *(v42 - 16) = v46;
              operator delete(v46);
            }

            v42 = v45;
          }

          while (v45 != v44);
        }

        *(v20 + 8) = v44;
      }
    }

    else
    {
      std::vector<ImageUtils::Blob>::__append(v20, v41 - v43, &v99);
    }

    if (v86 && v85)
    {
      v48 = 0;
      v49 = 0;
      v50 = v103 + 2 * v16;
      do
      {
        v87 = v48;
        v51 = v49;
        v49 += v85;
        v89 = v49;
        do
        {
          v52 = v50;
          v54 = *(v50 + 2);
          v50 += 2;
          v53 = v54;
          if (v54)
          {
            v55 = (v53 - 1);
            if (0xAAAAAAAAAAAAAAABLL * ((*(v20 + 8) - *v20) >> 3) <= v55)
            {
              std::vector<float>::__throw_out_of_range[abi:ne200100]();
            }

            v56 = *v20 + 24 * v55;
            v57 = *(v56 + 8);
            if (v57 == *v56)
            {
              LOBYTE(v58) = 0;
              v59 = 0;
              v60 = 255;
              v61 = v51;
              v62 = 2;
              v63 = 0;
              do
              {
                while (1)
                {
                  v64 = v58;
                  v65 = v62 + 2 * v98->i32[v58];
                  if (*(v52 + v65) != v53)
                  {
                    break;
                  }

                  v58 = v93[v58];
                  if (v62 == 2)
                  {
                    ++v59;
                    if (v58 == v60 || v59 > 3)
                    {
                      goto LABEL_46;
                    }

                    v60 = v93[v64];
                  }

                  v67 = *(v56 + 16);
                  if (v57 >= v67)
                  {
                    v68 = *v56;
                    v69 = v57 - *v56;
                    v70 = (v69 >> 2) + 1;
                    if (v70 >> 62)
                    {
                      goto LABEL_95;
                    }

                    v71 = v67 - v68;
                    if (v71 >> 1 > v70)
                    {
                      v70 = v71 >> 1;
                    }

                    if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v70 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    v94 = v50;
                    v90 = v60;
                    v91 = v59;
                    if (v70)
                    {
                      if (!(v70 >> 62))
                      {
                        operator new();
                      }

LABEL_96:
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v72 = v56;
                    __p = *v56;
                    v73 = (4 * (v69 >> 2));
                    v97 = v61;
                    *v73 = v61;
                    v57 = v73 + 1;
                    memcpy(0, v68, v69);
                    *v72 = 0;
                    v72[1] = v57;
                    v72[2] = 0;
                    v56 = v72;
                    if (__p)
                    {
                      operator delete(__p);
                      v56 = v72;
                    }

                    v20 = a3;
                    v49 = v89;
                    v50 = v94;
                    v61 = v97;
                    v60 = v90;
                    v59 = v91;
                  }

                  else
                  {
                    *v57++ = v61;
                  }

                  *(v56 + 8) = v57;
                  v61 += v92->i32[v64];
                  v62 = v65;
                  v63 = 0;
                }

                LOBYTE(v58) = (v58 + 1) & (a2 - 1);
                ++v63;
              }

              while (v63 < a2);
              if (!v59)
              {
                v74 = *(v56 + 16);
                if (v57 >= v74)
                {
                  v75 = *v56;
                  v76 = v57 - *v56;
                  v77 = v76 >> 2;
                  v78 = (v76 >> 2) + 1;
                  if (v78 >> 62)
                  {
LABEL_95:
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v79 = v74 - v75;
                  if (v79 >> 1 > v78)
                  {
                    v78 = v79 >> 1;
                  }

                  if (v79 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v80 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v80 = v78;
                  }

                  v95 = v50;
                  if (v80)
                  {
                    if (!(v80 >> 62))
                    {
                      operator new();
                    }

                    goto LABEL_96;
                  }

                  v81 = v56;
                  *(4 * v77) = v61;
                  v82 = 4 * v77 + 4;
                  memcpy(0, v75, v76);
                  *v81 = 0;
                  v81[1] = v82;
                  v81[2] = 0;
                  v83 = v81;
                  if (v75)
                  {
                    operator delete(v75);
                    v83 = v81;
                  }

                  v20 = a3;
                  v49 = v89;
                  v50 = v95;
                  v83[1] = v82;
                }

                else
                {
                  *v57 = v61;
                  *(v56 + 8) = v57 + 1;
                }
              }
            }
          }

LABEL_46:
          ++v51;
        }

        while (v51 != v49);
        v50 = v52 + 6;
        v48 = v87 + 1;
      }

      while (v87 + 1 != v86);
    }

    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }
  }

LABEL_90:
  v102 = &unk_283809CC0;
  result = v103;
  if (v103)
  {
    if (v105 == 1)
    {
      return MEMORY[0x22AA53170]();
    }
  }

  return result;
}

void sub_22467FF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  peridot::sMatrixOversized<unsigned short,3u,27u>::~sMatrixOversized(&a28);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

_BYTE *ImageUtils::ErodeRect2x2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (v6 < 3 || v5 <= 2)
  {
    ImageUtils::ErodeRect2x2();
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  memset(v9, 1, v6 * v5);
  if ((*v8 & 1) == 0)
  {
    *v9 = 0;
  }

  v10 = v9 + 1;
  v11 = v6 - 2;
  v12 = v8 + 1;
  v13 = v6 - 1;
  v14 = v6 - 1;
  do
  {
    v15 = *v12++;
    if ((v15 & 1) == 0)
    {
      *(v10 - 1) = 0;
    }

    ++v10;
    --v14;
  }

  while (v14);
  v16 = &v8[v11 + 2];
  v17 = -*(a1 + 20);
  v18 = v11 + 2;
  v19 = &v8[2 * v11 + 5];
  v20 = &v8[v11 + 3];
  v21 = 1;
  do
  {
    v24 = v10;
    v25 = v19;
    if ((*v16 & 1) == 0)
    {
      *v10 = 0;
      v10[v17] = 0;
    }

    v26 = 0;
    v27 = &v10[-*(a1 + 20)];
    do
    {
      if ((*(v20 + v26) & 1) == 0)
      {
        *&v24[v26] = 0;
        *&v27[v26] = 0;
      }

      ++v26;
    }

    while (v13 != v26);
    v16 += v18;
    v19 += v18;
    v20 += v18;
    result = &v24[v26];
    v10 = &v24[v26 + 1];
  }

  while (v21++ != v5 - 2);
  if ((*v16 & 1) == 0)
  {
    result[1] = 0;
    v24[v26 - *(a1 + 20) + 1] = 0;
  }

  v28 = -*(a1 + 20);
  do
  {
    v29 = *v25++;
    if ((v29 & 1) == 0)
    {
      *(result + 1) = 0;
      *&result[v28 + 1] = 0;
    }

    ++result;
    --v13;
  }

  while (v13);
  return result;
}

uint64_t ErodeOrDilateRect3x3<false>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = v6 - 3;
  if (v6 < 3 || v5 <= 2)
  {
    ErodeOrDilateRect3x3<false>();
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  memset(v10, 1, v6 * v5);
  if ((*v9 & 1) == 0)
  {
    *v10 = 0;
    *(v10 + *(a1 + 20)) = 0;
  }

  v11 = 0;
  v12 = v6 - 2;
  v13 = v10 + *(a1 + 20);
  do
  {
    if ((v9[v11 + 1] & 1) == 0)
    {
      v14 = v10 + v11;
      *v14 = 0;
      v14[2] = 0;
      v15 = &v13[v11];
      *v15 = 0;
      v15[2] = 0;
    }

    ++v11;
  }

  while (v12 != v11);
  v16 = &v9[v7 + 2];
  v17 = (v10 + v11);
  v18 = v17 + 1;
  if (!*v16)
  {
    *v17 = 0;
    *(v17 + *(a1 + 20)) = 0;
  }

  v19 = v17 + 1;
  v20 = &v9[v7 + 3];
  v21 = *(a1 + 20);
  v22 = v7 + 3;
  v23 = &v9[2 * v7 + 7];
  v24 = &v9[v7 + 4];
  result = v21 + 1;
  v26 = 1;
  do
  {
    v29 = v18;
    v30 = v23;
    if ((*v20 & 1) == 0)
    {
      *v19 = 0;
      v18[2] = 0;
      *&v19[-v21] = 0;
      *&v19[v21] = 0;
    }

    v31 = 0;
    v32 = *(a1 + 20);
    v33 = &v29[-v32 + 1];
    v34 = &v29[v32 + 1];
    do
    {
      if ((*(v24 + v31) & 1) == 0)
      {
        v35 = &v29[v31];
        v35[1] = 0;
        *(v35 + 1) = 0;
        v36 = &v33[v31];
        *v36 = 0;
        v36[2] = 0;
        v37 = &v34[v31];
        *v37 = 0;
        v37[2] = 0;
      }

      ++v31;
    }

    while (v12 != v31);
    v27 = &v29[v31];
    if (!v16[v22])
    {
      *(v27 + 1) = 0;
      *&v29[1 - v21 + v31] = 0;
      *&v29[result + v31] = 0;
    }

    v18 = v27 + 2;
    v19 = v27 + 3;
    v20 = &v16[v7 + 4];
    v23 += v22;
    v24 += v22;
    v16 += v22;
  }

  while (v26++ != v5 - 2);
  v38 = &v29[v31];
  v39 = &v29[v31 + 3];
  if ((*v20 & 1) == 0)
  {
    *v39 = 0;
    v38[4] = 0;
    *&v38[-*(a1 + 20) + 3] = 0;
  }

  v40 = -*(a1 + 20);
  do
  {
    v41 = *v30++;
    if ((v41 & 1) == 0)
    {
      *v39 = 0;
      v39[2] = 0;
      v42 = &v39[v40];
      *v42 = 0;
      v42[2] = 0;
    }

    ++v39;
    --v12;
  }

  while (v12);
  if (!v20[v7 + 2])
  {
    *v39 = 0;
    *&v39[-*(a1 + 20)] = 0;
  }

  return result;
}

void ErodeOrDilateRect2x2<true>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v6 = *(a1 + 16);
  v5 = *(a1 + 20);
  v7 = v5 - 2;
  if (v5 < 2 || v6 <= 1)
  {
    ErodeOrDilateRect2x2<true>();
  }

  v9 = v5 - 1;
  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  bzero(v11, v5 * v6);
  v12 = 0;
  v13 = *(a1 + 20);
  do
  {
    v15 = 0;
    v16 = v11;
    v17 = &v11[*(a1 + 20)];
    do
    {
      if (*(v10 + v15) == 1)
      {
        *&v11[v15] = 257;
        *&v17[v15] = 257;
      }

      ++v15;
    }

    while (v9 != v15);
    if (*(v10 + v7 + 1))
    {
      v18 = &v11[v15];
      *v18 = 1;
      v18[v13] = 1;
    }

    v10 += v7 + 2;
    v11 += v15 + 1;
  }

  while (v12++ != v6 - 2);
  v19 = 0;
  do
  {
    if (*(v10 + v19) == 1)
    {
      v20 = &v16[v19 + v15];
      v20[1] = 1;
      v20[2] = 1;
    }

    ++v19;
  }

  while (v9 != v19);
  if (*(v10 + v7 + 1))
  {
    v16[v19 + 1 + v15] = 1;
  }
}

uint64_t ErodeOrDilateRect3x3<true>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (*(a2 + 32) < v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = v6 - 3;
  if (v6 < 3 || v5 <= 2)
  {
    ErodeOrDilateRect3x3<false>();
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  bzero(v10, v6 * v5);
  if (*v9 == 1)
  {
    *v10 = 257;
    *(v10 + *(a1 + 20)) = 257;
  }

  v11 = 0;
  v12 = v6 - 2;
  v13 = v10 + *(a1 + 20);
  do
  {
    if (v9[v11 + 1] == 1)
    {
      v14 = v10 + v11;
      *v14 = 1;
      v14[1] = 1;
      v14[2] = 1;
      v15 = &v13[v11];
      *v15 = 257;
      v15[2] = 1;
    }

    ++v11;
  }

  while (v12 != v11);
  v16 = &v9[v7 + 2];
  v17 = v10 + v11;
  v18 = v17 + 1;
  if (*v16)
  {
    v17[1] = 1;
    *v17 = 1;
    v19 = &v17[*(a1 + 20)];
    v19[1] = 1;
    *v19 = 1;
  }

  v20 = v17 + 2;
  v21 = &v9[v7 + 3];
  v22 = *(a1 + 20);
  v23 = v7 + 3;
  v24 = &v9[2 * v7 + 7];
  v25 = &v9[v7 + 4];
  result = v22 + 1;
  v27 = 1;
  do
  {
    v29 = v18;
    v30 = v24;
    if (*v21 == 1)
    {
      *v20 = 1;
      v18[2] = 1;
      *&v20[-v22] = 257;
      *&v20[v22] = 257;
    }

    v31 = 0;
    v32 = *(a1 + 20);
    v33 = &v29[-v32 + 1];
    v34 = &v29[v32 + 1];
    do
    {
      if (*(v25 + v31) == 1)
      {
        v35 = &v29[v31];
        v35[1] = 1;
        v35[2] = 1;
        v35[3] = 1;
        v36 = &v33[v31];
        *v36 = 257;
        v36[2] = 1;
        v37 = &v34[v31];
        *v37 = 257;
        v37[2] = 1;
      }

      ++v31;
    }

    while (v12 != v31);
    v38 = &v29[v31];
    if (v16[v23])
    {
      *(v38 + 1) = 257;
      *&v29[1 - v22 + v31] = 257;
      *&v29[result + v31] = 257;
    }

    v18 = v38 + 2;
    v20 = v38 + 3;
    v21 = &v16[v7 + 4];
    v24 += v23;
    v25 += v23;
    v16 += v23;
  }

  while (v27++ != v5 - 2);
  v39 = &v29[v31];
  v40 = &v29[v31 + 3];
  if (*v21 == 1)
  {
    *v40 = 1;
    v39[4] = 1;
    *&v39[-*(a1 + 20) + 3] = 257;
  }

  v41 = -*(a1 + 20);
  do
  {
    v42 = *v30++;
    if (v42 == 1)
    {
      *v40 = 257;
      v40[2] = 1;
      v43 = &v40[v41];
      *v43 = 257;
      v43[2] = 1;
    }

    ++v40;
    --v12;
  }

  while (v12);
  if (v21[v7 + 2])
  {
    *v40 = 257;
    *&v40[-*(a1 + 20)] = 257;
  }

  return result;
}

uint64_t ImageUtils::CloseRect2x2(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v5 = 0;
  v6 = 0;
  v4 = &unk_283809C90;
  v7 = 0;
  ErodeOrDilateRect2x2<true>(a1, &v4);
  ImageUtils::ErodeRect2x2(&v4, a2);
  v4 = &unk_283809C90;
  result = v5;
  if (v5)
  {
    if (v7 == 1)
    {
      return MEMORY[0x22AA53170]();
    }
  }

  return result;
}

void sub_224680A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MatrixNxPts<1u,BOOL>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::CloseRect3x3(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v5 = 0;
  v6 = 0;
  v4 = &unk_283809C90;
  v7 = 0;
  ErodeOrDilateRect3x3<true>(a1, &v4);
  ErodeOrDilateRect3x3<false>(&v4, a2);
  v4 = &unk_283809C90;
  result = v5;
  if (v5)
  {
    if (v7 == 1)
    {
      return MEMORY[0x22AA53170]();
    }
  }

  return result;
}

void sub_224680B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MatrixNxPts<1u,BOOL>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

uint64_t Scale<double>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 16);
  v9 = vcvtpd_u64_f64(v8 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(*(a1 + 20) * a5);
  v65 = &unk_283809BF8;
  if (v8 * v5)
  {
    operator new[]();
  }

  v66 = 0;
  v67 = v8;
  v68 = v5;
  v69 = 0;
  v70 = 8 * v8 * v5;
  if (*(a3 + 32) < 8 * v9 * v5)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  v55 = v8;
  *(a3 + 16) = v9;
  *(a3 + 20) = v5;
  v56 = v9;
  v10 = a5 < 1.0;
  if ((v10 & a2) != 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = 1.0;
  }

  if ((v10 & a2) != 0)
  {
    v12 = 4.0 / a5;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = vcvtpd_u64_f64(v12);
  v14 = a4 < 1.0;
  if ((v14 & a2) != 0)
  {
    v15 = 4.0 / a4;
  }

  else
  {
    v15 = 4.0;
  }

  if ((v14 & a2) != 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = vcvtpd_u64_f64(v15);
  v54 = v17;
  if (v17 <= v13)
  {
    v17 = v13;
  }

  v59 = &unk_283809BF8;
  if (v17 != -4)
  {
    operator new[]();
  }

  v61 = 1;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = &unk_283809C28;
  v60 = 0;
  if (v5)
  {
    v18 = 0;
    do
    {
      v58 = 0;
      CalculateWeightsForScale<double>(&v59, v13, &v58 + 1, &v58, v12, (v18++ + 0.5) / a5 + -0.5, v11);
    }

    while (v18 != v5);
  }

  if (v56)
  {
    v19 = 0;
    if (v5)
    {
      v20 = *(a3 + 8);
      v21 = 8 * v5;
      do
      {
        v58 = 0;
        CalculateWeightsForScale<double>(&v59, v54, &v58 + 1, &v58, v15, (v19 + 0.5) / a4 + -0.5, v16);
        if (v58 >= v55)
        {
          v22 = v55 - 1;
        }

        else
        {
          v22 = v58;
        }

        if (v58 >= v55)
        {
          v23 = v58 - v55 + 1;
        }

        else
        {
          v23 = 0;
        }

        v24 = &v20[v5];
        v25 = (v66 + 8 * (HIDWORD(v58) & ~(SHIDWORD(v58) >> 31)) * v5);
        v26 = v66 + 8 * (v22 * v5);
        if (v58 < 0)
        {
          v41 = -HIDWORD(v58);
          do
          {
            v42 = 0;
            v43 = v60;
            v44 = *v25;
            v45 = 0.0;
            do
            {
              v46 = *v43++;
              v45 = v45 + v46 * v44;
              ++v42;
            }

            while (v42 < v41);
            v47 = v25;
            if (v25 < v26)
            {
              do
              {
                v48 = *v43++;
                v45 = v45 + v48 * *v47;
                v47 = (v47 + v21);
              }

              while (v47 < v26);
              v44 = *v47;
            }

            v49 = v45 + *v43 * v44;
            if (v23)
            {
              v50 = v43 + 1;
              v51 = v23;
              do
              {
                v52 = *v50++;
                v49 = v49 + v52 * v44;
                --v51;
              }

              while (v51);
            }

            *v20++ = v49;
            ++v25;
            v26 += 8;
          }

          while (v20 < v24);
        }

        else if (v23)
        {
          do
          {
            v27 = v60;
            v28 = 0.0;
            for (i = v25; i < v26; i = (i + v21))
            {
              v30 = *v27++;
              v28 = v28 + v30 * *i;
            }

            v32 = *v27;
            v31 = v27 + 1;
            v33 = *i;
            v34 = v28 + v32 * *i;
            v35 = v23;
            do
            {
              v36 = *v31++;
              v34 = v34 + v36 * v33;
              --v35;
            }

            while (v35);
            *v20++ = v34;
            ++v25;
            v26 += 8;
          }

          while (v20 < v24);
        }

        else
        {
          do
          {
            v37 = v60;
            v38 = 0.0;
            for (j = v25; j < v26; j = (j + v21))
            {
              v40 = *v37++;
              v38 = v38 + v40 * *j;
            }

            *v20++ = v38 + *v37 * *j;
            ++v25;
            v26 += 8;
          }

          while (v20 < v24);
        }

        ++v19;
      }

      while (v19 != v56);
    }

    else
    {
      do
      {
        v58 = 0;
        CalculateWeightsForScale<double>(&v59, v54, &v58 + 1, &v58, v15, (v19++ + 0.5) / a4 + -0.5, v16);
      }

      while (v56 != v19);
    }
  }

  v59 = &unk_283809BF8;
  if (v60 && v63 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v65 = &unk_283809BF8;
  result = v66;
  if (v66 && v69 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}