void NDEHMMDetector::init(uint64_t a1, const char *a2, float a3)
{
  v3 = a3;
  if (*(a1 + 212) != 1)
  {
    operator new();
  }

  Error::chuck("NDEHMMDetector::init() - init() already called", a2);
}

uint64_t NDeepnetDistribution::allocateStateP(NDeepnetDistribution *this)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  MEMORY[0x28223BE20](this);
  v4 = v14 - v3;
  if (v2)
  {
    if ((8 * v2) >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = 8 * v2;
    }

    bzero(v4, v5);
    v7 = 0;
    v8 = 8;
    v9 = v4;
    v10 = v2;
    do
    {
      v11 = *(*(this + 5) + v8);
      if (!v11)
      {
        Error::chuck("NSmartPointer::checkptr() - pointer unset", v6);
      }

      v12 = (*(*v11 + 40))(v11);
      *v9++ = v12;
      v7 |= v12 != 0;
      v8 += 16;
      --v10;
    }

    while (v10);
    if (v7)
    {
      operator new();
    }
  }

  return 0;
}

uint64_t NFrameWindow::configure(uint64_t this, const char *a2, unsigned int *a3, const unsigned int *a4, unsigned int *a5, unsigned int *a6, const unsigned int *a7, const unsigned int *a8)
{
  v8 = *a5;
  v9 = *a4;
  v10 = *a3;
  if (*a5 - 1 < v9 || v9 > v8 || v8 > v10)
  {
    Error::chuck("NFrameWindow::configure() - Invalid frame subset %d-%d from 0-%d", a2, v9, *a5, v10);
  }

  *(this + 12) = v9;
  v13 = *a5;
  *(this + 16) = *a5;
  if (!v13)
  {
    v13 = *a3;
    *(this + 16) = *a3;
  }

  v14 = *a2;
  if (!*a2)
  {
    Error::chuck("NFrameWindow::configure() - must be at least one frame in window", a2);
  }

  v15 = v14 - 1 + (v14 - 1) * *a7 + *a8;
  v16 = v14 + (v14 - 1) * *a7 + *a8;
  v17 = *a6;
  if (*a6 == -1)
  {
    v18 = 0;
    *this = v15;
  }

  else if (v17 == -2)
  {
    if (v15)
    {
      Error::chuck("NFrameWindow::configure() - only an odd number of frames supported for centered window (%d)", a2, v16);
    }

    v18 = v16 >> 1;
    *this = v16 >> 1;
  }

  else
  {
    if (v17 >= v16)
    {
      Error::chuck("NFrameWindow::configure() - frame window offset %d located outside window (%d)", a2, *a6, v16);
    }

    *this = v17;
    v18 = v15 - v17;
  }

  *(this + 4) = v18;
  if (*a8 >= v16)
  {
    Error::chuck("NFrameWindow::configure() - start frame %d located outside window (%d)", a2, *a8, v16);
  }

  *(this + 28) = *a8;
  *(this + 32) = *a7;
  v19 = v13 - v9;
  *(this + 8) = *a3;
  v20 = *a2 * v19;
  v21 = v19 * v16;
  *(this + 20) = v20;
  *(this + 24) = v21;
  if (*(this + 64) != v21)
  {
    *(this + 64) = v21;
    operator new[]();
  }

  *(this + 72) = 1;
  *(this + 36) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t NArray<NDELRHMMModel>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void NDEHMMDetector::initHMM(NDEHMMDetector *this, const char *a2, const unsigned int *a3, unsigned int *a4, const int *a5, int *a6, float *a7)
{
  if (!a2)
  {
    Error::chuck("NDEHMMDetector::initHMM() - NULL blob provided", 0, a3, a4, a5, a6);
  }

  v9 = *a5;
  v10 = *a6;
  *(this + 214) = *a6 == -1;
  *(this + 215) = v10 < -1;
  if (v9 >= -1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v12 = *a3;
  if (v12 <= 3)
  {
    goto LABEL_39;
  }

  v13 = a2;
  v14 = *a2;
  if (v9 == -1 || v9 < -256 || v9 >= v14)
  {
    Error::chuck("NDEHMMDetector::initHMM() - wrong keyword_id %d (%d)", a2, v9, v14);
  }

  v37 = 1;
  if (v9 <= -2)
  {
    v37 = v14 + (~v10 >> 31);
    if (!v37)
    {
      Error::chuck("NDEHMMDetector::initHMM() - wrong num_keywords", a2);
    }
  }

  NArray<NDELRHMMModel>::resize(this + 24, &v37);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = &v13[v12];
    v18 = (v13 + 4);
    v19 = -1;
    v20 = a6;
    while (&v18[v11] <= v17)
    {
      v35 = 0;
      v36 = 0;
      if (v9 <= -2)
      {
        v21 = *v18;
        v22 = v18[1];
        v18 += 2;
        v35 = v22;
        v36 = v21;
      }

      a2 = (v18 + 1);
      v23 = *v18;
      v18 += 2 * v23 + 1;
      if (v18 > v17)
      {
        break;
      }

      v24 = *v20;
      if ((*v20 & 0x80000000) == 0 && v15 == v24)
      {
        if (v23 != 1)
        {
          Error::chuck("NDEHMMDetector::initHMM() - GSM HMM (id %d) must be single state", a2, v15);
        }

        v19 = *a2;
      }

      v26 = *a5 >= 0 || v15 == v24;
      if ((v15 == *a5 || !v26) && v16 < *(this + 10))
      {
        v27 = *(this + 4) + 136 * v16;
        v34 = v23;
        NDELRHMMModel::init(v27, a2, &v34, a4, &v36, &v35, a7);
        v20 = a6;
        ++v16;
      }

      v15 = (v15 + 1);
      if (v14 == v15)
      {
        goto LABEL_33;
      }
    }

LABEL_39:
    Error::chuck("NDEHMMDetector::initHMM() - blobsize too small", a2);
  }

  v19 = -1;
LABEL_33:
  v28 = *(this + 10);
  if (v28)
  {
    v29 = 0;
    v30 = (*(this + 4) + 64);
    do
    {
      if (*v30)
      {
        **(v30 - 1) = v19;
        v28 = *(this + 10);
      }

      ++v29;
      v30 += 34;
    }

    while (v29 < v28);
  }
}

void NDELRHMMModel::init(uint64_t a1, const char *a2, _DWORD *a3, unsigned int *a4, float *a5, _DWORD *a6, float *a7)
{
  v10 = *a3 + 1;
  *(a1 + 72) = v10;
  if (*(a1 + 16) != v10)
  {
    *(a1 + 16) = v10;
    operator new[]();
  }

  if (*(a1 + 40) != v10)
  {
    *(a1 + 40) = v10;
    operator new[]();
  }

  if (*(a1 + 64) != v10)
  {
    *(a1 + 64) = v10;
    operator new[]();
  }

  if (*(a1 + 96) != v10 + 1)
  {
    *(a1 + 96) = v10 + 1;
    operator new[]();
  }

  v11 = *(a1 + 72) + 1;
  if (*(a1 + 120) != v11)
  {
    *(a1 + 120) = v11;
    operator new[]();
  }

  *(a1 + 128) = *a6;
  LODWORD(v12) = *(a1 + 72);
  if (v12 <= 1)
  {
    v18 = *(a1 + 56);
LABEL_21:
    v26 = *(a1 + 32);
    v24 = *(a1 + 8);
    goto LABEL_22;
  }

  v13 = 1;
  v14 = a2;
  do
  {
    v16 = *v14;
    v14 += 2;
    v15 = v16;
    v17 = *a4;
    if (v16 >= v17)
    {
      Error::chuck("NDELRHMMModel::init() - HMM includes invalid index %d (>=%d)", a2, v15, v17);
    }

    v18 = *(a1 + 56);
    v18[v13++] = v15;
    v12 = *(a1 + 72);
  }

  while (v13 < v12);
  if (v12 <= 1)
  {
    goto LABEL_21;
  }

  v19 = (a2 + 4);
  for (i = 1; i != v12; ++i)
  {
    v21 = *v19;
    if (*v19 <= 1.0)
    {
      Error::chuck("NDELRHMMModel::init() - Duration %f less than or equal to 1.0 on hmmstate: %d", a2, *&v21, i);
    }

    v22 = 1.0 - 1.0 / v21;
    v23 = logf(v22);
    v24 = *(a1 + 8);
    v24[i] = v23;
    v25 = logf(1.0 - v22);
    v26 = *(a1 + 32);
    v26[i] = v25;
    v19 += 2;
  }

LABEL_22:
  v26[(v12 - 1)] = *a5 + v26[(v12 - 1)];
  v27 = 1.0 - 1.0 / *a7;
  *v24 = logf(v27);
  *v26 = logf(1.0 - v27);
  *v18 = -1;
}

void IntNovDetectE::~IntNovDetectE(IntNovDetectE *this)
{
  *this = 2;
  *(this + 127) = off_28370A538;
  v2 = *(this + 128);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  NDEHMMDetector::~NDEHMMDetector((this + 800));
  *(this + 96) = off_28370A538;
  v3 = *(this + 97);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 93) = &unk_2837076F0;
  v4 = *(this + 94);
  if (v4)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = v4 + 24 * v6 - 24;
      v8 = -24 * v6;
      v9 = v7;
      do
      {
        *v9 = off_28370A538;
        v10 = v9[1];
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v9 -= 3;
        v7 -= 24;
        v8 += 24;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v5, 0x1081C80622C3295);
  }

  *(this + 84) = off_28370A538;
  v11 = *(this + 85);
  if (v11)
  {
    MEMORY[0x223DF1D00](v11, 0x1000C8052888210);
  }

  *(this + 70) = off_28370A538;
  v12 = *(this + 71);
  if (v12)
  {
    MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
  }

  *(this + 67) = off_28370A538;
  v13 = *(this + 68);
  if (v13)
  {
    MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
  }

  AccelWin2MFCC::~AccelWin2MFCC(this + 12);
  *(this + 8) = off_28370A538;
  v14 = *(this + 9);
  if (v14)
  {
    MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
  }

  *(this + 5) = off_28370A538;
  v15 = *(this + 6);
  if (v15)
  {
    MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
  }

  *(this + 2) = off_28370A538;
  v16 = *(this + 3);
  if (v16)
  {
    MEMORY[0x223DF1D00](v16, 0x1000C8052888210);
  }
}

uint64_t NDeepnetDistribution::deallocateState(uint64_t this, void *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(this + 48);
    if (v4)
    {
      v5 = 0;
      v6 = 8 * v4;
      v7 = 8;
      do
      {
        v8 = *(a2[1] + v5);
        if (v8)
        {
          v9 = *(*(v3 + 40) + v7);
          if (!v9)
          {
            Error::chuck("NSmartPointer::checkptr() - pointer unset", v8);
          }

          (*(*v9 + 48))(v9);
        }

        v5 += 8;
        v7 += 16;
      }

      while (v6 != v5);
    }

    v10 = *(*a2 + 8);

    return v10(a2);
  }

  return this;
}

void NDEHMMDetector::~NDEHMMDetector(NDEHMMDetector *this)
{
  *this = &unk_283708728;
  v2 = *(this + 1);
  if (v2)
  {
    if (!*(this + 2) || ((*(*v2 + 152))(v2), (v2 = *(this + 1)) != 0))
    {
      (*(*v2 + 8))(v2);
    }
  }

  *(this + 21) = off_28370A538;
  v3 = *(this + 22);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 18) = off_28370A538;
  v4 = *(this + 19);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 12) = off_28370A538;
  v5 = *(this + 13);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  *(this + 3) = &unk_283708758;
  v6 = *(this + 4);
  if (v6)
  {
    v7 = v6 - 16;
    v8 = *(v6 - 8);
    if (v8)
    {
      v9 = 0;
      v10 = 136 * v8;
      v11 = v6 - 56;
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

        v6 -= 136;
        v9 += 136;
        v11 -= 136;
      }

      while (v10 != v9);
    }

    MEMORY[0x223DF1D00](v7, 0x1090C80C1CE278ELL);
  }
}

{
  NDEHMMDetector::~NDEHMMDetector(this);

  JUMPOUT(0x223DF1D20);
}

uint64_t nde_destroy(IntNovDetectE *this)
{
  if ((gHasValidModel & 1) == 0)
  {
    result = 0;
    gHasValidModel = 1;
    return result;
  }

  if (gIsMultiInstance)
  {
    if (!this)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_8;
  }

  result = 0xFFFFFFFFLL;
  if (this && gpNovDetect == this)
  {
LABEL_8:
    IntNovDetectE::~IntNovDetectE(this);
    MEMORY[0x223DF1D20]();
    result = 0;
    gpNovDetect = 0;
  }

  return result;
}

void NShiftRegisterLayer::deallocateState(NShiftRegisterLayer *this, void *a2)
{
  if (a2)
  {
    a2[6] = off_28370A538;
    v2 = a2[7];
    if (v2)
    {
      MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
    }

    JUMPOUT(0x223DF1D20);
  }

  Error::chuck("NShiftRegisterLayer::compute() - State uninitialized", 0);
}

void NArray<void *>::~NArray(void *a1)
{
  *a1 = &unk_2837085C0;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x80C80B8603338);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

uint64_t NovDetectorResult.init(sampleFed:bestPhrase:bestStart:bestEnd:bestScore:earlyWarning:isRescoring:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, float a8@<S0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 36) = a5;
  *(a7 + 37) = a6;
  return result;
}

void NovDetector.init(resources:config:name:)()
{
  v0 = sub_223A56240();
  sub_223A5687C(*v0, 0xD00000000000001ELL, 0x8000000223B14310, 46, 0xD000000000000019, 0x8000000223B14330);
  nd_create();
}

uint64_t sub_223A552A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_223A552F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t NovDetector.deinit()
{
  nd_close(*(v0 + 16));

  return v0;
}

