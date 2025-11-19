void NGaussianFixedPointScales::setUp(NGaussianFixedPointScales *this)
{
  *(this + 33) = *(this + 32) - *(this + 2);
  v3 = 0x2000;
  NGaussianFixedPointScales::makeLogAddTable(this, &v3);
  v2 = ldexp(1.0, *(this + 2));
  *(this + 10) = v2;
  *(this + 11) = 1.0 / v2;
  NFixedPointScales::makeParamScales(this);
  *(this + 120) = 1;
}

void NGaussianFixedPointScales::read(NGaussianFixedPointScales *this, NFilePtr *a2, const unsigned int *a3, const BOOL *a4)
{
  *v4 = &unk_28370A720;
  v5 = 9;
  operator new[]();
}

void sub_223AA7868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void NGaussianFixedPointScales::write(NGaussianFixedPointScales *this, NFilePtr *a2, const BOOL *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 1);
  if (*a3)
  {
    if (v3)
    {
      *__str = &unk_28370A720;
      v7 = 0;
      operator new[]();
    }
  }

  else if (v3)
  {
    v4 = &unk_28370A720;
    v5 = 10;
    operator new[]();
  }

  Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
}

void sub_223AA8554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    MEMORY[0x223DF1D00](a22, v22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NGaussianFixedPointScales::logadd(NGaussianFixedPointScales *this, signed int a2, signed int a3)
{
  if (a3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  if (a3 <= a2)
  {
    result = a2;
  }

  else
  {
    result = a3;
  }

  if (v4 != -1073741823)
  {
    v6 = result - v4;
    if (v6 <= *(this + 41))
    {
      return (*(*(this + 18) + 4 * (v6 >> *(this + 40))) + result);
    }
  }

  return result;
}

uint64_t NGaussianFixedPointScales::setDimenShift(uint64_t result, uint64_t a2)
{
  if (result + 168 != a2)
  {
    v3 = result;
    v4 = *(result + 184);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(result + 176);
      if (v6)
      {
        MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
        v5 = *(a2 + 16);
      }

      *(v3 + 184) = v5;
      operator new[]();
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(a2 + 8);
      v9 = *(result + 176);
      do
      {
        *(v9 + 4 * v7) = *(v8 + 4 * v7);
        ++v7;
      }

      while (v7 < *(result + 184));
    }
  }

  return result;
}

void NFrameWindow::NFrameWindow(NFrameWindow *this)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = &unk_28370A4D8;
  *(this + 36) = 1;
}

{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = &unk_28370A4D8;
  *(this + 36) = 1;
}

uint64_t NFrameWindow::reset(uint64_t this)
{
  *(this + 72) = 1;
  *(this + 36) = 0;
  *(this + 40) = 0;
  return this;
}

int32x2_t NFrameWindow::pushFrame(NFrameWindow *this, const NFrame *a2)
{
  v2 = *(a2 + 4);
  if (!v2)
  {
    Error::chuck("NFrameWindow::pushFrame() - cannot feed zero-sized frames", a2);
  }

  v3 = *(this + 2);
  if (v2 != v3)
  {
    Error::chuck("NFrameWindow::pushFrame() - mismatched input frame size (%d != %d)", a2, *(a2 + 4), v3);
  }

  v4 = *(a2 + 1);

  return NFrameWindow::pushFrame(this, v4);
}

void *NFrameWindow::copyInFrame(NFrameWindow *this, const float *a2)
{
  v3 = *(this + 9);
  if (v3 >= *(this + 6))
  {
    v3 = 0;
    *(this + 9) = 0;
  }

  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  result = memcpy((*(this + 7) + 4 * v3), &a2[v4], 4 * v5);
  *(this + 9) += v5;
  return result;
}

uint64_t NFrameWindow::setOutputFrameWindow(NFrameWindow *this, float **a2)
{
  v3 = this + 20;
  if (!*(this + 5))
  {
    Error::chuck("NFrameWindow::setOutputFrameWindow() - frame window not configured", v3);
  }

  (*(*a2 + 4))(a2, v3);
  v5 = a2[1];

  return NFrameWindow::setOutputFrameWindow(this, v5);
}

uint64_t NFrameWindow::endPadOneFrame(uint64_t this)
{
  v1 = *(this + 36);
  v2 = *(this + 24);
  if (v1 >= v2)
  {
    v1 = 0;
    *(this + 36) = 0;
  }

  v4 = *(this + 12);
  v3 = *(this + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if (v1 >= v5)
    {
      v2 = 0;
    }

    v6 = v1 - v5 + v2;
    v7 = *(this + 56);
    if (v5 < 0x10)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v12 = v3 + ~v4;
    v13 = __CFADD__(v1, v12);
    v14 = __CFADD__(v6, v12);
    if (v13 || v14)
    {
      goto LABEL_8;
    }

    if (((v1 - v6) & 0x3FFFFFFFFFFFFFF8) != 0)
    {
      v8 = v5 & 0xFFFFFFF8;
      v10 = v1 + (v5 & 0xFFFFFFF8);
      v15 = v5 & 0xFFFFFFF8;
      v16 = v6;
      do
      {
        v17 = (v7 + 4 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = (v7 + 4 * v1);
        *v20 = v18;
        v20[1] = v19;
        v16 += 8;
        v1 += 8;
        v15 -= 8;
      }

      while (v15);
      if (v5 == v8)
      {
        goto LABEL_11;
      }

      v6 += v8;
      v1 = v10;
    }

    else
    {
LABEL_7:
      v8 = 0;
    }

LABEL_8:
    v9 = v8 + v4 - v3;
    v10 = v1;
    do
    {
      *(v7 + 4 * v10++) = *(v7 + 4 * v6++);
    }

    while (!__CFADD__(v9++, 1));
LABEL_11:
    *(this + 36) = v10;
  }

  return this;
}

uint64_t NDELRHMMModel::operator=(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (result == a2)
  {
    *(result + 72) = *(a2 + 72);
  }

  else
  {
    v4 = *(result + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(result + 8);
      if (v6)
      {
        MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
        v5 = *(a2 + 16);
      }

      v3[4] = v5;
      operator new[]();
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(a2 + 8);
      v9 = *(result + 8);
      v10 = v4;
      if (v4 < 8)
      {
        goto LABEL_12;
      }

      if ((v9 - v8) < 0x20)
      {
        goto LABEL_12;
      }

      v7 = v4 & 0xFFFFFFF8;
      v11 = (v9 + 16);
      v12 = (v8 + 16);
      v13 = v10 & 0xFFFFFFF8;
      do
      {
        v14 = *v12;
        *(v11 - 1) = *(v12 - 1);
        *v11 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 8;
      }

      while (v13);
      if (v7 != v10)
      {
LABEL_12:
        v15 = v10 - v7;
        v16 = 4 * v7;
        v17 = (v9 + v16);
        v18 = (v8 + v16);
        do
        {
          v19 = *v18++;
          *v17++ = v19;
          --v15;
        }

        while (v15);
      }
    }

    v20 = *(result + 40);
    v21 = *(a2 + 40);
    if (v20 != v21)
    {
      v22 = *(result + 32);
      if (v22)
      {
        MEMORY[0x223DF1D00](v22, 0x1000C8052888210);
        v21 = *(a2 + 40);
      }

      v3[10] = v21;
      operator new[]();
    }

    if (v20)
    {
      v23 = 0;
      v24 = *(a2 + 32);
      v25 = *(result + 32);
      v26 = v20;
      if (v20 < 8)
      {
        goto LABEL_24;
      }

      if ((v25 - v24) < 0x20)
      {
        goto LABEL_24;
      }

      v23 = v20 & 0xFFFFFFF8;
      v27 = (v25 + 16);
      v28 = (v24 + 16);
      v29 = v26 & 0xFFFFFFF8;
      do
      {
        v30 = *v28;
        *(v27 - 1) = *(v28 - 1);
        *v27 = v30;
        v27 += 2;
        v28 += 2;
        v29 -= 8;
      }

      while (v29);
      if (v23 != v26)
      {
LABEL_24:
        v31 = v26 - v23;
        v32 = 4 * v23;
        v33 = (v25 + v32);
        v34 = (v24 + v32);
        do
        {
          v35 = *v34++;
          *v33++ = v35;
          --v31;
        }

        while (v31);
      }
    }

    v36 = *(result + 64);
    v37 = *(a2 + 64);
    if (v36 != v37)
    {
      v38 = *(result + 56);
      if (v38)
      {
        MEMORY[0x223DF1D00](v38, 0x1000C8052888210);
        v37 = *(a2 + 64);
      }

      v3[16] = v37;
      operator new[]();
    }

    if (v36)
    {
      v39 = 0;
      v40 = *(a2 + 56);
      v41 = *(result + 56);
      do
      {
        *(v41 + 4 * v39) = *(v40 + 4 * v39);
        ++v39;
      }

      while (v39 < *(result + 64));
    }

    *(result + 72) = *(a2 + 72);
    v42 = *(result + 96);
    v43 = *(a2 + 96);
    if (v42 != v43)
    {
      v44 = *(result + 88);
      if (v44)
      {
        MEMORY[0x223DF1D00](v44, 0x1000C8052888210);
        v43 = *(a2 + 96);
      }

      v3[24] = v43;
      operator new[]();
    }

    if (v42)
    {
      v45 = 0;
      v46 = *(a2 + 88);
      v47 = *(result + 88);
      v48 = v42;
      if (v42 < 8)
      {
        goto LABEL_43;
      }

      if ((v47 - v46) < 0x20)
      {
        goto LABEL_43;
      }

      v45 = v42 & 0xFFFFFFF8;
      v49 = (v47 + 16);
      v50 = (v46 + 16);
      v51 = v48 & 0xFFFFFFF8;
      do
      {
        v52 = *v50;
        *(v49 - 1) = *(v50 - 1);
        *v49 = v52;
        v49 += 2;
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (v45 != v48)
      {
LABEL_43:
        v53 = v48 - v45;
        v54 = 4 * v45;
        v55 = (v47 + v54);
        v56 = (v46 + v54);
        do
        {
          v57 = *v56++;
          *v55++ = v57;
          --v53;
        }

        while (v53);
      }
    }

    v58 = *(result + 120);
    v59 = *(a2 + 120);
    if (v58 != v59)
    {
      v60 = *(result + 112);
      if (v60)
      {
        MEMORY[0x223DF1D00](v60, 0x1000C8052888210);
        v59 = *(a2 + 120);
      }

      v3[30] = v59;
      operator new[]();
    }

    if (v58)
    {
      v61 = 0;
      v62 = *(a2 + 112);
      v63 = *(result + 112);
      do
      {
        *(v63 + 4 * v61) = *(v62 + 4 * v61);
        ++v61;
      }

      while (v61 < *(result + 120));
    }
  }

  *(result + 128) = *(a2 + 128);
  return result;
}

uint64_t NArray<NDELRHMMModel>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = *a3;
  if (v5 != *a3)
  {
    v7 = *(result + 8);
    if (v7)
    {
      v21 = v7 - 16;
      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = 0;
        v10 = 136 * v8;
        v11 = v7 - 56;
        do
        {
          v12 = (v11 + v10);
          *(v11 + v10 + 24) = off_283709B60;
          v13 = *(v11 + v10 + 32);
          if (v13)
          {
            MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
          }

          *v12 = off_28370A538;
          v14 = v12[1];
          if (v14)
          {
            MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
          }

          v15 = v11 + v10;
          *(v11 + v10 - 32) = off_283709B60;
          v16 = *(v11 + v10 - 24);
          if (v16)
          {
            MEMORY[0x223DF1D00](v16, 0x1000C8052888210);
          }

          *(v15 - 56) = off_28370A538;
          v17 = *(v15 - 48);
          if (v17)
          {
            MEMORY[0x223DF1D00](v17, 0x1000C8052888210);
          }

          *(v12 - 10) = off_28370A538;
          v18 = *(v11 + v10 - 72);
          if (v18)
          {
            MEMORY[0x223DF1D00](v18, 0x1000C8052888210);
          }

          v7 -= 136;
          v9 += 136;
          v11 -= 136;
        }

        while (v10 != v9);
      }

      MEMORY[0x223DF1D00](v21, 0x1090C80C1CE278ELL);
      v6 = *a3;
    }

    *(v4 + 16) = v6;
    operator new[]();
  }

  if (v5)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      result = NDELRHMMModel::operator=(*(v4 + 8) + v19, a2 + v19);
      ++v20;
      v19 += 136;
    }

    while (v20 < *(v4 + 16));
  }

  return result;
}

uint64_t NArray<NDELRHMMModel>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v21 = v6 - 16;
        v7 = *(v6 - 8);
        if (v7)
        {
          v8 = 0;
          v9 = 136 * v7;
          v10 = v6 - 56;
          do
          {
            v11 = (v10 + v9);
            *(v10 + v9 + 24) = off_283709B60;
            v12 = *(v10 + v9 + 32);
            if (v12)
            {
              MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
            }

            *v11 = off_28370A538;
            v13 = v11[1];
            if (v13)
            {
              MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
            }

            v14 = v10 + v9;
            *(v10 + v9 - 32) = off_283709B60;
            v15 = *(v10 + v9 - 24);
            if (v15)
            {
              MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
            }

            *(v14 - 56) = off_28370A538;
            v16 = *(v14 - 48);
            if (v16)
            {
              MEMORY[0x223DF1D00](v16, 0x1000C8052888210);
            }

            *(v11 - 10) = off_28370A538;
            v17 = *(v10 + v9 - 72);
            if (v17)
            {
              MEMORY[0x223DF1D00](v17, 0x1000C8052888210);
            }

            v6 -= 136;
            v8 += 136;
            v10 -= 136;
          }

          while (v9 != v8);
        }

        MEMORY[0x223DF1D00](v21, 0x1090C80C1CE278ELL);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        NDELRHMMModel::operator=(*(a1 + 8) + v18, *(a2 + 8) + v18);
        ++v19;
        v18 += 136;
      }

      while (v19 < *(a1 + 16));
    }
  }

  return a1;
}

void NArray<NDELRHMMModel>::~NArray(void *a1)
{
  *a1 = &unk_283708758;
  v1 = a1[1];
  if (v1)
  {
    v2 = v1 - 16;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = 0;
      v5 = 136 * v3;
      v6 = v1 - 56;
      do
      {
        v7 = (v6 + v5);
        *(v6 + v5 + 24) = off_283709B60;
        v8 = *(v6 + v5 + 32);
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        *v7 = off_28370A538;
        v9 = v7[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        v10 = v6 + v5;
        *(v6 + v5 - 32) = off_283709B60;
        v11 = *(v6 + v5 - 24);
        if (v11)
        {
          MEMORY[0x223DF1D00](v11, 0x1000C8052888210);
        }

        *(v10 - 56) = off_28370A538;
        v12 = *(v10 - 48);
        if (v12)
        {
          MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
        }

        *(v7 - 10) = off_28370A538;
        v13 = *(v6 + v5 - 72);
        if (v13)
        {
          MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
        }

        v1 -= 136;
        v4 += 136;
        v6 -= 136;
      }

      while (v5 != v4);
    }

    MEMORY[0x223DF1D00](v2, 0x1090C80C1CE278ELL);
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NDELRHMMModel>::~NArray(void *result)
{
  *result = &unk_283708758;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = 0;
      v6 = 136 * v4;
      v7 = v1 - 56;
      do
      {
        v8 = (v7 + v6);
        *(v7 + v6 + 24) = off_283709B60;
        v9 = *(v7 + v6 + 32);
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *v8 = off_28370A538;
        v10 = v8[1];
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v11 = v7 + v6;
        *(v7 + v6 - 32) = off_283709B60;
        v12 = *(v7 + v6 - 24);
        if (v12)
        {
          MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
        }

        *(v11 - 56) = off_28370A538;
        v13 = *(v11 - 48);
        if (v13)
        {
          MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
        }

        *(v8 - 10) = off_28370A538;
        v14 = *(v7 + v6 - 72);
        if (v14)
        {
          MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
        }

        v1 -= 136;
        v5 += 136;
        v7 -= 136;
      }

      while (v6 != v5);
    }

    MEMORY[0x223DF1D00](v3, 0x1090C80C1CE278ELL);
    return v2;
  }

  return result;
}

void NDELRHMMModel::NDELRHMMModel(NDELRHMMModel *this)
{
  *this = off_28370A538;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = off_28370A538;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = off_283709B60;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 10) = off_28370A538;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = off_283709B60;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 32) = 0;
}

{
  *this = off_28370A538;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = off_28370A538;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = off_283709B60;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 10) = off_28370A538;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = off_283709B60;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 32) = 0;
}

uint64_t NDELRHMMModel::updateFirstStateOutputID(uint64_t this, const unsigned int *a2)
{
  if (*(this + 64))
  {
    **(this + 56) = *a2;
  }

  return this;
}

uint64_t NDELRHMMModel::reset(uint64_t this)
{
  if (*(this + 72))
  {
    v1 = *(this + 88);
    *v1 = 0;
    v2 = *(this + 112);
    *v2 = 0;
    if (*(this + 72))
    {
      v3 = 1;
      do
      {
        v1[v3] = -8388609;
        v2[v3++] = 0;
      }

      while (v3 <= *(this + 72));
    }
  }

  return this;
}

uint64_t NDELRHMMModel::stepFrame(uint64_t result, uint64_t a2, float *a3, _DWORD *a4, double a5)
{
  v5 = *(result + 72);
  v6 = *(result + 88);
  v7 = *(result + 8);
  v8 = *(result + 32);
  v9 = (v5 - 1);
  if (v5 != 1)
  {
    v10 = v5 - 2;
    do
    {
      v11 = v6[v9] + v7[v9];
      v12 = v6[v10] + v8[v10];
      if (v11 <= v12)
      {
        *(*(result + 112) + 4 * v9) = *(*(result + 112) + 4 * v10);
        v11 = v12;
      }

      v6[v9] = v11;
      --v10;
      --v9;
    }

    while (v9);
    v13 = *(result + 72);
    if (v13 >= 2)
    {
      v14 = *(a2 + 8);
      v15 = v13 - 1;
      v16 = v6 + 1;
      v17 = (*(result + 56) + 4);
      do
      {
        v18 = *v17++;
        *v16 = *(v14 + 4 * v18) + *v16;
        ++v16;
        --v15;
      }

      while (v15);
    }
  }

  v19 = *v6 + *v7;
  *v6 = v19;
  *v6 = v19 + *a3;
  v20 = *(result + 112);
  *v20 = *a4 + 1;
  v21 = *(result + 72);
  v6[v21] = v6[(v21 - 1)] + v8[(v21 - 1)];
  v20[v21] = v20[(v21 - 1)];
  *&a5 = *v6 + *v8;
  v22 = *(result + 72);
  v23 = v22 + 1;
  if ((v22 + 1) > 1)
  {
    v24 = (v22 + 1);
  }

  else
  {
    v24 = 1;
  }

  if (v23 < 8)
  {
    v25 = 0;
LABEL_17:
    v30 = v24 - v25;
    v31 = &v6[v25];
    do
    {
      *v31 = *v31 - *&a5;
      ++v31;
      --v30;
    }

    while (v30);
    return result;
  }

  v25 = v24 & 0xFFFFFFF8;
  v26 = vdupq_lane_s32(*&a5, 0);
  v27 = (v6 + 4);
  v28 = v25;
  do
  {
    v29 = vsubq_f32(*v27, v26);
    v27[-1] = vsubq_f32(v27[-1], v26);
    *v27 = v29;
    v27 += 2;
    v28 -= 8;
  }

  while (v28);
  if (v25 != v24)
  {
    goto LABEL_17;
  }

  return result;
}

