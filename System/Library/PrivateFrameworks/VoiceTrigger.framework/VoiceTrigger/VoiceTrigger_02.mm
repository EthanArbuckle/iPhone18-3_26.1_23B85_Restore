void TSSATScorer::scoreTransformed(TSSATScorer *this)
{
  v2 = 1065353216;
  v3 = 0;
  if (*(this + 292) == 1)
  {
    NSATImpostor::score(this + 16, this + 240, &v3, &v2);
  }

  NSATSpeaker::score(this + 88, this + 240, &v3, &v2);
  *(this + 297) = 1;
}

void TSSATScorer::scoreSpeakerVector(TSSATScorer *this, const float *a2, uint64_t a3)
{
  *(this + 297) = 0;
  if ((*(this + 296) & 1) == 0)
  {
    Error::chuck("TSSATScorer::scorespeakervector() - setModelFile() not called", a2);
  }

  if ((*(**(this + 1) + 16))(*(this + 1)) != a3)
  {
    v19 = (*(**(this + 1) + 16))(*(this + 1));
    Error::chuck("TSSATScorer::scorespeakervector() - speakervector size (%d) does not match scorer transform size (%d)", v20, a3, v19);
  }

  if (!a2)
  {
    Error::chuck("TSSATScorer::score() - NULL supervector pointer", v6);
  }

  if (*(this + 64) != a3)
  {
    v7 = *(this + 31);
    if (v7)
    {
      MEMORY[0x223DF1D00](v7, 0x1000C8052888210);
    }

    *(this + 64) = a3;
    operator new[]();
  }

  if (a3)
  {
    v8 = 0;
    v9 = *(this + 31);
    if (a3 < 8)
    {
      goto LABEL_14;
    }

    if ((v9 - a2) < 0x20)
    {
      goto LABEL_14;
    }

    v8 = a3 & 0xFFFFFFF8;
    v10 = (v9 + 16);
    v11 = a2 + 4;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v10 - 1) = *(v11 - 1);
      *v10 = v13;
      v10 += 2;
      v11 += 8;
      v12 -= 8;
    }

    while (v12);
    if (v8 != a3)
    {
LABEL_14:
      v14 = a3 - v8;
      v15 = v8;
      v16 = (v9 + v15 * 4);
      v17 = &a2[v15];
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        --v14;
      }

      while (v14);
    }
  }

  v21 = 1065353216;
  v22 = 0;
  if (*(this + 292) == 1)
  {
    NSATImpostor::score(this + 16, this + 240, &v22, &v21);
  }

  NSATSpeaker::score(this + 88, this + 240, &v22, &v21);
  *(this + 297) = 1;
}

_BYTE *TSSATScorer::update(TSSATScorer *this, const char *a2)
{
  if ((*(this + 297) & 1) == 0)
  {
    Error::chuck("TSSATScorer::update() - no valid vector prepared", a2);
  }

  *(this + 297) = 0;
  result = NSATSpeaker::insert(this + 88, this + 240);
  if (*(this + 166) == 1)
  {
    NSATSpeaker::write((this + 88), v4);
  }

  return result;
}

void *TSSATScorer::deleteVector(TSSATScorer *this, const char *a2)
{
  if ((*(this + 296) & 1) == 0)
  {
    Error::chuck("TSSATScorer::deleteVector() - setModelFile() not called", a2);
  }

  result = NSATSpeaker::remove((this + 88), a2);
  if (*(this + 166) == 1)
  {
    NSATSpeaker::write((this + 88), v4);
  }

  return result;
}

void TSSATScorer::getSpeakerVector(uint64_t a1, const char *a2, unsigned int *a3)
{
  if (*(a1 + 296))
  {
    v5 = a1 + 88;

    NSATSpeaker::getVector(v5, a2, a3);
  }

  Error::chuck("TSSATScorer::getSuperVector() - setModelFile() not called", a2, v3, v4);
}

uint64_t TSSATScorer::getSpeakerVectorDimen(TSSATScorer *this, const char *a2)
{
  if ((*(this + 295) & 1) == 0)
  {
    Error::chuck("TSSATScorer::setModelFile() - init() not called", a2, v2, v3);
  }

  return *(this + 64);
}

void TSSupervectorScorer::~TSSupervectorScorer(TSSupervectorScorer *this)
{
  *this = &unk_283707100;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 6) = off_28370A538;
  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 3) = off_28370A538;
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283707100;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 6) = off_28370A538;
  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 3) = off_28370A538;
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }
}

{
  *this = &unk_283707100;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 6) = off_28370A538;
  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 3) = off_28370A538;
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }
}

void TSSupervectorScorer::TSSupervectorScorer(TSSupervectorScorer *this)
{
  *this = &unk_283707100;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_28370A4D8;
  *(this + 6) = off_28370A538;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 72) = 0;
}

{
  *this = &unk_283707100;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_28370A4D8;
  *(this + 6) = off_28370A538;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 72) = 0;
}

void TSSupervectorScorer::init(TSSupervectorScorer *this, const NString *a2)
{
  if (*(this + 72) != 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2, a2);
    }

    operator new[]();
  }

  Error::chuck("TSSupervectorScorer::init() - init() already called", a2);
}

void sub_223A700FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v16);
  }

  _Unwind_Resume(exception_object);
}

float TSSupervectorScorer::score(TSSupervectorScorer *this, const float *a2, uint64_t a3)
{
  if ((*(this + 72) & 1) == 0)
  {
    Error::chuck("TSSupervectorScorer::score() - init() not called", a2);
  }

  v4 = *(this + 10);
  if (v4 != a3)
  {
    Error::chuck("TSSupervectorScorer::score() - supervector size (%d) does not match scorer input size (%d)", a2, a3, v4);
  }

  if (!a2)
  {
    Error::chuck("TSSupervectorScorer::score() - NULL supervector pointer", 0);
  }

  if (a3)
  {
    v5 = 0;
    v6 = *(this + 4);
    if (a3 < 8)
    {
      goto LABEL_10;
    }

    if ((v6 - a2) < 0x20)
    {
      goto LABEL_10;
    }

    v5 = a3 & 0xFFFFFFF8;
    v7 = (v6 + 16);
    v8 = a2 + 4;
    v9 = v5;
    do
    {
      v10 = *v8;
      *(v7 - 1) = *(v8 - 1);
      *v7 = v10;
      v7 += 2;
      v8 += 8;
      v9 -= 8;
    }

    while (v9);
    if (v5 != a3)
    {
LABEL_10:
      v11 = a3 - v5;
      v12 = v5;
      v13 = (v6 + v12 * 4);
      v14 = &a2[v12];
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v11;
      }

      while (v11);
    }
  }

  (*(**(this + 1) + 72))(*(this + 1), this + 24, this + 48, 0);
  return *(*(this + 7) + 4 * *(this + 4));
}