uint64_t NovDetector.__deallocating_deinit()
{
  nd_close(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_223A553D0(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    if (v2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v3 = v1[2];
      result = nd_wavedata(v3, (result + 32), v2);
      if (result)
      {
        v4 = *sub_223A5624C();
        sub_223B0DD68();

        MEMORY[0x223DF1560](v1[4], v1[5]);
        MEMORY[0x223DF1560](0xD000000000000028, 0x8000000223B14460);
        nd_error(v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D58);
        v5 = sub_223B0DC38();
        MEMORY[0x223DF1560](v5);

        sub_223A568A8(v4, 0xD00000000000001ELL, 0x8000000223B14310, 114, 91, 0xE100000000000000);
      }
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_223A5554C(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    if (v2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v3 = v1[2];
      result = nd_wavedataf(v3, (result + 32), v2);
      if (result)
      {
        v4 = *sub_223A5624C();
        sub_223B0DD68();

        MEMORY[0x223DF1560](v1[4], v1[5]);
        MEMORY[0x223DF1560](0xD00000000000002DLL, 0x8000000223B14490);
        nd_error(v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D58);
        v5 = sub_223B0DC38();
        MEMORY[0x223DF1560](v5);

        sub_223A568A8(v4, 0xD00000000000001ELL, 0x8000000223B14310, 131, 91, 0xE100000000000000);
      }
    }
  }

  return result;
}

uint64_t sub_223A55680(uint64_t a1, const char *a2)
{
  v3 = v2[2];
  result = nd_endwavedata(v3, a2);
  if (result)
  {
    v5 = *sub_223A5624C();
    sub_223B0DD68();

    MEMORY[0x223DF1560](v2[4], v2[5]);
    MEMORY[0x223DF1560](0xD000000000000023, 0x8000000223B144C0);
    nd_error(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D58);
    v6 = sub_223B0DC38();
    MEMORY[0x223DF1560](v6);

    sub_223A568A8(v5, 0xD00000000000001ELL, 0x8000000223B14310, 140, 91, 0xE100000000000000);
  }

  return result;
}

uint64_t sub_223A5579C(uint64_t a1, const char *a2)
{
  result = nd_phrasecount(v2[2], a2);
  if ((result & 0x80000000) != 0)
  {
    v4 = *sub_223A5624C();
    sub_223B0DD68();

    MEMORY[0x223DF1560](v2[4], v2[5]);
    MEMORY[0x223DF1560](0xD00000000000001CLL, 0x8000000223B144F0);
    sub_223A568A8(v4, 0xD00000000000001ELL, 0x8000000223B14310, 150, 91, 0xE100000000000000);

    return 0;
  }

  return result;
}

IntNovDetect *sub_223A55878@<X0>(const char *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  if (nd_phrasecount(v6, a2) < 1)
  {
    result = nd_getresults(v6, v7);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    v11 = 0;
    v17 = 0uLL;
    v15 = 0x200000000;
    goto LABEL_10;
  }

  result = nd_getphraseresults(v6, a1);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = *result;
  v10 = *(result + 4);
  v11 = *(result + 3);
  v12 = 0x100000000;
  if (!*(result + 20))
  {
    v12 = 0;
  }

  v13 = v12 | *(result + 4);
  v14 = 0x10000000000;
  if (!*(result + 21))
  {
    v14 = 0;
  }

  v15 = v13 | v14;
  *&v16 = v10;
  *(&v16 + 1) = HIDWORD(v10);
  v17 = v16;
LABEL_10:
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v17;
  *(a3 + 32) = v15;
  *(a3 + 36) = WORD2(v15);
  return result;
}

IntNovDetect *sub_223A55934@<X0>(const char *a1@<X1>, uint64_t a2@<X8>)
{
  result = nd_getresults(*(v2 + 16), a1);
  if (result)
  {
    v5 = *result;
    v6 = *(result + 4);
    v7 = *(result + 3);
    v8 = 0x100000000;
    if (!*(result + 20))
    {
      v8 = 0;
    }

    v9 = v8 | *(result + 4);
    v10 = 0x10000000000;
    if (!*(result + 21))
    {
      v10 = 0;
    }

    v11 = v9 | v10;
    *&v12 = v6;
    *(&v12 + 1) = HIDWORD(v6);
    v13 = v12;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v13 = 0uLL;
    v11 = 0x200000000;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  *(a2 + 32) = v11;
  *(a2 + 36) = WORD2(v11);
  return result;
}

BOOL sub_223A559C0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = sub_223B0DC48();
  v7 = nd_sat_initialize(v5, (v6 + 32));

  if (v7)
  {
    v8 = *sub_223A56258();
    sub_223B0DD68();

    MEMORY[0x223DF1560](v2[4], v2[5]);
    MEMORY[0x223DF1560](0xD00000000000001DLL, 0x8000000223B14510);
    MEMORY[0x223DF1560](a1, a2);
    MEMORY[0x223DF1560](0x7265206874697720, 0xEC00000020726F72);
    nd_error(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D58);
    v9 = sub_223B0DC38();
    MEMORY[0x223DF1560](v9);

    sub_223A568A8(v8, 0xD00000000000001ELL, 0x8000000223B14310, 202, 91, 0xE100000000000000);
  }

  return v7 == 0;
}

uint64_t sub_223A55B40()
{
  v1 = *(v0 + 16);
  v2 = sub_223B0DC48();
  v3 = nd_getoption(v1, (v2 + 32));

  if (v3)
  {
    return sub_223B0DC88();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223A55BD4(const char *a1, __n128 a2)
{
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = nd_getsupervector(v4, a1, a2);
  if (v5)
  {
    return *v5;
  }

  v7 = nd_error(v4);
  v8 = *sub_223A5624C();
  sub_223B0DD68();

  MEMORY[0x223DF1560](*(v3 + 32), *(v3 + 40));
  if (v7)
  {
    MEMORY[0x223DF1560](0xD000000000000027, 0x8000000223B14560);
    v9 = sub_223B0DC88();
    MEMORY[0x223DF1560](v9);

    v10 = v8;
    v11 = 231;
  }

  else
  {
    MEMORY[0x223DF1560](0xD00000000000002ELL, 0x8000000223B14530);
    v10 = v8;
    v11 = 233;
  }

  sub_223A568A8(v10, 0xD00000000000001ELL, 0x8000000223B14310, v11, 91, 0xE100000000000000);

  return 0;
}

const float *sub_223A55D70(const float *result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a2))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  result = nd_sat_analyze(*(v2 + 16), result, a2);
  if (!result || ((~*result & 0x7F800000) == 0 ? (v3 = (*result & 0x7FFFFF) == 0) : (v3 = 1), !v3))
  {
    v4 = *sub_223A5624C();
    sub_223B0DD68();
    MEMORY[0x223DF1560](91, 0xE100000000000000);
    MEMORY[0x223DF1560](*(v2 + 32), *(v2 + 40));
    MEMORY[0x223DF1560](0xD000000000000032, 0x8000000223B14590);
    sub_223A568A8(v4, 0xD00000000000001ELL, 0x8000000223B14310, 245, 0, 0xE000000000000000);
  }

  return result;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_223A55E9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 38))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_223A55EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of NovDetector.analyzeWave(buffer:)()
{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

uint64_t sub_223A5618C()
{
  v0 = sub_223B0DC18();
  __swift_allocate_value_buffer(v0, qword_27D0B0AF0);
  __swift_project_value_buffer(v0, qword_27D0B0AF0);
  return sub_223B0DC08();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_223A56278(uint64_t a1)
{
  if (qword_27D0B05B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27D0B0B08;
  if (!*(qword_27D0B0B08 + 16) || (v3 = sub_223A574E4(a1), (v4 & 1) == 0))
  {
    swift_endAccess();
    if (a1)
    {
      v6 = sub_223A56E30(0, 1, 1, MEMORY[0x277D84F90]);
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_223A56E30((v7 > 1), v8 + 1, 1, v6);
      }

      *(v6 + 2) = v8 + 1;
      v9 = &v6[16 * v8];
      *(v9 + 4) = 0x746573736123;
      *(v9 + 5) = 0xE600000000000000;
      if ((a1 & 2) == 0)
      {
LABEL_8:
        if ((a1 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_223A56E30(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_223A56E30((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    *(v12 + 4) = 0x657A796C616E6123;
    *(v12 + 5) = 0xE800000000000000;
    if ((a1 & 4) == 0)
    {
LABEL_9:
      if (!*(v6 + 2))
      {

        return 0;
      }

LABEL_24:
      v21 = v6;

      sub_223A57B20(&v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D60);
      sub_223A57B8C();
      v5 = sub_223B0DC28();
      v17 = v16;

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = qword_27D0B0B08;
      qword_27D0B0B08 = 0x8000000000000000;
      sub_223A577EC(v5, v17, a1, isUniquelyReferenced_nonNull_native);
      qword_27D0B0B08 = v20;
      swift_endAccess();
      return v5;
    }

LABEL_19:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_223A56E30(0, *(v6 + 2) + 1, 1, v6);
    }

    v14 = *(v6 + 2);
    v13 = *(v6 + 3);
    if (v14 >= v13 >> 1)
    {
      v6 = sub_223A56E30((v13 > 1), v14 + 1, 1, v6);
    }

    *(v6 + 2) = v14 + 1;
    v15 = &v6[16 * v14];
    *(v15 + 4) = 0x656C69666F727023;
    *(v15 + 5) = 0xE800000000000000;
    goto LABEL_24;
  }

  v5 = *(*(v2 + 56) + 16 * v3);
  swift_endAccess();

  return v5;
}

uint64_t sub_223A565C8()
{
  v1 = *v0;
  sub_223B0DDD8();
  MEMORY[0x223DF16D0](v1);
  return sub_223B0DDF8();
}

uint64_t sub_223A5663C()
{
  v1 = *v0;
  sub_223B0DDD8();
  MEMORY[0x223DF16D0](v1);
  return sub_223B0DDF8();
}

BOOL sub_223A566C4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_223A566F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_223A56720@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_223A5680C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_223A5683C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_223A58ABC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_223A568D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(void *))
{
  v49 = a8;
  v47 = a4;
  v14 = sub_223B0DC18();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D0B05B0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_27D0B0AF0);
  swift_beginAccess();
  v19 = *(v15 + 16);
  v48 = v14;
  v20 = v19(v17, v18, v14);
  v21 = a7(v20);
  v52 = 0;
  v53 = 0xE000000000000000;
  v22 = sub_223A56278(a1);
  if (v23)
  {
    v50 = v22;
    v51 = v23;
    MEMORY[0x223DF1560](32, 0xE100000000000000);
    MEMORY[0x223DF1560](v50, v51);
  }

  if (a6)
  {
    v24 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v24 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {

      MEMORY[0x223DF1560](a5, a6);
    }
  }

  v50 = 47;
  v51 = 0xE100000000000000;
  MEMORY[0x28223BE20](v22);
  *(&v46 - 2) = &v50;
  v25 = sub_223A586A4(v49, (&v46 - 4), a2, a3);
  if (v26)
  {
  }

  else
  {
    sub_223A56CE0(v25, a2, a3);
    v28 = v27;
    result = sub_223B0DD28();
    if (v30)
    {
      result = v28;
    }

    if (v28 >> 14 < result >> 14)
    {
      __break(1u);
      return result;
    }

    v31 = sub_223B0DD38();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    a2 = MEMORY[0x223DF1540](v31, v33, v35, v37);
    a3 = v38;
  }

  v40 = v52;
  v39 = v53;
  v41 = sub_223B0DBF8();
  if (os_log_type_enabled(v41, v21))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v42 = 136315650;
    v44 = sub_223A56F3C(a2, a3, &v50);

    *(v42 + 4) = v44;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v47;
    *(v42 + 22) = 2080;
    v45 = sub_223A56F3C(v40, v39, &v50);

    *(v42 + 24) = v45;
    _os_log_impl(&dword_223A31000, v41, v21, "[%s:%ld] %s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DF2880](v43, -1, -1);
    MEMORY[0x223DF2880](v42, -1, -1);
  }

  else
  {
  }

  return (*(v15 + 8))(v17, v48);
}

uint64_t sub_223A56CE0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

char *sub_223A56D2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_223A56E30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_223A56F3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_223A57008(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_223A58B40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_223A57008(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_223A57114(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_223B0DD78();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_223A57114(uint64_t a1, unint64_t a2)
{
  v3 = sub_223A57160(a1, a2);
  sub_223A57290(&unk_283706CA8);
  return v3;
}

uint64_t sub_223A57160(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_223A5737C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_223B0DD78();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_223B0DC98();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_223A5737C(v10, 0);
        result = sub_223B0DD58();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_223A57290(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_223A573F0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_223A5737C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_223A573F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_223A574E4(uint64_t a1)
{
  sub_223B0DDD8();
  MEMORY[0x223DF16D0](a1);
  v2 = sub_223B0DDF8();

  return sub_223A5794C(a1, v2);
}

uint64_t sub_223A57550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5DA0);
  v34 = a2;
  result = sub_223B0DD98();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_223B0DDD8();
      MEMORY[0x223DF16D0](v21);
      result = sub_223B0DDF8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_223A577EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_223A574E4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_223A57550(v16, a4 & 1);
      result = sub_223A574E4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_223B0DDC8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_223A579B8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_223A5794C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_223A579B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5DA0);
  v2 = *v0;
  v3 = sub_223B0DD88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_223A57B20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_223A587A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_223A57C38(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_223A57B8C()
{
  result = qword_27D0A5D68;
  if (!qword_27D0A5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A5D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A5D68);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_223A57C38(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_223B0DDA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_223B0DCE8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_223A57E00(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_223A57D30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_223A57D30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_223B0DDB8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223A57E00(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_223A58690(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_223A583DC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_223B0DDB8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_223B0DDB8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_223A56D2C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_223A56D2C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_223A583DC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_223A58690(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_223A58604(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_223B0DDB8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_223A583DC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_223B0DDB8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_223B0DDB8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_223A58604(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_223A58690(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_223A586A4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_223B0DC68();
    v13[0] = sub_223B0DCA8();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

char *sub_223A587BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A5D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223A588E4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_223B0DDB8() & 1;
  }
}

unint64_t sub_223A58940()
{
  result = qword_27D0A5D70;
  if (!qword_27D0A5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A5D70);
  }

  return result;
}

unint64_t sub_223A58998()
{
  result = qword_27D0A5D78;
  if (!qword_27D0A5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A5D78);
  }

  return result;
}

unint64_t sub_223A589F0()
{
  result = qword_27D0A5D80;
  if (!qword_27D0A5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A5D80);
  }

  return result;
}

unint64_t sub_223A58A48()
{
  result = qword_27D0A5D88;
  if (!qword_27D0A5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A5D88);
  }

  return result;
}

uint64_t sub_223A58ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_223A58B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double AccelerateML_sigmoid_h8(float16x8_t a1)
{
  v1.i64[0] = 0x6400640064006400;
  v1.i64[1] = 0x6400640064006400;
  v2.i64[0] = 0x1400140014001400;
  v2.i64[1] = 0x1400140014001400;
  v3 = vcltzq_f16(a1);
  v4.i64[0] = 0x3800380038003800;
  v4.i64[1] = 0x3800380038003800;
  v5 = vmaxq_f16(vminq_f16(a1, vdupq_lane_s16(0x8AF4398CBDC54C29, 0)), vdupq_laneq_s16(xmmword_223B12FF0, 4));
  v6 = vcvtq_s16_f16(vmulq_lane_f16(v5, 0x8AF4398CBDC54C29, 1));
  v7 = vcvtq_f16_s16(v6);
  v8 = vmlaq_lane_f16(vmlaq_lane_f16(v5, v7, 0x8AF4398CBDC54C29, 2), v7, 0x8AF4398CBDC54C29, 3);
  v7.i64[0] = 0x4000400040004000;
  v7.i64[1] = 0x4000400040004000;
  *&result = vdivq_f16(xmmword_223B12FE0, vmlaq_f16(xmmword_223B12FE0, vmulq_f16(vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(*"", vmlsq_f16(*"b1b1b1b1b1b1b1b1", *"d)d)d)d)d)d)d)d)b1b1b1b1b1b1b1b1", v8), v8), v8), v8), vaddq_s16(vshlq_n_s16(v6, 0xAuLL), vbslq_s8(v3, v4, v1))), vbslq_s8(v3, v7, v2))).u64[0];
  return result;
}

uint64_t AccelerateMLSigmoid_FP16(float16x8_t *a1, float16x8_t *a2, uint64_t a3)
{
  if (a3 >= 8)
  {
    v85 = v3;
    v86 = v4;
    if ((a3 & 7) != 0)
    {
      *v16.i64 = AccelerateML_sigmoid_h8(*(a2 + 2 * a3 - 16));
      v84 = v16;
    }

    v14 = __OFSUB__(a3, 32);
    v17 = a3 - 32;
    if (v17 < 0 == v14)
    {
      v18.i64[0] = 0x3800380038003800;
      v18.i64[1] = 0x3800380038003800;
      v20 = *a2;
      v21 = a2[1];
      v19 = a2 + 2;
      v22.i64[0] = 0x6400640064006400;
      v22.i64[1] = 0x6400640064006400;
      v23.i64[0] = 0x1400140014001400;
      v23.i64[1] = 0x1400140014001400;
      v24 = *v19;
      v25 = v19[1];
      a2 = v19 + 2;
      v26.i64[0] = 0x4000400040004000;
      v26.i64[1] = 0x4000400040004000;
      v27 = vdupq_lane_s16(0x8AF4398CBDC54C29, 0);
      v28 = vdupq_laneq_s16(xmmword_223B12FF0, 4);
      v29 = vmaxq_f16(vminq_f16(v20, v27), v28);
      v30 = vmaxq_f16(vminq_f16(v21, v27), v28);
      v31 = vmaxq_f16(vminq_f16(v24, v27), v28);
      v32 = vmaxq_f16(vminq_f16(v25, v27), v28);
      v87 = v18;
      while (1)
      {
        v46 = vmaxq_f16(v29, v28);
        v47 = vmaxq_f16(v30, v28);
        v48 = vmaxq_f16(v31, v28);
        v49 = vmaxq_f16(v32, v28);
        v50 = vcltzq_f16(v46);
        v51 = vcltzq_f16(v47);
        v52 = vcltzq_f16(v48);
        v53 = vcltzq_f16(v49);
        v54 = vcvtq_s16_f16(vmulq_lane_f16(v46, 0x8AF4398CBDC54C29, 1));
        v55 = vcvtq_s16_f16(vmulq_lane_f16(v47, 0x8AF4398CBDC54C29, 1));
        v56 = vcvtq_s16_f16(vmulq_lane_f16(v48, 0x8AF4398CBDC54C29, 1));
        v57 = vcvtq_s16_f16(vmulq_lane_f16(v49, 0x8AF4398CBDC54C29, 1));
        v58 = vcvtq_f16_s16(v54);
        v59 = vcvtq_f16_s16(v55);
        v60 = vcvtq_f16_s16(v56);
        v61 = vcvtq_f16_s16(v57);
        v62 = vmlaq_lane_f16(vmlaq_lane_f16(v46, v58, 0x8AF4398CBDC54C29, 2), v58, 0x8AF4398CBDC54C29, 3);
        v63 = vmlaq_lane_f16(vmlaq_lane_f16(v47, v59, 0x8AF4398CBDC54C29, 2), v59, 0x8AF4398CBDC54C29, 3);
        v64 = vmlaq_lane_f16(vmlaq_lane_f16(v48, v60, 0x8AF4398CBDC54C29, 2), v60, 0x8AF4398CBDC54C29, 3);
        v65 = vmlaq_lane_f16(vmlaq_lane_f16(v49, v61, 0x8AF4398CBDC54C29, 2), v61, 0x8AF4398CBDC54C29, 3);
        v66 = vmlaq_f16(xmmword_223B12FE0, vmulq_f16(vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(*"", vmlsq_f16(*"b1b1b1b1b1b1b1b1", *"d)d)d)d)d)d)d)d)b1b1b1b1b1b1b1b1", v62), v62), v62), v62), vaddq_s16(vshlq_n_s16(v54, 0xAuLL), vbslq_s8(v50, v87, v22))), vbslq_s8(v50, v26, v23));
        v67 = vmlaq_f16(xmmword_223B12FE0, vmulq_f16(vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(*"", vmlsq_f16(*"b1b1b1b1b1b1b1b1", *"d)d)d)d)d)d)d)d)b1b1b1b1b1b1b1b1", v63), v63), v63), v63), vaddq_s16(vshlq_n_s16(v55, 0xAuLL), vbslq_s8(v51, v87, v22))), vbslq_s8(v51, v26, v23));
        v68 = vmlaq_f16(xmmword_223B12FE0, vmulq_f16(vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(*"", vmlsq_f16(*"b1b1b1b1b1b1b1b1", *"d)d)d)d)d)d)d)d)b1b1b1b1b1b1b1b1", v64), v64), v64), v64), vaddq_s16(vshlq_n_s16(v56, 0xAuLL), vbslq_s8(v52, v87, v22))), vbslq_s8(v52, v26, v23));
        v69 = vmlaq_f16(xmmword_223B12FE0, vmulq_f16(vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(xmmword_223B12FE0, vmlsq_f16(*"", vmlsq_f16(*"b1b1b1b1b1b1b1b1", *"d)d)d)d)d)d)d)d)b1b1b1b1b1b1b1b1", v65), v65), v65), v65), vaddq_s16(vshlq_n_s16(v57, 0xAuLL), vbslq_s8(v53, v87, v22))), vbslq_s8(v53, v26, v23));
        v70 = vrecpeq_f16(v66);
        v71 = vrecpeq_f16(v67);
        v72 = vrecpeq_f16(v68);
        v73 = vrecpeq_f16(v69);
        v74 = vrecpsq_f16(v70, v66);
        v75 = vrecpsq_f16(v71, v67);
        v76 = vrecpsq_f16(v72, v68);
        v77 = vrecpsq_f16(v73, v69);
        v14 = __OFSUB__(v17, 32);
        v17 -= 32;
        if (v17 < 0 != v14)
        {
          break;
        }

        v33 = vmulq_f16(v74, v70);
        v35 = *a2;
        v34 = a2 + 1;
        v36 = v35;
        v37 = vmulq_f16(v75, v71);
        v38 = *v34++;
        v39 = v38;
        v40 = vmulq_f16(v76, v72);
        v41 = *v34++;
        v42 = v41;
        v43 = vmulq_f16(v77, v73);
        v44 = *v34;
        a2 = v34 + 1;
        v29 = vminq_f16(v36, v27);
        *a1 = v33;
        v45 = a1 + 1;
        v30 = vminq_f16(v39, v27);
        *v45++ = v37;
        v31 = vminq_f16(v42, v27);
        *v45++ = v40;
        v32 = vminq_f16(v44, v27);
        *v45 = v43;
        a1 = v45 + 1;
      }

      *a1 = vmulq_f16(v74, v70);
      v78 = a1 + 1;
      *v78++ = vmulq_f16(v75, v71);
      *v78++ = vmulq_f16(v76, v72);
      *v78 = vmulq_f16(v77, v73);
      a1 = v78 + 1;
    }

    v14 = __OFADD__(v17, 24);
    for (i = v17 + 24; i < 0 == v14; i = v82 - 8)
    {
      *v80.i64 = AccelerateML_sigmoid_h8(*a2);
      *v81 = v80;
      a1 = v81 + 1;
      v14 = __OFSUB__(v82, 8);
    }

    v83 = (i + 8);
    if (v83)
    {
      *(a1 + 2 * v83 - 16) = v84;
    }

    return 0;
  }

  else
  {
    v5 = &v84;
    v6 = a3;
    do
    {
      v7 = a2->i16[0];
      a2 = (a2 + 2);
      v5->i16[0] = v7;
      v5 = (v5 + 2);
    }

    while (v6-- > 1);
    *v11.i64 = AccelerateML_sigmoid_h8(v84);
    v84 = v11;
    v12 = &v84;
    do
    {
      v13 = v12->i16[0];
      v12 = (v12 + 2);
      *v9++ = v13;
      v14 = __OFSUB__(v10--, 1);
    }

    while (!((v10 < 0) ^ v14 | (v10 == 0)));
    return 0;
  }
}

void sub_223A59A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSUtilsClass_block_invoke(uint64_t a1)
{
  if (!CoreSpeechFoundationLibraryCore_frameworkLibrary)
  {
    CoreSpeechFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("CSUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpeechFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreSpeechFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_223A59EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223A5AFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  MEMORY[0x223DF1CE0](a9);
  _Unwind_Resume(a1);
}

void voicetrigger::VTAudioCircularBufferImpl<unsigned short>::copySamples(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  if (v8 >= v7)
  {
    v9 = v8 - v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= a3 && a4 > a3 && v8 >= a4 && v8 > a3 && v9 < a4)
  {
    operator new[]();
  }

  v14 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349824;
    v16 = a3;
    v17 = 2050;
    v18 = a4;
    v19 = 2050;
    v20 = v9;
    v21 = 2050;
    v22 = v8;
    _os_log_error_impl(&dword_223A31000, v14, OS_LOG_TYPE_ERROR, "Invalid request: reqStartSample=%{public}ld, reqEndSample=%{public}ld, oldestSampleInBuffer: %{public}ld, latestSampleInBuffer=%{public}ld", buf, 0x2Au);
  }

  *a1 = 0;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784EC2E8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223DF1C30](v21, a1);
  if (v21[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_28;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v23 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v23 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v23 < 0)
      {
        v19 = v18;
        operator delete(__b.__locale_);
        if (v19 != v16)
        {
LABEL_28:
          std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
          goto LABEL_29;
        }
      }

      else if (v18 != v16)
      {
        goto LABEL_28;
      }
    }

    if (v11 - v12 >= 1 && (*(*v7 + 96))(v7, v12, v11 - v12) != v11 - v12)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x223DF1C40](v21);
  return a1;
}

void sub_223A5B7BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DF1C40](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x223A5B790);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223A5C3E8(_Unwind_Exception *a1)
{
  MEMORY[0x223DF1D20](v2, 0x1090C4018C15A78);

  _Unwind_Resume(a1);
}

void sub_223A5CD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__127(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223A5CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223A5DD10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    MEMORY[0x223DF1D20](v2, 0x10F0C40F773E768);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x223A5DB74);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A5DF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223A5F9D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = *(v11 + 32);
    if (a2 == 2)
    {
      [v15 setTdPsrCanProcessRequest:0];
      v16 = MEMORY[0x277CCACA8];
      (*(*v14 + 16))(v14);
      v17 = [v16 stringWithFormat:@"Exception ending audio: %s"];
      v18 = *(v12 + 1160);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "TDSR:: %{public}@", &buf, 0xCu);
      }

      v19 = [VTTextDependentSpeakerRecognizer errorWithCode:1003 message:v17];
      WeakRetained = objc_loadWeakRetained((*(v11 + 32) + 40));
      [WeakRetained textDependentSpeakerRecognizer:*(v11 + 32) failedWithError:v19];

      __cxa_end_catch();
    }

    else
    {
      [v15 setTdPsrCanProcessRequest:0];
      v21 = *(v12 + 1160);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_223A31000, v21, OS_LOG_TYPE_DEFAULT, "TDSR:: Unknown Exception adding audio:", &buf, 2u);
      }

      v22 = [VTTextDependentSpeakerRecognizer errorWithCode:1003 message:@"Unknown exception adding audio"];
      v23 = objc_loadWeakRetained((*(v11 + 32) + 40));
      [v23 textDependentSpeakerRecognizer:*(v11 + 32) failedWithError:v22];

      __cxa_end_catch();
    }

    JUMPOUT(0x223A5F994);
  }

  _Unwind_Resume(a1);
}

