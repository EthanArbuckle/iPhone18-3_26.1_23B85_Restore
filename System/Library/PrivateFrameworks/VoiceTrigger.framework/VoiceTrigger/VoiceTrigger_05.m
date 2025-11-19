uint64_t NArray<bnns_graph_argument_t>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

__n128 NArray<bnns_graph_argument_t>::fromArray(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x10A2C808DAD38D9);
      v5 = *a3;
    }

    *(a1 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      result = *(a2 + v8);
      *(*(a1 + 8) + v8) = result;
      ++v9;
      v8 += 16;
    }

    while (v9 < *(a1 + 16));
  }

  return result;
}

__n128 NArray<bnns_graph_argument_t>::operator=(uint64_t a1, uint64_t a2)
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
        MEMORY[0x223DF1D00](*(a1 + 8), 0x10A2C808DAD38D9);
        a1 = v5;
        v4 = *(a2 + 16);
      }

      *(a1 + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        result = *(*(a2 + 8) + v6);
        *(*(a1 + 8) + v6) = result;
        ++v7;
        v6 += 16;
      }

      while (v7 < *(a1 + 16));
    }
  }

  return result;
}

void NArray<bnns_graph_argument_t>::~NArray(void *a1)
{
  *a1 = &unk_283709C38;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x10A2C808DAD38D9);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<bnns_graph_argument_t>::~NArray(void *result)
{
  *result = &unk_283709C38;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x10A2C808DAD38D9);
    return v1;
  }

  return result;
}

void NBNNSIRDistribution::scoreAll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 156);
  if (v4)
  {
    if (*(a2 + 16) == v4)
    {
      v6 = (*(a1 + 152) * *(a1 + 164));
      if (*(a3 + 16) == v6)
      {
        if (a4)
        {
          v7 = *(a4 + 8);
        }

        else
        {
          if (*(a1 + 200) >= 3u)
          {
            Error::chuck("NBNNSIRDistribution::scoreAll() - state uninitialized", *(a1 + 16));
          }

          v7 = &v13;
        }

        *&v7[16 * *(a1 + 172)] = *(a2 + 8);
        v8 = *(a2 + 16);
        v9 = *(a1 + 172);
        *&v7[16 * *(a1 + 176)] = *(a3 + 8);
        *&v7[16 * v9 + 8] = 4 * v8;
        *&v7[16 * *(a1 + 176) + 8] = 4 * *(a3 + 16);
        BNNSGraphContextMake();
        if (*(a1 + 96))
        {
          v10 = BNNSGraphContextSetWeights();
          if (v10)
          {
            v11 = v10;
            BNNSGraphContextDestroy_v2();
            Error::chuck("NBNNSIRDistribution::scoreAll() - BNNSGraphContextSetWeights fails with error %d", v12, v11);
          }
        }

        operator new[]();
      }

      Error::chuck("NBNNSIRDistribution::scoreAll() - output (dist) vector has wrong size (%d, should be %d)", a2, *(a3 + 16), v6);
    }

    Error::chuck("NBNNSIRDistribution::scoreAll() - input vector has wrong size (%d, should be %d)", a2, *(a2 + 16), v4);
  }

  Error::chuck("NBNNSIRDistribution::scoreAll() - BNNSIR not loaded", a2);
}

void sub_223ADEAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a15)
  {
    _Unwind_Resume(exception_object);
  }

  MEMORY[0x223DF1D00](a15, v15);
  _Unwind_Resume(exception_object);
}

uint64_t NBNNSIRDistribution::scoreAll(NArray<float> const&,NArray<float>&,void *)const::$_0::__invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == 8 && a2 && a4)
  {
    result = *(a4 + 8);
    if (result)
    {
      return (*(*result + 40))();
    }
  }

  return result;
}

void NBNNSIRDistribution::read(NBNNSIRDistribution *this, const NString *a2)
{
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 42) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  v4 = *(this + 16);
  if (v4)
  {
    munmap(*(this + 9), v4);
  }

  *(this + 16) = 0;
  *(this + 9) = 0;
  LODWORD(v8[0]) = 0;
  (*(*(this + 4) + 64))(this + 32, "", v8);
  NLoadedMemory::load((this + 8), a2);
  v6 = *(this + 4);
  if (v6 >= 4 && **(this + 3) == -673472473)
  {
    v8[0] = *(this + 3);
    v8[1] = v6;
    BNNSGraphGetFunctionCount();
    if (BNNSGraphGetFunctionNames() != -1)
    {
      NBNNSIRDistribution::determineStateWiring(this, v8, 0, a2);
    }

    Error::chuck("NBNNSIRDistribution::read() - invalid bnnsir header or wrong version", v7);
  }

  Error::chuck("NBNNSIRDistribution::read() - missing cookie in %s", v5, *(a2 + 2));
}

void NBNNSIRDistribution::determineStateWiring(NBNNSIRDistribution *this, const void *a2, const char *a3, const NString *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = a2;
  InputCount = BNNSGraphGetInputCount();
  if (InputCount != -1)
  {
    v8 = InputCount;
    if (InputCount >= 0xFFFFFFFF80000000)
    {
      goto LABEL_27;
    }

    OutputCount = BNNSGraphGetOutputCount();
    if (OutputCount != -1)
    {
      v10 = OutputCount;
      if (OutputCount < 0xFFFFFFFF80000000)
      {
        v29 = this;
        if (v8 && v8 == OutputCount)
        {
          v28 = v8;
          MEMORY[0x28223BE20](OutputCount);
          v12 = v27 - ((v11 + 15) & 0xFFFFFFFF0);
          if (v11 >= 0x200)
          {
            v13 = 512;
          }

          else
          {
            v13 = v11;
          }

          bzero(v27 - ((v11 + 15) & 0xFFFFFFFF0), v13);
          v31 = v10;
          MEMORY[0x28223BE20](v14);
          if (v15 >= 0x200)
          {
            v16 = 512;
          }

          else
          {
            v16 = v15;
          }

          v30 = v27 - ((v15 + 15) & 0xFFFFFFFF0);
          bzero(v30, v16);
          v27[11] = v8;
          v27[12] = v12;
          if (!BNNSGraphGetInputNames_v2())
          {
            if (!BNNSGraphGetOutputNames_v2())
            {
              v19 = v29;
              v20 = 2 * v28;
              if (*(v29 + 50) != 2 * v28)
              {
                *(v29 + 50) = v20;
                operator new[]();
              }

              if (2 * v28)
              {
                v21 = 0;
                v22 = *(v29 + 24);
                do
                {
                  *(v22 + 4 * v21++) = -1;
                }

                while (v21 < *(v19 + 50));
              }

              if (*(v19 + 56) != v20)
              {
                *(v19 + 56) = v20;
                operator new[]();
              }

              if (v20)
              {
                v23 = 0;
                v24 = *(v19 + 27);
                do
                {
                  *(v24 + 4 * v23++) = 0;
                }

                while (v23 < *(v19 + 56));
              }

              v27[5] = &unk_283709BA8;
              v33 = &unk_283709BA8;
              operator new[]();
            }

            Error::chuck("NBNNSIRDistribution::read() - %s %s", v18, "BNNSGraphGetOutputNames failed", *(a4 + 2));
          }

          Error::chuck("NBNNSIRDistribution::read() - %s %s", v17, "BNNSGraphGetInputNames failed", *(a4 + 2));
        }

        v25 = *(a4 + 2);
        v26 = "Currently only support numinputs=numoutputs";
LABEL_29:
        Error::chuck("NBNNSIRDistribution::read() - %s %s", v7, v26, v25);
      }

LABEL_27:
      v25 = *(a4 + 2);
      v26 = "BNNSIR Sizes >= 2^31";
      goto LABEL_29;
    }
  }

  v25 = *(a4 + 2);
  v26 = "Invalid BNNSIR";
  goto LABEL_29;
}

void sub_223ADFF20(_Unwind_Exception *exception_object)
{
  v1[49] = &unk_28370A720;
  v4 = v1[51];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8077774924);
  }

  v1[52] = v1[19];
  v5 = v1[54];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }

  *(v2 - 120) = v1[5];
  v6 = *(v2 - 112);
  if (!v6)
  {
    _Unwind_Resume(exception_object);
  }

  MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  _Unwind_Resume(exception_object);
}

uint64_t NArray<unsigned long>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<unsigned long>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8000313F17);
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

uint64_t NArray<unsigned long>::operator=(uint64_t result, uint64_t a2)
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
        MEMORY[0x223DF1D00](*(result + 8), 0x1000C8000313F17);
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

void NArray<unsigned long>::~NArray(void *a1)
{
  *a1 = &unk_283709BF0;
  if (a1[1])
  {
    MEMORY[0x223DF1D00](a1[1], 0x1000C8000313F17);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<unsigned long>::~NArray(void *result)
{
  *result = &unk_283709BF0;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x1000C8000313F17);
    return v1;
  }

  return result;
}

void NBNNSIRDistribution::~NBNNSIRDistribution(NBNNSIRDistribution *this)
{
  NBNNSIRDistribution::~NBNNSIRDistribution(this);

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283709A80;
  *(this + 4) = 0;
  *(this + 3) = 0;
  v2 = *(this + 16);
  if (v2)
  {
    munmap(*(this + 9), v2);
  }

  *(this + 16) = 0;
  *(this + 9) = 0;
  v6 = 0;
  (*(*(this + 4) + 64))(this + 32, "", &v6);
  *(this + 22) = 0;
  *(this + 12) = 0;
  v3 = *(this + 34);
  if (v3)
  {
    munmap(*(this + 18), v3);
  }

  *(this + 34) = 0;
  *(this + 18) = 0;
  v7 = 0;
  (*(*(this + 13) + 64))(this + 104, "", &v7);
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 42) = 0;
  *(this + 26) = off_283709B60;
  v4 = *(this + 27);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 23) = off_283709B60;
  v5 = *(this + 24);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  NLoadedMemory::~NLoadedMemory((this + 80));
  NLoadedMemory::~NLoadedMemory((this + 8));
}