void NSATImpostor::~NSATImpostor(NSATImpostor *this)
{
  *this = &unk_283707130;
  *(this + 1) = &unk_28370A720;
  if (*(this + 3))
  {
    MEMORY[0x223DF1D00](*(this + 3), 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283707130;
  *(this + 1) = &unk_28370A720;
  if (*(this + 3))
  {
    MEMORY[0x223DF1D00](*(this + 3), 0x1000C8077774924);
  }
}

{
  *this = &unk_283707130;
  *(this + 1) = &unk_28370A720;
  if (*(this + 3))
  {
    MEMORY[0x223DF1D00](*(this + 3), 0x1000C8077774924);
  }
}

void NSATImpostor::NSATImpostor(NSATImpostor *this)
{
  *this = &unk_283707130;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_283707130;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void NSATImpostor::load(NSATImpostor *this, const NString *a2)
{
  *(this + 64) = 0;
  v2 = &unk_28370A720;
  v3 = 1;
  operator new[]();
}

void sub_223A70CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a21)
  {
    MEMORY[0x223DF1D00](a21, 0x1000C8052888210);
  }

  *(v22 - 96) = &unk_28370A720;
  v24 = *(v22 - 80);
  if (v24)
  {
    MEMORY[0x223DF1D00](v24, v21);
  }

  *(v22 - 72) = &unk_28370AA90;
  v25 = *(v22 - 64);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  _Unwind_Resume(exception_object);
}

void NSmartPointer<NBaseFile>::~NSmartPointer(void *a1)
{
  *a1 = &unk_28370AA90;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NSmartPointer<NBaseFile>::~NSmartPointer(void *result)
{
  *result = &unk_28370AA90;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void NFilePtr::~NFilePtr(NFilePtr *this)
{
  *this = &unk_28370AA90;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(*(this + 1));
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_28370AA90;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

uint64_t NSATImpostor::score(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v61[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *a4 = 0;
  if ((*(a1 + 64) & 1) == 0)
  {
    Error::chuck("NSATImpostor::score() - model not loaded", a2);
  }

  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    Error::chuck("NSATImpostor::score() - mismatched vector dimension (%d != %d)", a2, *(a2 + 16), v5);
  }

  if (v4)
  {
    v6 = *(a1 + 48);
    v7 = *(a2 + 8);
    if (v4 < 8)
    {
      v8 = 0;
      v9 = 0.0;
LABEL_10:
      v15 = v4 - v8;
      v16 = v8;
      v17 = &v6->f32[v16];
      v18 = &v7->f32[v16];
      do
      {
        v19 = *v18++;
        v20 = v19;
        v21 = *v17++;
        v9 = v9 + (v20 * v21);
        --v15;
      }

      while (v15);
      goto LABEL_12;
    }

    v8 = v4 & 0xFFFFFFF8;
    v10 = v6 + 1;
    v11 = v7 + 1;
    v9 = 0.0;
    v12 = v8;
    do
    {
      v13 = vmulq_f32(v11[-1], v10[-1]);
      v14 = vmulq_f32(*v11, *v10);
      v9 = (((((((v9 + v13.f32[0]) + v13.f32[1]) + v13.f32[2]) + v13.f32[3]) + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3];
      v10 += 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    if (v8 != v4)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  result = MEMORY[0x28223BE20](a1);
  v29 = (v61 - ((v28 + 15) & 0x7FFFFFFF0));
  v30 = *(result + 36);
  if (v30)
  {
    if (!v26)
    {
LABEL_35:
      v48 = 0.0;
      goto LABEL_41;
    }

    v31 = *(result + 56);
    v32 = (*(result + 40) - v26);
    v33 = *(v23 + 8);
    result = 4 * (v26 - 1);
    if (v26 >= 8)
    {
      v38 = 0;
      v39 = (v31 + 16);
      v40 = result + 4 * v32 + 4;
      do
      {
        v41 = 0.0;
        result = v39;
        v42 = (v33 + 4);
        v43 = v26 & 0xFFFFFFF8;
        do
        {
          v44 = vmulq_f32(*(result - 16), v42[-1]);
          v45 = vmulq_f32(*result, *v42);
          v41 = (((((((v41 + v44.f32[0]) + v44.f32[1]) + v44.f32[2]) + v44.f32[3]) + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3];
          v42 += 2;
          result += 32;
          v43 -= 8;
        }

        while (v43);
        if ((v26 & 0xFFFFFFF8) != v26)
        {
          result = v26 & 0xFFFFFFF8;
          do
          {
            v41 = v41 + (*(v31 + 4 * result) * v33[result]);
            ++result;
          }

          while (v26 != result);
        }

        v29->f32[v38++] = v41;
        v39 = (v39 + v40);
        v31 += v40;
      }

      while (v38 != v30);
    }

    else
    {
      v34 = *v33;
      v35 = (v31 + 12);
      v36 = v29;
      do
      {
        v37 = (*(v35 - 3) * v34) + 0.0;
        if (v26 != 1)
        {
          v37 = v37 + (*(v35 - 2) * v33[1]);
          if (v26 != 2)
          {
            v37 = v37 + (*(v35 - 1) * v33[2]);
            if (v26 != 3)
            {
              v37 = v37 + (*v35 * v33[3]);
              if (v26 != 4)
              {
                v37 = v37 + (v35[1] * v33[4]);
                if (v26 != 5)
                {
                  v37 = v37 + (v35[2] * v33[5]);
                  if (v26 != 6)
                  {
                    v37 = v37 + (v35[3] * v33[6]);
                  }
                }
              }
            }
          }
        }

        *v36++ = v37;
        v35 = (v35 + 4 * v32 + result + 4);
        --v30;
      }

      while (v30);
    }
  }

  if (!v26)
  {
    goto LABEL_35;
  }

  v46 = *(v23 + 8);
  if (v26 < 8)
  {
    v47 = 0;
    v48 = 0.0;
LABEL_39:
    v54 = v26 - v47;
    v55 = v47;
    v56 = &v29->f32[v55];
    v57 = &v46->f32[v55];
    do
    {
      v58 = *v57++;
      v59 = v58;
      v60 = *v56++;
      v48 = v48 + (v59 * v60);
      --v54;
    }

    while (v54);
    goto LABEL_41;
  }

  v47 = v26 & 0xFFFFFFF8;
  v49 = v29 + 1;
  v50 = v46 + 1;
  v48 = 0.0;
  v51 = v47;
  do
  {
    v52 = vmulq_f32(v50[-1], v49[-1]);
    v53 = vmulq_f32(*v50, *v49);
    v48 = (((((((v48 + v52.f32[0]) + v52.f32[1]) + v52.f32[2]) + v52.f32[3]) + v53.f32[0]) + v53.f32[1]) + v53.f32[2]) + v53.f32[3];
    v49 += 2;
    v50 += 2;
    v51 -= 8;
  }

  while (v51);
  if (v47 != v26)
  {
    goto LABEL_39;
  }

LABEL_41:
  *v24 = v27;
  *v25 = sqrtf(v48);
  return result;
}

float NSATImpostor::dotproduct(uint64_t a1, uint64_t a2, float32x4_t *a3, unsigned int *a4)
{
  v4 = *a4;
  if (!v4)
  {
    return 0.0;
  }

  v5 = *(a2 + 8);
  if (v4 <= 7)
  {
    v6 = 0;
    result = 0.0;
LABEL_8:
    v13 = v4 - v6;
    v14 = v6;
    v15 = &a3->f32[v6];
    v16 = &v5->f32[v14];
    do
    {
      v17 = *v16++;
      v18 = v17;
      v19 = *v15++;
      result = result + (v18 * v19);
      --v13;
    }

    while (v13);
    return result;
  }

  v6 = v4 & 0xFFFFFFF8;
  v8 = a3 + 1;
  v9 = v5 + 1;
  result = 0.0;
  v10 = v6;
  do
  {
    v11 = vmulq_f32(v9[-1], v8[-1]);
    v12 = vmulq_f32(*v9, *v8);
    result = (((((((result + v11.f32[0]) + v11.f32[1]) + v11.f32[2]) + v11.f32[3]) + v12.f32[0]) + v12.f32[1]) + v12.f32[2]) + v12.f32[3];
    v8 += 2;
    v9 += 2;
    v10 -= 8;
  }

  while (v10);
  if (v6 != v4)
  {
    goto LABEL_8;
  }

  return result;
}

void NSATImpostor::matrixvector(int a1, float32x4_t *a2, uint64_t a3, float *a4, unsigned int *a5, unsigned int *a6, _DWORD *a7)
{
  v7 = *a5;
  if (v7)
  {
    v8 = *a6;
    if (v8)
    {
      v9 = (*a7 - v8);
      v10 = *(a3 + 8);
      v11 = 4 * (v8 - 1);
      if (v8 > 7)
      {
        if ((v8 & 0xFFFFFFF8) == v8)
        {
          v14 = 0;
          v15 = (v10 + 4);
          v16 = a2 + 1;
          v17 = v11 + 4 * v9 + 4;
          do
          {
            v18 = 0.0;
            v19 = v16;
            v20 = v15;
            v21 = v8;
            do
            {
              v22 = vmulq_f32(v19[-1], v20[-1]);
              v23 = vmulq_f32(*v19, *v20);
              v18 = (((((((v18 + v22.f32[0]) + v22.f32[1]) + v22.f32[2]) + v22.f32[3]) + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3];
              v20 += 2;
              v19 += 2;
              v21 -= 8;
            }

            while (v21);
            a4[v14++] = v18;
            v16 = (v16 + v17);
          }

          while (v14 != v7);
        }

        else
        {
          v24 = 0;
          v25 = a2 + 1;
          v26 = v11 + 4 * v9 + 4;
          do
          {
            v27 = 0.0;
            v28 = v25;
            v29 = (v10 + 4);
            v30 = v8 & 0xFFFFFFF8;
            do
            {
              v31 = vmulq_f32(v28[-1], v29[-1]);
              v32 = vmulq_f32(*v28, *v29);
              v27 = (((((((v27 + v31.f32[0]) + v31.f32[1]) + v31.f32[2]) + v31.f32[3]) + v32.f32[0]) + v32.f32[1]) + v32.f32[2]) + v32.f32[3];
              v29 += 2;
              v28 += 2;
              v30 -= 8;
            }

            while (v30);
            v33 = v8 & 0xFFFFFFF8;
            do
            {
              v27 = v27 + (a2->f32[v33] * v10[v33]);
              ++v33;
            }

            while (v8 != v33);
            a4[v24++] = v27;
            v25 = (v25 + v26);
            a2 = (a2 + v26);
          }

          while (v24 != v7);
        }
      }

      else
      {
        v12 = &a2->f32[3];
        do
        {
          v13 = (*(v12 - 3) * *v10) + 0.0;
          if (v8 != 1)
          {
            v13 = v13 + (*(v12 - 2) * v10[1]);
            if (v8 != 2)
            {
              v13 = v13 + (*(v12 - 1) * v10[2]);
              if (v8 != 3)
              {
                v13 = v13 + (*v12 * v10[3]);
                if (v8 != 4)
                {
                  v13 = v13 + (v12[1] * v10[4]);
                  if (v8 != 5)
                  {
                    v13 = v13 + (v12[2] * v10[5]);
                    if (v8 != 6)
                    {
                      v13 = v13 + (v12[3] * v10[6]);
                    }
                  }
                }
              }
            }
          }

          *a4++ = v13;
          v12 = (v12 + 4 * v9 + v11 + 4);
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      bzero(a4, 4 * v7);
    }
  }
}

void NSATSpeaker::~NSATSpeaker(NSATSpeaker *this)
{
  *this = &unk_283707160;
  *(this + 13) = &unk_28370A720;
  v2 = *(this + 15);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *(this + 10) = &unk_28370A720;
  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  *(this + 1) = &unk_28370A720;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283707160;
  *(this + 13) = &unk_28370A720;
  v2 = *(this + 15);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *(this + 10) = &unk_28370A720;
  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  *(this + 1) = &unk_28370A720;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }
}

{
  *this = &unk_283707160;
  *(this + 13) = &unk_28370A720;
  v2 = *(this + 15);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *(this + 10) = &unk_28370A720;
  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  *(this + 1) = &unk_28370A720;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }
}

void NSATSpeaker::NSATSpeaker(NSATSpeaker *this)
{
  *this = &unk_283707160;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_283707160;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void sub_223A71A64(_Unwind_Exception *exception_object)
{
  v2[10] = v4;
  v6 = v2[12];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v1);
  }

  v2[1] = v3;
  v7 = v2[3];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A71BD4(_Unwind_Exception *exception_object)
{
  v2[10] = v4;
  v6 = v2[12];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v1);
  }

  v2[1] = v3;
  v7 = v2[3];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NSATSpeaker::configure(NSATSpeaker *this, const unsigned int *a2, const unsigned int *a3, const BOOL *a4, const BOOL *a5, const BOOL *a6, float *a7, const unsigned int *a8, const NString *a9, const NString *a10)
{
  if ((this + 80) != a9)
  {
    (*(*(this + 10) + 64))(this + 80, *(a9 + 2), a9 + 8);
  }

  if (!*(a10 + 2))
  {
    operator new[]();
  }

  result = this + 104;
  if ((this + 104) != a10)
  {
    result = (*(*result + 64))(result, *(a10 + 2), a10 + 8);
  }

  *(this + 73) = *a5;
  v19 = *a7;
  *(this + 16) = *a7;
  *(this + 74) = *a6;
  v20 = 0;
  if (v19 < 0.0 || (v20 = 1120403456, v19 > 100.0))
  {
    *(this + 16) = v20;
  }

  v21 = 0;
  *(this + 17) = *a8;
  v22 = *a2;
  *(this + 8) = *a2;
  *(this + 9) = 0;
  v23 = *a3;
  *(this + 10) = *a3;
  *(this + 11) = (v22 + 3) & 0xFFFFFFFC;
  *(this + 12) = (v23 + 3) & 0xFFFFFFFC;
  *(this + 72) = *a4;
  *(this + 75) = 1;
  *(this + 77) = 256;
  if (*(this + 22) >= 7u)
  {
    v24 = *(this + 12);
    v25 = *v24;
    v26 = *(v24 + 3);
    v21 = v25 == 1684957549 && v26 == 980968804;
  }

  *(this + 76) = v21;
  return result;
}

void sub_223A71F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x223DF1D00](a16, 0x1000C8077774924);
  }

  if (a13)
  {
    MEMORY[0x223DF1D00](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NSATSpeaker::loadOrInit(NSATSpeaker *this, const char *a2, uint64_t a3, unsigned int *a4)
{
  if ((*(this + 75) & 1) == 0)
  {
    Error::chuck("NSATSpeaker::loadOrInit() - not configured", a2);
  }

  if (*(this + 76) != 1)
  {
    v6 = fopen(*(this + 12), "r");
    if (v6)
    {
      fclose(v6);

      NSATSpeaker::read(this);
    }

    NSATSpeaker::reset(this, v7);
  }

  return NSATSpeaker::useModelFromMemory(this, a2, a3, a4);
}

uint64_t NSATSpeaker::useModelFromMemory(NSATSpeaker *this, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *(this + 77) = 0;
  LODWORD(v11) = 0;
  v10 = 0;
  result = NMemoryFile::getMemoryBlockParams((this + 80), &v10, &v11, a4);
  if ((result & 1) == 0)
  {
    Error::chuck("NSATSpeaker::useModelFromMemory() - %s does not define a memory block", v6, *(this + 12));
  }

  v7 = *(this + 8);
  v8 = (v11 / v7) >> 2;
  if (v11 != 4 * (v8 * v7))
  {
    Error::chuck("NSATSpeaker::useModelFromMemory() - Speaker vector block size (%d) not a multiple of dimen (%d*4)", v6, v11, v7);
  }

  v9 = *(this + 10);
  if (v8 > v9)
  {
    Error::chuck("NSATSpeaker::useModelFromMemory() - Number of speaker vectors (%d) exceeds maximum (%d)", v6, v8, v9);
  }

  *(this + 9) = v8;
  *(this + 11) = v7;
  *(this + 12) = v8;
  *(this + 7) = v10;
  *(this + 77) = 1;
  return result;
}

void NSATSpeaker::read(NSATSpeaker *this)
{
  v3 = *MEMORY[0x277D85DE8];
  *(this + 77) = 0;
  v1 = &unk_28370A720;
  v2 = 1;
  operator new[]();
}

void sub_223A726E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, 0x1000C8052888210);
  }

  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v15);
  }

  NFile::~NFile(va);
  _Unwind_Resume(a1);
}

void NSATSpeaker::reset(NSATSpeaker *this, const char *a2)
{
  if (*(this + 75))
  {
    if (*(this + 76) != 1)
    {
      *(this + 9) = 0;
      v2 = *(this + 11) * *(this + 12);
      v3 = &unk_28370A720;
      LODWORD(v4) = 4 * v2;
      operator new[]();
    }

    Error::chuck("NSATSpeaker::reset() - model readonly", a2);
  }

  Error::chuck("NSATSpeaker::reset() - not configured", a2);
}

void sub_223A72914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void NSATSpeaker::score(uint64_t a1, uint64_t a2, __int32 *a3, __int32 *a4)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 77) & 1) == 0)
  {
    Error::chuck("NSATSpeaker::score() - model not loaded", a2);
  }

  v6 = *(a1 + 32);
  if (*(a2 + 16) != v6)
  {
    Error::chuck("NSATSpeaker::score() - vector wrong size (%d != %d)", a2, *(a2 + 16), v6);
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v30 - ((v8 + 15) & 0x7FFFFFFF0));
  v10 = cblas_sgemv_NEWLAPACK_ILP64();
  v14 = *(a1 + 36);
  if (v14)
  {
    v12.i32[0] = *a3;
    v13.i32[0] = *a4;
    if (v14 <= 7)
    {
      v15 = 0;
LABEL_9:
      v21 = v14 - v15;
      v22 = &v9[v15];
      do
      {
        *v22 = (*v22 - *v12.i32) / *v13.i32;
        ++v22;
        --v21;
      }

      while (v21);
      goto LABEL_11;
    }

    v15 = v14 & 0xFFFFFFF8;
    v16 = vdupq_lane_s32(v12, 0);
    v17 = vdupq_lane_s32(v13, 0);
    v18 = (v9 + 4);
    v19 = v15;
    do
    {
      v20 = vdivq_f32(vsubq_f32(*v18, v16), v17);
      v18[-1] = vdivq_f32(vsubq_f32(v18[-1], v16), v17);
      *v18 = v20;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v15 != v14)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a1 + 68))
  {
    NSATSpeaker::findTopNAverage(v10, v9, (a1 + 36), (a1 + 68), (a1 + 73), (a1 + 64));
    return;
  }

  if (*(a1 + 73) == 1)
  {
    NSATSpeaker::findPercentile(v10, v9, (a1 + 36), (a1 + 64));
    return;
  }

  if (v14)
  {
    if (v14 > 7)
    {
      v23 = v14 & 0xFFFFFFF8;
      v25 = v9 + 4;
      v24 = 0.0;
      v26 = v23;
      do
      {
        v24 = (((((((v24 + COERCE_FLOAT(*(v25 - 1))) + COERCE_FLOAT(HIDWORD(*(v25 - 2)))) + COERCE_FLOAT(*(v25 - 1))) + COERCE_FLOAT(HIDWORD(*(v25 - 1)))) + COERCE_FLOAT(*v25)) + COERCE_FLOAT(HIDWORD(*v25))) + COERCE_FLOAT(*(v25 + 1))) + COERCE_FLOAT(HIDWORD(*v25));
        v25 += 8;
        v26 -= 8;
      }

      while (v26);
      if (v23 == v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0.0;
    }

    v27 = v14 - v23;
    v28 = &v9[v23];
    do
    {
      v29 = *v28++;
      v24 = v24 + v29;
      --v27;
    }

    while (v27);
  }

LABEL_24:
  if (*(a1 + 74) == 1)
  {
    NSATSpeaker::calcModelNormScale(a1, v11);
  }
}

float NSATSpeaker::findTopNAverage(NSATSpeaker *this, const float *a2, const unsigned int *a3, const unsigned int *a4, const BOOL *a5, const float *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a3 >= *a4)
  {
    v6 = *a4;
  }

  else
  {
    v6 = *a3;
  }

  v31 = v6;
  if (!v6)
  {
    return 0.0;
  }

  v9 = MEMORY[0x28223BE20](this);
  v12 = (v11 + 15) & 0x7FFFFFFF0;
  v13 = &v30[-v12];
  v15 = *v14;
  if (v15)
  {
    v9 = memcpy(&v30[-v12], v10, 4 * v15);
    v16 = v15 - 1;
    if (v15 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = -1;
  }

  do
  {
    v21 = 0;
    v22 = *v13;
    v23 = v16;
    v24 = v13 + 1;
    do
    {
      if (v22 > *v24)
      {
        *(v24 - 1) = *v24;
        *v24 = v22;
        v21 = 1;
      }

      else
      {
        v22 = *v24;
      }

      ++v24;
      --v23;
    }

    while (v23);
  }

  while ((v21 & 1) != 0);
LABEL_7:
  v17 = (v15 - v6);
  if (*a5)
  {
    return NSATSpeaker::findPercentile(v9, &v13[v17], &v31, a6);
  }

  if (v6 >= 8)
  {
    v19 = v6 & 0xFFFFFFF8;
    v25 = &v13[v17 + 4];
    v20 = 0.0;
    v26 = v19;
    do
    {
      v20 = (((((((v20 + COERCE_FLOAT(*(v25 - 16))) + COERCE_FLOAT(HIDWORD(*(v25 - 16)))) + COERCE_FLOAT(*(v25 - 8))) + COERCE_FLOAT(HIDWORD(*(v25 - 16)))) + COERCE_FLOAT(*v25)) + COERCE_FLOAT(HIDWORD(*v25))) + COERCE_FLOAT(*(v25 + 8))) + COERCE_FLOAT(HIDWORD(*v25));
      v25 += 32;
      v26 -= 8;
    }

    while (v26);
    if (v19 == v6)
    {
      return v20 / v6;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
  }

  v27 = v6 - v19;
  v28 = &v13[v19 + v17];
  do
  {
    v29 = *v28++;
    v20 = v20 + v29;
    --v27;
  }

  while (v27);
  return v20 / v6;
}

float NSATSpeaker::findPercentile(NSATSpeaker *this, const float *a2, const unsigned int *a3, const float *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    return 0.0;
  }

  MEMORY[0x28223BE20](this);
  v7 = (v6 + 15) & 0x7FFFFFFF0;
  v8 = (v19 - v7);
  v10 = *v9;
  if (!v10)
  {
    v11 = -1;
    do
    {
LABEL_9:
      v13 = 0;
      v14 = *v8;
      v15 = v11;
      v16 = v8 + 1;
      do
      {
        if (v14 > *v16)
        {
          *(v16 - 1) = *v16;
          *v16 = v14;
          v13 = 1;
        }

        else
        {
          v14 = *v16;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }

    while ((v13 & 1) != 0);
    v11 = v10 - 1;
    goto LABEL_15;
  }

  memcpy(v19 - v7, v5, 4 * v10);
  v11 = v10 - 1;
  if (v10 != 1)
  {
    goto LABEL_9;
  }

LABEL_15:
  v17 = *a4 * 0.01 * v11;
  v18 = v17 + 1;
  if (v18 >= v10)
  {
    return v8[v11];
  }

  else
  {
    return ((v17 - v17) * v8[v18]) + (1.0 - (v17 - v17)) * v8[v17];
  }
}

float NSATSpeaker::calcModelNormScale(NSATSpeaker *this, const char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(this + 75) & 1) == 0)
  {
    Error::chuck("NSATSpeaker::reset() - not configured", a2);
  }

  if (!*(this + 9))
  {
    return 0.0;
  }

  __C = 0.0;
  v3 = MEMORY[0x28223BE20](this);
  v5 = (&__A - ((v4 + 15) & 0x7FFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&__A - ((v6 + 15) & 0x7FFFFFFF0));
  v8 = *(this + 9);
  __A = 1.0 / v8;
  vDSP_vfill(&__A, v5, 1, v8);
  v9 = 0.0;
  cblas_sgemv_NEWLAPACK_ILP64();
  vDSP_svesq(v7, 1, &__C, *(this + 8));
  if (__C > 0.0)
  {
    return sqrtf(*(this + 8) / __C);
  }

  return v9;
}

float NSATSpeaker::findMean(NSATSpeaker *this, const float *a2, const unsigned int *a3)
{
  v3 = *a3;
  if (!v3)
  {
    return 0.0;
  }

  if (v3 > 7)
  {
    v4 = v3 & 0xFFFFFFF8;
    v7 = a2 + 4;
    v5 = 0.0;
    v8 = v4;
    do
    {
      v5 = (((((((v5 + COERCE_FLOAT(*(v7 - 1))) + COERCE_FLOAT(HIDWORD(*(v7 - 2)))) + COERCE_FLOAT(*(v7 - 1))) + COERCE_FLOAT(HIDWORD(*(v7 - 1)))) + COERCE_FLOAT(*v7)) + COERCE_FLOAT(HIDWORD(*v7))) + COERCE_FLOAT(*(v7 + 1))) + COERCE_FLOAT(HIDWORD(*v7));
      v7 += 8;
      v8 -= 8;
    }

    while (v8);
    if (v4 == v3)
    {
      return v5 / v3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
  }

  v9 = v3 - v4;
  v10 = &a2[v4];
  do
  {
    v11 = *v10++;
    v5 = v5 + v11;
    --v9;
  }

  while (v9);
  return v5 / v3;
}

_BYTE *NSATSpeaker::insert(_BYTE *result, uint64_t a2)
{
  if ((result[77] & 1) == 0)
  {
    Error::chuck("NSATSpeaker::insert() - model not initialized", a2);
  }

  if (result[76] == 1)
  {
    Error::chuck("NSATSpeaker::insert() - model readonly", a2);
  }

  v2 = *(a2 + 16);
  v3 = *(result + 8);
  if (v2 != v3)
  {
    Error::chuck("NSATSpeaker::insert() - vector wrong size (%d != %d)", a2, *(a2 + 16), v3);
  }

  v4 = *(result + 9);
  if (v4 < *(result + 10))
  {
    if (!*(result + 4))
    {
      Error::chuck("Index %d outside of range [0,%d]", a2, 0, 0xFFFFFFFFLL);
    }

    v5 = result;
    result = memcpy((*(result + 3) + 4 * v4 * *(result + 11)), *(a2 + 8), 4 * v2);
    ++*(v5 + 9);
    v5[78] = 1;
  }

  return result;
}

void *NSATSpeaker::remove(NSATSpeaker *this, const char *a2)
{
  if ((*(this + 77) & 1) == 0)
  {
    Error::chuck("NSATSpeaker::deleteVector() - model not initialized", a2);
  }

  if (*(this + 76) == 1)
  {
    Error::chuck("NSATSpeaker::deleteVector() - model readonly", a2);
  }

  v3 = *a2;
  v4 = *(this + 9);
  if (*a2 >= v4)
  {
    Error::chuck("NSATSpeaker::deleteVector() - index out of range (%u >= %u)", a2, *a2, v4);
  }

  if (!*(this + 4))
  {
    Error::chuck("Index %d outside of range [0,%d]", a2, 0, 0xFFFFFFFFLL);
  }

  v5 = *(this + 11);
  v6 = (*(this + 3) + 4 * (v3 * v5));
  result = memmove(v6, &v6[4 * v5], 4 * ((v4 + ~v3) * v5));
  --*(this + 9);
  *(this + 78) = 1;
  return result;
}

void NSATSpeaker::getVector(uint64_t a1, const char *a2, unsigned int *a3)
{
  if (*(a1 + 77))
  {
    if (*(a1 + 76) != 1)
    {
      v3 = *(a1 + 36);
      if (*a3 < v3)
      {
        operator new[]();
      }

      Error::chuck("NSATSpeaker::getVector() - index out of range (%u >= %u)", a2, *a3, v3);
    }

    Error::chuck("NSATSpeaker::getVector() - model readonly", a2);
  }

  Error::chuck("NSATSpeaker::getVector() - model not initialized", a2);
}

void NSATSpeaker::write(NSATSpeaker *this, const char *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(this + 76) != 1)
  {
    if (*(this + 77))
    {
      v2 = &unk_28370A720;
      v3 = 1;
      operator new[]();
    }

    Error::chuck("NSATSpeaker::write() - model not initialized", a2);
  }

  Error::chuck("NSATSpeaker::write() - model readonly", a2);
}

void sub_223A73AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  NFile::~NFile(va);
  _Unwind_Resume(a1);
}

NSATSpeaker *NSATSpeaker::writeIfModified(NSATSpeaker *this, const char *a2)
{
  if (*(this + 78) == 1)
  {
    NSATSpeaker::write(this, a2);
  }

  return this;
}

void NSATSpeaker::matrixvector(int a1, float32x4_t *a2, uint64_t a3, float *a4, unsigned int *a5, unsigned int *a6, _DWORD *a7)
{
  v7 = *a5;
  if (v7)
  {
    v8 = *a6;
    if (v8)
    {
      v9 = (*a7 - v8);
      v10 = *(a3 + 8);
      v11 = 4 * (v8 - 1);
      if (v8 > 7)
      {
        if ((v8 & 0xFFFFFFF8) == v8)
        {
          v14 = 0;
          v15 = (v10 + 4);
          v16 = a2 + 1;
          v17 = v11 + 4 * v9 + 4;
          do
          {
            v18 = 0.0;
            v19 = v16;
            v20 = v15;
            v21 = v8;
            do
            {
              v22 = vmulq_f32(v19[-1], v20[-1]);
              v23 = vmulq_f32(*v19, *v20);
              v18 = (((((((v18 + v22.f32[0]) + v22.f32[1]) + v22.f32[2]) + v22.f32[3]) + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3];
              v20 += 2;
              v19 += 2;
              v21 -= 8;
            }

            while (v21);
            a4[v14++] = v18;
            v16 = (v16 + v17);
          }

          while (v14 != v7);
        }

        else
        {
          v24 = 0;
          v25 = a2 + 1;
          v26 = v11 + 4 * v9 + 4;
          do
          {
            v27 = 0.0;
            v28 = v25;
            v29 = (v10 + 4);
            v30 = v8 & 0xFFFFFFF8;
            do
            {
              v31 = vmulq_f32(v28[-1], v29[-1]);
              v32 = vmulq_f32(*v28, *v29);
              v27 = (((((((v27 + v31.f32[0]) + v31.f32[1]) + v31.f32[2]) + v31.f32[3]) + v32.f32[0]) + v32.f32[1]) + v32.f32[2]) + v32.f32[3];
              v29 += 2;
              v28 += 2;
              v30 -= 8;
            }

            while (v30);
            v33 = v8 & 0xFFFFFFF8;
            do
            {
              v27 = v27 + (a2->f32[v33] * v10[v33]);
              ++v33;
            }

            while (v8 != v33);
            a4[v24++] = v27;
            v25 = (v25 + v26);
            a2 = (a2 + v26);
          }

          while (v24 != v7);
        }
      }

      else
      {
        v12 = &a2->f32[3];
        do
        {
          v13 = (*(v12 - 3) * *v10) + 0.0;
          if (v8 != 1)
          {
            v13 = v13 + (*(v12 - 2) * v10[1]);
            if (v8 != 2)
            {
              v13 = v13 + (*(v12 - 1) * v10[2]);
              if (v8 != 3)
              {
                v13 = v13 + (*v12 * v10[3]);
                if (v8 != 4)
                {
                  v13 = v13 + (v12[1] * v10[4]);
                  if (v8 != 5)
                  {
                    v13 = v13 + (v12[2] * v10[5]);
                    if (v8 != 6)
                    {
                      v13 = v13 + (v12[3] * v10[6]);
                    }
                  }
                }
              }
            }
          }

          *a4++ = v13;
          v12 = (v12 + 4 * v9 + v11 + 4);
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      bzero(a4, 4 * v7);
    }
  }
}

void NSATSpeaker::bubbleSort(NSATSpeaker *this, const float *a2, float *a3, const unsigned int *a4)
{
  v4 = *a4;
  if (v4)
  {
    if (v4 >= 8 && (a3 - a2) > 0x1F)
    {
      v6 = v4 & 0xFFFFFFF8;
      v8 = a3 + 4;
      v9 = a2 + 4;
      v10 = v6;
      do
      {
        v11 = *v9;
        *(v8 - 1) = *(v9 - 1);
        *v8 = v11;
        v8 += 8;
        v9 += 8;
        v10 -= 8;
      }

      while (v10);
      if (v6 == v4)
      {
LABEL_13:
        v7 = v4 - 1;
        if (!v7)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v12 = v4 - v6;
    v13 = v6;
    v14 = &a3[v6];
    v15 = &a2[v13];
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v12;
    }

    while (v12);
    goto LABEL_13;
  }

  v7 = -1;
  do
  {
LABEL_16:
    v17 = 0;
    v18 = *a3;
    v19 = v7;
    v20 = a3 + 1;
    do
    {
      if (v18 > *v20)
      {
        *(v20 - 1) = *v20;
        *v20 = v18;
        v17 = 1;
      }

      else
      {
        v18 = *v20;
      }

      ++v20;
      --v19;
    }

    while (v19);
  }

  while ((v17 & 1) != 0);
}

void NBase64File::openNamed(NBase64File *this, const NString *a2, const NString *a3, const NString *a4)
{
  (*(*this + 24))(this);
  if (*(a4 + 2) == 1 && **(a4 + 2) == 114)
  {
    *(this + 17) = 0;
    base64_decode(a3);
  }

  v7 = *(a4 + 2);
  if (NString::operator==(a4, "w"))
  {
    Error::chuck("NBase64File::open() - does not support write mode %s", v8, v7);
  }

  Error::chuck("NBase64File::open() - unrecognized file mode %s", v8, v7);
}

void sub_223A74000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NBase64File::getPosition(NBase64File *this)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NBase64File::getPosition() - cannot get position, file %s is not open", v2, *(this + 3));
  }

  return *(this + 16);
}

uint64_t NBase64File::setPosition(NBase64File *this, const unsigned int *a2)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NBase64File::getPosition() - cannot set position, file %s is not open", v4, *(this + 3));
  }

  v5 = *a2;
  if (*a2 > *(this + 12))
  {
    v5 = -1;
  }

  *(this + 16) = v5;
  return (*(*this + 40))(this) ^ 1;
}

void sub_223A7426C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v14);
  }

  _Unwind_Resume(exception_object);
}

void NBase64File::readLine(NBase64File *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 17))
    {
      if (((*(*this + 40))(this) & 1) == 0)
      {
        if (*(this + 16) < *(this + 12))
        {
          v6 = &unk_28370A720;
          v7 = 1;
          operator new[]();
        }

        *(this + 16) = -1;
      }

      *a2 = &unk_28370A720;
      *(a2 + 8) = 0;
      operator new[]();
    }

    Error::chuck("NBase64File::readLine() - file %s not opened in read mode", v5, *(this + 3));
  }

  Error::chuck("NBase64File::readLine() - file %s is not open", v5, *(this + 3));
}

void sub_223A74864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x223DF1D00](a16, v18);
  }

  *v16 = v17;
  v20 = v16[2];
  if (v20)
  {
    MEMORY[0x223DF1D00](v20, v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NBase64File::read(NBase64File *this, const unsigned int *a2, NString *a3)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NBase64File::read() - file %s is not open", v6, *(this + 3));
  }

  if (*(this + 17))
  {
    Error::chuck("NBase64File::read() - file %s not opened in read mode", v6, *(this + 3));
  }

  if (*a2 == -1)
  {
    Error::chuck("NBase64File::read() - attempting impossibly long read in file %s", v6, *(this + 3));
  }

  if ((*(*this + 40))(this))
  {
    __n_4 = 0;
    (*(*a3 + 56))(a3, &__n_4);
    return 0;
  }

  else
  {
    v8 = *(this + 16);
    v9 = *a2 + v8;
    v10 = __CFADD__(*a2, v8);
    v11 = *(this + 12);
    if (v9 > v11)
    {
      v10 = 1;
    }

    v12 = !v10;
    if (v10)
    {
      v13 = -1;
    }

    else
    {
      v13 = *a2 + v8;
    }

    *(this + 16) = v13;
    if (!v12)
    {
      v9 = v11;
    }

    __n = v9 - v8;
    v14 = (*(*a3 + 56))(a3, &__n);
    memcpy(v14, (*(this + 7) + v8), __n);
    return *(a3 + 2);
  }
}

void NBase64File::read(NBase64File *this@<X0>, const unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 17))
    {
      if (*a2 != -1)
      {
        if ((*(*this + 40))(this))
        {
          *a3 = &unk_28370A720;
          *(a3 + 8) = 0;
          operator new[]();
        }

        v7 = *(this + 16);
        v8 = *a2 + v7;
        v9 = __CFADD__(*a2, v7);
        v11 = *a2 + v7;
        v12 = v7;
        *(this + 16) = v8;
        if (v8 > *(this + 12) || v9)
        {
          v11 = *(this + 12);
          *(this + 16) = -1;
        }

        NString::slice((this + 40), &v12, &v11, a3);
      }

      Error::chuck("NBase64File::read() - attempting impossibly long read in file %s", v6, *(this + 3));
    }

    Error::chuck("NBase64File::read() - file %s not opened in read mode", v6, *(this + 3));
  }

  Error::chuck("NBase64File::read() - file %s is not open", v6, *(this + 3));
}

void NBase64File::read(NBase64File *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(*this + 40))(this))
  {
    *a2 = &unk_28370A720;
    *(a2 + 8) = 0;
    operator new[]();
  }

  v5 = *(this + 16);
  *(this + 16) = -1;
  v6 = *(this + 12);
  if (v6 >= v5)
  {
    v7 = *(this + 7);
    *a2 = &unk_28370A720;
    if (v7)
    {
      *(a2 + 8) = v6 - v5;
      operator new[]();
    }

    Error::chuck("Null pointer passed to string constructor", v4);
  }

  Error::chuck("Index %d outside of range [0,%d]", v4, v5, v6);
}

uint64_t NBase64File::good(NBase64File *this)
{
  if ((*(*this + 40))(this))
  {
    return 0;
  }

  v3 = *(*this + 32);

  return v3(this);
}

uint64_t NBase64File::close(NBase64File *this)
{
  v1 = this;
  v4 = 0;
  (*(*(this + 5) + 64))();
  v5 = 0;
  v2 = *(v1 + 1);
  v1 = (v1 + 8);
  result = (*(v2 + 64))(v1, "", &v5);
  *(v1 + 64) = 0;
  *(v1 + 14) = 0;
  return result;
}

void NBase64File::open(NBase64File *this, const NString *a2, const NString *a3)
{
  v3 = &unk_28370A720;
  v4 = 17;
  operator new[]();
}

void sub_223A74F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void NBase64File::~NBase64File(NBase64File *this)
{
  *this = &unk_283707190;
  v2 = *(this + 5);
  v6 = 0;
  (*(v2 + 64))(this + 40, "", &v6);
  v3 = *(this + 1);
  v7 = 0;
  (*(v3 + 64))(this + 8, "", &v7);
  *(this + 72) = 0;
  *(this + 16) = 0;
  *(this + 5) = &unk_28370A720;
  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283707190;
  v2 = *(this + 5);
  v6 = 0;
  (*(v2 + 64))(this + 40, "", &v6);
  v3 = *(this + 1);
  v7 = 0;
  (*(v3 + 64))(this + 8, "", &v7);
  *(this + 72) = 0;
  *(this + 16) = 0;
  *(this + 5) = &unk_28370A720;
  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }
}