void NDEHMMDetector::NDEHMMDetector(NDEHMMDetector *this)
{
  *this = &unk_283708728;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_283708758;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = &unk_28370A4D8;
  *(this + 9) = 0u;
  *(this + 60) = 1;
  *(this + 8) = 0u;
  *(this + 20) = 0;
  *(this + 18) = &unk_28370A4D8;
  *(this + 21) = off_28370A538;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 48) = -8388609;
  *(this + 204) = 0;
  *(this + 196) = 0;
  *(this + 53) = 0;
}

{
  *this = &unk_283708728;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_283708758;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = &unk_28370A4D8;
  *(this + 9) = 0u;
  *(this + 60) = 1;
  *(this + 8) = 0u;
  *(this + 20) = 0;
  *(this + 18) = &unk_28370A4D8;
  *(this + 21) = off_28370A538;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 48) = -8388609;
  *(this + 204) = 0;
  *(this + 196) = 0;
  *(this + 53) = 0;
}

uint64_t NDEHMMDetector::reset(uint64_t this)
{
  *(this + 192) = -8388609;
  *(this + 204) = 0;
  *(this + 196) = 0;
  if (*(this + 40))
  {
    v1 = 0;
    v2 = *(this + 32);
    do
    {
      v3 = v2 + 136 * v1;
      if (*(v3 + 72))
      {
        v4 = *(v3 + 88);
        *v4 = 0;
        v5 = *(v3 + 112);
        *v5 = 0;
        if (*(v3 + 72))
        {
          v6 = 1;
          do
          {
            v4[v6] = -8388609;
            v5[v6++] = 0;
          }

          while (v6 <= *(v3 + 72));
        }
      }

      ++v1;
    }

    while (v1 < *(this + 40));
  }

  *(this + 120) = 1;
  *(this + 84) = 0;
  *(this + 88) = 0;
  v7 = *(this + 8);
  if (v7)
  {
    if (*(this + 16))
    {
      return (*(*v7 + 160))(*(this + 8));
    }
  }

  return this;
}

uint64_t NDEHMMDetector::verifyHMMMemoryImage(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 < 4)
  {
    return 1;
  }

  v6 = (a2 + 1);
  v5 = *a2;
  v7 = *a2 == 0;
  if (!*a2)
  {
    return !v7;
  }

  v8 = (8 * (*(a1 + 4) < -1)) | 4;
  v9 = a2 + v3;
  if (&v6[v8] > v9)
  {
    return !v7;
  }

  v11 = 1;
  while (1)
  {
    v10 = 8 * (*(a1 + 4) < -1);
    v6 += 8 * *&v6[v10] + v10 + 4;
    if (v6 > v9)
    {
      break;
    }

    v7 = v11 >= v5;
    if (v11 < v5)
    {
      ++v11;
      if (&v6[v8] <= v9)
      {
        continue;
      }
    }

    return !v7;
  }

  return 1;
}

void NDEHMMDetector::feedFrame(NDEHMMDetector *this, const NFrame *a2)
{
  if ((*(this + 212) & 1) == 0)
  {
    Error::chuck("NDEHMMDetector::feedFrame() - init() not called", a2);
  }

  if (*(this + 213) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 4);
  if (!v3)
  {
    Error::chuck("NFrameWindow::pushFrame() - cannot feed zero-sized frames", a2);
  }

  v4 = *(this + 14);
  if (v3 != v4)
  {
    Error::chuck("NFrameWindow::pushFrame() - mismatched input frame size (%d != %d)", a2, *(a2 + 4), v4);
  }

  v5.n128_u64[0] = NFrameWindow::pushFrame((this + 48), *(a2 + 1));
  v6 = *(this + 22);
  if (*(this + 121) == 1 && v6 || v6 == *(this + 13) + 1)
  {
    v7 = this + 68;
    if (!*(this + 17))
    {
      Error::chuck("NFrameWindow::setOutputFrameWindow() - frame window not configured", v7, v5.n128_f64[0]);
    }

    (*(*(this + 18) + 32))(this + 144, v7, v5);
    NFrameWindow::setOutputFrameWindow(this + 48, *(this + 19));
    a2 = (this + 144);
LABEL_10:
    NDEHMMDetector::stepFrame(this, a2);
  }

  ++*(this + 50);
}

uint64_t NDEHMMDetector::stepFrame(uint64_t this, const NFrame *a2)
{
  v2 = this;
  v3 = *(this + 208);
  if (v3)
  {
    *(this + 208) = v3 - 1;
    return this;
  }

  v5 = (this + 204);
  v4 = *(this + 204);
  v6 = *(this + 136);
  if (v4)
  {
    *v5 = v6 + v4;
  }

  *(this + 208) = v6;
  this = (*(**(this + 8) + 72))(*(this + 8), a2, this + 168, *(this + 16));
  if (*(v2 + 214) == 1)
  {
    v8 = *(v2 + 184);
    if (v8)
    {
      v9 = *(v2 + 176);
      LODWORD(v7) = *v9;
      if (v8 != 1)
      {
        v10 = v8 - 1;
        v11 = (v9 + 1);
        do
        {
          v12 = *v11++;
          v13 = v12;
          if (v12 > *&v7)
          {
            *&v7 = v13;
          }

          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 0.0;
    }

LABEL_18:
    v18 = LODWORD(v7);
    if (!*(v2 + 40))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (*(v2 + 215) != 1)
  {
    LODWORD(v7) = *(*(v2 + 176) + 4 * **(*(v2 + 32) + 56));
    goto LABEL_18;
  }

  v18 = 0;
  if (!*(v2 + 40))
  {
    goto LABEL_21;
  }

LABEL_19:
  v14 = 0;
  v15 = 0;
  do
  {
    this = NDELRHMMModel::stepFrame(*(v2 + 32) + v14, v2 + 168, &v18, (v2 + 204), v7);
    ++v15;
    v14 += 136;
  }

  while (v15 < *(v2 + 40));
LABEL_21:
  v16 = *(v2 + 132);
  if (v16)
  {
    v17 = *(v2 + 32);
    *(v2 + 192) = *(*(v17 + 88) + 4 * v16) * (*(v2 + 136) + 1);
    *(v2 + 196) = *(*(v17 + 112) + 4 * v16);
  }

  ++*v5;
  return this;
}

BOOL NDEHMMDetector::skipUntilProcessedFrame(NDEHMMDetector *this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v2 = v1 - 1;
  }

  else
  {
    v3 = *(this + 51);
    v2 = *(this + 34);
    if (v3)
    {
      *(this + 51) = v2 + v3;
    }
  }

  *(this + 52) = v2;
  return v1 != 0;
}

double NDEHMMDetector::maxScore(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = *(a2 + 8);
  LODWORD(result) = *v3;
  if (v2 != 1)
  {
    v5 = v2 - 1;
    v6 = (v3 + 1);
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (v7 > *&result)
      {
        *&result = v8;
      }

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t NDEHMMDetector::partialLength(NDEHMMDetector *this)
{
  if (*(this + 33))
  {
    return (*(this + 51) - *(this + 49));
  }

  else
  {
    return 0;
  }
}

float NDEHMMDetector::scorePhrase(NDEHMMDetector *this, unsigned int a2)
{
  if (*(this + 10) <= a2)
  {
    return -3.4028e38;
  }

  v2 = *(this + 4) + 136 * a2;
  return *(*(v2 + 88) + 4 * *(v2 + 72)) * (*(this + 34) + 1);
}

float NDEHMMDetector::phraseScoreOffset(NDEHMMDetector *this, unsigned int a2)
{
  result = 0.0;
  if (*(this + 10) > a2)
  {
    return *(*(this + 4) + 136 * a2 + 128);
  }

  return result;
}

uint64_t NDEHMMDetector::bestLengthPhrase(NDEHMMDetector *this, unsigned int a2)
{
  if (*(this + 10) <= a2)
  {
    return 0;
  }

  v2 = *(this + 4) + 136 * a2;
  return (*(this + 51) - *(*(v2 + 112) + 4 * *(v2 + 72)));
}

uint64_t NArray<NGaussianMixture>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NGaussianMixture::operator=(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (result != a2)
  {
    v4 = *(result + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(result + 8);
      if (v6)
      {
        MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
        v5 = *(a2 + 16);
      }

      *(v2 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(a2 + 8);
      v9 = *(result + 8);
      do
      {
        *(v9 + 4 * v7) = *(v8 + 4 * v7);
        ++v7;
      }

      while (v7 < *(result + 16));
    }

    v10 = *(result + 40);
    v11 = *(a2 + 40);
    if (v10 != v11)
    {
      v12 = *(result + 32);
      if (v12)
      {
        MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
        v11 = *(a2 + 40);
      }

      *(v2 + 40) = v11;
      operator new[]();
    }

    if (v10)
    {
      v13 = 0;
      v14 = *(a2 + 32);
      v15 = *(result + 32);
      v16 = v10;
      if (v10 < 8)
      {
        goto LABEL_19;
      }

      if ((v15 - v14) < 0x20)
      {
        goto LABEL_19;
      }

      v13 = v10 & 0xFFFFFFF8;
      v17 = (v15 + 16);
      v18 = (v14 + 16);
      v19 = v16 & 0xFFFFFFF8;
      do
      {
        v20 = *v18;
        *(v17 - 1) = *(v18 - 1);
        *v17 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      if (v13 != v16)
      {
LABEL_19:
        v21 = v16 - v13;
        v22 = 4 * v13;
        v23 = (v15 + v22);
        v24 = (v14 + v22);
        do
        {
          v25 = *v24++;
          *v23++ = v25;
          --v21;
        }

        while (v21);
      }
    }
  }

  return result;
}

uint64_t NArray<NGaussianMixture>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = *a3;
  if (v5 != *a3)
  {
    v7 = *(result + 8);
    if (v7)
    {
      v9 = v7 - 16;
      v10 = *(v7 - 8);
      if (v10)
      {
        v11 = v7 + 48 * v10;
        v12 = v11 - 48;
        v13 = -48 * v10;
        v14 = (v11 - 24);
        do
        {
          *v14 = off_28370A538;
          v15 = v14[1];
          if (v15)
          {
            MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
          }

          *(v14 - 3) = off_283709B60;
          v16 = *(v14 - 2);
          if (v16)
          {
            MEMORY[0x223DF1D00](v16, 0x1000C8052888210);
          }

          v12 -= 48;
          v14 -= 6;
          v13 += 48;
        }

        while (v13);
      }

      MEMORY[0x223DF1D00](v9, 0x1090C806BD41B22);
      v6 = *a3;
    }

    *(v4 + 16) = v6;
    operator new[]();
  }

  if (v5)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      result = NGaussianMixture::operator=(*(v4 + 8) + v17, a2 + v17);
      ++v18;
      v17 += 48;
    }

    while (v18 < *(v4 + 16));
  }

  return result;
}

uint64_t NArray<NGaussianMixture>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = v6 - 16;
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = v6 + 48 * v8;
          v10 = v9 - 48;
          v11 = -48 * v8;
          v12 = (v9 - 24);
          do
          {
            *v12 = off_28370A538;
            v13 = v12[1];
            if (v13)
            {
              MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
            }

            *(v12 - 3) = off_283709B60;
            v14 = *(v12 - 2);
            if (v14)
            {
              MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
            }

            v10 -= 48;
            v12 -= 6;
            v11 += 48;
          }

          while (v11);
        }

        MEMORY[0x223DF1D00](v7, 0x1090C806BD41B22);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        NGaussianMixture::operator=(*(a1 + 8) + v15, *(a2 + 8) + v15);
        ++v16;
        v15 += 48;
      }

      while (v16 < *(a1 + 16));
    }
  }

  return a1;
}

void NGaussianMixtureModels::~NGaussianMixtureModels(NGaussianMixtureModels *this)
{
  NGaussianMixtureModels::~NGaussianMixtureModels(this);

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_2837087A0;
  *(this + 7) = &unk_28370A720;
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *(this + 3) = &unk_283708800;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = v3 + 56 * v5;
      v7 = v6 - 56;
      v8 = (v6 - 24);
      v9 = -56 * v5;
      do
      {
        *(v8 - 1) = off_28370A538;
        if (*v8)
        {
          MEMORY[0x223DF1D00](*v8, 0x1000C8052888210);
        }

        *(v8 - 4) = off_28370A538;
        v10 = *(v8 - 3);
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v7 -= 56;
        v8 -= 7;
        v9 += 56;
      }

      while (v9);
    }

    MEMORY[0x223DF1D00](v4, 0x1080C80D133DD60);
  }

  *this = &unk_283708848;
  v11 = *(this + 1);
  if (v11)
  {
    v12 = v11 - 16;
    v13 = *(v11 - 8);
    if (v13)
    {
      v14 = v11 + 48 * v13;
      v15 = v14 - 48;
      v16 = -48 * v13;
      v17 = (v14 - 24);
      do
      {
        *v17 = off_28370A538;
        v18 = v17[1];
        if (v18)
        {
          MEMORY[0x223DF1D00](v18, 0x1000C8052888210);
        }

        *(v17 - 3) = off_283709B60;
        v19 = *(v17 - 2);
        if (v19)
        {
          MEMORY[0x223DF1D00](v19, 0x1000C8052888210);
        }

        v15 -= 48;
        v17 -= 6;
        v16 += 48;
      }

      while (v16);
    }

    MEMORY[0x223DF1D00](v12, 0x1090C806BD41B22);
  }
}

void NArray<NGaussianMixture>::~NArray(void *a1)
{
  *a1 = &unk_283708848;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 48 * v4;
      v6 = v5 - 48;
      v7 = -48 * v4;
      v8 = (v5 - 24);
      do
      {
        *v8 = off_28370A538;
        v9 = v8[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *(v8 - 3) = off_283709B60;
        v10 = *(v8 - 2);
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v6 -= 48;
        v8 -= 6;
        v7 += 48;
      }

      while (v7);
    }

    MEMORY[0x223DF1D00](v3, 0x1090C806BD41B22);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NGaussianMixture>::~NArray(void *result)
{
  *result = &unk_283708848;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 48 * v4;
      v6 = v5 - 48;
      v7 = -48 * v4;
      v8 = (v5 - 24);
      do
      {
        *v8 = off_28370A538;
        v9 = v8[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *(v8 - 3) = off_283709B60;
        v10 = *(v8 - 2);
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v6 -= 48;
        v8 -= 6;
        v7 += 48;
      }

      while (v7);
    }

    MEMORY[0x223DF1D00](v3, 0x1090C806BD41B22);
    return v2;
  }

  return result;
}

{
  *result = &unk_283708848;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 48 * v4;
      v6 = v5 - 48;
      v7 = -48 * v4;
      v8 = (v5 - 24);
      do
      {
        *v8 = off_28370A538;
        v9 = v8[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *(v8 - 3) = off_283709B60;
        v10 = *(v8 - 2);
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v6 -= 48;
        v8 -= 6;
        v7 += 48;
      }

      while (v7);
    }

    MEMORY[0x223DF1D00](v3, 0x1090C806BD41B22);
    return v2;
  }

  return result;
}

uint64_t NArray<NGaussian>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NGaussian::operator=(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (result != a2)
  {
    v4 = *(result + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(result + 8);
      if (v6)
      {
        MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
        v5 = *(a2 + 16);
      }

      *(v3 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(a2 + 8);
      v9 = *(result + 8);
      v10 = v4;
      if (v4 < 8)
      {
        goto LABEL_12;
      }

      if ((v9 - v8) < 0x20)
      {
        goto LABEL_12;
      }

      v7 = v4 & 0xFFFFFFF8;
      v11 = (v9 + 16);
      v12 = (v8 + 16);
      v13 = v10 & 0xFFFFFFF8;
      do
      {
        v14 = *v12;
        *(v11 - 1) = *(v12 - 1);
        *v11 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 8;
      }

      while (v13);
      if (v7 != v10)
      {
LABEL_12:
        v15 = v10 - v7;
        v16 = 4 * v7;
        v17 = (v9 + v16);
        v18 = (v8 + v16);
        do
        {
          v19 = *v18++;
          *v17++ = v19;
          --v15;
        }

        while (v15);
      }
    }

    v20 = *(result + 40);
    v21 = *(a2 + 40);
    if (v20 != v21)
    {
      v22 = *(result + 32);
      if (v22)
      {
        MEMORY[0x223DF1D00](v22, 0x1000C8052888210);
        v21 = *(a2 + 40);
      }

      *(v3 + 40) = v21;
      operator new[]();
    }

    if (v20)
    {
      v23 = 0;
      v24 = *(a2 + 32);
      v25 = *(result + 32);
      v26 = v20;
      if (v20 < 8)
      {
        goto LABEL_24;
      }

      if ((v25 - v24) < 0x20)
      {
        goto LABEL_24;
      }

      v23 = v20 & 0xFFFFFFF8;
      v27 = (v25 + 16);
      v28 = (v24 + 16);
      v29 = v26 & 0xFFFFFFF8;
      do
      {
        v30 = *v28;
        *(v27 - 1) = *(v28 - 1);
        *v27 = v30;
        v27 += 2;
        v28 += 2;
        v29 -= 8;
      }

      while (v29);
      if (v23 != v26)
      {
LABEL_24:
        v31 = v26 - v23;
        v32 = 4 * v23;
        v33 = (v25 + v32);
        v34 = (v24 + v32);
        do
        {
          v35 = *v34++;
          *v33++ = v35;
          --v31;
        }

        while (v31);
      }
    }
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t NArray<NGaussian>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = *a3;
  if (v5 != *a3)
  {
    v7 = *(result + 8);
    if (v7)
    {
      v9 = v7 - 16;
      v10 = *(v7 - 8);
      if (v10)
      {
        v11 = v7 + 56 * v10;
        v12 = v11 - 56;
        v13 = (v11 - 24);
        v14 = -56 * v10;
        do
        {
          *(v13 - 1) = off_28370A538;
          if (*v13)
          {
            MEMORY[0x223DF1D00](*v13, 0x1000C8052888210);
          }

          *(v13 - 4) = off_28370A538;
          v15 = *(v13 - 3);
          if (v15)
          {
            MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
          }

          v12 -= 56;
          v13 -= 7;
          v14 += 56;
        }

        while (v14);
      }

      MEMORY[0x223DF1D00](v9, 0x1080C80D133DD60);
      v6 = *a3;
    }

    *(v4 + 16) = v6;
    operator new[]();
  }

  if (v5)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      result = NGaussian::operator=(*(v4 + 8) + v16, a2 + v16);
      ++v17;
      v16 += 56;
    }

    while (v17 < *(v4 + 16));
  }

  return result;
}

uint64_t NArray<NGaussian>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = v6 - 16;
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = v6 + 56 * v8;
          v10 = v9 - 56;
          v11 = (v9 - 24);
          v12 = -56 * v8;
          do
          {
            *(v11 - 1) = off_28370A538;
            if (*v11)
            {
              MEMORY[0x223DF1D00](*v11, 0x1000C8052888210);
            }

            *(v11 - 4) = off_28370A538;
            v13 = *(v11 - 3);
            if (v13)
            {
              MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
            }

            v10 -= 56;
            v11 -= 7;
            v12 += 56;
          }

          while (v12);
        }

        MEMORY[0x223DF1D00](v7, 0x1080C80D133DD60);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        NGaussian::operator=(*(a1 + 8) + v14, *(a2 + 8) + v14);
        ++v15;
        v14 += 56;
      }

      while (v15 < *(a1 + 16));
    }
  }

  return a1;
}