void NBNNSIRDistribution::NBNNSIRDistribution(NBNNSIRDistribution *this)
{
  *this = &unk_283709A80;
  *(this + 1) = &unk_28370AA10;
  *(this + 4) = 0;
  v2 = this + 32;
  *(this + 3) = 0;
  *(this + 4) = &unk_283709C80;
  *(this + 14) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v3, 1, *(this + 14));
  }

  v4 = memptr;
  *(this + 10) = 0;
  *(this + 6) = v4;
  *(this + 4) = &unk_283709C80;
  *v4 = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = &unk_28370AA10;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = &unk_283709C80;
  *(this + 32) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v5, 1, *(this + 32));
  }

  v6 = memptr;
  *(this + 28) = 0;
  *(this + 15) = v6;
  *(this + 13) = &unk_283709C80;
  *v6 = 0;
  *(this + 34) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 44) = 0;
  *(this + 23) = off_283709B60;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 26) = off_283709B60;
  *(this + 27) = 0;
  *(this + 56) = 0;
  v7 = getpagesize();
  if (v7 <= 0)
  {
    Error::chuck("NBNNSIRDistribution::NBNNSIRDistribution() - cannot determine page size for allocation", v8);
  }

  v9 = v7;
  *(this + 14) = v7;
  v10 = v7;
  if (*(this + 6) % v7)
  {
    LODWORD(memptr) = *(this + 10);
    (*(*(this + 4) + 64))(v2);
  }

  *(this + 32) = v9;
  if (*(this + 15) % v10)
  {
    LODWORD(memptr) = *(this + 28);
    (*(*(this + 13) + 64))(this + 104);
  }
}

void sub_223AE0970(_Unwind_Exception *a1)
{
  v2[26] = v5;
  v7 = v2[27];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8052888210);
  }

  v2[23] = v4;
  v8 = v2[24];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
  }

  NLoadedMemory::~NLoadedMemory(v3);
  NLoadedMemory::~NLoadedMemory(v1);
  _Unwind_Resume(a1);
}

uint64_t NBNNSIRDistribution::reset(NBNNSIRDistribution *this)
{
  *(this + 4) = 0;
  *(this + 3) = 0;
  v2 = *(this + 16);
  if (v2)
  {
    munmap(*(this + 9), v2);
  }

  *(this + 16) = 0;
  *(this + 9) = 0;
  v7 = 0;
  (*(*(this + 4) + 64))(this + 32, "", &v7);
  *(this + 22) = 0;
  *(this + 12) = 0;
  v3 = *(this + 34);
  if (v3)
  {
    munmap(*(this + 18), v3);
  }

  *(this + 34) = 0;
  *(this + 18) = 0;
  v8 = 0;
  v5 = *(this + 13);
  v4 = this + 104;
  result = (*(v5 + 64))(v4, "", &v8);
  *(v4 + 6) = 0;
  *(v4 + 14) = 0;
  *(v4 + 16) = 0;
  return result;
}

uint64_t NBNNSIRDistribution::setWeightsFile(NBNNSIRDistribution *this, const NString *a2)
{
  if (*(a2 + 2))
  {
    v4 = (this + 80);

    return NLoadedMemory::load(v4, a2);
  }

  else
  {
    v9 = v2;
    v10 = v3;
    *(this + 22) = 0;
    *(this + 12) = 0;
    v6 = *(this + 34);
    if (v6)
    {
      v7 = this;
      munmap(*(this + 18), v6);
      this = v7;
    }

    *(this + 34) = 0;
    *(this + 18) = 0;
    v8 = 0;
    return (*(*(this + 13) + 64))();
  }
}

uint64_t NBNNSIRDistribution::flipStateOutputsToInputs(uint64_t this, void *a2)
{
  if (a2)
  {
    v2 = *(this + 200);
    if (v2)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(*(this + 192) + v4);
        if (v5 < v2)
        {
          v6 = a2[1];
          v7 = *(v6 + v3);
          v8 = 16 * v5;
          *(v6 + v3) = *(v6 + v8);
          *(a2[1] + v8) = v7;
        }

        v4 += 4;
        v3 += 16;
      }

      while (4 * v2 != v4);
    }
  }

  return this;
}

void sub_223AE2C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_223AE3C28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    a9 = 0;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "recognizeWavData failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223AE3C18);
}

void sub_223AE3E50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    a9 = 0;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "endAudio failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223AE3E40);
}

void sub_223AE3FAC(void *a1)
{
  __cxa_begin_catch(a1);
  v1 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 0;
    _os_log_impl(&dword_223A31000, v1, OS_LOG_TYPE_DEFAULT, "runRecognition failed", &v2, 2u);
  }

  __cxa_end_catch();
}

uint64_t N16ByteAlignedString::allocate2(N16ByteAlignedString *this, const unsigned int *a2, const unsigned int *a3)
{
  if (*a3)
  {
    *(this + 6) = *a3;
  }

  return (**this)(this, a2);
}

void N16ByteAlignedString::~N16ByteAlignedString(void **this)
{
  *this = &unk_283709C80;
  free(this[2]);
  this[2] = 0;
  *this = &unk_28370A720;

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283709C80;
  free(this[2]);
  this[2] = 0;
  *this = &unk_28370A720;
}

{
  *this = &unk_283709C80;
  free(this[2]);
  this[2] = 0;
  *this = &unk_28370A720;
}

void N16ByteAlignedString::N16ByteAlignedString(N16ByteAlignedString *this)
{
  *this = &unk_283709C80;
  *(this + 6) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v2, 1, *(this + 6));
  }

  v3 = memptr;
  *(this + 2) = 0;
  *(this + 2) = v3;
  *this = &unk_283709C80;
  *v3 = 0;
}

{
  *this = &unk_283709C80;
  *(this + 6) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v2, 1, *(this + 6));
  }

  v3 = memptr;
  *(this + 2) = 0;
  *(this + 2) = v3;
  *this = &unk_283709C80;
  *v3 = 0;
}

void N16ByteAlignedString::N16ByteAlignedString(N16ByteAlignedString *this, const N16ByteAlignedString *a2)
{
  *this = &unk_283709C80;
  v7 = *(a2 + 2);
  v4 = *(a2 + 6);
  if (v4)
  {
    *(this + 6) = v4;
  }

  v5 = N16ByteAlignedString::allocate(this, &v7);
  v6 = *(a2 + 2);
  *(this + 2) = v6;
  *(this + 2) = v5;
  *this = &unk_283709C80;
  memcpy(v5, *(a2 + 2), (v6 + 1));
}

{
  *this = &unk_283709C80;
  v7 = *(a2 + 2);
  v4 = *(a2 + 6);
  if (v4)
  {
    *(this + 6) = v4;
  }

  v5 = N16ByteAlignedString::allocate(this, &v7);
  v6 = *(a2 + 2);
  *(this + 2) = v6;
  *(this + 2) = v5;
  *this = &unk_283709C80;
  memcpy(v5, *(a2 + 2), (v6 + 1));
}

void N16ByteAlignedString::N16ByteAlignedString(N16ByteAlignedString *this, const NString *a2)
{
  *this = &unk_283709C80;
  v6 = *(a2 + 2);
  *(this + 6) = 16;
  v4 = N16ByteAlignedString::allocate(this, &v6);
  v5 = *(a2 + 2);
  *(this + 2) = v5;
  *(this + 2) = v4;
  *this = &unk_283709C80;
  memcpy(v4, *(a2 + 2), (v5 + 1));
}

{
  *this = &unk_283709C80;
  v6 = *(a2 + 2);
  *(this + 6) = 16;
  v4 = N16ByteAlignedString::allocate(this, &v6);
  v5 = *(a2 + 2);
  *(this + 2) = v5;
  *(this + 2) = v4;
  *this = &unk_283709C80;
  memcpy(v4, *(a2 + 2), (v5 + 1));
}

void N16ByteAlignedString::N16ByteAlignedString(N16ByteAlignedString *this, const char *__s)
{
  *(this + 2) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_283709C80;
  if (!__s)
  {
    Error::chuck("Null pointer passed to string constructor", 0);
  }

  *(this + 2) = strlen(__s);
  *(this + 6) = 16;
  v5 = N16ByteAlignedString::allocate(this, v3);
  *(this + 2) = v5;
  memcpy(v5, __s, (*(this + 2) + 1));
}

{
  *(this + 2) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_283709C80;
  if (!__s)
  {
    Error::chuck("Null pointer passed to string constructor", 0);
  }

  *(this + 2) = strlen(__s);
  *(this + 6) = 16;
  v5 = N16ByteAlignedString::allocate(this, v3);
  *(this + 2) = v5;
  memcpy(v5, __s, (*(this + 2) + 1));
}

void sub_223AE4A84(_Unwind_Exception *exception_object)
{
  *v1 = &unk_28370A720;
  v3 = v1[2];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AE4B6C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_28370A720;
  v3 = v1[2];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void N16ByteAlignedString::N16ByteAlignedString(N16ByteAlignedString *this, const char *a2, const unsigned int *a3)
{
  *(this + 2) = 0;
  v5 = this + 8;
  *(this + 2) = 0;
  *this = &unk_283709C80;
  if (!a2)
  {
    Error::chuck("Null pointer passed to string constructor", v5, a3);
  }

  *(this + 2) = *a3;
  *(this + 6) = 16;
  v7 = N16ByteAlignedString::allocate(this, v5);
  *(this + 2) = v7;
  memcpy(v7, a2, *a3);
  *(*(this + 2) + *(this + 2)) = 0;
}

{
  *(this + 2) = 0;
  v5 = this + 8;
  *(this + 2) = 0;
  *this = &unk_283709C80;
  if (!a2)
  {
    Error::chuck("Null pointer passed to string constructor", v5, a3);
  }

  *(this + 2) = *a3;
  *(this + 6) = 16;
  v7 = N16ByteAlignedString::allocate(this, v5);
  *(this + 2) = v7;
  memcpy(v7, a2, *a3);
  *(*(this + 2) + *(this + 2)) = 0;
}

{
  *this = &unk_283709C80;
  *(this + 6) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, *a3 + 1, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v6, *a3 + 1, *(this + 6));
  }

  v7 = memptr;
  v8 = *a3;
  *(this + 2) = v8;
  *(this + 2) = v7;
  *this = &unk_283709C80;
  memset(v7, *a2, v8);
  *(*(this + 2) + *(this + 2)) = 0;
}