{
  *this = &unk_283707190;
  v2 = *(this + 5);
  v6 = 0;
  (*(v2 + 64))(this + 40, "", &v6);
  v3 = *(this + 1);
  v7 = 0;
  (*(v3 + 64))(this + 8, "", &v7);
  *(this + 72) = 0;
  *(this + 16) = 0;
  *(this + 5) = &unk_28370A720;
  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }
}

void NBase64File::NBase64File(NBase64File *this)
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

void sub_223A75348(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  v1[1] = v4;
  v6 = v1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A75468(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  v1[1] = v4;
  v6 = v1[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v2);
  }

  _Unwind_Resume(exception_object);
}

void NBase64File::NBase64File(NBase64File *this, const NString *a2, const NString *a3)
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

void sub_223A755CC(_Unwind_Exception *exception_object)
{
  v2[5] = v5;
  v7 = v2[7];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  *v2 = v3;
  v2[1] = v4;
  v8 = v2[3];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A7574C(_Unwind_Exception *exception_object)
{
  v2[5] = v5;
  v7 = v2[7];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  *v2 = v3;
  v2[1] = v4;
  v8 = v2[3];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, v1);
  }

  _Unwind_Resume(exception_object);
}

void NBase64File::NBase64File(NBase64File *this, const NString *a2, const NString *a3, const NString *a4)
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

void sub_223A758D4(_Unwind_Exception *exception_object)
{
  v2[5] = v5;
  v7 = v2[7];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  *v2 = v3;
  v2[1] = v4;
  v8 = v2[3];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A75A5C(_Unwind_Exception *exception_object)
{
  v2[5] = v5;
  v7 = v2[7];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  *v2 = v3;
  v2[1] = v4;
  v8 = v2[3];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, v1);
  }

  _Unwind_Resume(exception_object);
}

void NLRHMMTraceback::NLRHMMTraceback(NLRHMMTraceback *this, const unsigned int *a2, const unsigned int *a3)
{
  N2DArray<BOOL>::N2DArray(this);
}

{
  N2DArray<BOOL>::N2DArray(this);
}

void N2DArray<BOOL>::~N2DArray(void *a1)
{
  *a1 = &unk_2837072A0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = &unk_283709BA8;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1091C80FBD4B0D6);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *N2DArray<BOOL>::~N2DArray(void *result)
{
  *result = &unk_2837072A0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = &unk_283709BA8;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1091C80FBD4B0D6);
    return v2;
  }

  return result;
}

uint64_t NLRHMMTraceback::resize(NLRHMMTraceback *this, char *a2, const unsigned int *a3)
{
  if (*(this + 11))
  {
    Error::chuck("NLRHMMTraceback::resize() - cannot resize unless empty", a2, a3);
  }

  if (!*a2)
  {
    Error::chuck("NLRHMMTraceback::resize() - must be at least 1 frame in buffer", a2, a3);
  }

  *(this + 5) = *a2;
  *(this + 6) = *a3;
  v6 = this + 24;
  result = NArray<NArray<BOOL>>::resize(this, a2);
  if (*(this + 5))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      result = (*(*(*(this + 1) + v8) + 32))(*(this + 1) + v8, v6);
      ++v9;
      v8 += 24;
    }

    while (v9 < *(this + 5));
  }

  *(this + 8) = *a2;
  v10 = *a3;
  *(this + 5) = 0;
  *(this + 9) = v10;
  return result;
}

uint64_t NLRHMMTraceback::drop(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  if (*(a2 + 16) != v2)
  {
    Error::chuck("NLRHMMTraceback::drop() - mismatched number of states (%d != %d)", a2, *(a2 + 16), v2);
  }

  v4 = *(a1 + 8) + 24 * *(a1 + 40);
  result = (*(*v4 + 16))(v4);
  v7 = *(a1 + 40);
  v6 = *(a1 + 44);
  v8 = *(a1 + 32);
  if (v7 + 1 < v8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 40) = v9;
  if (v6 < v8)
  {
    *(a1 + 44) = v6 + 1;
  }

  return result;
}

uint64_t NLRHMMTraceback::stateAlignment(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 16);
  v4 = *(result + 36);
  if (v3 != v4)
  {
    Error::chuck("NLRHMMTraceback::stateAlignment() - mismatched number of states in duration array (%d != %d)", a2, *(a2 + 16), v4);
  }

  v5 = *(result + 44);
  v6 = v5 - *a3;
  if (v5 <= *a3)
  {
    if (v3)
    {
      v15 = 0;
      v16 = *(a2 + 8);
      do
      {
        *(v16 + 4 * v15++) = 0;
      }

      while (v15 < *(result + 36));
    }
  }

  else if (v3)
  {
    v7 = 0;
    v8 = v3 - 1;
    v9 = *(result + 40) + ~*a3;
    v10 = *(result + 32);
    v11 = __CFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      v9 = v12;
    }

    v13 = *(result + 8);
    v14 = *(a2 + 8);
    do
    {
      ++v7;
      if (*(*(v13 + 24 * v9 + 8) + v8) == 1)
      {
        *(v14 + 4 * v8--) = v7;
        v3 = *(result + 36);
        if (v8 >= v3)
        {
          break;
        }

        v7 = 0;
      }

      if (!v9)
      {
        v9 = *(result + 32);
      }

      --v9;
      --v6;
    }

    while (v6);
    if (v8 < v3)
    {
      v17 = *(a2 + 8);
      do
      {
        *(v17 + 4 * v8--) = 0;
      }

      while (v8 < *(result + 36));
    }
  }

  return result;
}

void NRingDropBuffer::NRingDropBuffer(NRingDropBuffer *this, char *a2)
{
  *this = &unk_2837076F0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  if (!*a2)
  {
    Error::chuck("NRingDropBuffer::resize() - cannot set size < 1", a2);
  }

  NArray<NFrame>::resize(this, a2);
  *(this + 3) = 0;
}

{
  *this = &unk_2837076F0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  if (!*a2)
  {
    Error::chuck("NRingDropBuffer::resize() - cannot set size < 1", a2);
  }

  NArray<NFrame>::resize(this, a2);
  *(this + 3) = 0;
}

void *NArray<NFrame>::~NArray(void *result)
{
  *result = &unk_2837076F0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = off_28370A538;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1081C80622C3295);
    return v2;
  }

  return result;
}

{
  *result = &unk_2837076F0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = off_28370A538;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1081C80622C3295);
    return v2;
  }

  return result;
}

uint64_t NArray<NFrame>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      v8 = v6 - 16;
      v9 = *(v6 - 8);
      if (v9)
      {
        v10 = v6 + 24 * v9 - 24;
        v11 = -24 * v9;
        v12 = v10;
        do
        {
          *v12 = off_28370A538;
          v13 = v12[1];
          if (v13)
          {
            MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
          }

          v12 -= 3;
          v10 -= 24;
          v11 += 24;
        }

        while (v11);
      }

      MEMORY[0x223DF1D00](v8, 0x1081C80622C3295);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4 && *(result + 8) != a2)
  {
    v14 = 0;
    do
    {
      v15 = *(result + 8);
      if (v15 != a2)
      {
        v16 = a2 + 24 * v14;
        v17 = v15 + 24 * v14;
        v18 = *(v17 + 16);
        v19 = *(v16 + 16);
        if (v18 != v19)
        {
          v20 = *(v17 + 8);
          if (v20)
          {
            MEMORY[0x223DF1D00](v20, 0x1000C8052888210);
            LODWORD(v19) = *(v16 + 16);
          }

          *(v17 + 16) = v19;
          operator new[]();
        }

        if (*(v17 + 16))
        {
          v21 = 0;
          v22 = *(v16 + 8);
          v23 = *(v17 + 8);
          if (v18 < 8)
          {
            goto LABEL_25;
          }

          if ((v23 - v22) < 0x20)
          {
            goto LABEL_25;
          }

          v21 = v18 & 0xFFFFFFF8;
          v24 = (v23 + 16);
          v25 = (v22 + 16);
          v26 = v21;
          do
          {
            v27 = *v25;
            *(v24 - 1) = *(v25 - 1);
            *v24 = v27;
            v24 += 2;
            v25 += 2;
            v26 -= 8;
          }

          while (v26);
          if (v21 != v18)
          {
LABEL_25:
            v28 = v18 - v21;
            v29 = 4 * v21;
            v30 = (v23 + v29);
            v31 = (v22 + v29);
            do
            {
              v32 = *v31++;
              *v30++ = v32;
              --v28;
            }

            while (v28);
          }
        }
      }

      ++v14;
    }

    while (v14 < *(result + 16));
  }

  return result;
}

uint64_t NArray<NFrame>::operator=(uint64_t result, uint64_t a2)
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
        v7 = v6 - 16;
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = v6 + 24 * v8 - 24;
          v10 = -24 * v8;
          v11 = v9;
          do
          {
            *v11 = off_28370A538;
            v12 = v11[1];
            if (v12)
            {
              MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
            }

            v11 -= 3;
            v9 -= 24;
            v10 += 24;
          }

          while (v10);
        }

        MEMORY[0x223DF1D00](v7, 0x1081C80622C3295);
        v5 = *(a2 + 16);
      }

      *(v2 + 16) = v5;
      operator new[]();
    }

    if (v4 && *(result + 8) != *(a2 + 8))
    {
      v13 = 0;
      do
      {
        v14 = *(a2 + 8);
        v15 = *(result + 8);
        if (v15 != v14)
        {
          v16 = v14 + 24 * v13;
          v17 = v15 + 24 * v13;
          v18 = *(v17 + 16);
          v19 = *(v16 + 16);
          if (v18 != v19)
          {
            v20 = *(v17 + 8);
            if (v20)
            {
              MEMORY[0x223DF1D00](v20, 0x1000C8052888210);
              LODWORD(v19) = *(v16 + 16);
            }

            *(v17 + 16) = v19;
            operator new[]();
          }

          if (*(v17 + 16))
          {
            v21 = 0;
            v22 = *(v16 + 8);
            v23 = *(v17 + 8);
            if (v18 < 8)
            {
              goto LABEL_26;
            }

            if ((v23 - v22) < 0x20)
            {
              goto LABEL_26;
            }

            v21 = v18 & 0xFFFFFFF8;
            v24 = (v23 + 16);
            v25 = (v22 + 16);
            v26 = v21;
            do
            {
              v27 = *v25;
              *(v24 - 1) = *(v25 - 1);
              *v24 = v27;
              v24 += 2;
              v25 += 2;
              v26 -= 8;
            }

            while (v26);
            if (v21 != v18)
            {
LABEL_26:
              v28 = v18 - v21;
              v29 = 4 * v21;
              v30 = (v23 + v29);
              v31 = (v22 + v29);
              do
              {
                v32 = *v31++;
                *v30++ = v32;
                --v28;
              }

              while (v28);
            }
          }
        }

        ++v13;
      }

      while (v13 < *(result + 16));
    }
  }

  return result;
}

void NArray<NFrame>::~NArray(void *a1)
{
  *a1 = &unk_2837076F0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = off_28370A538;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1081C80622C3295);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

uint64_t NRingDropBuffer::resize(NRingDropBuffer *this, char *a2)
{
  if (*(this + 7))
  {
    Error::chuck("RingDropBuffer::resize() - cannot resize unless empty", a2);
  }

  if (!*a2)
  {
    Error::chuck("NRingDropBuffer::resize() - cannot set size < 1", a2);
  }

  result = NArray<NFrame>::resize(this, a2);
  *(this + 3) = 0;
  return result;
}

uint64_t NRingDropBuffer::operator[](uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = *(a1 + 28);
  if (v4 >= v5)
  {
    Error::chuck("NRingDropBuffer[] - out-of-bounds (size = %d, [] = %d)", a2, v5, v4, v2, v3);
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24) + v4 + v6 - v5;
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = 0;
  }

  return *(a1 + 8) + 24 * (v7 - v8);
}

BOOL NDelta::isFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t a5)
{
  if ((*a1 & 1) == 0)
  {
    Error::chuck("NDelta::isFrame - NDelta::init() has to be called before computing the first frame", a2);
  }

  v5 = *(a2 + 24);
  v6 = *(a1 + 4);
  v7 = v6 + 1;
  if (v5 >= v6 + 1)
  {
    if (!v5)
    {
      Error::chuck("NLinkedList::operator[] List index out of bounds (size = %d, [] = %d)", a2, a3, a4, *a5.i64, 0, 0);
    }

    v8 = *(a2 + 8);
    v9 = *(v8 + 32);
    if (v9 != *(a1 + 8))
    {
      Error::chuck("NDelta::isFrame - head of the list should have %d elements, not %d", a2, *(a1 + 8), v9);
    }

    if (!v9)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      v10 = 0;
      v11 = *(a1 + 4);
      do
      {
        if (v11)
        {
          v12 = 0;
          v13 = 0;
          v14 = *(a2 + 24);
          v15 = *(a2 + 8);
          v16 = 0.0;
          do
          {
            v17 = 2 * v11;
            v18 = (2 * v11 - v13);
            if (v18 + 1 <= v5)
            {
              if (v18 >= v5)
              {
                Error::chuck("NLinkedList::operator[] List index out of bounds (size = %d, [] = %d)", a2, v15, v18, v16, v5, (v17 - v13));
              }

              v19 = v8;
              if (v17 != v13)
              {
                v21 = v12 + v17;
                v19 = v8;
                do
                {
                  v19 = *(v19 + 8);
                  --v21;
                }

                while (v21);
              }
            }

            else
            {
              v19 = v8;
              if (v5 != 1)
              {
                v20 = v5 - 1;
                v19 = v8;
                do
                {
                  v19 = *(v19 + 8);
                  --v20;
                }

                while (v20);
              }
            }

            if (v13 == v14)
            {
              Error::chuck("NLinkedList::operator[] List index out of bounds (size = %d, [] = %d)", a2, v15, v19, v16, *(a2 + 24), v14);
            }

            v22 = v13;
            for (i = *(a2 + 8); v22; --v22)
            {
              i = *(i + 8);
            }

            *&v16 = *&v16 + ((v6 - v13++) * (*(*(i + 24) + 4 * v10) - *(*(v19 + 24) + 4 * v10)));
            --v12;
            v11 = v6;
          }

          while (v13 != v6);
          v11 = v6;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        *(*(a1 + 32) + 4 * v10++) = *&v16 / *(a1 + 12);
      }

      while (v10 < v9);
      goto LABEL_33;
    }

    v24 = (a1 + 12);
    v25 = *(a1 + 32);
    if (v9 >= 8 && (v25 >= a1 + 16 || v24 >= v25 + 4 * v9))
    {
      v26 = v9 & 0xFFFFFFF8;
      a5.i32[0] = *v24;
      v30 = vdupq_lane_s32(*&vdivq_f32(0, a5), 0);
      v31 = (v25 + 16);
      v32 = v26;
      do
      {
        v31[-1] = v30;
        *v31 = v30;
        v31 += 2;
        v32 -= 8;
      }

      while (v32);
      if (v26 == v9)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v9 - v26;
    v28 = (v25 + 4 * v26);
    do
    {
      *v28++ = 0.0 / *v24;
      --v27;
    }

    while (v27);
LABEL_33:
    *(a1 + 16) = 1;
  }

  return v5 >= v7;
}

uint64_t NDelta::getFrame(NDelta *this, const char *a2)
{
  if ((*(this + 16) & 1) == 0)
  {
    Error::chuck("NDelta::getFrame - called NDelta::getFrame while no available frame", a2, v2, v3);
  }

  return this + 24;
}

uint64_t NDynamicMFCC::init(NDynamicMFCC *this, const unsigned int *a2, const unsigned int *a3, const unsigned int *a4)
{
  *(this + 30) = *a4;
  *(this + 24) = *a2;
  *(this + 25) = *a3;
  result = NDynamicMFCC::reset(this);
  *(this + 25) = 1;
  return result;
}

BOOL NDynamicMFCC::isFrame(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    Error::chuck("NDynamicMFCC::isFrame() - NDynamicMFCC::init() has to be called before starting computing frames", a2);
  }

  v3 = *(a2 + 16);
  if (v3 != *(a1 + 120))
  {
    Error::chuck("NDynamicMFCC::isFrame() - input length should be %d, not %d", a2, *(a1 + 120), v3);
  }

  v5 = *(a1 + 96);
  v4 = *(a1 + 100);
  v6 = (*(*(a1 + 32) + 64))(a1 + 32);
  v10 = *(a1 + 40);
  if (v10)
  {
    *(v6 + 8) = v10;
  }

  else
  {
    *(a1 + 48) = v6;
  }

  *(a1 + 40) = v6;
  ++*(a1 + 56);
  result = NDelta::isFrame(a1 + 128, a1 + 32, v7, v8, v9);
  if (result)
  {
    if ((*(a1 + 144) & 1) == 0)
    {
      goto LABEL_25;
    }

    v13 = (*(*(a1 + 64) + 64))(a1 + 64, a1 + 152);
    v17 = *(a1 + 72);
    if (v17)
    {
      *(v13 + 8) = v17;
    }

    else
    {
      *(a1 + 80) = v13;
    }

    *(a1 + 72) = v13;
    ++*(a1 + 88);
    result = NDelta::isFrame(a1 + 176, a1 + 64, v14, v15, v16);
    if (result)
    {
      v18 = v4 + 2 * v5 + 1;
      while (*(a1 + 56) > v18)
      {
        if (!*(a1 + 40))
        {
LABEL_22:
          Error::chuck("NLinkedList::removeTail Attempted to remove tail of empty list", v12);
        }

        (**(a1 + 32))(a1 + 32, *(a1 + 48));
      }

      while (*(a1 + 88) > ((2 * v4) | 1u))
      {
        if (!*(a1 + 72))
        {
          goto LABEL_22;
        }

        (**(a1 + 64))(a1 + 64, *(a1 + 80));
      }

      if (*(a1 + 192))
      {
        NDynamicMFCC::makeFrame(a1, a1 + 200);
        result = 1;
        *(a1 + 24) = 1;
        return result;
      }

LABEL_25:
      Error::chuck("NDelta::getFrame - called NDelta::getFrame while no available frame", v12);
    }
  }

  return result;
}

float NDynamicMFCC::makeFrame(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 112);
    v5 = *(a1 + 56);
    v6 = *(a2 + 8);
    do
    {
      if (v4 >= v5)
      {
        Error::chuck("NLinkedList::operator[] List index out of bounds (size = %d, [] = %d)", a2, v5, v4);
      }

      v8 = *(a1 + 40);
      for (i = v4; i; --i)
      {
        v8 = *(v8 + 8);
      }

      v10 = *(*(v8 + 24) + 4 * v3);
      v11 = *(a1 + 8);
      *(v11 + 4 * v3) = v10;
      v12 = *(a1 + 116);
      if (v12 >= *(a1 + 88))
      {
        Error::chuck("NLinkedList::operator[] List index out of bounds (size = %d, [] = %d)", a2, *(a1 + 88), v12);
      }

      for (j = *(a1 + 72); v12; LODWORD(v12) = v12 - 1)
      {
        j = *(j + 8);
      }

      *(v11 + 4 * (v2 + v3)) = *(*(j + 24) + 4 * v3);
      result = *(v6 + 4 * v3);
      *(v11 + 4 * (2 * v2 + v3++)) = result;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t NDynamicMFCC::finish(NDynamicMFCC *this, const char *a2)
{
  if ((*(this + 25) & 1) == 0)
  {
    Error::chuck("NDynamicMFCC::finish() - NDynamicMFCC::init() has to be called before finishing", a2);
  }

  if (*(this + 26) && *(this + 24) == 1)
  {
    v3 = *(this + 5);
    if (v3)
    {
      v4 = (*(*(this + 4) + 64))(this + 32, v3 + 16);
      v8 = *(this + 5);
      if (v8)
      {
        *(v4 + 8) = v8;
      }

      else
      {
        *(this + 6) = v4;
      }

      *(this + 5) = v4;
      ++*(this + 14);
      NDelta::isFrame(this + 128, this + 32, v5, v6, v7);
      if (*(this + 144))
      {
        v14 = (*(*(this + 8) + 64))(this + 64, this + 152);
        v18 = *(this + 9);
        if (v18)
        {
          *(v14 + 8) = v18;
        }

        else
        {
          *(this + 10) = v14;
        }

        *(this + 9) = v14;
        ++*(this + 22);
        NDelta::isFrame(this + 176, this + 64, v15, v16, v17);
        if (*(this + 192))
        {
          NDynamicMFCC::makeFrame(this, this + 200);
          result = 0;
          --*(this + 26);
          return result;
        }
      }

LABEL_28:
      Error::chuck("NDelta::getFrame - called NDelta::getFrame while no available frame", v13);
    }

LABEL_29:
    Error::chuck("NLinkedList::head() - cannot access head of empty list", a2);
  }

  if (!*(this + 27) || *(this + 24) != 1)
  {
    NDynamicMFCC::reset(this);
    return 1;
  }

  v9 = *(this + 5);
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = (*(*(this + 4) + 64))(this + 32, v9 + 16);
  v11 = *(this + 5);
  if (v11)
  {
    *(v10 + 8) = v11;
  }

  else
  {
    *(this + 6) = v10;
  }

  *(this + 5) = v10;
  ++*(this + 14);
  v19 = *(this + 9);
  if (!v19)
  {
    goto LABEL_29;
  }

  v20 = (*(*(this + 8) + 64))(this + 64, v19 + 16);
  v24 = *(this + 9);
  if (v24)
  {
    *(v20 + 8) = v24;
  }

  else
  {
    *(this + 10) = v20;
  }

  *(this + 9) = v20;
  ++*(this + 22);
  NDelta::isFrame(this + 176, this + 64, v21, v22, v23);
  if ((*(this + 192) & 1) == 0)
  {
    goto LABEL_28;
  }

  NDynamicMFCC::makeFrame(this, this + 200);
  result = 0;
  --*(this + 27);
  return result;
}

uint64_t NDynamicMFCC::getFrame(uint64_t this, const char *a2)
{
  if ((*(this + 24) & 1) == 0)
  {
    Error::chuck("NDynamicMFCC::getFrame() - no frame available", a2, v2, v3);
  }

  return this;
}

uint64_t nextPowerOf2(int *a1)
{
  v1 = *a1;
  v2 = 1;
  do
  {
    result = v2;
    v2 = (2 * v2);
  }

  while (result < v1);
  return result;
}

void *AccelMelFilter::run(AccelMelFilter *this, float *a2)
{
  if ((*(this + 12) & 1) == 0)
  {
    Error::chuck("AccelMelFilter::run - AccelMelFilter::init() must be called before running", a2);
  }

  if (*this)
  {
    v4 = 0;
    do
    {
      vDSP_dotpr(&a2[*(*(this + 3) + 4 * v4)], 1, *(*(this + 6) + 24 * v4 + 8), 1, (*(this + 9) + 4 * v4), *(*(this + 6) + 24 * v4 + 16));
      ++v4;
      v5 = *this;
    }

    while (v4 < v5);
    v6 = 4 * v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 9);

  return memcpy(a2, v7, v6);
}

void AccelCosine::init(AccelCosine *this, const char *a2, const unsigned int *a3, const unsigned int *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2)
  {
    _ZF = v5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    Error::chuck("AccelCosine::init() - those arguments must be strictly positive : a_iNumChans (=%d), a_iNumCep (=%d)", a2, *a2, v5);
  }

  *this = v4;
  v8 = *a3;
  *(this + 1) = *a3;
  v9 = *a4;
  *(this + 10) = v4;
  v10 = this + 40;
  *(this + 2) = v9;
  *(this + 9) = v8;
  NArray<NArray<float>>::resize(this + 16, this + 1);
  if (*(v10 - 1))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      (*(*(*(this + 3) + v12) + 32))(*(this + 3) + v12, v10);
      ++v13;
      v12 += 24;
    }

    while (v13 < *(this + 9));
  }

  v14 = *(this + 16);
  v15 = *(this + 1);
  if (v14 != v15)
  {
    *(this + 16) = v15;
    operator new[]();
  }

  if (v14)
  {
    v16 = *this;
    if (v16)
    {
      v17 = 0;
      v58 = sqrtf(2.0 / v16);
      v19 = *(this + 3);
      __asm
      {
        FMOV            V13.2S, #1.0
        FMOV            V1.2D, #-0.5
      }

      v52 = _Q1;
      do
      {
        v18 = 3.14159 / v16;
        *&v11 = (v18 * v17);
        v25 = *(v19 + 24 * v17 + 8);
        v60 = v11;
        if (v16 >= 2)
        {
          v27 = *(v19 + 24 * v17 + 8);
          v28 = v16 & 0xFFFFFFFE;
          v29 = 0x100000000;
          do
          {
            v30 = vcvt_f32_f64(vmulq_n_f64(vaddq_f64(vcvtq_f64_f32(vadd_f32(vcvt_f32_u32(v29), _D13)), v52), *&v11));
            v54 = v30.f32[0];
            v56 = cosf(v30.f32[1]);
            v31.f32[0] = cosf(v54);
            v31.f32[1] = v56;
            v11 = v60;
            *v27++ = vmul_n_f32(v31, v58);
            v29 = vadd_s32(v29, 0x200000002);
            v28 -= 2;
          }

          while (v28);
          v26 = v16 & 0xFFFFFFFE;
          if (v26 == v16)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v26 = 0;
        }

        do
        {
          v32 = ((v26 + 1.0) + -0.5) * *&v11;
          v33 = cosf(v32);
          v11 = v60;
          *(v25 + 4 * v26++) = v58 * v33;
        }

        while (v16 != v26);
LABEL_13:
        ++v17;
      }

      while (v17 != v14);
    }
  }

  v34 = *(this + 2);
  v35 = *(this + 7);
  *v35 = 1065354483;
  if (v34)
  {
    if (v14 < 2)
    {
      goto LABEL_32;
    }

    *&v36 = v34;
    v55 = *&v36 * 0.5;
    v57 = v36;
    if (v14 == 2)
    {
      v37 = 1;
      goto LABEL_31;
    }

    v38 = v14 - 1;
    v51 = vdupq_lane_s64(COERCE__INT64(*&v36 * 0.5), 0);
    v53 = vdupq_lane_s64(v36, 0);
    v39 = 0x200000001;
    v40 = (v35 + 1);
    __asm { FMOV            V0.2D, #1.0 }

    v49 = _Q0;
    v50 = vdupq_n_s64(0x400921F9F01B866EuLL);
    v42 = v38 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v43.i64[0] = v39.u32[0];
      v43.i64[1] = v39.u32[1];
      v44 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v43), v50), v53));
      v59 = v44.f32[0];
      v61 = sinf(v44.f32[1]);
      v45.f32[0] = sinf(v59);
      v45.f32[1] = v61;
      *v40++ = vcvt_f32_f64(vmlaq_f64(v49, vcvtq_f64_f32(v45), v51));
      v39 = vadd_s32(v39, 0x200000002);
      v42 -= 2;
    }

    while (v42);
    v36 = v57;
    if (v38 != (v38 & 0xFFFFFFFFFFFFFFFELL))
    {
      v37 = v38 | 1;
      do
      {
LABEL_31:
        v46 = v37 * 3.14159 / *&v36;
        v47 = sinf(v46);
        v36 = v57;
        v48 = v55 * v47 + 1.0;
        *&v35[v37++] = v48;
      }

      while (v14 != v37);
    }
  }

  else if (v14 >= 2)
  {
    memset_pattern16(v35 + 1, &unk_223B13330, 4 * (v14 - 1));
  }