void NArray<NGaussian>::~NArray(void *a1)
{
  *a1 = &unk_283708800;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 56 * v4;
      v6 = v5 - 56;
      v7 = (v5 - 24);
      v8 = -56 * v4;
      do
      {
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        *(v7 - 4) = off_28370A538;
        v9 = *(v7 - 3);
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        v6 -= 56;
        v7 -= 7;
        v8 += 56;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x1080C80D133DD60);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NGaussian>::~NArray(void *result)
{
  *result = &unk_283708800;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 56 * v4;
      v6 = v5 - 56;
      v7 = (v5 - 24);
      v8 = -56 * v4;
      do
      {
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        *(v7 - 4) = off_28370A538;
        v9 = *(v7 - 3);
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        v6 -= 56;
        v7 -= 7;
        v8 += 56;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x1080C80D133DD60);
    return v2;
  }

  return result;
}

{
  *result = &unk_283708800;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 56 * v4;
      v6 = v5 - 56;
      v7 = (v5 - 24);
      v8 = -56 * v4;
      do
      {
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        *(v7 - 4) = off_28370A538;
        v9 = *(v7 - 3);
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        v6 -= 56;
        v7 -= 7;
        v8 += 56;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x1080C80D133DD60);
    return v2;
  }

  return result;
}

float NGaussian::score(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    v6 = *(a1 + 32);
    if (v3 < 8)
    {
      v7 = 0;
LABEL_7:
      v16 = v3 - v7;
      v17 = v7;
      v18 = &v6->f32[v17];
      v19 = &v5->f32[v17];
      v20 = &v4->f32[v17];
      do
      {
        v21 = *v20++;
        v22 = v21;
        v23 = *v19++;
        v24 = (v22 - v23) * (v22 - v23);
        v25 = *v18++;
        v2 = v2 + (v24 * v25);
        --v16;
      }

      while (v16);
      return v2 * -0.5;
    }

    v7 = v3 & 0xFFFFFFF8;
    v8 = v6 + 1;
    v9 = v5 + 1;
    v10 = v4 + 1;
    v11 = v7;
    do
    {
      v12 = vsubq_f32(v10[-1], v9[-1]);
      v13 = vsubq_f32(*v10, *v9);
      v14 = vmulq_f32(vmulq_f32(v12, v12), v8[-1]);
      v15 = vmulq_f32(vmulq_f32(v13, v13), *v8);
      v2 = (((((((v2 + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3]) + v15.f32[0]) + v15.f32[1]) + v15.f32[2]) + v15.f32[3];
      v8 += 2;
      v9 += 2;
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
    if (v7 != v3)
    {
      goto LABEL_7;
    }
  }

  return v2 * -0.5;
}

void NGaussian::refreshOffset(NGaussian *this)
{
  v1 = *(this + 10);
  v2 = v1 * 1.83787707;
  *(this + 12) = v2;
  if (v1)
  {
    v4 = *(this + 4);
    do
    {
      v5 = *v4++;
      v2 = v2 - logf(v5);
      *(this + 12) = v2;
      --v1;
    }

    while (v1);
  }
}

void NGaussianMixtureModels::NGaussianMixtureModels(NGaussianMixtureModels *this)
{
  *(this + 4) = 0;
  *this = &unk_2837087A0;
  *(this + 1) = 0;
  *(this + 3) = &unk_283708800;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 7) = &unk_28370A720;
  *(this + 16) = 0;
  operator new[]();
}

{
  *(this + 4) = 0;
  *this = &unk_2837087A0;
  *(this + 1) = 0;
  *(this + 3) = &unk_283708800;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 7) = &unk_28370A720;
  *(this + 16) = 0;
  operator new[]();
}

void sub_223AABC60(_Unwind_Exception *a1)
{
  NArray<NGaussian>::~NArray(v2);
  NArray<NGaussianMixture>::~NArray(v1);
  _Unwind_Resume(a1);
}

void sub_223AABE58(_Unwind_Exception *a1)
{
  NArray<NGaussian>::~NArray(v2);
  NArray<NGaussianMixture>::~NArray(v1);
  _Unwind_Resume(a1);
}

void NGaussianMixtureModels::read(NGaussianMixtureModels *this, const NString *a2)
{
  v2 = &unk_28370A720;
  LODWORD(v3) = 1;
  operator new[]();
}

void sub_223AAF8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a38)
  {
    MEMORY[0x223DF1D00](a38, v38);
  }

  *(v39 - 208) = a21;
  v41 = *(v39 - 200);
  if (v41)
  {
    v42 = v41 - 16;
    v43 = *(v41 - 8);
    if (v43)
    {
      v47 = v41 + 24 * v43;
      v48 = (v47 - 8);
      v49 = v47 - 24;
      v50 = -24 * v43;
      do
      {
        *(v48 - 2) = &unk_28370A720;
        if (*v48)
        {
          MEMORY[0x223DF1D00](*v48, v38);
        }

        v48 -= 3;
        v49 -= 24;
        v50 += 24;
      }

      while (v50);
    }

    MEMORY[0x223DF1D00](v42, 0x1091C800F2A5985);
  }

  *(v39 - 184) = a22;
  v44 = *(v39 - 168);
  if (v44)
  {
    MEMORY[0x223DF1D00](v44, v38);
  }

  *(v39 - 160) = &unk_28370A720;
  v45 = *(v39 - 144);
  if (v45)
  {
    MEMORY[0x223DF1D00](v45, v38);
  }

  *(v39 - 136) = &unk_28370AA90;
  v46 = *(v39 - 128);
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  _Unwind_Resume(a1);
}

void sub_223AB0214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AB0348(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[1];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AB0430(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[1];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AB0518(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[1];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NGaussianMixtureModels::validateWeights(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = -1.0;
    goto LABEL_11;
  }

  v4 = *(a2 + 8);
  if (v3 == 1)
  {
    v5 = 0;
    v6 = 0.0;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFE;
    v8 = (v4 + 4);
    v6 = 0.0;
    v9 = v5;
    do
    {
      v10 = *v8;
      v11 = expf(*(v8 - 1));
      v6 = (v6 + v11) + expf(v10);
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
    if (v5 == v3)
    {
      goto LABEL_10;
    }
  }

  v12 = v3 - v5;
  v13 = (v4 + 4 * v5);
  do
  {
    v14 = *v13++;
    v6 = v6 + expf(v14);
    --v12;
  }

  while (v12);
LABEL_10:
  v7 = v6 + -1.0;
LABEL_11:
  if (fabs(v7) > 0.1)
  {
    Error::chuck("NGaussianMixtureModels::validateWeights() - mixture weights do not sum to one (tol=+-0.1)", a2);
  }

  return a2;
}

void NGaussianMixtureModels::refreshOffsets(NGaussianMixtureModels *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 4);
    do
    {
      v4 = v3 + 56 * v2;
      v5 = *(v4 + 40);
      v6 = v5 * 1.83787707;
      *(v4 + 48) = v6;
      if (v5)
      {
        v7 = *(v4 + 32);
        do
        {
          v8 = *v7++;
          v6 = v6 - logf(v8);
          *(v4 + 48) = v6;
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v1);
  }
}

void sub_223AB1DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a33)
  {
    MEMORY[0x223DF1D00](a33, 0x1000C8077774924);
  }

  if (a24)
  {
    MEMORY[0x223DF1D00](a24, 0x1000C8077774924);
  }

  if (!a27)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*a27 + 8))(a27);
  _Unwind_Resume(exception_object);
}

void sub_223AB24B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, v16);
  }

  if (a16)
  {
    MEMORY[0x223DF1D00](a16, v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AB26F8(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[1];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AB27E0(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[1];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void NGaussianMixtureModels::writeBinary(NGaussianMixtureModels *this, const NString *a2)
{
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223AB2F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v17);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NGaussianMixtureModels::id(NGaussianMixtureModels *this)
{
  return this + 56;
}

{
  return this + 56;
}

float NGaussianMixtureModels::score(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48 * *a2 + 16);
  if (v4)
  {
    v5 = v3 + 48 * *a2;
    v6 = *(v5 + 32);
    v7 = *(v5 + 8);
    v8 = *(a1 + 32);
    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = *(a3 + 8);
      if (v9 >= 8)
      {
        v30 = 0;
        v31 = (v10 + 4);
        v32 = (4 * v9) & 0x3FFFFFFE0;
        v33 = (v10 + v32);
        v12 = 0.0;
        do
        {
          v34 = v8 + 56 * v7[v30];
          v35 = *(v34 + 48);
          v36 = *(v34 + 8);
          v37 = *(v34 + 32);
          v38 = v37 + 1;
          v39 = v36 + 1;
          v40 = v31;
          v41 = v9 & 0xFFFFFFF8;
          do
          {
            v42 = vsubq_f32(v40[-1], v39[-1]);
            v43 = vsubq_f32(*v40, *v39);
            v44 = vmulq_f32(vmulq_f32(v42, v42), v38[-1]);
            v45 = vmulq_f32(vmulq_f32(v43, v43), *v38);
            v35 = (((((((v35 + v44.f32[0]) + v44.f32[1]) + v44.f32[2]) + v44.f32[3]) + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3];
            v38 += 2;
            v39 += 2;
            v40 += 2;
            v41 -= 8;
          }

          while (v41);
          if (v9 != (v9 & 0xFFFFFFF8))
          {
            v46 = (v37->f32 + v32);
            v47 = (v36->f32 + v32);
            v48 = v33;
            v49 = v9 - (v9 & 0xFFFFFFF8);
            do
            {
              v50 = *v48++;
              v51 = v50;
              v52 = *v47++;
              v53 = (v51 - v52) * (v51 - v52);
              v54 = *v46++;
              v35 = v35 + (v53 * v54);
              --v49;
            }

            while (v49);
          }

          v12 = v12 + exp((v6[v30++] + (v35 * -0.5)));
        }

        while (v30 != v4);
      }

      else
      {
        v11 = *v10;
        v12 = 0.0;
        do
        {
          v14 = *v7++;
          v15 = v8 + 56 * v14;
          v16 = *(v15 + 8);
          v17 = *(v15 + 32);
          v18 = *(v15 + 48) + (((v11 - *v16) * (v11 - *v16)) * *v17);
          if (v9 != 1)
          {
            v19 = v10[1] - v16[1];
            v18 = v18 + ((v19 * v19) * v17[1]);
            if (v9 != 2)
            {
              v20 = v10[2] - v16[2];
              v18 = v18 + ((v20 * v20) * v17[2]);
              if (v9 != 3)
              {
                v21 = v10[3] - v16[3];
                v18 = v18 + ((v21 * v21) * v17[3]);
                if (v9 != 4)
                {
                  v22 = v10[4] - v16[4];
                  v18 = v18 + ((v22 * v22) * v17[4]);
                  if (v9 != 5)
                  {
                    v23 = v10[5] - v16[5];
                    v18 = v18 + ((v23 * v23) * v17[5]);
                    if (v9 != 6)
                    {
                      v24 = v10[6] - v16[6];
                      v18 = v18 + ((v24 * v24) * v17[6]);
                    }
                  }
                }
              }
            }
          }

          v13 = *v6++;
          v12 = v12 + exp((v13 + (v18 * -0.5)));
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      v25 = v8 + 48;
      v12 = 0.0;
      do
      {
        v26 = *v6++;
        v27 = v26;
        v28 = *v7++;
        v12 = v12 + exp((v27 + (*(v25 + 56 * v28) * -0.5)));
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v12 = 0.0;
  }

  return log(v12);
}

void NGaussianMixtureModels::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = v4 + 48 * *a2;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v5 + 8);
    v9 = *(a3 + 8);
    v10 = v4 + 48 * *a2;
    v11 = *(a4 + 8);
    v12 = 4 * v6;
    v13 = 0.0;
    do
    {
      v14 = *(v8 + v7);
      if (*(v9 + v14) == 1)
      {
        v13 = v13 + expf(*(*(v10 + 32) + v7) + *(v11 + 4 * v14));
      }

      v7 += 4;
    }

    while (v12 != v7);
    if (v13 != 0.0)
    {
      log(v13);
    }
  }
}

void sub_223AB3D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    MEMORY[0x223DF1D00](a17, 0x1000C8000313F17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NArray<double>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

double NArray<double>::fromArray(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8000313F17);
      v5 = *a3;
    }

    *(a1 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = *(a1 + 8);
    v9 = v4;
    if (v4 < 4 || (v8 - a2) <= 0x1F)
    {
      v11 = 0;
LABEL_14:
      v17 = v9 - v11;
      v18 = 8 * v11;
      v19 = (v8 + v18);
      v20 = (a2 + v18);
      do
      {
        v21 = *v20++;
        *&v15 = v21;
        *v19++ = v21;
        --v17;
      }

      while (v17);
      return *&v15;
    }

    v11 = v4 & 0xFFFFFFFC;
    v12 = (v8 + 16);
    v13 = (a2 + 16);
    v14 = v9 & 0xFFFFFFFC;
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      *(v12 - 1) = v15;
      *v12 = v16;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v11 != v9)
    {
      goto LABEL_14;
    }
  }

  return *&v15;
}

double NArray<double>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    if (v3 != v4)
    {
      if (*(a1 + 8))
      {
        v5 = a1;
        MEMORY[0x223DF1D00](*(a1 + 8), 0x1000C8000313F17);
        a1 = v5;
        v4 = *(a2 + 16);
      }

      *(a1 + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v6 = 0;
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      v9 = v3;
      if (v3 < 4)
      {
        goto LABEL_12;
      }

      if ((v8 - v7) < 0x20)
      {
        goto LABEL_12;
      }

      v6 = v3 & 0xFFFFFFFC;
      v10 = (v8 + 16);
      v11 = (v7 + 16);
      v12 = v9 & 0xFFFFFFFC;
      do
      {
        v13 = *(v11 - 1);
        v14 = *v11;
        *(v10 - 1) = v13;
        *v10 = v14;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v6 != v9)
      {
LABEL_12:
        v15 = v9 - v6;
        v16 = 8 * v6;
        v17 = (v8 + v16);
        v18 = (v7 + v16);
        do
        {
          v19 = *v18++;
          *&v13 = v19;
          *v17++ = v19;
          --v15;
        }

        while (v15);
      }
    }
  }

  return *&v13;
}

void NArray<double>::~NArray(void *a1)
{
  *a1 = &unk_283708880;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8000313F17);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<double>::~NArray(void *result)
{
  *result = &unk_283708880;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C8000313F17);
    return v1;
  }

  return result;
}

void sub_223AB44F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AccelLoga::init(uint64_t this, const unsigned int *a2, float a3)
{
  *this = *a2;
  *(this + 4) = 1;
  *(this + 8) = a3;
  return this;
}

void AccelLoga::run(AccelLoga *this, float *a2)
{
  if ((*(this + 4) & 1) == 0)
  {
    Error::chuck("AccelLoga::run - AccelLoga::init() has to be called before running", a2);
  }

  MEMORY[0x223DF29C0](a2, 1, this + 8, a2, 1, *this);
  v4 = *this;
  vvlogf(a2, a2, &v4);
}

float AccelLoga::findMax(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  result = *v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    do
    {
      v5 = *v2++;
      v6 = v5;
      if (v5 > result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t NArray<NPhoneHMM>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void sub_223AB5190(_Unwind_Exception *a1)
{
  *(v3 + 16) = off_283708BA0;
  v6 = *(v3 + 24);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6 - 16, 0x1000C8000313F17);
  }

  if (v4 != 16)
  {
    v7 = (v3 - 32);
    v8 = -v2;
    do
    {
      NPhoneHMM::~NPhoneHMM(v7);
      v7 = (v9 - 48);
      v8 += 48;
    }

    while (v8);
  }

  MEMORY[0x223DF1D00](v1, 0x10B1C80FD921951);
  _Unwind_Resume(a1);
}

void NPhoneHMM::~NPhoneHMM(NPhoneHMM *this)
{
  *this = &unk_283708B40;
  *(this + 3) = &unk_28370A720;
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *this = off_283708BA0;
  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3 - 16, 0x1000C8000313F17);
  }
}

{
  *this = &unk_283708B40;
  *(this + 3) = &unk_28370A720;
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *this = off_283708BA0;
  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3 - 16, 0x1000C8000313F17);
  }

  JUMPOUT(0x223DF1D20);
}

uint64_t NArray<NHMMState>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6 - 16, 0x1000C8000313F17);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = 0;
    do
    {
      *(*(result + 8) + 8 * v8) = *(a2 + 8 * v8);
      ++v8;
    }

    while (v8 < *(result + 16));
  }

  return result;
}

uint64_t NArray<NHMMState>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    v4 = *(a2 + 16);
    if (v3 != v4)
    {
      v5 = *(result + 8);
      if (v5)
      {
        v6 = result;
        MEMORY[0x223DF1D00](v5 - 16, 0x1000C8000313F17);
        result = v6;
        v4 = *(a2 + 16);
      }

      *(result + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v7 = 0;
      do
      {
        *(*(result + 8) + 8 * v7) = *(*(a2 + 8) + 8 * v7);
        ++v7;
      }

      while (v7 < *(result + 16));
    }
  }

  return result;
}

void NArray<NHMMState>::~NArray(void *a1)
{
  *a1 = off_283708BA0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2 - 16, 0x1000C8000313F17);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NHMMState>::~NArray(void *result)
{
  *result = off_283708BA0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    MEMORY[0x223DF1D00](v1 - 16, 0x1000C8000313F17);
    return v2;
  }

  return result;
}

uint64_t NArray<NPhoneHMM>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = *a3;
  if (v5 != *a3)
  {
    v7 = *(result + 8);
    if (v7)
    {
      v9 = v7 - 16;
      v10 = *(v7 - 8);
      if (v10)
      {
        v11 = (v7 + 48 * v10 - 48);
        v12 = -48 * v10;
        v13 = v11;
        do
        {
          *v11 = &unk_283708B40;
          v11[3] = &unk_28370A720;
          v14 = v11[5];
          if (v14)
          {
            MEMORY[0x223DF1D00](v14, 0x1000C8077774924);
          }

          *v11 = off_283708BA0;
          v15 = v11[1];
          if (v15)
          {
            MEMORY[0x223DF1D00](v15 - 16, 0x1000C8000313F17);
          }

          v13 -= 6;
          v11 -= 6;
          v12 += 48;
        }

        while (v12);
      }

      MEMORY[0x223DF1D00](v9, 0x10B1C80FD921951);
      v6 = *a3;
    }

    *(v4 + 16) = v6;
    operator new[]();
  }

  if (v5)
  {
    v16 = 0;
    do
    {
      v17 = *(v4 + 8);
      if (v17 != a2)
      {
        v18 = a2 + 48 * v16;
        v19 = v17 + 48 * v16;
        v20 = *(v18 + 16);
        if (*(v19 + 16) != v20)
        {
          v21 = *(v19 + 8);
          if (v21)
          {
            MEMORY[0x223DF1D00](v21 - 16, 0x1000C8000313F17);
            LODWORD(v20) = *(v18 + 16);
          }

          *(v19 + 16) = v20;
          operator new[]();
        }

        if (*(v19 + 16))
        {
          v22 = 0;
          do
          {
            *(*(v19 + 8) + 8 * v22) = *(*(v18 + 8) + 8 * v22);
            ++v22;
          }

          while (v22 < *(v19 + 16));
        }

        result = (*(*(v19 + 24) + 64))(v19 + 24, *(v18 + 40), v18 + 32);
      }

      ++v16;
    }

    while (v16 < *(v4 + 16));
  }

  return result;
}

void sub_223AB5934(_Unwind_Exception *a1)
{
  *(v4 + 16) = off_283708BA0;
  v7 = *(v4 + 24);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7 - 16, 0x1000C8000313F17);
  }

  if (v1 != 16)
  {
    v8 = (v4 - 32);
    v9 = -v3;
    do
    {
      NPhoneHMM::~NPhoneHMM(v8);
      v8 = (v10 - 48);
      v9 += 48;
    }

    while (v9);
  }

  MEMORY[0x223DF1D00](v2, v5);
  _Unwind_Resume(a1);
}