{
  *this = &unk_283709C80;
  *(this + 6) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, *a3 + 1, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v6, *a3 + 1, *(this + 6));
  }

  v7 = memptr;
  v8 = *a3;
  *(this + 2) = v8;
  *(this + 2) = v7;
  *this = &unk_283709C80;
  memset(v7, *a2, v8);
  *(*(this + 2) + *(this + 2)) = 0;
}

void sub_223AE4C58(_Unwind_Exception *exception_object)
{
  *v1 = &unk_28370A720;
  v3 = v1[2];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AE4D44(_Unwind_Exception *exception_object)
{
  *v1 = &unk_28370A720;
  v3 = v1[2];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t N16ByteAlignedString::setAlignment(uint64_t this, unsigned int *a2)
{
  v4 = *a2;
  if (*a2)
  {
    *(this + 24) = v4;
  }

  else
  {
    v4 = *(this + 24);
  }

  if (*(this + 16) % v4)
  {
    v6 = v2;
    v7 = v3;
    v5 = *(this + 8);
    return (*(*this + 64))(this);
  }

  return this;
}

uint64_t __Block_byref_object_copy__4556(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223AEB5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223AECBF0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_223AECEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 3)
  {
    v10 = __cxa_begin_catch(exception_object);
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*v10 + 16);
      v17 = v11;
      v18 = v16(v10);
      LODWORD(a9) = 136446210;
      *(&a9 + 4) = v18;
      _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "%{public}s", &a9, 0xCu);
    }
  }

  else
  {
    v12 = __cxa_begin_catch(exception_object);
    v13 = VTLogContextFacilityVoiceTrigger;
    if (a2 == 2)
    {
      v14 = v12;
      v15 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = v14[2];
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v19;
        _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, "%{public}s", &a9, 0xCu);
      }

      __cxa_end_catch();
LABEL_14:
      JUMPOUT(0x223AECE74);
    }

    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(a9) = 0;
      _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "unknown reason", &a9, 2u);
    }
  }

  __cxa_end_catch();
  goto LABEL_14;
}

void sub_223AED270(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_223AED914(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v12 = __cxa_begin_catch(a1);
      v13 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*v12 + 16);
        v15 = v13;
        v16 = v14(v12);
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v16;
        _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, "Could not get SAT vector count : %{public}s", &buf, 0xCu);
      }
    }

    else
    {
      v17 = __cxa_begin_catch(a1);
      v18 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v19 = v17;
        v20 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v19[2];
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v21;
          _os_log_error_impl(&dword_223A31000, v20, OS_LOG_TYPE_ERROR, "Could not get SAT vector count : %{public}s", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not get SAT vector count : unknown reason", &buf, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AED8C8);
  }

  _Unwind_Resume(a1);
}

void sub_223AEDAD4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not delete SAT vector : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not delete SAT vector  : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not delete SAT vector  : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEDAA4);
  }

  _Unwind_Resume(a1);
}

void sub_223AEDC94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not get score of super vector : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not get score of super vector : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not get score of super vector : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEDC64);
  }

  _Unwind_Resume(a1);
}

void sub_223AEDE50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not update sat : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not update sat : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not update sat : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEDE20);
  }

  _Unwind_Resume(a1);
}

void sub_223AEE270(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not get super vector : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not get super vector : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not get super vector : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEE240);
  }

  _Unwind_Resume(a1);
}

void sub_223AEE464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 3)
  {
    v10 = __cxa_begin_catch(exception_object);
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*v10 + 16);
      v17 = v11;
      v18 = v16(v10);
      LODWORD(a9) = 136446210;
      *(&a9 + 4) = v18;
      _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "Could not intialize SAT : %{public}s", &a9, 0xCu);
    }
  }

  else
  {
    v12 = __cxa_begin_catch(exception_object);
    v13 = VTLogContextFacilityVoiceTrigger;
    if (a2 == 2)
    {
      v14 = v12;
      v15 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = v14[2];
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v19;
        _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, "Could not intialize SAT : %{public}s", &a9, 0xCu);
      }

      __cxa_end_catch();
LABEL_14:
      JUMPOUT(0x223AEE428);
    }

    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(a9) = 0;
      _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not intialize SAT : unknown reason", &a9, 2u);
    }
  }

  __cxa_end_catch();
  goto LABEL_14;
}

void sub_223AEE8C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not analize wavdata : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not analize wavdata : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not analize wavdata : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEE898);
  }

  _Unwind_Resume(a1);
}

void sub_223AEEA8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not analyze wavdata : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not analyze wavdata : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not analyze wavdata : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEEA5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_223AEEC44(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not resetbest NDAPI : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not resetbest NDAPI : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not resetbest NDAPI : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEEC14);
  }

  _Unwind_Resume(a1);
}

void sub_223AEEDFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = __cxa_begin_catch(a1);
      v11 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*v10 + 16);
        v13 = v11;
        v14 = v12(v10);
        LODWORD(a9) = 136446210;
        *(&a9 + 4) = v14;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Could not reset NDAPI : %{public}s", &a9, 0xCu);
      }
    }

    else
    {
      v15 = __cxa_begin_catch(a1);
      v16 = VTLogContextFacilityVoiceTrigger;
      if (a2 == 2)
      {
        v17 = v15;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v17[2];
          LODWORD(a9) = 136446210;
          *(&a9 + 4) = v19;
          _os_log_error_impl(&dword_223A31000, v18, OS_LOG_TYPE_ERROR, "Could not reset NDAPI : %{public}s", &a9, 0xCu);
        }
      }

      else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a9) = 0;
        _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Could not reset NDAPI : unknown reason", &a9, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x223AEEDCCLL);
  }

  _Unwind_Resume(a1);
}

void NConfigSection::NConfigSection(NConfigSection *this, const NString *a2)
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

void sub_223AEF744(_Unwind_Exception *a1)
{
  NArray<NLinkedList<NMap<NString,NString>::HashItem>>::~NArray(v4);
  *v2 = v3;
  v6 = v2[2];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v1);
  }

  _Unwind_Resume(a1);
}

void sub_223AEF854(_Unwind_Exception *a1)
{
  NArray<NLinkedList<NMap<NString,NString>::HashItem>>::~NArray(v4);
  *v2 = v3;
  v6 = v2[2];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v1);
  }

  _Unwind_Resume(a1);
}

void *NMap<NString,NConfigSection>::HashItem::~HashItem(void *a1)
{
  a1[6] = &unk_28370A040;
  a1[7] = &unk_28370A0D0;
  v2 = a1[8];
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

  a1[3] = &unk_28370A720;
  v7 = a1[5];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  *a1 = &unk_28370A720;
  v8 = a1[2];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
  }

  return a1;
}

void NHash<NMap<NString,NConfigSection>::HashItem>::~NHash(void *a1)
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

void *NHash<NMap<NString,NConfigSection>::HashItem>::~NHash(void *result)
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

void AccelFFT::~AccelFFT(vDSP_DFT_SetupStruct **this)
{
  v2 = *this;
  if (v2)
  {
    vDSP_DFT_DestroySetup(v2);
  }

  this[3] = off_28370A538;
  v3 = this[4];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }
}

{
  v2 = *this;
  if (v2)
  {
    vDSP_DFT_DestroySetup(v2);
  }

  this[3] = off_28370A538;
  v3 = this[4];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }
}

void AccelFFT::zeroPadData(uint64_t a1, uint64_t a2)
{
  memcpy(*(a1 + 32), *(a2 + 8), 4 * *(a1 + 16));
  v3 = *(a1 + 16);
  v4 = (*(a1 + 32) + 4 * v3);
  v5 = 4 * (*(a1 + 12) - v3);

  bzero(v4, v5);
}

void Error::error(Error *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  vfprintf(*v3, this, va);
  fputc(10, *v3);
  exit(1);
}

uint64_t Error::warning(Error *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = MEMORY[0x277D85DF8];
  fwrite("WARNING: ", 9uLL, 1uLL, *MEMORY[0x277D85DF8]);
  vfprintf(*v3, this, va);
  return fputc(10, *v3);
}

BOOL sanity_check_hmms(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v3 = *(a1 + 4) < -1;
  if (a3 < 4)
  {
    return 0;
  }

  v6 = (a2 + 1);
  v5 = *a2;
  result = *a2 == 0;
  if (*a2)
  {
    v7 = (8 * v3) | 4;
    v8 = a2 + a3;
    if (&v6[v7] <= v8)
    {
      v9 = 8 * v3;
      v10 = 1;
      while (1)
      {
        v6 += 8 * *&v6[v9] + v9 + 4;
        if (v6 > v8)
        {
          break;
        }

        result = v10 >= v5;
        if (v10 < v5)
        {
          ++v10;
          if (&v6[v7] <= v8)
          {
            continue;
          }
        }

        return result;
      }

      return 0;
    }
  }

  return result;
}