void sub_223A5FDAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = *(v11 + 32);
    if (a2 == 2)
    {
      [v14 setTdPsrCanProcessRequest:0];
      v15 = MEMORY[0x277CCACA8];
      (*(*v13 + 16))(v13);
      v16 = [v15 stringWithFormat:@"Exception adding audio: %s"];
      v17 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "TDSR:: %{public}@", &buf, 0xCu);
      }

      v18 = [VTTextDependentSpeakerRecognizer errorWithCode:1002 message:v16];
      WeakRetained = objc_loadWeakRetained((*(v11 + 32) + 40));
      [WeakRetained textDependentSpeakerRecognizer:*(v11 + 32) failedWithError:v18];

      __cxa_end_catch();
    }

    else
    {
      [v14 setTdPsrCanProcessRequest:0];
      v20 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "TDSR:: Unknown Exception adding audio:", &buf, 2u);
      }

      v21 = [VTTextDependentSpeakerRecognizer errorWithCode:1002 message:@"Unknown exception adding audio"];
      v22 = objc_loadWeakRetained((*(v11 + 32) + 40));
      [v22 textDependentSpeakerRecognizer:*(v11 + 32) failedWithError:v21];

      __cxa_end_catch();
    }

    JUMPOUT(0x223A5FD68);
  }

  _Unwind_Resume(a1);
}

void sub_223A60350(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_223A610B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    v24 = __cxa_begin_catch(a1);
    v19 = *(v17 + 1160);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v20)
      {
        v23 = *(*v24 + 16);
        v21 = v19;
        v22 = v23(v24);
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_223A31000, v21, OS_LOG_TYPE_DEFAULT, "TDSR:: Exception creating VTTextDependentSpeakerRecognizer: %{public}s", &buf, 0xCu);
      }
    }

    else if (v20)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "TDSR:: Unknown exception creating VTTextDependentSpeakerRecognizer", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x223A6109CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t NArray<int>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<int>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = 0;
    v9 = *(result + 8);
    do
    {
      *(v9 + 4 * v8) = *(a2 + 4 * v8);
      ++v8;
    }

    while (v8 < *(result + 16));
  }

  return result;
}

uint64_t NArray<int>::operator=(uint64_t result, uint64_t a2)
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
        MEMORY[0x223DF1D00](*(result + 8), 0x1000C8052888210);
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
      do
      {
        *(v8 + 4 * v6) = *(v7 + 4 * v6);
        ++v6;
      }

      while (v6 < *(result + 16));
    }
  }

  return result;
}

void NArray<int>::~NArray(void *a1)
{
  *a1 = &unk_283708F80;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<int>::~NArray(void *result)
{
  *result = &unk_283708F80;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C8052888210);
    return v1;
  }

  return result;
}

float NArray<float>::fromArray(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
      v5 = *a3;
    }

    *(a1 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = *(a1 + 8);
    v9 = v4;
    if (v4 < 8 || (v8 - a2) <= 0x1F)
    {
      v11 = 0;
LABEL_14:
      v17 = v9 - v11;
      v18 = 4 * v11;
      v19 = (v8 + v18);
      v20 = (a2 + v18);
      do
      {
        v21 = *v20++;
        LODWORD(v15) = v21;
        *v19++ = v21;
        --v17;
      }

      while (v17);
      return *&v15;
    }

    v11 = v4 & 0xFFFFFFF8;
    v12 = (v8 + 16);
    v13 = (a2 + 16);
    v14 = v9 & 0xFFFFFFF8;
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      *(v12 - 1) = v15;
      *v12 = v16;
      v12 += 2;
      v13 += 2;
      v14 -= 8;
    }

    while (v14);
    if (v11 != v9)
    {
      goto LABEL_14;
    }
  }

  return *&v15;
}