void NArray<NPhoneHMM>::~NArray(void *a1)
{
  *a1 = &unk_283708B08;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 48 * v4 - 48);
      v6 = -48 * v4;
      v7 = v5;
      do
      {
        *v5 = &unk_283708B40;
        v5[3] = &unk_28370A720;
        v8 = v5[5];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
        }

        *v5 = off_283708BA0;
        v9 = v5[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9 - 16, 0x1000C8000313F17);
        }

        v7 -= 6;
        v5 -= 6;
        v6 += 48;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x10B1C80FD921951);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NPhoneHMM>::~NArray(void *result)
{
  *result = &unk_283708B08;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = (v1 + 48 * v4 - 48);
      v6 = -48 * v4;
      v7 = v5;
      do
      {
        *v5 = &unk_283708B40;
        v5[3] = &unk_28370A720;
        v8 = v5[5];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
        }

        *v5 = off_283708BA0;
        v9 = v5[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9 - 16, 0x1000C8000313F17);
        }

        v7 -= 6;
        v5 -= 6;
        v6 += 48;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x10B1C80FD921951);
    return v2;
  }

  return result;
}

void *NLinkedList<NMap<NString,unsigned int>::HashItem>::NElement::~NElement(void *result)
{
  *result = &unk_283708AD8;
  result[2] = &unk_28370A720;
  if (result[4])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[4], 0x1000C8077774924);
    return v1;
  }

  return result;
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::insert(_DWORD *a1, const char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[6];
  if (v3 > v4)
  {
    Error::chuck("NLinkedList::insert List index out of bounds (size = %d, [] = %d)", a2, a1[6], v3);
  }

  if (!v3)
  {
    v5 = *(*a1 + 32);

    return v5();
  }

  if (v3 == v4)
  {
    v5 = *(*a1 + 40);

    return v5();
  }

  v7 = a1;
  do
  {
    v7 = *(v7 + 1);
    LODWORD(v3) = v3 - 1;
  }

  while (v3);
  result = (*(*a1 + 64))(a1, a3);
  *(result + 8) = *(v7 + 1);
  *(v7 + 1) = result;
  ++a1[6];
  return result;
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::append(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = (a1 + 16);
  if (*(a1 + 8))
  {
    v4 = (*v3 + 8);
  }

  else
  {
    v4 = (a1 + 16);
    v3 = (a1 + 8);
  }

  *v4 = result;
  *v3 = result;
  ++*(a1 + 24);
  return result;
}

void NLinkedList<NMap<NString,unsigned int>::HashItem>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283708A68;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283708A68;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::removeElement(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Error::chuck("NLinkedList::removeElement Attempted to remove NULL pointer list element\n", 0);
  }

  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = (a1 + 8);
  if (v3 == v5)
  {
    *v4 = 0;
    *(a1 + 16) = 0;
  }

  else if (v3 == a2)
  {
    *v4 = *(v3 + 8);
  }

  else if (v5 == a2)
  {
    do
    {
      v7 = v3;
      v3 = *(v3 + 8);
    }

    while (v3 != a2);
    *(v7 + 8) = 0;
    *(a1 + 16) = v7;
  }

  else
  {
    do
    {
      v6 = v3;
      v3 = *(v3 + 8);
    }

    while (v3 != a2);
    *(v6 + 8) = *(a2 + 8);
  }

  result = (*(*a1 + 72))(a1);
  --*(a1 + 24);
  return result;
}

uint64_t NArray<NLinkedList<NMap<NString,unsigned int>::HashItem>>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = *a3;
  if (v5 != *a3)
  {
    v7 = *(result + 8);
    if (v7)
    {
      v9 = *(v7 - 8);
      if (v9)
      {
        v10 = v7 + 32 * v9;
        do
        {
          v11 = v10 - 32;
          for (*(v10 - 32) = &unk_283708A68; ; (*(*(v10 - 32) + 72))(v10 - 32))
          {
            v12 = *(v10 - 24);
            if (!v12)
            {
              break;
            }

            *(v10 - 24) = *(v12 + 8);
          }

          *(v10 - 16) = 0;
          *(v10 - 8) = 0;
          v10 -= 32;
        }

        while (v11 != v7);
      }

      MEMORY[0x223DF1D00](v7 - 16, 0x10A1C80F4A7E088);
      v6 = *a3;
    }

    *(v4 + 16) = v6;
    operator new[]();
  }

  if (v5)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      result = (*(*(*(v4 + 8) + v13) + 24))(*(v4 + 8) + v13, a2 + v13);
      ++v14;
      v13 += 32;
    }

    while (v14 < *(v4 + 16));
  }

  return result;
}

void NArray<NLinkedList<NMap<NString,unsigned int>::HashItem>>::~NArray(void *a1)
{
  *a1 = &unk_283708A30;
  v1 = a1[1];
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = v1 + 32 * v2;
      do
      {
        v4 = v3 - 32;
        for (*(v3 - 32) = &unk_283708A68; ; (*(*(v3 - 32) + 72))(v3 - 32))
        {
          v5 = *(v3 - 24);
          if (!v5)
          {
            break;
          }

          *(v3 - 24) = *(v5 + 8);
        }

        *(v3 - 16) = 0;
        *(v3 - 8) = 0;
        v3 -= 32;
      }

      while (v4 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NLinkedList<NMap<NString,unsigned int>::HashItem>>::~NArray(void *result)
{
  *result = &unk_283708A30;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = v1 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_283708A68; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
    return v2;
  }

  return result;
}

{
  *result = &unk_283708A30;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = v1 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_283708A68; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
    return v2;
  }

  return result;
}

void NMap<NString,unsigned int>::~NMap(void *a1)
{
  *a1 = &unk_2837089B0;
  a1[1] = &unk_283708A30;
  v1 = a1[2];
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = v1 + 32 * v2;
      do
      {
        v4 = v3 - 32;
        for (*(v3 - 32) = &unk_283708A68; ; (*(*(v3 - 32) + 72))(v3 - 32))
        {
          v5 = *(v3 - 24);
          if (!v5)
          {
            break;
          }

          *(v3 - 24) = *(v5 + 8);
        }

        *(v3 - 16) = 0;
        *(v3 - 8) = 0;
        v3 -= 32;
      }

      while (v4 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
  }

  JUMPOUT(0x223DF1D20);
}

void *NMap<NString,unsigned int>::~NMap(void *result)
{
  *result = &unk_2837089B0;
  result[1] = &unk_283708A30;
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = v1 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_283708A68; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
    return v2;
  }

  return result;
}

void NPhoneHMMArray::NPhoneHMMArray(NPhoneHMMArray *this)
{
  *(this + 4) = 0;
  *this = &unk_283708908;
  *(this + 1) = 0;
  *(this + 4) = &unk_2837089D0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 3) = &unk_283708968;
}

{
  *(this + 4) = 0;
  *this = &unk_283708908;
  *(this + 1) = 0;
  *(this + 4) = &unk_2837089D0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 3) = &unk_283708968;
}

void NStringHash<unsigned int>::~NStringHash(void *a1)
{
  *a1 = &unk_2837089B0;
  a1[1] = &unk_283708A30;
  v1 = a1[2];
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = v1 + 32 * v2;
      do
      {
        v4 = v3 - 32;
        for (*(v3 - 32) = &unk_283708A68; ; (*(*(v3 - 32) + 72))(v3 - 32))
        {
          v5 = *(v3 - 24);
          if (!v5)
          {
            break;
          }

          *(v3 - 24) = *(v5 + 8);
        }

        *(v3 - 16) = 0;
        *(v3 - 8) = 0;
        v3 -= 32;
      }

      while (v4 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
  }

  JUMPOUT(0x223DF1D20);
}

void *NStringHash<unsigned int>::~NStringHash(void *result)
{
  *result = &unk_2837089B0;
  result[1] = &unk_283708A30;
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = v1 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_283708A68; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
    return v2;
  }

  return result;
}

void NHash<NMap<NString,unsigned int>::HashItem>::~NHash(void *a1)
{
  *a1 = &unk_283708A30;
  v1 = a1[1];
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = v1 + 32 * v2;
      do
      {
        v4 = v3 - 32;
        for (*(v3 - 32) = &unk_283708A68; ; (*(*(v3 - 32) + 72))(v3 - 32))
        {
          v5 = *(v3 - 24);
          if (!v5)
          {
            break;
          }

          *(v3 - 24) = *(v5 + 8);
        }

        *(v3 - 16) = 0;
        *(v3 - 8) = 0;
        v3 -= 32;
      }

      while (v4 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
  }

  JUMPOUT(0x223DF1D20);
}

void *NHash<NMap<NString,unsigned int>::HashItem>::~NHash(void *result)
{
  *result = &unk_283708A30;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = v1 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_283708A68; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
    return v2;
  }

  return result;
}

{
  *result = &unk_283708A30;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = v1 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_283708A68; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v1);
    }

    MEMORY[0x223DF1D00](v1 - 16, 0x10A1C80F4A7E088);
    return v2;
  }

  return result;
}

void *NAutoArray<NPhoneHMM>::~NAutoArray(void *result)
{
  *result = &unk_283708B08;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = (v1 + 48 * v4 - 48);
      v6 = -48 * v4;
      v7 = v5;
      do
      {
        *v5 = &unk_283708B40;
        v5[3] = &unk_28370A720;
        v8 = v5[5];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
        }

        *v5 = off_283708BA0;
        v9 = v5[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9 - 16, 0x1000C8000313F17);
        }

        v7 -= 6;
        v5 -= 6;
        v6 += 48;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x10B1C80FD921951);
    return v2;
  }

  return result;
}

{
  *result = &unk_283708B08;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = (v1 + 48 * v4 - 48);
      v6 = -48 * v4;
      v7 = v5;
      do
      {
        *v5 = &unk_283708B40;
        v5[3] = &unk_28370A720;
        v8 = v5[5];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
        }

        *v5 = off_283708BA0;
        v9 = v5[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9 - 16, 0x1000C8000313F17);
        }

        v7 -= 6;
        v5 -= 6;
        v6 += 48;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x10B1C80FD921951);
    return v2;
  }

  return result;
}

uint64_t NAutoArray<NPhoneHMM>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v4 = result;
  v5 = *a3;
  if (*(result + 20) < *a3)
  {
    v7 = *(result + 8);
    if (v7)
    {
      v8 = v7 - 16;
      v9 = *(v7 - 8);
      if (v9)
      {
        v10 = (v7 + 48 * v9 - 48);
        v11 = -48 * v9;
        v12 = v10;
        do
        {
          *v10 = &unk_283708B40;
          v10[3] = &unk_28370A720;
          v13 = v10[5];
          if (v13)
          {
            MEMORY[0x223DF1D00](v13, 0x1000C8077774924);
          }

          *v10 = off_283708BA0;
          v14 = v10[1];
          if (v14)
          {
            MEMORY[0x223DF1D00](v14 - 16, 0x1000C8000313F17);
          }

          v12 -= 6;
          v10 -= 6;
          v11 += 48;
        }

        while (v11);
      }

      MEMORY[0x223DF1D00](v8, 0x10B1C80FD921951);
      v5 = *a3;
    }

    *(v4 + 20) = v5;
    operator new[]();
  }

  *(result + 16) = v5;
  if (v5)
  {
    v15 = 0;
    do
    {
      v16 = *(v4 + 8);
      if (v16 != a2)
      {
        v17 = a2 + 48 * v15;
        v18 = v16 + 48 * v15;
        v19 = *(v17 + 16);
        if (*(v18 + 16) != v19)
        {
          v20 = *(v18 + 8);
          if (v20)
          {
            MEMORY[0x223DF1D00](v20 - 16, 0x1000C8000313F17);
            LODWORD(v19) = *(v17 + 16);
          }

          *(v18 + 16) = v19;
          operator new[]();
        }

        if (*(v18 + 16))
        {
          v21 = 0;
          do
          {
            *(*(v18 + 8) + 8 * v21) = *(*(v17 + 8) + 8 * v21);
            ++v21;
          }

          while (v21 < *(v18 + 16));
        }

        result = (*(*(v18 + 24) + 64))(v18 + 24, *(v17 + 40), v17 + 32);
      }

      ++v15;
    }

    while (v15 < *(v4 + 16));
  }

  return result;
}

void sub_223AB715C(_Unwind_Exception *a1)
{
  *(v4 + 16) = off_283708BA0;
  v6 = *(v4 + 24);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6 - 16, 0x1000C8000313F17);
  }

  if (v1 != 16)
  {
    v7 = (v4 - 32);
    v8 = -v3;
    do
    {
      NPhoneHMM::~NPhoneHMM(v7);
      v7 = (v9 - 48);
      v8 += 48;
    }

    while (v8);
  }

  MEMORY[0x223DF1D00](v2, 0x10B1C80FD921951);
  _Unwind_Resume(a1);
}

uint64_t NAutoArray<NPhoneHMM>::operator=(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v3 = a2 + 16;
  v4 = v5;
  v6 = *(a1 + 20);
  v7 = v5 >= v6;
  if (v5 <= v6)
  {
    *(a1 + 16) = v4;
    if (!v7)
    {
      operator new[]();
    }
  }

  else
  {
    (*(*a1 + 48))(a1, v3, (*(a1 + 24) * v4));
  }

  if (*(a1 + 16))
  {
    v8 = 0;
    do
    {
      v9 = *(a2 + 8);
      v10 = *(a1 + 8);
      if (v10 != v9)
      {
        v11 = v9 + 48 * v8;
        v12 = v10 + 48 * v8;
        v13 = *(v11 + 16);
        if (*(v12 + 16) != v13)
        {
          v14 = *(v12 + 8);
          if (v14)
          {
            MEMORY[0x223DF1D00](v14 - 16, 0x1000C8000313F17);
            LODWORD(v13) = *(v11 + 16);
          }

          *(v12 + 16) = v13;
          operator new[]();
        }

        if (*(v12 + 16))
        {
          v15 = 0;
          do
          {
            *(*(v12 + 8) + 8 * v15) = *(*(v11 + 8) + 8 * v15);
            ++v15;
          }

          while (v15 < *(v12 + 16));
        }

        (*(*(v12 + 24) + 64))(v12 + 24, *(v11 + 40), v11 + 32);
      }

      ++v8;
    }

    while (v8 < *(a1 + 16));
  }

  return a1;
}

void sub_223AB7548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  NPhoneHMM::~NPhoneHMM(va);
  _Unwind_Resume(a1);
}

void sub_223AB755C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12 - 16, v12);
  }

  _Unwind_Resume(exception_object);
}

void NAutoArray<NPhoneHMM>::~NAutoArray(void *a1)
{
  *a1 = &unk_283708B08;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 48 * v4 - 48);
      v6 = -48 * v4;
      v7 = v5;
      do
      {
        *v5 = &unk_283708B40;
        v5[3] = &unk_28370A720;
        v8 = v5[5];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
        }

        *v5 = off_283708BA0;
        v9 = v5[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9 - 16, 0x1000C8000313F17);
        }

        v7 -= 6;
        v5 -= 6;
        v6 += 48;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x10B1C80FD921951);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void NPhoneHMMArray::write(NPhoneHMMArray *this, const NString *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *__str = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223AB80EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a17)
  {
    MEMORY[0x223DF1D00](a17, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AB8164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a14)
  {
    _Unwind_Resume(a1);
  }

  (*(*a14 + 8))(a14);
  _Unwind_Resume(a1);
}

uint64_t NPhoneHMMArray::initReverseLookup(uint64_t this)
{
  if (!*(this + 52))
  {
    v1 = this;
    this = NHash<NMap<NString,unsigned int>::HashItem>::resize(this + 32, *(this + 16), 0);
    if (*(v1 + 16))
    {
      NMap<NString,unsigned int>::operator[](v1 + 24, *(v1 + 8) + 24);
    }
  }

  return this;
}

uint64_t NPhoneHMMArray::endReverseLookup(uint64_t this)
{
  if (*(this + 52))
  {
    v1 = this;
    v2 = 0;
    v3 = 0;
    do
    {
      (*(*(*(v1 + 40) + v2) + 56))(*(v1 + 40) + v2);
      ++v3;
      v2 += 32;
    }

    while (v3 < *(v1 + 52));
    *(v1 + 56) = 0;

    return NHash<NMap<NString,unsigned int>::HashItem>::resize(v1 + 32, 0, 1);
  }

  return this;
}

void NPipeFile::write(NPipeFile *this, const NString *a2)
{
  if ((*(*this + 32))(this, a2))
  {
    if (*(this + 12) == 1)
    {
      Error::chuck("NPipeFile::write() - Not available because compiled without support", v3);
    }

    Error::chuck("NPipeFile::write() - pipe %s not opened in write mode", v3, *(this + 3));
  }

  Error::chuck("NPipeFile::write() - pipe %s is not open", v3, *(this + 3));
}

void NPipeFile::readString(NPipeFile *this)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 12))
    {
      Error::chuck("NPipeFile::readString() - Not available because compiled without support", v2);
    }

    Error::chuck("NPipeFile::readString() - pipe %s not opened in read mode", v2, *(this + 3));
  }

  Error::chuck("NPipeFile::readString() - pipe %s is not open", v2, *(this + 3));
}

void NPipeFile::readLine(NPipeFile *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*this + 32))(this, a2))
  {
    if (!*(this + 12))
    {
      *a3 = &unk_28370A720;
      *(a3 + 8) = 0;
      operator new[]();
    }

    Error::chuck("NPipeFile::readLine() - pipe %s not opened in read mode", v5, *(this + 3));
  }

  Error::chuck("NPipeFile::readLine() - pipe %s is not open", v5, *(this + 3));
}

void sub_223AB86CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    v15 = a1;
    MEMORY[0x223DF1D00](a12, v13);
    a1 = v15;
  }

  *v12 = v14;
  v16 = v12[2];
  if (v16)
  {
    v17 = a1;
    MEMORY[0x223DF1D00](v16, v13);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void NPipeFile::read(NPipeFile *this, const unsigned int *a2, NString *a3)
{
  if ((*(*this + 32))(this, a2, a3))
  {
    if (!*(this + 12))
    {
      if (*a2 == -1)
      {
        Error::chuck("NFile::read() - attempting impossibly long read in pipe %s", v5, *(this + 3));
      }

      Error::chuck("NPipeFile::read() - Not available because compiled without support", v5);
    }

    Error::chuck("NPipeFile::read() - pipe %s not opened in read mode", v5, *(this + 3));
  }

  Error::chuck("NPipeFile::read() - pipe %s is not open", v5, *(this + 3));
}

void NPipeFile::read(NPipeFile *this, const unsigned int *a2)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 12))
    {
      if (*a2 == -1)
      {
        Error::chuck("NFile::read() - attempting impossibly long read in pipe %s", v4, *(this + 3));
      }

      operator new[]();
    }

    Error::chuck("NPipeFile::read() - pipe %s not opened in read mode", v4, *(this + 3));
  }

  Error::chuck("NPipeFile::read() - pipe %s is not open", v4, *(this + 3));
}

void sub_223AB88A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    v13 = a1;
    MEMORY[0x223DF1D00](a12, v12);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

void NPipeFile::read(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 0;
  operator new[]();
}