uint64_t nde_process(uint64_t a1, const char *a2, signed int a3, char *a4, uint64_t a5)
{
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (gHasValidModel == 1)
  {
    v5 = a1 == 0;
    if (gIsMultiInstance)
    {
      v6 = a1;
      result = 0xFFFFFFFFLL;
      if (!a5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = a1;
      if (a1)
      {
        v9 = gpNovDetect == a1;
      }

      else
      {
        v9 = 0;
      }

      v5 = !v9;
      result = 0xFFFFFFFFLL;
      if (!a5)
      {
        goto LABEL_8;
      }
    }

    if (a2 && (a3 & 0x80000000) == 0 && !v5)
    {
      v10 = a4;
      v11 = 0;
      result = IntNovDetectE::process(v6, a2, a3, &v11 + 1, &v11, a5);
      v8 = v11;
      if (v11 == 1)
      {
        a4 = v10;
        goto LABEL_9;
      }

      a4 = v10;
      if ((v11 & 0x100) != 0)
      {
        v8 = 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    result = 0;
  }

LABEL_8:
  v8 = 0;
LABEL_9:
  *a4 = v8;
  return result;
}

uint64_t nde_process_v2(uint64_t a1, const char *a2, signed int a3, int *a4, uint64_t a5)
{
  if (gHasValidModel != 1)
  {
    return 0;
  }

  v7 = a1 == 0;
  if ((gIsMultiInstance & 1) == 0)
  {
    if (a1)
    {
      v8 = gpNovDetect == a1;
    }

    else
    {
      v8 = 0;
    }

    v7 = !v8;
  }

  v9 = 0xFFFFFFFFLL;
  if (a5 && a4 && a2 && (a3 & 0x80000000) == 0 && !v7)
  {
    v14 = v5;
    v15 = v6;
    v13 = 0;
    v9 = IntNovDetectE::process(a1, a2, a3, &v13 + 1, &v13, a5);
    v11 = HIBYTE(v13);
    *a4 = HIBYTE(v13);
    if (v13 == 1)
    {
      *a4 = v11 | 2;
    }
  }

  return v9;
}

uint64_t nde_processframe(uint64_t a1, float32x4_t *a2, unsigned int a3, _BYTE *a4, uint64_t a5)
{
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  if (gHasValidModel == 1)
  {
    v5 = a1 == 0;
    if ((gIsMultiInstance & 1) == 0)
    {
      if (a1)
      {
        v6 = gpNovDetect == a1;
      }

      else
      {
        v6 = 0;
      }

      v5 = !v6;
    }

    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    if (a5 && a2 && (a3 & 0x80000000) == 0 && !v5)
    {
      v9 = a4;
      v10 = IntNovDetectE::processframe(a1, a2, a3, &v13, &v12, a5);
      a4 = v9;
      v8 = v10;
      v7 = v13;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a4 = v7;
  return v8;
}

uint64_t nde_processframe_v2(uint64_t a1, float32x4_t *a2, unsigned int a3, int *a4, uint64_t a5)
{
  v5 = 0;
  v11 = 0;
  if (gHasValidModel == 1)
  {
    v6 = a1 == 0;
    if ((gIsMultiInstance & 1) == 0)
    {
      if (a1)
      {
        v7 = gpNovDetect == a1;
      }

      else
      {
        v7 = 0;
      }

      v6 = !v7;
    }

    v5 = 0xFFFFFFFFLL;
    if (a5)
    {
      if (a4)
      {
        if (a2)
        {
          if ((a3 & 0x80000000) == 0 && !v6)
          {
            v5 = IntNovDetectE::processframe(a1, a2, a3, &v11 + 1, &v11, a5);
            v9 = HIBYTE(v11);
            *a4 = HIBYTE(v11);
            if (v11 == 1)
            {
              *a4 = v9 | 2;
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t nde_getchecksum(uint64_t a1, _DWORD *a2)
{
  if (gIsMultiInstance)
  {
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_7:
    result = 0;
    *a2 = *(a1 + 1096);
    return result;
  }

  result = 0xFFFFFFFFLL;
  if (a1 && gpNovDetect == a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t nde_reset(IntNovDetectE *a1)
{
  if (gHasValidModel != 1)
  {
    return 0;
  }

  if ((gIsMultiInstance & 1) == 0)
  {
    if (!a1 || gpNovDetect != a1)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_8:
    IntNovDetectE::reset(a1);
    return 0;
  }

  if (a1)
  {
    goto LABEL_8;
  }

  return 0xFFFFFFFFLL;
}

uint64_t nde_enable_multiinstance()
{
  gpNovDetect = 0;
  gHasValidModel = 1;
  gIsMultiInstance = 1;
  return 0;
}

uint64_t NFile::getPosition(NFile *this)
{
  v5[17] = *MEMORY[0x277D85DE8];
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NFile::getPosition() - cannot get position, file %s is not open", v2, *(this + 3));
  }

  if (*(this + 156))
  {
    v3 = this + *(*(this + 7) - 24) + 56;
    if ((v3[32] & 5) != 0)
    {
      return -1;
    }

    (*(**(v3 + 5) + 32))(v5);
  }

  else
  {
    std::istream::tellg();
  }

  return v5[16];
}

uint64_t NFile::setPosition(NFile *this, const unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NFile::setPosition() - cannot set position, file %s is not open", v4, *(this + 3));
  }

  v5 = *(this + 156);
  if (*a2 == -1)
  {
    if (v5)
    {
      v6 = (this + 56);
      MEMORY[0x223DF1C30](v11, this + 56);
      v8 = v6 + *(*v6 - 24);
      if ((v8[32] & 5) != 0)
      {
        goto LABEL_11;
      }

      (*(**(v8 + 5) + 32))(v12);
      if (v13 != -1)
      {
        goto LABEL_11;
      }

LABEL_10:
      std::ios_base::clear((v6 + *(*v6 - 24)), *(v6 + *(*v6 - 24) + 32) | 4);
LABEL_11:
      MEMORY[0x223DF1C40](v11);
      goto LABEL_13;
    }
  }

  else if (v5)
  {
    v6 = (this + 56);
    MEMORY[0x223DF1C30](v11, this + 56);
    v7 = v6 + *(*v6 - 24);
    if ((v7[32] & 5) != 0)
    {
      goto LABEL_11;
    }

    (*(**(v7 + 5) + 32))(v12);
    if (v13 != -1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  std::istream::seekg();
LABEL_13:
  if (*(this + *(*(this + 5) - 24) + 72))
  {
    Error::chuck("NFile::setPosition() - problem with stream, file %s", v9, *(this + 3));
  }

  return 1;
}

void sub_223AF3360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x223DF1C40](va);
  _Unwind_Resume(a1);
}

uint64_t NFile::write(NFile *this, const NString *a2)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NFile::write() cannot write, file %s is not open", v3, *(this + 3));
  }

  if (!*(this + 156))
  {
    Error::chuck("NFile::write() cannot write, file %s opened in read mode", v3, *(this + 3));
  }

  return std::ostream::write();
}

void NFile::readString(NFile *this)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 156))
    {
      std::istream::read();
      if (*(this + 6) == 4)
      {
        operator new[]();
      }

      Error::chuck("NFile::readString() - failed to read length for embedded binary string in %s", v3, *(this + 3));
    }

    Error::chuck("NFile::readString() - cannot read, file %s not opened in read mode", v2, *(this + 3));
  }

  Error::chuck("NFile::readString() - cannot read, file %s is not open", v2, *(this + 3));
}

void sub_223AF3624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NFile::read(NFile *this, const unsigned int *a2, NString *a3)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NFile::read() - cannot read, file %s is not open", v6, *(this + 3));
  }

  if (*(this + 156))
  {
    Error::chuck("NFile::read() - cannot read, file %s not opened in read mode", v6, *(this + 3));
  }

  if (*a2 == -1)
  {
    Error::chuck("NFile::read() - attempting impossibly long read in file %s", v6, *(this + 3));
  }

  (*(*a3 + 56))(a3, a2);
  std::istream::read();
  v8 = *(this + 6);
  if (*a2 > v8)
  {
    v9 = *(a3 + 2);
    if (v9 >= v8)
    {
      if (*(a3 + 2))
      {
        operator new[]();
      }

      Error::chuck("Null pointer passed to string constructor", v7);
    }

    Error::chuck("Index %d outside of range [0,%d]", v7, *(this + 6), v9);
  }

  return *(a3 + 2);
}

void sub_223AF381C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

void NFile::read(NFile *this, const unsigned int *a2)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 156))
    {
      if (*a2 != -1)
      {
        operator new[]();
      }

      Error::chuck("NFile::read() - attempting impossibly long read in file %s", v4, *(this + 3));
    }

    Error::chuck("NFile::read() - cannot read, file %s not opened in read mode", v4, *(this + 3));
  }

  Error::chuck("NFile::read() - cannot read, file %s is not open", v4, *(this + 3));
}

void sub_223AF3A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x223DF1BC0](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x223DF1CE0](v1 + 54);

  JUMPOUT(0x223DF1D20);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x223DF1BC0](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x223DF1CE0);
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 52;
  MEMORY[0x223DF1BC0](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x223DF1CE0](v1);

  JUMPOUT(0x223DF1D20);
}

{
  MEMORY[0x223DF1BC0](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x223DF1CE0);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x223DF1BC0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x223DF1CE0](v1);

  JUMPOUT(0x223DF1D20);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x223DF1BC0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x223DF1CE0](v2);
  return a1;
}

uint64_t std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x223DF1BC0](a1 + 3);

  return std::iostream::~basic_iostream();
}

void NFile::NFile(NFile *this)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void sub_223AF4144(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x223DF1CE0](v5);
  *v2 = v3;
  v2[1] = v4;
  v7 = v2[3];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  _Unwind_Resume(a1);
}

void NDEFrameProc::NDEFrameProc(NDEFrameProc *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28370A4D8;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28370A4D8;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
}

float NDEFrameProc::init(NDEFrameProc *this, const unsigned int *a2, float *a3, float *a4, const BOOL *a5)
{
  if (*(this + 4) != *a2)
  {
    *(this + 4) = *a2;
    operator new[]();
  }

  *(this + 7) = *a3;
  *(this + 36) = *a5;
  result = *a4;
  *(this + 8) = *a4;
  *(this + 24) = 1;
  return result;
}