float NArray<float>::operator=(uint64_t a1, uint64_t a2)
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
        MEMORY[0x223DF1D00](*(a1 + 8), 0x1000C8052888210);
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
      if (v3 < 8)
      {
        goto LABEL_12;
      }

      if ((v8 - v7) < 0x20)
      {
        goto LABEL_12;
      }

      v6 = v3 & 0xFFFFFFF8;
      v10 = (v8 + 16);
      v11 = (v7 + 16);
      v12 = v9 & 0xFFFFFFF8;
      do
      {
        v13 = *(v11 - 1);
        v14 = *v11;
        *(v10 - 1) = v13;
        *v10 = v14;
        v10 += 2;
        v11 += 2;
        v12 -= 8;
      }

      while (v12);
      if (v6 != v9)
      {
LABEL_12:
        v15 = v9 - v6;
        v16 = 4 * v6;
        v17 = (v8 + v16);
        v18 = (v7 + v16);
        do
        {
          v19 = *v18++;
          LODWORD(v13) = v19;
          *v17++ = v19;
          --v15;
        }

        while (v15);
      }
    }
  }

  return *&v13;
}

void NArray<float>::~NArray(void *a1)
{
  *a1 = off_28370A538;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<float>::~NArray(void *result)
{
  *result = off_28370A538;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C8052888210);
    return v1;
  }

  return result;
}

void BlobBuilder::buildNormConfig(BlobBuilder *this, const NConfigSection *a2)
{
  v2 = &unk_28370A720;
  v3 = 11;
  operator new[]();
}

void sub_223A61FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void BlobBuilder::serializeNormConfig(BlobBuilder *this, N16ByteAlignedString *a2)
{
  LODWORD(v2) = 12;
  (*(*a2 + 72))(a2, this + 256, &v2);
  v2 = &unk_283706E68;
  operator new[]();
}

void sub_223A62124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void BlobBuilder::insertChecksum(BlobBuilder *this, N16ByteAlignedString *a2)
{
  v2 = *(a2 + 2);
  if (v2 < 0x30)
  {
    goto LABEL_31;
  }

  v3 = *(a2 + 2);
  v4 = v3[9] + v3[8];
  if (v4 > v2)
  {
    goto LABEL_31;
  }

  v5 = v3[3];
  if (v5 > v2)
  {
    goto LABEL_31;
  }

  if (v5 >= 0x40 && v3[12] == 1919706177)
  {
    v6 = v3[13] == 0;
    v7 = 1;
    v8 = 52;
    v9 = 52;
  }

  else
  {
    v6 = 1;
    if (!v4)
    {
      v9 = 0;
      v7 = 0;
      v12 = 0;
      v13 = 1;
      goto LABEL_16;
    }

    v7 = 0;
    v8 = (v3[9] + v3[8]);
    v9 = v3[9] + v3[8];
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  while (1)
  {
    while (1)
    {
      v13 += *(v3 + v11);
      v12 += v13;
      v14 = v11 + 1;
      if (v10 > 0xFFE || v14 >= v8)
      {
        break;
      }

      ++v10;
      ++v11;
    }

    v13 %= 0xFFF1u;
    v12 %= 0xFFF1u;
    if (v14 >= v8)
    {
      break;
    }

    v10 = 0;
    ++v11;
  }

LABEL_16:
  if (v9 < v4)
  {
    v12 = (v12 + 4 * v13) % 0xFFF1;
    v15 = v9 + 4;
    v16 = v4 - v15;
    if (v16)
    {
      v21 = 0;
      v22 = 0;
      v23 = v3 + v15;
      while (1)
      {
        while (1)
        {
          v13 += v23[v22];
          v12 += v13;
          v24 = v22 + 1;
          if (v21 > 0xFFE || v24 >= v16)
          {
            break;
          }

          ++v21;
          ++v22;
        }

        v13 %= 0xFFF1u;
        v12 %= 0xFFF1u;
        if (v24 >= v16)
        {
          break;
        }

        v21 = 0;
        ++v22;
      }
    }
  }

  v17 = v13 | (v12 << 16);
  if ((v7 & 1) == 0)
  {
LABEL_31:
    Error::chuck("BlobBuilder: failed to compute checksum", a2);
  }

  if (!v6)
  {
    Error::chuck("BlobBuilder: checksum already set", a2);
  }

  if (v2 <= 0x34)
  {
    v25 = v2 - 1;
    v26 = 52;
    goto LABEL_37;
  }

  *(v3 + 52) = v17;
  v18 = *(a2 + 2);
  if (v18 <= 0x35)
  {
    v25 = v18 - 1;
    v26 = 53;
    goto LABEL_37;
  }

  *(*(a2 + 2) + 53) = BYTE1(v17);
  v19 = *(a2 + 2);
  if (v19 <= 0x36)
  {
    v25 = v19 - 1;
    v26 = 54;
    goto LABEL_37;
  }

  *(*(a2 + 2) + 54) = BYTE2(v17);
  v20 = *(a2 + 2);
  if (v20 <= 0x37)
  {
    v25 = v20 - 1;
    v26 = 55;
LABEL_37:
    Error::chuck("Index %d outside of range [0,%d]", a2, v26, v25);
  }

  *(*(a2 + 2) + 55) = HIBYTE(v17);
}

uint64_t NArray<unsigned char>::resize(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 16);
  result = *a2;
  if (v3 != result)
  {
    *(a1 + 16) = result;
    operator new[]();
  }

  return result;
}

uint64_t NArray<unsigned char>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
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
      *(*(result + 8) + v8) = *(a2 + v8);
      ++v8;
    }

    while (v8 < *(result + 16));
  }

  return result;
}

uint64_t NArray<unsigned char>::operator=(uint64_t result, uint64_t a2)
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
        MEMORY[0x223DF1D00](*(result + 8), 0x1000C8077774924);
        result = v5;
        v4 = *(a2 + 16);
      }

      *(result + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v6 = 0;
      do
      {
        *(*(result + 8) + v6) = *(*(a2 + 8) + v6);
        ++v6;
      }

      while (v6 < *(result + 16));
    }
  }

  return result;
}

void NArray<unsigned char>::~NArray(void *a1)
{
  *a1 = &unk_283706E68;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<unsigned char>::~NArray(void *result)
{
  *result = &unk_283706E68;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C8077774924);
    return v1;
  }

  return result;
}

void *NArray<NString>::~NArray(void *result)
{
  *result = &unk_283709E80;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 24 * v4;
      v6 = (v5 - 8);
      v7 = v5 - 24;
      v8 = -24 * v4;
      do
      {
        *(v6 - 2) = &unk_28370A720;
        if (*v6)
        {
          MEMORY[0x223DF1D00](*v6, 0x1000C8077774924);
        }

        v6 -= 3;
        v7 -= 24;
        v8 += 24;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x1091C800F2A5985);
    return v2;
  }

  return result;
}

{
  *result = &unk_283709E80;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = v1 + 24 * v4;
      v6 = (v5 - 8);
      v7 = v5 - 24;
      v8 = -24 * v4;
      do
      {
        *(v6 - 2) = &unk_28370A720;
        if (*v6)
        {
          MEMORY[0x223DF1D00](*v6, 0x1000C8077774924);
        }

        v6 -= 3;
        v7 -= 24;
        v8 += 24;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x1091C800F2A5985);
    return v2;
  }

  return result;
}

uint64_t NArray<NString>::fromArray(uint64_t result, uint64_t a2, int *a3)
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
        v11 = v7 + 24 * v10;
        v12 = (v11 - 8);
        v13 = v11 - 24;
        v14 = -24 * v10;
        do
        {
          *(v12 - 2) = &unk_28370A720;
          if (*v12)
          {
            MEMORY[0x223DF1D00](*v12, 0x1000C8077774924);
          }

          v12 -= 3;
          v13 -= 24;
          v14 += 24;
        }

        while (v14);
      }

      MEMORY[0x223DF1D00](v9, 0x1091C800F2A5985);
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
      result = (*(*(*(v4 + 8) + v15) + 32))(*(v4 + 8) + v15, a2 + v15);
      ++v16;
      v15 += 24;
    }

    while (v16 < *(v4 + 16));
  }

  return result;
}