void sub_223AB8A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  *v12 = v13;
  v15 = v12[2];
  if (v15)
  {
    MEMORY[0x223DF1D00](v15, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NPipeFile::good(NPipeFile *this)
{
  if ((*(*this + 40))(this))
  {
    return 0;
  }

  v3 = *(*this + 32);

  return v3(this);
}

uint64_t NPipeFile::close(NPipeFile *this, const char *a2)
{
  if (*(this + 52) == 1)
  {
    Error::chuck("NPipeFile::close() - Not available because compiled without support", a2);
  }

  v4 = 0;
  v2 = this + 8;
  result = (*(*(this + 1) + 64))(this + 8, "", &v4);
  v2[44] = 0;
  return result;
}

void NPipeFile::open(NPipeFile *this, const NString *a2, const NString *a3)
{
  (*(*this + 24))(this);
  v7 = *(a3 + 2);
  if (*(a3 + 2) == 1)
  {
    if (*v7 == 114)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = *(a3 + 2);
    if (*v7 == 119)
    {
      v8 = 1;
LABEL_6:
      *(this + 12) = v8;
      *(this + 5) = 0;
      Error::chuck("NPipeFile::open() - Can't open pipe '%s' because compiled without support", v6, *(a2 + 2));
    }
  }

  Error::chuck("NPipeFile::open() - unrecognized file mode %s", v6, v7);
}

void NPipeFile::~NPipeFile(NPipeFile *this, const char *a2)
{
  *this = &unk_283708C38;
  if (*(this + 52) != 1)
  {
    v3 = *(this + 1);
    v5 = 0;
    (*(v3 + 64))(this + 8, "", &v5);
    *(this + 52) = 0;
    *this = &unk_28370A250;
    *(this + 1) = &unk_28370A720;
    v4 = *(this + 3);
    if (v4)
    {
      MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
    }

    JUMPOUT(0x223DF1D20);
  }

  Error::chuck("NPipeFile::close() - Not available because compiled without support", a2);
}

{
  *this = &unk_283708C38;
  if (*(this + 52) == 1)
  {
    Error::chuck("NPipeFile::close() - Not available because compiled without support", a2);
  }

  v3 = *(this + 1);
  v5 = 0;
  (*(v3 + 64))(this + 8, "", &v5);
  *(this + 52) = 0;
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }
}

{
  *this = &unk_283708C38;
  if (*(this + 52) == 1)
  {
    Error::chuck("NPipeFile::close() - Not available because compiled without support", a2);
  }

  v3 = *(this + 1);
  v5 = 0;
  (*(v3 + 64))(this + 8, "", &v5);
  *(this + 52) = 0;
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }
}

void NPipeFile::NPipeFile(NPipeFile *this)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void NPipeFile::NPipeFile(NPipeFile *this, const NString *a2, const NString *a3)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void sub_223AB908C(_Unwind_Exception *a1)
{
  *v2 = v3;
  v2[1] = v4;
  v5 = v2[3];
  if (v5)
  {
    v6 = a1;
    MEMORY[0x223DF1D00](v5, v1);
    a1 = v6;
  }

  _Unwind_Resume(a1);
}

void sub_223AB917C(_Unwind_Exception *a1)
{
  *v2 = v3;
  v2[1] = v4;
  v5 = v2[3];
  if (v5)
  {
    v6 = a1;
    MEMORY[0x223DF1D00](v5, v1);
    a1 = v6;
  }

  _Unwind_Resume(a1);
}

uint64_t NFloatDistribution::setComponentMask(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(result + 16) + 48 * *a2;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 8);
    v6 = *(a3 + 8);
    if (v4 == 1)
    {
      v7 = 0;
LABEL_7:
      v11 = v4 - v7;
      v12 = (v5 + 4 * v7);
      do
      {
        v13 = *v12++;
        *(v6 + v13) = 1;
        --v11;
      }

      while (v11);
      return result;
    }

    v7 = v4 & 0xFFFFFFFE;
    v8 = (v5 + 4);
    v9 = v7;
    do
    {
      v10 = *v8;
      *(v6 + *(v8 - 1)) = 1;
      *(v6 + v10) = 1;
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v4)
    {
      goto LABEL_7;
    }
  }

  return result;
}

float NFloatDistribution::componentScore(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 40) + 56 * *a2;
  v4 = *(v3 + 48);
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = *(a3 + 8);
    v7 = *(v3 + 8);
    v8 = *(v3 + 32);
    if (v5 < 8)
    {
      v9 = 0;
LABEL_7:
      v18 = v5 - v9;
      v19 = v9;
      v20 = &v8->f32[v19];
      v21 = &v7->f32[v19];
      v22 = &v6->f32[v19];
      do
      {
        v23 = *v22++;
        v24 = v23;
        v25 = *v21++;
        v26 = (v24 - v25) * (v24 - v25);
        v27 = *v20++;
        v4 = v4 + (v26 * v27);
        --v18;
      }

      while (v18);
      return v4 * -0.5;
    }

    v9 = v5 & 0xFFFFFFF8;
    v10 = v8 + 1;
    v11 = v7 + 1;
    v12 = v6 + 1;
    v13 = v9;
    do
    {
      v14 = vsubq_f32(v12[-1], v11[-1]);
      v15 = vsubq_f32(*v12, *v11);
      v16 = vmulq_f32(vmulq_f32(v14, v14), v10[-1]);
      v17 = vmulq_f32(vmulq_f32(v15, v15), *v10);
      v4 = (((((((v4 + v16.f32[0]) + v16.f32[1]) + v16.f32[2]) + v16.f32[3]) + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3];
      v10 += 2;
      v11 += 2;
      v12 += 2;
      v13 -= 8;
    }

    while (v13);
    if (v9 != v5)
    {
      goto LABEL_7;
    }
  }

  return v4 * -0.5;
}

void NFloatDistribution::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = v4 + 48 * *a2;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v5 + 8);
    v9 = *(a3 + 8);
    v10 = v4 + 48 * *a2;
    v11 = *(a4 + 8);
    v12 = 4 * v6;
    v13 = 0.0;
    do
    {
      v14 = *(v8 + v7);
      if (*(v9 + v14) == 1)
      {
        v13 = v13 + expf(*(*(v10 + 32) + v7) + *(v11 + 4 * v14));
      }

      v7 += 4;
    }

    while (v12 != v7);
    if (v13 != 0.0)
    {
      log(v13);
    }
  }
}

uint64_t NDistribution::scoreAll(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    do
    {
      v7 = (*(*a1 + 64))(a1, &v10, a2);
      v8 = v10;
      *(*(a3 + 8) + 4 * v10) = v7;
      v9 = v8 + 1;
      v10 = v8 + 1;
      result = (*(*a1 + 16))(a1);
    }

    while (v9 < result);
  }

  return result;
}

void NFloatDistribution::~NFloatDistribution(NFloatDistribution *this)
{
  *this = &unk_283708CE0;
  NGaussianMixtureModels::~NGaussianMixtureModels((this + 8));

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283708CE0;
  NGaussianMixtureModels::~NGaussianMixtureModels((this + 8));
}

{
  *this = &unk_283708CE0;
  NGaussianMixtureModels::~NGaussianMixtureModels((this + 8));
}

void NDistributionLoader::~NDistributionLoader(NDistributionLoader *this)
{
  *this = &unk_283708D98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(*(this + 1));
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283708D98;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_283708D98;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

void NFloatDistribution::NFloatDistribution(NFloatDistribution *this)
{
  *this = &unk_283708CE0;
  *(this + 6) = 0;
  *(this + 1) = &unk_2837087A0;
  *(this + 2) = 0;
  *(this + 4) = &unk_283708800;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 8) = &unk_28370A720;
  *(this + 18) = 0;
  operator new[]();
}

{
  *this = &unk_283708CE0;
  *(this + 6) = 0;
  *(this + 1) = &unk_2837087A0;
  *(this + 2) = 0;
  *(this + 4) = &unk_283708800;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 8) = &unk_28370A720;
  *(this + 18) = 0;
  operator new[]();
}

void sub_223AB98F8(_Unwind_Exception *a1)
{
  NArray<NGaussian>::~NArray(v2);
  NArray<NGaussianMixture>::~NArray(v1);
  _Unwind_Resume(a1);
}

void sub_223AB99EC(_Unwind_Exception *a1)
{
  NArray<NGaussian>::~NArray(v2);
  NArray<NGaussianMixture>::~NArray(v1);
  _Unwind_Resume(a1);
}

void NDistributionLoader::NDistributionLoader(NDistributionLoader *this)
{
  *this = &unk_283708D98;
  *(this + 1) = 0;
}

{
  *this = &unk_283708D98;
  *(this + 1) = 0;
}

void NDistributionLoader::read(NDistributionLoader *this, const NString *a2, const NString *a3)
{
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 8))(v4, a2, a3);
  }

  *(this + 1) = 0;
  operator new[]();
}

void sub_223ABB698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18[34] = v22;
  v25 = v18[35];
  if (v25)
  {
    MEMORY[0x223DF1D00](v25, 0x50C80EE9192B6);
  }

  v18[31] = v21;
  v26 = v18[33];
  if (v26)
  {
    MEMORY[0x223DF1D00](v26, v16);
  }

  NGaussianFixedPointScales::~NGaussianFixedPointScales(v20);
  v18[1] = v19;
  v27 = v18[3];
  if (v27)
  {
    MEMORY[0x223DF1D00](v27, v16);
  }

  MEMORY[0x223DF1D20](v18, 0x10D1C4027B8FD50);
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, v16);
  }

  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader(&a14);
  *(v23 - 152) = &unk_28370A720;
  v28 = *(v23 - 136);
  if (v28)
  {
    MEMORY[0x223DF1D00](v28, v16);
  }

  *(v23 - 128) = &unk_28370AA90;
  v29 = *(v23 - 120);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  *(v23 - 112) = v17;
  v30 = *(v23 - 96);
  if (v30)
  {
    MEMORY[0x223DF1D00](v30, v16);
  }

  _Unwind_Resume(a1);
}

void NFixedDummyDistribution::read(NFixedDummyDistribution *this, const NString *a2)
{
  *(this + 1) = 0;
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223ABC4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27)
  {
    MEMORY[0x223DF1D00](a27, 0x1000C8077774924);
  }

  *(v27 - 136) = &unk_28370A720;
  v29 = *(v27 - 120);
  if (v29)
  {
    MEMORY[0x223DF1D00](v29, 0x1000C8077774924);
  }

  *(v27 - 112) = &unk_28370AA90;
  v30 = *(v27 - 104);
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

void NFixedDummyDistribution::~NFixedDummyDistribution(NFixedDummyDistribution *this)
{
  *this = &unk_283708EB0;
  NFixedPointScales::~NFixedPointScales((this + 16));

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283708EB0;
  NFixedPointScales::~NFixedPointScales((this + 16));
}

void NDummyDistribution::read(NDummyDistribution *this, const NString *a2)
{
  *(this + 1) = 0;
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223ABD008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27)
  {
    MEMORY[0x223DF1D00](a27, 0x1000C8077774924);
  }

  *(v27 - 136) = &unk_28370A720;
  v29 = *(v27 - 120);
  if (v29)
  {
    MEMORY[0x223DF1D00](v29, 0x1000C8077774924);
  }

  *(v27 - 112) = &unk_28370AA90;
  v30 = *(v27 - 104);
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NArray<unsigned int const*>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<unsigned int const*>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x50C80EE9192B6);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = *(result + 8);
    v9 = v4;
    if (v4 < 4 || (v8 - a2) <= 0x1F)
    {
      v11 = 0;
LABEL_14:
      v16 = v9 - v11;
      v17 = 8 * v11;
      v18 = (v8 + v17);
      v19 = (a2 + v17);
      do
      {
        v20 = *v19++;
        *v18++ = v20;
        --v16;
      }

      while (v16);
      return result;
    }

    v11 = v4 & 0xFFFFFFFC;
    v12 = (v8 + 16);
    v13 = (a2 + 16);
    v14 = v9 & 0xFFFFFFFC;
    do
    {
      v15 = *v13;
      *(v12 - 1) = *(v13 - 1);
      *v12 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v11 != v9)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t NArray<unsigned int const*>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    v4 = *(a2 + 16);
    if (v3 != v4)
    {
      if (*(result + 8))
      {
        v5 = result;
        MEMORY[0x223DF1D00](*(result + 8), 0x50C80EE9192B6);
        result = v5;
        v4 = *(a2 + 16);
      }

      *(result + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v6 = 0;
      v7 = *(a2 + 8);
      v8 = *(result + 8);
      v9 = v3;
      if (v3 < 4)
      {
        goto LABEL_12;
      }

      if ((v8 - v7) < 0x20)
      {
        goto LABEL_12;
      }

      v6 = v3 & 0xFFFFFFFC;
      v10 = (v8 + 16);
      v11 = (v7 + 16);
      v12 = v9 & 0xFFFFFFFC;
      do
      {
        v13 = *v11;
        *(v10 - 1) = *(v11 - 1);
        *v10 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v6 != v9)
      {
LABEL_12:
        v14 = v9 - v6;
        v15 = 8 * v6;
        v16 = (v8 + v15);
        v17 = (v7 + v15);
        do
        {
          v18 = *v17++;
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }
  }

  return result;
}

void NArray<unsigned int const*>::~NArray(void *a1)
{
  *a1 = &unk_2837092A0;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x50C80EE9192B6);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<unsigned int const*>::~NArray(void *result)
{
  *result = &unk_2837092A0;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x50C80EE9192B6);
    return v1;
  }

  return result;
}

uint64_t NFastFixedDistribution<signed char,int,unsigned int,unsigned short>::setComponentMask(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(*(result + 280) + 8 * *a2);
  v4 = *v3;
  if (v4)
  {
    v5 = v3 + 1;
    v6 = *(a3 + 8);
    if (v4 == 1)
    {
      LODWORD(v7) = 0;
      goto LABEL_8;
    }

    v7 = v4 & 0xFFFFFFFE;
    v8 = v3 + 3;
    v9 = v7;
    do
    {
      v10 = *(v8 - 2);
      v11 = *v8;
      v8 += 4;
      *(v6 + v10) = 1;
      *(v6 + v11) = 1;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v4)
    {
      v5 += 2 * (v4 & 0xFFFFFFFE);
LABEL_8:
      v12 = v4 - v7;
      do
      {
        v13 = *v5;
        v5 += 2;
        *(v6 + v13) = 1;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned short>::componentScore(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223ABD9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

float NFastFixedDistribution<signed char,int,unsigned int,unsigned short>::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 280) + 8 * *a2);
  v6 = *v5;
  if (*v5)
  {
    v9 = v5 + 2;
    v10 = -1073741823;
    do
    {
      v11 = *(v9 - 1);
      if (*(*(a3 + 8) + v11) == 1)
      {
        v12 = rintf(*(*(a4 + 8) + 4 * v11) * *((*(*a1 + 136))(a1) + 40)) - *v9;
        if (v12 >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v12 > v10)
        {
          v10 = v12;
        }

        if (v13 != -1073741823)
        {
          v14 = v10 - v13;
          if (v14 <= *(a1 + 500))
          {
            v10 += *(*(a1 + 480) + 4 * (v14 >> *(a1 + 496)));
          }
        }
      }

      v9 += 2;
      --v6;
    }

    while (v6);
    v15 = v10;
  }

  else
  {
    v15 = -1073700000.0;
  }

  return *((*(*a1 + 136))(a1) + 44) * v15;
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned short>::score(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223ABDE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned short>::read()
{
  v2 = *MEMORY[0x277D85DE8];
  *__str = &unk_28370A720;
  LODWORD(v1) = 1;
  operator new[]();
}

void sub_223ABF720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t (**a40)(), uint64_t a41)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a16;
  if (a39)
  {
    MEMORY[0x223DF1D00](a39, 0x1000C8077774924);
  }

  a40 = off_283709B60;
  if (a41)
  {
    MEMORY[0x223DF1D00](a41, 0x1000C8052888210);
  }

  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  (*(*a22 + 8))(a22);
  _Unwind_Resume(a1);
}

uint64_t NFastFixedGaussians<signed char,int,unsigned short>::read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _BYTE *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  NGaussianFixedPointScales::operator=(a1 + 32, a4);
  v13 = *a5;
  v14 = 2 * *(a4 + 184) + ((-2 * *(a4 + 184)) & 2) + 8;
  *(a1 + 232) = v14;
  *(a1 + 236) = v13;
  v18 = *a5 * v14;
  if (*a6 != 1)
  {
    operator new[]();
  }

  v15 = *(a3 + 8);
  if (!v15)
  {
    Error::chuck("NSmartPointer::checkptr() - pointer unset", v12);
  }

  result = (*(*v15 + 72))(v15, &v18, a1);
  *(a1 + 24) = *(a1 + 16);
  if (result != v18)
  {
    Error::chuck("NFastFixedGaussians::read() - not enough gaussian data in file %s (%d out of %d bytes)", v17, *(a2 + 16), result, v18);
  }

  return result;
}

void sub_223AC0A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a15;
  if (!a39)
  {
    _Unwind_Resume(a1);
  }

  MEMORY[0x223DF1D00](a39, v39);
  _Unwind_Resume(a1);
}

uint64_t NAutoArray<unsigned int>::resize(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v5 = *a2;
  if (*a2 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a2;
  }

  if (v6)
  {
    operator new[]();
  }

  v7 = *(a1 + 16);
  if (v5 < v7)
  {
    *(a1 + 16) = v5;
    v7 = v5;
  }

  result = *(a1 + 8);
  if (v7)
  {
    v9 = 0;
    v10 = v7;
    if (v7 < 8)
    {
      goto LABEL_14;
    }

    if (-result < 0x20)
    {
      goto LABEL_14;
    }

    v9 = v7 & 0xFFFFFFF8;
    v11 = 16;
    v12 = (result + 16);
    v13 = v10 & 0xFFFFFFF8;
    do
    {
      v14 = *v12;
      *(v11 - 16) = *(v12 - 1);
      *v11 = v14;
      v11 += 32;
      v12 += 2;
      v13 -= 8;
    }

    while (v13);
    if (v9 != v10)
    {
LABEL_14:
      v15 = v10 - v9;
      v16 = (4 * v9);
      v17 = (v16 + result);
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        --v15;
      }

      while (v15);
    }

    goto LABEL_18;
  }

  if (result)
  {
LABEL_18:
    result = MEMORY[0x223DF1D00]();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  *(a1 + 20) = 0;
  return result;
}

uint64_t NAutoArray<unsigned int>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *a3;
  if (*(result + 20) < *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
      v4 = *a3;
    }

    *(v3 + 20) = v4;
    operator new[]();
  }

  *(result + 16) = v4;
  if (v4)
  {
    v7 = 0;
    v8 = *(result + 8);
    do
    {
      *(v8 + 4 * v7) = *(a2 + 4 * v7);
      ++v7;
    }

    while (v7 < *(result + 16));
  }

  return result;
}

uint64_t NAutoArray<unsigned int>::operator=(uint64_t result, uint64_t a2)
{
  v5 = *(a2 + 16);
  v3 = a2 + 16;
  v4 = v5;
  v6 = *(result + 20);
  v7 = v5 >= v6;
  if (v5 <= v6)
  {
    *(result + 16) = v4;
    if (!v7)
    {
      v9 = *(result + 8);
      do
      {
        *(v9 + 4 * v4++) = 0;
      }

      while (v4 < *(result + 20));
    }
  }

  else
  {
    v8 = result;
    (*(*result + 48))(result, v3, (*(result + 24) * v4));
    result = v8;
  }

  if (*(result + 16))
  {
    v10 = 0;
    v11 = *(a2 + 8);
    v12 = *(result + 8);
    do
    {
      *(v12 + 4 * v10) = *(v11 + 4 * v10);
      ++v10;
    }

    while (v10 < *(result + 16));
  }

  return result;
}

void NAutoArray<unsigned int>::~NAutoArray(void *a1)
{
  *a1 = off_283709B60;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NAutoArray<unsigned int>::~NAutoArray(void *result)
{
  *result = off_283709B60;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C8052888210);
    return v1;
  }

  return result;
}