LABEL_32:
  *(this + 12) = 1;
}

void AccelCosine::dctCoef(AccelCosine *this, double a2, __n128 a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *this;
    if (v4)
    {
      v41 = sqrtf(2.0 / v4);
      v5 = 3.14159 / v4;
      v6 = *(this + 3);
      if (v4 > 1)
      {
        if ((v4 & 0xFFFFFFFE) == v4)
        {
          v10 = 0;
          __asm
          {
            FMOV            V10.2S, #1.0
            FMOV            V1.2D, #-0.5
          }

          v34 = _Q1;
          do
          {
            v17 = *(v6 + 24 * v10 + 8);
            v18 = v4;
            v19 = 0x100000000;
            do
            {
              v20 = vcvt_f32_f64(vmulq_n_f64(vaddq_f64(vcvtq_f64_f32(vadd_f32(vcvt_f32_u32(v19), _D10)), _Q1), (v5 * v10)));
              v37 = v20.f32[0];
              v39 = cosf(v20.f32[1]);
              v21.f32[0] = cosf(v37);
              v21.f32[1] = v39;
              _Q1 = v34;
              *v17++ = vmul_n_f32(v21, v41);
              v19 = vadd_s32(v19, 0x200000002);
              v18 -= 2;
            }

            while (v18);
            ++v10;
          }

          while (v10 != v3);
        }

        else
        {
          v22 = 0;
          __asm
          {
            FMOV            V10.2S, #1.0
            FMOV            V0.2D, #-0.5
          }

          v35 = _Q0;
          do
          {
            a3.n128_f64[0] = (v5 * v22);
            v25 = *(v6 + 24 * v22 + 8);
            v26 = v25;
            v27 = v4 & 0xFFFFFFFE;
            v28 = 0x100000000;
            v40 = a3;
            do
            {
              v29 = vcvt_f32_f64(vmulq_n_f64(vaddq_f64(vcvtq_f64_f32(vadd_f32(vcvt_f32_u32(v28), _D10)), v35), a3.n128_f64[0]));
              v36 = v29.f32[0];
              v38 = cosf(v29.f32[1]);
              v30.f32[0] = cosf(v36);
              v30.f32[1] = v38;
              a3.n128_u64[0] = v40.n128_u64[0];
              *v26++ = vmul_n_f32(v30, v41);
              v28 = vadd_s32(v28, 0x200000002);
              v27 -= 2;
            }

            while (v27);
            v31 = v4 & 0xFFFFFFFE;
            do
            {
              v32 = ((v31 + 1.0) + -0.5) * a3.n128_f64[0];
              v33 = cosf(v32);
              a3 = v40;
              v25->f32[v31++] = v41 * v33;
            }

            while (v4 != v31);
            ++v22;
          }

          while (v22 != v3);
        }
      }

      else
      {
        v7 = 0;
        v8 = (v6 + 8);
        do
        {
          v9 = *v8;
          v8 += 3;
          *v9 = v41 * cosf((v5 * v7++) * 0.5);
        }

        while (v3 != v7);
      }
    }
  }
}

void AccelCosine::lifterCoef(AccelCosine *this)
{
  v1 = *(this + 7);
  *v1 = 1065354483;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2)
  {
    if (v3 < 2)
    {
      return;
    }

    *&v4 = v2;
    v25 = *&v4 * 0.5;
    v26 = v4;
    if (v3 == 2)
    {
      v5 = 1;
      goto LABEL_13;
    }

    v6 = v3 - 1;
    v23 = vdupq_lane_s64(COERCE__INT64(*&v4 * 0.5), 0);
    v24 = vdupq_lane_s64(v4, 0);
    v7 = 0x200000001;
    v8 = (v1 + 1);
    __asm { FMOV            V0.2D, #1.0 }

    v21 = _Q0;
    v22 = vdupq_n_s64(0x400921F9F01B866EuLL);
    v14 = (v3 - 1) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v15.i64[0] = v7.u32[0];
      v15.i64[1] = v7.u32[1];
      v16 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v15), v22), v24));
      v27 = v16.f32[0];
      v28 = sinf(v16.f32[1]);
      v17.f32[0] = sinf(v27);
      v17.f32[1] = v28;
      *v8++ = vcvt_f32_f64(vmlaq_f64(v21, vcvtq_f64_f32(v17), v23));
      v7 = vadd_s32(v7, 0x200000002);
      v14 -= 2;
    }

    while (v14);
    v4 = v26;
    if (v6 != ((v3 - 1) & 0xFFFFFFFFFFFFFFFELL))
    {
      v5 = v6 | 1;
      do
      {
LABEL_13:
        v18 = v5 * 3.14159 / *&v4;
        v19 = sinf(v18);
        v4 = v26;
        v20 = v25 * v19 + 1.0;
        *&v1[v5++] = v20;
      }

      while (v3 != v5);
    }
  }

  else if (v3 >= 2)
  {

    memset_pattern16(v1 + 1, &unk_223B13330, 4 * (v3 - 1));
  }
}

float AccelCosine::run(unsigned int *a1, float *__A, uint64_t a3)
{
  if ((a1[3] & 1) == 0)
  {
    Error::chuck("AccelCosine::run() - AccelCosine::init() has to be called before running", __A);
  }

  v5 = *(a3 + 16);
  if (v5 != a1[1])
  {
    Error::chuck("AccelCosine::run() - length of output should be %d, not %d", __A, a1[1], v5);
  }

  if (v5)
  {
    v7 = 0;
    v8 = 8;
    do
    {
      __C = 0.0;
      vDSP_dotpr(__A, 1, *(*(a1 + 3) + v8), 1, &__C, *a1);
      result = *(*(a1 + 7) + 4 * v7) * __C;
      *(*(a3 + 8) + 4 * v7++) = result;
      v8 += 24;
    }

    while (v7 < a1[1]);
  }

  return result;
}

uint64_t AccelPSD::init(uint64_t this, const unsigned int *a2, const BOOL *a3)
{
  *(this + 8) = *a2;
  *(this + 12) = *a3;
  *this = 0;
  *(this + 4) = 1;
  return this;
}

uint64_t AccelPSD::fixp_sqrt(AccelPSD *this, int a2)
{
  v2 = a2 > 0x40000000;
  if (a2 <= 0x40000000)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1073741824;
  }

  v4 = v3 + a2;
  v5 = v2 << 16;
  v6 = (v2 << 30) | 0x10000000;
  v7 = v6 < v4;
  if (v6 >= v4)
  {
    v6 = 0;
  }

  v8 = v4 - v6;
  v9 = v5 | (v7 << 15);
  v10 = (((v9 >> 15) & 3) << 28) | 0x4000000;
  v11 = v10 < v8;
  if (v10 >= v8)
  {
    v10 = 0;
  }

  v12 = v8 - v10;
  v13 = v9 | (v11 << 14);
  v14 = (((v13 >> 14) & 7) << 26) | 0x1000000;
  v15 = v14 < v12;
  if (v14 >= v12)
  {
    v14 = 0;
  }

  v16 = v12 - v14;
  v17 = v13 | (v15 << 13);
  v18 = (((v17 >> 13) & 0xF) << 24) | 0x400000;
  v19 = v18 < v16;
  if (v18 >= v16)
  {
    v18 = 0;
  }

  v20 = v16 - v18;
  v21 = v17 | (v19 << 12);
  v22 = (((v21 >> 12) & 0x1FF) << 22) | 0x100000;
  v23 = v22 < v20;
  if (v22 >= v20)
  {
    v22 = 0;
  }

  v24 = v20 - v22;
  v25 = v21 | (v23 << 11);
  v26 = (v25 << 9) | 0x40000;
  v27 = v26 < v24;
  if (v26 >= v24)
  {
    v26 = 0;
  }

  v28 = v24 - v26;
  v29 = v25 | (v27 << 10);
  v30 = (v29 << 8) + 0x10000;
  v31 = v30 < v28;
  if (v30 >= v28)
  {
    v30 = 0;
  }

  v32 = v28 - v30;
  v33 = v29 | (v31 << 9);
  v34 = (v33 << 7) + 0x4000;
  v35 = v34 < v32;
  if (v34 >= v32)
  {
    v34 = 0;
  }

  v36 = v32 - v34;
  v37 = v33 | (v35 << 8);
  v38 = (v37 << 6) + 4096;
  v39 = v38 < v36;
  if (v38 >= v36)
  {
    v38 = 0;
  }

  v40 = v36 - v38;
  v41 = v37 | (v39 << 7);
  v42 = 32 * v41 + 1024;
  v43 = v42 < v40;
  if (v42 >= v40)
  {
    v42 = 0;
  }

  v44 = v40 - v42;
  v45 = v41 | (v43 << 6);
  v46 = 16 * v45 + 256;
  v47 = v46 < v44;
  if (v46 >= v44)
  {
    v46 = 0;
  }

  v48 = v44 - v46;
  v49 = v45 | (32 * v47);
  v50 = 8 * v49 + 64;
  v51 = v50 < v48;
  if (v50 >= v48)
  {
    v50 = 0;
  }

  v52 = v48 - v50;
  v53 = v49 | (16 * v51);
  v54 = 4 * v53 + 16;
  v55 = v54 < v52;
  if (v54 >= v52)
  {
    v54 = 0;
  }

  v56 = v52 - v54;
  v57 = v53 | (8 * v55);
  v58 = 2 * v57 + 4;
  v59 = v58 < v56;
  if (v58 >= v56)
  {
    v58 = 0;
  }

  return (((v57 | (4 * v59)) + 1 < v56 - v58) << 16) | ((v57 | (4 * v59)) << 15);
}

uint64_t AccelPSD::fixp_sqrt_range(AccelPSD *this, const int *a2, const int *a3, int a4, char a5)
{
  v5 = (*a2 >> 31) & -*a2 | *a2 & ~(*a2 >> 31);
  v6 = (*a3 >> 31) & -*a3 | *a3 & ~(*a3 >> 31);
  v7 = (v5 >> 14) * (v5 >> 14) + (v6 >> 14) * (v6 >> 14);
  if (v7)
  {
    v8 = -1;
    do
    {
      v9 = v8++;
      v10 = v7 > 3;
      v7 >>= 2;
    }

    while (v10);
    v5 = ((v5 >> v8) + 1) >> 1;
    v6 = ((v6 >> v8) + 1) >> 1;
    a4 = ((a4 >> (2 * (v9 + 2) - 1)) + 1) >> 1;
    v11 = 15 - v8;
  }

  else
  {
    v11 = 16;
  }

  return (AccelPSD::fixp_sqrt(this, v6 * v6 + v5 * v5 + a4) >> (v11 + a5));
}

float AccelPSD::getScalingFactor(AccelPSD *this)
{
  v1 = (1 << *this);
  if (*(this + 12) == 1)
  {
    v1 = (1 << (2 * *this + 16));
  }

  return 256.0 / v1;
}

void NWavChunk2HTKFrames::init(NWavChunk2HTKFrames *this, const NString *a2, const unsigned int *a3, const BOOL *a4, const BOOL *a5)
{
  v7 = this + 936;
  v8 = (this + 808);
  if ((this + 808) != a2)
  {
    (*(*v8 + 64))(this + 808, *(a2 + 2), a2 + 8, a4);
  }

  v9 = 10;
  (*(*(this + 104) + 64))(this + 832, "MFCC_D_A_0", &v9);
  v10 = 8;
  (*(*(this + 107) + 64))(this + 856, "WAVEFORM", &v10);
  v11 = 3;
  (*(*(this + 110) + 64))(this + 880, "WAV", &v11);
  *(this + 113) = 0x47C3500000000000;
  *(this + 456) = 0;
  *(this + 229) = 1243365376;
  *(this + 920) = 1;
  *(this + 231) = 1064849900;
  *(this + 464) = 0;
  *(this + 930) = 0;
  *(this + 233) = 26;
  *(this + 238) = 12;
  *(this + 240) = 22;
  *(v7 + 28) = 0x3F80000000000000;
  *v7 = xmmword_223B13280;
  *(this + 984) = 1;
  *(v7 + 52) = 0x200000002;
  *(this + 801) = 0;
  *(this + 956) = 1;
  NWavChunk2HTKFrames::loadCfg(this, v8, a5);
}

void NWavChunk2HTKFrames::loadCfg(NWavChunk2HTKFrames *this, const NString *a2, const BOOL *a3)
{
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = &unk_28370A7C0;
  v7 = 0;
  v3[0] = 1;
  NConfig::NConfig(v6, v3);
  v4 = &unk_28370A720;
  v5 = 0;
  operator new[]();
}

void sub_223A7B6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  NLinkedList<NString>::~NLinkedList(&a16);
  a23 = a14;
  if (a25)
  {
    MEMORY[0x223DF1D00](a25, 0x1000C8077774924);
  }

  NConfig::~NConfig(&a26);
  NLinkedList<NString>::~NLinkedList(v26 - 120);
  _Unwind_Resume(a1);
}

double NWavChunk2HTKFrames::resetOpt(NWavChunk2HTKFrames *this)
{
  (*(*(this + 104) + 64))();
  v3 = 8;
  (*(*(this + 107) + 64))(this + 856, "WAVEFORM", &v3);
  v4 = 3;
  (*(*(this + 110) + 64))(this + 880, "WAV", &v4);
  *(this + 113) = 0x47C3500000000000;
  *(this + 456) = 0;
  *(this + 229) = 1243365376;
  *(this + 920) = 1;
  *(this + 231) = 1064849900;
  *(this + 464) = 0;
  *(this + 930) = 0;
  *(this + 233) = 26;
  *(this + 238) = 12;
  *(this + 240) = 22;
  *(this + 964) = 0x3F80000000000000;
  result = -0.00781250557;
  *(this + 936) = xmmword_223B13280;
  *(this + 984) = 1;
  *(this + 988) = 0x200000002;
  *(this + 801) = 0;
  *(this + 956) = 1;
  return result;
}

uint64_t NWavChunk2HTKFrames::changeSamRate(uint64_t this, const char *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    Error::chuck("NWavChunk2HTKFrames::changeSamRate - a_iSampleRate = %d has to be strictly positive", a2, 0);
  }

  *(this + 972) = v2;
  *(this + 976) = ((*(this + 916) * v2) / 10000000.0);
  v3 = ((*(this + 908) * v2) / 10000000.0);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  *(this + 980) = v3;
  return this;
}

uint64_t NWavChunk2HTKFrames::initDyn(NWavChunk2HTKFrames *this)
{
  *(this + 174) = *(this + 238);
  *(this + 84) = *(this + 988);
  result = NDynamicMFCC::reset((this + 576));
  *(this + 601) = 1;
  return result;
}

uint64_t NWavChunk2HTKFrames::parmCode(NWavChunk2HTKFrames *this)
{
  v1 = *(this + 929);
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = (3 * *(this + 801)) & 3;
  }

  return ((((v2 + v1) | (768 * *(this + 984))) + 6) | (*(this + 956) << 13));
}

uint64_t NWavChunk2HTKFrames::reset(NWavChunk2HTKFrames *this)
{
  *(this + 32) = 0;
  *(this + 138) = *(this + 134) + 1;
  *(this + 70) = 0;
  *(this + 556) = 0;
  return NDynamicMFCC::reset((this + 576));
}

void *NArray<NResizingQueue<NFrame>::NElement>::~NArray(void *result)
{
  *result = &unk_2837075E0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 40 * v4;
      v6 = v5 - 40;
      v7 = (v5 - 16);
      v8 = -40 * v4;
      do
      {
        *(v7 - 3) = &unk_283707628;
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        v6 -= 40;
        v7 -= 5;
        v8 += 40;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x10A1C80C9FAA55CLL);
    return v2;
  }

  return result;
}

{
  *result = &unk_2837075E0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 40 * v4;
      v6 = v5 - 40;
      v7 = (v5 - 16);
      v8 = -40 * v4;
      do
      {
        *(v7 - 3) = &unk_283707628;
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        v6 -= 40;
        v7 -= 5;
        v8 += 40;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x10A1C80C9FAA55CLL);
    return v2;
  }

  return result;
}

void NResizingQueue<NFrame>::NElement::~NElement(void *a1)
{
  *a1 = &unk_283707628;
  a1[2] = off_28370A538;
  if (a1[3])
  {
    MEMORY[0x223DF1D00](a1[3], 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NResizingQueue<NFrame>::NElement::~NElement(void *result)
{
  *result = &unk_283707628;
  result[2] = off_28370A538;
  if (result[3])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[3], 0x1000C8052888210);
    return v1;
  }

  return result;
}

uint64_t NArray<NResizingQueue<NFrame>::NElement>::fromArray(uint64_t result, const char *a2, int *a3)
{
  v3 = *(result + 16);
  v4 = *a3;
  if (v3 != *a3)
  {
    v5 = result;
    v6 = *(result + 8);
    if (v6)
    {
      v8 = v6 - 16;
      v9 = *(v6 - 8);
      if (v9)
      {
        v10 = v6 + 40 * v9;
        v11 = v10 - 40;
        v12 = (v10 - 16);
        v13 = -40 * v9;
        do
        {
          *(v12 - 3) = &unk_283707628;
          *(v12 - 1) = off_28370A538;
          if (*v12)
          {
            MEMORY[0x223DF1D00](*v12, 0x1000C8052888210);
          }

          v11 -= 40;
          v12 -= 5;
          v13 += 40;
        }

        while (v13);
      }

      MEMORY[0x223DF1D00](v8, 0x10A1C80C9FAA55CLL);
      v4 = *a3;
    }

    *(v5 + 16) = v4;
    operator new[]();
  }

  if (v3)
  {
    Error::chuck("NLinkedList::NElement::operator=() -this method should never be called", a2);
  }

  return result;
}

uint64_t NArray<NResizingQueue<NFrame>::NElement>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 16);
    v3 = *(a2 + 16);
    if (v2 != v3)
    {
      v4 = *(result + 8);
      if (v4)
      {
        v6 = result;
        v7 = v4 - 16;
        v8 = *(v4 - 8);
        if (v8)
        {
          v9 = v4 + 40 * v8;
          v10 = v9 - 40;
          v11 = (v9 - 16);
          v12 = -40 * v8;
          do
          {
            *(v11 - 3) = &unk_283707628;
            *(v11 - 1) = off_28370A538;
            if (*v11)
            {
              MEMORY[0x223DF1D00](*v11, 0x1000C8052888210);
            }

            v10 -= 40;
            v11 -= 5;
            v12 += 40;
          }

          while (v12);
        }

        MEMORY[0x223DF1D00](v7, 0x10A1C80C9FAA55CLL);
        v3 = *(a2 + 16);
        result = v6;
      }

      *(result + 16) = v3;
      operator new[]();
    }

    if (v2)
    {
      Error::chuck("NLinkedList::NElement::operator=() -this method should never be called", a2);
    }
  }

  return result;
}