NDEFrameProc *NDEFrameProc::apply(NDEFrameProc *this, float32x4_t *a2, const unsigned int *a3)
{
  if ((*(this + 24) & 1) == 0)
  {
    Error::chuck("NDEFrameProc::doLog() - init() must be called first", a2, a3);
  }

  v4 = *a3;
  v5 = *(this + 4);
  if (v4 != v5)
  {
    Error::chuck("NDEFrameProc::doLog() - input frame size mismatch (%d != %d)", a2, *a3, v5);
  }

  if ((*(this + 36) & 1) == 0)
  {
    if (!v4)
    {
      return this;
    }

    v13 = (this + 28);
    v14 = *(this + 1);
    if (v4 > 0xB)
    {
      v15 = 0;
      v37 = v14->u64 + 4 * v4;
      v39 = v14 < this + 2 && v13 < v37;
      if ((v37 <= a2 || v14 >= &a2->f32[v4]) && !v39)
      {
        v15 = v4 & 0xFFFFFFF8;
        v41 = vld1q_dup_f32(v13);
        v42 = v14 + 1;
        v43 = a2 + 1;
        v44 = v15;
        do
        {
          v45 = vaddq_f32(*v43, v41);
          v42[-1] = vaddq_f32(v43[-1], v41);
          *v42 = v45;
          v42 += 2;
          v43 += 2;
          v44 -= 8;
        }

        while (v44);
        if (v15 == v4)
        {
          return this;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v4 - v15;
    v17 = v15;
    v18 = &v14->f32[v17];
    v19 = &a2->f32[v17];
    do
    {
      v20 = *v19++;
      *v18++ = v20 + *v13;
      --v16;
    }

    while (v16);
    return this;
  }

  if (!v4)
  {
    return this;
  }

  v6 = (this + 28);
  v7 = *(this + 1);
  if (v4 < 8)
  {
    v8 = 0;
LABEL_7:
    v9 = v4 - v8;
    v10 = (v7 + 4 * v8);
    v11 = &a2->f32[v8];
    do
    {
      v12 = *v11++;
      *v10++ = logf(v12 + *v6);
      --v9;
    }

    while (v9);
    return this;
  }

  v8 = 0;
  v22 = v7 + 4 * v4;
  v24 = v7 < this + 32 && v6 < v22;
  if (v22 > a2 && v7 < a2->u64 + 4 * v4)
  {
    goto LABEL_7;
  }

  if (v24)
  {
    goto LABEL_7;
  }

  v8 = v4 & 0xFFFFFFFC;
  v26 = vld1q_dup_f32(v6);
  v46 = v26;
  v27 = a2;
  v28 = a2;
  v29 = *(this + 1);
  v30 = v8;
  do
  {
    v31 = *v28;
    v28 += 4;
    v50 = vaddq_f32(v31, v46);
    v47 = logf(v50.f32[1]);
    *&v32 = logf(v50.f32[0]);
    *(&v32 + 1) = v47;
    v48 = v32;
    v33 = logf(v50.f32[2]);
    v34 = v48;
    *(&v34 + 2) = v33;
    v49 = v34;
    v35 = logf(v50.f32[3]);
    v36 = v49;
    *(&v36 + 3) = v35;
    *v29++ = v36;
    v30 -= 4;
  }

  while (v30);
  a2 = v27;
  if (v8 != v4)
  {
    goto LABEL_7;
  }

  return this;
}

void softLink_AnalyticsSendEventLazy(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v8 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getAnalyticsSendEventLazySymbolLoc_block_invoke;
    v4[3] = &unk_2784ED270;
    v4[4] = &v5;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v2(@"com.apple.voicetrigger", v1);
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2784ECCF0;
    v8 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
    if (CoreAnalyticsLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

BOOL gIsPrime(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 - 1 < 3)
  {
    return 1;
  }

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if (v1 < 9)
  {
    return 1;
  }

  v3 = 3;
  while (1)
  {
    result = v1 % v3 != 0;
    if (!(v1 % v3))
    {
      break;
    }

    v3 += 2;
    if (v3 * v3 > v1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t gNextPrime(const unsigned int *a1)
{
  result = *a1;
  if ((result - 1) >= 2)
  {
    v2 = result | 1;
    if ((result & 0xFFFFFFFE) >= 3)
    {
      while (v2 >= 9)
      {
        v3 = 3;
        while (v2 % v3)
        {
          v3 += 2;
          if (v3 * v3 > v2)
          {
            return v2;
          }
        }

        result = (v2 + 2);
        v4 = v2 + 1;
        v2 = result;
        if (v4 <= 2)
        {
          return result;
        }
      }
    }

    return v2;
  }

  return result;
}

uint64_t NOffsetFile::open(NOffsetFile *this, const NString *a2, const NString *a3, unsigned int *a4, const unsigned int *a5)
{
  v8 = *a4;
  *(this + 157) = *a4;
  v9 = *a5 + v8;
  *(this + 158) = v9;
  *(this + 159) = v9;
  NFile::open(this, a2, a3);
  result = NFile::setPosition(this, a4);
  if ((result & 1) == 0)
  {
    Error::chuck("NOffsetFile::open() - opened at invalid offset %d in %s\n", v11, *a4, *(a2 + 2));
  }

  *(this + 159) = *(this + 157);
  return result;
}

void sub_223AF840C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NOffsetFile::setPosition(NOffsetFile *this, const unsigned int *a2)
{
  v4 = *a2 + *(this + 157);
  if (v4 > *(this + 158))
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v9 = v4;
  result = NFile::setPosition(this, &v9);
  if (result)
  {
    v8 = *a2 + *(this + 157);
  }

  else
  {
    v8 = *(this + 158);
  }

  *(this + 159) = v8;
  return result;
}

uint64_t NOffsetFile::readString@<X0>(NOffsetFile *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(this + 159) + 4) > *(this + 158))
  {
    goto LABEL_8;
  }

  v9 = 4;
  (*(*this + 64))(&v10, this, &v9);
  if (v11 != 4)
  {
    v10 = &unk_28370A720;
    if (v12)
    {
      MEMORY[0x223DF1D00](v12, 0x1000C8077774924);
    }

LABEL_8:
    Error::chuck("NOffsetFile::readString() - cannot read length for embedded binary string in %s", a2, *(this + 3));
  }

  v13 = *v12;
  v5 = v13;
  v10 = &unk_28370A720;
  MEMORY[0x223DF1D00]();
  if ((v5 + *(this + 159)) > *(this + 158))
  {
    Error::chuck("NOffsetFile::readString() - cannot read embedded binary string in %s", v6, *(this + 3));
  }

  result = (*(*this + 64))(this, &v13);
  if (*(a3 + 8) != v13)
  {
    Error::chuck("NOffsetFile::readString() - failed to read embedded binary string in %s", v8, *(this + 3));
  }

  return result;
}

void sub_223AF8658(_Unwind_Exception *exception_object)
{
  *v1 = &unk_28370A720;
  v4 = v1[2];
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NOffsetFile::read(NOffsetFile *this, unsigned int *a2, NString *a3)
{
  v3 = *(this + 159);
  v4 = *(this + 158) - v3;
  if (*a2 < v4)
  {
    v4 = *a2;
  }

  v6 = v4;
  *(this + 159) = v4 + v3;
  return NFile::read(this, &v6, a3);
}

void NOffsetFile::read(NOffsetFile *this, unsigned int *a2)
{
  v2 = *(this + 159);
  v3 = *(this + 158) - v2;
  if (*a2 < v3)
  {
    v3 = *a2;
  }

  v4 = v3;
  *(this + 159) = v3 + v2;
  NFile::read(this, &v4);
}

void NOffsetFile::read(NOffsetFile *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 158);
  if (v4 != -1)
  {
    v6 = v2;
    v7 = v3;
    v5 = v4 - *(this + 159);
    *(this + 159) = v4;
    NFile::read(this, &v5);
  }

  *(this + 159) = -1;

  NFile::read(this, a2);
}

void NOffsetFile::~NOffsetFile(NOffsetFile *this)
{
  NFile::~NFile(this);

  JUMPOUT(0x223DF1D20);
}

void NOffsetFile::NOffsetFile(NOffsetFile *this)
{
  NFile::NFile(this);
}

{
  NFile::NFile(this);
}

void sub_223AF8F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v11 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    a9 = 0;
    _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "processAudioBuffer failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223AF8F10);
}

void sub_223AF9048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v11 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    a9 = 0;
    _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "processAudioBuffer failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223AF901CLL);
}

void sub_223AF9164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v12 = *(v10 + 1160);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    a9 = 0;
    _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "endAudio failed", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223AF913CLL);
}

uint64_t NScrambler::keystream(NScrambler *this)
{
  v1 = *(this + 24);
  *(this + 24) = *(this + 25) + v1;
  return v1;
}

void NScrambler::convert(const NString *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_28370A720;
  *(a2 + 8) = *(a1 + 2);
  operator new[]();
}

void NScrambler::scramble(NScrambler *this, const NString *a2)
{
  v2 = &unk_28370A720;
  v3 = *(a2 + 2);
  operator new[]();
}

void sub_223AF9D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void base64_encode(const NString *a1)
{
  v1 = *(a1 + 2);
  v2[0] = (v1 * 1.6);
  v4 = vcvtd_n_f64_u32(v1, 1uLL);
  NAutoString::NAutoString(&v3, v2, &v4);
}

void sub_223AFA220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v16);
  }

  if (a16)
  {
    MEMORY[0x223DF1D00](a16, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

NString *NString::replace(NString *this, const NString *a2, const NString *a3)
{
  (*(*this + 112))(v5);
  (*(*this + 32))(this, v5);
  v5[0] = &unk_28370A720;
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8077774924);
  }

  return this;
}

void sub_223AFB488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void NString::vprintf(NString *this, const char *a2, va_list a3)
{
  v5 = a3;
  v3 = &unk_28370A720;
  v4 = 0;
  operator new[]();
}

void sub_223AFB688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, v13);
  }

  _Unwind_Resume(exception_object);
}

NString *NString::printf(NString *this, const char *a2, ...)
{
  va_start(va, a2);
  (*(*this + 96))(this, a2, va);
  return this;
}

uint64_t NString::chomp(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = v1 - 1;
    if (!v2)
    {
      v3 = *(this + 16);
      if (*v3 != 10)
      {
        return this;
      }

LABEL_7:
      *v3 = 0;
      --*(this + 8);
      return this;
    }

    v4 = *(this + 16);
    if (*(v4 + v2) == 10)
    {
      *(v4 + v2) = 0;
      v5 = *(this + 8);
      *(this + 8) = v5 - 1;
      v3 = (*(this + 16) + (v5 - 2));
      if (*v3 == 13)
      {
        goto LABEL_7;
      }
    }
  }

  return this;
}

uint64_t NString::newAllocation(NString *this, const unsigned int *a2)
{
  if (*a2 != *(this + 2))
  {
    (*(*this + 8))(this, *(this + 2));
    v4 = (**this)(this, a2);
    *(this + 2) = v4;
    v5 = *a2;
    *(this + 2) = v5;
    *(v4 + v5) = 0;
  }

  return *(this + 2);
}

void NString::~NString(NString *this)
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

void NString::NString(NString *this)
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

void NString::NString(NString *this, const NString *a2)
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

void NString::NString(NString *this, const char *__s)
{
  *this = &unk_28370A720;
  if (__s)
  {
    *(this + 2) = strlen(__s);
    operator new[]();
  }

  Error::chuck("Null pointer passed to string constructor", 0);
}

{
  *this = &unk_28370A720;
  if (__s)
  {
    *(this + 2) = strlen(__s);
    operator new[]();
  }

  Error::chuck("Null pointer passed to string constructor", 0);
}

void NString::NString(NString *this, const char *a2, const unsigned int *a3)
{
  *this = &unk_28370A720;
  if (a2)
  {
    *(this + 2) = *a3;
    operator new[]();
  }

  Error::chuck("Null pointer passed to string constructor", 0, a3);
}