void NArray<NString>::~NArray(void *a1)
{
  *a1 = &unk_283709E80;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 24 * v4;
      v6 = (v5 - 8);
      v7 = v5 - 24;
      v8 = -24 * v4;
      do
      {
        *(v6 - 2) = &unk_28370A720;
        if (*v6)
        {
          MEMORY[0x223DF1D00](*v6, 0x1000C8077774924);
        }

        v6 -= 3;
        v7 -= 24;
        v8 += 24;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x1091C800F2A5985);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void NConfig::~NConfig(NConfig *this)
{
  *this = &unk_283709F28;
  *(this + 1) = &unk_283709F58;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = v1 + 32 * v2;
      do
      {
        v4 = v3 - 32;
        for (*(v3 - 32) = &unk_283709FA0; ; (*(*(v3 - 32) + 72))(v3 - 32))
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
}

{
  *this = &unk_283709F28;
  *(this + 1) = &unk_283709F58;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = v1 + 32 * v2;
      do
      {
        v4 = v3 - 32;
        for (*(v3 - 32) = &unk_283709FA0; ; (*(*(v3 - 32) + 72))(v3 - 32))
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
}

void *NHash<NMap<NString,NString>::HashItem>::~NHash(void *result)
{
  *result = &unk_28370A0D0;
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
  *result = &unk_28370A0D0;
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

void *NLinkedList<NMap<NString,NString>::HashItem>::NElement::~NElement(void *a1)
{
  *a1 = &unk_28370A178;
  a1[5] = &unk_28370A720;
  v2 = a1[7];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  a1[2] = &unk_28370A720;
  v3 = a1[4];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  return a1;
}

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::insert(_DWORD *a1, const char *a2, uint64_t a3)
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

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::append(uint64_t a1)
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

void NLinkedList<NMap<NString,NString>::HashItem>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_28370A108;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_28370A108;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::removeElement(uint64_t a1, uint64_t a2)
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

uint64_t NArray<NLinkedList<NMap<NString,NString>::HashItem>>::fromArray(uint64_t result, uint64_t a2, int *a3)
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
          for (*(v10 - 32) = &unk_28370A108; ; (*(*(v10 - 32) + 72))(v10 - 32))
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

void NArray<NLinkedList<NMap<NString,NString>::HashItem>>::~NArray(void *a1)
{
  *a1 = &unk_28370A0D0;
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

void *NArray<NLinkedList<NMap<NString,NString>::HashItem>>::~NArray(void *result)
{
  *result = &unk_28370A0D0;
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
  *result = &unk_28370A0D0;
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

void NHash<NMap<NString,NString>::HashItem>::~NHash(void *a1)
{
  *a1 = &unk_28370A0D0;
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

void NMap<NString,NString>::~NMap(void *a1)
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

void *NMap<NString,NString>::~NMap(void *result)
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

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::reset(uint64_t result)
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

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::insert(_DWORD *a1, const char *a2, uint64_t a3)
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

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::append(uint64_t a1)
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

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::operator=(uint64_t a1, uint64_t a2)
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

void NLinkedList<NMap<NString,NConfigSection>::HashItem>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283709FA0;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_283709FA0;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::removeElement(uint64_t a1, uint64_t a2)
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

uint64_t NArray<NLinkedList<NMap<NString,NConfigSection>::HashItem>>::fromArray(uint64_t result, uint64_t a2, int *a3)
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
          for (*(v10 - 32) = &unk_283709FA0; ; (*(*(v10 - 32) + 72))(v10 - 32))
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

uint64_t NArray<NLinkedList<NMap<NString,NConfigSection>::HashItem>>::operator=(uint64_t a1, uint64_t a2)
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
        v7 = *(v6 - 8);
        if (v7)
        {
          v8 = v6 + 32 * v7;
          do
          {
            v9 = v8 - 32;
            for (*(v8 - 32) = &unk_283709FA0; ; (*(*(v8 - 32) + 72))(v8 - 32))
            {
              v10 = *(v8 - 24);
              if (!v10)
              {
                break;
              }

              *(v8 - 24) = *(v10 + 8);
            }

            *(v8 - 16) = 0;
            *(v8 - 8) = 0;
            v8 -= 32;
          }

          while (v9 != v6);
        }

        MEMORY[0x223DF1D00](v6 - 16, 0x10A1C80F4A7E088);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        (*(*(*(a1 + 8) + v11) + 24))(*(a1 + 8) + v11, *(a2 + 8) + v11);
        ++v12;
        v11 += 32;
      }

      while (v12 < *(a1 + 16));
    }
  }

  return a1;
}

void NArray<NLinkedList<NMap<NString,NConfigSection>::HashItem>>::~NArray(void *a1)
{
  *a1 = &unk_283709F58;
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
        for (*(v3 - 32) = &unk_283709FA0; ; (*(*(v3 - 32) + 72))(v3 - 32))
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

void *NArray<NLinkedList<NMap<NString,NConfigSection>::HashItem>>::~NArray(void *result)
{
  *result = &unk_283709F58;
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
        for (*(v4 - 32) = &unk_283709FA0; ; (*(*(v4 - 32) + 72))(v4 - 32))
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
  *result = &unk_283709F58;
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
        for (*(v4 - 32) = &unk_283709FA0; ; (*(*(v4 - 32) + 72))(v4 - 32))
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

void NMap<NString,NConfigSection>::~NMap(void *a1)
{
  *a1 = &unk_283709F28;
  a1[1] = &unk_283709F58;
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
        for (*(v3 - 32) = &unk_283709FA0; ; (*(*(v3 - 32) + 72))(v3 - 32))
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

void *NMap<NString,NConfigSection>::~NMap(void *result)
{
  *result = &unk_283709F28;
  result[1] = &unk_283709F58;
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
        for (*(v4 - 32) = &unk_283709FA0; ; (*(*(v4 - 32) + 72))(v4 - 32))
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
  *result = &unk_283709F28;
  result[1] = &unk_283709F58;
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
        for (*(v4 - 32) = &unk_283709FA0; ; (*(*(v4 - 32) + 72))(v4 - 32))
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

uint64_t NLinkedList<NString>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_28370A7C0;
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
  *a1 = &unk_28370A7C0;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

void *NLinkedList<NString>::NElement::~NElement(void *result)
{
  *result = &unk_28370A830;
  result[2] = &unk_28370A720;
  if (result[4])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[4], 0x1000C8077774924);
    return v1;
  }

  return result;
}

uint64_t NLinkedList<NString>::insert(_DWORD *a1, const char *a2, uint64_t a3)
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

uint64_t NLinkedList<NString>::prepend(uint64_t a1)
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

uint64_t NLinkedList<NString>::operator=(uint64_t a1, uint64_t a2)
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

void NLinkedList<NString>::~NLinkedList(uint64_t a1)
{
  *a1 = &unk_28370A7C0;
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    *(a1 + 8) = *(i + 8);
    (*(*a1 + 72))(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NString>::removeElement(uint64_t a1, uint64_t a2)
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

uint64_t NArray<unsigned int>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<unsigned int>::operator=(uint64_t result, uint64_t a2)
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
        MEMORY[0x223DF1D00](*(result + 8), 0x1000C8052888210);
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
      do
      {
        *(v8 + 4 * v6) = *(v7 + 4 * v6);
        ++v6;
      }

      while (v6 < *(result + 16));
    }
  }

  return result;
}

void NArray<unsigned int>::~NArray(void *a1)
{
  *a1 = off_283709B60;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<unsigned int>::~NArray(void *result)
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

void NFrame::~NFrame(NFrame *this)
{
  *this = off_28370A538;
  if (*(this + 1))
  {
    MEMORY[0x223DF1D00](*(this + 1), 0x1000C8052888210);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = off_28370A538;
  if (*(this + 1))
  {
    MEMORY[0x223DF1D00](*(this + 1), 0x1000C8052888210);
  }
}

double BlobBuilder::buildChecksumHeader(BlobBuilder *this)
{
  *&result = 1919706177;
  *(this + 3) = xmmword_223B13250;
  return result;
}

uint64_t BlobBuilder::serializeConfigHeader(BlobBuilder *this, N16ByteAlignedString *a2)
{
  v3 = 48;
  (*(*a2 + 72))(a2, this, &v3);
  return 48;
}

uint64_t BlobBuilder::serializeChecksumHeader(BlobBuilder *this, N16ByteAlignedString *a2)
{
  v3 = 16;
  (*(*a2 + 72))(a2, this + 48, &v3);
  return 16;
}

uint64_t BlobBuilder::getActualHmmArraySize(BlobBuilder *this)
{
  v1 = *(this + 44);
  if (!v1)
  {
    return 4;
  }

  v2 = *(this + 21);
  v3 = *(this + 35);
  if (*(this + 17) >= -1)
  {
    if (v1 == 1)
    {
      v6 = 0;
      LODWORD(result) = 4;
    }

    else
    {
      v14 = 0;
      v6 = v1 & 0xFFFFFFFE;
      v15 = (v2 + 4);
      v16 = 4;
      v17 = v6;
      do
      {
        v16 += 8 * *(v3 + 48 * *(v15 - 1) + 16) + 4;
        v14 += 8 * *(v3 + 48 * *v15 + 16) + 4;
        v15 += 2;
        v17 -= 2;
      }

      while (v17);
      result = (v14 + v16);
      if (v6 == v1)
      {
        return result;
      }
    }

    v18 = v1 - v6;
    v19 = (v2 + 4 * v6);
    do
    {
      v20 = *v19++;
      result = (result + 8 * *(v3 + 48 * v20 + 16) + 4);
      --v18;
    }

    while (v18);
    return result;
  }

  if (v1 == 1)
  {
    v4 = 0;
    LODWORD(result) = 4;
LABEL_11:
    v11 = v1 - v4;
    v12 = (v2 + 4 * v4);
    do
    {
      v13 = *v12++;
      result = (result + 8 * *(v3 + 48 * v13 + 16) + 12);
      --v11;
    }

    while (v11);
    return result;
  }

  v7 = 0;
  v4 = v1 & 0xFFFFFFFE;
  v8 = (v2 + 4);
  v9 = 4;
  v10 = v4;
  do
  {
    v9 += 8 * *(v3 + 48 * *(v8 - 1) + 16) + 12;
    v7 += 8 * *(v3 + 48 * *v8 + 16) + 12;
    v8 += 2;
    v10 -= 2;
  }

  while (v10);
  result = (v7 + v9);
  if (v4 != v1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t BlobBuilder::getHmmArraySize(BlobBuilder *this)
{
  v1 = *(this + 44);
  if (!v1)
  {
    v5 = 4;
    return (v5 + 15) & 0xFFFFFFF0;
  }

  v2 = *(this + 21);
  v3 = *(this + 35);
  if (*(this + 17) >= -1)
  {
    if (v1 == 1)
    {
      v6 = 0;
      v5 = 4;
    }

    else
    {
      v14 = 0;
      v6 = v1 & 0xFFFFFFFE;
      v15 = (v2 + 4);
      v16 = 4;
      v17 = v6;
      do
      {
        v16 += 8 * *(v3 + 48 * *(v15 - 1) + 16) + 4;
        v14 += 8 * *(v3 + 48 * *v15 + 16) + 4;
        v15 += 2;
        v17 -= 2;
      }

      while (v17);
      v5 = v14 + v16;
      if (v6 == v1)
      {
        return (v5 + 15) & 0xFFFFFFF0;
      }
    }

    v18 = v1 - v6;
    v19 = (v2 + 4 * v6);
    do
    {
      v20 = *v19++;
      v5 += 8 * *(v3 + 48 * v20 + 16) + 4;
      --v18;
    }

    while (v18);
    return (v5 + 15) & 0xFFFFFFF0;
  }

  if (v1 == 1)
  {
    v4 = 0;
    v5 = 4;
LABEL_11:
    v11 = v1 - v4;
    v12 = (v2 + 4 * v4);
    do
    {
      v13 = *v12++;
      v5 += 8 * *(v3 + 48 * v13 + 16) + 12;
      --v11;
    }

    while (v11);
    return (v5 + 15) & 0xFFFFFFF0;
  }

  v7 = 0;
  v4 = v1 & 0xFFFFFFFE;
  v8 = (v2 + 4);
  v9 = 4;
  v10 = v4;
  do
  {
    v9 += 8 * *(v3 + 48 * *(v8 - 1) + 16) + 12;
    v7 += 8 * *(v3 + 48 * *v8 + 16) + 12;
    v8 += 2;
    v10 -= 2;
  }

  while (v10);
  v5 = v7 + v9;
  if (v4 != v1)
  {
    goto LABEL_11;
  }

  return (v5 + 15) & 0xFFFFFFF0;
}

float BlobBuilder::convertStrArrToFloatArr(uint64_t a1, uint64_t a2, void *a3)
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
      if (!*(v9 + v7 + 8) || (v11 = 0, strtod(*(v10 + 16), &v11), v9 = *(a2 + 8), v11 != (*(v10 + 16) + *(v10 + 8))))
      {
        Error::chuck("BlobBuilder: unable to convert %s to float", v5, *(v9 + 24 * v8 + 16));
      }

      result = atof(*(v9 + v7 + 16));
      *(a3[1] + 4 * v8++) = result;
      v7 += 24;
    }

    while (v8 < *(a2 + 16));
  }

  return result;
}

void BlobBuilder::serializePadding(BlobBuilder *this, int a2, N16ByteAlignedString *a3)
{
  if (a2)
  {
    operator new[]();
  }
}

void sub_223A65418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NMemPool::getAlignedSize(NMemPool *this)
{
  v1 = NMemPool::m_iAlignBytes - this % NMemPool::m_iAlignBytes;
  if (!(this % NMemPool::m_iAlignBytes))
  {
    v1 = 0;
  }

  return v1 + this;
}

void NMemPool::init(NMemPool *this, char *a2, int a3)
{
  if (!this)
  {
    Error::chuck("NMemPool::init - no memory provided", a2);
  }

  if (!a3)
  {
    Error::chuck("NMemPool::init - byte alignment should be >1", a2);
  }

  if ((NMemPool::m_bLocked & 1) == 0)
  {
    Error::chuck("NMemPool::init - second call to init() before lock()", a2);
  }

  if (a2 >> 30)
  {
    Error::chuck("NMemPool::init - pool size too large", a2);
  }

  NMemPool::m_pData = this;
  NMemPool::m_iSize = a2;
  NMemPool::m_iAlignBytes = a3;
  NMemPool::m_bLocked = 0;
  NMemPool::m_iPos = 0;

  bzero(this, a2);
}

uint64_t NMemPool::getMem(NMemPool *this, const char *a2)
{
  if (NMemPool::m_bLocked == 1)
  {
    Error::chuck("NMemPool::getMem - memory locked", a2);
  }

  if (this % NMemPool::m_iAlignBytes)
  {
    v2 = NMemPool::m_iAlignBytes - this % NMemPool::m_iAlignBytes;
  }

  else
  {
    v2 = 0;
  }

  if (this >> 30 || (v3 = NMemPool::m_iPos, v4 = NMemPool::m_iPos + this + v2, v4 > NMemPool::m_iSize))
  {
    Error::chuck("NMemPool::getMem - memory bound violation", a2);
  }

  NMemPool::m_iPos = v4;
  return NMemPool::m_pData + v3;
}

void sub_223A662D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void TSHMMDetector::~TSHMMDetector(TSHMMDetector *this)
{
  TSHMMDetector::~TSHMMDetector(this);

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283706FB0;
  v2 = *(this + 1);
  if (v2)
  {
    if (!*(this + 3) || ((*(*v2 + 152))(v2), (v2 = *(this + 1)) != 0))
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 58) = off_28370A538;
  v4 = *(this + 59);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 46) = off_28370A538;
  v5 = *(this + 47);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  *(this + 43) = &unk_283709BA8;
  v6 = *(this + 44);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  *(this + 40) = &unk_283707028;
  v7 = *(this + 41);
  if (v7)
  {
    v8 = v7 - 16;
    v9 = *(v7 - 8);
    if (v9)
    {
      v10 = v7 + 48 * v9;
      v11 = v10 - 48;
      v12 = -48 * v9;
      v13 = (v10 - 24);
      do
      {
        *v13 = off_283709B60;
        v14 = v13[1];
        if (v14)
        {
          MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
        }

        *(v13 - 3) = off_28370A538;
        v15 = *(v13 - 2);
        if (v15)
        {
          MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
        }

        v11 -= 48;
        v13 -= 6;
        v12 += 48;
      }

      while (v12);
    }

    MEMORY[0x223DF1D00](v8, 0x1090C80405A4B77);
  }

  *(this + 37) = off_28370A538;
  v16 = *(this + 38);
  if (v16)
  {
    MEMORY[0x223DF1D00](v16, 0x1000C8052888210);
  }

  *(this + 34) = off_28370A538;
  v17 = *(this + 35);
  if (v17)
  {
    MEMORY[0x223DF1D00](v17, 0x1000C8052888210);
  }

  *(this + 31) = off_28370A538;
  v18 = *(this + 32);
  if (v18)
  {
    MEMORY[0x223DF1D00](v18, 0x1000C8052888210);
  }

  *(this + 28) = off_28370A538;
  v19 = *(this + 29);
  if (v19)
  {
    MEMORY[0x223DF1D00](v19, 0x1000C8052888210);
  }

  *(this + 20) = &unk_283706FE0;
  v20 = *(this + 21);
  if (v20)
  {
    v21 = v20 - 16;
    v22 = *(v20 - 8);
    if (v22)
    {
      v23 = -88 * v22;
      v24 = (v20 + 88 * v22 - 32);
      v25 = v24;
      do
      {
        *v24 = off_283709B60;
        v26 = v24[1];
        if (v26)
        {
          MEMORY[0x223DF1D00](v26, 0x1000C8052888210);
        }

        *(v24 - 3) = off_28370A538;
        v27 = *(v24 - 2);
        if (v27)
        {
          MEMORY[0x223DF1D00](v27, 0x1000C8052888210);
        }

        *(v24 - 6) = off_28370A538;
        v28 = *(v24 - 5);
        if (v28)
        {
          MEMORY[0x223DF1D00](v28, 0x1000C8052888210);
        }

        v25 -= 11;
        v24 -= 11;
        v23 += 88;
      }

      while (v23);
    }

    MEMORY[0x223DF1D00](v21, 0x1090C806998C76BLL);
  }

  *(this + 14) = &unk_2837072A0;
  v29 = *(this + 15);
  if (v29)
  {
    v30 = v29 - 16;
    v31 = *(v29 - 8);
    if (v31)
    {
      v32 = v29 + 24 * v31 - 24;
      v33 = -24 * v31;
      v34 = v32;
      do
      {
        *v34 = &unk_283709BA8;
        v35 = v34[1];
        if (v35)
        {
          MEMORY[0x223DF1D00](v35, 0x1000C8077774924);
        }

        v34 -= 3;
        v32 -= 24;
        v33 += 24;
      }

      while (v33);
    }

    MEMORY[0x223DF1D00](v30, 0x1091C80FBD4B0D6);
  }

  *(this + 10) = off_28370A538;
  v36 = *(this + 11);
  if (v36)
  {
    MEMORY[0x223DF1D00](v36, 0x1000C8052888210);
  }
}

uint64_t NArray<NArray<BOOL>>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<NArray<BOOL>>::fromArray(uint64_t result, uint64_t a2, int *a3)
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
          *v13 = &unk_283709BA8;
          v14 = v13[1];
          if (v14)
          {
            MEMORY[0x223DF1D00](v14, 0x1000C8077774924);
          }

          v13 -= 3;
          v11 -= 24;
          v12 += 24;
        }

        while (v12);
      }

      MEMORY[0x223DF1D00](v9, 0x1091C80FBD4B0D6);
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

uint64_t NArray<NArray<BOOL>>::operator=(uint64_t a1, uint64_t a2)
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
            *v11 = &unk_283709BA8;
            v12 = v11[1];
            if (v12)
            {
              MEMORY[0x223DF1D00](v12, 0x1000C8077774924);
            }

            v11 -= 3;
            v9 -= 24;
            v10 += 24;
          }

          while (v10);
        }

        MEMORY[0x223DF1D00](v7, 0x1091C80FBD4B0D6);
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

void NArray<NArray<BOOL>>::~NArray(void *a1)
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

void *NArray<NArray<BOOL>>::~NArray(void *result)
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

uint64_t NArray<NLRHMMModel>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NLRHMMModel::operator=(uint64_t result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  if (result != a2)
  {
    v4 = *(result + 24);
    v5 = *(a2 + 24);
    if (v4 != v5)
    {
      v6 = *(result + 16);
      if (v6)
      {
        MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
        v5 = *(a2 + 24);
      }

      v3[6] = v5;
      operator new[]();
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(a2 + 16);
      v9 = *(result + 16);
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

    v20 = *(result + 48);
    v21 = *(a2 + 48);
    if (v20 != v21)
    {
      v22 = *(result + 40);
      if (v22)
      {
        MEMORY[0x223DF1D00](v22, 0x1000C8052888210);
        v21 = *(a2 + 48);
      }

      v3[12] = v21;
      operator new[]();
    }

    if (v20)
    {
      v23 = 0;
      v24 = *(a2 + 40);
      v25 = *(result + 40);
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

    v36 = *(result + 72);
    v37 = *(a2 + 72);
    if (v36 != v37)
    {
      v38 = *(result + 64);
      if (v38)
      {
        MEMORY[0x223DF1D00](v38, 0x1000C8052888210);
        v37 = *(a2 + 72);
      }

      v3[18] = v37;
      operator new[]();
    }

    if (v36)
    {
      v39 = 0;
      v40 = *(a2 + 64);
      v41 = *(result + 64);
      do
      {
        *(v41 + 4 * v39) = *(v40 + 4 * v39);
        ++v39;
      }

      while (v39 < *(result + 72));
    }
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

uint64_t NArray<NLRHMMModel>::fromArray(uint64_t result, uint64_t a2, int *a3)
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
        v11 = -88 * v10;
        v12 = (v7 + 88 * v10 - 32);
        v13 = v12;
        do
        {
          *v12 = off_283709B60;
          v14 = v12[1];
          if (v14)
          {
            MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
          }

          *(v12 - 3) = off_28370A538;
          v15 = *(v12 - 2);
          if (v15)
          {
            MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
          }

          *(v12 - 6) = off_28370A538;
          v16 = *(v12 - 5);
          if (v16)
          {
            MEMORY[0x223DF1D00](v16, 0x1000C8052888210);
          }

          v13 -= 11;
          v12 -= 11;
          v11 += 88;
        }

        while (v11);
      }

      MEMORY[0x223DF1D00](v9, 0x1090C806998C76BLL);
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
      result = NLRHMMModel::operator=(*(v4 + 8) + v17, a2 + v17);
      ++v18;
      v17 += 88;
    }

    while (v18 < *(v4 + 16));
  }

  return result;
}