void NArray<NResizingQueue<NFrame>::NElement>::~NArray(void *a1)
{
  *a1 = &unk_2837075E0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 40 * v4;
      v6 = v5 - 40;
      v7 = (v5 - 16);
      v8 = -40 * v4;
      do
      {
        *(v7 - 3) = &unk_283707628;
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        v6 -= 40;
        v7 -= 5;
        v8 += 40;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x10A1C80C9FAA55CLL);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NWavChunk2HTKFrames::c0Invert(void *this)
{
  v1 = *(this + 1);
  v2 = *v1;
  v3 = *(this + 238);
  v4 = (v3 - 1);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    this = memmove(*(this + 1), v1 + 1, 4 * (v3 - 1));
  }

  v1[v4] = v2;
  return this;
}

float NWavChunk2HTKFrames::toOutType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 32);
    if (v2 < 8)
    {
      goto LABEL_7;
    }

    if ((v5 - v4) < 0x20)
    {
      goto LABEL_7;
    }

    v3 = v2 & 0xFFFFFFF8;
    v6 = (v5 + 16);
    v7 = (v4 + 16);
    v8 = v3;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      *(v6 - 1) = v9;
      *v6 = v10;
      v6 += 2;
      v7 += 2;
      v8 -= 8;
    }

    while (v8);
    if (v3 != v2)
    {
LABEL_7:
      v11 = v2 - v3;
      v12 = 4 * v3;
      v13 = (v5 + 4 * v3);
      v14 = (v4 + v12);
      do
      {
        v15 = *v14++;
        LODWORD(v9) = v15;
        *v13++ = v15;
        --v11;
      }

      while (v11);
    }
  }

  return *&v9;
}

uint64_t NWavChunk2HTKFrames::finish(uint64_t result, const char *a2)
{
  if ((*(result + 800) & 1) == 0)
  {
    Error::chuck("NWavChunk2HTKFrames::finish - NWavChunk2HTKFrames::init() must be called before finishing", a2);
  }

  v2 = result;
  if (*(result + 984) == 1)
  {
    while (1)
    {
      result = NDynamicMFCC::finish((v2 + 576), a2);
      if (result)
      {
        break;
      }

      if ((*(v2 + 600) & 1) == 0)
      {
        Error::chuck("NDynamicMFCC::getFrame() - no frame available", v4);
      }

      v5 = *(v2 + 40);
      if (v5)
      {
        v6 = 0;
        v7 = *(v2 + 584);
        v8 = *(v2 + 32);
        if (v5 < 8)
        {
          goto LABEL_13;
        }

        if ((v8 - v7) < 0x20)
        {
          goto LABEL_13;
        }

        v6 = v5 & 0xFFFFFFF8;
        v9 = (v8 + 16);
        v10 = (v7 + 16);
        v11 = v6;
        do
        {
          v12 = *v10;
          *(v9 - 1) = *(v10 - 1);
          *v9 = v12;
          v9 += 2;
          v10 += 2;
          v11 -= 8;
        }

        while (v11);
        if (v6 != v5)
        {
LABEL_13:
          v13 = v5 - v6;
          v14 = 4 * v6;
          v15 = (v8 + 4 * v6);
          v16 = (v7 + v14);
          do
          {
            v17 = *v16++;
            *v15++ = v17;
            --v13;
          }

          while (v13);
        }
      }

      NResizingQueue<NFrame>::push(a2, v2 + 24);
    }
  }

  return result;
}

uint64_t NDEAcAnal::setSamRate(uint64_t this, const char *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    Error::chuck("NDEAcAnal::setSamRate() - a_iSamRate (= %d) must be strictly positive\n", a2, 0);
  }

  *(this + 648) = v2;
  v3 = (*(this + 584) * v2) / 10000000.0;
  v4 = 2147500000.0;
  if (v3 <= 2147500000.0)
  {
    v4 = (*(this + 584) * v2) / 10000000.0;
    if (v3 < 0.0)
    {
      v4 = 0.0;
    }
  }

  *(this + 652) = v4;
  v5 = (*(this + 580) * v2) / 10000000.0;
  v6 = 2147500000.0;
  if (v5 <= 2147500000.0)
  {
    v6 = (*(this + 580) * v2) / 10000000.0;
    if (v5 < 0.0)
    {
      v6 = 0.0;
    }
  }

  v7 = v6;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  *(this + 656) = v7;
  return this;
}

void NDEAcAnal::initStatic(NDEAcAnal *this, double a2)
{
  v2 = *(this + 592) & 1;
  v3 = *(this + 594) & 1;
  v4 = *(this + 595) & 1;
  v8 = *(this + 593) & 1;
  v7 = v2;
  v6 = v3;
  v5 = v4;
  AccelStaticMFCC::init(this, this + 656, this + 162, this + 163, &v8, this + 147, &v7, &v6, a2, &v5, this + 149, this + 150, this + 151, this + 155, this + 154, this + 157, this + 158, this + 152, this + 153);
}

uint64_t NDEAcAnal::feedFromInt(NDEAcAnal *this, const char *a2, const unsigned int *a3)
{
  if ((*(this + 576) & 1) == 0)
  {
    Error::chuck("NDEAcAnal::feedFromInt() - you must call NDEAcAnal::init() before feeding the program", a2, a3);
  }

  v4 = *a3;
  v5 = *(this + 164);
  if (*a3 > v5)
  {
    Error::chuck("NDEAcAnal::feedFromInt() - we are supposed to get only one frame at a time feed size (%d) must be less than step size (%d) ", a2, *a3, v5);
  }

  if ((*this & 1) == 0)
  {
    Error::chuck("AccelStaticMFCC::start() - AccelStaticMFCC::init() has to be called before starting", a2);
  }

  if (*(this + 64))
  {
    Error::chuck("AccelStaticMFCC::start() - frames undrained from previous chunk - call isFrame() or reset()", a2);
  }

  if (!a2 && v4)
  {
    Error::chuck("AccelStaticMFCC::start() - pointer to chunk is NULL", 0);
  }

  v6 = 0;
  *(this + 64) = a2;
  *(this + 130) = v4;
  *(this + 131) = 0;
  *(this + 508) = 0;
  *(this + 660) = 0;
  while (1)
  {
    result = AccelStaticMFCC::isFrame(this, a2);
    if (!result)
    {
      break;
    }

    v8 = *(this + 136);
    v9 = *(this + 6);
    if (v8 != v9)
    {
      v10 = *(this + 67);
      if (v10)
      {
        MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        LODWORD(v9) = *(this + 6);
      }

      *(this + 136) = v9;
      operator new[]();
    }

    if (*(this + 136))
    {
      v11 = 0;
      v12 = *(this + 2);
      v13 = *(this + 67);
      if (v8 < 8)
      {
        goto LABEL_20;
      }

      if ((v13 - v12) < 0x20)
      {
        goto LABEL_20;
      }

      v11 = v8 & 0xFFFFFFF8;
      v14 = (v13 + 16);
      v15 = (v12 + 16);
      v16 = v11;
      do
      {
        v17 = *v15;
        *(v14 - 1) = *(v15 - 1);
        *v14 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v11 != v8)
      {
LABEL_20:
        v18 = v8 - v11;
        v19 = 4 * v11;
        v20 = (v13 + v19);
        v21 = (v12 + v19);
        do
        {
          v22 = *v21++;
          *v20++ = v22;
          --v18;
        }

        while (v18);
      }
    }

    if ((*(this + 624) & 1) != 0 && (*(this + 625) & 1) == 0)
    {
      v23 = *(this + 67);
      v24 = *v23;
      v25 = *(this + 154);
      v26 = (v25 - 1);
      if (v25 == 1)
      {
        v26 = 0;
      }

      else
      {
        memmove(*(this + 67), v23 + 1, 4 * (v25 - 1));
      }

      v23[v26] = v24;
    }

    if (*(this + 636))
    {
      Error::chuck("NDEAcAnal::feedFromInt() - deltas not supported", a2);
    }

    v27 = *(this + 142);
    if (v27)
    {
      v28 = 0;
      v29 = *(this + 67);
      v30 = *(this + 70);
      if (v27 < 8)
      {
        goto LABEL_35;
      }

      if ((v30 - v29) < 0x20)
      {
        goto LABEL_35;
      }

      v28 = v27 & 0xFFFFFFF8;
      v31 = (v30 + 16);
      v32 = (v29 + 16);
      v33 = v28;
      do
      {
        v34 = *v32;
        *(v31 - 1) = *(v32 - 1);
        *v31 = v34;
        v31 += 2;
        v32 += 2;
        v33 -= 8;
      }

      while (v33);
      if (v28 != v27)
      {
LABEL_35:
        v35 = v27 - v28;
        v36 = 4 * v28;
        v37 = (v30 + 4 * v28);
        v38 = (v29 + v36);
        do
        {
          v39 = *v38++;
          *v37++ = v39;
          --v35;
        }

        while (v35);
      }
    }

    *(this + 660) = 1;
    v6 = (v6 + 1);
  }

  if (v6 >= 2)
  {
    Error::chuck("NDEAcAnal::feedFromInt() - we are supposed to get *at most* one frame at a time (num frames = %d) ", a2, v6);
  }

  return result;
}

void *NDEAcAnal::c0Invert(void *this)
{
  v1 = *(this + 67);
  v2 = *v1;
  v3 = *(this + 154);
  v4 = (v3 - 1);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    this = memmove(*(this + 67), v1 + 1, 4 * (v3 - 1));
  }

  v1[v4] = v2;
  return this;
}

float NDEAcAnal::toOutType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 568);
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 560);
    if (v2 < 8 || (v4 - v3) <= 0x1F)
    {
      v6 = 0;
LABEL_10:
      v12 = v2 - v6;
      v13 = 4 * v6;
      v14 = (v4 + v13);
      v15 = (v3 + v13);
      do
      {
        v16 = *v15++;
        LODWORD(v10) = v16;
        *v14++ = v16;
        --v12;
      }

      while (v12);
      return *&v10;
    }

    v6 = v2 & 0xFFFFFFF8;
    v7 = (v4 + 16);
    v8 = (v3 + 16);
    v9 = v6;
    do
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      *(v7 - 1) = v10;
      *v7 = v11;
      v7 += 2;
      v8 += 2;
      v9 -= 8;
    }

    while (v9);
    if (v6 != v2)
    {
      goto LABEL_10;
    }
  }

  return *&v10;
}

uint64_t NDEAcAnal::reset(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 504) = *(this + 488) + 1;
  *(this + 512) = 0;
  *(this + 508) = 0;
  return this;
}

uint64_t NDEAcAnal::frameSize(NDEAcAnal *this)
{
  if (*(this + 636))
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  return (v1 * *(this + 154));
}

void AccelWin2MFCC::AccelWin2MFCC(AccelWin2MFCC *this)
{
  *this = 0;
  *(this + 12) = 0;
  *(this + 2) = off_28370A538;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 9) = off_28370A538;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 100) = 0;
  *(this + 124) = 0;
  *(this + 16) = off_283709B60;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 19) = &unk_2837073D8;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 22) = off_28370A538;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 204) = 0;
  *(this + 228) = 0;
  *(this + 29) = &unk_283707420;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = off_28370A538;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 38) = off_28370A538;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
}

{
  *this = 0;
  *(this + 12) = 0;
  *(this + 2) = off_28370A538;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 9) = off_28370A538;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 100) = 0;
  *(this + 124) = 0;
  *(this + 16) = off_283709B60;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 19) = &unk_2837073D8;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 22) = off_28370A538;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 204) = 0;
  *(this + 228) = 0;
  *(this + 29) = &unk_283707420;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = off_28370A538;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 38) = off_28370A538;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
}

uint64_t NArray<NArray<float>>::fromArray(uint64_t result, uint64_t a2, int *a3)
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
        v11 = v7 + 24 * v10 - 24;
        v12 = -24 * v10;
        v13 = v11;
        do
        {
          *v13 = off_28370A538;
          v14 = v13[1];
          if (v14)
          {
            MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
          }

          v13 -= 3;
          v11 -= 24;
          v12 += 24;
        }

        while (v12);
      }

      MEMORY[0x223DF1D00](v9, 0x1081C80622C3295);
      v6 = *a3;
    }

    *(v4 + 16) = v6;
    operator new[]();
  }

  if (v5)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      result = (*(*(*(v4 + 8) + v15) + 16))(*(v4 + 8) + v15, a2 + v15);
      ++v16;
      v15 += 24;
    }

    while (v16 < *(v4 + 16));
  }

  return result;
}

uint64_t NArray<NArray<float>>::operator=(uint64_t a1, uint64_t a2)
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
          v9 = v6 + 24 * v8 - 24;
          v10 = -24 * v8;
          v11 = v9;
          do
          {
            *v11 = off_28370A538;
            v12 = v11[1];
            if (v12)
            {
              MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
            }

            v11 -= 3;
            v9 -= 24;
            v10 += 24;
          }

          while (v10);
        }

        MEMORY[0x223DF1D00](v7, 0x1081C80622C3295);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        (*(*(*(a1 + 8) + v13) + 16))(*(a1 + 8) + v13, *(a2 + 8) + v13);
        ++v14;
        v13 += 24;
      }

      while (v14 < *(a1 + 16));
    }
  }

  return a1;
}

void N2DArray<float>::~N2DArray(void *a1)
{
  *a1 = &unk_2837073D8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = off_28370A538;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1081C80622C3295);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *N2DArray<float>::~N2DArray(void *result)
{
  *result = &unk_2837073D8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = off_28370A538;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1081C80622C3295);
    return v2;
  }

  return result;
}

void NArray<NArray<float>>::~NArray(void *a1)
{
  *a1 = &unk_2837073D8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = off_28370A538;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1081C80622C3295);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NArray<float>>::~NArray(void *result)
{
  *result = &unk_2837073D8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 24 * v4 - 24;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        *v7 = off_28370A538;
        v8 = v7[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        v7 -= 3;
        v5 -= 24;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x223DF1D00](v3, 0x1081C80622C3295);
    return v2;
  }

  return result;
}

void AccelWin2MFCC::init(AccelWin2MFCC *this, unsigned int *a2, const unsigned int *a3, const BOOL *a4, const BOOL *a5, const BOOL *a6, const BOOL *a7, const unsigned int *a8, double a9, const float *a10, const float *a11, const unsigned int *a12, const unsigned int *a13, const float *a14, const float *a15, const float *a16, const float *a17)
{
  *this = 0;
  v18 = *a2;
  *(this + 83) = *a2;
  v19 = *a3;
  *(this + 84) = *a3;
  *(this + 340) = *a4;
  v20 = 1;
  do
  {
    v21 = v20;
    v20 *= 2;
  }

  while (v21 < v19);
  *(this + 86) = v21;
  *(this + 87) = (v21 >> 1) + 1;
  *(this + 352) = *a7;
  *(this + 89) = *a14 * *a15;
  *(this + 360) = *a5;
  v22 = *a8;
  *(this + 91) = *a8;
  *(this + 92) = v18 >> 1;
  *(this + 93) = *a10;
  *(this + 94) = *a11;
  *(this + 95) = *a16;
  *&a9 = *a17;
  *(this + 96) = *a17;
  v23 = *a6;
  *(this + 361) = v23;
  *(this + 97) = *a12;
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = *a13;
  }

  *(this + 98) = v24;
  AccelWin2MFCC::initProc(this, a9);
}

void TSAcAnal::init(TSAcAnal *this, const NString *a2, uint64_t a3, const NString *a4, char a5, BOOL a6)
{
  v14 = a6;
  if (!a3)
  {
    Error::chuck("TSAcAnal::init() - a_iSamRate (= %d) must be strictly positive\n", a2, a3, a4, 0);
  }

  v8 = *(a4 + 2);
  if (v8 == 8)
  {
    if (**(a4 + 2) != 0x454C5F54414F4C46)
    {
      goto LABEL_15;
    }

    v13 = 4;
  }

  else
  {
    if (v8 != 6 || ((v9 = *(a4 + 2), v10 = *v9, v11 = *(v9 + 2), v10 == 1597387091) ? (v12 = v11 == 17740) : (v12 = 0), !v12))
    {
LABEL_15:
      Error::chuck("TSAcAnal::init() - sorry, format must be 'S16_LE' or 'FLOAT_LE'", a2);
    }

    v13 = 2;
  }

  *(this + 285) = v13;
  *(this + 284) = a3;
  if ((this + 1112) != a2)
  {
    (*(*(this + 139) + 64))(this + 1112, *(a2 + 2), a2 + 8);
  }

  *(this + 1104) = a5;
  NWavChunk2HTKFrames::init(this, (this + 1112), this + 284, this + 1104, &v14);
}

uint64_t TSAcAnal::reset(TSAcAnal *this)
{
  *(this + 1148) = 0;
  *(this + 32) = 0;
  *(this + 138) = *(this + 134) + 1;
  *(this + 70) = 0;
  *(this + 556) = 0;
  NDynamicMFCC::reset((this + 576));
  *(this + 65) = 0u;
  for (i = *(this + 127); i; i = *(this + 127))
  {
    *(this + 127) = *(i + 8);
    (*(*(this + 126) + 72))(this + 1008);
  }

  *(this + 128) = 0;
  *(this + 258) = 0;
  *(this + 132) = 0;
  *(this + 1061) = 0;

  return NResizingQueue<NFrame>::enlargeBy(this + 1000, this + 268);
}

uint64_t TSAcAnal::feedFromInt(TSAcAnal *this, const char *a2, unsigned int *a3)
{
  if ((*(this + 1149) & 1) == 0)
  {
    Error::chuck("TSAcAnal::feedFromInt() - you must call TSAcAnal::init() before feedFromInt()", a2, a3);
  }

  if (*(this + 1148) == 1)
  {
    Error::chuck("TSAcAnal::feedFromInt() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2, a3);
  }

  v4 = 0;
  return NWavChunk2HTKFrames::run(this, a2, a3, &v4, this + 1000);
}

uint64_t TSAcAnal::feedFromFloat(TSAcAnal *this, const float *a2, unsigned int *a3)
{
  if ((*(this + 1149) & 1) == 0)
  {
    Error::chuck("TSAcAnal::feedFromFloat() - you must call TSAcAnal::init() before feedFromFloat()", a2, a3);
  }

  if (*(this + 1148) == 1)
  {
    Error::chuck("TSAcAnal::feedFromFloat() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2, a3);
  }

  v4 = 1;
  return NWavChunk2HTKFrames::run(this, a2, a3, &v4, this + 1000);
}

uint64_t TSAcAnal::feed(TSAcAnal *this, const NString *a2)
{
  if ((*(this + 1149) & 1) == 0)
  {
    Error::chuck("TSAcAnal::feed() - you must call TSAcAnal::init() before feed()", a2);
  }

  if (*(this + 1148) == 1)
  {
    Error::chuck("TSAcAnal::feed() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2);
  }

  v2 = *(this + 285);
  v6 = v2 == 4;
  v3 = *(a2 + 2);
  v5 = *(a2 + 2) / v2;
  return NWavChunk2HTKFrames::run(this, v3, &v5, &v6, this + 1000);
}

uint64_t TSAcAnal::endfeed(TSAcAnal *this, const char *a2)
{
  if ((*(this + 1149) & 1) == 0)
  {
    Error::chuck("TSAcAnal::endfeed() - you must call TSAcAnal::init() before endfeed()\n", a2);
  }

  if (*(this + 1148) == 1)
  {
    Error::chuck("TSAcAnal::endfeed() - TSAcAnal::endfeed() has been called before; is cannot be called againbefore the buffer (m_queue) has been emptied\n", a2);
  }

  result = NWavChunk2HTKFrames::finish(this, this + 1000);
  *(this + 1068) = 1;
  *(this + 1148) = 1;
  return result;
}

BOOL TSAcAnal::eos(TSAcAnal *this)
{
  if (*(this + 1148) != 1)
  {
    return 0;
  }

  if (*(this + 1068))
  {
    return *(this + 264) == *(this + 265);
  }

  return (*(this + 264) - *(this + 265)) < 2;
}

BOOL TSAcAnal::framesAvailable(TSAcAnal *this)
{
  if (*(this + 1068))
  {
    return *(this + 264) != *(this + 265);
  }

  else
  {
    return (*(this + 264) - *(this + 265)) > 1;
  }
}

void TSAcAnal::getframe(TSAcAnal *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  TSAcAnal::getFrameByRef(this, a2);
  *a3 = off_28370A538;
  *(a3 + 16) = *(v4 + 16);
  operator new[]();
}

void TSAcAnal::getStringFrame(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 5;
  operator new[]();
}

void sub_223A7FCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v13 = a10;
  v15 = v13[2];
  if (v15)
  {
    MEMORY[0x223DF1D00](v15, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSAcAnal::parmCode(TSAcAnal *this)
{
  v1 = *(this + 929);
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 801) | (2 * *(this + 801));
  }

  return ((v2 + v1) | (*(this + 984) << 8) | (*(this + 984) << 9) | (*(this + 956) << 13)) + 6;
}

void sub_223A7FEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_223A808AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v10 = *(v9 + 1160);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    a9 = 0;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "VTTranscriber endAudio failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223A80898);
}

void sub_223A80924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    a9 = 0;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "VTTranscriber recognizeWavData failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223A80914);
}

void sub_223A80A18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v10 = *(v9 + 1160);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    a9 = 0;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "VTTranscriber runRecognitionWithCallback failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223A80A00);
}

void sub_223A80C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 buf)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      buf = 0;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "VTTranscriber failed : _EARSpeechRecognizer initWithConfiguration", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x223A80BCCLL);
  }

  _Unwind_Resume(exception_object);
}

void nd_create()
{
  if ((initndlib(void)::bNDLibInitialized & 1) == 0)
  {
    initndlib(void)::bNDLibInitialized = 1;
  }

  operator new();
}

void sub_223A80CE0(void *a1)
{
  MEMORY[0x223DF1D20](v1, 0x10F0C40F773E768);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x223A80CD0);
}

uint64_t nd_addresource(IntNovDetect *a1, const char *a2, const void *a3)
{
  if (a1)
  {
    IntNovDetect::addresource(a1, a2, a3);
  }

  return 0xFFFFFFFFLL;
}

void sub_223A80E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t nd_initialize(IntNovDetect *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    IntNovDetect::initialize(a1, a2, a3);
  }

  return 0xFFFFFFFFLL;
}

void sub_223A80FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t nd_wavedataf(int32x2_t *a1, const float *a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::wavedataf(a1, a2, a3);
  return 0;
}

void sub_223A81188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

IntNovDetect *nd_getresults(IntNovDetect *result, const char *a2)
{
  if (result)
  {
    return IntNovDetect::getresults(result, a2);
  }

  return result;
}

uint64_t nd_phrasecount(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1838836561)
  {
    v4 = "Invalid NovDetect Object Signature";
    goto LABEL_9;
  }

  if (*(a1 + 4) != 1)
  {
    v4 = "NovDetect: phrasecount() can only be called after initialize()";
LABEL_9:
    Error::chuck(v4, a2);
  }

  if (*(a1 + 40) == 1)
  {
    v5 = 6;
    v2 = a1;
    (*(*(a1 + 16) + 64))();
    a1 = v2;
    *(v2 + 40) = 0;
  }

  return *(a1 + 3176);
}

void sub_223A81578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