{
  *this = &unk_28370A720;
  if (a2)
  {
    *(this + 2) = *a3;
    operator new[]();
  }

  Error::chuck("Null pointer passed to string constructor", 0, a3);
}

{
  *this = &unk_28370A720;
  *(this + 2) = *a3;
  operator new[]();
}

{
  *this = &unk_28370A720;
  *(this + 2) = *a3;
  operator new[]();
}

void NString::NString(NString *this, const int *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_28370A720;
  if ((snprintf(__str, 0x80uLL, "%d", *a2) - 129) <= 0xFFFFFF7F)
  {
    Error::chuck("NString::NString: cannot convert int to string", v3);
  }

  *(this + 2) = strlen(__str);
  v4 = (**this)(this, this + 8);
  *(this + 2) = v4;
  memcpy(v4, __str, (*(this + 2) + 1));
}

{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_28370A720;
  if ((snprintf(__str, 0x80uLL, "%d", *a2) - 129) <= 0xFFFFFF7F)
  {
    Error::chuck("NString::NString: cannot convert int to string", v3);
  }

  *(this + 2) = strlen(__str);
  v4 = (**this)(this, this + 8);
  *(this + 2) = v4;
  memcpy(v4, __str, (*(this + 2) + 1));
}

void NString::NString(NString *this, const unsigned int *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_28370A720;
  if ((snprintf(__str, 0x80uLL, "%d", *a2) - 129) <= 0xFFFFFF7F)
  {
    Error::chuck("NString::NString: cannot convert int to string", v3);
  }

  *(this + 2) = strlen(__str);
  v4 = (**this)(this, this + 8);
  *(this + 2) = v4;
  memcpy(v4, __str, (*(this + 2) + 1));
}

{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_28370A720;
  if ((snprintf(__str, 0x80uLL, "%d", *a2) - 129) <= 0xFFFFFF7F)
  {
    Error::chuck("NString::NString: cannot convert int to string", v3);
  }

  *(this + 2) = strlen(__str);
  v4 = (**this)(this, this + 8);
  *(this + 2) = v4;
  memcpy(v4, __str, (*(this + 2) + 1));
}

void NString::NString(NString *this, const double *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_28370A720;
  if ((snprintf(__str, 0x200uLL, "%f", *a2) - 513) <= 0xFFFFFDFF)
  {
    Error::chuck("NString::NString: cannot convert double to string", v3);
  }

  *(this + 2) = strlen(__str);
  v4 = (**this)(this, this + 8);
  *(this + 2) = v4;
  memcpy(v4, __str, (*(this + 2) + 1));
}

{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_28370A720;
  if ((snprintf(__str, 0x200uLL, "%f", *a2) - 513) <= 0xFFFFFDFF)
  {
    Error::chuck("NString::NString: cannot convert double to string", v3);
  }

  *(this + 2) = strlen(__str);
  v4 = (**this)(this, this + 8);
  *(this + 2) = v4;
  memcpy(v4, __str, (*(this + 2) + 1));
}

uint64_t NString::operator[](uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  if (v4 >= v5)
  {
    Error::chuck("Index %d outside of range [0,%d]", a2, v4, v5 - 1, v2, v3);
  }

  return *(a1 + 16) + v4;
}

{
  v4 = *a2;
  v5 = *(a1 + 8);
  if (v4 >= v5)
  {
    Error::chuck("Index %d outside of range [0,%d]", a2, v4, v5 - 1, v2, v3);
  }

  return *(a1 + 16) + v4;
}

void NString::head(NString *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(this + 2);
  if (*a2 <= v5)
  {
    v6 = *(this + 2);
    *a3 = &unk_28370A720;
    if (v6)
    {
      *(a3 + 8) = v4;
      operator new[]();
    }

    Error::chuck("Null pointer passed to string constructor", a2);
  }

  Error::chuck("Index %d outside of range [0,%d]", a2, *a2, v5);
}

void NString::tail(NString *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(this + 2);
  if (v5 >= *a2)
  {
    v6 = *(this + 2);
    *a3 = &unk_28370A720;
    if (v6)
    {
      *(a3 + 8) = v5 - v4;
      operator new[]();
    }

    Error::chuck("Null pointer passed to string constructor", a2);
  }

  Error::chuck("Index %d outside of range [0,%d]", a2, *a2, v5);
}

void NString::cuttail(NString *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  v5 = v4 - *a2;
  if (v4 >= *a2)
  {
    v6 = *(this + 2);
    *a3 = &unk_28370A720;
    if (v6)
    {
      *(a3 + 8) = v5;
      operator new[]();
    }

    Error::chuck("Null pointer passed to string constructor", a2);
  }

  Error::chuck("Index %d outside of range [0,%d]", a2, (v4 - *a2), v4);
}

void NString::uppercase(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 0;
  operator new[]();
}