uint64_t NArray<NLRHMMModel>::operator=(uint64_t a1, uint64_t a2)
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
          v9 = -88 * v8;
          v10 = (v6 + 88 * v8 - 32);
          v11 = v10;
          do
          {
            *v10 = off_283709B60;
            v12 = v10[1];
            if (v12)
            {
              MEMORY[0x223DF1D00](v12, 0x1000C8052888210);
            }

            *(v10 - 3) = off_28370A538;
            v13 = *(v10 - 2);
            if (v13)
            {
              MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
            }

            *(v10 - 6) = off_28370A538;
            v14 = *(v10 - 5);
            if (v14)
            {
              MEMORY[0x223DF1D00](v14, 0x1000C8052888210);
            }

            v11 -= 11;
            v10 -= 11;
            v9 += 88;
          }

          while (v9);
        }

        MEMORY[0x223DF1D00](v7, 0x1090C806998C76BLL);
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
        NLRHMMModel::operator=(*(a1 + 8) + v15, *(a2 + 8) + v15);
        ++v16;
        v15 += 88;
      }

      while (v16 < *(a1 + 16));
    }
  }

  return a1;
}

void NArray<NLRHMMModel>::~NArray(void *a1)
{
  *a1 = &unk_283706FE0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = -88 * v4;
      v6 = (v2 + 88 * v4 - 32);
      v7 = v6;
      do
      {
        *v6 = off_283709B60;
        v8 = v6[1];
        if (v8)
        {
          MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        }

        *(v6 - 3) = off_28370A538;
        v9 = *(v6 - 2);
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *(v6 - 6) = off_28370A538;
        v10 = *(v6 - 5);
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v7 -= 11;
        v6 -= 11;
        v5 += 88;
      }

      while (v5);
    }

    MEMORY[0x223DF1D00](v3, 0x1090C806998C76BLL);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NLRHMMModel>::~NArray(void *result)
{
  *result = &unk_283706FE0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = -88 * v4;
      v6 = v1 + 88 * v4;
      v7 = v6 - 80;
      v8 = (v6 - 32);
      do
      {
        *v8 = off_283709B60;
        v9 = v8[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *(v8 - 3) = off_28370A538;
        v10 = *(v8 - 2);
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        *(v8 - 6) = off_28370A538;
        v11 = *(v8 - 5);
        if (v11)
        {
          MEMORY[0x223DF1D00](v11, 0x1000C8052888210);
        }

        v7 -= 88;
        v8 -= 11;
        v5 += 88;
      }

      while (v5);
    }

    MEMORY[0x223DF1D00](v3, 0x1090C806998C76BLL);
    return v2;
  }

  return result;
}

uint64_t NArray<NLRHMMStateTokens>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NLRHMMStateTokens::operator=(uint64_t result, uint64_t a2)
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

      *(v2 + 40) = v21;
      operator new[]();
    }

    if (v20)
    {
      v23 = 0;
      v24 = *(a2 + 32);
      v25 = *(result + 32);
      do
      {
        *(v25 + 4 * v23) = *(v24 + 4 * v23);
        ++v23;
      }

      while (v23 < *(result + 40));
    }
  }

  return result;
}

uint64_t NArray<NLRHMMStateTokens>::fromArray(uint64_t result, uint64_t a2, int *a3)
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
          *v14 = off_283709B60;
          v15 = v14[1];
          if (v15)
          {
            MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
          }

          *(v14 - 3) = off_28370A538;
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

      MEMORY[0x223DF1D00](v9, 0x1090C80405A4B77);
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
      result = NLRHMMStateTokens::operator=(*(v4 + 8) + v17, a2 + v17);
      ++v18;
      v17 += 48;
    }

    while (v18 < *(v4 + 16));
  }

  return result;
}

uint64_t NArray<NLRHMMStateTokens>::operator=(uint64_t a1, uint64_t a2)
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
            *v12 = off_283709B60;
            v13 = v12[1];
            if (v13)
            {
              MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
            }

            *(v12 - 3) = off_28370A538;
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

        MEMORY[0x223DF1D00](v7, 0x1090C80405A4B77);
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
        NLRHMMStateTokens::operator=(*(a1 + 8) + v15, *(a2 + 8) + v15);
        ++v16;
        v15 += 48;
      }

      while (v16 < *(a1 + 16));
    }
  }

  return a1;
}

void NArray<NLRHMMStateTokens>::~NArray(void *a1)
{
  *a1 = &unk_283707028;
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
        *v8 = off_283709B60;
        v9 = v8[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *(v8 - 3) = off_28370A538;
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

    MEMORY[0x223DF1D00](v3, 0x1090C80405A4B77);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NLRHMMStateTokens>::~NArray(void *result)
{
  *result = &unk_283707028;
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
        *v8 = off_283709B60;
        v9 = v8[1];
        if (v9)
        {
          MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        }

        *(v8 - 3) = off_28370A538;
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

    MEMORY[0x223DF1D00](v3, 0x1090C80405A4B77);
    return v2;
  }

  return result;
}

uint64_t NArray<BOOL>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<BOOL>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = *(result + 8);
    v9 = v4;
    if (v4 < 8 || (v8 - a2) <= 0x1F)
    {
      v11 = 0;
      goto LABEL_20;
    }

    if (v4 >= 0x20)
    {
      v11 = v4 & 0xFFFFFFE0;
      v12 = (v8 + 16);
      v13 = (a2 + 16);
      v14 = v9 & 0xFFFFFFE0;
      do
      {
        v15 = *v13;
        *(v12 - 1) = *(v13 - 1);
        *v12 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 32;
      }

      while (v14);
      if (v11 == v9)
      {
        return result;
      }

      if ((v9 & 0x18) == 0)
      {
LABEL_20:
        v21 = v9 - v11;
        v22 = (v8 + v11);
        v23 = (a2 + v11);
        do
        {
          v24 = *v23++;
          *v22++ = v24;
          --v21;
        }

        while (v21);
        return result;
      }
    }

    else
    {
      v11 = 0;
    }

    v16 = v11;
    v11 = v9 & 0xFFFFFFF8;
    v17 = v16 - v11;
    v18 = (v8 + v16);
    v19 = (a2 + v16);
    do
    {
      v20 = *v19++;
      *v18++ = v20;
      v17 += 8;
    }

    while (v17);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t NArray<BOOL>::operator=(uint64_t result, uint64_t a2)
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
        MEMORY[0x223DF1D00](*(result + 8), 0x1000C8077774924);
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
      if (v3 < 8 || (v8 - v7) < 0x20)
      {
        goto LABEL_18;
      }

      if (v3 >= 0x20)
      {
        v6 = v3 & 0xFFFFFFE0;
        v10 = (v8 + 16);
        v11 = (v7 + 16);
        v12 = v9 & 0xFFFFFFE0;
        do
        {
          v13 = *v11;
          *(v10 - 1) = *(v11 - 1);
          *v10 = v13;
          v10 += 2;
          v11 += 2;
          v12 -= 32;
        }

        while (v12);
        if (v6 == v9)
        {
          return result;
        }

        if ((v9 & 0x18) == 0)
        {
LABEL_18:
          v19 = v9 - v6;
          v20 = (v8 + v6);
          v21 = (v7 + v6);
          do
          {
            v22 = *v21++;
            *v20++ = v22;
            --v19;
          }

          while (v19);
          return result;
        }
      }

      else
      {
        v6 = 0;
      }

      v14 = v6;
      v6 = v9 & 0xFFFFFFF8;
      v15 = v14 - v6;
      v16 = (v8 + v14);
      v17 = (v7 + v14);
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        v15 += 8;
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

void NArray<BOOL>::~NArray(void *a1)
{
  *a1 = &unk_283709BA8;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<BOOL>::~NArray(void *result)
{
  *result = &unk_283709BA8;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C8077774924);
    return v1;
  }

  return result;
}

void NLRHMMModel::init(NLRHMMModel *this, const NPhoneHMM *a2, const int *a3, float *a4, float *a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  LODWORD(v10) = *(a2 + 4) + 1;
  *this = v10;
  if (*(this + 6) != v10)
  {
    *(this + 6) = v10;
    operator new[]();
  }

  if (*(this + 12) != v10)
  {
    *(this + 12) = v10;
    operator new[]();
  }

  if (*(this + 18) != v10)
  {
    *(this + 18) = v10;
    operator new[]();
  }

  if (v10 <= 1)
  {
    v12 = *(this + 8);
    goto LABEL_15;
  }

  v11 = *(a2 + 1);
  v12 = *(this + 8);
  v13 = 1;
  v14 = v11;
  do
  {
    v15 = *v14;
    v14 += 2;
    v12[v13++] = v15;
    v10 = *this;
  }

  while (v13 < v10);
  if (v10 <= 1)
  {
    v5 = a5;
LABEL_15:
    v17 = *(this + 5);
    v16 = *(this + 2);
    goto LABEL_41;
  }

  v16 = *(this + 2);
  v17 = *(this + 5);
  if (v10 > 9)
  {
    v19 = &v16[v10];
    v20 = v17 + 1;
    v21 = &v17[v10];
    v22 = v11 + 4;
    v23 = v11 - 8 + 8 * v10;
    _CF = (v16 + 1) >= v23 || v22 >= v19;
    v25 = !_CF;
    v27 = v20 < v23 && v22 < v21;
    v28 = v20 >= v19 || (v16 + 1) >= v21;
    v18 = 1;
    if (v28 && (v25 & 1) == 0 && !v27)
    {
      v50 = (v10 - 1) | 0xFFFFFFFFFFFFFFFELL;
      v29 = v50 + v10 - 1;
      v30 = (v11 + 4);
      v31 = v17 + 1;
      v32 = v16 + 1;
      __asm { FMOV            V8.2S, #1.0 }

      do
      {
        v36 = *vld2_f32(v30).val;
        v30 += 4;
        v57 = v36;
        v55 = logf(v36.f32[1]);
        *&v37 = logf(v57.f32[0]);
        *(&v37 + 1) = v55;
        *v32++ = v37;
        v38 = vsub_f32(_D8, v57);
        v56 = v38.f32[0];
        v57.i32[0] = logf(v38.f32[1]);
        *&v39 = logf(v56);
        HIDWORD(v39) = v57.i32[0];
        *v31++ = v39;
        v29 -= 2;
      }

      while (v29);
      v7 = a3;
      v18 = v50 + v10;
      v8 = a2;
    }
  }

  else
  {
    v18 = 1;
  }

  v40 = (v11 + 8 * v18 - 4);
  do
  {
    v41 = *v40;
    v40 += 2;
    v16[v18] = logf(v41);
    v17[v18++] = logf(1.0 - v41);
  }

  while (v10 != v18);
  v6 = a4;
  v5 = a5;
LABEL_41:
  v17[(v10 - 1)] = *v5 + v17[(v10 - 1)];
  v42 = 1.0 - 1.0 / *v6;
  *v16 = logf(v42);
  *v17 = logf(1.0 - v42);
  *v12 = *v7;
  v43 = *(v8 + 8);
  _CF = v43 >= 7;
  v44 = v43 - 7;
  if (_CF)
  {
    v46 = (*(v8 + 5) + v44);
    v47 = *v46;
    v48 = *(v46 + 3);
    v45 = v47 == 1935959151 && v48 == 1885956979;
  }

  else
  {
    v45 = 0;
  }

  *(this + 80) = v45;
}

uint64_t NLRHMMStateTokens::init(uint64_t this, const unsigned int *a2)
{
  v2 = *a2 + 1;
  if (*(this + 16) != v2)
  {
    *(this + 16) = v2;
    operator new[]();
  }

  v3 = *a2 + 1;
  if (*(this + 40) != v3)
  {
    *(this + 40) = v3;
    operator new[]();
  }

  return this;
}

void NLRHMMStateTokens::reset(NLRHMMStateTokens *this)
{
  if (*(this + 10))
  {
    v1 = 0;
    v2 = *(this + 4);
    do
    {
      *(v2 + 4 * v1++) = 0;
    }

    while (v1 < *(this + 10));
  }

  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 1);
    *v4 = 0;
    v5 = v3 - 1;
    if (v5)
    {
      memset_pattern16(v4 + 1, &unk_223B13320, 4 * v5);
    }
  }
}

void TSHMMDetector::TSHMMDetector(TSHMMDetector *this)
{
  *this = &unk_283706FB0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 10) = &unk_28370A4D8;
  *(this + 52) = 1;
  N2DArray<BOOL>::N2DArray(this + 14);
}

void sub_223A69490(_Unwind_Exception *exception_object)
{
  *v1 = off_28370A538;
  if (*v2)
  {
    MEMORY[0x223DF1D00](*v2, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void TSHMMDetector::init(TSHMMDetector *this, const NString *a2, const NString *a3, const NString *a4, const NString *a5, const NString *a6, const NString *a7, const NString *a8, float a9, float a10, float a11, const NString *a12, unsigned int a13, unsigned int a14, unsigned int a15, unsigned int a16, unsigned int a17, unsigned int a18, unsigned int a19, unsigned int a20, int a21, BOOL a22, BOOL a23)
{
  v24 = a9;
  if (*(this + 444) != 1)
  {
    v23[0] = &unk_283708D98;
    v23[1] = 0;
    NDistributionLoader::read(v23, a2, a3);
  }

  Error::chuck("TSHMMDetector::init() - init() already called", a2, a3, a4, a5, a6, a7, a8);
}

void sub_223A6AB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  NArray<NString>::~NArray(&a36);
  NArray<NString>::~NArray((v36 - 208));
  NPhoneHMMArray::~NPhoneHMMArray((v36 - 176));
  _Unwind_Resume(a1);
}

uint64_t TSHMMDetector::addLengthKeywords(uint64_t a1, _DWORD *a2)
{
  v2 = a2[4];
  LODWORD(v4) = 2 * v2;
  result = (*(*a2 + 32))(a2, &v4);
  if (v2)
  {
    operator new[]();
  }

  return result;
}

void sub_223A6AEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v14);
  }

  _Unwind_Resume(exception_object);
}

void TSHMMDetector::setPhraseScoreOffsets(TSHMMDetector *this, const NString *a2, const unsigned int *a3)
{
  v5 = &unk_283709E80;
  v6 = 0;
  v7 = 0;
  v3 = &unk_28370A720;
  v4 = 1;
  operator new[]();
}

void sub_223A6B390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v23);
  }

  if (a23)
  {
    MEMORY[0x223DF1D00](a23, v23);
  }

  if (a17)
  {
    MEMORY[0x223DF1D00](a17, v23);
  }

  if (a20)
  {
    MEMORY[0x223DF1D00](a20, v23);
  }

  NArray<NString>::~NArray((v24 - 88));
  _Unwind_Resume(a1);
}