uint64_t NGaussianFixedPointScales::operator=(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 8) = *(a2 + 8);
  if (result == a2)
  {
    *(result + 40) = *(a2 + 40);
    *(result + 120) = *(a2 + 120);
    v71 = *(a2 + 124);
    *(result + 132) = *(a2 + 132);
    *(result + 124) = v71;
LABEL_62:
    *(result + 160) = *(a2 + 160);
    goto LABEL_63;
  }

  v4 = *(result + 32);
  v5 = *(a2 + 32);
  if (v4 != v5)
  {
    v6 = *(result + 24);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
      v5 = *(a2 + 32);
    }

    v3[8] = v5;
    operator new[]();
  }

  if (v4)
  {
    v7 = 0;
    v8 = *(a2 + 24);
    v9 = *(result + 24);
    do
    {
      *(v9 + 4 * v7) = *(v8 + 4 * v7);
      ++v7;
    }

    while (v7 < *(result + 32));
  }

  *(result + 40) = *(a2 + 40);
  v10 = *(result + 64);
  v11 = *(a2 + 64);
  if (v10 != v11)
  {
    v12 = *(result + 56);
    if (v12)
    {
      MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
      v11 = *(a2 + 64);
    }

    v3[16] = v11;
    operator new[]();
  }

  if (v10)
  {
    v13 = 0;
    v14 = *(a2 + 56);
    v15 = *(result + 56);
    v16 = v10;
    if (v10 < 8)
    {
      goto LABEL_19;
    }

    if ((v15 - v14) < 0x20)
    {
      goto LABEL_19;
    }

    v13 = v10 & 0xFFFFFFF8;
    v17 = (v15 + 16);
    v18 = (v14 + 16);
    v19 = v16 & 0xFFFFFFF8;
    do
    {
      v20 = *v18;
      *(v17 - 1) = *(v18 - 1);
      *v17 = v20;
      v17 += 2;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v13 != v16)
    {
LABEL_19:
      v21 = v16 - v13;
      v22 = 4 * v13;
      v23 = (v15 + v22);
      v24 = (v14 + v22);
      do
      {
        v25 = *v24++;
        *v23++ = v25;
        --v21;
      }

      while (v21);
    }
  }

  v26 = *(result + 88);
  v27 = *(a2 + 88);
  if (v26 != v27)
  {
    v28 = *(result + 80);
    if (v28)
    {
      MEMORY[0x223DF1D00](v28, 0x1000C8052888210);
      v27 = *(a2 + 88);
    }

    v3[22] = v27;
    operator new[]();
  }

  if (v26)
  {
    v29 = 0;
    v30 = *(a2 + 80);
    v31 = *(result + 80);
    v32 = v26;
    if (v26 < 8)
    {
      goto LABEL_31;
    }

    if ((v31 - v30) < 0x20)
    {
      goto LABEL_31;
    }

    v29 = v26 & 0xFFFFFFF8;
    v33 = (v31 + 16);
    v34 = (v30 + 16);
    v35 = v32 & 0xFFFFFFF8;
    do
    {
      v36 = *v34;
      *(v33 - 1) = *(v34 - 1);
      *v33 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 8;
    }

    while (v35);
    if (v29 != v32)
    {
LABEL_31:
      v37 = v32 - v29;
      v38 = 4 * v29;
      v39 = (v31 + v38);
      v40 = (v30 + v38);
      do
      {
        v41 = *v40++;
        *v39++ = v41;
        --v37;
      }

      while (v37);
    }
  }

  v42 = *(result + 112);
  v43 = *(a2 + 112);
  if (v42 != v43)
  {
    v44 = *(result + 104);
    if (v44)
    {
      MEMORY[0x223DF1D00](v44, 0x1000C8052888210);
      v43 = *(a2 + 112);
    }

    v3[28] = v43;
    operator new[]();
  }

  if (v42)
  {
    v45 = 0;
    v46 = *(a2 + 104);
    v47 = *(result + 104);
    v48 = v42;
    if (v42 < 8)
    {
      goto LABEL_43;
    }

    if ((v47 - v46) < 0x20)
    {
      goto LABEL_43;
    }

    v45 = v42 & 0xFFFFFFF8;
    v49 = (v47 + 16);
    v50 = (v46 + 16);
    v51 = v48 & 0xFFFFFFF8;
    do
    {
      v52 = *v50;
      *(v49 - 1) = *(v50 - 1);
      *v49 = v52;
      v49 += 2;
      v50 += 2;
      v51 -= 8;
    }

    while (v51);
    if (v45 != v48)
    {
LABEL_43:
      v53 = v48 - v45;
      v54 = 4 * v45;
      v55 = (v47 + v54);
      v56 = (v46 + v54);
      do
      {
        v57 = *v56++;
        *v55++ = v57;
        --v53;
      }

      while (v53);
    }
  }

  *(result + 120) = *(a2 + 120);
  v58 = *(a2 + 124);
  *(result + 132) = *(a2 + 132);
  *(result + 124) = v58;
  if (result == a2)
  {
    goto LABEL_62;
  }

  v59 = *(result + 152);
  v60 = *(a2 + 152);
  if (v59 != v60)
  {
    v61 = *(result + 144);
    if (v61)
    {
      MEMORY[0x223DF1D00](v61, 0x1000C8052888210);
      v60 = *(a2 + 152);
    }

    v3[38] = v60;
    operator new[]();
  }

  if (v59)
  {
    v62 = 0;
    v63 = *(a2 + 144);
    v64 = *(result + 144);
    do
    {
      *(v64 + 4 * v62) = *(v63 + 4 * v62);
      ++v62;
    }

    while (v62 < *(result + 152));
  }

  *(result + 160) = *(a2 + 160);
  v65 = *(result + 184);
  v66 = *(a2 + 184);
  if (v65 != v66)
  {
    v67 = *(result + 176);
    if (v67)
    {
      MEMORY[0x223DF1D00](v67, 0x1000C8052888210);
      v66 = *(a2 + 184);
    }

    v3[46] = v66;
    operator new[]();
  }

  if (v65)
  {
    v68 = 0;
    v69 = *(a2 + 176);
    v70 = *(result + 176);
    do
    {
      *(v70 + 4 * v68) = *(v69 + 4 * v68);
      ++v68;
    }

    while (v68 < *(result + 184));
  }

LABEL_63:
  *(result + 192) = *(a2 + 192);
  return result;
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned short>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_2837095B8;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_2837092A0;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

void *NFastFixedDistribution<signed char,int,unsigned int,unsigned short>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_2837095B8;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_2837092A0;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  return a1;
}

uint64_t NArray<unsigned short const*>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<unsigned short const*>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x50C80EE9192B6);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = *(result + 8);
    v9 = v4;
    if (v4 < 4 || (v8 - a2) <= 0x1F)
    {
      v11 = 0;
LABEL_14:
      v16 = v9 - v11;
      v17 = 8 * v11;
      v18 = (v8 + v17);
      v19 = (a2 + v17);
      do
      {
        v20 = *v19++;
        *v18++ = v20;
        --v16;
      }

      while (v16);
      return result;
    }

    v11 = v4 & 0xFFFFFFFC;
    v12 = (v8 + 16);
    v13 = (a2 + 16);
    v14 = v9 & 0xFFFFFFFC;
    do
    {
      v15 = *v13;
      *(v12 - 1) = *(v13 - 1);
      *v12 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v11 != v9)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t NArray<unsigned short const*>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    v4 = *(a2 + 16);
    if (v3 != v4)
    {
      if (*(result + 8))
      {
        v5 = result;
        MEMORY[0x223DF1D00](*(result + 8), 0x50C80EE9192B6);
        result = v5;
        v4 = *(a2 + 16);
      }

      *(result + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v6 = 0;
      v7 = *(a2 + 8);
      v8 = *(result + 8);
      v9 = v3;
      if (v3 < 4)
      {
        goto LABEL_12;
      }

      if ((v8 - v7) < 0x20)
      {
        goto LABEL_12;
      }

      v6 = v3 & 0xFFFFFFFC;
      v10 = (v8 + 16);
      v11 = (v7 + 16);
      v12 = v9 & 0xFFFFFFFC;
      do
      {
        v13 = *v11;
        *(v10 - 1) = *(v11 - 1);
        *v10 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v6 != v9)
      {
LABEL_12:
        v14 = v9 - v6;
        v15 = 8 * v6;
        v16 = (v8 + v15);
        v17 = (v7 + v15);
        do
        {
          v18 = *v17++;
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }
  }

  return result;
}

void NArray<unsigned short const*>::~NArray(void *a1)
{
  *a1 = &unk_283709098;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x50C80EE9192B6);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<unsigned short const*>::~NArray(void *result)
{
  *result = &unk_283709098;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x50C80EE9192B6);
    return v1;
  }

  return result;
}

uint64_t NFastFixedDistribution<signed char,int,unsigned short,unsigned short>::setComponentMask(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(*(result + 280) + 8 * *a2);
  v4 = *v3;
  if (*v3)
  {
    v5 = v3 + 1;
    v6 = *(a3 + 8);
    if (v4 == 1)
    {
      LODWORD(v7) = 0;
      goto LABEL_8;
    }

    v7 = v4 & 0xFFFE;
    v8 = v3 + 3;
    v9 = v7;
    do
    {
      v10 = *(v8 - 2);
      v11 = *v8;
      v8 += 4;
      *(v6 + v10) = 1;
      *(v6 + v11) = 1;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v4)
    {
      v5 += 2 * (v4 & 0xFFFE);
LABEL_8:
      v12 = v4 - v7;
      do
      {
        v13 = *v5;
        v5 += 2;
        *(v6 + v13) = 1;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned short>::componentScore(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223AC1ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

float NFastFixedDistribution<signed char,int,unsigned short,unsigned short>::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 280) + 8 * *a2);
  v6 = *v5;
  if (*v5)
  {
    v9 = v5 + 2;
    v10 = -1073741823;
    do
    {
      v11 = *(v9 - 1);
      if (*(*(a3 + 8) + v11) == 1)
      {
        v12 = rintf(*(*(a4 + 8) + 4 * v11) * *((*(*a1 + 136))(a1) + 40)) - *v9;
        if (v12 >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v12 > v10)
        {
          v10 = v12;
        }

        if (v13 != -1073741823)
        {
          v14 = v10 - v13;
          if (v14 <= *(a1 + 500))
          {
            v10 += *(*(a1 + 480) + 4 * (v14 >> *(a1 + 496)));
          }
        }
      }

      v9 += 2;
      --v6;
    }

    while (v6);
    v15 = v10;
  }

  else
  {
    v15 = -1073700000.0;
  }

  return *((*(*a1 + 136))(a1) + 44) * v15;
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned short>::score(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223AC2344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned short>::read()
{
  v2 = *MEMORY[0x277D85DE8];
  *__str = &unk_28370A720;
  LODWORD(v1) = 1;
  operator new[]();
}

void sub_223AC3C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a16;
  if (a39)
  {
    MEMORY[0x223DF1D00](a39, 0x1000C8077774924);
  }

  a40 = &unk_283709150;
  if (a41)
  {
    MEMORY[0x223DF1D00](a41, 0x1000C80BDFB0063);
  }

  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  (*(*a22 + 8))(a22);
  _Unwind_Resume(a1);
}

uint64_t NArray<unsigned short>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<unsigned short>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C80BDFB0063);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = *(result + 8);
    v9 = v4;
    if (v4 < 4 || (v8 - a2) <= 0x1F)
    {
      v11 = 0;
      goto LABEL_20;
    }

    if (v4 >= 0x10)
    {
      v11 = v4 & 0xFFFFFFF0;
      v12 = (v8 + 16);
      v13 = (a2 + 16);
      v14 = v9 & 0xFFFFFFF0;
      do
      {
        v15 = *v13;
        *(v12 - 1) = *(v13 - 1);
        *v12 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 16;
      }

      while (v14);
      if (v11 == v9)
      {
        return result;
      }

      if ((v9 & 0xC) == 0)
      {
LABEL_20:
        v22 = v9 - v11;
        v23 = 2 * v11;
        v24 = (v8 + v23);
        v25 = (a2 + v23);
        do
        {
          v26 = *v25++;
          *v24++ = v26;
          --v22;
        }

        while (v22);
        return result;
      }
    }

    else
    {
      v11 = 0;
    }

    v16 = v11;
    v11 = v9 & 0xFFFFFFFC;
    v17 = v16 - v11;
    v18 = 2 * v16;
    v19 = (v8 + 2 * v16);
    v20 = (a2 + v18);
    do
    {
      v21 = *v20++;
      *v19++ = v21;
      v17 += 4;
    }

    while (v17);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t NArray<unsigned short>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    v4 = *(a2 + 16);
    if (v3 != v4)
    {
      if (*(result + 8))
      {
        v5 = result;
        MEMORY[0x223DF1D00](*(result + 8), 0x1000C80BDFB0063);
        result = v5;
        v4 = *(a2 + 16);
      }

      *(result + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v6 = 0;
      v7 = *(a2 + 8);
      v8 = *(result + 8);
      v9 = v3;
      if (v3 < 4 || (v8 - v7) < 0x20)
      {
        goto LABEL_18;
      }

      if (v3 >= 0x10)
      {
        v6 = v3 & 0xFFFFFFF0;
        v10 = (v8 + 16);
        v11 = (v7 + 16);
        v12 = v9 & 0xFFFFFFF0;
        do
        {
          v13 = *v11;
          *(v10 - 1) = *(v11 - 1);
          *v10 = v13;
          v10 += 2;
          v11 += 2;
          v12 -= 16;
        }

        while (v12);
        if (v6 == v9)
        {
          return result;
        }

        if ((v9 & 0xC) == 0)
        {
LABEL_18:
          v20 = v9 - v6;
          v21 = 2 * v6;
          v22 = (v8 + v21);
          v23 = (v7 + v21);
          do
          {
            v24 = *v23++;
            *v22++ = v24;
            --v20;
          }

          while (v20);
          return result;
        }
      }

      else
      {
        v6 = 0;
      }

      v14 = v6;
      v6 = v9 & 0xFFFFFFFC;
      v15 = v14 - v6;
      v16 = 2 * v14;
      v17 = (v8 + 2 * v14);
      v18 = (v7 + v16);
      do
      {
        v19 = *v18++;
        *v17++ = v19;
        v15 += 4;
      }

      while (v15);
      if (v6 != v9)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void NArray<unsigned short>::~NArray(void *a1)
{
  *a1 = &unk_283709150;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C80BDFB0063);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<unsigned short>::~NArray(void *result)
{
  *result = &unk_283709150;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C80BDFB0063);
    return v1;
  }

  return result;
}

uint64_t NAutoArray<unsigned short>::resize(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v5 = *a2;
  if (*a2 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a2;
  }

  if (v6)
  {
    operator new[]();
  }

  v7 = *(a1 + 16);
  if (v5 < v7)
  {
    *(a1 + 16) = v5;
    v7 = v5;
  }

  result = *(a1 + 8);
  if (!v7)
  {
    if (!result)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v9 = 0;
  v10 = v7;
  if (v7 >= 4 && -result >= 0x20)
  {
    if (v7 < 0x10)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v9 = v7 & 0xFFFFFFF0;
    v11 = 16;
    v12 = (result + 16);
    v13 = v10 & 0xFFFFFFF0;
    do
    {
      v14 = *v12;
      *(v11 - 16) = *(v12 - 1);
      *v11 = v14;
      v11 += 32;
      v12 += 2;
      v13 -= 16;
    }

    while (v13);
    if (v9 == v10)
    {
      goto LABEL_24;
    }

    if ((v10 & 0xC) != 0)
    {
LABEL_19:
      v15 = v9;
      v9 = v10 & 0xFFFFFFFC;
      v16 = v15 - v9;
      v17 = (2 * v15);
      v18 = (v17 + result);
      do
      {
        v19 = *v18++;
        *v17++ = v19;
        v16 += 4;
      }

      while (v16);
      if (v9 == v10)
      {
        goto LABEL_24;
      }
    }
  }

  v20 = v10 - v9;
  v21 = (2 * v9);
  v22 = (v21 + result);
  do
  {
    v23 = *v22++;
    *v21++ = v23;
    --v20;
  }

  while (v20);
LABEL_24:
  result = MEMORY[0x223DF1D00]();
LABEL_25:
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  *(a1 + 20) = 0;
  return result;
}

uint64_t NAutoArray<unsigned short>::fromArray(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = result;
  v4 = *a3;
  if (*(result + 20) < *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C80BDFB0063);
      v4 = *a3;
    }

    *(v3 + 20) = v4;
    operator new[]();
  }

  *(result + 16) = v4;
  if (v4)
  {
    v7 = *(result + 8);
    v8 = v4;
    if (v4 < 4 || (v7 - a2) <= 0x1F)
    {
      v10 = 0;
      goto LABEL_20;
    }

    if (v4 >= 0x10)
    {
      v10 = v4 & 0xFFFFFFF0;
      v11 = (v7 + 16);
      v12 = (a2 + 16);
      v13 = v8 & 0xFFFFFFF0;
      do
      {
        v14 = *v12;
        *(v11 - 1) = *(v12 - 1);
        *v11 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 16;
      }

      while (v13);
      if (v10 == v8)
      {
        return result;
      }

      if ((v8 & 0xC) == 0)
      {
LABEL_20:
        v21 = v8 - v10;
        v22 = 2 * v10;
        v23 = (v7 + v22);
        v24 = (a2 + v22);
        do
        {
          v25 = *v24++;
          *v23++ = v25;
          --v21;
        }

        while (v21);
        return result;
      }
    }

    else
    {
      v10 = 0;
    }

    v15 = v10;
    v10 = v8 & 0xFFFFFFFC;
    v16 = v15 - v10;
    v17 = 2 * v15;
    v18 = (v7 + 2 * v15);
    v19 = (a2 + v17);
    do
    {
      v20 = *v19++;
      *v18++ = v20;
      v16 += 4;
    }

    while (v16);
    if (v10 != v8)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t NAutoArray<unsigned short>::operator=(uint64_t result, uint64_t a2)
{
  v5 = *(a2 + 16);
  v3 = a2 + 16;
  v4 = v5;
  v6 = *(result + 20);
  v7 = v5 >= v6;
  if (v5 <= v6)
  {
    *(result + 16) = v4;
    if (!v7)
    {
      v9 = result;
      bzero((*(result + 8) + 2 * v4), 2 * (v6 + ~v4) + 2);
      result = v9;
    }
  }

  else
  {
    v8 = (*(result + 24) * v4);
    v4 = result;
    (*(*result + 48))(result, v3, v8);
    result = v4;
    LODWORD(v4) = *(v4 + 16);
  }

  if (v4)
  {
    v10 = 0;
    v11 = *(a2 + 8);
    v12 = *(result + 8);
    if (v4 < 4 || (v12 - v11) < 0x20)
    {
      goto LABEL_17;
    }

    if (v4 >= 0x10)
    {
      v10 = v4 & 0xFFFFFFF0;
      v13 = (v12 + 16);
      v14 = (v11 + 16);
      v15 = v10;
      do
      {
        v16 = *v14;
        *(v13 - 1) = *(v14 - 1);
        *v13 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 16;
      }

      while (v15);
      if (v10 == v4)
      {
        return result;
      }

      if ((v4 & 0xC) == 0)
      {
LABEL_17:
        v23 = v4 - v10;
        v24 = 2 * v10;
        v25 = (v12 + v24);
        v26 = (v11 + v24);
        do
        {
          v27 = *v26++;
          *v25++ = v27;
          --v23;
        }

        while (v23);
        return result;
      }
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;
    v10 = v4 & 0xFFFFFFFC;
    v18 = v17 - v10;
    v19 = 2 * v17;
    v20 = (v12 + 2 * v17);
    v21 = (v11 + v19);
    do
    {
      v22 = *v21++;
      *v20++ = v22;
      v18 += 4;
    }

    while (v18);
    if (v10 != v4)
    {
      goto LABEL_17;
    }
  }

  return result;
}

void NAutoArray<unsigned short>::~NAutoArray(void *a1)
{
  *a1 = &unk_283709150;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C80BDFB0063);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NAutoArray<unsigned short>::~NAutoArray(void *result)
{
  *result = &unk_283709150;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C80BDFB0063);
    return v1;
  }

  return result;
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned short>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_2837094E8;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_283709098;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

void *NFastFixedDistribution<signed char,int,unsigned short,unsigned short>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_2837094E8;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_283709098;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  return a1;
}

uint64_t NFastFixedDistribution<short,int,unsigned int,unsigned char>::setComponentMask(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(*(result + 280) + 8 * *a2);
  v4 = *v3;
  if (v4)
  {
    v5 = v3 + 1;
    v6 = *(a3 + 8);
    if (v4 == 1)
    {
      LODWORD(v7) = 0;
      goto LABEL_8;
    }

    v7 = v4 & 0xFFFFFFFE;
    v8 = v3 + 3;
    v9 = v7;
    do
    {
      v10 = *(v8 - 2);
      v11 = *v8;
      v8 += 4;
      *(v6 + v10) = 1;
      *(v6 + v11) = 1;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v4)
    {
      v5 += 2 * (v4 & 0xFFFFFFFE);
LABEL_8:
      v12 = v4 - v7;
      do
      {
        v13 = *v5;
        v5 += 2;
        *(v6 + v13) = 1;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void NFastFixedDistribution<short,int,unsigned int,unsigned char>::componentScore(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223AC50A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

float NFastFixedDistribution<short,int,unsigned int,unsigned char>::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 280) + 8 * *a2);
  v6 = *v5;
  if (*v5)
  {
    v9 = v5 + 2;
    v10 = -1073741823;
    do
    {
      v11 = *(v9 - 1);
      if (*(*(a3 + 8) + v11) == 1)
      {
        v12 = rintf(*(*(a4 + 8) + 4 * v11) * *((*(*a1 + 136))(a1) + 40)) - *v9;
        if (v12 >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v12 > v10)
        {
          v10 = v12;
        }

        if (v13 != -1073741823)
        {
          v14 = v10 - v13;
          if (v14 <= *(a1 + 500))
          {
            v10 += *(*(a1 + 480) + 4 * (v14 >> *(a1 + 496)));
          }
        }
      }

      v9 += 2;
      --v6;
    }

    while (v6);
    v15 = v10;
  }

  else
  {
    v15 = -1073700000.0;
  }

  return *((*(*a1 + 136))(a1) + 44) * v15;
}

void NFastFixedDistribution<short,int,unsigned int,unsigned char>::score(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223AC5518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void NFastFixedDistribution<short,int,unsigned int,unsigned char>::read()
{
  v2 = *MEMORY[0x277D85DE8];
  *__str = &unk_28370A720;
  LODWORD(v1) = 1;
  operator new[]();
}

void sub_223AC6E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t (**a40)(), uint64_t a41)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a16;
  if (a39)
  {
    MEMORY[0x223DF1D00](a39, 0x1000C8077774924);
  }

  a40 = off_283709B60;
  if (a41)
  {
    MEMORY[0x223DF1D00](a41, 0x1000C8052888210);
  }

  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  (*(*a22 + 8))(a22);
  _Unwind_Resume(a1);
}

uint64_t NFastFixedGaussians<short,int,unsigned char>::read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _BYTE *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  NGaussianFixedPointScales::operator=(a1 + 32, a4);
  v13 = *a5;
  v14 = 4 * *(a4 + 184) + 8;
  *(a1 + 232) = v14;
  *(a1 + 236) = v13;
  v18 = *a5 * v14;
  if (*a6 != 1)
  {
    operator new[]();
  }

  v15 = *(a3 + 8);
  if (!v15)
  {
    Error::chuck("NSmartPointer::checkptr() - pointer unset", v12);
  }

  result = (*(*v15 + 72))(v15, &v18, a1);
  *(a1 + 24) = *(a1 + 16);
  if (result != v18)
  {
    Error::chuck("NFastFixedGaussians::read() - not enough gaussian data in file %s (%d out of %d bytes)", v17, *(a2 + 16), result, v18);
  }

  return result;
}

void sub_223AC817C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a15;
  if (!a39)
  {
    _Unwind_Resume(a1);
  }

  MEMORY[0x223DF1D00](a39, v39);
  _Unwind_Resume(a1);
}

void NFastFixedDistribution<short,int,unsigned int,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_283709418;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_2837092A0;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

void *NFastFixedDistribution<short,int,unsigned int,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_283709418;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_2837092A0;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  return a1;
}