IntNovDetect *nd_getresultsstr(IntNovDetect *result, const char *a2)
{
  if (result)
  {
    return IntNovDetect::getresultsstr(result, a2);
  }

  return result;
}

IntNovDetect *nd_getsupervector(IntNovDetect *result, const char *a2, __n128 a3)
{
  if (result)
  {
    return IntNovDetect::getsupervector(result, a2, a3);
  }

  return result;
}

IntNovDetect *nd_scoresupervector(IntNovDetect *result, const float *a2, uint64_t a3)
{
  if (result)
  {
    return IntNovDetect::scoresupervector(result, a2, a3);
  }

  return result;
}

uint64_t nd_resetbest(IntNovDetect *a1, const char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::resetbest(a1, a2);
  return 0;
}

void sub_223A81C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t nd_endwavedata(int32x2_t *a1, const char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::endwavedata(a1, a2);
  return 0;
}

void sub_223A81DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t nd_close(IntNovDetect *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::~IntNovDetect(a1);
  MEMORY[0x223DF1D20]();
  return 0;
}

IntNovDetect *nd_getoption(IntNovDetect *result, const char *a2)
{
  if (result)
  {
    IntNovDetect::getoption(result, a2);
  }

  return result;
}

uint64_t nd_sat_initialize(IntNovDetect *a1, const char *a2)
{
  if (a1)
  {
    IntNovDetect::sat_initialize(a1, a2);
  }

  return 0xFFFFFFFFLL;
}

void sub_223A82194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

_DWORD *nd_sat_analyze(_DWORD *result, const float *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (*result == -1838836561)
    {
      if (result[3] == 1)
      {
        result[710] = 0;
        TSSATScorer::score((result + 586), a2, a3);
        result = v3 + 710;
        v3[710] = v4;
        if (*(v3 + 40) == 1)
        {
          v6 = 6;
          (*(*(v3 + 2) + 64))(v3 + 4, "all ok", &v6);
          *(v3 + 40) = 0;
          return v3 + 710;
        }

        return result;
      }

      v5 = "NovDetect: sat_analyze() can only be called after sat_initialize()";
    }

    else
    {
      v5 = "Invalid NovDetect Object Signature";
    }

    Error::chuck(v5, a2);
  }

  return result;
}

_DWORD *nd_sat_analyzetransformed(_DWORD *result, const float *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (*result == -1838836561)
    {
      if (result[3] == 1)
      {
        result[722] = 0;
        TSSATScorer::scoreSpeakerVector((result + 586), a2, a3);
        result = v3 + 722;
        v3[722] = v4;
        if (*(v3 + 40) == 1)
        {
          v6 = 6;
          (*(*(v3 + 2) + 64))(v3 + 4, "all ok", &v6);
          *(v3 + 40) = 0;
          return v3 + 722;
        }

        return result;
      }

      v5 = "NovDetect: sat_analyzetransformed() can only be called after sat_initialize()";
    }

    else
    {
      v5 = "Invalid NovDetect Object Signature";
    }

    Error::chuck(v5, a2);
  }

  return result;
}

uint64_t nd_sat_update(IntNovDetect *a1, const char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::sat_update(a1, a2);
  return 0;
}

void sub_223A827E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t nd_sat_deletevector(IntNovDetect *a1, const char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::sat_deletevector(a1, a2);
  return 0;
}

void sub_223A8299C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t nd_sat_vectorcount(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1838836561)
  {
    v6 = "Invalid NovDetect Object Signature";
    goto LABEL_8;
  }

  if (*(a1 + 12) != 1)
  {
    v6 = "NovDetect: sat_vectorcount() can only be called after sat_initialize()";
LABEL_8:
    Error::chuck(v6, a2);
  }

  result = *(a1 + 2468);
  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 2468);
    v7 = 6;
    v5 = a1;
    (*(*(a1 + 16) + 64))(a1 + 16, "all ok", &v7);
    *(v5 + 40) = 0;
    return v4;
  }

  return result;
}

void sub_223A82BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t nd_sat_reset(IntNovDetect *a1, const char *a2)
{
  if (a1)
  {
    IntNovDetect::sat_reset(a1, a2);
  }

  return 0xFFFFFFFFLL;
}

void sub_223A82D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

IntNovDetect *nd_sat_getspeakervector(IntNovDetect *result, const char *a2)
{
  if (result)
  {
    IntNovDetect::sat_getspeakervector(result, a2);
  }

  return result;
}

const char *nd_error(uint64_t a1)
{
  if (!a1)
  {
    return "Invalid NovDetect pointer (NULL)";
  }

  if (*(a1 + 4) == 2 || *a1 != -1838836561)
  {
    return "Invalid NovDetect object";
  }

  return *(a1 + 32);
}

uint64_t nd_initlog(uint64_t a1)
{
  if ((initndlib(void)::bNDLibInitialized & 1) == 0)
  {
    initndlib(void)::bNDLibInitialized = 1;
  }

  if (a1)
  {
    operator new[]();
  }

  return 0;
}

void sub_223A83118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x223A83104);
  }

  _Unwind_Resume(exception_object);
}

void nd_logcontrol(const char *a1, const char *a2)
{
  if (a1)
  {
    strlen(a1);
    operator new[]();
  }

  Error::chuck("Null pointer passed to string constructor", a2);
}

void sub_223A83334(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  NLinkedList<NString>::~NLinkedList(va);
  if (a7)
  {
    MEMORY[0x223DF1D00](a7, 0x1000C8077774924);
  }

  if (a10)
  {
    MEMORY[0x223DF1D00](a10, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x223A83310);
  }

  _Unwind_Resume(a1);
}

void IntNovDetect::IntNovDetect(IntNovDetect *this)
{
  *(this + 2) = &unk_28370A720;
  *(this + 6) = 0;
  operator new[]();
}

void sub_223A84174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, TSSATScorer *a16, TSSupervectorScorer *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, NWavChunk2HTKFrames *a23, uint64_t a24, uint64_t a25, char a26)
{
  NLinkedList<NMap<NString,NString>::HashItem>::~NLinkedList(&a26);
  NHash<NMap<NString,NString>::HashItem>::~NHash((v27 - 120));
  NStringHash<NString>::~NStringHash(a10);
  v26[394] = a11;
  v29 = v26[395];
  if (v29)
  {
    MEMORY[0x223DF1D00](v29, 0x1000C8052888210);
  }

  v26[391] = a12;
  v30 = v26[392];
  if (v30)
  {
    MEMORY[0x223DF1D00](v30, 0x1000C8052888210);
  }

  v26[388] = a13;
  v31 = v26[389];
  if (v31)
  {
    MEMORY[0x223DF1D00](v31, 0x1000C8052888210);
  }

  v26[385] = a14;
  v32 = v26[386];
  if (v32)
  {
    MEMORY[0x223DF1D00](v32, 0x1000C80BDFB0063);
  }

  NConfigSection::~NConfigSection((v26 + 374));
  v26[362] = a18;
  v33 = v26[363];
  if (v33)
  {
    MEMORY[0x223DF1D00](v33, 0x1000C8052888210);
  }

  v26[358] = a19;
  v34 = v26[359];
  if (v34)
  {
    MEMORY[0x223DF1D00](v34, 0x1000C8052888210);
  }

  v26[352] = a20;
  v35 = v26[353];
  if (v35)
  {
    MEMORY[0x223DF1D00](v35, 0x1000C8052888210);
  }

  v26[338] = a21;
  v36 = v26[340];
  if (v36)
  {
    MEMORY[0x223DF1D00](v36, 0x1000C8077774924);
  }

  v26[335] = off_28370A538;
  v37 = v26[336];
  if (v37)
  {
    MEMORY[0x223DF1D00](v37, 0x1000C8052888210);
  }

  NArray<NFrame>::~NArray(a15);
  TSSATScorer::~TSSATScorer(a16);
  TSSupervectorScorer::~TSSupervectorScorer(a17);
  TSHMMDetector::~TSHMMDetector((v26 + 222));
  TSHMMDetector::~TSHMMDetector((v26 + 161));
  NLocalCepNorm::~NLocalCepNorm((v26 + 150));
  TSAcAnal::~TSAcAnal(a23);
  v26[2] = a24;
  v38 = v26[4];
  if (v38)
  {
    MEMORY[0x223DF1D00](v38, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void *NStringHash<NString>::~NStringHash(void *result)
{
  *result = &unk_28370A040;
  result[1] = &unk_28370A0D0;
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
        for (*(v4 - 32) = &unk_28370A108; ; (*(*(v4 - 32) + 72))(v4 - 32))
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
  *result = &unk_28370A040;
  result[1] = &unk_28370A0D0;
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
        for (*(v4 - 32) = &unk_28370A108; ; (*(*(v4 - 32) + 72))(v4 - 32))
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

void NConfigSection::~NConfigSection(NConfigSection *this)
{
  *(this + 3) = &unk_28370A040;
  *(this + 4) = &unk_28370A0D0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = v2 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_28370A108; ; (*(*(v4 - 32) + 72))(v4 - 32))
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

      while (v5 != v2);
    }

    MEMORY[0x223DF1D00](v2 - 16, 0x10A1C80F4A7E088);
  }

  *this = &unk_28370A720;
  v7 = *(this + 2);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }
}

{
  *(this + 3) = &unk_28370A040;
  *(this + 4) = &unk_28370A0D0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = v2 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_28370A108; ; (*(*(v4 - 32) + 72))(v4 - 32))
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

      while (v5 != v2);
    }

    MEMORY[0x223DF1D00](v2 - 16, 0x10A1C80F4A7E088);
  }

  *this = &unk_28370A720;
  v7 = *(this + 2);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }
}

void NLocalCepNorm::~NLocalCepNorm(NLocalCepNorm *this)
{
  *(this + 7) = off_28370A538;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 4) = &unk_2837076F0;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = v3 + 24 * v5 - 24;
      v7 = -24 * v5;
      v8 = v6;
      do
      {
        *v8 = off_28370A538;
        v9 = v8[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        v8 -= 3;
        v6 -= 24;
        v7 += 24;
      }

      while (v7);
    }

    MEMORY[0x223DF1D00](v4, 0x1081C80622C3295);
  }
}

void TSAcAnal::~TSAcAnal(TSAcAnal *this)
{
  *(this + 139) = &unk_28370A720;
  v2 = *(this + 141);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *(this + 135) = off_28370A538;
  v3 = *(this + 136);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 125) = &unk_283707510;
  for (*(this + 126) = &unk_283707540; ; (*(*(this + 126) + 72))(this + 1008))
  {
    v4 = *(this + 127);
    if (!v4)
    {
      break;
    }

    *(this + 127) = *(v4 + 8);
  }

  *(this + 128) = 0;
  *(this + 258) = 0;

  NWavChunk2HTKFrames::~NWavChunk2HTKFrames(this);
}

void NWavChunk2HTKFrames::~NWavChunk2HTKFrames(NWavChunk2HTKFrames *this)
{
  *(this + 110) = &unk_28370A720;
  v2 = *(this + 112);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  *(this + 107) = &unk_28370A720;
  v3 = *(this + 109);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  *(this + 104) = &unk_28370A720;
  v4 = *(this + 106);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  *(this + 101) = &unk_28370A720;
  v5 = *(this + 103);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }

  NDynamicMFCC::~NDynamicMFCC((this + 576));
  AccelWin2MFCC::~AccelWin2MFCC(this + 17);
  *(this + 13) = off_28370A538;
  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
  }

  *(this + 10) = off_28370A538;
  v7 = *(this + 11);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8052888210);
  }

  *(this + 7) = off_28370A538;
  v8 = *(this + 8);
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
  }

  *(this + 3) = off_28370A538;
  v9 = *(this + 4);
  if (v9)
  {
    MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
  }

  *this = off_28370A538;
  v10 = *(this + 1);
  if (v10)
  {
    MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
  }
}

void NDynamicMFCC::~NDynamicMFCC(NDynamicMFCC *this)
{
  *(this + 25) = off_28370A538;
  v2 = *(this + 26);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 19) = off_28370A538;
  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  for (*(this + 8) = &unk_283707470; ; (*(*(this + 8) + 72))(this + 64))
  {
    v4 = *(this + 9);
    if (!v4)
    {
      break;
    }

    *(this + 9) = *(v4 + 8);
  }

  *(this + 10) = 0;
  *(this + 22) = 0;
  for (*(this + 4) = &unk_283707470; ; (*(*(this + 4) + 72))(this + 32))
  {
    v5 = *(this + 5);
    if (!v5)
    {
      break;
    }

    *(this + 5) = *(v5 + 8);
  }

  *(this + 6) = 0;
  *(this + 14) = 0;
  *this = off_28370A538;
  v6 = *(this + 1);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
  }
}

uint64_t NLinkedList<NArray<float>>::deleteElement(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void NLinkedList<NArray<float>>::NElement::~NElement(void *a1)
{
  *a1 = &unk_2837074E0;
  a1[2] = off_28370A538;
  if (a1[3])
  {
    MEMORY[0x223DF1D00](a1[3], 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NLinkedList<NArray<float>>::NElement::~NElement(void *result)
{
  *result = &unk_2837074E0;
  result[2] = off_28370A538;
  if (result[3])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[3], 0x1000C8052888210);
    return v1;
  }

  return result;
}

uint64_t NLinkedList<NArray<float>>::reset(uint64_t result)
{
  v1 = result;
  for (i = *(result + 8); i; i = *(v1 + 8))
  {
    *(v1 + 8) = *(i + 8);
    result = (*(*v1 + 72))(v1);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return result;
}

uint64_t NLinkedList<NArray<float>>::insert(_DWORD *a1, const char *a2, uint64_t a3)
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

uint64_t NLinkedList<NArray<float>>::append(uint64_t a1)
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

uint64_t NLinkedList<NArray<float>>::prepend(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(result + 8) = v3;
  }

  else
  {
    *(a1 + 16) = result;
  }

  *(a1 + 8) = result;
  ++*(a1 + 24);
  return result;
}

uint64_t NLinkedList<NArray<float>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 56))(a1);
    for (i = *(a2 + 8); i; i = *(i + 8))
    {
      (*(*a1 + 40))(a1, i + 16);
    }
  }

  return a1;
}

void NLinkedList<NArray<float>>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283707470;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NArray<float>>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283707470;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t NLinkedList<NArray<float>>::removeElement(uint64_t a1, uint64_t a2)
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

void *NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::NElement::~NElement(void *result)
{
  *result = &unk_2837075B0;
  result[2] = &unk_2837075E0;
  v1 = result[3];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 40 * v4;
      v6 = v5 - 40;
      v7 = (v5 - 16);
      v8 = -40 * v4;
      do
      {
        *(v7 - 3) = &unk_283707628;
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        v6 -= 40;
        v7 -= 5;
        v8 += 40;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x10A1C80C9FAA55CLL);
    return v2;
  }

  return result;
}

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::reset(uint64_t result)
{
  v1 = result;
  for (i = *(result + 8); i; i = *(v1 + 8))
  {
    *(v1 + 8) = *(i + 8);
    result = (*(*v1 + 72))(v1);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return result;
}

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::insert(_DWORD *a1, const char *a2, uint64_t a3)
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

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::append(uint64_t a1)
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

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::prepend(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(result + 8) = v3;
  }

  else
  {
    *(a1 + 16) = result;
  }

  *(a1 + 8) = result;
  ++*(a1 + 24);
  return result;
}

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 56))(a1);
    for (i = *(a2 + 8); i; i = *(i + 8))
    {
      (*(*a1 + 40))(a1, i + 16);
    }
  }

  return a1;
}

void NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283707540;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283707540;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_283707540;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::removeElement(uint64_t a1, uint64_t a2)
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

void NResizingQueue<NFrame>::~NResizingQueue(uint64_t a1)
{
  *a1 = &unk_283707510;
  v2 = a1 + 8;
  *(a1 + 8) = &unk_283707540;
  for (i = *(a1 + 16); i; i = *(a1 + 16))
  {
    *(a1 + 16) = *(i + 8);
    (*(*(a1 + 8) + 72))(v2);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  JUMPOUT(0x223DF1D20);
}

uint64_t NResizingQueue<NFrame>::~NResizingQueue(uint64_t a1)
{
  *a1 = &unk_283707510;
  v2 = a1 + 8;
  *(a1 + 8) = &unk_283707540;
  for (i = *(a1 + 16); i; i = *(a1 + 16))
  {
    *(a1 + 16) = *(i + 8);
    (*(*(a1 + 8) + 72))(v2);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

{
  *a1 = &unk_283707510;
  v2 = a1 + 8;
  *(a1 + 8) = &unk_283707540;
  for (i = *(a1 + 16); i; i = *(a1 + 16))
  {
    *(a1 + 16) = *(i + 8);
    (*(*(a1 + 8) + 72))(v2);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void NStringHash<NString>::~NStringHash(void *a1)
{
  *a1 = &unk_28370A040;
  a1[1] = &unk_28370A0D0;
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
        for (*(v3 - 32) = &unk_28370A108; ; (*(*(v3 - 32) + 72))(v3 - 32))
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

uint64_t NArray<short>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<short>::fromArray(uint64_t result, uint64_t a2, int *a3)
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

uint64_t NArray<short>::operator=(uint64_t result, uint64_t a2)
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

void NArray<short>::~NArray(void *a1)
{
  *a1 = &unk_283709188;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C80BDFB0063);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<short>::~NArray(void *result)
{
  *result = &unk_283709188;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C80BDFB0063);
    return v1;
  }

  return result;
}

void AccelStaticMFCC::~AccelStaticMFCC(void **this)
{
  AccelWin2MFCC::~AccelWin2MFCC(this + 11);
  this[7] = off_28370A538;
  v2 = this[8];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  this[4] = off_28370A538;
  v3 = this[5];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  this[1] = off_28370A538;
  v4 = this[2];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }
}

uint64_t IntNovDetect::clearError(uint64_t this)
{
  if (*(this + 40) == 1)
  {
    v5 = v1;
    v6 = v2;
    v4 = 6;
    v3 = this + 16;
    this = (*(*(this + 16) + 64))();
    *(v3 + 24) = 0;
  }

  return this;
}

void IntNovDetect::~IntNovDetect(IntNovDetect *this)
{
  *this = xmmword_223B13290;
  *(this + 398) = &unk_28370A040;
  *(this + 399) = &unk_28370A0D0;
  v2 = *(this + 400);
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = v2 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_28370A108; ; (*(*(v4 - 32) + 72))(v4 - 32))
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

      while (v5 != v2);
    }

    MEMORY[0x223DF1D00](v2 - 16, 0x10A1C80F4A7E088);
  }

  *(this + 394) = off_28370A538;
  v7 = *(this + 395);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8052888210);
  }

  *(this + 391) = off_283709B60;
  v8 = *(this + 392);
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
  }

  *(this + 388) = off_283709B60;
  v9 = *(this + 389);
  if (v9)
  {
    MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
  }

  *(this + 385) = &unk_283709188;
  v10 = *(this + 386);
  if (v10)
  {
    MEMORY[0x223DF1D00](v10, 0x1000C80BDFB0063);
  }

  *(this + 377) = &unk_28370A040;
  *(this + 378) = &unk_28370A0D0;
  v11 = *(this + 379);
  if (v11)
  {
    v12 = *(v11 - 8);
    if (v12)
    {
      v13 = v11 + 32 * v12;
      do
      {
        v14 = v13 - 32;
        for (*(v13 - 32) = &unk_28370A108; ; (*(*(v13 - 32) + 72))(v13 - 32))
        {
          v15 = *(v13 - 24);
          if (!v15)
          {
            break;
          }

          *(v13 - 24) = *(v15 + 8);
        }

        *(v13 - 16) = 0;
        *(v13 - 8) = 0;
        v13 -= 32;
      }

      while (v14 != v11);
    }

    MEMORY[0x223DF1D00](v11 - 16, 0x10A1C80F4A7E088);
  }

  *(this + 374) = &unk_28370A720;
  v16 = *(this + 376);
  if (v16)
  {
    MEMORY[0x223DF1D00](v16, 0x1000C8077774924);
  }

  *(this + 362) = off_283709B60;
  v17 = *(this + 363);
  if (v17)
  {
    MEMORY[0x223DF1D00](v17, 0x1000C8052888210);
  }

  *(this + 358) = off_28370A538;
  v18 = *(this + 359);
  if (v18)
  {
    MEMORY[0x223DF1D00](v18, 0x1000C8052888210);
  }

  *(this + 352) = off_28370A538;
  v19 = *(this + 353);
  if (v19)
  {
    MEMORY[0x223DF1D00](v19, 0x1000C8052888210);
  }

  *(this + 338) = &unk_28370A720;
  v20 = *(this + 340);
  if (v20)
  {
    MEMORY[0x223DF1D00](v20, 0x1000C8077774924);
  }

  *(this + 335) = off_28370A538;
  v21 = *(this + 336);
  if (v21)
  {
    MEMORY[0x223DF1D00](v21, 0x1000C8052888210);
  }

  *(this + 331) = &unk_2837076F0;
  v22 = *(this + 332);
  if (v22)
  {
    v23 = v22 - 16;
    v24 = *(v22 - 8);
    if (v24)
    {
      v25 = v22 + 24 * v24 - 24;
      v26 = -24 * v24;
      v27 = v25;
      do
      {
        *v27 = off_28370A538;
        v28 = v27[1];
        if (v28)
        {
          MEMORY[0x223DF1D00](v28, 0x1000C8052888210);
        }

        v27 -= 3;
        v25 -= 24;
        v26 += 24;
      }

      while (v26);
    }

    MEMORY[0x223DF1D00](v23, 0x1081C80622C3295);
  }

  TSSATScorer::~TSSATScorer((this + 2344));
  *(this + 283) = &unk_283707100;
  v29 = *(this + 284);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  *(this + 284) = 0;
  *(this + 289) = off_28370A538;
  v30 = *(this + 290);
  if (v30)
  {
    MEMORY[0x223DF1D00](v30, 0x1000C8052888210);
  }

  *(this + 286) = off_28370A538;
  v31 = *(this + 287);
  if (v31)
  {
    MEMORY[0x223DF1D00](v31, 0x1000C8052888210);
  }

  TSHMMDetector::~TSHMMDetector((this + 1776));
  TSHMMDetector::~TSHMMDetector((this + 1288));
  *(this + 157) = off_28370A538;
  v32 = *(this + 158);
  if (v32)
  {
    MEMORY[0x223DF1D00](v32, 0x1000C8052888210);
  }

  *(this + 154) = &unk_2837076F0;
  v33 = *(this + 155);
  if (v33)
  {
    v34 = v33 - 16;
    v35 = *(v33 - 8);
    if (v35)
    {
      v36 = v33 + 24 * v35 - 24;
      v37 = -24 * v35;
      v38 = v36;
      do
      {
        *v38 = off_28370A538;
        v39 = v38[1];
        if (v39)
        {
          MEMORY[0x223DF1D00](v39, 0x1000C8052888210);
        }

        v38 -= 3;
        v36 -= 24;
        v37 += 24;
      }

      while (v37);
    }

    MEMORY[0x223DF1D00](v34, 0x1081C80622C3295);
  }

  *(this + 145) = &unk_28370A720;
  v40 = *(this + 147);
  if (v40)
  {
    MEMORY[0x223DF1D00](v40, 0x1000C8077774924);
  }

  *(this + 141) = off_28370A538;
  v41 = *(this + 142);
  if (v41)
  {
    MEMORY[0x223DF1D00](v41, 0x1000C8052888210);
  }

  *(this + 131) = &unk_283707510;
  for (*(this + 132) = &unk_283707540; ; (*(*(this + 132) + 72))(this + 1056))
  {
    v42 = *(this + 133);
    if (!v42)
    {
      break;
    }

    *(this + 133) = *(v42 + 8);
  }

  *(this + 134) = 0;
  *(this + 270) = 0;
  NWavChunk2HTKFrames::~NWavChunk2HTKFrames((this + 48));
  *(this + 2) = &unk_28370A720;
  v43 = *(this + 4);
  if (v43)
  {
    MEMORY[0x223DF1D00](v43, 0x1000C8077774924);
  }
}