void TSHMMDetector::quasarCMNBatch(TSHMMDetector *this)
{
  v1 = *(this + 52);
  if (!v1)
  {
    return;
  }

  v3 = *(this + 53);
  v4 = (*(**(this + 1) + 32))(*(this + 1)) - *(this + 216);
  v5 = (*(**(this + 1) + 40))(*(this + 1));
  v7 = *(this + 110);
  v26 = v4 >= v7;
  v8 = v4 - v7;
  if (v26)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > v1)
  {
    Error::chuck("TSHMMDetector::quasarCMNBatch() - small maxframes=%d not supported for batch=%d", v6, v1, v9);
  }

  v10 = *v5;
  if (!v10)
  {
    return;
  }

  v11 = *(this + 47);
  v12 = 4 * *v5;
  bzero(v11, v12);
  if (v3 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v3;
  }

  if (v13)
  {
    v14 = *(this + 29);
    v15 = &v11[v12 / 4];
    v16 = v14 + v12;
    v17 = v10 & 0xFFFFFFF8;
    if (v10 <= 7)
    {
      v18 = 0;
      v19 = *v11;
      v20 = v13;
      do
      {
        v19 = *(v14 + 4 * v18) + v19;
        *v11 = v19;
        v21 = v18 + 1;
        if (v10 != 1)
        {
          v11[1] = *(v14 + 4 * v21) + v11[1];
          v21 = v18 + 2;
          if (v10 != 2)
          {
            v11[2] = *(v14 + 4 * v21) + v11[2];
            v21 = v18 + 3;
            if (v10 != 3)
            {
              v11[3] = *(v14 + 4 * v21) + v11[3];
              v21 = v18 + 4;
              if (v10 != 4)
              {
                v11[4] = *(v14 + 4 * v21) + v11[4];
                v21 = v18 + 5;
                if (v10 != 5)
                {
                  v11[5] = *(v14 + 4 * v21) + v11[5];
                  v21 = v18 + 6;
                  if (v10 != 6)
                  {
                    v11[6] = *(v14 + 4 * v21) + v11[6];
                    v21 = v18 + 7;
                  }
                }
              }
            }
          }
        }

        v18 = v21;
        --v20;
      }

      while (v20);
LABEL_39:
      v35 = 1.0 / v13;
      if (v10 < 8)
      {
        v36 = 0;
        v37 = v13;
        do
        {
          *(v14 + 4 * v36) = *(v14 + 4 * v36) - (v35 * *v11);
          v22 = v36 + 1;
          if (v10 != 1)
          {
            *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v35 * v11[1]);
            v22 = v36 + 2;
            if (v10 != 2)
            {
              *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v35 * v11[2]);
              v22 = v36 + 3;
              if (v10 != 3)
              {
                *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v35 * v11[3]);
                v22 = v36 + 4;
                if (v10 != 4)
                {
                  *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v35 * v11[4]);
                  v22 = v36 + 5;
                  if (v10 != 5)
                  {
                    *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v35 * v11[5]);
                    v22 = v36 + 6;
                    if (v10 != 6)
                    {
                      *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v35 * v11[6]);
                      v22 = v36 + 7;
                    }
                  }
                }
              }
            }
          }

          v36 = v22;
          --v37;
        }

        while (v37);
LABEL_65:
        if (v3 < v9)
        {
          goto LABEL_66;
        }

        return;
      }

      v38 = 0;
      v22 = 0;
      while (1)
      {
        if (v22 <= -v10 && ((v39 = 4 * v22, v11 < v16 + v39) ? (v40 = v14 + v39 >= v15) : (v40 = 1), v40))
        {
          v41 = v22;
          v42 = (v11 + 4);
          v43 = v10 & 0xFFFFFFF8;
          do
          {
            v44 = (v14 + 4 * v41);
            v45 = vsubq_f32(v44[1], vmulq_n_f32(*v42, v35));
            *v44 = vsubq_f32(*v44, vmulq_n_f32(v42[-1], v35));
            v44[1] = v45;
            v42 += 2;
            v41 += 8;
            v43 -= 8;
          }

          while (v43);
          v22 += v17;
          v46 = v10 & 0xFFFFFFF8;
          if (v17 == v10)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v46 = 0;
        }

        v47 = v10 - v46;
        v48 = &v11[v46];
        do
        {
          v49 = *v48++;
          *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v35 * v49);
          ++v22;
          --v47;
        }

        while (v47);
LABEL_50:
        if (++v38 == v13)
        {
          goto LABEL_65;
        }
      }
    }

    v23 = 0;
    v24 = 0;
    while (1)
    {
      if (v24 <= -v10 && ((v25 = 4 * v24, v11 < v16 + v25) ? (v26 = v14 + v25 >= v15) : (v26 = 1), v26))
      {
        v27 = v24;
        v28 = (v11 + 4);
        v29 = v10 & 0xFFFFFFF8;
        do
        {
          v30 = (v14 + 4 * v27);
          v31 = vaddq_f32(v30[1], *v28);
          v28[-1] = vaddq_f32(*v30, v28[-1]);
          *v28 = v31;
          v28 += 2;
          v27 += 8;
          v29 -= 8;
        }

        while (v29);
        v24 += v17;
        v32 = v10 & 0xFFFFFFF8;
        if (v17 == v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v32 = 0;
      }

      v33 = v10 - v32;
      v34 = &v11[v32];
      do
      {
        *v34 = *(v14 + 4 * v24) + *v34;
        ++v34;
        ++v24;
        --v33;
      }

      while (v33);
LABEL_24:
      if (++v23 == v13)
      {
        goto LABEL_39;
      }
    }
  }

  if (v3 < v9)
  {
    v13 = 0;
    v22 = 0;
    v14 = *(this + 29);
LABEL_66:
    v50 = v10 & 0xFFFFFFFC;
    do
    {
      v51 = 1.0 / ++v13;
      if (v10 >= 4)
      {
        v52 = 0;
        if (__CFADD__(v22, v10 - 1) || (v10 - 1) >> 32)
        {
          goto LABEL_69;
        }

        v56 = 4 * v22;
        if (v11 >= v14 + v12 + v56 || v14 + v56 >= &v11[v12 / 4])
        {
          v57 = v22;
          v58 = v11;
          v59 = v10 & 0xFFFFFFFC;
          do
          {
            v60 = 4 * v57;
            v61 = *(v14 + v60);
            v62 = vaddq_f32(v61, *v58);
            *v58++ = v62;
            *(v14 + v60) = vsubq_f32(v61, vmulq_n_f32(v62, v51));
            v57 += 4;
            v59 -= 4;
          }

          while (v59);
          v22 += v50;
          v52 = v10 & 0xFFFFFFFC;
          if (v50 == v10)
          {
            continue;
          }

          goto LABEL_69;
        }
      }

      v52 = 0;
LABEL_69:
      v53 = v10 - v52;
      v54 = &v11[v52];
      do
      {
        v55 = *(v14 + 4 * v22) + *v54;
        *v54++ = v55;
        *(v14 + 4 * v22) = *(v14 + 4 * v22) - (v51 * v55);
        ++v22;
        --v53;
      }

      while (v53);
    }

    while (v13 < v9);
  }
}

uint64_t TSHMMDetector::endFrames(TSHMMDetector *this, const char *a2, __n128 a3)
{
  if ((*(this + 444) & 1) == 0)
  {
    Error::chuck("TSHMMDetector::endFrame() - init() not called", a2);
  }

  if (*(this + 445))
  {
    Error::chuck("TSHMMDetector::endFrame() - endFrame() already called", a2);
  }

  do
  {
    result = TSHMMDetector::updateResult(this, a2, a3);
  }

  while ((result & 1) != 0);
  *(this + 445) = 1;
  if (*(this + 446) == 1)
  {
    *(this + 105) = 1;
  }

  return result;
}

uint64_t TSHMMDetector::drainFrameWindowAndStep(TSHMMDetector *this)
{
  if (*(this + 446) != 1)
  {
    return 0;
  }

  v1 = *(this + 18);
  if ((*(this + 105) != 1 || !v1) && v1 != *(this + 9) + 1)
  {
    return 0;
  }

  v2 = this + 52;
  if (!*(this + 13))
  {
    Error::chuck("NFrameWindow::setOutputFrameWindow() - frame window not configured", v2);
  }

  v3 = (this + 224);
  (*(*(this + 28) + 32))(this + 224, v2);
  NFrameWindow::setOutputFrameWindow(this + 32, *(this + 29));
  TSHMMDetector::stepFrame(this, v3);
  v5 = *(this + 103);
  v6 = *(this + 104);
  v7 = v5 >= v6;
  v8 = v5 - v6;
  if (v8 != 0 && v7)
  {
    if (*(this + 106) > v8)
    {
      *(this + 106) = v8;
    }
  }

  else
  {
    *(this + 106) = 0;
  }

  return 1;
}

void TSHMMDetector::padToEndOfBatch(TSHMMDetector *this)
{
  v2 = *(this + 107);
  if (v2 < (*(**(this + 1) + 32))(*(this + 1)))
  {
    v4 = *(this + 96);
    if (v4)
    {
      bzero(*(this + 47), 4 * v4);
    }

    for (*(this + 110) = 0; !*(this + 106); ++*(this + 110))
    {
      TSHMMDetector::feedFrame(this, (this + 368), v3);
      --*(this + 103);
    }
  }
}

uint64_t TSHMMDetector::skipUntilInitialize(TSHMMDetector *this, const NFrame *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 109);
  if (!v3)
  {
    return 0;
  }

  v4 = v3 - 1;
  *(this + 109) = v4;
  if (v4)
  {
    ++*(this + 104);
    return 1;
  }

  if (*(this + 450))
  {
    return 0;
  }

  (*(*v2 + 72))(v2, a2, this + 248, 0);
  v7 = **(this + 21);
  v8 = *(this + 41);
  v9 = (v7 - 1);
  if (v7 == 1)
  {
    v12 = *(v8 + 32);
    v13 = *(v8 + 8);
  }

  else
  {
    v10 = *(this + 32);
    v11 = (this + 416);
    v12 = *(v8 + 32);
    v13 = *(v8 + 8);
    if (v9 <= 0xB || v7 - 2 > -v7)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v14 = 0;
    v22 = 4 * v9 + 4;
    v23 = (v12 + v22);
    v24 = v13 + v22;
    v25 = v10 + 4 * v9;
    v27 = (v13 + 1) < v25 && v10 < v24;
    v29 = (v13 + 1) < v10 + 8 * v9 && v25 < v24;
    if (v11 < v23 && v12 + 1 < this + 105)
    {
      goto LABEL_11;
    }

    if (v27)
    {
      goto LABEL_11;
    }

    if (v29)
    {
      goto LABEL_11;
    }

    v14 = v9 & 0xFFFFFFFC;
    v31 = vld1q_dup_f32(v11);
    v32 = 1;
    v33 = v7 - 1;
    v34 = *(this + 32);
    v35 = v14;
    do
    {
      v36 = vbicq_s8(*(v10 + 4 * v33), vcltzq_f32(*(v10 + 4 * v33)));
      *&v12[v32] = vsubq_s32(v31, vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))));
      v37 = *v34++;
      *&v13[v32] = v37;
      v32 += 4;
      v33 += 4;
      v35 -= 4;
    }

    while (v35);
    if (v14 != v9)
    {
LABEL_11:
      v15 = 0;
      v16 = v9 - v14;
      v17 = 4 * v14 + 4;
      v18 = v13 + v17;
      v19 = v12 + v17;
      v20 = v7 + v14 - 1;
      do
      {
        v21 = *(v10 + 4 * (v20 + v15));
        if (v21 < 0.0)
        {
          v21 = 0.0;
        }

        *&v19[4 * v15] = *v11 - rintf(v21);
        *&v18[4 * v15] = *(v10 + 4 * v14 + 4 * v15);
        ++v15;
      }

      while (v16 != v15);
    }
  }

  result = 0;
  *v12 = *(this + 104);
  *v13 = 0;
  return result;
}

BOOL TSHMMDetector::skipUntilProcessedFrame(TSHMMDetector *this)
{
  v2 = *(this + 107);
  if (v2)
  {
    v3 = *(this + 107);
    if (*(this + 449) == 1)
    {
      v4 = **(this + 21);
      v5 = (v4 - 1);
      if (v4 != 1)
      {
        bzero(*(this + 44), v5);
      }

      v6 = *(this + 37);
      if (*(this + 90) != v6)
      {
        Error::chuck("NLRHMMTraceback::drop() - mismatched number of states (%d != %d)", v5, *(this + 90), v6);
      }

      v7 = *(this + 15) + 24 * *(this + 38);
      (*(*v7 + 16))(v7, this + 344);
      v9 = *(this + 38);
      v8 = *(this + 39);
      v10 = *(this + 36);
      if (v9 + 1 < v10)
      {
        v11 = v9 + 1;
      }

      else
      {
        v11 = 0;
      }

      *(this + 38) = v11;
      if (v8 < v10)
      {
        *(this + 39) = v8 + 1;
      }

      v3 = *(this + 107);
    }

    ++*(this + 108);
    v12 = v3 - 1;
  }

  else
  {
    v13 = *(this + 104);
    if (v13 && *(this + 51) == 1)
    {
      *(this + 104) = *(this + 48) + v13;
    }

    v12 = *(this + 48);
  }

  result = v2 != 0;
  *(this + 107) = v12;
  return result;
}

double TSHMMDetector::maxScore(uint64_t a1, uint64_t a2)
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

uint64_t TSHMMDetector::partialLength(TSHMMDetector *this)
{
  if (*(this + 47))
  {
    return (*(this + 104) - *(this + 99));
  }

  else
  {
    return 0;
  }
}

float TSHMMDetector::scorePhrase(TSHMMDetector *this, const char *a2)
{
  v4 = *a2;
  v5 = *(this + 44);
  if (v4 >= v5)
  {
    Error::chuck("TSHMMDetector::scorePhrase() - phrase %d out of range %d", a2, v4, v5, v2, v3);
  }

  return *(*(*(this + 41) + 48 * v4 + 8) + 4 * *(*(this + 21) + 88 * v4)) * *(this + 49);
}

uint64_t TSHMMDetector::bestLengthPhrase(TSHMMDetector *this, const char *a2)
{
  v4 = *a2;
  v5 = *(this + 44);
  if (v4 >= v5)
  {
    Error::chuck("TSHMMDetector::scorePhrase() - phrase %d out of range %d", a2, v4, v5, v2, v3);
  }

  return (*(this + 104) - *(*(*(this + 41) + 48 * v4 + 32) + 4 * *(*(this + 21) + 88 * v4)));
}