uint64_t NFastFixedDistribution<short,int,unsigned short,unsigned char>::setComponentMask(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(*(result + 280) + 8 * *a2);
  v4 = *v3;
  if (*v3)
  {
    v5 = v3 + 1;
    v6 = *(a3 + 8);
    if (v4 == 1)
    {
      LODWORD(v7) = 0;
      goto LABEL_8;
    }

    v7 = v4 & 0xFFFE;
    v8 = v3 + 3;
    v9 = v7;
    do
    {
      v10 = *(v8 - 2);
      v11 = *v8;
      v8 += 4;
      *(v6 + v10) = 1;
      *(v6 + v11) = 1;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v4)
    {
      v5 += 2 * (v4 & 0xFFFE);
LABEL_8:
      v12 = v4 - v7;
      do
      {
        v13 = *v5;
        v5 += 2;
        *(v6 + v13) = 1;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void NFastFixedDistribution<short,int,unsigned short,unsigned char>::componentScore(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223AC8A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

float NFastFixedDistribution<short,int,unsigned short,unsigned char>::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 280) + 8 * *a2);
  v6 = *v5;
  if (*v5)
  {
    v9 = v5 + 2;
    v10 = -1073741823;
    do
    {
      v11 = *(v9 - 1);
      if (*(*(a3 + 8) + v11) == 1)
      {
        v12 = rintf(*(*(a4 + 8) + 4 * v11) * *((*(*a1 + 136))(a1) + 40)) - *v9;
        if (v12 >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v12 > v10)
        {
          v10 = v12;
        }

        if (v13 != -1073741823)
        {
          v14 = v10 - v13;
          if (v14 <= *(a1 + 500))
          {
            v10 += *(*(a1 + 480) + 4 * (v14 >> *(a1 + 496)));
          }
        }
      }

      v9 += 2;
      --v6;
    }

    while (v6);
    v15 = v10;
  }

  else
  {
    v15 = -1073700000.0;
  }

  return *((*(*a1 + 136))(a1) + 44) * v15;
}

void NFastFixedDistribution<short,int,unsigned short,unsigned char>::score(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223AC8ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void NFastFixedDistribution<short,int,unsigned short,unsigned char>::read()
{
  v2 = *MEMORY[0x277D85DE8];
  *__str = &unk_28370A720;
  LODWORD(v1) = 1;
  operator new[]();
}

void sub_223ACA7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a16;
  if (a39)
  {
    MEMORY[0x223DF1D00](a39, 0x1000C8077774924);
  }

  a40 = &unk_283709150;
  if (a41)
  {
    MEMORY[0x223DF1D00](a41, 0x1000C80BDFB0063);
  }

  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  (*(*a22 + 8))(a22);
  _Unwind_Resume(a1);
}

void NFastFixedDistribution<short,int,unsigned short,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_283709348;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_283709098;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

void *NFastFixedDistribution<short,int,unsigned short,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_283709348;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_283709098;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  return a1;
}

uint64_t NFastFixedDistribution<signed char,int,unsigned int,unsigned char>::setComponentMask(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(*(result + 280) + 8 * *a2);
  v4 = *v3;
  if (v4)
  {
    v5 = v3 + 1;
    v6 = *(a3 + 8);
    if (v4 == 1)
    {
      LODWORD(v7) = 0;
      goto LABEL_8;
    }

    v7 = v4 & 0xFFFFFFFE;
    v8 = v3 + 3;
    v9 = v7;
    do
    {
      v10 = *(v8 - 2);
      v11 = *v8;
      v8 += 4;
      *(v6 + v10) = 1;
      *(v6 + v11) = 1;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v4)
    {
      v5 += 2 * (v4 & 0xFFFFFFFE);
LABEL_8:
      v12 = v4 - v7;
      do
      {
        v13 = *v5;
        v5 += 2;
        *(v6 + v13) = 1;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned char>::componentScore(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223ACB24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

float NFastFixedDistribution<signed char,int,unsigned int,unsigned char>::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 280) + 8 * *a2);
  v6 = *v5;
  if (*v5)
  {
    v9 = v5 + 2;
    v10 = -1073741823;
    do
    {
      v11 = *(v9 - 1);
      if (*(*(a3 + 8) + v11) == 1)
      {
        v12 = rintf(*(*(a4 + 8) + 4 * v11) * *((*(*a1 + 136))(a1) + 40)) - *v9;
        if (v12 >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v12 > v10)
        {
          v10 = v12;
        }

        if (v13 != -1073741823)
        {
          v14 = v10 - v13;
          if (v14 <= *(a1 + 500))
          {
            v10 += *(*(a1 + 480) + 4 * (v14 >> *(a1 + 496)));
          }
        }
      }

      v9 += 2;
      --v6;
    }

    while (v6);
    v15 = v10;
  }

  else
  {
    v15 = -1073700000.0;
  }

  return *((*(*a1 + 136))(a1) + 44) * v15;
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned char>::score(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223ACB6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned char>::read()
{
  v2 = *MEMORY[0x277D85DE8];
  *__str = &unk_28370A720;
  LODWORD(v1) = 1;
  operator new[]();
}

void sub_223ACCFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t (**a40)(), uint64_t a41)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a16;
  if (a39)
  {
    MEMORY[0x223DF1D00](a39, 0x1000C8077774924);
  }

  a40 = off_283709B60;
  if (a41)
  {
    MEMORY[0x223DF1D00](a41, 0x1000C8052888210);
  }

  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  (*(*a22 + 8))(a22);
  _Unwind_Resume(a1);
}

uint64_t NFastFixedGaussians<signed char,int,unsigned char>::read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _BYTE *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  NGaussianFixedPointScales::operator=(a1 + 32, a4);
  v13 = *a5;
  v14 = 2 * *(a4 + 184) + ((-2 * *(a4 + 184)) & 2) + 8;
  *(a1 + 232) = v14;
  *(a1 + 236) = v13;
  v18 = *a5 * v14;
  if (*a6 != 1)
  {
    operator new[]();
  }

  v15 = *(a3 + 8);
  if (!v15)
  {
    Error::chuck("NSmartPointer::checkptr() - pointer unset", v12);
  }

  result = (*(*v15 + 72))(v15, &v18, a1);
  *(a1 + 24) = *(a1 + 16);
  if (result != v18)
  {
    Error::chuck("NFastFixedGaussians::read() - not enough gaussian data in file %s (%d out of %d bytes)", v17, *(a2 + 16), result, v18);
  }

  return result;
}

void sub_223ACE318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a15;
  if (!a39)
  {
    _Unwind_Resume(a1);
  }

  MEMORY[0x223DF1D00](a39, v39);
  _Unwind_Resume(a1);
}

void NFastFixedDistribution<signed char,int,unsigned int,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_2837091D0;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_2837092A0;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

void *NFastFixedDistribution<signed char,int,unsigned int,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_2837091D0;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_2837092A0;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  return a1;
}

uint64_t NFastFixedDistribution<signed char,int,unsigned short,unsigned char>::setComponentMask(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(*(result + 280) + 8 * *a2);
  v4 = *v3;
  if (*v3)
  {
    v5 = v3 + 1;
    v6 = *(a3 + 8);
    if (v4 == 1)
    {
      LODWORD(v7) = 0;
      goto LABEL_8;
    }

    v7 = v4 & 0xFFFE;
    v8 = v3 + 3;
    v9 = v7;
    do
    {
      v10 = *(v8 - 2);
      v11 = *v8;
      v8 += 4;
      *(v6 + v10) = 1;
      *(v6 + v11) = 1;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v4)
    {
      v5 += 2 * (v4 & 0xFFFE);
LABEL_8:
      v12 = v4 - v7;
      do
      {
        v13 = *v5;
        v5 += 2;
        *(v6 + v13) = 1;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned char>::componentScore(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223ACEBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

float NFastFixedDistribution<signed char,int,unsigned short,unsigned char>::scoreUsingCache(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 280) + 8 * *a2);
  v6 = *v5;
  if (*v5)
  {
    v9 = v5 + 2;
    v10 = -1073741823;
    do
    {
      v11 = *(v9 - 1);
      if (*(*(a3 + 8) + v11) == 1)
      {
        v12 = rintf(*(*(a4 + 8) + 4 * v11) * *((*(*a1 + 136))(a1) + 40)) - *v9;
        if (v12 >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v12 > v10)
        {
          v10 = v12;
        }

        if (v13 != -1073741823)
        {
          v14 = v10 - v13;
          if (v14 <= *(a1 + 500))
          {
            v10 += *(*(a1 + 480) + 4 * (v14 >> *(a1 + 496)));
          }
        }
      }

      v9 += 2;
      --v6;
    }

    while (v6);
    v15 = v10;
  }

  else
  {
    v15 = -1073700000.0;
  }

  return *((*(*a1 + 136))(a1) + 44) * v15;
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned char>::score(uint64_t a1)
{
  (*(*a1 + 136))(a1);
  (*(*a1 + 136))(a1);
  operator new[]();
}

void sub_223ACF068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned char>::read()
{
  v2 = *MEMORY[0x277D85DE8];
  *__str = &unk_28370A720;
  LODWORD(v1) = 1;
  operator new[]();
}

void sub_223AD0984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  NLinkedList<NString>::~NLinkedList(&a33);
  a37 = a16;
  if (a39)
  {
    MEMORY[0x223DF1D00](a39, 0x1000C8077774924);
  }

  a40 = &unk_283709150;
  if (a41)
  {
    MEMORY[0x223DF1D00](a41, 0x1000C80BDFB0063);
  }

  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  (*(*a22 + 8))(a22);
  _Unwind_Resume(a1);
}

void NFastFixedDistribution<signed char,int,unsigned short,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_283708FC8;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_283709098;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

void *NFastFixedDistribution<signed char,int,unsigned short,unsigned char>::~NFastFixedDistribution(void *a1)
{
  *a1 = &unk_283708FC8;
  NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader((a1 + 37));
  a1[34] = &unk_283709098;
  v2 = a1[35];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x50C80EE9192B6);
  }

  a1[31] = &unk_28370A720;
  v3 = a1[33];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  a1[5] = &unk_2837086D8;
  a1[26] = &unk_283708F80;
  v4 = a1[27];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  a1[22] = &unk_283708F80;
  v5 = a1[23];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales((a1 + 5));
  a1[1] = &unk_28370A720;
  v6 = a1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  return a1;
}

void read_gaussian_models(const NString *a1, const NString *a2)
{
  v2[0] = &unk_283708D98;
  v2[1] = 0;
  NDistributionLoader::read(v2, a1, a2);
}

void sub_223AD1140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AD1E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223AD2800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3165(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCSUtilsClass()
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCSUtilsClass_softClass_3171;
  v6 = getCSUtilsClass_softClass_3171;
  if (!getCSUtilsClass_softClass_3171)
  {
    if (!CoreSpeechFoundationLibraryCore_frameworkLibrary_3173)
    {
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __CoreSpeechFoundationLibraryCore_block_invoke_3174;
      v10 = &__block_descriptor_40_e5_v8__0l;
      v11 = 0;
      v12 = xmmword_2784EC870;
      v13 = 0;
      CoreSpeechFoundationLibraryCore_frameworkLibrary_3173 = _sl_dlopen();
    }

    v4[3] = objc_getClass("CSUtils");
    getCSUtilsClass_softClass_3171 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_223AD2C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSUtilsClass_block_invoke_3172(uint64_t a1)
{
  if (!CoreSpeechFoundationLibraryCore_frameworkLibrary_3173)
  {
    CoreSpeechFoundationLibraryCore_frameworkLibrary_3173 = _sl_dlopen();
  }

  result = objc_getClass("CSUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSUtilsClass_softClass_3171 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpeechFoundationLibraryCore_block_invoke_3174()
{
  result = _sl_dlopen();
  CoreSpeechFoundationLibraryCore_frameworkLibrary_3173 = result;
  return result;
}

void _VTReloadVoiceTrigger()
{
  CFPreferencesAppSynchronize(@"com.apple.voicetrigger");
  v0 = dispatch_time(0, 50000000);
  v1 = MEMORY[0x277D85CD0];

  dispatch_after(v0, v1, &__block_literal_global_99);
}

id _VTPreferencesValueForKey(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.voicetrigger");

  return v1;
}

id _VTNotBackedupPreferencesValueForKey(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.voicetrigger.notbackedup");

  return v1;
}

void NZFile::open(NZFile *this, const NString *a2, const NString *a3, const unsigned int *a4)
{
  (*(*this + 24))(this);
  v9 = *(a3 + 2);
  if (*(a3 + 2) == 1)
  {
    if (*v9 == 114)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = *(a3 + 2);
    if (*v9 == 119)
    {
      v10 = 1;
LABEL_6:
      *(this + 12) = v10;
      *(this + 5) = 0;
      if (!*a4)
      {
        Error::chuck("NZFile::open() - Can't open gz compressed file '%s' because compiled without zlib", v8, *(a2 + 2));
      }

      Error::chuck("NZFile::open() - offset open not supported", v8);
    }
  }

  Error::chuck("NZFile::open() - unrecognized file mode %s", v8, v9);
}

void NZFile::write(NZFile *this, const NString *a2)
{
  if ((*(*this + 32))(this, a2))
  {
    if (*(this + 12) == 1)
    {
      Error::chuck("NZFile::write() - Not available because compiled without zlib", v3);
    }

    Error::chuck("NZFile::write() - file %s not opened in write mode", v3, *(this + 3));
  }

  Error::chuck("NZFile::write() - file %s is not open", v3, *(this + 3));
}

void NZFile::readString(NZFile *this)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 12))
    {
      Error::chuck("NZFile::readString() - Not available because compiled without zlib", v2);
    }

    Error::chuck("NZFile::readString() - file %s not opened in read mode", v2, *(this + 3));
  }

  Error::chuck("NZFile::readString() - file %s is not open", v2, *(this + 3));
}

void NZFile::readLine(NZFile *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*this + 32))(this, a2))
  {
    if (!*(this + 12))
    {
      *a3 = &unk_28370A720;
      *(a3 + 8) = 0;
      operator new[]();
    }

    Error::chuck("NZFile::readLine() - file %s not opened in read mode", v5, *(this + 3));
  }

  Error::chuck("NZFile::readLine() - file %s is not open", v5, *(this + 3));
}

void sub_223AD6258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    v15 = a1;
    MEMORY[0x223DF1D00](a12, v13);
    a1 = v15;
  }

  *v12 = v14;
  v16 = v12[2];
  if (v16)
  {
    v17 = a1;
    MEMORY[0x223DF1D00](v16, v13);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void NZFile::read(NZFile *this, const unsigned int *a2, NString *a3)
{
  if ((*(*this + 32))(this, a2, a3))
  {
    if (!*(this + 12))
    {
      if (*a2 == -1)
      {
        Error::chuck("NFile::read() - attempting impossibly long read in file %s", v5, *(this + 3));
      }

      Error::chuck("NZFile::read() - Not available because compiled without zlib", v5);
    }

    Error::chuck("NZFile::read() - file %s not opened in read mode", v5, *(this + 3));
  }

  Error::chuck("NZFile::read() - file %s is not open", v5, *(this + 3));
}

void NZFile::read(NZFile *this, const unsigned int *a2)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 12))
    {
      if (*a2 == -1)
      {
        Error::chuck("NFile::read() - attempting impossibly long read in file %s", v4, *(this + 3));
      }

      operator new[]();
    }

    Error::chuck("NZFile::read() - file %s not opened in read mode", v4, *(this + 3));
  }

  Error::chuck("NZFile::read() - file %s is not open", v4, *(this + 3));
}