void sub_223AFC92C(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[2];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void NString::lowercase(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 0;
  operator new[]();
}

void sub_223AFCA90(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[2];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL NString::checkFloat(NString *this)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v3 = 0;
  strtod(*(this + 2), &v3);
  return v3 == (*(this + 2) + *(this + 2));
}

BOOL NString::checkInt(NString *this, const unsigned int *a2)
{
  if (!*(this + 2))
  {
    return 0;
  }

  __endptr = 0;
  strtol(*(this + 2), &__endptr, *a2);
  return __endptr == (*(this + 2) + *(this + 2));
}

BOOL NString::checkUint(NString *this, const unsigned int *a2)
{
  if (!*(this + 2))
  {
    return 0;
  }

  __endptr = 0;
  strtoul(*(this + 2), &__endptr, *a2);
  return __endptr == (*(this + 2) + *(this + 2));
}

BOOL NString::endswith(NString *this, const void **a2)
{
  v2 = *(this + 2);
  v3 = *(a2 + 2);
  return v2 >= v3 && memcmp((*(this + 2) + v2 - v3), a2[2], v3) == 0;
}

uint64_t NString::contains(NString *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6 - v4 + 1;
    if (v8 >= 1)
    {
      v9 = *__s;
      v10 = *(this + 2);
      v11 = v10;
      do
      {
        v12 = memchr(v11, v9, v8);
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = (v12 - v10);
        if (!memcmp(v12, __s, v5))
        {
          return v14;
        }

        v8 = v6 - v5 - v14;
        v11 = v13 + 1;
      }

      while (v8 > 0);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t NString::contains(NString *this, const NString *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(a2 + 2);
    if (v3)
    {
      v4 = v2 - v3 + 1;
      if (v4 >= 1)
      {
        v5 = *(a2 + 2);
        v6 = *v5;
        v7 = *(this + 2);
        v8 = v7;
        do
        {
          v9 = memchr(v8, v6, v4);
          if (!v9)
          {
            break;
          }

          v10 = v9;
          v11 = (v9 - v7);
          if (!memcmp(v9, v5, v3))
          {
            return v11;
          }

          v4 = v2 - v3 - v11;
          v8 = v10 + 1;
        }

        while (v4 > 0);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t NString::contains(NString *this, const char *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 2);
  v4 = memchr(v3, *a2, v2);
  if (v4)
  {
    return (v4 - v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t NString::containsafter(NString *this, const NString *a2, const unsigned int *a3)
{
  v3 = *a3;
  v4 = *(this + 2);
  if (v3 >= v4)
  {
    Error::chuck("Index %d outside of range [0,%d]", a2, *a3, v4 - 1);
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = v4 - (v3 + v5) + 1;
    if (v6 >= 1)
    {
      v7 = *(a2 + 2);
      v8 = *v7;
      v9 = *(this + 2);
      v10 = (v9 + v3);
      do
      {
        v11 = memchr(v10, v8, v6);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        v13 = (v11 - v9);
        if (!memcmp(v11, v7, v5))
        {
          return v13;
        }

        v6 = v4 - (v5 + v13);
        v10 = v12 + 1;
      }

      while (v6 > 0);
    }
  }

  return 0xFFFFFFFFLL;
}

void *operator<<(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

void *NString::split@<X0>(NString *this@<X0>, const NString *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_28370A7C0;
  *(a4 + 24) = 0;
  return NString::split(this, a4, a2, a3);
}

uint64_t NString::split(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a3;
  v6 = *(a1 + 16);
  v21 = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v9;
      v9 = *v6 == a3;
      if (v10 && *v6 != a3)
      {
        v21 = ++v8;
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  result = (*(*a2 + 32))(a2, &v21);
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(a1 + 16);
    do
    {
      if (v12 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v12;
      }

      for (i = v15; *i == v5; ++i)
      {
        if (v16 == ++v13)
        {
          return result;
        }
      }

      v18 = v12 - v13;
      if (v12 <= v13)
      {
        v15 = i;
      }

      else
      {
        v19 = 0;
        while (i[v19] != v5)
        {
          ++v13;
          ++v19;
          if (v12 == v13)
          {
            v15 = &i[v19];
            v13 = v12;
            if (!v18)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        v15 = &i[v19];
        if (!v19)
        {
          continue;
        }

LABEL_24:
        v20 = a2[1] + 24 * v14;
        result = (*(*v20 + 64))(v20);
        ++v14;
        v12 = *(a1 + 8);
      }

LABEL_25:
      ;
    }

    while (v13 < v12);
  }

  return result;
}

void NString::hexcoded(NString *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  *a2 = &unk_28370A720;
  *(a2 + 8) = 2 * v3;
  operator new[]();
}

void NString::hexdecoded(NString *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(this + 8) & 1) == 0)
  {
    *a3 = &unk_28370A720;
    *(a3 + 8) = 0;
    operator new[]();
  }

  Error::chuck("NString::hexdecoded() - string is odd number of chars", a2);
}

void sub_223AFD654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *v21 = v22;
  v24 = v21[2];
  if (v24)
  {
    MEMORY[0x223DF1D00](v24, v20);
  }

  _Unwind_Resume(exception_object);
}

void NString::strip(NString *this@<X0>, const NString *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v5)
  {
    v7 = 0;
    v8 = *(this + 2);
    while (strchr(v6, *(v8 + v7)))
    {
      if (v5 == ++v7)
      {
        v9 = v5;
        v10 = v5;
        LODWORD(v7) = v5;
        goto LABEL_8;
      }
    }

    v9 = v7;
    v10 = v5;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    LODWORD(v7) = 0;
  }

LABEL_8:
  v13 = v7;
  if (v7 < v5)
  {
    LODWORD(v5) = v7;
  }

  do
  {
    if (v10 <= v9)
    {
      goto LABEL_13;
    }

    v11 = v10--;
  }

  while (strchr(v6, *(*(this + 2) + v11 - 1)));
  LODWORD(v5) = v11;
LABEL_13:
  v12 = v5;
  NString::slice(this, &v13, &v12, a3);
}

void NString::dirname(NString *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  v5 = strrchr(v4, 47);
  if (v5)
  {
    v7 = v5 - v4;
    if (v5 != v4)
    {
      v8 = *(this + 2);
      if (v8 >= v7)
      {
        *a2 = &unk_28370A720;
        if (v4)
        {
          *(a2 + 8) = v7;
          operator new[]();
        }

        Error::chuck("Null pointer passed to string constructor", v6);
      }

      Error::chuck("Index %d outside of range [0,%d]", v6, v5 - v4, v8);
    }

    *a2 = &unk_28370A720;
    *(a2 + 8) = 1;
    operator new[]();
  }

  *a2 = &unk_28370A720;
  *(a2 + 8) = 1;
  operator new[]();
}

void NString::prefixDirname(NString *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  v5 = strrchr(v4, 47);
  if (v5)
  {
    v7 = v5 - v4 + 1;
    v8 = *(this + 2);
    if (v7 <= v8)
    {
      *a2 = &unk_28370A720;
      if (v4)
      {
        *(a2 + 8) = v7;
        operator new[]();
      }

      Error::chuck("Null pointer passed to string constructor", v6);
    }

    Error::chuck("Index %d outside of range [0,%d]", v6, (v5 - v4 + 1), v8);
  }

  *a2 = &unk_28370A720;
  *(a2 + 8) = 0;
  operator new[]();
}

void NString::basename(char **this@<X0>, uint64_t a2@<X8>)
{
  v4 = strrchr(this[2], 47);
  if (v4)
  {
    *a2 = &unk_28370A720;
    *(a2 + 8) = strlen(v4 + 1);
    operator new[]();
  }

  *a2 = &unk_28370A720;
  *(a2 + 8) = *(this + 2);
  operator new[]();
}

void NString::basename(char **this, const NString *a2)
{
  v3 = strrchr(this[2], 47);
  if (v3)
  {
    v4 = &unk_28370A720;
    v5 = strlen(v3 + 1);
    operator new[]();
  }

  v4 = &unk_28370A720;
  v5 = *(this + 2);
  operator new[]();
}

void sub_223AFDD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NString::hashValue(uint64_t this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = this;
  LODWORD(this) = 0;
  v3 = *(v2 + 16);
  do
  {
    v4 = *v3++;
    this = (v4 + 65599 * this);
    --v1;
  }

  while (v1);
  return this;
}

uint64_t operator<<(uint64_t a1, _DWORD *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = &unk_28370A720;
  if ((snprintf(__str, 0x80uLL, "%d", *a2) - 129) <= 0xFFFFFF7F)
  {
    Error::chuck("NString::NString: cannot convert int to string", v3);
  }

  v6 = strlen(__str);
  v7 = (*v5)(&v5, &v6);
  memcpy(v7, __str, (v6 + 1));
  (*(*a1 + 48))(a1, &v5);
  v5 = &unk_28370A720;
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  return a1;
}

{
  v9 = *MEMORY[0x277D85DE8];
  v5 = &unk_28370A720;
  if ((snprintf(__str, 0x80uLL, "%d", *a2) - 129) <= 0xFFFFFF7F)
  {
    Error::chuck("NString::NString: cannot convert int to string", v3);
  }

  v6 = strlen(__str);
  v7 = (*v5)(&v5, &v6);
  memcpy(v7, __str, (v6 + 1));
  (*(*a1 + 48))(a1, &v5);
  v5 = &unk_28370A720;
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  return a1;
}

void sub_223AFDF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, 0x1000C8077774924);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AFE0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, 0x1000C8077774924);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operator<<(uint64_t a1, float *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v6 = &unk_28370A720;
  if ((snprintf(__str, 0x200uLL, "%f", v3) - 513) <= 0xFFFFFDFF)
  {
    Error::chuck("NString::NString: cannot convert double to string", v4);
  }

  v7 = strlen(__str);
  v8 = (*v6)(&v6, &v7);
  memcpy(v8, __str, (v7 + 1));
  (*(*a1 + 48))(a1, &v6);
  v6 = &unk_28370A720;
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
  }

  return a1;
}

void sub_223AFE264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, 0x1000C8077774924);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operator<<(uint64_t a1, double *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = &unk_28370A720;
  if ((snprintf(__str, 0x200uLL, "%f", *a2) - 513) <= 0xFFFFFDFF)
  {
    Error::chuck("NString::NString: cannot convert double to string", v3);
  }

  v6 = strlen(__str);
  v7 = (*v5)(&v5, &v6);
  memcpy(v7, __str, (v6 + 1));
  (*(*a1 + 48))(a1, &v5);
  v5 = &unk_28370A720;
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  return a1;
}

void sub_223AFE3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, 0x1000C8077774924);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void NTimer::NTimer(NTimer *this)
{
  *this = &unk_28370A860;
  *(this + 4) = 0;
}

{
  *this = &unk_28370A860;
  *(this + 4) = 0;
}

uint64_t NTimer::start(NTimer *this)
{
  times((this + 16));
  result = gettimeofday(this + 5, 0);
  *(this + 4) = 257;
  return result;
}

uint64_t NTimer::stop(uint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    times((this + 48));
    this = gettimeofday((v1 + 96), 0);
    *(v1 + 8) = 0;
  }

  return this;
}

double NTimer::elapsed(uint64_t a1, const char *a2)
{
  if ((*(a1 + 9) & 1) == 0)
  {
    Error::chuck("NTimer::elapsed(): timer not started, cannot call elapsed", a2);
  }

  v2 = a2;
  if (*(a1 + 8) == 1)
  {
    times(&v14);
    gettimeofday(&v13, 0);
  }

  else
  {
    v4 = *(a1 + 64);
    *&v14.tms_utime = *(a1 + 48);
    *&v14.tms_cutime = v4;
    v13 = *(a1 + 96);
  }

  v5 = sysconf(3);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 4)
      {
        tms_stime = v14.tms_stime;
        tms_cstime = v14.tms_cstime;
        v8 = *(a1 + 24);
        v9 = *(a1 + 40);
        goto LABEL_15;
      }

      if (v2 == 3)
      {
        tms_stime = v14.tms_utime;
        tms_cstime = v14.tms_cutime;
        v8 = *(a1 + 16);
        v9 = *(a1 + 32);
LABEL_15:
        tms_utime = tms_cstime + tms_stime;
        v11 = v8 + v9;
        return (tms_utime - v11) / v5;
      }
    }

    return (v13.tv_usec - *(a1 + 88)) / 1000000.0 + (v13.tv_sec - *(a1 + 80));
  }

  if (!v2)
  {
    tms_utime = v14.tms_utime;
    v11 = *(a1 + 16);
    return (tms_utime - v11) / v5;
  }

  if (v2 != 1)
  {
    return (v13.tv_usec - *(a1 + 88)) / 1000000.0 + (v13.tv_sec - *(a1 + 80));
  }

  tms_utime = v14.tms_stime;
  v11 = *(a1 + 24);
  return (tms_utime - v11) / v5;
}

void NVersion::release(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 20;
  operator new[]();
}

void NVersion::releaseDate(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 28;
  operator new[]();
}

void NVersion::buildType(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 7;
  operator new[]();
}

void NVersion::buildDate(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 24;
  operator new[]();
}

void NVersion::compilerVersion(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 60;
  operator new[]();
}

void NVersion::compileFlags(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 488;
  operator new[]();
}

void NVersion::buildMachine(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 8;
  operator new[]();
}

void NVersion::versionMessage(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 61;
  operator new[]();
}

void sub_223B032A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ndapilog_callback(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    v3 = 136446210;
    v4 = a1;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_INFO, "NDAPI: %{public}s", &v3, 0xCu);
  }
}