uint64_t TSHMMDetector::numStates(TSHMMDetector *this)
{
  if (*(this + 44))
  {
    return (**(this + 21) - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t TSHMMDetector::lastOutputDist(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 288);
  if (*(a2 + 16) != v2)
  {
    Error::chuck("TSHMMDetector::lastModelOutput() - mismatched size in output array (%d != %d)", a2, *(a2 + 16), v2);
  }

  v3 = *(a1 + 451);
  if (v3 == 1)
  {
    (*(*a2 + 16))(a2, a1 + 272);
  }

  return v3;
}

uint64_t TSHMMDetector::frameSize(TSHMMDetector *this, const char *a2)
{
  if ((*(this + 444) & 1) == 0)
  {
    Error::chuck("TSHMMDetector::frameSize() - init() not called", a2, v2, v3);
  }

  return *(this + 46);
}

unint64_t TSHMMDetector::lengthNormalizedScore(TSHMMDetector *this, unsigned int *a2)
{
  if ((*(this + 461) & 1) == 0)
  {
    v7 = *(this + 102);
    *a2 = v7;
    v6 = *(this + 104) - *(this + 101);
    v8 = 0.0;
    if (v7 < *(this + 120))
    {
      v8 = *(*(this + 59) + 4 * v7);
    }

    if (!v6)
    {
      goto LABEL_10;
    }

    v9 = *(this + 100);
    v10 = *(this + 113);
    if (v10 == 1.0)
    {
      v11 = v6;
    }

    else
    {
      if (v10 == 0.0)
      {
        goto LABEL_20;
      }

      v11 = powf(v6, v10);
    }

    v9 = v9 / v11;
LABEL_20:
    v12 = v8 + v9;
    return v6 | (LODWORD(v12) << 32);
  }

  v4 = *(this + 44);
  v5 = *(this + 460) + 1;
  *a2 = 0;
  v18 = 0;
  if (v4 < v5)
  {
    v6 = 0;
LABEL_10:
    v12 = -1000000.0;
    return v6 | (LODWORD(v12) << 32);
  }

  v13 = 0;
  v6 = 0;
  v14 = v4 / v5;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v12 = -1000000.0;
  do
  {
    v16 = TSHMMDetector::lengthNormalizedScorePhrase(this, &v18);
    if (v16 && v12 < *(&v16 + 1))
    {
      *a2 = v13;
      v12 = *(&v16 + 1);
      v6 = v16;
    }

    v18 = ++v13;
  }

  while (v15 != v13);
  return v6 | (LODWORD(v12) << 32);
}

float TSHMMDetector::getBestLengthNormalizedPhraseScore(TSHMMDetector *this, unsigned int *a2, unsigned int *a3)
{
  if ((*(this + 461) & 1) == 0)
  {
    v8 = *(this + 102);
    v9 = *(this + 104) - *(this + 101);
    v10 = 0.0;
    if (v8 < *(this + 120))
    {
      v10 = *(*(this + 59) + 4 * v8);
    }

    if (!v9)
    {
      goto LABEL_10;
    }

    v11 = *(this + 100);
    v12 = *(this + 113);
    if (v12 == 1.0)
    {
      v13 = v9;
    }

    else
    {
      if (v12 == 0.0)
      {
        goto LABEL_20;
      }

      v13 = powf(v9, v12);
    }

    v11 = v11 / v13;
LABEL_20:
    v14 = v10 + v11;
    goto LABEL_21;
  }

  v6 = *(this + 44);
  v7 = *(this + 460) + 1;
  v20 = 0;
  if (v6 < v7)
  {
    LODWORD(v8) = 0;
    v9 = 0;
LABEL_10:
    v14 = -1000000.0;
    goto LABEL_21;
  }

  LODWORD(v8) = 0;
  v15 = 0;
  v9 = 0;
  v16 = v6 / v7;
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
    v18 = TSHMMDetector::lengthNormalizedScorePhrase(this, &v20);
    if (v18 && v14 < *(&v18 + 1))
    {
      LODWORD(v8) = v15;
      v14 = *(&v18 + 1);
      v9 = v18;
    }

    v20 = ++v15;
  }

  while (v17 != v15);
LABEL_21:
  *a2 = v9;
  *a3 = v8;
  return v14;
}

unint64_t TSHMMDetector::lengthNormalizedScorePartial(TSHMMDetector *this)
{
  v1 = 0xC974240000000000;
  if (*(this + 47))
  {
    v2 = *(this + 104);
    v3 = *(this + 99);
    v4 = (v2 - v3);
    if (v2 != v3)
    {
      v5 = *(this + 98);
      v6 = *(this + 113);
      if (v6 == 1.0)
      {
        v7 = v4;
      }

      else
      {
        if (v6 == 0.0)
        {
          goto LABEL_8;
        }

        v7 = powf(v4, v6);
      }

      v5 = v5 / v7;
LABEL_8:
      v1 = COERCE_UNSIGNED_INT(v5 + 0.0) << 32;
      return v4 | v1;
    }
  }

  v4 = 0;
  return v4 | v1;
}

void sub_223A6CA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__609(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223A6CE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223A6D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223A6D694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSSATScorer::~TSSATScorer(TSSATScorer *this)
{
  *this = &unk_2837070D0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 30) = off_28370A538;
  v3 = *(this + 31);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 27) = off_28370A538;
  v4 = *(this + 28);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 11) = &unk_283707160;
  *(this + 24) = &unk_28370A720;
  v5 = *(this + 26);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }

  *(this + 21) = &unk_28370A720;
  v6 = *(this + 23);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  *(this + 12) = &unk_28370A720;
  v7 = *(this + 14);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  *(this + 2) = &unk_283707130;
  *(this + 3) = &unk_28370A720;
  v8 = *(this + 5);
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_2837070D0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 30) = off_28370A538;
  v3 = *(this + 31);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 27) = off_28370A538;
  v4 = *(this + 28);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 11) = &unk_283707160;
  *(this + 24) = &unk_28370A720;
  v5 = *(this + 26);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }

  *(this + 21) = &unk_28370A720;
  v6 = *(this + 23);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  *(this + 12) = &unk_28370A720;
  v7 = *(this + 14);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  *(this + 2) = &unk_283707130;
  *(this + 3) = &unk_28370A720;
  v8 = *(this + 5);
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
  }
}

{
  *this = &unk_2837070D0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 30) = off_28370A538;
  v3 = *(this + 31);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 27) = off_28370A538;
  v4 = *(this + 28);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 11) = &unk_283707160;
  *(this + 24) = &unk_28370A720;
  v5 = *(this + 26);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }

  *(this + 21) = &unk_28370A720;
  v6 = *(this + 23);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  *(this + 12) = &unk_28370A720;
  v7 = *(this + 14);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  *(this + 2) = &unk_283707130;
  *(this + 3) = &unk_28370A720;
  v8 = *(this + 5);
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
  }
}

void TSSATScorer::TSSATScorer(TSSATScorer *this)
{
  *this = &unk_2837070D0;
  *(this + 1) = 0;
  *(this + 2) = &unk_283707130;
  *(this + 3) = &unk_28370A720;
  *(this + 8) = 0;
  operator new[]();
}

{
  *this = &unk_2837070D0;
  *(this + 1) = 0;
  *(this + 2) = &unk_283707130;
  *(this + 3) = &unk_28370A720;
  *(this + 8) = 0;
  operator new[]();
}

void TSSATScorer::init(TSSATScorer *this, const NString *a2, const NString *a3, const unsigned int *a4, const BOOL *a5, const BOOL *a6, const BOOL *a7, const float *a8, const unsigned int *a9, const unsigned int *a10, const unsigned int *a11)
{
  if (*(this + 295) != 1)
  {
    v11 = *(this + 1);
    if (v11)
    {
      (*(*v11 + 8))(v11, a2, a3, a4, a5, a6);
    }

    operator new[]();
  }

  Error::chuck("TSSATScorer::init() - init() already called", a2, a3, a4, a5, a6, a7, a8);
}

void sub_223A6EEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  if (a18)
  {
    MEMORY[0x223DF1D00](a18, v20);
  }

  _Unwind_Resume(exception_object);
}

void TSSATScorer::setModelFile(TSSATScorer *this, const NString *a2)
{
  if (*(this + 295))
  {
    *(this + 296) = 0;
    v5 = (*(**(this + 1) + 16))(*(this + 1));
    v4 = 1;
    v2 = &unk_28370A720;
    v3 = 0;
    operator new[]();
  }

  Error::chuck("TSSATScorer::setModelFile() - init() not called", a2);
}

void sub_223A6F0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, v13);
  }

  _Unwind_Resume(exception_object);
}

void TSSATScorer::score(TSSATScorer *this, const float *a2, uint64_t a3)
{
  *(this + 297) = 0;
  if ((*(this + 296) & 1) == 0)
  {
    Error::chuck("TSSATScorer::score() - setModelFile() not called", a2);
  }

  v4 = *(this + 66);
  if (v4 != a3)
  {
    Error::chuck("TSSATScorer::score() - supervector size (%d) does not match scorer input size (%d)", a2, a3, v4);
  }

  if (!a2)
  {
    Error::chuck("TSSATScorer::score() - NULL supervector pointer", 0);
  }

  v5 = *(this + 67);
  v6 = *(this + 58);
  v7 = *(this + 68);
  if (v6 != v7)
  {
    v8 = *(this + 28);
    if (v8)
    {
      MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
      v7 = *(this + 68);
    }

    *(this + 58) = v7;
    operator new[]();
  }

  if (v6)
  {
    v9 = *(this + 28);
    v10 = v6;
    if (v6 < 8 || (v9 - a2 - 4 * v5) < 0x20)
    {
      v11 = 0;
LABEL_12:
      v12 = v10 - v11;
      v13 = v11;
      v14 = (v9 + v13 * 4);
      v15 = &a2[v5 + v13];
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
      goto LABEL_14;
    }

    v11 = v6 & 0xFFFFFFF8;
    v21 = (v9 + 16);
    v22 = &a2[v5 + 4];
    v23 = v10 & 0xFFFFFFF8;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      v21 += 2;
      v22 += 8;
      v23 -= 8;
    }

    while (v23);
    if (v11 != v10)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  if (*(this + 293) != 1)
  {
    goto LABEL_35;
  }

  v17 = *(this + 58);
  if (!v17)
  {
    goto LABEL_35;
  }

  v18 = *(this + 28);
  if (v17 > 7)
  {
    v19 = v17 & 0xFFFFFFF8;
    v25 = v18 + 1;
    v20 = 0.0;
    v26 = v19;
    do
    {
      v27 = vmulq_f32(v25[-1], v25[-1]);
      v28 = vmulq_f32(*v25, *v25);
      v20 = (((((((v20 + v27.f32[0]) + v27.f32[1]) + v27.f32[2]) + v27.f32[3]) + v28.f32[0]) + v28.f32[1]) + v28.f32[2]) + v28.f32[3];
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v19 == v17)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
  }

  v29 = v17 - v19;
  v30 = &v18->f32[v19];
  do
  {
    v31 = *v30++;
    v20 = v20 + (v31 * v31);
    --v29;
  }

  while (v29);
LABEL_27:
  if (v20 <= 0.0)
  {
    goto LABEL_35;
  }

  v32 = sqrtf(v17 / v20);
  if (v17 < 8)
  {
    v33 = 0;
LABEL_33:
    v37 = v17 - v33;
    v38 = &v18->f32[v33];
    do
    {
      *v38 = v32 * *v38;
      ++v38;
      --v37;
    }

    while (v37);
    goto LABEL_35;
  }

  v33 = v17 & 0xFFFFFFF8;
  v34 = v18 + 1;
  v35 = v33;
  do
  {
    v36 = vmulq_n_f32(*v34, v32);
    v34[-1] = vmulq_n_f32(v34[-1], v32);
    *v34 = v36;
    v34 += 2;
    v35 -= 8;
  }

  while (v35);
  if (v33 != v17)
  {
    goto LABEL_33;
  }

LABEL_35:
  (*(**(this + 1) + 72))(*(this + 1), this + 216, this + 240, 0);
  v39 = *(this + 64);
  if (!v39)
  {
    goto LABEL_51;
  }

  v40 = *(this + 31);
  if (v39 <= 7)
  {
    v41 = 0;
    v42 = 0.0;
LABEL_41:
    v47 = v39 - v41;
    v48 = &v40->f32[v41];
    do
    {
      v49 = *v48++;
      v42 = v42 + (v49 * v49);
      --v47;
    }

    while (v47);
    goto LABEL_43;
  }

  v41 = v39 & 0xFFFFFFF8;
  v43 = v40 + 1;
  v42 = 0.0;
  v44 = v41;
  do
  {
    v45 = vmulq_f32(v43[-1], v43[-1]);
    v46 = vmulq_f32(*v43, *v43);
    v42 = (((((((v42 + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3]) + v46.f32[0]) + v46.f32[1]) + v46.f32[2]) + v46.f32[3];
    v43 += 2;
    v44 -= 8;
  }

  while (v44);
  if (v41 != v39)
  {
    goto LABEL_41;
  }

LABEL_43:
  if (v42 <= 0.0)
  {
    goto LABEL_51;
  }

  v50 = sqrtf(v39 / v42);
  if (v39 < 8)
  {
    v51 = 0;
LABEL_49:
    v55 = v39 - v51;
    v56 = &v40->f32[v51];
    do
    {
      *v56 = v50 * *v56;
      ++v56;
      --v55;
    }

    while (v55);
    goto LABEL_51;
  }

  v51 = v39 & 0xFFFFFFF8;
  v52 = v40 + 1;
  v53 = v51;
  do
  {
    v54 = vmulq_n_f32(*v52, v50);
    v52[-1] = vmulq_n_f32(v52[-1], v50);
    *v52 = v54;
    v52 += 2;
    v53 -= 8;
  }

  while (v53);
  if (v51 != v39)
  {
    goto LABEL_49;
  }

LABEL_51:
  v57 = 1065353216;
  v58 = 0;
  if (*(this + 292) == 1)
  {
    NSATImpostor::score(this + 16, this + 240, &v58, &v57);
  }

  NSATSpeaker::score(this + 88, this + 240, &v58, &v57);
  *(this + 297) = 1;
}

void TSSATScorer::normaliseVector(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return;
  }

  v3 = *(a2 + 8);
  if (v2 > 7)
  {
    v4 = v2 & 0xFFFFFFF8;
    v6 = v3 + 1;
    v5 = 0.0;
    v7 = v4;
    do
    {
      v8 = vmulq_f32(v6[-1], v6[-1]);
      v9 = vmulq_f32(*v6, *v6);
      v5 = (((((((v5 + v8.f32[0]) + v8.f32[1]) + v8.f32[2]) + v8.f32[3]) + v9.f32[0]) + v9.f32[1]) + v9.f32[2]) + v9.f32[3];
      v6 += 2;
      v7 -= 8;
    }

    while (v7);
    if (v4 == v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
  }

  v10 = v2 - v4;
  v11 = &v3->f32[v4];
  do
  {
    v12 = *v11++;
    v5 = v5 + (v12 * v12);
    --v10;
  }

  while (v10);
LABEL_9:
  if (v5 <= 0.0)
  {
    return;
  }

  v13 = sqrtf(v2 / v5);
  if (v2 < 8)
  {
    v14 = 0;
LABEL_15:
    v18 = v2 - v14;
    v19 = &v3->f32[v14];
    do
    {
      *v19 = v13 * *v19;
      ++v19;
      --v18;
    }

    while (v18);
    return;
  }

  v14 = v2 & 0xFFFFFFF8;
  v15 = v3 + 1;
  v16 = v14;
  do
  {
    v17 = vmulq_n_f32(*v15, v13);
    v15[-1] = vmulq_n_f32(v15[-1], v13);
    *v15 = v17;
    v15 += 2;
    v16 -= 8;
  }

  while (v16);
  if (v14 != v2)
  {
    goto LABEL_15;
  }
}