void IntNovDetect::addresource(IntNovDetect *this, const char *__s, const void *a3)
{
  if (*this == -1838836561)
  {
    if (!*(this + 1))
    {
      if (__s)
      {
        strlen(__s);
        operator new[]();
      }

      Error::chuck("Null pointer passed to string constructor", 0, a3);
    }

    Error::chuck("NovDetect: addresource() can only be called after create()", __s, a3);
  }

  Error::chuck("Invalid NovDetect Object Signature", __s, a3);
}

void sub_223A87170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v18);
  }

  if (a18)
  {
    MEMORY[0x223DF1D00](a18, v18);
  }

  _Unwind_Resume(exception_object);
}

const NString *IntNovDetect::mapfile(IntNovDetect *this, const NString *a2)
{
  if (*(a2 + 2) >= 7u)
  {
    v2 = *(a2 + 2);
    v3 = *v2;
    v4 = *(v2 + 3);
    if (v3 == 1684957549 && v4 == 980968804)
    {
      NMap<NString,NString>::find();
    }
  }

  return a2;
}

void sub_223A87450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x223DF1D00](a18, v18);
  }

  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v18);
  }

  _Unwind_Resume(exception_object);
}

void IntNovDetect::initialize(IntNovDetect *this, const char *a2, const char *a3)
{
  if (*this == -1838836561)
  {
    if (!*(this + 1))
    {
      v7[0] = 0;
      NConfig::NConfig(&v9, v7);
      if (a2)
      {
        if (a3)
        {
          if (strncmp(a2, "CONFIGSTR: ", 0xBuLL))
          {
            *v7 = &unk_28370A720;
            v8 = strlen(a2);
            operator new[]();
          }

          *v7 = &unk_28370A720;
          v8 = strlen(a2 + 11);
          operator new[]();
        }

        v6 = "NovDetect: initialize() cannot be called with rootpath = NULL";
      }

      else
      {
        v6 = "NovDetect: initialize() cannot be called with filename = NULL";
      }

      Error::chuck(v6, v5);
    }

    Error::chuck("NovDetect: initialize() can only be called after create()", a2, a3);
  }

  Error::chuck("Invalid NovDetect Object Signature", a2, a3);
}

void sub_223A8C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47, unint64_t a48, unint64_t a49, unint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  STACK[0x338] = a43;
  if (STACK[0x348])
  {
    MEMORY[0x223DF1D00](STACK[0x348], 0x1000C8077774924);
  }

  STACK[0x350] = a47;
  if (STACK[0x360])
  {
    MEMORY[0x223DF1D00](STACK[0x360], 0x1000C8077774924);
  }

  STACK[0x368] = a48;
  if (STACK[0x378])
  {
    MEMORY[0x223DF1D00](STACK[0x378], 0x1000C8077774924);
  }

  STACK[0x380] = a49;
  if (STACK[0x390])
  {
    MEMORY[0x223DF1D00](STACK[0x390], 0x1000C8077774924);
  }

  STACK[0x398] = a50;
  if (STACK[0x3A8])
  {
    MEMORY[0x223DF1D00](STACK[0x3A8], 0x1000C8077774924);
  }

  *(v53 - 240) = a51;
  v55 = *(v53 - 224);
  if (v55)
  {
    MEMORY[0x223DF1D00](v55, 0x1000C8077774924);
  }

  *(v53 - 216) = a52;
  v56 = *(v53 - 200);
  if (v56)
  {
    MEMORY[0x223DF1D00](v56, 0x1000C8077774924);
  }

  *(v53 - 192) = a53;
  v57 = *(v53 - 176);
  if (v57)
  {
    MEMORY[0x223DF1D00](v57, 0x1000C8077774924);
  }

  NConfig::~NConfig((v53 - 168));
  _Unwind_Resume(a1);
}

void sub_223A8D464()
{
  STACK[0x350] = v1;
  if (STACK[0x360])
  {
    MEMORY[0x223DF1D00](STACK[0x360], 0x1000C8077774924);
  }

  STACK[0x368] = v0;
  if (STACK[0x378])
  {
    MEMORY[0x223DF1D00](STACK[0x378], 0x1000C8077774924);
  }

  JUMPOUT(0x223A8D3D4);
}

void sub_223A8D4B4()
{
  STACK[0x368] = v1;
  if (STACK[0x378])
  {
    MEMORY[0x223DF1D00](STACK[0x378], 0x1000C8077774924);
  }

  STACK[0x380] = v0;
  if (STACK[0x390])
  {
    MEMORY[0x223DF1D00](STACK[0x390], 0x1000C8077774924);
  }

  JUMPOUT(0x223A8D3F4);
}

void sub_223A8D504()
{
  STACK[0x380] = v1;
  if (STACK[0x390])
  {
    MEMORY[0x223DF1D00](STACK[0x390], 0x1000C8077774924);
  }

  STACK[0x398] = v0;
  if (STACK[0x3A8])
  {
    MEMORY[0x223DF1D00](STACK[0x3A8], 0x1000C8077774924);
  }

  JUMPOUT(0x223A8D414);
}

void sub_223A8D550()
{
  STACK[0x398] = v1;
  if (STACK[0x3A8])
  {
    MEMORY[0x223DF1D00](STACK[0x3A8], 0x1000C8077774924);
  }

  *(v2 - 240) = v0;
  v3 = *(v2 - 224);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  JUMPOUT(0x223A8D434);
}

void sub_223A8D59C()
{
  *(v2 - 240) = v1;
  v3 = *(v2 - 224);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  *(v2 - 216) = v0;
  if (!*(v2 - 200))
  {
    JUMPOUT(0x223A8D454);
  }

  JUMPOUT(0x223A8D440);
}

void IntNovDetect::zeroWavePrime(int32x2_t *this, const char *a2)
{
  v3 = &this[387];
  v4 = this[365].i32[0];
  if (this[387].i32[0] != v4)
  {
    this[387].i32[0] = v4;
    operator new[]();
  }

  if (this[384].i32[1])
  {
    v5 = 0;
    do
    {
      if ((this[149].i8[5] & 1) == 0)
      {
        Error::chuck("TSAcAnal::feedFromInt() - you must call TSAcAnal::init() before feedFromInt()", a2);
      }

      if (this[149].i8[4] == 1)
      {
        Error::chuck("TSAcAnal::feedFromInt() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2);
      }

      v6 = this[386];
      v9 = 0;
      NWavChunk2HTKFrames::run(&this[6], v6, v3, &v9, &this[131]);
      IntNovDetect::advanceDetection(this, v7, v8);
      ++v5;
    }

    while (v5 < this[384].i32[1]);
  }
}

void IntNovDetect::rescoreInit(IntNovDetect *this)
{
  v2 = *(this + 426);
  v3 = v2 - *(this + 423);
  v4 = *(this + 425) - v2 + *(this + 372);
  v5 = (v4 & ~(v4 >> 31)) + v3;
  v6 = *(this + 547) - *(this + 548) + *(this + 494);
  v7 = v5 + (v6 & ~(v6 >> 31)) + *(this + 739) - (v6 > 0);
  v8 = *(this + 669);
  v9 = (this + 1776);
  v10 = v8 - v7;
  if (v8 <= v7)
  {
    TSHMMDetector::reset(v9);
LABEL_5:
    v10 = 0;
    v13 = 0;
    v12 = *(this + 669);
    if (v12 != *(this + 666))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  TSHMMDetector::reset(v9);
  if (!v10)
  {
    goto LABEL_5;
  }

  v12 = *(this + 669);
LABEL_6:
  *(this + 2226) = 1;
  v13 = v10;
LABEL_7:
  v14 = *(this + 733);
  v15 = v14 + v13 - v12;
  if (v14 >= v12 - v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12 - (v14 + v13);
  }

  while (v13 < v12)
  {
    v17 = *(this + 666);
    v18 = *(this + 668) + v13 + v17 - v12;
    if (v18 >= v17)
    {
      v19 = *(this + 666);
    }

    else
    {
      v19 = 0;
    }

    TSHMMDetector::feedFrame((this + 1776), (*(this + 332) + 24 * (v18 - v19)), v11);
    ++v15;
    if (v16)
    {
      --v16;
      goto LABEL_10;
    }

    while (TSHMMDetector::updateResult((this + 1776), v20, v11))
    {
      v21 = *(this + 548);
      v22 = *(this + 545);
      v23 = v21 - v22;
      if (v21 != v22)
      {
        if ((*(this + 2237) & 1) == 0)
        {
          v26 = *(this + 546);
          v27 = 0.0;
          if (v26 < *(this + 564))
          {
            v27 = *(*(this + 281) + 4 * v26);
          }

          if (!v23)
          {
            goto LABEL_27;
          }

          v28 = *(this + 544);
          v29 = *(this + 557);
          if (v29 == 1.0)
          {
            v11.n128_f32[0] = v23;
            goto LABEL_26;
          }

          if (v29 != 0.0)
          {
            v11.n128_f32[0] = powf(v23, v29);
LABEL_26:
            v28 = v28 / v11.n128_f32[0];
          }

          v30 = v27 + v28;
          goto LABEL_39;
        }

        v24 = *(this + 488);
        v25 = *(this + 2236) + 1;
        v48 = 0;
        if (v24 < v25)
        {
          LODWORD(v26) = 0;
          v23 = 0;
LABEL_27:
          v30 = -1000000.0;
          goto LABEL_39;
        }

        LODWORD(v26) = 0;
        v31 = 0;
        v23 = 0;
        v32 = v24 / v25;
        if (v32 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32;
        }

        v30 = -1000000.0;
        do
        {
          v34 = TSHMMDetector::lengthNormalizedScorePhrase((this + 1776), &v48);
          if (v34 && v30 < *(&v34 + 1))
          {
            LODWORD(v26) = v31;
            v30 = *(&v34 + 1);
            v23 = v34;
          }

          v48 = ++v31;
        }

        while (v33 != v31);
        v21 = *(this + 548);
LABEL_39:
        v35 = (*(this + 547) - v21 + *(this + 494)) & ~((*(this + 547) - v21 + *(this + 494)) >> 31);
        v11.n128_u32[0] = *(this + 740);
        v36 = v15 - v35;
        v37 = v15 > v35;
        if (v30 > v11.n128_f32[0] && v37)
        {
          *(this + 734) = v36;
          *(this + 735) = v23;
          *(this + 736) = v26;
          *(this + 740) = v30;
        }

        v39 = *(this + 794);
        if (v39)
        {
          v40 = *(this + 488);
          v41 = *(this + 2236) + 1;
          v42 = v39 >= v40 / v41 ? v40 / v41 : v39;
          v47 = 0;
          if (v40 >= v41)
          {
            if (v37)
            {
              v43 = 0;
              do
              {
                v44 = TSHMMDetector::lengthNormalizedScorePhrase((this + 1776), &v47);
                v11.n128_u32[0] = HIDWORD(v44);
                v45 = *(this + 395);
                if (*(v45 + 4 * v43) < *(&v44 + 1))
                {
                  *(*(this + 389) + 4 * v43) = v36;
                  v11.n128_f32[0] = *(&v44 + 1) + 0.0;
                  *(*(this + 392) + 4 * v43) = v44;
                  *(v45 + 4 * v43) = *(&v44 + 1) + 0.0;
                }

                v47 = ++v43;
              }

              while (v42 != v43);
            }

            else
            {
              v46 = 1;
              do
              {
                TSHMMDetector::lengthNormalizedScorePhrase((this + 1776), &v47);
                v47 = v46++;
                LODWORD(v42) = v42 - 1;
              }

              while (v42);
            }
          }
        }
      }
    }

    v16 = 0;
LABEL_10:
    ++v13;
    v12 = *(this + 669);
  }
}

void IntNovDetect::updateScoresFromRescorer(IntNovDetect *this, const unsigned int *a2)
{
  v2 = *(this + 548);
  v3 = *(this + 545);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    return;
  }

  if (*(this + 2237))
  {
    v7 = *(this + 488);
    v8 = *(this + 2236) + 1;
    v30 = 0;
    if (v7 >= v8)
    {
      LODWORD(v9) = 0;
      v15 = 0;
      v4 = 0;
      v16 = v7 / v8;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      v14 = -1000000.0;
      do
      {
        v18 = TSHMMDetector::lengthNormalizedScorePhrase((this + 1776), &v30);
        if (v18 && v14 < *(&v18 + 1))
        {
          LODWORD(v9) = v15;
          v14 = *(&v18 + 1);
          v4 = v18;
        }

        v30 = ++v15;
      }

      while (v17 != v15);
      v2 = *(this + 548);
      goto LABEL_23;
    }

    LODWORD(v9) = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v9 = *(this + 546);
  v10 = 0.0;
  if (v9 < *(this + 564))
  {
    v10 = *(*(this + 281) + 4 * v9);
  }

  if (!v4)
  {
LABEL_11:
    v14 = -1000000.0;
    goto LABEL_23;
  }

  v11 = *(this + 544);
  v12 = *(this + 557);
  if (v12 == 1.0)
  {
    v13 = v4;
  }

  else
  {
    if (v12 == 0.0)
    {
      goto LABEL_22;
    }

    v13 = powf(v4, v12);
  }

  v11 = v11 / v13;
LABEL_22:
  v14 = v10 + v11;
LABEL_23:
  v19 = *(this + 547) - v2 + *(this + 494);
  v20 = v19 & ~(v19 >> 31);
  if (v14 > *(this + 740) && *a2 > v20)
  {
    *(this + 734) = *a2 - v20;
    *(this + 735) = v4;
    *(this + 736) = v9;
    *(this + 740) = v14;
  }

  v21 = *(this + 794);
  if (v21)
  {
    v22 = *(this + 488);
    v23 = *(this + 2236) + 1;
    v29 = 0;
    if (v22 >= v23)
    {
      v24 = 0;
      v25 = v22 / v23;
      if (v21 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v21;
      }

      do
      {
        v27 = TSHMMDetector::lengthNormalizedScorePhrase((this + 1776), &v29);
        v28 = *(this + 395);
        if (*(v28 + 4 * v24) < *(&v27 + 1) && *a2 > v20)
        {
          *(*(this + 389) + 4 * v24) = *a2 - v20;
          *(*(this + 392) + 4 * v24) = v27;
          *(v28 + 4 * v24) = *(&v27 + 1) + 0.0;
        }

        v29 = ++v24;
      }

      while (v26 != v24);
    }
  }
}

uint64_t IntNovDetect::resetMultiphraseResults(uint64_t this)
{
  if (*(this + 3176))
  {
    v1 = 0;
    v2 = *(this + 3112);
    v3 = *(this + 3136);
    v4 = *(this + 3160);
    do
    {
      *(v2 + 4 * v1) = 0;
      *(v3 + 4 * v1) = 0;
      *(v4 + 4 * v1++) = -915135488;
    }

    while (v1 < *(this + 3176));
  }

  return this;
}

float IntNovDetect::convertStrArrToFloatArr(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a3 + 32))(a3, a2 + 16);
  if (*(a2 + 16))
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 8);
    do
    {
      v10 = v9 + v7;
      if (!*(v10 + 8) || (v11 = 0, strtod(*(v10 + 16), &v11), v11 != (*(v10 + 16) + *(v10 + 8))))
      {
        Error::chuck("NovDetect: cannot convert element to float", v5);
      }

      v9 = *(a2 + 8);
      result = atof(*(v9 + v7 + 16));
      *(a3[1] + 4 * v8++) = result;
      v7 += 24;
    }

    while (v8 < *(a2 + 16));
  }

  return result;
}

uint64_t IntNovDetect::handleWavedataOverflow(IntNovDetect *this, const char *a2, int *a3, const BOOL *a4)
{
  v7 = *(this + 732);
  v8 = (*a3 - v7);
  v12 = *a3 - v7;
  v13 = v7;
  if (*a4)
  {
    if ((*(this + 1197) & 1) == 0)
    {
      goto LABEL_20;
    }

    if (*(this + 1196) == 1)
    {
      goto LABEL_22;
    }

    v14 = 1;
  }

  else
  {
    if ((*(this + 1197) & 1) == 0)
    {
      goto LABEL_21;
    }

    if (*(this + 1196) == 1)
    {
      goto LABEL_23;
    }

    v14 = 0;
  }

  NWavChunk2HTKFrames::run(this + 48, a2, &v12, &v14, this + 1048);
  TSHMMDetector::reset((this + 1288));
  TSHMMDetector::reset((this + 1776));
  *(this + 1196) = 0;
  *(this + 44) = 0;
  *(this + 150) = *(this + 146) + 1;
  *(this + 76) = 0;
  *(this + 604) = 0;
  NDynamicMFCC::reset((this + 624));
  *(this + 68) = 0u;
  for (i = *(this + 133); i; i = *(this + 133))
  {
    *(this + 133) = *(i + 8);
    (*(*(this + 132) + 72))(this + 1056);
  }

  *(this + 134) = 0;
  *(this + 270) = 0;
  *(this + 138) = 0;
  *(this + 1109) = 0;
  NResizingQueue<NFrame>::enlargeBy(this + 1048, this + 280);
  if (*(this + 2980) == 1)
  {
    NLocalCepNorm::resync(this + 1200);
  }

  *(this + 366) = 0;
  if (!*a4)
  {
    if (*(this + 1197))
    {
      if (*(this + 1196) != 1)
      {
        v10 = &a2[2 * v8];
        v14 = 0;
        goto LABEL_19;
      }

LABEL_23:
      Error::chuck("TSAcAnal::feedFromInt() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2);
    }

LABEL_21:
    Error::chuck("TSAcAnal::feedFromInt() - you must call TSAcAnal::init() before feedFromInt()", a2);
  }

  if ((*(this + 1197) & 1) == 0)
  {
LABEL_20:
    Error::chuck("TSAcAnal::feedFromFloat() - you must call TSAcAnal::init() before feedFromFloat()", a2);
  }

  if (*(this + 1196) == 1)
  {
LABEL_22:
    Error::chuck("TSAcAnal::feedFromFloat() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2);
  }

  v10 = &a2[4 * v8];
  v14 = 1;
LABEL_19:
  result = NWavChunk2HTKFrames::run(this + 48, v10, &v13, &v14, this + 1048);
  *(this + 732) += v7;
  return result;
}

uint64_t IntNovDetect::wavedataf(int32x2_t *this, const float *a2, int a3)
{
  v11 = a3;
  if (this->i32[0] != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (this->i32[1] != 1)
  {
    Error::chuck("NovDetect: wavedataf() can only be called after initialize()", a2);
  }

  if (this[1].i32[0] != 1)
  {
    Error::chuck("NovDetect: wavedata() cannot be called after endwavedata()", a2);
  }

  if (!a2)
  {
    Error::chuck("NovDetect: wavedataf() data is NULL pointer", 0);
  }

  if (a3 < 0)
  {
    Error::chuck("NovDetect: wavedataf() length must be positive", a2);
  }

  v4 = this[366].i32[0];
  this[366].i32[0] = v4 + a3;
  if (__CFADD__(v4, a3))
  {
    v12[0] = 1;
    IntNovDetect::handleWavedataOverflow(this, a2, &v11, v12);
  }

  else
  {
    v10 = a3;
    if ((this[149].i8[5] & 1) == 0)
    {
      Error::chuck("TSAcAnal::feedFromFloat() - you must call TSAcAnal::init() before feedFromFloat()", a2);
    }

    if (this[149].i8[4] == 1)
    {
      Error::chuck("TSAcAnal::feedFromFloat() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2);
    }

    *v12 = 1;
    NWavChunk2HTKFrames::run(&this[6], a2, &v10, v12, &this[131]);
  }

  IntNovDetect::advanceDetection(this, v5, v6);
  if (this[5].i8[0] == 1)
  {
    *v12 = 6;
    v8 = this[2];
    v7 = this + 2;
    (*(*&v8 + 64))(v7, "all ok", v12);
    v7[3].i8[0] = 0;
  }

  return 0;
}

uint64_t IntNovDetect::getresults(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: getresults() can only be called after initialize()", a2);
  }

  v3 = *(this + 734);
  v4 = *(this + 730);
  v5 = *(this + 731);
  v6 = *(this + 735);
  v7 = v3 >= v6;
  v9 = v3 - v6;
  v8 = v9 != 0 && v7;
  v10 = v9 * v4;
  if (!v8)
  {
    v10 = 0;
  }

  *(this + 682) = *(this + 732);
  *(this + 683) = v10;
  *(this + 684) = v5 + v4 * v3;
  *(this + 685) = *(this + 736);
  *(this + 686) = *(this + 740);
  *(this + 2748) = *(this + 2989);
  *(this + 2749) = *(this + 2988);
  if (*(this + 40) == 1)
  {
    v12 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v12);
    *(this + 40) = 0;
  }

  return this + 2728;
}

uint64_t IntNovDetect::phrasecount(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: phrasecount() can only be called after initialize()", a2);
  }

  if (*(this + 40) == 1)
  {
    v4 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v4);
    *(this + 40) = 0;
  }

  return *(this + 794);
}

uint64_t IntNovDetect::getresultsstr(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: getresultsstr() can only be called after initialize()", a2);
  }

  v3 = *(this + 734);
  v4 = *(this + 730);
  v5 = *(this + 735);
  v6 = v3 >= v5;
  v8 = v3 - v5;
  v7 = v8 != 0 && v6;
  v9 = v8 * v4;
  if (!v7)
  {
    v9 = 0;
  }

  NString::printf((this + 2704), "samples_fed: %u\nbest_start: %u\nbest_end: %u\nbest_score: %.3f\n", *(this + 732), v9, *(this + 731) + v4 * v3, *(this + 740));
  if (*(this + 40) == 1)
  {
    v11 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v11);
    *(this + 40) = 0;
  }

  return *(this + 340);
}