void sub_223B096FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6569(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x223DF24E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_223B0A7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VTBuildVersion()
{
  v0 = MGCopyAnswer();

  return v0;
}

id _baseDir()
{
  v0 = CPSharedResourcesDirectory();
  if ([(__CFString *)v0 rangeOfString:@"root"]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    v0 = @"/var/mobile";
  }

  v1 = [(__CFString *)v0 stringByAppendingPathComponent:@"Library"];

  return v1;
}

void *VTLogDirectory()
{
  v0 = CPSharedResourcesDirectory();
  if ([(__CFString *)v0 rangeOfString:@"root"]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    v0 = @"/var/mobile";
  }

  v1 = [(__CFString *)v0 stringByAppendingPathComponent:@"Library"];

  v2 = [v1 stringByAppendingPathComponent:@"Logs/CrashReporter/VoiceTrigger/"];

  return v2;
}

id VTAudioLogDirectory()
{
  if (VTAudioLogDirectory_onceToken != -1)
  {
    dispatch_once(&VTAudioLogDirectory_onceToken, &__block_literal_global_6627);
  }

  v1 = VTAudioLogDirectory_logPath;

  return v1;
}

void __VTAudioLogDirectory_block_invoke()
{
  v0 = CPSharedResourcesDirectory();
  if ([(__CFString *)v0 rangeOfString:@"root"]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    v0 = @"/var/mobile";
  }

  v3 = [(__CFString *)v0 stringByAppendingPathComponent:@"Library"];

  v1 = [v3 stringByAppendingPathComponent:@"Logs/CrashReporter/VoiceTrigger/audio/"];
  v2 = VTAudioLogDirectory_logPath;
  VTAudioLogDirectory_logPath = v1;
}

id VTMakeTimestampedAudioLogFilenameWithPrefixAndSuffix(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = +[VTPreferences sharedPreferences];
  v6 = [v5 fileLoggingIsEnabled];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    if (VTAudioLogDirectory_onceToken != -1)
    {
      dispatch_once(&VTAudioLogDirectory_onceToken, &__block_literal_global_6627);
    }

    objc_storeStrong(&_VTGetOrCreateAudioLogDirectory_audioFileDir, VTAudioLogDirectory_logPath);
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 fileExistsAtPath:_VTGetOrCreateAudioLogDirectory_audioFileDir isDirectory:0];

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = 0;
      v12 = [v11 createDirectoryAtPath:_VTGetOrCreateAudioLogDirectory_audioFileDir withIntermediateDirectories:1 attributes:0 error:&v26];
      v10 = v26;

      if ((v12 & 1) == 0)
      {
        v13 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          v23 = _VTGetOrCreateAudioLogDirectory_audioFileDir;
          v24 = v13;
          v25 = [v10 localizedDescription];
          *buf = 138543618;
          v28 = v23;
          v29 = 2114;
          v30 = v25;
          _os_log_error_impl(&dword_223A31000, v24, OS_LOG_TYPE_ERROR, "Couldn't create voice trigger log directory at path %{public}@ %{public}@", buf, 0x16u);
        }

        v14 = _VTGetOrCreateAudioLogDirectory_audioFileDir;
        _VTGetOrCreateAudioLogDirectory_audioFileDir = @"/tmp";
      }
    }

    v15 = _VTGetOrCreateAudioLogDirectory_audioFileDir;

    v16 = _dateFormatter;
    v17 = [MEMORY[0x277CBEAA8] date];
    v18 = [v16 stringFromDate:v17];

    v19 = &stru_28370C9A8;
    if (v18)
    {
      v19 = v18;
    }

    v20 = [v7 stringWithFormat:@"%@/%@%@%@", v15, v3, v19, v4];

    v21 = [v20 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void VTLogInitIfNeeded()
{
  if (VTLogInitIfNeeded_once != -1)
  {
    dispatch_once(&VTLogInitIfNeeded_once, &__block_literal_global_30);
  }
}

void AccelWindow::initHamming(AccelWindow *this, double a2)
{
  v2 = *this;
  if (*(this + 5))
  {
    if (!v2)
    {
      return;
    }

    v3 = *(this + 2);
    if (v2 == 1)
    {
      v4 = 0;
      v5 = 1u + -1.0;
      do
      {
LABEL_12:
        v14 = cosf((v4 * 6.2832) / v5);
        v5 = v2 + -1.0;
        v15 = v14 * -0.46 + 0.54;
        *(v3 + 4 * v4++) = v15;
      }

      while (v2 != v4);
      return;
    }

    v4 = v2 & 0xFFFFFFFE;
    *&a2 = v2 + -1.0;
    v7 = vdup_lane_s32(*&a2, 0);
    v8 = 0x100000000;
    v9 = vdup_n_s32(0x40C90FD0u);
    v16 = vdupq_n_s64(0x3FE147AE147AE148uLL);
    v17 = vdupq_n_s64(0xBFDD70A3D70A3D71);
    v10 = *(this + 2);
    v11 = v4;
    do
    {
      v12 = vdiv_f32(vmul_f32(vcvt_f32_u32(v8), v9), v7);
      v18 = v12.f32[0];
      v19 = cosf(v12.f32[1]);
      v13.f32[0] = cosf(v18);
      v13.f32[1] = v19;
      *v10++ = vcvt_f32_f64(vmlaq_f64(v16, v17, vcvtq_f64_f32(v13)));
      v8 = vadd_s32(v8, 0x200000002);
      v11 -= 2;
    }

    while (v11);
    v5 = v2 + -1.0;
    if (v4 != v2)
    {
      goto LABEL_12;
    }
  }

  else if (v2)
  {
    v6 = *(this + 2);

    memset_pattern16(v6, &unk_223B13330, 4 * v2);
  }
}

uint64_t AccelWindow::apply(unsigned int *a1, uint64_t a2)
{
  if ((a1[1] & 1) == 0)
  {
    Error::chuck("AccelWindow::apply() - AccelWindow::init() has to be called before running", a2);
  }

  v2 = *(a2 + 16);
  if (v2 != *a1)
  {
    Error::chuck("AccelWindow::apply() - length of input array should be %d, not %d", a2, *a1, v2);
  }

  return AccelWindow::applyHamming(a1, a2);
}

float AccelWindow::getOffset(unsigned int *a1, uint64_t a2)
{
  __C = 0.0;
  vDSP_meanv(*(a2 + 8), 1, &__C, *a1);
  return __C;
}

unsigned int *AccelWindow::rescale(unsigned int *result, uint64_t a2)
{
  v2 = *result;
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = 0.0;
    v5 = v3;
    v6 = *result;
    do
    {
      v7 = *v5;
      if (*v5 > v4 || v7 < -v4)
      {
        if (fabsf(v7) > 32766.0)
        {
          goto LABEL_16;
        }

        if (v7 <= 0.0)
        {
          v4 = -v7;
        }

        else
        {
          v4 = *v5;
        }
      }

      ++v5;
      --v6;
    }

    while (v6);
    if (v4 >= 32766.0)
    {
LABEL_16:
      result[8] = 1;
      do
      {
        v10 = 1191181312;
        if (v3->f32[0] > 32766.0 || (v10 = -956302336, v3->f32[0] < -32766.0))
        {
          v3->i32[0] = v10;
        }

        v3 = (v3 + 4);
        --v2;
      }

      while (v2);
    }

    else
    {
      if (v4 <= 0.0)
      {
        v9 = 0x7FFF;
      }

      else
      {
        v9 = (32767.0 / v4);
      }

      result[8] = v9;
      v11 = v9;
      if (v2 < 8)
      {
        v12 = 0;
LABEL_29:
        v16 = v2 - v12;
        v17 = &v3->f32[v12];
        do
        {
          *v17 = *v17 * v11;
          ++v17;
          --v16;
        }

        while (v16);
        return result;
      }

      v12 = v2 & 0xFFFFFFF8;
      v13 = v3 + 1;
      v14 = v12;
      do
      {
        v15 = vmulq_n_f32(*v13, v11);
        v13[-1] = vmulq_n_f32(v13[-1], v11);
        *v13 = v15;
        v13 += 2;
        v14 -= 8;
      }

      while (v14);
      if (v12 != v2)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    result[8] = 0x7FFF;
  }

  return result;
}

void NLoadedMemory::NLoadedMemory(NLoadedMemory *this)
{
  *this = &unk_28370AA10;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_283709C80;
  *(this + 12) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v2, 1, *(this + 12));
  }

  v3 = memptr;
  *(this + 8) = 0;
  *(this + 5) = v3;
  *(this + 3) = &unk_283709C80;
  *v3 = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
}

{
  *this = &unk_28370AA10;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_283709C80;
  *(this + 12) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v2, 1, *(this + 12));
  }

  v3 = memptr;
  *(this + 8) = 0;
  *(this + 5) = v3;
  *(this + 3) = &unk_283709C80;
  *v3 = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
}

uint64_t NLoadedMemory::reset(NLoadedMemory *this)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  v1 = *(this + 14);
  if (v1)
  {
    v2 = this;
    munmap(*(this + 8), v1);
    this = v2;
  }

  *(this + 14) = 0;
  *(this + 8) = 0;
  v4 = 0;
  return (*(*(this + 3) + 64))();
}

uint64_t NLoadedMemory::setAlignment(uint64_t this, unsigned int *a2)
{
  v4 = *a2;
  if (*a2)
  {
    *(this + 48) = v4;
  }

  else
  {
    v4 = *(this + 48);
  }

  if (*(this + 40) % v4)
  {
    v6 = v2;
    v7 = v3;
    v5 = *(this + 32);
    return (*(*(this + 24) + 64))(this + 24);
  }

  return this;
}

uint64_t NLoadedMemory::load(NLoadedMemory *this, const NString *a2)
{
  v4 = *(this + 14);
  *(this + 2) = 0;
  *(this + 2) = 0;
  if (v4)
  {
    munmap(*(this + 8), v4);
  }

  *(this + 14) = 0;
  *(this + 8) = 0;
  v5 = *(this + 3);
  LODWORD(v17) = 0;
  (*(v5 + 64))(this + 24, "", &v17);
  LODWORD(v19) = 0;
  v8 = *(a2 + 2);
  if (v8 < 7)
  {
    if (v8 < 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = *(a2 + 2);
  v10 = *v9;
  v11 = *(v9 + 3);
  if (v10 != 1684957549 || v11 != 980968804)
  {
LABEL_10:
    v13 = *(a2 + 2);
    if (*v13 == 980443501)
    {
      v17 = &unk_28370A720;
      if (v13)
      {
        v18 = v8 - 4;
        operator new[]();
      }

      Error::chuck("Null pointer passed to string constructor", v6);
    }

LABEL_11:
    operator new[]();
  }

  v17 = 0;
  result = NMemoryFile::getMemoryBlockParams(a2, &v17, &v19, v7);
  if ((result & 1) == 0)
  {
    Error::chuck("NLoadedMemory::read() - %s does not define a memory block", v15, *(a2 + 2));
  }

  v16 = v19;
  *(this + 2) = v17;
  *(this + 2) = v16;
  return result;
}

void sub_223B0CDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    MEMORY[0x223DF1D00](a17, v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLoadedMemory::mapFile(NLoadedMemory *this, const char **a2)
{
  v4 = open(a2[2], 0);
  if (v4 == -1)
  {
    Error::chuck("NLoadedMemory::mapFile() - cannot open %s", v5, a2[2]);
  }

  v6 = v4;
  v7 = lseek(v4, 0, 2);
  if (v7 >> 31)
  {
    close(v6);
    Error::chuck("NLoadedMemory::mapFile() - cannot determine size of %s", v12, a2[2]);
  }

  v8 = v7;
  v9 = mmap(0, v7, 1, 1, v6, 0);
  if (v9 == -1)
  {
    close(v6);
    Error::chuck("NLoadedMemory::mapFile() - cannot map %s", v13, a2[2]);
  }

  *(this + 8) = v9;
  *(this + 14) = v8;
  result = close(v6);
  if (result == -1)
  {
    Error::chuck("NLoadedMemory::mapFile() - cannot close %s", v11, a2[2]);
  }

  return result;
}

void sub_223B0D820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBKDeviceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784ED290;
    v6 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BiometricKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("BKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getBKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiometricKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBKDeviceManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784ED290;
    v6 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BiometricKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("BKDeviceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getBKDeviceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}