void sub_223AD6430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    v13 = a1;
    MEMORY[0x223DF1D00](a12, v12);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

void NZFile::read(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 0;
  operator new[]();
}

void sub_223AD65AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  *v12 = v13;
  v15 = v12[2];
  if (v15)
  {
    MEMORY[0x223DF1D00](v15, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NZFile::good(NZFile *this)
{
  if ((*(*this + 40))(this))
  {
    return 0;
  }

  v3 = *(*this + 32);

  return v3(this);
}

uint64_t NZFile::close(NZFile *this, const char *a2)
{
  if (*(this + 52) == 1)
  {
    Error::chuck("NZFile::close() - Not available because compiled without zlib", a2);
  }

  v4 = 0;
  v2 = this + 8;
  result = (*(*(this + 1) + 64))(this + 8, "", &v4);
  v2[44] = 0;
  return result;
}

void NZFile::~NZFile(NZFile *this, const char *a2)
{
  *this = &unk_2837097A8;
  if (*(this + 52) != 1)
  {
    v3 = *(this + 1);
    v5 = 0;
    (*(v3 + 64))(this + 8, "", &v5);
    *(this + 52) = 0;
    *this = &unk_28370A250;
    *(this + 1) = &unk_28370A720;
    v4 = *(this + 3);
    if (v4)
    {
      MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
    }

    JUMPOUT(0x223DF1D20);
  }

  Error::chuck("NZFile::close() - Not available because compiled without zlib", a2);
}

{
  *this = &unk_2837097A8;
  if (*(this + 52) == 1)
  {
    Error::chuck("NZFile::close() - Not available because compiled without zlib", a2);
  }

  v3 = *(this + 1);
  v5 = 0;
  (*(v3 + 64))(this + 8, "", &v5);
  *(this + 52) = 0;
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }
}

{
  *this = &unk_2837097A8;
  if (*(this + 52) == 1)
  {
    Error::chuck("NZFile::close() - Not available because compiled without zlib", a2);
  }

  v3 = *(this + 1);
  v5 = 0;
  (*(v3 + 64))(this + 8, "", &v5);
  *(this + 52) = 0;
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }
}

void NZFile::NZFile(NZFile *this)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void NZFile::NZFile(NZFile *this, const NString *a2, const NString *a3, const unsigned int *a4)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void sub_223AD6BC0(_Unwind_Exception *a1)
{
  *v2 = v3;
  v2[1] = v4;
  v5 = v2[3];
  if (v5)
  {
    v6 = a1;
    MEMORY[0x223DF1D00](v5, v1);
    a1 = v6;
  }

  _Unwind_Resume(a1);
}

void sub_223AD6CBC(_Unwind_Exception *a1)
{
  *v2 = v3;
  v2[1] = v4;
  v5 = v2[3];
  if (v5)
  {
    v6 = a1;
    MEMORY[0x223DF1D00](v5, v1);
    a1 = v6;
  }

  _Unwind_Resume(a1);
}

void NZipFile::~NZipFile(NZipFile *this)
{
  *this = &unk_283709878;
  v2 = (this + 8);
  if ((*(*(this + 1) + 32))(this + 8))
  {
    if (!std::filebuf::close())
    {
      v3 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v3, v3->__rdstate_ | 4);
    }

    v5 = 0;
    (*(*(this + 2) + 64))(this + 16, "", &v5);
  }

  v6 = 0;
  (*(*(this + 80) + 64))(this + 640, "", &v6);
  *(this + 167) = 0;
  *(this + 688) = 0;
  *(this + 80) = &unk_28370A720;
  v4 = *(this + 82);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  NFile::~NFile(v2);

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283709878;
  v2 = (this + 8);
  if ((*(*(this + 1) + 32))(this + 8))
  {
    if (!std::filebuf::close())
    {
      v3 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v3, v3->__rdstate_ | 4);
    }

    v5 = 0;
    (*(*(this + 2) + 64))(this + 16, "", &v5);
  }

  v6 = 0;
  (*(*(this + 80) + 64))(this + 640, "", &v6);
  *(this + 167) = 0;
  *(this + 688) = 0;
  *(this + 80) = &unk_28370A720;
  v4 = *(this + 82);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  NFile::~NFile(v2);
}

{
  *this = &unk_283709878;
  v2 = (this + 8);
  if ((*(*(this + 1) + 32))(this + 8))
  {
    if (!std::filebuf::close())
    {
      v3 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v3, v3->__rdstate_ | 4);
    }

    v5 = 0;
    (*(*(this + 2) + 64))(this + 16, "", &v5);
  }

  v6 = 0;
  (*(*(this + 80) + 64))(this + 640, "", &v6);
  *(this + 167) = 0;
  *(this + 688) = 0;
  *(this + 80) = &unk_28370A720;
  v4 = *(this + 82);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  NFile::~NFile(v2);
}

void NZipFile::NZipFile(NZipFile *this)
{
  *this = &unk_283709878;
  NFile::NFile((this + 8));
}

{
  *this = &unk_283709878;
  NFile::NFile((this + 8));
}

void NZipFile::NZipFile(NZipFile *this, const NString *a2)
{
  *this = &unk_283709878;
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223AD7904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  *(v14 + 640) = v15;
  v17 = *(v14 + 656);
  if (v17)
  {
    MEMORY[0x223DF1D00](v17, v12);
  }

  NFile::~NFile(v13);
  _Unwind_Resume(a1);
}

void NZipFile::open(NZipFile *this, const NString *a2)
{
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223AD7A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NZipFile::close(NZipFile *this)
{
  if ((*(*(this + 1) + 32))())
  {
    if (!std::filebuf::close())
    {
      v2 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v2, v2->__rdstate_ | 4);
    }

    v4 = 0;
    (*(*(this + 2) + 64))(this + 16, "", &v4);
  }

  v5 = 0;
  result = (*(*(this + 80) + 64))(this + 640, "", &v5);
  *(this + 167) = 0;
  *(this + 688) = 0;
  return result;
}

void NZipFile::start(NZipFile *this)
{
  *(this + 83) = 0;
  *(this + 688) = 0;
  v3[0] = -1;
  NFile::setPosition((this + 8), v3);
  if (NFile::getPosition((this + 8)) > 0x15)
  {
    *v3 = &unk_28370A720;
    v4 = 0;
    operator new[]();
  }

  Error::chuck("NZipFile::start() - Problem reading %s: %s", v2, *(this + 4), "file not large enough to be a zipfile");
}

void sub_223AD8004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    MEMORY[0x223DF1D00](a20, v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NZipFile::nextHeader(uint64_t this)
{
  *(this + 688) = 0;
  if (*(this + 668) < *(this + 664))
  {
    v1[0] = 46;
    NFile::read((this + 8), v1);
  }

  return this;
}

void sub_223AD82D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    MEMORY[0x223DF1D00]();
  }

  *(v17 - 56) = &unk_28370A720;
  v19 = *(v17 - 40);
  if (v19)
  {
    MEMORY[0x223DF1D00](v19, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NZipFile::operator++(uint64_t this)
{
  if (*(this + 688) == 1)
  {
    return NZipFile::nextHeader(this);
  }

  return this;
}

void NZipFile::getCurrentSubFile(NZipFile *this, NFilePtr *a2)
{
  if (*(this + 688))
  {
    v3 = *(this + 168);
    if (!v3)
    {
      v4[8] = NFile::getPosition((this + 8));
      NFile::setPosition((this + 8), this + 170);
      v4[0] = 30;
      NFile::read((this + 8), v4);
    }

    Error::chuck("NZipFile::getCurrentSubFile() - compression method %d not currently supported in subfile %s in zipfile %s", a2, v3, *(this + 82), *(this + 4));
  }

  Error::chuck("NZipFile::getCurrentSubFile() - reading iterator in invalid state", a2);
}

void sub_223AD8670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    MEMORY[0x223DF1D00](a15, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AD8814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *v13 = v14;
  v13[1] = v15;
  v17 = v13[3];
  if (v17)
  {
    MEMORY[0x223DF1D00](v17, 0x1000C8077774924);
  }

  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  MEMORY[0x223DF1D20](v13, v12);
  _Unwind_Resume(a1);
}

void sub_223AD89A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void NFidFile::~NFidFile(NFidFile *this)
{
  *this = &unk_2837098A8;
  *(this + 648) = 0;
  v2 = (this + 8);
  if ((*(*(this + 1) + 32))(this + 8))
  {
    if (!std::filebuf::close())
    {
      v3 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v3, v3->__rdstate_ | 4);
    }

    v4 = 0;
    (*(*(this + 2) + 64))(this + 16, "", &v4);
  }

  NFile::~NFile(v2);

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_2837098A8;
  *(this + 648) = 0;
  v2 = (this + 8);
  if ((*(*(this + 1) + 32))(this + 8))
  {
    if (!std::filebuf::close())
    {
      v3 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v3, v3->__rdstate_ | 4);
    }

    v4 = 0;
    (*(*(this + 2) + 64))(this + 16, "", &v4);
  }

  NFile::~NFile(v2);
}

{
  *this = &unk_2837098A8;
  *(this + 648) = 0;
  v2 = (this + 8);
  if ((*(*(this + 1) + 32))(this + 8))
  {
    if (!std::filebuf::close())
    {
      v3 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v3, v3->__rdstate_ | 4);
    }

    v4 = 0;
    (*(*(this + 2) + 64))(this + 16, "", &v4);
  }

  NFile::~NFile(v2);
}

void NFidFile::NFidFile(NFidFile *this)
{
  *this = &unk_2837098A8;
  NFile::NFile((this + 8));
}

{
  *this = &unk_2837098A8;
  NFile::NFile((this + 8));
}

void NFidFile::NFidFile(NFidFile *this, const NString *a2)
{
  *this = &unk_2837098A8;
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223AD8ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v13);
  }

  NFile::~NFile(v12);
  _Unwind_Resume(a1);
}

void sub_223AD90F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, 0x1000C8077774924);
  }

  if (a16)
  {
    MEMORY[0x223DF1D00](a16, v16);
  }

  _Unwind_Resume(exception_object);
}

void NFidFile::open(NFidFile *this, const NString *a2)
{
  *(this + 648) = 0;
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223AD9224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NFidFile::close(NFidFile *this)
{
  v2 = *(this + 1);
  *(this + 648) = 0;
  result = (*(v2 + 32))();
  if (result)
  {
    if (!std::filebuf::close())
    {
      v4 = (this + *(*(this + 6) - 24) + 48);
      std::ios_base::clear(v4, v4->__rdstate_ | 4);
    }

    v5 = 0;
    return (*(*(this + 2) + 64))(this + 16, "", &v5);
  }

  return result;
}

void NFidFile::getSubFile(NFidFile *this, const NString *a2, NFilePtr *a3)
{
  if (*(this + 648))
  {
    v5 = *(a2 + 2);
    if (v5)
    {
      v6 = 0;
      v7 = *(a2 + 2);
      do
      {
        v8 = *v7++;
        v6 = v8 + 65599 * v6;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v13[0] = *(this + 161) + 4 * (v6 % *(this + 160));
    if (NFile::setPosition((this + 8), v13))
    {
      v12[0] = 4;
      NFile::read((this + 8), v12);
    }

    v9 = *(a2 + 2);
    v10 = *(this + 4);
    v11 = "could not reach hashblock slot";
  }

  else
  {
    v9 = *(a2 + 2);
    v10 = *(this + 4);
    v11 = "fidfile is not open and ready";
  }

  Error::chuck("NFidFile::getSubFile() - Problem reading subfile %s from %s: %s", a2, a3, v9, v10, v11);
}

void sub_223AD9828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    MEMORY[0x223DF1D00](a24, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void *NAutoString::appendTo(NAutoString *this, const void *a2, const unsigned int *a3)
{
  if (!a2)
  {
    Error::chuck("NAutoString::appendTo() - Null pointer passed to assign", 0, a3);
  }

  v5 = *(this + 2);
  v6 = *a3;
  v7 = v6 + v5;
  if ((v6 + v5) >= *(this + 6))
  {
    v11 = *(this + 7) + v7;
    v10 = (**this)(this, &v11);
    memcpy(v10, *(this + 2), *(this + 2));
    memcpy(&v10[*(this + 2)], a2, *a3);
    v10[v7] = 0;
    result = (*(*this + 8))(this, *(this + 2));
    *(this + 2) = v10;
    *(this + 6) = v11;
  }

  else
  {
    result = memcpy((*(this + 2) + v5), a2, v6);
    *(*(this + 2) + v7) = 0;
  }

  *(this + 2) = v7;
  return result;
}

void *NAutoString::assignTo(NAutoString *this, const void *a2, const unsigned int *a3)
{
  if (!a2)
  {
    Error::chuck("NAutoString::assignTo() - Null pointer passed to assign", 0, a3);
  }

  v4 = *a3;
  if (v4 >= *(this + 6))
  {
    v8 = *(this + 7) + v4;
    v7 = (**this)(this, &v8);
    memcpy(v7, a2, v4);
    *(v7 + v4) = 0;
    result = (*(*this + 8))(this, *(this + 2));
    *(this + 2) = v7;
    *(this + 6) = v8;
  }

  else
  {
    result = memcpy(*(this + 2), a2, *a3);
    *(*(this + 2) + v4) = 0;
  }

  *(this + 2) = v4;
  return result;
}

uint64_t NAutoString::operator+=(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 16);
    v5 = v2;
    v4 = result;
    (*(*result + 72))(result, v3, &v5);
    return v4;
  }

  return result;
}

uint64_t NAutoString::operator=(uint64_t a1, char *__s)
{
  v5 = strlen(__s);
  (*(*a1 + 64))(a1, __s, &v5);
  return a1;
}

uint64_t NAutoString::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = *(a2 + 16);
    v6 = *(a2 + 8);
    v5 = result;
    (*(*result + 64))(result, v4, &v6);
    return v5;
  }

  return result;
}

void NAutoString::~NAutoString(NAutoString *this)
{
  *this = &unk_28370A720;
  if (*(this + 2))
  {
    MEMORY[0x223DF1D00](*(this + 2), 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_28370A720;
  if (*(this + 2))
  {
    MEMORY[0x223DF1D00](*(this + 2), 0x1000C8077774924);
  }
}

{
  *this = &unk_28370A720;
  if (*(this + 2))
  {
    MEMORY[0x223DF1D00](*(this + 2), 0x1000C8077774924);
  }
}

void NAutoString::NAutoString(NAutoString *this)
{
  *this = &unk_28370A720;
  *(this + 2) = 0;
  operator new[]();
}

{
  *this = &unk_28370A720;
  *(this + 2) = 0;
  operator new[]();
}

void sub_223ADA268(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[2];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void NAutoString::NAutoString(NAutoString *this, const NAutoString *a2)
{
  *this = &unk_28370A720;
  *(this + 2) = *(a2 + 2);
  operator new[]();
}

{
  *this = &unk_28370A720;
  *(this + 2) = *(a2 + 2);
  operator new[]();
}

void NAutoString::NAutoString(NAutoString *this, const NString *a2)
{
  *this = &unk_28370A720;
  *(this + 2) = *(a2 + 2);
  operator new[]();
}

{
  *this = &unk_28370A720;
  *(this + 2) = *(a2 + 2);
  operator new[]();
}

void sub_223ADA778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3529(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223ADA9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223ADB060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223ADB408(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

uint64_t AccelStaticMFCC::reset(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 504) = *(this + 488) + 1;
  *(this + 512) = 0;
  *(this + 508) = 0;
  return this;
}

uint64_t AccelStaticMFCC::start(uint64_t result, const char *a2, int *a3, int *a4)
{
  if ((*result & 1) == 0)
  {
    Error::chuck("AccelStaticMFCC::start() - AccelStaticMFCC::init() has to be called before starting", a2);
  }

  if (*(result + 512))
  {
    Error::chuck("AccelStaticMFCC::start() - frames undrained from previous chunk - call isFrame() or reset()", a2);
  }

  v4 = *a3;
  if (!a2 && v4)
  {
    Error::chuck("AccelStaticMFCC::start() - pointer to chunk is NULL", 0);
  }

  v5 = *a4;
  if (*a4 >= 2)
  {
    Error::chuck("NAccelStaticMFCC::start() - unsupported sample type", a2);
  }

  *(result + 512) = a2;
  *(result + 520) = v4;
  *(result + 524) = v5;
  *(result + 508) = 0;
  return result;
}

float AccelStaticMFCC::preemph(AccelStaticMFCC *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = -*(this + 125);
  vDSP_conv(*(this + 5), 1, &v5, -1, *(this + 5), 1, (*(this + 122) - 1), 2uLL);
  v2 = *(this + 122) - 1;
  v3 = *(this + 5);
  result = *(this + 21) - (*(v3 + 4 * v2) * *(this + 125));
  *(v3 + 4 * v2) = result;
  return result;
}

void sub_223ADC30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223ADC7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSActivationEventNotifierClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreSpeechLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784EC960;
    v6 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreSpeechLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CSActivationEventNotifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCSActivationEventNotifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCSActivationEventClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreSpeechLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784EC960;
    v6 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreSpeechLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CSActivationEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCSActivationEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCSVoiceTriggerXPCServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreSpeechLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784EC960;
    v6 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreSpeechLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CSVoiceTriggerXPCService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCSVoiceTriggerXPCServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void NBNNSIRDistribution::resetState(NBNNSIRDistribution *this, void *a2)
{
  if (a2)
  {
    v3 = *(this + 50);
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 4 * v3;
      do
      {
        v8 = *(*(this + 27) + v6);
        if (v8)
        {
          bzero(*(a2[1] + v5), v8);
        }

        v6 += 4;
        v5 += 16;
      }

      while (v7 != v6);
    }
  }
}

uint64_t NBNNSIRDistribution::deallocateState(uint64_t this, void *a2)
{
  if (a2)
  {
    v3 = *(this + 200);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        if (!*(*(this + 216) + v5))
        {
          *(a2[1] + v4) = 0;
        }

        v5 += 4;
        v4 += 16;
      }

      while (4 * v3 != v5);
    }

    *(a2[1] + 16 * *(this + 172)) = 0;
    *(a2[1] + 16 * *(this + 176)) = 0;
    if (v3)
    {
      v6 = 0;
      v7 = a2[1];
      v8 = 16 * v3;
      do
      {
        v9 = *(v7 + v6);
        if (v9)
        {
          MEMORY[0x223DF1D20](v9, 0x1000C4077774924);
          v7 = a2[1];
        }

        *(v7 + v6) = 0;
        v7 = a2[1];
        *(v7 + v6 + 8) = 0;
        v6 += 16;
      }

      while (v8 != v6);
    }

    v10 = *(*a2 + 8);

    return v10(a2);
  }

  return this;
}

uint64_t NBNNSIRDistribution::allocateStateP(NBNNSIRDistribution *this, const char *a2)
{
  if (!*(this + 39))
  {
    Error::chuck("NBNNSIRDistribution::scoreAll() - BNNSIR not loaded", a2);
  }

  if (*(this + 50) >= 3u)
  {
    operator new();
  }

  return 0;
}