uint64_t IntNovDetect::getsupervector(IntNovDetect *this, const char *a2, __n128 a3)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  v3 = a2;
  if (*(this + 40) == 1)
  {
    v70 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v70);
    *(this + 40) = 0;
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: getsupervector() can only be called after initialize()", a2);
  }

  if ((*(this + 2981) & 1) == 0)
  {
    Error::chuck("NovDetect: supervector not enabled in config", a2);
  }

  if (*(this + 2982) == 1)
  {
    v5 = *(this + 516);
    if (*(this + 708) != v5)
    {
      Error::chuck("TSHMMDetector::lastModelOutput() - mismatched size in output array (%d != %d)", a2, *(this + 708), v5);
    }

    if (*(this + 2227) == 1)
    {
      (*(*(this + 352) + 16))(this + 2816, this + 2048);
      v6 = 2752;
    }

    else
    {
      v6 = 2784;
    }

    return this + v6;
  }

  if (*(this + 2987) != 1 || *(this + 2988) != 1)
  {
    return this + 2784;
  }

    ;
  }

  v7 = *(this + 548);
  if (v7 == *(this + 545))
  {
    return this + 2784;
  }

  v8 = *(this + 731);
  v9 = v3 >= v8;
  v10 = (v3 - v8 + (*(this + 730) >> 1)) / *(this + 730);
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(this + 547) - v7 + *(this + 494);
  v12 = v11 & ~(v11 >> 31);
  v13 = *(this + 733);
  if (v13 < v10 + v12)
  {
    return this + 2784;
  }

  v14 = v13 - v10;
  v71 = v13 - v10 - v12;
  NLRHMMTraceback::stateAlignment(this + 1888, this + 2896, &v71);
  v16 = *(this + 728);
  if (v16)
  {
    v17 = 0;
    v18 = *(this + 363);
    v19 = *(this + 728);
    while (1)
    {
      v21 = *v18++;
      v20 = v21;
      if (!v21)
      {
        return this + 2784;
      }

      v17 += v20;
      if (!--v19)
      {
        goto LABEL_25;
      }
    }
  }

  v17 = 0;
LABEL_25:
  v23 = *(this + 669);
  v24 = v17 + v14;
  v9 = v23 >= v24;
  v25 = v23 - v24;
  if (!v9)
  {
    return this + 2784;
  }

  v26 = 0;
  v27 = *(this + 250);
  v28 = *(this + 1032);
  if (*(this + 691) && v16)
  {
    v29 = *(this + 363);
    v30 = *(this + 353);
    if (v16 >= 8)
    {
      v31 = v16 & 0xFFFFFFF8;
      v32 = v30 + 1;
      v33 = v29 + 1;
      v34 = v31;
      do
      {
        v15 = vcvtq_f32_u32(v33[-1]);
        v35 = vcvtq_f32_u32(*v33);
        v32[-1] = v15;
        *v32 = v35;
        v32 += 2;
        v33 += 2;
        v34 -= 8;
      }

      while (v34);
      if (v31 == v16)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v31 = 0;
    }

    v36 = v16 - v31;
    v37 = v31;
    v38 = &v30->f32[v37];
    v39 = &v29->u32[v37];
    do
    {
      v40 = *v39++;
      *v38++ = v40;
      --v36;
    }

    while (v36);
LABEL_37:
    v26 = v16;
  }

  if (*(this + 693))
  {
    v41 = v16 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = 0;
    v43 = v27 * ((2 * v28) | 1u);
    v44 = v43 - 1;
    v45 = v43 & 0xFFFFFFF8;
    v15.i32[0] = 1.0;
    while (1)
    {
      if (!v27)
      {
        v50 = *(*(this + 363) + 4 * v42);
        if (!v50)
        {
          goto LABEL_47;
        }

        goto LABEL_64;
      }

      v46 = *(this + 353);
      if (v43 <= 7)
      {
        break;
      }

      v47 = 0;
      if (__CFADD__(v26, v44))
      {
        goto LABEL_51;
      }

      if (HIDWORD(v44))
      {
        goto LABEL_51;
      }

      v59 = v26;
      v60 = v43 & 0xFFFFFFF8;
      do
      {
        v61 = (v46 + 4 * v59);
        *v61 = 0uLL;
        v61[1] = 0uLL;
        v59 += 8;
        v60 -= 8;
      }

      while (v60);
      v47 = v43 & 0xFFFFFFF8;
      if (v45 != v43)
      {
        goto LABEL_51;
      }

LABEL_54:
      v50 = *(*(this + 363) + 4 * v42);
      if (v50)
      {
        for (i = 0; i != v50; ++i)
        {
          v52 = 0;
          v53 = i + v25;
          v54 = v26;
          v55 = v43;
          do
          {
            if (v53 >= v23)
            {
              Error::chuck("NRingDropBuffer[] - out-of-bounds (size = %d, [] = %d)", -v43, 24, *v15.i64, 0.0, v23, (i + v25));
            }

            v56 = *(this + 666);
            v57 = *(this + 668) + v53 + v56 - v23;
            if (v57 < v56)
            {
              v56 = 0;
            }

            *(v46 + 4 * v54) = *(*(*(this + 332) + 24 * (v57 - v56) + 8) + v52) + *(v46 + 4 * v54);
            ++v54;
            v52 += 4;
            --v55;
          }

          while (v55);
        }

LABEL_64:
        v58 = 1.0 / v50;
        if (!v27)
        {
          goto LABEL_47;
        }

        goto LABEL_73;
      }

      v58 = 0.0;
LABEL_73:
      v62 = *(this + 353);
      if (v43 > 7)
      {
        v63 = 0;
        if (!__CFADD__(v26, v44) && !HIDWORD(v44))
        {
          v66 = v26;
          v67 = v43 & 0xFFFFFFF8;
          do
          {
            v68 = (v62 + 4 * v66);
            v69 = vmulq_n_f32(v68[1], v58);
            *v68 = vmulq_n_f32(*v68, v58);
            v68[1] = v69;
            v66 += 8;
            v67 -= 8;
          }

          while (v67);
          v63 = v43 & 0xFFFFFFF8;
          if (v45 == v43)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        v63 = 0;
      }

      v64 = v63 - v43;
      v65 = v26 + v63;
      do
      {
        *(v62 + 4 * v65) = v58 * *(v62 + 4 * v65);
        ++v65;
        v9 = __CFADD__(v64++, 1);
      }

      while (!v9);
LABEL_47:
      v25 += v50;
      v26 += v43;
      if (++v42 == v16)
      {
        goto LABEL_43;
      }
    }

    v47 = 0;
LABEL_51:
    v48 = v47 - v43;
    v49 = v26 + v47;
    do
    {
      *(v46 + 4 * v49++) = 0;
      v9 = __CFADD__(v48++, 1);
    }

    while (!v9);
    goto LABEL_54;
  }

LABEL_43:
  result = this + 2752;
  if (*(this + 694))
  {
    *(*(this + 353) + 4 * v26) = *(this + 740);
  }

  if (*(this + 40) == 1)
  {
    NString::operator=(this + 16, "all ok");
    result = this + 2752;
    *(this + 40) = 0;
  }

  return result;
}

uint64_t IntNovDetect::scoresupervector(IntNovDetect *this, const float *a2, uint64_t a3)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: scoresupervector() can only be called after initialize()", a2);
  }

  if ((*(this + 2985) & 1) == 0)
  {
    Error::chuck("NovDetect: supervector scorer not initialized in config", a2);
  }

  *(this + 710) = 0;
  *(this + 710) = TSSupervectorScorer::score((this + 2264), a2, a3);
  if (*(this + 40) == 1)
  {
    v5 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v5);
    *(this + 40) = 0;
  }

  return this + 2840;
}

uint64_t IntNovDetect::resetbest(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: resetbest() can only be called after initialize()", a2);
  }

  *(this + 367) = 0;
  *(this + 736) = 0;
  *(this + 740) = -915135488;
  *(this + 2989) = 0;
  if (*(this + 794))
  {
    v2 = 0;
    v3 = *(this + 389);
    v4 = *(this + 392);
    v5 = *(this + 395);
    do
    {
      *(v3 + 4 * v2) = 0;
      *(v4 + 4 * v2) = 0;
      *(v5 + 4 * v2++) = -915135488;
    }

    while (v2 < *(this + 794));
  }

  if (*(this + 40) == 1)
  {
    v6 = this + 16;
    (*(*(this + 2) + 64))();
    v6[24] = 0;
  }

  return 0;
}

uint64_t IntNovDetect::endwavedata(int32x2_t *this, const char *a2)
{
  if (this->i32[0] != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (this->i32[1] != 1)
  {
    Error::chuck("NovDetect: endwavedata() can only be called after initialize()", a2);
  }

  if (this[1].i32[0] != 1)
  {
    Error::chuck("NovDetect: endwavedata() cannot be called twice in a row", a2);
  }

  this[1].i32[0] = 2;
  if ((this[149].i8[5] & 1) == 0)
  {
    Error::chuck("TSAcAnal::endfeed() - you must call TSAcAnal::init() before endfeed()\n", a2);
  }

  if (this[149].i8[4] == 1)
  {
    Error::chuck("TSAcAnal::endfeed() - TSAcAnal::endfeed() has been called before; is cannot be called againbefore the buffer (m_queue) has been emptied\n", a2);
  }

  NWavChunk2HTKFrames::finish(&this[6], &this[131]);
  this[139].i8[4] = 1;
  this[149].i8[4] = 1;
  IntNovDetect::advanceDetection(this, v3, v4);
  if (this[372].i8[4] == 1)
  {
    NLocalCepNorm::endFrames(&this[150], v5);
    while (1)
    {
      v7 = this[152].i32[0];
      if ((this[160].i8[4] != 1 || !v7) && v7 != this[153].i32[1] + 1)
      {
        break;
      }

      NLocalCepNorm::setOutputFrame(&this[150], &this[335]);
      TSHMMDetector::feedFrame(&this[161], &this[335], v8);
      if (this[373].i8[3] == 1)
      {
        NRingDropBuffer::pushFrame(&this[331], &this[335]);
        if (this[373].i8[4] == 1)
        {
          TSHMMDetector::feedFrame(&this[222], &this[335], v10);
        }
      }

      ++this[366].i32[1];
      IntNovDetect::innerAdvanceDetection(this, v9, v10);
    }
  }

  if ((this[216].i8[4] & 1) == 0)
  {
    goto LABEL_40;
  }

  if (this[216].i8[5])
  {
    goto LABEL_41;
  }

    ;
  }

  this[216].i8[5] = 1;
  if (this[216].i8[6] == 1)
  {
    this[174].i8[1] = 1;
  }

  IntNovDetect::innerAdvanceDetection(this, v5, v6);
  if (this[373].i8[4] == 1)
  {
    if (this[372].i8[7] == 1)
    {
      v12 = this[275].u32[1];
      if (v12 < (*(**&this[223] + 32))(*&this[223]))
      {
        v13 = this[270].u32[0];
        if (v13)
        {
          bzero(*&this[269], 4 * v13);
        }

        for (this[277].i32[0] = 0; !this[275].i32[0]; ++this[277].i32[0])
        {
          TSHMMDetector::feedFrame(&this[222], &this[268], v11);
          --this[273].i32[1];
        }
      }
    }

    if (this[373].i8[0] != 1)
    {
      goto LABEL_33;
    }

    if (this[277].i8[4])
    {
      if ((this[277].i8[5] & 1) == 0)
      {
          ;
        }

        this[277].i8[5] = 1;
        if (this[277].i8[6] == 1)
        {
          this[235].i8[1] = 1;
        }

LABEL_33:
        v17 = this[366].u32[1];
        while (TSHMMDetector::updateResult(&this[222], v5, v11))
        {
          IntNovDetect::updateScoresFromRescorer(this, &v17);
        }

        this[373].i8[4] = 0;
        goto LABEL_37;
      }

LABEL_41:
      Error::chuck("TSHMMDetector::endFrame() - endFrame() already called", v5);
    }

LABEL_40:
    Error::chuck("TSHMMDetector::endFrame() - init() not called", v5);
  }

LABEL_37:
  if (this[5].i8[0] == 1)
  {
    v18 = 6;
    v15 = this[2];
    v14 = this + 2;
    (*(*&v15 + 64))(v14, "all ok", &v18);
    v14[3].i8[0] = 0;
  }

  return 0;
}

void IntNovDetect::feedFrameToDetector(IntNovDetect *this, const NFrame *a2, __n128 a3)
{
  TSHMMDetector::feedFrame((this + 1288), a2, a3);
  if (*(this + 2987) == 1)
  {
    NRingDropBuffer::pushFrame(this + 2648, a2);
    if (*(this + 2988) == 1)
    {

      TSHMMDetector::feedFrame((this + 1776), a2, v5);
    }
  }
}

uint64_t IntNovDetect::rescoreComplete(IntNovDetect *this, const char *a2, __n128 a3)
{
  if (*(this + 2983) == 1)
  {
    v4 = *(this + 551);
    if (v4 < (*(**(this + 223) + 32))(*(this + 223)))
    {
      v5 = *(this + 540);
      if (v5)
      {
        bzero(*(this + 269), 4 * v5);
      }

      for (*(this + 554) = 0; !*(this + 550); ++*(this + 554))
      {
        TSHMMDetector::feedFrame((this + 1776), (this + 2144), a3);
        --*(this + 547);
      }
    }
  }

  if (*(this + 2984) == 1)
  {
    if ((*(this + 2220) & 1) == 0)
    {
      Error::chuck("TSHMMDetector::endFrame() - init() not called", a2);
    }

    if (*(this + 2221))
    {
      Error::chuck("TSHMMDetector::endFrame() - endFrame() already called", a2);
    }

      ;
    }

    *(this + 2221) = 1;
    if (*(this + 2222) == 1)
    {
      *(this + 1881) = 1;
    }
  }

  for (i = *(this + 733); ; IntNovDetect::updateScoresFromRescorer(this, &i))
  {
    result = TSHMMDetector::updateResult((this + 1776), a2, a3);
    if (!result)
    {
      break;
    }
  }

  *(this + 2988) = 0;
  return result;
}

void IntNovDetect::getoption(IntNovDetect *this, const char *__s)
{
  if (*this == -1838836561)
  {
    if (*(this + 1) == 1)
    {
      if (__s)
      {
        strlen(__s);
        operator new[]();
      }

      Error::chuck("NovDetect: getoption() cannot be called with NULL", 0);
    }

    Error::chuck("NovDetect: getoption() can only be called after initialize()", __s);
  }

  Error::chuck("Invalid NovDetect Object Signature", __s);
}

void sub_223A8F140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

void IntNovDetect::sat_initialize(IntNovDetect *this, const char *__s)
{
  if (*this == -1838836561)
  {
    *(this + 3) = 0;
    if (*(this + 1) == 1)
    {
      if (*(this + 2986))
      {
        if (__s)
        {
          strlen(__s);
          operator new[]();
        }

        Error::chuck("Null pointer passed to string constructor", 0);
      }

      Error::chuck("NovDetect: SAT scoring not initialized in config", __s);
    }

    Error::chuck("NovDetect: sat_initialize() can only be called after initialize()", __s);
  }

  Error::chuck("Invalid NovDetect Object Signature", __s);
}

void sub_223A8F320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IntNovDetect::sat_analyze(IntNovDetect *this, const float *a2, uint64_t a3)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 3) != 1)
  {
    Error::chuck("NovDetect: sat_analyze() can only be called after sat_initialize()", a2);
  }

  *(this + 710) = 0;
  TSSATScorer::score((this + 2344), a2, a3);
  *(this + 710) = v4;
  if (*(this + 40) == 1)
  {
    v6 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v6);
    *(this + 40) = 0;
  }

  return this + 2840;
}

uint64_t IntNovDetect::sat_analyzetransformed(IntNovDetect *this, const float *a2, uint64_t a3)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 3) != 1)
  {
    Error::chuck("NovDetect: sat_analyzetransformed() can only be called after sat_initialize()", a2);
  }

  *(this + 722) = 0;
  TSSATScorer::scoreSpeakerVector((this + 2344), a2, a3);
  *(this + 722) = v4;
  if (*(this + 40) == 1)
  {
    v6 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v6);
    *(this + 40) = 0;
  }

  return this + 2888;
}

uint64_t IntNovDetect::sat_update(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 3) != 1)
  {
    Error::chuck("NovDetect: sat_update() can only be called after sat_initialize()", a2);
  }

  if ((*(this + 2641) & 1) == 0)
  {
    Error::chuck("TSSATScorer::update() - no valid vector prepared", a2);
  }

  *(this + 2641) = 0;
  NSATSpeaker::insert(this + 2432, this + 2584);
  if (*(this + 2510) == 1)
  {
    NSATSpeaker::write((this + 2432), v3);
  }

  if (*(this + 40) == 1)
  {
    v7 = 6;
    v5 = *(this + 2);
    v4 = this + 16;
    (*(v5 + 64))(v4, "all ok", &v7);
    v4[24] = 0;
  }

  return 0;
}

uint64_t IntNovDetect::sat_deletevector(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 3) != 1)
  {
    Error::chuck("NovDetect: sat_deletevector() can only be called after sat_initialize()", a2);
  }

  if (a2 != -1)
  {
    v12 = a2;
    if (*(this + 2640))
    {
      v3 = (this + 2432);
      v4 = &v12;
      goto LABEL_9;
    }

LABEL_16:
    Error::chuck("TSSATScorer::deleteVector() - setModelFile() not called", a2);
  }

  v5 = *(this + 617);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v7 < 0 != v6)
  {
    goto LABEL_11;
  }

  v13 = v7;
  if ((*(this + 2640) & 1) == 0)
  {
    goto LABEL_16;
  }

  v3 = (this + 2432);
  v4 = &v13;
LABEL_9:
  NSATSpeaker::remove(v3, v4);
  if (*(this + 2510) == 1)
  {
    NSATSpeaker::write((this + 2432), v8);
  }

LABEL_11:
  if (*(this + 40) == 1)
  {
    v14 = 6;
    v10 = *(this + 2);
    v9 = this + 16;
    (*(v10 + 64))(v9, "all ok", &v14);
    v9[24] = 0;
  }

  return 0;
}

uint64_t IntNovDetect::sat_vectorcount(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 3) != 1)
  {
    Error::chuck("NovDetect: sat_vectorcount() can only be called after sat_initialize()", a2);
  }

  v2 = *(this + 617);
  if (*(this + 40) == 1)
  {
    v3 = this + 16;
    (*(*(this + 2) + 64))();
    v3[24] = 0;
  }

  return v2;
}

void IntNovDetect::sat_getspeakervector(IntNovDetect *this, const char *a2)
{
  if (*this == -1838836561)
  {
    if (*(this + 3) == 1)
    {
      if (a2 == -1)
      {
        a2 = (*(this + 617) - 1);
      }

      v2 = a2;
      if (*(this + 2640))
      {
        NSATSpeaker::getVector(this + 2432, this + 2864, &v2);
      }

      Error::chuck("TSSATScorer::getSuperVector() - setModelFile() not called", a2);
    }

    Error::chuck("NovDetect: sat_getspeakervector() can only be called after sat_initialize()", a2);
  }

  Error::chuck("Invalid NovDetect Object Signature", a2);
}

void IntNovDetect::sat_reset(IntNovDetect *this, const char *a2)
{
  if (*this == -1838836561)
  {
    if (*(this + 3) == 1)
    {
      *(this + 2641) = 0;
      NSATSpeaker::reset((this + 2432), a2);
    }

    Error::chuck("NovDetect: sat_reset() can only be called after sat_initialize()", a2);
  }

  Error::chuck("Invalid NovDetect Object Signature", a2);
}

const char *IntNovDetect::error(IntNovDetect *this)
{
  if (*(this + 1) == 2 || *this != -1838836561)
  {
    return "Invalid NovDetect object";
  }

  else
  {
    return *(this + 4);
  }
}

uint64_t IntNovDetect::setError(uint64_t this, const NString *a2)
{
  if (*(this + 4) != 2 && *this == -1838836561)
  {
    if ((this + 16) != a2)
    {
      v2 = this;
      (*(*(this + 16) + 64))(this + 16, *(a2 + 2), a2 + 8);
      this = v2;
    }

    *(this + 40) = 1;
  }

  return this;
}

void IntNovDetect::nextFrameFromAcanal(IntNovDetect *this, const char *a2)
{
  if (*(this + 382))
  {
    v2 = *(this + 767);
    if (v2)
    {
      *(this + 767) = v2 - 1;
      return;
    }

    *(this + 382) = 0;
  }

  if (*(this + 1116))
  {
    v3 = *(this + 276) != *(this + 277);
  }

  else
  {
    v3 = (*(this + 276) - *(this + 277)) > 1;
  }

  if (v3)
  {
    *&v7 = TSAcAnal::getFrameByRef((this + 48), a2);
    if (*(this + 2) != 2 && *(this + 1196) == 1)
    {
      if (*(this + 1116))
      {
        v8 = *(this + 276) == *(this + 277);
      }

      else
      {
        v8 = (*(this + 276) - *(this + 277)) < 2;
      }

      if (v8)
      {
        Error::chuck("NovDetect: advanceDetection() - acanal has shut down!", v6, v7);
      }
    }

    if (*(this + 767))
    {
      *(this + 382) = v5;
    }
  }
}

unint64_t IntNovDetect::updateMultiphraseResults(unint64_t this, const TSHMMDetector *a2, const float *a3, const unsigned int *a4)
{
  v4 = *(this + 3176);
  if (v4)
  {
    v6 = *(a2 + 103);
    v7 = *(a2 + 104);
    v8 = *(a2 + 50);
    v9 = *(a2 + 44);
    v10 = *(a2 + 460) + 1;
    v19 = 0;
    if (v9 >= v10)
    {
      v13 = this;
      v14 = 0;
      v15 = (v6 - v7 + v8) & ~((v6 - v7 + v8) >> 31);
      if (v4 >= v9 / v10)
      {
        v16 = v9 / v10;
      }

      else
      {
        v16 = v4;
      }

      do
      {
        this = TSHMMDetector::lengthNormalizedScorePhrase(a2, &v19);
        v17 = *a3 + *(&this + 1);
        v18 = v13[395];
        if (v17 > *(v18 + 4 * v14) && *a4 > v15)
        {
          *(v13[389] + 4 * v14) = *a4 - v15;
          *(v13[392] + 4 * v14) = this;
          *(v18 + 4 * v14) = v17;
        }

        v19 = ++v14;
      }

      while (v16 != v14);
    }
  }

  return this;
}

uint64_t IntNovDetect::feedFrameToNorm(int32x2_t *this, const NFrame *a2, __n128 a3)
{
  v3 = a2;
  if (this[372].i8[4] == 1)
  {
    if (a2)
    {
      NLocalCepNorm::pushFrame(this + 150, a2);
    }

    v5 = this[152].i32[0];
    if (this[160].i8[4] == 1 && v5 || v5 == this[153].i32[1] + 1)
    {
      v3 = &this[335];
      NLocalCepNorm::setOutputFrame(&this[150], &this[335]);
      TSHMMDetector::feedFrame(&this[161], &this[335], v6);
      if (this[373].i8[3] != 1)
      {
        return 1;
      }

      NRingDropBuffer::pushFrame(&this[331], &this[335]);
      if ((this[373].i8[4] & 1) == 0)
      {
        return 1;
      }

      goto LABEL_13;
    }
  }

  else if (a2)
  {
    TSHMMDetector::feedFrame(&this[161], a2, a3);
    if (this[373].i8[3] != 1)
    {
      return 1;
    }

    NRingDropBuffer::pushFrame(&this[331], v3);
    if (this[373].i8[4] != 1)
    {
      return 1;
    }

LABEL_13:
    TSHMMDetector::feedFrame(&this[222], v3, v7);
    return 1;
  }

  return 0;
}