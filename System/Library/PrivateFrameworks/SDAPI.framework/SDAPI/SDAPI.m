void MrecInitModule_latutil_kernel(void)
{
  if (!gParDebugLatticeProcessing)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugLatticeProcessing", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugLatticeProcessing = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugLatticeProcessing);
  }
}

void BoolGlobalParam::~BoolGlobalParam(BoolGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

void MrecInitModule_dmatrix_mrecutil(void)
{
  if (!gParDebugMatrixDecomposition)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugMatrixDecomposition", &unk_26286B638, &unk_26286B638, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugMatrixDecomposition = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugMatrixDecomposition);
  }

  if (!gParDebugMatrixDecompositionAccuracy)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugMatrixDecompositionAccuracy", &unk_26286B638, &unk_26286B638, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugMatrixDecompositionAccuracy = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugMatrixDecompositionAccuracy);
  }

  if (!gParDiagnosticMatrixComputation)
  {
    v4 = MemChunkAlloc(0x40uLL, 0);
    EnumParamRange::EnumParamRange(&v5, &sDiagnosticMatrixComputationEnum);
    EnumGlobalParamBase::EnumGlobalParamBase(v4, "DiagnosticMatrixComputation", &unk_26286B638, &unk_26286B638, 0, &v5, 0);
    v4->n128_u64[0] = &unk_287527B80;
    gParDiagnosticMatrixComputation = v4;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticMatrixComputation);
  }
}

uint64_t *DgnVector::operator*@<X0>(uint64_t *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 2);
  v4 = a2[1];
  *(a3 + 8) = 0;
  *a3 = 0;
  if (v4)
  {
    v6 = result;
    result = MemChunkAlloc(8 * v4, 0);
    v8 = 0;
    v9 = 0;
    *a3 = result;
    *(a3 + 8) = v4;
    v10 = *a2;
    v11 = *(a2 + 1);
    do
    {
      result[v9] = 0;
      if (v3)
      {
        v12 = *v6;
        v13 = 0.0;
        v14 = v3;
        v15 = v8;
        do
        {
          v16 = *v12++;
          v13 = v13 + v16 * *(v11 + 8 * v15);
          *&result[v9] = v13;
          ++v15;
          --v14;
        }

        while (v14);
      }

      ++v9;
      v8 += v10;
    }

    while (v9 != v4);
  }

  return result;
}

uint64_t sizeObject(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return 16;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 8;
  }

  else
  {
    result = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 1)
    {
      result += 8 * v4;
    }
  }

  return result;
}

{
  if (a2 == 2)
  {
    return 24;
  }

  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 12;
    v2 = 8;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 8;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v5 = *(a1 + 16);
      if (v5 >= 1)
      {
        v3 += 8 * v5;
      }

      v2 = 8;
    }
  }

  return v3 + v2;
}

{
  v4 = sizeObject<EnergyInfo>(a1, a2);
  v5 = sizeObject<EnergyInfo>(a1 + 16, a2) + v4;
  return v5 + sizeObject<FrameTypeInfo>(a1 + 32, a2);
}

{
  if (a2 == 2)
  {
    return 168;
  }

  v5 = sizeObject(a1 + 8);
  v6 = sizeObject<unsigned int>(a1 + 32, a2);
  v7 = sizeObject<DgnArray<ParseToken>>(a1 + 48, a2);
  v8 = sizeObject<RuleDesc>(a1 + 64, a2);
  v9 = sizeObject<unsigned int>(a1 + 80, a2);
  v10 = sizeObject<unsigned short>(a1 + 96, a2);
  v11 = sizeObject<unsigned short>(a1 + 112, a2);
  v12 = sizeObject<unsigned int>(a1 + 136, a2);
  v13 = 6;
  if (a2 == 3)
  {
    v13 = 0;
  }

  v14 = v13 + 2 * (a2 != 3);
  if (a2 != 3)
  {
    ++v14;
  }

  return v14 + 4 * (a2 != 3) + 8 * (a2 != 3) + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12;
}

{
  return 8 * (a2 != 3);
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 24;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 48;
  }
}

{
  v3 = sizeObject(a1, a2);
  v4 = 18;
  if (a2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

{
  return 4 * (a2 != 3);
}

{
  v2 = 6;
  if (a2 == 3)
  {
    v2 = 0;
  }

  if (a2 == 2)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 14;
  }
}

{
  v3 = sizeObject<unsigned long long>(a1, a2);
  v4 = 28;
  if (a2 == 3)
  {
    v4 = 0;
  }

  return v3 + v4;
}

{
  return LinearTransform::sizeObject(a1 + 8, a2) + 8 * (a2 != 3);
}

{
  v2 = (8 * (a2 != 3)) | (2 * (a2 != 3));
  if (a2 != 3)
  {
    ++v2;
  }

  return v2 + 2 * (a2 != 3) + ((50 * (a2 != 3)) | (8 * (a2 != 3)));
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 28;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

{
  return ((a2 != 3) | (8 * (a2 != 3)) | (4 * (a2 != 3))) + 24 * (a2 != 3);
}

{
  v4 = BitArray::sizeObject(a1, a2);
  if (a2 == 3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 12;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v8 = 8;
    }

    if ((a2 & 0xFFFFFFFE) == 2 || (v9 = *(a1 + 40), v9 < 1))
    {
      v7 = 16;
      v6 = 4;
      v5 = 2;
    }

    else
    {
      v7 = 16;
      v6 = 4;
      v5 = 2;
      v8 += 2 * v9;
    }
  }

  return v4 + v5 + v6 + v7 + 2 * v6 + v8;
}

{
  return sizeObject<DgnString *>(a1, a2) + 8 * (a2 != 3);
}

{
  v2 = gShadowDiagnosticShowIdealizedObjectSizes;
  v3 = 64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 4;
  }

  if (a2 == 3)
  {
    v3 = 0;
    v2 = 1;
  }

  v4 = (v2 & 1) == 0;
  v5 = 12;
  if (!v4)
  {
    v5 = 0;
  }

  return v3 + v5;
}

{
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

{
  v4 = 8;
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    v4 = 0;
  }

  v5 = v4 | (2 * (a2 != 3));
  v6 = sizeObject<unsigned char>(a1 + 16, a2);
  v7 = v6 + sizeObject<unsigned long long>(a1 + 32, a2);
  v8 = v7 + sizeObject<unsigned int>(a1 + 48, a2);
  v9 = v8 + sizeObject<unsigned long long>(a1 + 64, a2);
  v10 = v9 + sizeObject<unsigned long long>(a1 + 80, a2);
  return v5 + v10 + sizeObject<unsigned long long>(a1 + 96, a2);
}

{
  if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
  {
    if (a2 == 3)
    {
      v2 = 0;
    }

    else
    {
      v2 = 12;
    }

    return sizeObject(a1 + 12, a2) + v2;
  }

  else if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 24;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 8 * v3;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
  {
    return v4 + 8;
  }

  else
  {
    return v4 + 16;
  }
}

{
  v4 = sizeObject<WordLatticeLC>(a1, a2);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  else
  {
    v5 = 8;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 2)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(a1 + 16);
    v7 = v6;
    if (v8)
    {
      v7 = sizeObject<unsigned int>(v8, a2) + v6;
      v9 = 8;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v9 = 4;
      }

      if (a2 == 3)
      {
        v6 = 0;
      }

      else
      {
        v6 = v9;
      }
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      v5 = sizeObject<WordConfidenceInfo>(v10, a2) + v6;
    }

    else
    {
      v5 = v6;
    }
  }

  return v4 + 4 * (a2 != 3) + v5 + v7 + sizeObject(a1 + 36, a2);
}

{
  v4 = sizeObject<EnergyInfo>(a1, a2) + 4 * (a2 != 3);
  v5 = sizeObject<RuleDesc>(a1 + 24, a2);
  return v4 + v5 + sizeObject<BitArray>(a1 + 40, a2);
}

{
  return sizeObject<DgnPrimArray<Uns16AndScore>>(a1 + 8, a2) + 4 * (a2 != 3);
}

{
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  v5 = 24;
  if (a2 == 3)
  {
    v5 = 0;
  }

  v6 = v5 + ((a2 != 3) | (8 * (a2 != 3)));
  if (a2 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (a2 != 2)
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      return v7 + v6;
    }

    v7 += sizeObject<EnergyInfo>(v8, a2);
  }

  v9 = *(a1 + 40);
  v10 = v7 + v6;
  if (v9)
  {
    v10 += sizeObject<EnergyInfo>(v9, a2);
  }

  return v10;
}

{
  v4 = a2 != 3;
  v5 = sizeObject<MiniFst::Trace>(a1, a2);
  v6 = sizeObject<MiniFst::Token>(a1 + 32, a2);
  v7 = sizeObject<MiniFst::Token>(a1 + 48, a2);
  return v5 + 4 * v4 + v6 + v7 + sizeObject<unsigned int>(a1 + 64, a2);
}

{
  v4 = sizeObject<DgnString>(a1 + 8, a2);
  v5 = sizeObject<unsigned long long>(a1 + 24, a2);
  v6 = sizeObject<unsigned char>(a1 + 40, a2);
  v7 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 4;
  }

  if (a2 == 3)
  {
    v7 = 0;
  }

  return ((a2 != 3) | (16 * (a2 != 3)) | (4 * (a2 != 3))) + v4 + v5 + v6 + v7;
}

{
  result = 8 * (a2 != 3);
  if (**(a1 + 24))
  {
    v4 = a1 + 16;
    v5 = 16;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 8;
    }

    v6 = a2 - 4;
    v7 = (a2 - 4) < 0xFFFFFFFE;
    v8 = *(a1 + 40);
    v9 = v8 != 0;
    if (v8)
    {
      v10 = (a2 - 4) < 0xFFFFFFFE;
    }

    else
    {
      v10 = 0;
    }

    if (v9 < v7)
    {
      v7 = v9;
    }

    if (a2 == 3)
    {
      v5 = 0;
    }

    v11 = v5 + result + 4 * (a2 != 3);
    if (a2 != 3)
    {
      ++v11;
    }

    v12 = v5 | (4 * (a2 != 3)) | v7;
    if (a2 != 3)
    {
      ++v12;
    }

    if (v6 >= 0xFFFFFFFE)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v6 < 0xFFFFFFFE)
    {
      ++v12;
    }

    v14 = 1;
    do
    {
      v15 = v13;
      v16 = **(v4 + 32 * v14++ + 8);
      v13 += v12;
    }

    while (v16);
    return v15 + v10;
  }

  return result;
}

{
  v4 = a2 != 3;
  v5 = sizeObject(a1 + 88, a2);
  return v5 + 4 * v4 + sizeObject(a1 + 28, a2) + 32 * v4;
}

{
  if (gShadowDiagnosticShowIdealizedObjectSizes != 1)
  {
    return 24 * *(a1 + 10) + 16;
  }

  v4 = sizeObject(a1, a2);
  if (*(a1 + 10))
  {
    v5 = *(a1 + 10);
    v4 += sizeObject(a1 + 16, a2) * v5;
  }

  return v4;
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 36;
  }
}

{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 68;
  }
}

{
  v3 = sizeObject<unsigned int>(a1 + 16, a2);
  v4 = 20;
  if (a2 == 3)
  {
    v4 = 0;
  }

  return v3 + v4;
}

{
  return BitArray::sizeObject(a1 + 8, a2) + 8 * (a2 != 3);
}

{
  return sizeObject(a1, a2) + 8 * (a2 != 3);
}

{
  v4 = sizeObject<HistoryAndBigScore>(a1, a2);
  v5 = sizeObject<unsigned char>(a1 + 16, a2);
  v6 = sizeObject(a1 + 32, a2);
  v7 = 14;
  if (a2 == 3)
  {
    v7 = 0;
  }

  return v7 + v4 + v5 + v6;
}

{
  v4 = sizeObject<CWIDCrumbWACS>(a1, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 != 2)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v6 += Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(v7, a2);
    }
  }

  return v4 + 4 * (a2 != 3) + ((2 * (a2 != 3)) | (16 * (a2 != 3))) + v6;
}

BOOL LUDecomposeData::decompose(double **this)
{
  v1 = *(this + 4);
  v43 = 0;
  v42 = 0;
  if (v1 && (v3 = MemChunkAlloc(8 * v1, 0), v42 = v3, v43 = v1, v4 = *(this + 4), v4 >= 1))
  {
    v5 = 0;
    v6 = *this;
    do
    {
      v7 = 0.0;
      v8 = v4;
      v9 = v6;
      do
      {
        v10 = fabs(*v9);
        if (v10 > v7)
        {
          v7 = v10;
        }

        v9 += v4;
        --v8;
      }

      while (v8);
      if (v7 < 1.17549435e-38)
      {
        v37 = 0;
        goto LABEL_40;
      }

      *&v3[v5++] = 1.0 / v7;
      ++v6;
    }

    while (v5 != v4);
    v11 = 0;
    v12 = 0;
    v13 = this[3];
    v14 = *this;
    v15 = 1;
    v16 = -1;
    do
    {
      if (v11)
      {
        v17 = 0;
        v18 = v4 * v11;
        v19 = v4;
        do
        {
          v20 = v14[(v18 + v17)];
          if (v17)
          {
            v21 = v17;
            v22 = v17;
            v23 = v4 * v11;
            do
            {
              v20 = v20 - v14[v22] * v14[v23++];
              v22 += v4;
              --v21;
            }

            while (v21);
          }

          v14[(v18 + v17++)] = v20;
        }

        while (v17 != v11);
      }

      else
      {
        v19 = v4;
      }

      if (v11 < v19)
      {
        v24 = v4 * v11;
        v25 = 0.0;
        v26 = v11;
        do
        {
          v27 = v14[(v24 + v26)];
          if (v11)
          {
            v28 = v11;
            v29 = v26;
            v30 = v4 * v11;
            do
            {
              v27 = v27 - v14[v29] * v14[v30++];
              v29 += v19;
              --v28;
            }

            while (v28);
          }

          v14[(v24 + v26)] = v27;
          v31 = fabs(v27) * *&v3[v26];
          if (v31 >= v25)
          {
            v25 = v31;
            v12 = v26;
          }

          ++v26;
        }

        while (v26 != v4);
      }

      if (v11 != v12)
      {
        if (v4 >= 1)
        {
          v32 = 0;
          v33 = v4;
          do
          {
            v34 = v14[v12 + v32];
            v14[v12 + v32] = v14[(v11 + v32)];
            v14[(v11 + v32)] = v34;
            v32 += v4;
            --v33;
          }

          while (v33);
        }

        *(this + 10) = -*(this + 10);
        v3[v12] = v3[v11];
      }

      *(v13 + v11) = v12;
      v4 = *(this + 4);
      v35 = v14[(v11 + v11 * v4)];
      v36 = fabs(v35);
      v37 = v36 >= 1.17549435e-38;
      if (v36 < 1.17549435e-38)
      {
        break;
      }

      if (v11 < v4 - 1)
      {
        v38 = v15 + v4 * v11;
        v39 = v16 + v4;
        v40 = 1.0 / v35;
        do
        {
          v14[v38] = v40 * v14[v38];
          ++v38;
          --v39;
        }

        while (v39);
      }

      ++v11;
      ++v15;
      --v16;
    }

    while (v11 < v4);
  }

  else
  {
    v37 = 1;
  }

LABEL_40:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v42);
  return v37;
}

uint64_t LUDecomposeData::forwardSubst(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 24);
    v5 = *a2;
    v6 = *(result + 16);
    do
    {
      v7 = *(v4 + 4 * v3);
      v8 = *(v5 + 8 * v7);
      *(v5 + 8 * v7) = *(v5 + 8 * v3);
      if (v6 >= v2)
      {
        if (v8 != 0.0)
        {
          v6 = v3;
        }
      }

      else if (v3 > v6)
      {
        v9 = v3 + v2 * v6;
        LODWORD(v10) = v6;
        do
        {
          v8 = v8 - *(*result + 8 * v9) * *(v5 + 8 * v10);
          v10 = (v10 + 1);
          v9 += v2;
        }

        while (v3 != v10);
      }

      *(v5 + 8 * v3++) = v8;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t LUDecomposeData::backSubst(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *result;
    v5 = (v2 * v2);
    v6 = *(result + 16);
    do
    {
      v7 = *(v3 + 8 * (v6 - 1));
      if (v6 < v2)
      {
        v8 = v5;
        result = v2;
        do
        {
          v7 = v7 - *(v4 + 8 * (v8 - 1)) * *(v3 + 8 * --result);
          v8 += -v2;
        }

        while (v6 < result);
      }

      *(v3 + 8 * (v6 - 1)) = v7 * (1.0 / *(v4 + 8 * ((v2 + 1) * (v6 - 1))));
      --v5;
    }

    while (v6-- > 1);
  }

  return result;
}

uint64_t *DgnMatrix::operator*@<X0>(uint64_t *result@<X0>, double **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  *(a3 + 8) = 0;
  *a3 = 0;
  if (v3)
  {
    v5 = result;
    result = MemChunkAlloc(8 * v3, 0);
    *a3 = result;
    *(a3 + 8) = v3;
    if (*v5)
    {
      v7 = result;
      v8 = 0;
      do
      {
        DgnMatrix::getRow(v5, v8, &v16);
        v9 = v17;
        if (v17)
        {
          v10 = v16;
          v11 = *a2;
          v12 = 0.0;
          do
          {
            v13 = *v10++;
            v14 = v13;
            v15 = *v11++;
            v12 = v12 + v14 * v15;
            --v9;
          }

          while (v9);
        }

        else
        {
          v12 = 0.0;
        }

        *&v7[v8] = v12;
        result = DgnPrimFixArray<double>::~DgnPrimFixArray(&v16);
        ++v8;
      }

      while (v8 < *v5);
    }
  }

  return result;
}

uint64_t *DgnMatrix::getRow@<X0>(uint64_t *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 1);
  *(a3 + 8) = 0;
  *a3 = 0;
  if (v3)
  {
    v5 = this;
    this = MemChunkAlloc(8 * v3, 0);
    *a3 = this;
    *(a3 + 8) = v3;
    v7 = *(v5 + 1);
    if (v7)
    {
      v8 = *v5;
      v9 = v5[1];
      do
      {
        *this++ = *(v9 + 8 * a2);
        a2 += v8;
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t DgnMatrix::operator*@<X0>(uint64_t *a1@<X0>, DgnMatrix *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 1);
  *a3 = *a1;
  *(a3 + 4) = v7;
  *(a3 + 8) = 0;
  v8 = v7 * v6;
  *(a3 + 16) = 0;
  if (v7 * v6)
  {
    v9 = MemChunkAlloc(8 * v7 * v6, 0);
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  else
  {
    v9 = 0;
  }

  DgnMatrix::transpose(a2, &v25);
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = *(a2 + 1);
    do
    {
      if (v12)
      {
        for (i = 0; i < v12; ++i)
        {
          DgnMatrix::getRow(a1, v11, &v23);
          DgnMatrix::getRow(&v25, i, v22);
          v14 = v24;
          if (v24)
          {
            v15 = v23;
            v16 = 0.0;
            v17 = v22[0];
            do
            {
              v18 = *v15++;
              v19 = v18;
              v20 = *v17++;
              v16 = v16 + v19 * v20;
              --v14;
            }

            while (v14);
          }

          else
          {
            v16 = 0.0;
          }

          *&v9[v11 + v6 * i] = v16;
          DgnPrimFixArray<double>::~DgnPrimFixArray(v22);
          DgnPrimFixArray<double>::~DgnPrimFixArray(&v23);
          v12 = *(a2 + 1);
        }

        v10 = *a1;
      }

      ++v11;
    }

    while (v11 < v10);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v26);
}

uint64_t *DgnMatrix::transpose@<X0>(DgnMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 1);
  *a2 = v5;
  *(a2 + 4) = v4;
  v6 = v4 * v5;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (v4 * v5)
  {
    result = MemChunkAlloc(8 * (v4 * v5), 0);
    *(a2 + 8) = result;
    *(a2 + 16) = v6;
    v8 = *(this + 1);
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v8 = v5;
    if (!v5)
    {
      return result;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *this;
  do
  {
    if (v11)
    {
      v12 = *(this + 1);
      v13 = v11;
      v14 = v9;
      v15 = v10;
      do
      {
        result[v15] = *(v12 + 8 * v14);
        v15 += v5;
        ++v14;
        --v13;
      }

      while (v13);
    }

    ++v10;
    v9 += v11;
  }

  while (v10 != v8);
  return result;
}

uint64_t *DgnMatrix::makeDiagonal@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  *a2 = v3;
  *(a2 + 4) = v3;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (v3 * v3)
  {
    result = MemChunkAlloc(8 * (v3 * v3), 0);
    *(a2 + 8) = result;
    *(a2 + 16) = v3 * v3;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!v3)
    {
      return result;
    }
  }

  for (i = 0; i != v3; ++i)
  {
    v7 = *a1;
    v8 = v3;
    v9 = i;
    v10 = i;
    do
    {
      v11 = 0;
      if (!v10)
      {
        v11 = *(v7 + 8 * i);
      }

      result[v9] = v11;
      --v10;
      v9 += v3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t DgnMatrix::makeIdentity@<X0>(DgnMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v6 = 0;
  if (this)
  {
    v3 = this;
    v4 = 8 * this;
    v6 = MemChunkAlloc(v4, 0);
    v7 = v3;
    memset_pattern16(v6, &unk_26286B650, v4);
  }

  DgnMatrix::makeDiagonal(&v6, a2);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v6);
}

uint64_t DgnMatrix::ludInvert@<X0>(double **this@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *this;
  DgnMatrix::makeIdentity(v6, &v25);
  LUDecomposeData::LUDecomposeData(v22, (this + 1), *this);
  v7 = LUDecomposeData::decompose(v22);
  v8 = v7;
  if (a2)
  {
    if (v7)
    {
      v9 = v23;
      v10 = v24[4];
      if (v23 >= 1)
      {
        v11 = 0;
        do
        {
          v10 = v10 * v22[0][v11];
          v11 += v23 + 1;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v10 = DgnMatrix::naiveDeterminant(this);
    }

    *a2 = v10;
  }

  if (v8)
  {
    if (v6)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        v21 = 0;
        v20 = 0;
        v13 = MemChunkAlloc(8 * v6, 0);
        v20 = v13;
        v21 = v6;
        bzero(v13, 8 * v6);
        v13[i] = 0x3FF0000000000000;
        LUDecomposeData::forwardSubst(v22, &v20);
        LUDecomposeData::backSubst(v22, &v20);
        v14 = v20;
        v15 = v26;
        v16 = v25 * i;
        v17 = v6;
        do
        {
          v18 = *v14++;
          *(v15 + 8 * v16++) = v18;
          v17 = (v17 - 1);
        }

        while (v17);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v20);
      }
    }

    *a3 = v25;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    DgnPrimFixArray<double>::copyArraySlice(a3 + 8, &v26, 0, v27);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v22);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v26);
}

void sub_262570124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

double DgnMatrix::naiveDeterminant(double **this)
{
  v1 = 0.0;
  if (*this)
  {
    if (*this == 1)
    {
      return *this[1];
    }

    else
    {
      v3 = *(this + 1);
      if (v3)
      {
        for (i = 0; i < v3; ++i)
        {
          v10[0] = *this - 1;
          v10[1] = v3 - 1;
          v5 = v10[0] * (v3 - 1);
          v12 = 0;
          v11 = 0;
          if (v5)
          {
            v11 = MemChunkAlloc(8 * v10[0] * (v3 - 1), 0);
            v12 = v5;
          }

          DgnMatrix::getMinorMatrix(this, 0, i, v10);
          v6 = this[1][*this * i];
          DgnMatrix::naiveDeterminant(v10);
          if (i)
          {
            v8 = -1;
          }

          else
          {
            v8 = 1;
          }

          v1 = v1 + v6 * v8 * v7;
          DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
          v3 = *(this + 1);
        }
      }
    }
  }

  return v1;
}

double DgnMatrix::determinant(double **this)
{
  LUDecomposeData::LUDecomposeData(v6, (this + 1), *this);
  if (LUDecomposeData::decompose(v6))
  {
    v2 = v7;
    v3 = v8[4];
    if (v7 >= 1)
    {
      v4 = 0;
      do
      {
        v3 = v3 * v6[0][v4];
        v4 += v7 + 1;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v3 = DgnMatrix::naiveDeterminant(this);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v6);
  return v3;
}

void sub_262570320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v9 + 24);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a9);
  _Unwind_Resume(a1);
}

uint64_t DgnMatrix::cofactorMatrix@<X0>(double **this@<X0>, uint64_t a2@<X8>)
{
  v15 = 0.0;
  DgnMatrix::ludInvert(this, &v15, &v13);
  if (v13)
  {
    DgnMatrix::transpose(&v13, v11);
    DgnMatrix::operator*(v11, a2, v15);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v12);
  }

  else
  {
    v4 = *this;
    v5 = *(this + 1);
    *a2 = *this;
    *(a2 + 4) = v5;
    *(a2 + 8) = 0;
    v6 = v5 * v4;
    *(a2 + 16) = 0;
    if (v5 * v4)
    {
      *(a2 + 8) = MemChunkAlloc(8 * v5 * v4, 0);
      *(a2 + 16) = v6;
      v4 = *this;
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(this + 1);
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; ++i)
          {
            *(*(a2 + 8) + 8 * (v7 + *a2 * i)) = DgnMatrix::cofactorElement(this, v7, i);
            v8 = *(this + 1);
          }

          v4 = *this;
        }

        ++v7;
      }

      while (v7 < v4);
    }
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v14);
}

void sub_262570450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

double DgnMatrix::cofactorElement(DgnMatrix *this, unsigned int a2, unsigned int a3)
{
  v3 = *this;
  v4 = 0.0;
  if (*this >= 2u)
  {
    v8 = *(this + 1) - 1;
    LODWORD(v11) = v3 - 1;
    HIDWORD(v11) = v8;
    v9 = v8 * (v3 - 1);
    v13 = 0;
    v12 = 0;
    if (v9)
    {
      v12 = MemChunkAlloc(8 * (v8 * (v3 - 1)), 0);
      v13 = v9;
    }

    DgnMatrix::getMinorMatrix(this, a2, a3, &v11);
    if ((a3 + a2))
    {
      v4 = -DgnMatrix::determinant(&v11);
    }

    else
    {
      v4 = DgnMatrix::determinant(&v11);
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v12);
  }

  return v4;
}

void DgnMatrix::operator*(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  v5 = (a2 + 8);
  *(a2 + 16) = 0;
  DgnPrimFixArray<double>::copyArraySlice(a2 + 8, (a1 + 8), 0, *(a1 + 16));
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *v5;
    do
    {
      *v7 = *v7 * a3;
      ++v7;
      --v6;
    }

    while (v6);
  }
}

int *DgnMatrix::getMinorMatrix(int *result, unsigned int a2, unsigned int a3, int *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = *a4;
    v6 = *(a4 + 1);
    v7 = result[1];
    v8 = a3 + 1;
    v9 = *a4 * a3;
    do
    {
      if (a3)
      {
        v10 = *result;
        v11 = *(result + 1);
        v12 = a3;
        v13 = v4;
        v14 = v4;
        do
        {
          *(v6 + 8 * v14) = *(v11 + 8 * v13);
          v14 += v5;
          v13 += v10;
          --v12;
        }

        while (v12);
      }

      if (v8 < v7)
      {
        v15 = *result;
        v16 = *(result + 1);
        v17 = v4 + v8 * *result;
        v18 = ~a3 + v7;
        v19 = v9;
        do
        {
          *(v6 + 8 * v19) = *(v16 + 8 * v17);
          v19 += v5;
          v17 += v15;
          --v18;
        }

        while (v18);
      }

      ++v4;
      ++v9;
    }

    while (v4 != a2);
  }

  v20 = *result;
  v21 = a2 + 1;
  if (a2 + 1 < *result)
  {
    v22 = *a4;
    v23 = *(a4 + 1);
    v24 = result[1];
    v25 = a2 + *a4 * a3;
    v26 = a2 + v20 * (a3 + 1) + 1;
    do
    {
      if (a3)
      {
        v27 = *(result + 1);
        v28 = a3;
        v29 = v21;
        v30 = a2;
        do
        {
          *(v23 + 8 * v30) = *(v27 + 8 * v29);
          v30 += v22;
          v29 += v20;
          --v28;
        }

        while (v28);
      }

      if (a3 + 1 < v24)
      {
        v31 = *(result + 1);
        v32 = ~a3 + v24;
        v33 = v26;
        v34 = v25;
        do
        {
          *(v23 + 8 * v34) = *(v31 + 8 * v33);
          v34 += v22;
          v33 += v20;
          --v32;
        }

        while (v32);
      }

      ++v21;
      ++a2;
      ++v25;
      ++v26;
    }

    while (v21 != v20);
  }

  return result;
}

uint64_t DgnMatrix::singularValueDecompose(unsigned int *a1, uint64_t a2, unsigned int *a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 8);
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v11 = 8 * v6;
    v10 = MemChunkAlloc(8 * v6, 0);
    *a2 = v10;
    *(a2 + 8) = v6;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = 8 * v8;
  }

  bzero(v10, v11);
LABEL_9:
  DgnMatrix::setNumRowsAndCols(a3, v6, v6);
  v12 = a3[4];
  if (v12)
  {
    bzero(*(a3 + 1), 8 * v12);
  }

  v250 = 0;
  v249 = 0;
  v13 = 0.0;
  v14 = &loc_26286B000;
  v15 = 0.0;
  if (v6)
  {
    v16 = v6;
    v17 = MemChunkAlloc(8 * v6, 0);
    v18 = 0;
    v249 = v17;
    v250 = v6;
    v19 = v6 - 1;
    v20 = 1;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      *&v17[v18] = -(v22 * v21);
      v23 = v7 - v18;
      if (v7 <= v18)
      {
        *(*a2 + 8 * v18) = *(*a2 + 8 * v18) + v21 * -0.0;
        v36 = v18 + 1;
        v22 = 0.0;
      }

      else
      {
        v244 = v20;
        v24 = *a1;
        v25 = *(a1 + 1);
        v26 = v18 + v18 * *a1;
        v27 = 0.0;
        v28 = v7 - v18;
        v29 = v26;
        do
        {
          v30 = *(v25 + 8 * v29);
          if (v30 < 0.0)
          {
            v30 = 0.0 - v30;
          }

          v27 = v27 + v30;
          ++v29;
          --v28;
        }

        while (v28);
        if (v27 <= 0.0)
        {
          v36 = v18 + 1;
        }

        else
        {
          v31 = 0.0;
          v32 = v7 - v18;
          do
          {
            v33 = 1.0 / v27 * *(v25 + 8 * v26);
            *(v25 + 8 * v26) = v33;
            v31 = v31 + v33 * v33;
            ++v26;
            --v32;
          }

          while (v32);
          v21 = DgnSqrt(v31);
          v24 = *a1;
          v34 = v18 + *a1 * v18;
          v25 = *(a1 + 1);
          v35 = *(v25 + 8 * v34);
          if (v35 <= 0.0)
          {
            v21 = -v21;
          }

          *(v25 + 8 * v34) = v35 + v21;
          v36 = v18 + 1;
          v37 = v18 + v18 * v24;
          if (v18 + 1 < v6)
          {
            v38 = v31 + v35 * v21;
            v39 = v18 + v24 * v36;
            v40 = v18 + 1;
            do
            {
              v41 = 0.0;
              v42 = v7 - v18;
              v43 = v18 + v18 * v24;
              v44 = v39;
              do
              {
                v41 = v41 + *(v25 + 8 * v43++) * *(v25 + 8 * v44++);
                --v42;
              }

              while (v42);
              v45 = v7 - v18;
              v46 = v39;
              v47 = v18 + v18 * v24;
              v48 = -v41 / v38;
              do
              {
                *(v25 + 8 * v46) = *(v25 + 8 * v46) + v48 * *(v25 + 8 * v47++);
                ++v46;
                --v45;
              }

              while (v45);
              ++v40;
              v39 += v24;
            }

            while (v40 != v6);
          }

          do
          {
            *(v25 + 8 * v37) = v27 * *(v25 + 8 * v37);
            ++v37;
            --v23;
          }

          while (v23);
        }

        *(*a2 + 8 * v18) = *(*a2 + 8 * v18) - v27 * v21;
        v22 = 0.0;
        if (v36 < v6)
        {
          v49 = v18 + v24 * v244;
          v50 = v19;
          v51 = v49;
          do
          {
            v52 = *(v25 + 8 * v51);
            if (v52 < 0.0)
            {
              v52 = 0.0 - v52;
            }

            v22 = v22 + v52;
            v51 += v24;
            --v50;
          }

          while (v50);
          if (v22 > 0.0)
          {
            v53 = 0.0;
            if (v36 < v6)
            {
              v54 = v19;
              do
              {
                v55 = 1.0 / v22 * *(v25 + 8 * v49);
                *(v25 + 8 * v49) = v55;
                v53 = v53 + v55 * v55;
                v49 += v24;
                --v54;
              }

              while (v54);
            }

            v21 = DgnSqrt(v53);
            v56 = *a1;
            v57 = v18 + *a1 * v36;
            v58 = *(a1 + 1);
            v59 = *(v58 + 8 * v57);
            if (v59 <= 0.0)
            {
              v21 = -v21;
            }

            *(v58 + 8 * v57) = v59 + v21;
            if (v36 < v7)
            {
              v60 = v53 + v59 * v21;
              v61 = v36;
              do
              {
                if (v36 < v6)
                {
                  v62 = 0.0;
                  v63 = v19;
                  v64 = v56 * v244;
                  do
                  {
                    v62 = v62 + *(v58 + 8 * (v18 + v64)) * *(v58 + 8 * (v61 + v64));
                    v64 += v56;
                    --v63;
                  }

                  while (v63);
                  if (v36 < v6)
                  {
                    v65 = v19;
                    v66 = v56 * v244;
                    v67 = -v62 / v60;
                    do
                    {
                      *(v58 + 8 * (v61 + v66)) = *(v58 + 8 * (v61 + v66)) + v67 * *(v58 + 8 * (v18 + v66));
                      v66 += v56;
                      --v65;
                    }

                    while (v65);
                  }
                }

                ++v61;
              }

              while (v61 != v7);
            }

            if (v36 < v6)
            {
              v68 = v18 + v56 * v244;
              v69 = v19;
              do
              {
                *(v58 + 8 * v68) = v22 * *(v58 + 8 * v68);
                v68 += v56;
                --v69;
              }

              while (v69);
            }
          }
        }

        v20 = v244;
      }

      v70 = *(*a2 + 8 * v18);
      if (v70 < 0.0)
      {
        v70 = 0.0 - v70;
      }

      v17 = v249;
      v71 = *&v249[v18];
      if (v71 < 0.0)
      {
        v71 = 0.0 - v71;
      }

      v72 = v70 + v71;
      if (v72 > v15)
      {
        v15 = v72;
      }

      ++v20;
      --v19;
      v18 = v36;
    }

    while (v36 != v6);
    v73 = v250;
    v74 = 0.0;
    v14 = &loc_26286B000;
    v75 = v6 - 1;
    if (v250)
    {
      v76 = v249;
      v77 = 0.0;
      do
      {
        v78 = *v76++;
        v79 = v78;
        v80 = 0.0 - v78;
        if (v78 < 0.0)
        {
          v79 = v80;
        }

        if (v79 > v77)
        {
          v77 = v79;
        }

        --v73;
      }

      while (v73);
      v74 = v77 * 0.0001;
    }

    v81 = 0;
    v82 = *a3;
    v83 = *a3 + 1;
    v84 = *(a3 + 1);
    v85 = v6 + *a3 * (v6 - 1);
    v86 = ~*a3;
    v87 = v6 * v83;
    v88 = v6 * v83 - 1;
    do
    {
      v89 = v16 - 1;
      if (v16 < v6)
      {
        v90 = 0.0 - v21;
        if (v21 >= 0.0)
        {
          v90 = v21;
        }

        if (v90 > v74)
        {
          v91 = *a1;
          v92 = *(a1 + 1);
          v93 = v89 + *a1 * v16;
          v94 = v75 + *a1 * v16;
          v95 = v81;
          v96 = v85;
          do
          {
            *(v84 + 8 * v96++) = *(v92 + 8 * v94) / *(v92 + 8 * v93) / v21;
            v94 += v91;
            --v95;
          }

          while (v95);
          v97 = *a1;
          v98 = *(a1 + 1);
          v99 = v75 + *a1 * v16;
          v100 = v87;
          do
          {
            v101 = 0.0;
            v102 = v81;
            v103 = v99;
            v104 = v100;
            do
            {
              v101 = v101 + *(v98 + 8 * v103) * *(v84 + 8 * v104++);
              v103 += v97;
              --v102;
            }

            while (v102);
            do
            {
              *(v84 + 8 * (v100 + v102)) = *(v84 + 8 * (v100 + v102)) + v101 * *(v84 + 8 * (v85 + v102));
              ++v102;
            }

            while (v81 != v102);
            LODWORD(v16) = v16 + 1;
            v100 += v82;
          }

          while (v16 != v6);
        }

        v105 = 0;
        v106 = v88;
        do
        {
          *(v84 + 8 * v106) = 0;
          *(v84 + 8 * (v85 + v105++)) = 0;
          v106 += v82;
        }

        while (v81 != v105);
      }

      *(v84 + 8 * (v83 * v89)) = 0x3FF0000000000000;
      v21 = *&v17[v89];
      v85 += v86;
      --v75;
      ++v81;
      v87 += v86;
      v88 += v86;
      v16 = v89;
    }

    while (v89);
  }

  v107 = *(a2 + 8);
  if (v107)
  {
    v108 = *a2;
    v109 = 0.0;
    do
    {
      v110 = *v108++;
      v111 = v110;
      v112 = 0.0 - v110;
      if (v110 < 0.0)
      {
        v111 = v112;
      }

      if (v111 > v109)
      {
        v109 = v111;
      }

      --v107;
    }

    while (v107);
    v13 = v109 * v14[198];
  }

  if (v7 >= v6)
  {
    v113 = v6;
  }

  else
  {
    v113 = v7;
  }

  if (v113)
  {
    v114 = *a2;
    v115 = *a1;
    v116 = *a1 + 1;
    v117 = *(a1 + 1);
    if (v6 >= v7)
    {
      v118 = v7;
    }

    else
    {
      v118 = v6;
    }

    v119 = v116 * v118;
    v120 = v116 * v118 - 1;
    v121 = ~v115;
    v122 = v115 * (v118 - 1);
    v123 = v113 + v122 - 1;
    v124 = v7 - v113 + 1;
    v125 = v122 + v118;
    v126 = v113 + v115 * v118 - 1;
    do
    {
      v127 = v118 - 1;
      v128 = *&v114[(v118 - 1)];
      v129 = v120;
      v130 = v118;
      if (v118 >= v6)
      {
        v142 = 0.0 - v128;
        if (v128 >= 0.0)
        {
          v142 = *&v114[v127];
        }

        if (v142 <= v13)
        {
LABEL_127:
          v144 = v124;
          v145 = v123;
          if (v127 < v7)
          {
            do
            {
              *(v117 + 8 * v145++) = 0;
              --v144;
            }

            while (v144);
          }

          goto LABEL_129;
        }

        v132 = 1.0 / v128;
      }

      else
      {
        do
        {
          *(v117 + 8 * v129) = 0;
          ++v130;
          v129 += v115;
        }

        while (v130 < v6);
        v131 = 0.0 - v128;
        if (v128 >= 0.0)
        {
          v131 = v128;
        }

        if (v131 <= v13)
        {
          goto LABEL_127;
        }

        v132 = 1.0 / v128;
        if (v118 < v6)
        {
          v133 = v126;
          v134 = v119;
          v135 = v118;
          do
          {
            v136 = 0.0;
            if (v118 < v7)
            {
              v137 = v125;
              v138 = v134;
              v139 = v118;
              do
              {
                v136 = v136 + *(v117 + 8 * v137) * *(v117 + 8 * v138);
                ++v139;
                ++v138;
                ++v137;
              }

              while (v139 < v7);
            }

            if (v127 < v7)
            {
              v140 = 0;
              v141 = v132 * v136 / *(v117 + 8 * (v127 + v115 * v127));
              do
              {
                *(v117 + 8 * (v133 + v140)) = *(v117 + 8 * (v133 + v140)) + v141 * *(v117 + 8 * (v123 + v140));
                ++v140;
              }

              while (v124 != v140);
            }

            ++v135;
            v134 += v115;
            v133 += v115;
          }

          while (v135 < v6);
        }
      }

      if (v127 < v7)
      {
        v143 = 0;
        do
        {
          *(v117 + 8 * (v123 + v143)) = v132 * *(v117 + 8 * (v123 + v143));
          ++v143;
        }

        while (v124 != v143);
      }

LABEL_129:
      *(v117 + 8 * v116 * v127) = *(v117 + 8 * v116 * v127) + 1.0;
      --v118;
      v120 += v121;
      v123 += v121;
      ++v124;
      v119 += v121;
      v125 += v121;
      v126 += v121;
    }

    while (v127);
  }

  if (v6)
  {
    v146 = v6 - 1;
    v241 = 0;
    v147 = v6 - 1;
    v148 = v6;
    do
    {
      v240 = v147;
      v149 = v148 - 1;
      v245 = v148;
      v150 = (v148 - 2);
      v242 = v148 - 1;
      v243 = 0;
      if (((v148 - 1) & 0x80000000) == 0)
      {
LABEL_133:
        v151 = v245;
        v152 = v241;
        while (1)
        {
          v153 = *&v249[(v6 - 1) + v152];
          if (v153 < 0.0)
          {
            v153 = 0.0 - v153;
          }

          if (v15 + v153 == v15)
          {
            break;
          }

          v154 = *(*a2 + 8 * (v146 + v152 - 1));
          if (v154 < 0.0)
          {
            v154 = 0.0 - v154;
          }

          if (v15 + v154 == v15)
          {
            v155 = v146 + v152;
            v156 = v6 - 2 + v152;
            goto LABEL_145;
          }

          --v152;
          if (--v151 < 1)
          {
            v155 = -1;
            v156 = -1;
            goto LABEL_145;
          }
        }

        v155 = v146 + v152;
        goto LABEL_155;
      }

      while (1)
      {
        v156 = 0;
        v155 = v149;
LABEL_145:
        v157 = v155 - 1;
        if (v245 > v157)
        {
          v158 = 0.0;
          v159 = 1.0;
          do
          {
            v160 = *&v249[v157];
            *&v249[v157] = v158 * v160;
            v161 = v159 * v160;
            v162 = 0.0 - v159 * v160;
            if (v161 >= 0.0)
            {
              v162 = v161;
            }

            if (v15 + v162 == v15)
            {
              break;
            }

            v163 = *(*a2 + 8 * v157);
            v164 = DgnSqrt(v163 * v163 + v161 * v161);
            *(*a2 + 8 * v157) = v164;
            v165 = 1.0 / v164;
            v158 = v163 * v165;
            v159 = -(v161 * v165);
            if (v7)
            {
              v166 = *a1 * v156;
              v167 = *(a1 + 1);
              v168 = *a1 * v157;
              v169 = v7;
              do
              {
                v170 = *(v167 + 8 * v166);
                v171 = *(v167 + 8 * v168);
                *(v167 + 8 * v166) = v159 * v171 + v170 * v158;
                *(v167 + 8 * v168++) = v171 * v158 - v170 * v159;
                ++v166;
                --v169;
              }

              while (v169);
            }

            ++v157;
          }

          while (v157 < v245);
        }

        v149 = v242;
LABEL_155:
        v172 = *a2;
        v173 = *(*a2 + 8 * v149);
        if (v155 == v149)
        {
          break;
        }

        if (v243 == 59)
        {
          errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dmatrix.cpp", 1641, "mrecutil/dmatrix", 1, "%s", &unk_26286B638);
          v213 = 0;
          goto LABEL_178;
        }

        v174 = *&v172[v155];
        v175 = *&v172[v150];
        v176 = *&v249[v149];
        v177 = ((*&v249[v150] - v176) * (*&v249[v150] + v176) + (v175 - v173) * (v173 + v175)) / (v175 * (v176 + v176));
        v178 = DgnSqrt(v177 * v177 + 1.0);
        if (v177 <= 0.0)
        {
          v178 = -v178;
        }

        v179 = (v176 * (v175 / (v177 + v178) - v176) + (v174 - v173) * (v173 + v174)) / v174;
        v180 = *a2;
        if (v155 <= v150)
        {
          v181 = v155 + 1;
          v182 = 1.0;
          v183 = v155;
          v184 = 1.0;
          do
          {
            v185 = v183++;
            v186 = *&v249[v183];
            v187 = *&v180[v183];
            v188 = v182 * v186;
            v189 = DgnSqrt(v188 * v188 + v179 * v179);
            v190 = v184 * v186;
            *&v249[v185] = v189;
            v184 = v179 / v189;
            v182 = v182 * v186 / v189;
            v191 = v190 * (v188 / v189) + v174 * (v179 / v189);
            v192 = v190 * v184 - v174 * (v188 / v189);
            v193 = v187 * (v188 / v189);
            v194 = v187 * v184;
            v195 = *a3 * v185;
            v196 = *(a3 + 1);
            v197 = *a3 * v181;
            v198 = v6;
            do
            {
              v199 = *(v196 + 8 * v195);
              v200 = *(v196 + 8 * v197);
              *(v196 + 8 * v195) = v182 * v200 + v199 * v184;
              *(v196 + 8 * v197++) = v200 * v184 - v199 * v182;
              ++v195;
              --v198;
            }

            while (v198);
            v201 = DgnSqrt(v193 * v193 + v191 * v191);
            v180 = *a2;
            *(*a2 + 8 * v185) = v201;
            if (v201 != 0.0)
            {
              v202 = 1.0 / v201;
              v184 = v191 * v202;
              v182 = v193 * v202;
            }

            if (v7)
            {
              v203 = *a1 * v185;
              v204 = *(a1 + 1);
              v205 = *a1 * v181;
              v206 = v7;
              do
              {
                v207 = *(v204 + 8 * v203);
                v208 = *(v204 + 8 * v205);
                *(v204 + 8 * v203) = v182 * v208 + v207 * v184;
                *(v204 + 8 * v205++) = v208 * v184 - v207 * v182;
                ++v203;
                --v206;
              }

              while (v206);
            }

            v179 = v194 * v182 + v184 * v192;
            v174 = v184 * v194 - v182 * v192;
            ++v181;
          }

          while (v183 <= v150);
        }

        v209 = v249;
        v249[v155] = 0;
        v149 = v242;
        *&v209[v242] = v179;
        *&v180[v242] = v174;
        ++v243;
        v146 = v6 - 1;
        if ((v242 & 0x80000000) == 0)
        {
          goto LABEL_133;
        }
      }

      if (v173 < 0.0)
      {
        *&v172[v149] = -v173;
        v210 = *(a3 + 1);
        v211 = *a3 * v240;
        v212 = v6;
        do
        {
          *(v210 + 8 * v211) = -*(v210 + 8 * v211);
          ++v211;
          --v212;
        }

        while (v212);
      }

      v148 = v245 - 1;
      --v241;
      v147 = v240 - 1;
    }

    while (v149);
    if (v6 == 1)
    {
      goto LABEL_176;
    }

    for (i = 1; i != v6; ++i)
    {
      v216 = *(*a2 + 8 * i);
      DgnMatrix::getCol(a1, i, v248);
      DgnMatrix::getCol(a3, i, v247);
      v217 = i;
      do
      {
        v218 = v217 - 1;
        v219 = *(*a2 + 8 * (v217 - 1));
        if (v216 <= v219)
        {
          break;
        }

        *(*a2 + 8 * v217) = v219;
        DgnMatrix::getCol(a1, v217 - 1, v246);
        v220 = *a1;
        if (v220)
        {
          v221 = v246[0];
          v222 = *(a1 + 1);
          v223 = v220 * v217;
          do
          {
            v224 = *v221++;
            *(v222 + 8 * v223++) = v224;
            --v220;
          }

          while (v220);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(v246);
        DgnMatrix::getCol(a3, v217 - 1, v246);
        v225 = *a3;
        if (v225)
        {
          v226 = v246[0];
          v227 = *(a3 + 1);
          v228 = v225 * v217;
          do
          {
            v229 = *v226++;
            *(v227 + 8 * v228++) = v229;
            --v225;
          }

          while (v225);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(v246);
        --v217;
      }

      while (v218);
      if (i != v217)
      {
        *(*a2 + 8 * v217) = v216;
        v230 = *a1;
        if (v230)
        {
          v231 = v248[0];
          v232 = v230 * v217;
          v233 = *(a1 + 1);
          do
          {
            v234 = *v231++;
            *(v233 + 8 * v232++) = v234;
            --v230;
          }

          while (v230);
        }

        v235 = *a3;
        if (v235)
        {
          v236 = v247[0];
          v237 = v235 * v217;
          v238 = *(a3 + 1);
          do
          {
            v239 = *v236++;
            *(v238 + 8 * v237++) = v239;
            --v235;
          }

          while (v235);
        }
      }

      DgnPrimFixArray<double>::~DgnPrimFixArray(v247);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v248);
      v213 = 1;
    }
  }

  else
  {
LABEL_176:
    v213 = 1;
  }

LABEL_178:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v249);
  return v213;
}

void sub_2625714BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va1);
  _Unwind_Resume(a1);
}

uint64_t *DgnMatrix::setNumRowsAndCols(uint64_t *this, int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  v3 = a3 * a2;
  if (a3 * a2)
  {
    v4 = *(this + 4) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = this;
    this = MemChunkAlloc(8 * (a3 * a2), 0);
    v5[1] = this;
    *(v5 + 4) = v3;
  }

  return this;
}

uint64_t *DgnMatrix::getCol@<X0>(uint64_t *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *this;
  *(a3 + 8) = 0;
  *a3 = 0;
  if (v3)
  {
    v5 = this;
    this = MemChunkAlloc(8 * v3, 0);
    *a3 = this;
    *(a3 + 8) = v3;
    v7 = *v5;
    if (v7)
    {
      v8 = v7 * a2;
      v9 = v5[1];
      do
      {
        *this++ = *(v9 + 8 * v8++);
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t EnumParamRange::EnumParamRange(uint64_t result, uint64_t a2)
{
  *result = a2;
  if (**(a2 + 8))
  {
    v2 = 0;
    v3 = 1;
    v4 = a2;
    do
    {
      v5 = a2 + 32 * v2;
      if (v3 == 1)
      {
        v6 = *(v5 + 16);
        *(result + 8) = v6;
      }

      else
      {
        v6 = *(v5 + 16);
        if (*(result + 8) > *(v4 + 16))
        {
          *(result + 8) = v6;
        }

        if (*(result + 12) >= v6)
        {
          goto LABEL_9;
        }
      }

      *(result + 12) = v6;
LABEL_9:
      v2 = v3;
      v4 = a2 + 32 * v3++;
    }

    while (**(v4 + 8));
  }

  return result;
}

void EnumGlobalParam::~EnumGlobalParam(EnumGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

uint64_t DgnPrimFixArray<double>::~DgnPrimFixArray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    MemChunkFree(v2, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t LUDecomposeData::LUDecomposeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  DgnPrimFixArray<double>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  *(a1 + 24) = 0;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  if (a3)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 24, a3, 0);
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = 1;
  return a1;
}

double DgnPrimFixArray<double>::copyArraySlice(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (!a4 || *(a1 + 8))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    *a1 = MemChunkAlloc(8 * a4, 0);
    *(a1 + 8) = a4;
  }

  v8 = *a2;
  v9 = *a1;
  v10 = a4;
  do
  {
    result = *(v8 + 8 * a3);
    *v9++ = result;
    ++a3;
    --v10;
  }

  while (v10);
  return result;
}

unint64_t DgnPrimArray<unsigned int>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 4 * v6, 4 * v5, 4 * v5, 1);
  *(a1 + 12) = result >> 2;
  *a1 = v8;
  return result;
}

uint64_t DgnPrimArray<unsigned int>::~DgnPrimArray(uint64_t a1)
{
  if (*(a1 + 8) <= *(a1 + 12))
  {
    v2 = *a1;
    if (*a1)
    {
      MemChunkFree(v2, 0);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }

  return a1;
}

void (***DgnDelete<DgnStream>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

unint64_t DgnPrimArray<short>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 2 * v6, 2 * v5, 2 * v5, 1);
  *(a1 + 12) = result >> 1;
  *a1 = v8;
  return result;
}

void WarpChooser::~WarpChooser(WarpChooser *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 20) == 1)
  {
    v9 = ChannelMgr::smpChannelMgr;
    ChannelMgr::closeChannel(ChannelMgr::smpChannelMgr, *(this + 16), a3, a4, a5, a6, a7, a8);
    if (*(this + 8))
    {
      v16 = 0;
      do
      {
        ChannelMgr::closeChannel(v9, *(*(this + 3) + 4 * v16++), v10, v11, v12, v13, v14, v15);
      }

      while (v16 < *(this + 8));
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void WarpChooser::printSize(WarpChooser *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 112, &v83);
  if (v84)
  {
    v16 = v83;
  }

  else
  {
    v16 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26286B670, a3, &unk_26286B670, v16);
  DgnString::~DgnString(&v83);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26286B670);
  v21 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 12;
  }

  v22 = *(this + 2);
  v23 = *(this + 3);
  v24 = v21 + 4 * (v22 - 1) + 4;
  if (v22 <= 0)
  {
    v24 = v21;
  }

  if (v23 >= v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if (v23 >= v22)
  {
    v26 = v24 + 4 * (v23 - v22);
  }

  else
  {
    v26 = v21;
  }

  if (v23 >= v22)
  {
    v27 = 0;
  }

  else
  {
    v27 = 4 * v22;
  }

  v28 = (a3 + 1);
  v82 = a3;
  v29 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 113, &v83);
  if (v84)
  {
    v34 = v83;
  }

  else
  {
    v34 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, v28, &unk_26286B670, v29, v29, v34, v26, v25, v27);
  DgnString::~DgnString(&v83);
  *a4 += v26;
  *a5 += v25;
  *a6 += v27;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 114, &v83);
  if (v84)
  {
    v39 = v83;
  }

  else
  {
    v39 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, v28, &unk_26286B670, v29, v29, v39, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 116, &v83);
  if (v84)
  {
    v44 = v83;
  }

  else
  {
    v44 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, v28, &unk_26286B670, v29, v29, v44, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 118, &v83);
  if (v84)
  {
    v49 = v83;
  }

  else
  {
    v49 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, v28, &unk_26286B670, v29, v29, v49, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 12;
  }

  else
  {
    v50 = 16;
  }

  v51 = *(this + 8);
  v52 = *(this + 9);
  if (v52 >= v51)
  {
    v53 = 0;
    if (v51 > 0)
    {
      v50 += 4 * (v51 - 1) + 4;
    }

    v54 = v50 + 4 * (v52 - v51);
  }

  else
  {
    v53 = 4 * v51;
    v54 = v50;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 119, &v83);
  if (v84)
  {
    v59 = v83;
  }

  else
  {
    v59 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v28, &unk_26286B670, v29, v29, v59, v54, v50, v53);
  DgnString::~DgnString(&v83);
  *a4 += v54;
  *a5 += v50;
  *a6 += v53;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 4;
  }

  else
  {
    v60 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 120, &v83);
  if (v84)
  {
    v65 = v83;
  }

  else
  {
    v65 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, v28, &unk_26286B670, v29, v29, v65, v60, v60, 0);
  DgnString::~DgnString(&v83);
  *a4 += v60;
  *a5 += v60;
  v66 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 12;
  }

  v67 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v67 = 3;
  }

  v68 = *(this + 14);
  v69 = (((*(this + 15) - v68) + v68) << v67) + v66;
  v70 = (v68 << v67) + v66;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 121, &v83);
  if (v84)
  {
    v75 = v83;
  }

  else
  {
    v75 = &unk_26286B670;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v28, &unk_26286B670, v29, v29, v75, v69, v70, 0);
  DgnString::~DgnString(&v83);
  *a4 += v69;
  *a5 += v70;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/choosew.cpp", 122, &v83);
  if (v84)
  {
    v80 = v83;
  }

  else
  {
    v80 = &unk_26286B670;
  }

  v81 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v82, &unk_26286B670, (35 - v82), (35 - v82), v80, *a4, *a5, *a6);
  DgnString::~DgnString(&v83);
}

void sub_262571F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnDelete<UttFeatureArraySynchronizedArray>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnArray<DgnPrimArray<unsigned char>>::releaseAll(result + 8);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnArray<DgnPrimArray<unsigned char>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t DgnIArray<Utterance *>::~DgnIArray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    MemChunkFree(v2, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

unint64_t DgnPrimArray<unsigned char>::copyArraySlice(unint64_t result, void *a2, int a3, unsigned int a4)
{
  v7 = result;
  v8 = a4;
  if (*(result + 12) >= a4)
  {
    *(result + 8) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    result = realloc_array(*result, &v10, a4, *(result + 8), *(result + 8), 1);
    *v7 = v10;
    *(v7 + 8) = a4;
    *(v7 + 12) = result;
  }

  v9 = 0;
  do
  {
    *(*v7 + v9) = *(*a2 + (a3 + v9));
    ++v9;
  }

  while (v8 != v9);
  return result;
}

uint64_t TParam::TParam(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_287523BC8;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v12 = a1 + 64;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 8) = a2;
  MEMORY[0x26672AF30](a1 + 16, a3);
  MEMORY[0x26672AF30](a1 + 40, a4);
  *(a1 + 112) = a5;
  MEMORY[0x26672AF30](v12, a6);
  MEMORY[0x26672AF30](a1 + 88, a7);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return a1;
}

void sub_262572220(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  TParam::TParam(v1);
  _Unwind_Resume(a1);
}

uint64_t TParam::TParam(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_287523BC8;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 8) = a2;
  MEMORY[0x26672AF30](a1 + 16, a3);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_2625722D4(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  TParam::TParam(v1);
  _Unwind_Resume(a1);
}

void TParam::~TParam(void **this)
{
  *this = &unk_287523BC8;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t TParam::getValidConfig(TParam *this, uint64_t a2)
{
  v2 = *(this + 14);
  while (((v2 >> (a2 + 33)) & 1) == 0)
  {
    if ((v2 >> (a2 + 9)))
    {
      return a2;
    }

    a2 = *(*(*(this + 17) + 72) + 32 * a2);
  }

  a2 += 24;
  return a2;
}

uint64_t TParam::getValidOriginalConfig(TParam *this, uint64_t a2)
{
    ;
  }

  return a2;
}

uint64_t TParam::notifyChange(uint64_t this, uint64_t a2)
{
  v2 = *(this + 136);
  if (v2)
  {
    v3 = v2[17];
    v2[17] = a2;
    this = (*(*v2 + 16))(v2, this);
    v2[17] = v3;
  }

  return this;
}

uint64_t TParam::needSave(TParam *this)
{
  if ((*(this + 111) & 0x8000000000000000) != 0)
  {
    if (*(this + 12))
    {
      return 0;
    }
  }

  else if (*(this + 111))
  {
    return 0;
  }

  if (TParam::flagsSet(this, 8))
  {
    return 1;
  }

  if ((*(*(this + 17) + 80) - *(*(this + 17) + 72)) >> 5 != 1)
  {
    v3 = *(this + 14);
    for (i = 34; ((v3 >> (i - 24)) & 1) == 0 && ((v3 >> i) & 1) == 0; ++i)
    {
      v5 = i - 32;
      if (v5 > ((*(*(this + 17) + 80) - *(*(this + 17) + 72)) >> 5) - 1)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t TParam::flagsSet(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112) & a2;
  v4 = a2;
  return std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,64ul>,true,true>(&v3, 0, &v4, 0, &v4);
}

BOOL TBoolParam::setValue(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v24 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v24);
  v7 = v24;
  if (v24)
  {
    v8 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v22);
    v9 = v23;
    v10 = v22[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v15 = v22;
    }

    else
    {
      v15 = v10;
    }

    if (v21 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is out of range, was '%s', expected a BOOLean.\n", v11, v12, v13, v14, v15, v16);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  else
  {
    *(a2 + a1 + 176) = v6;
    *(a1 + 112) |= 1 << (a2 + 33);
    v17 = *(a1 + 136);
    if (v17)
    {
      v18 = v17[17];
      v17[17] = a2;
      (*(*v17 + 16))(v17, a1);
      v17[17] = v18;
    }
  }

  return v7;
}

void sub_2625726F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

BOOL TBoolParam::setValueOriginal(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v22 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v22);
  v7 = v22;
  if (v22)
  {
    v8 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v20);
    v9 = v21;
    v10 = v20[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v15 = v20;
    }

    else
    {
      v15 = v10;
    }

    if (v19 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is out of range, was '%s', expected a BOOLean.\n", v11, v12, v13, v14, v15, v16);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    TBoolParam::setOriginal(a1, a2, v6);
  }

  return v7;
}

void sub_2625728B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TBoolParam::setOriginal(uint64_t this, uint64_t a2, char a3)
{
  *(this + a2 + 152) = a3;
  *(this + 112) |= 1 << (a2 + 9);
  v3 = *(this + 136);
  if (v3)
  {
    v4 = v3[17];
    v3[17] = a2;
    this = (*(*v3 + 16))(v3, this);
    v3[17] = v4;
  }

  return this;
}

TIntParam *TIntParam::TIntParam(TIntParam *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  *TParam::TParam(a1, 2, a2, a3, a4, a8, a9) = &unk_287522CC8;
  if (a5 > a6 || (*(a1 + 38) = a5, *(a1 + 39) = a6, TIntParam::setOriginal(a1, 0, a7)))
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "Failed to create Int param");
    *__p = byte_287529580;
    if (SHIBYTE(v21) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v20[0], v20[1]);
    }

    else
    {
      *&__p[8] = *v20;
      v23 = v21;
    }

    *__p = &unk_287527740;
    if (v23 >= 0)
    {
      v16 = &__p[8];
    }

    else
    {
      v16 = *&__p[8];
    }

    conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 205, v14, v15);
    *__p = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed to create Int param");
    *exception = byte_287529580;
    v18 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v18, *__p, *&__p[8]);
    }

    else
    {
      v19 = *__p;
      exception[3] = *&__p[16];
      *&v18->__r_.__value_.__l.__data_ = v19;
    }

    *exception = &unk_287527740;
  }

  return a1;
}

{
  return TIntParam::TIntParam(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_262572BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      TParam::~TParam(v25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t TIntParam::setOriginal(TIntParam *this, uint64_t a2, int a3)
{
  if (*(this + 38) > a3 || *(this + 39) < a3)
  {
    return 1;
  }

  *(this + a2 + 40) = a3;
  *(this + 14) |= 1 << (a2 + 9);
  v4 = *(this + 17);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[17];
  v4[17] = a2;
  (*(*v4 + 16))(v4, this);
  result = 0;
  v4[17] = v5;
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void TLogicException::~TLogicException(void **this)
{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

uint64_t TIntParam::TIntParam(uint64_t a1, uint64_t a2)
{
  v3 = TParam::TParam(a1, 2, a2);
  *v3 = &unk_287522CC8;
  *(v3 + 19) = 0;
  if (TIntParam::setOriginal(v3, 0, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "Failed to create Int param");
    *__p = byte_287529580;
    if (SHIBYTE(v12) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v11[0], v11[1]);
    }

    else
    {
      *&__p[8] = *v11;
      v14 = v12;
    }

    *__p = &unk_287527740;
    if (v14 >= 0)
    {
      v7 = &__p[8];
    }

    else
    {
      v7 = *&__p[8];
    }

    conditionalAssert(v7, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 215, v5, v6);
    *__p = byte_287529580;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed to create Int param");
    *exception = byte_287529580;
    v9 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v9, *__p, *&__p[8]);
    }

    else
    {
      v10 = *__p;
      exception[3] = *&__p[16];
      *&v9->__r_.__value_.__l.__data_ = v10;
    }

    *exception = &unk_287527740;
  }

  return a1;
}

void sub_262572FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      TParam::~TParam(v25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t TIntParam::setValue(uint64_t a1, uint64_t a2, signed int *a3)
{
  v21 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v21);
  if (!v21 && v6 >= *(a1 + 152) && v6 <= *(a1 + 156))
  {
    return TIntParam::set(a1, a2, v6);
  }

  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *v7;
  }

  loggableUnicode(v7, v19);
  v8 = v20;
  v9 = v19[0];
  loggableUnicode(a3, __p);
  if (v8 >= 0)
  {
    v14 = v19;
  }

  else
  {
    v14 = v9;
  }

  if (v18 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  tknPrintf("Error: %s : parameter value is out of range, was '%s', expected an int in the range [%d,%d].\n", v10, v11, v12, v13, v14, v15, *(a1 + 152), *(a1 + 156));
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return 1;
}

void sub_2625731B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x26672B1B0](v25, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TIntParam::set(TIntParam *this, uint64_t a2, int a3)
{
  if (*(this + 38) > a3 || *(this + 39) < a3)
  {
    return 1;
  }

  *(this + a2 + 64) = a3;
  *(this + 14) |= 1 << (a2 + 33);
  v4 = *(this + 17);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[17];
  v4[17] = a2;
  (*(*v4 + 16))(v4, this);
  result = 0;
  v4[17] = v5;
  return result;
}

uint64_t TIntParam::setValueOriginal(uint64_t a1, uint64_t a2, signed int *a3)
{
  v21 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v21);
  if (!v21 && v6 >= *(a1 + 152) && v6 <= *(a1 + 156))
  {
    return TIntParam::setOriginal(a1, a2, v6);
  }

  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *v7;
  }

  loggableUnicode(v7, v19);
  v8 = v20;
  v9 = v19[0];
  loggableUnicode(a3, __p);
  if (v8 >= 0)
  {
    v14 = v19;
  }

  else
  {
    v14 = v9;
  }

  if (v18 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  tknPrintf("Error: %s : parameter value is out of range, was '%s', expected an int in the range [%d,%d].\n", v10, v11, v12, v13, v14, v15, *(a1 + 152), *(a1 + 156));
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return 1;
}

void sub_262573434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x26672B1B0](v25, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TIntParam::getValue(TParam *a1, uint64_t a2, uint64_t a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
  ValidConfig = TParam::getValidConfig(a1, a2);
  MEMORY[0x26672B0B0](&v14, *(a1 + ValidConfig + 40));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_262573698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::wostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = &unk_28752AFF0;
  *(a1 + 112) = &unk_28752B018;
  std::ios_base::init((a1 + 112), (a1 + 8));
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  std::wstringbuf::basic_stringbuf[abi:ne200100](a1 + 8, 16);
  return a1;
}

void sub_2625737A4(_Unwind_Exception *a1)
{
  std::wostream::~wostream();
  MEMORY[0x26672B170](v1);
  _Unwind_Resume(a1);
}

uint64_t std::wostringstream::~wostringstream(uint64_t a1)
{
  v2 = a1 + 112;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));
  std::wostream::~wostream();
  MEMORY[0x26672B170](v2);
  return a1;
}

uint64_t TIntParam::getValueOriginal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
    ;
  }

  MEMORY[0x26672B0B0](&v14, *(a1 + 4 * a2 + 160));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_262573AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

BOOL TFloatParam::setValue(uint64_t a1, uint64_t a2, __int32 *a3)
{
  v22 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v22);
  v7 = v22;
  if (v22)
  {
    v8 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v20);
    v9 = v21;
    v10 = v20[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v15 = v20;
    }

    else
    {
      v15 = v10;
    }

    if (v19 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is not a float, was '%s'.\n", v11, v12, v13, v14, v15, v16);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    TFloatParam::set(a1, a2, v6);
  }

  return v7;
}

void sub_262573C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::set(uint64_t this, uint64_t a2, double a3)
{
  *(this + 8 * a2 + 344) = a3;
  *(this + 112) |= 1 << (a2 + 33);
  v3 = *(this + 136);
  if (v3)
  {
    v4 = v3[17];
    v3[17] = a2;
    this = (*(*v3 + 16))(v3, this);
    v3[17] = v4;
  }

  return this;
}

BOOL TFloatParam::setValueOriginal(uint64_t a1, uint64_t a2, __int32 *a3)
{
  v22 = 0;
  {
    operator new();
  }

  v6 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a3, &v22);
  v7 = v22;
  if (v22)
  {
    v8 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v8 = *v8;
    }

    loggableUnicode(v8, v20);
    v9 = v21;
    v10 = v20[0];
    loggableUnicode(a3, __p);
    if (v9 >= 0)
    {
      v15 = v20;
    }

    else
    {
      v15 = v10;
    }

    if (v19 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    tknPrintf("Error: %s : parameter value is not a float, was '%s'.\n", v11, v12, v13, v14, v15, v16);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    TFloatParam::setOriginal(a1, a2, v6);
  }

  return v7;
}

void sub_262573E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::setOriginal(uint64_t this, uint64_t a2, double a3)
{
  *(this + 8 * a2 + 152) = a3;
  *(this + 112) |= 1 << (a2 + 9);
  v3 = *(this + 136);
  if (v3)
  {
    v4 = v3[17];
    v3[17] = a2;
    this = (*(*v3 + 16))(v3, this);
    v3[17] = v4;
  }

  return this;
}

uint64_t TFloatParam::getValue(TParam *a1, uint64_t a2, uint64_t a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
  ValidConfig = TParam::getValidConfig(a1, a2);
  MEMORY[0x26672B0A0](&v14, *(a1 + ValidConfig + 19));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_262574174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::getValueOriginal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *(v14 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v14 + v6));
  std::ios_base::imbue((&v14 + v6), v7);
  std::locale::~locale(&__p);
  v8 = *(&v15.__einp_ + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v17, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v13);
    ;
  }

  MEMORY[0x26672B0A0](&v14, *(a1 + 8 * a2 + 152));
  std::wstringbuf::str(&__p, &v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__str_.__r_.__value_.__l.__data_);
  }

  v15.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v15.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v16);
}

void sub_2625743D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a16);
  _Unwind_Resume(a1);
}

void *TStringParam::TStringParam(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 *a5, uint64_t a6, uint64_t a7)
{
  v9 = TParam::TParam(a1, 4, a2, a3, a4, a6, a7);
  *v9 = &unk_287528A10;
  bzero(v9 + 19, 0x4C8uLL);
  if (TStringParam::setOriginal(a1, 0, a5))
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "Failed to create String param");
    *__p = &unk_287529580;
    if (SHIBYTE(v18) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v17[0], v17[1]);
    }

    else
    {
      *&__p[8] = *v17;
      v20 = v18;
    }

    *__p = &unk_287527740;
    if (v20 >= 0)
    {
      v13 = &__p[8];
    }

    else
    {
      v13 = *&__p[8];
    }

    conditionalAssert(v13, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 338, v11, v12);
    *__p = &unk_287529580;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed to create String param");
    *exception = &unk_287529580;
    v15 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v15, *__p, *&__p[8]);
    }

    else
    {
      v16 = *__p;
      exception[3] = *&__p[16];
      *&v15->__r_.__value_.__l.__data_ = v16;
    }

    *exception = &unk_287527740;
  }

  return a1;
}

void sub_262574600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v27)
  {
LABEL_6:
    __p = v25 + 169;
    std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p = v25 + 166;
    std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p = v25 + 163;
    std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
    v29 = v25 + 160;
    v30 = -1152;
    while (1)
    {
      if (*(v29 + 23) < 0)
      {
        operator delete(*v29);
      }

      v29 -= 3;
      v30 += 24;
      if (!v30)
      {
        TParam::~TParam(v25);
        _Unwind_Resume(a1);
      }
    }
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t TStringParam::setOriginal(void *a1, uint64_t a2, __int32 *a3)
{
  v6 = a1[163];
  v7 = a1[164] - v6;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = v6;
      if (*(v6 + 23) < 0)
      {
        v10 = *v6;
      }

      if (!wcscmp(a3, v10))
      {
        break;
      }

      v6 += 24;
      if (!--v9)
      {
        return 1;
      }
    }
  }

  MEMORY[0x26672AF30](&a1[3 * a2 + 19], a3);
  a1[14] |= 1 << (a2 + 9);
  v12 = a1[17];
  if (!v12)
  {
    return 0;
  }

  v13 = v12[17];
  v12[17] = a2;
  (*(*v12 + 16))(v12, a1);
  result = 0;
  v12[17] = v13;
  return result;
}

void *TStringParam::TStringParam(void *a1, uint64_t a2)
{
  v3 = TParam::TParam(a1, 4, a2);
  *v3 = &unk_287528A10;
  bzero(v3 + 19, 0x4C8uLL);
  TStringParam::setOriginal(a1, 0, &dword_26286B714);
  return a1;
}

void sub_262574860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 169;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 166;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 163;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  TStringParam::TStringParam(v10);
  TParam::~TParam(v10);
  _Unwind_Resume(a1);
}

uint64_t TStringParam::setAllowables(uint64_t a1, std::wstring **a2, std::wstring **a3, std::wstring **a4)
{
  if (a3)
  {
    v8 = a3[1];
    v9 = v8 - *a3;
    if (v9 != a2[1] - *a2)
    {
      v14 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v14 = *v14;
      }

      loggableUnicode(v14, __p);
      if (v27 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      tknPrintf("Error: %s : Mismatch in the number of (allowable, grammar) entries", v15, v16, v17, v18, v19);
      goto LABEL_24;
    }

    v10 = (a1 + 1328);
    if ((a1 + 1328) != a3)
    {
      std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>(v10, *a3, v8, 0xAAAAAAAAAAAAAAABLL * (v9 >> 3));
    }
  }

  if (!a4)
  {
LABEL_9:
    if ((a1 + 1304) != a2)
    {
      std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>((a1 + 1304), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }

    return 0;
  }

  v11 = a4[1];
  v12 = v11 - *a4;
  if (v12 == a2[1] - *a2)
  {
    if ((a1 + 1352) != a4)
    {
      std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>((a1 + 1352), *a4, v11, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3));
    }

    goto LABEL_9;
  }

  v20 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v20 = *v20;
  }

  loggableUnicode(v20, __p);
  if (v27 >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  tknPrintf("Error: %s : Mismatch in the number of (allowable, description) entries", v21, v22, v23, v24, v25);
LABEL_24:
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_262574A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TStringParam::set(void *a1, uint64_t a2, __int32 *a3)
{
  v6 = a1[163];
  v7 = a1[164] - v6;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = v6;
      if (*(v6 + 23) < 0)
      {
        v10 = *v6;
      }

      if (!wcscmp(a3, v10))
      {
        break;
      }

      v6 += 24;
      if (!--v9)
      {
        return 1;
      }
    }
  }

  MEMORY[0x26672AF30](&a1[3 * a2 + 91], a3);
  a1[14] |= 1 << (a2 + 33);
  v12 = a1[17];
  if (!v12)
  {
    return 0;
  }

  v13 = v12[17];
  v12[17] = a2;
  (*(*v12 + 16))(v12, a1);
  result = 0;
  v12[17] = v13;
  return result;
}

uint64_t TStringParam::getGrammarValue(TParam *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 24 * TParam::getValidConfig(a1, a2));
  v6 = (v5 + 19);
  if (*(v5 + 175) < 0)
  {
    v6 = *v6;
  }

  v7 = *(a1 + 163);
  v8 = *(a1 + 164) - v7;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  while (1)
  {
    v13 = (v7 + v9);
    if (*(v7 + v9 + 23) < 0)
    {
      v13 = *v13;
    }

    if (!wcscmp(v6, v13))
    {
      break;
    }

    ++v10;
    v9 += 24;
    if (v12 == v10)
    {
      goto LABEL_11;
    }
  }

  v17 = *(a1 + 166);
  if (v17 != *(a1 + 167))
  {
    v15 = (v17 + v9);
    if ((*(v17 + v9 + 23) & 0x80000000) == 0 || (v15 = *v15) != 0)
    {
      v14 = a3;
      goto LABEL_12;
    }
  }

  if (*(*(a1 + 17) + 120) > 4uLL)
  {
LABEL_11:
    v14 = a3;
    v15 = v6;
LABEL_12:

    return TBuffer<wchar_t>::assign(v14, v15);
  }

  std::wostringstream::basic_ostringstream[abi:ne200100](&v20);
  MEMORY[0x26672B0C0](&v20, v10);
  std::wstringbuf::str(&__p, &v21);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  TBuffer<wchar_t>::assign(a3, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__str_.__r_.__value_.__l.__data_);
  }

  v21.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v21.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x26672B170](&v22);
}

void sub_262574D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::wostringstream::~wostringstream(&a15);
  _Unwind_Resume(a1);
}

void TParamManager::~TParamManager(TParamManager *this)
{
  *this = &unk_2875282B0;
  v2 = this + 48;
  v3 = *(this + 6);
  v4 = this + 56;
  if (v3 != this + 56)
  {
    do
    {
      v5 = *(v3 + 5);
      if (v5 && (v6 = v5 - 1, v7 = *(this + 3), v6 < (*(this + 4) - v7) >> 3))
      {
        v8 = *(v7 + 8 * v6);
        v9 = TParam::flagsSet(v8, 8);
        if (v8)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          (*(*v8 + 8))(v8);
        }
      }

      else
      {
        TParam::flagsSet(0, 8);
      }

      v11 = *(v3 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v3 + 2);
          v10 = *v12 == v3;
          v3 = v12;
        }

        while (!v10);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 96, *(this + 13));
  v14 = (this + 72);
  std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v2, *(this + 7));
  v13 = *(this + 3);
  if (v13)
  {
    *(this + 4) = v13;
    operator delete(v13);
  }

  TRegisterable<TParamManager>::~TRegisterable(this);
}

{
  TParamManager::~TParamManager(this);

  JUMPOUT(0x26672B1B0);
}

void *TRegisterable<TParamManager>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528250;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TParamManager>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

uint64_t TParamManager::find@<X0>(uint64_t a1@<X0>, const __int32 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 48, &v5);
  *a3 = result;
  return result;
}

uint64_t TParamManager::add(TParamManager *this, TParam *a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  if (v5 >= v4)
  {
    v7 = *(this + 3);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(this + 24, v11);
    }

    *(8 * v8) = a2;
    v6 = 8 * v8 + 8;
    v12 = *(this + 3);
    v13 = *(this + 4) - v12;
    v14 = (8 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = *(this + 3);
    *(this + 3) = v14;
    *(this + 4) = v6;
    *(this + 5) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 4) = v6;
  v16 = (a2 + 16);
  if (*(a2 + 39) < 0)
  {
    v16 = *v16;
  }

  v17 = (v6 - *(this + 3)) >> 3;
  v19[0] = v16;
  v19[2] = v19;
  *(std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const*&&>,std::tuple<>>(this + 48, v19) + 40) = v17;
  *(a2 + 17) = this;
  return (*(this + 4) - *(this + 3)) >> 3;
}

unint64_t TParamManager::newConfig(void *a1, __int32 *a2, uint64_t a3)
{
  v5 = a1 + 9;
  *__p = a3;
  std::wstring::basic_string[abi:ne200100]<0>(&__p[8], a2);
  v10 = a1[10];
  v11 = a1[11];
  if (v10 >= v11)
  {
    v14 = (v10 - *v5) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v16 = v11 - *v5;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    v38 = v5;
    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::wstring>>>(v5, v17);
    }

    v18 = 32 * v14;
    *v18 = *__p;
    v19 = *&__p[8];
    *(v18 + 24) = v35;
    *(v18 + 8) = v19;
    *&__p[16] = 0;
    v35 = 0;
    *&__p[8] = 0;
    v13 = 32 * v14 + 32;
    v20 = a1[9];
    v21 = a1[10] - v20;
    v22 = v18 - v21;
    memcpy((v18 - v21), v20, v21);
    v23 = a1[9];
    a1[9] = v22;
    a1[10] = v13;
    v24 = a1[11];
    a1[11] = 0;
    *&v36[16] = v23;
    v37 = v24;
    *v36 = v23;
    *&v36[8] = v23;
    std::__split_buffer<std::pair<unsigned long,std::wstring>>::~__split_buffer(v36);
    v25 = SHIBYTE(v35);
    a1[10] = v13;
    if (v25 < 0)
    {
      operator delete(*&__p[8]);
      v13 = a1[10];
    }
  }

  else
  {
    *v10 = *__p;
    v12 = *&__p[8];
    *(v10 + 24) = v35;
    *(v10 + 8) = v12;
    v13 = v10 + 32;
    a1[10] = v10 + 32;
  }

  v26 = ((v13 - *v5) >> 5) - 1;
  if (v26 >= 0x18)
  {
    tknPrintf("Error: Too many parameter configurations were defined; max number of configurations is %lld\n", v6, v7, v8, v9, 22);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v36 = byte_287529580;
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v36[8], *__p, *&__p[8]);
    }

    else
    {
      *&v36[8] = *__p;
      v37 = *&__p[16];
    }

    *v36 = &unk_287528000;
    if (v37 >= 0)
    {
      v30 = &v36[8];
    }

    else
    {
      v30 = *&v36[8];
    }

    conditionalAssert(v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 556, v28, v29);
    *v36 = byte_287529580;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(*&v36[8]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v36, &byte_262899963);
    *exception = byte_287529580;
    v32 = (exception + 1);
    if ((v36[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v32, *v36, *&v36[8]);
    }

    else
    {
      v33 = *v36;
      exception[3] = *&v36[16];
      *&v32->__r_.__value_.__l.__data_ = v33;
    }

    *exception = &unk_287528000;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v36, a2);
  *__p = v36;
  *(std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring&&>,std::tuple<>>((a1 + 12), v36) + 56) = v26;
  if ((v36[23] & 0x80000000) != 0)
  {
    operator delete(*v36);
  }

  return v26;
}

void sub_262575464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, void *a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

void TDataException::~TDataException(void **this)
{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

_BYTE *std::wstring::basic_string[abi:ne200100]<0>(_BYTE *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  if (v4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1, v6);
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, a2, 4 * v4);
  }

  *&a1[4 * v5] = 0;
  return a1;
}

void TParamManager::initParam(uint64_t a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6)
{
  v571 = *MEMORY[0x277D85DE8];
  v525 = xmmword_26286B680;
  v524 = "N";
  if (a4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v526 = -1;
  v527 = "D";
  v528 = v12;
  v529 = xmmword_26286B690;
  v531 = xmmword_26286B6A0;
  v530 = "V";
  v534 = xmmword_26286B6A0;
  v532 = 4;
  v533 = "O";
  v535 = 4;
  v536 = "F";
  v537 = xmmword_26286B6A0;
  v540 = xmmword_26286B6A0;
  v538 = 4;
  v539 = "S";
  v543 = xmmword_26286B6A0;
  v541 = 4;
  v542 = "F";
  v544 = -1;
  v546 = xmmword_26286B6A0;
  v545 = "M";
  v547 = -1;
  v548 = "M";
  v549 = 2;
  v550 = xmmword_26286B690;
  v551 = "A";
  v552 = 2;
  v553 = xmmword_26286B690;
  v554 = "D";
  v555 = v12;
  v556 = xmmword_26286B6B0;
  v557 = "V";
  v558 = 2;
  v559 = xmmword_26286B6B0;
  v560 = "R";
  v561 = 2;
  v562 = xmmword_26286B6C0;
  v13 = TFileObject::verify(a2, &v524, 13, 1);
  v521 = v13;
  if (v13)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
    *v563 = byte_287529580;
    if (SHIBYTE(v523) < 0)
    {
      std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
    }

    else
    {
      *&v563[8] = __p;
      v564 = v523;
    }

    *v563 = &unk_287526298;
    if (v564 >= 0)
    {
      v282 = &v563[8];
    }

    else
    {
      v282 = *&v563[8];
    }

    conditionalAssert(v282, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 768, v257, v258);
    *v563 = byte_287529580;
    if (SHIBYTE(v564) < 0)
    {
      operator delete(*&v563[8]);
    }

    if (SHIBYTE(v523) < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
    *exception = byte_287529580;
    v284 = (exception + 1);
    if ((v563[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v284, *v563, *&v563[8]);
    }

    else
    {
      v356 = *v563;
      exception[3] = *&v563[16];
      *&v284->__r_.__value_.__l.__data_ = v356;
    }

    *exception = &unk_287526298;
  }

  v520 = 0;
  v14 = (*(a1 + 80) - *(a1 + 72)) >> 5;
  *v563 = 0;
  std::vector<wchar_t const*>::vector[abi:ne200100](v519, v14);
  v15 = (*(a1 + 80) - *(a1 + 72)) >> 5;
  *v563 = 0;
  std::vector<wchar_t const*>::vector[abi:ne200100](v518, v15);
  v515 = 0;
  v516 = 0;
  v517 = 0;
  v512 = 0;
  v513 = 0;
  v514 = 0;
  v509 = 0;
  v510 = 0;
  v511 = 0;
  Config = TParamManager::getConfig(a1, "F");
  v500 = TParamManager::getConfig(a1, "S");
  v498 = a5;
  v495 = a6;
  v505 = a4;
  v504 = a2;
  v16 = *(a2 + 24);
  if (v16)
  {
    v17 = 0;
    v507 = 0;
    v508 = 0;
    v506 = 0;
    v503 = 0;
    v499 = 0;
    v497 = 0;
    v18 = 0;
    v496 = 0;
    while (1)
    {
      v19 = *(v16 + 8);
      if (!wcscmp(v19, "N"))
      {
        v37 = TFileObject::verify(v16, 0, 0);
        v521 |= v37;
        v520 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "D"))
      {
        v39 = TFileObject::verify(v16, 0, 1);
        v521 |= v39;
        v17 = *(v16 + 24);
        goto LABEL_134;
      }

      v20 = v17;
      if (!wcscmp(v19, "O") || !wcscmp(v19, "V"))
      {
        v38 = TFileObject::verify(v16, 0, a3 == 4);
        v521 |= v38;
        v508 = *(v16 + 24);
        goto LABEL_134;
      }

      v21 = v18;
      if (!wcscmp(v19, "D"))
      {
        break;
      }

      if (!wcscmp(v19, "V"))
      {
        if (*(v16 + 40))
        {
          loggableFileObject(v16);
          v44 = v563;
          if (v563[23] < 0)
          {
            v44 = *v563;
          }

LABEL_36:
          tknPrintf("Error: %sBad attribute declaration, expected an object\n", v40, v41, v42, v43, v44);
LABEL_37:
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          v521 = 1;
          goto LABEL_134;
        }

        v67 = *(v16 + 24);
        if (!v67)
        {
          goto LABEL_134;
        }

        while (2)
        {
          v68 = TParamManager::getConfig(a1, *(v67 + 8));
          if ((v68 + 1) <= 1)
          {
            loggableFileObject(v16);
            v69 = v563[23];
            v70 = *v563;
            loggableUnicode(*(v67 + 8), &__p);
            v75 = v563;
            if (v69 < 0)
            {
              v75 = v70;
            }

            p_p = &__p;
            if (v523 < 0)
            {
              p_p = __p;
            }

            tknPrintf("Error: %sInvalid configuration name: '%s'\n", v71, v72, v73, v74, v75, p_p);
            goto LABEL_79;
          }

          v77 = TFileObject::verify(v67, 0, a3 == 4);
          v521 |= v77;
          if (*(v518[0] + v68))
          {
            loggableFileObject(v16);
            v78 = v563[23];
            v79 = *v563;
            loggableUnicode(*(v67 + 8), &__p);
            v84 = v563;
            if (v78 < 0)
            {
              v84 = v79;
            }

            v85 = &__p;
            if (v523 < 0)
            {
              v85 = __p;
            }

            tknPrintf("Error: %sDuplicate parameter setting for '%s' configuration\n", v80, v81, v82, v83, v84, v85);
LABEL_79:
            v18 = v21;
            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            if ((v563[23] & 0x80000000) != 0)
            {
              operator delete(*v563);
            }

            v521 = 1;
          }

          else
          {
            *(v518[0] + v68) = *(v67 + 24);
          }

          v67 = *(v67 + 16);
          if (!v67)
          {
            goto LABEL_134;
          }

          continue;
        }
      }

      if (!wcscmp(v19, "F"))
      {
        v45 = *(a1 + 120);
        *&v563[8] = xmmword_26286B6D0;
        *v563 = &dword_26286B714;
        v564 = -1;
        if (TFileObject::verify(v16, v563, 1, 1))
        {
          v507 = 0;
          v46 = 1;
          v17 = v20;
          goto LABEL_133;
        }

        v86 = *(v16 + 24);
        if (!v86)
        {
          v46 = 0;
          v507 = 0;
          v17 = v20;
          goto LABEL_132;
        }

        v507 = 0;
        v46 = 0;
        while (2)
        {
          if (TFileObject::verify(v86, 0, 0))
          {
LABEL_90:
            v46 = 1;
            goto LABEL_113;
          }

          v87 = *(v86 + 3);
          if (!wcscmp(v87, "e"))
          {
            v93 = v507 | 1;
          }

          else
          {
            if (v45 <= 2 && !wcscmp(v87, "d"))
            {
              loggableFileObject(v16);
              v98 = &__p;
              if (v523 < 0)
              {
                v98 = __p;
              }

              tknPrintf("Warning: %s'deprecated' attribute is not functional\n", v94, v95, v96, v97, v98);
              goto LABEL_109;
            }

            if (!wcscmp(v87, "h"))
            {
              v93 = v507 | 0x20;
            }

            else if (!wcscmp(v87, "r"))
            {
              v93 = v507 | 0x100;
            }

            else
            {
              if (wcscmp(v87, "u"))
              {
                if (v45 > 2 || wcscmp(v87, "p"))
                {
                  loggableFileObject(v16);
                  v92 = &__p;
                  if (v523 < 0)
                  {
                    v92 = __p;
                  }

                  tknPrintf("Error: %sUnknown flag\n", v88, v89, v90, v91, v92);
                  if (SHIBYTE(v523) < 0)
                  {
                    operator delete(__p);
                  }

                  goto LABEL_90;
                }

                loggableFileObject(v16);
                v103 = &__p;
                if (v523 < 0)
                {
                  v103 = __p;
                }

                tknPrintf("Warning: %s'persistent' attribute is not functional\n", v99, v100, v101, v102, v103);
LABEL_109:
                if (SHIBYTE(v523) < 0)
                {
                  operator delete(__p);
                }

LABEL_113:
                v86 = *(v86 + 2);
                if (!v86)
                {
                  v17 = v20;
                  if ((~v507 & 0x21) == 0)
                  {
                    loggableFileObject(v16);
                    v109 = &__p;
                    if (v523 < 0)
                    {
                      v109 = __p;
                    }

                    tknPrintf("Error: %sParam cannot be exposed and hidden at the same time\n", v105, v106, v107, v108, v109);
                    if (SHIBYTE(v523) < 0)
                    {
                      operator delete(__p);
                    }

                    v46 = 1;
                    v17 = v20;
                  }

                  if ((v507 & 2) != 0)
                  {
LABEL_133:
                    v521 |= v46 & 1;
                    v18 = v21;
                    goto LABEL_134;
                  }

LABEL_132:
                  v507 |= 4uLL;
                  goto LABEL_133;
                }

                continue;
              }

              v93 = v507 | 2;
            }
          }

          break;
        }

        v507 = v93;
        goto LABEL_113;
      }

      if (!wcscmp(v19, "F"))
      {
        if (Config == -1)
        {
          tknPrintf("Error: Format detected but no format config exists\n", v22, v23, v24, v25);
          v521 = 1;
        }

        v66 = TFileObject::verify(v16, 0, a3 == 4);
        v521 |= v66;
        v506 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "S"))
      {
        if (v500 == -1)
        {
          tknPrintf("Error: SpellOut detected but no spellout config exists\n", v26, v27, v28, v29);
          v521 = 1;
        }

        v104 = TFileObject::verify(v16, 0, a3 == 4);
        v521 |= v104;
        v503 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "M"))
      {
        v110 = TFileObject::verify(v16, 0, 0);
        v521 |= v110;
        if (a3 != 2)
        {
          loggableFileObject(v16);
          if (v563[23] >= 0)
          {
            v339 = v563;
          }

          else
          {
            v339 = *v563;
          }

          tknPrintf("Error: %sInvalid attribute for given parameter type\n", v335, v336, v337, v338, v339);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v441 = &v563[8];
          }

          else
          {
            v441 = *&v563[8];
          }

          conditionalAssert(v441, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 905, v340, v341);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v442 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v442 = byte_287529580;
          v443 = (v442 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v443, *v563, *&v563[8]);
          }

          else
          {
            v475 = *v563;
            v442[3] = *&v563[16];
            *&v443->__r_.__value_.__l.__data_ = v475;
          }

          *v442 = &unk_287526298;
        }

        v499 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "M"))
      {
        v111 = TFileObject::verify(v16, 0, 0);
        v521 |= v111;
        if (a3 != 2)
        {
          loggableFileObject(v16);
          if (v563[23] >= 0)
          {
            v346 = v563;
          }

          else
          {
            v346 = *v563;
          }

          tknPrintf("Error: %sInvalid attribute for given parameter type\n", v342, v343, v344, v345, v346);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v450 = &v563[8];
          }

          else
          {
            v450 = *&v563[8];
          }

          conditionalAssert(v450, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 915, v347, v348);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v451 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v451 = byte_287529580;
          v452 = (v451 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v452, *v563, *&v563[8]);
          }

          else
          {
            v487 = *v563;
            v451[3] = *&v563[16];
            *&v452->__r_.__value_.__l.__data_ = v487;
          }

          *v451 = &unk_287526298;
        }

        v497 = *(v16 + 24);
        goto LABEL_134;
      }

      if (!wcscmp(v19, "A"))
      {
        v112 = *(a1 + 120);
        *&v563[8] = vdupq_n_s64(1uLL);
        *v563 = &dword_26286B714;
        v566 = xmmword_26286B6D0;
        v564 = -1;
        v565 = "G";
        v569 = xmmword_26286B6D0;
        v567 = -1;
        v568 = "D";
        v570 = -1;
        if (TFileObject::verify(v16, v563, 3, 1))
        {
          v113 = 1;
          goto LABEL_194;
        }

        v114 = *(v16 + 24);
        if (!v114)
        {
          v115 = 0;
LABEL_179:
          if (v513 != v512 && v516 - v515 != v513 - v512)
          {
            loggableFileObject(v16);
            v143 = &__p;
            if (v523 < 0)
            {
              v143 = __p;
            }

            tknPrintf("Error: %sMismatch in the counts of allowables and Grammar associations\n", v139, v140, v141, v142, v143);
            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            v115 = 1;
          }

          if (v510 != v509 && v516 - v515 != v510 - v509)
          {
            loggableFileObject(v16);
            v148 = &__p;
            if (v523 < 0)
            {
              v148 = __p;
            }

            tknPrintf("Error: %sMismatch in the counts of allowables and associated descriptions\n", v144, v145, v146, v147, v148);
            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            v115 = 1;
          }

          v113 = v115;
          if (a3)
          {
LABEL_194:
            v17 = v20;
            v521 |= v113 & 1;
            v496 = 1;
            if (a3 == 4 || a3 == 1)
            {
              goto LABEL_134;
            }

            if (a3)
            {
              goto LABEL_605;
            }
          }

          else
          {
            v17 = v20;
            if (((0xAAAAAAAAAAAAAAABLL * ((v516 - v515) >> 3)) | 2) != 2)
            {
              loggableFileObject(v16);
              v153 = &__p;
              if (v523 < 0)
              {
                v153 = __p;
              }

              tknPrintf("Error: %sBoth 'true' and 'false' must be defined for BOOLean allowables\n", v149, v150, v151, v152, v153);
              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              v113 = 1;
              v17 = v20;
            }

            v521 |= v113 & 1;
          }

          if (*(a1 + 120) <= 5uLL)
          {
LABEL_605:
            loggableFileObject(v16);
            if (v563[23] >= 0)
            {
              v408 = v563;
            }

            else
            {
              v408 = *v563;
            }

            tknPrintf("Error: %sInvalid attribute for given parameter type\n", v404, v405, v406, v407, v408);
            if ((v563[23] & 0x80000000) != 0)
            {
              operator delete(*v563);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
            *v563 = byte_287529580;
            if (SHIBYTE(v523) < 0)
            {
              std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
            }

            else
            {
              *&v563[8] = __p;
              v564 = v523;
            }

            *v563 = &unk_287526298;
            if (v564 >= 0)
            {
              v468 = &v563[8];
            }

            else
            {
              v468 = *&v563[8];
            }

            conditionalAssert(v468, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 927, v409, v410);
            *v563 = byte_287529580;
            if (SHIBYTE(v564) < 0)
            {
              operator delete(*&v563[8]);
            }

            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            v469 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
            *v469 = byte_287529580;
            v470 = (v469 + 1);
            if ((v563[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v470, *v563, *&v563[8]);
            }

            else
            {
              v491 = *v563;
              v469[3] = *&v563[16];
              *&v470->__r_.__value_.__l.__data_ = v491;
            }

            *v469 = &unk_287526298;
          }

          v496 = 1;
          goto LABEL_134;
        }

        v115 = 0;
        while (2)
        {
          if (TFileObject::verify(v114, 0, 1))
          {
LABEL_143:
            v115 = 1;
            goto LABEL_144;
          }

          v116 = *(v114 + 8);
          if (!wcscmp(v116, &dword_26286B714))
          {
            std::wstring::basic_string[abi:ne200100]<0>(&__p, *(v114 + 24));
            std::vector<std::wstring>::push_back[abi:ne200100](&v515, &__p);
            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            if (!a3)
            {
              v122 = *(v114 + 24);
              if (wcscmp(v122, "t") && wcscmp(v122, "f"))
              {
                loggableFileObject(v16);
                v127 = &__p;
                if (v523 < 0)
                {
                  v127 = __p;
                }

                tknPrintf("Error: %sBoolean allowables must be 'true' and 'false'\n", v123, v124, v125, v126, v127);
                goto LABEL_169;
              }

              v133 = v515;
              if (v516 - v515 == 48)
              {
                if (SHIBYTE(v515->__r_.__value_.__r.__words[2]) < 0)
                {
                  v133 = v515->__r_.__value_.__r.__words[0];
                }

                if (!wcscmp(v122, v133))
                {
                  loggableFileObject(v16);
                  v138 = &__p;
                  if (v523 < 0)
                  {
                    v138 = __p;
                  }

                  tknPrintf("Error: %sDuplicate BOOLean allowable\n", v134, v135, v136, v137, v138);
                  goto LABEL_169;
                }
              }
            }
          }

          else if (!wcscmp(v116, "G"))
          {
            std::wstring::basic_string[abi:ne200100]<0>(&__p, *(v114 + 24));
            std::vector<std::wstring>::push_back[abi:ne200100](&v512, &__p);
            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            if (!a3)
            {
              loggableFileObject(v16);
              v132 = &__p;
              if (v523 < 0)
              {
                v132 = __p;
              }

              tknPrintf("Error: %sGrammar attribute not supported in Boolean allowables\n", v128, v129, v130, v131, v132);
              goto LABEL_169;
            }
          }

          else if (!wcscmp(v116, "D"))
          {
            std::wstring::basic_string[abi:ne200100]<0>(&__p, *(v114 + 24));
            std::vector<std::wstring>::push_back[abi:ne200100](&v509, &__p);
            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            if (v112 <= 5)
            {
              loggableFileObject(v16);
              v121 = &__p;
              if (v523 < 0)
              {
                v121 = __p;
              }

              tknPrintf("Error: %sDescription attribute not supported in allowables if version < 6\n", v117, v118, v119, v120, v121);
LABEL_169:
              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              goto LABEL_143;
            }
          }

LABEL_144:
          v114 = *(v114 + 16);
          if (!v114)
          {
            goto LABEL_179;
          }

          continue;
        }
      }

      if (!wcscmp(v19, "R"))
      {
        v30 = TFileObject::verify(v16, 0, 0);
        v521 |= v30;
        v31 = TParamManager::nameToParam(a1, *(v16 + 24));
        v18 = v31;
        if (!v31 || *(v31 + 8))
        {
          loggableFileObject(v16);
          v36 = v563;
          if (v563[23] < 0)
          {
            v36 = *v563;
          }

          tknPrintf("Error: %sAttribute must reference a previously-defined BOOLean parameter name\n", v32, v33, v34, v35, v36);
          goto LABEL_37;
        }
      }

LABEL_134:
      v16 = *(v16 + 16);
      if (!v16)
      {
        goto LABEL_208;
      }
    }

    if (*(v16 + 40))
    {
      loggableFileObject(v16);
      v44 = v563;
      if (v563[23] < 0)
      {
        v44 = *v563;
      }

      goto LABEL_36;
    }

    v47 = *(v16 + 24);
    if (!v47)
    {
      goto LABEL_134;
    }

    while (1)
    {
      v48 = TParamManager::getConfig(a1, *(v47 + 8));
      if ((v48 + 1) <= 1)
      {
        break;
      }

      v57 = TFileObject::verify(v47, 0, a3 == 4);
      v521 |= v57;
      if (*(v519[0] + v48))
      {
        loggableFileObject(v16);
        v58 = v563[23];
        v59 = *v563;
        loggableUnicode(*(v47 + 8), &__p);
        v64 = v563;
        if (v58 < 0)
        {
          v64 = v59;
        }

        v65 = &__p;
        if (v523 < 0)
        {
          v65 = __p;
        }

        tknPrintf("Error: %sDuplicate default setting for '%s' configuration\n", v60, v61, v62, v63, v64, v65);
        goto LABEL_55;
      }

      *(v519[0] + v48) = *(v47 + 24);
LABEL_60:
      v47 = *(v47 + 16);
      if (!v47)
      {
        goto LABEL_134;
      }
    }

    loggableFileObject(v16);
    v49 = v563[23];
    v50 = *v563;
    loggableUnicode(*(v47 + 8), &__p);
    v55 = v563;
    if (v49 < 0)
    {
      v55 = v50;
    }

    v56 = &__p;
    if (v523 < 0)
    {
      v56 = __p;
    }

    tknPrintf("Error: %sInvalid configuration name: '%s'\n", v51, v52, v53, v54, v55, v56);
LABEL_55:
    v18 = v21;
    if (SHIBYTE(v523) < 0)
    {
      operator delete(__p);
    }

    if ((v563[23] & 0x80000000) != 0)
    {
      operator delete(*v563);
    }

    v521 = 1;
    goto LABEL_60;
  }

  v506 = 0;
  v507 = 0;
  v496 = 0;
  v18 = 0;
  v497 = 0;
  v499 = 0;
  v503 = 0;
  v508 = 0;
  v17 = 0;
LABEL_208:
  v501 = v17;
  if (v521 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
    *v563 = byte_287529580;
    if (SHIBYTE(v523) < 0)
    {
      std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
    }

    else
    {
      *&v563[8] = __p;
      v564 = v523;
    }

    *v563 = &unk_287526298;
    if (v564 >= 0)
    {
      v285 = &v563[8];
    }

    else
    {
      v285 = *&v563[8];
    }

    conditionalAssert(v285, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 942, v259, v260);
    *v563 = byte_287529580;
    if (SHIBYTE(v564) < 0)
    {
      operator delete(*&v563[8]);
    }

    if (SHIBYTE(v523) < 0)
    {
      operator delete(__p);
    }

    v286 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
    *v286 = byte_287529580;
    v287 = (v286 + 1);
    if ((v563[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v287, *v563, *&v563[8]);
    }

    else
    {
      v357 = *v563;
      v286[3] = *&v563[16];
      *&v287->__r_.__value_.__l.__data_ = v357;
    }

    *v286 = &unk_287526298;
  }

  *v563 = v520;
  v154 = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 48, v563);
  v155 = v506;
  v156 = v154;
  if (v505)
  {
    if (a1 + 56 != v154)
    {
      if (std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__count_unique<wchar_t const*>(v495, &v520))
      {
        if (*(a1 + 120) >= 7uLL)
        {
          loggableFileObject(v504);
          v298 = v563[23];
          v299 = *v563;
          loggableUnicode(v520, &__p);
          v304 = v563;
          if (v298 < 0)
          {
            v304 = v299;
          }

          if (v523 >= 0)
          {
            v305 = &__p;
          }

          else
          {
            v305 = __p;
          }

          tknPrintf("Error: %sParameter '%s' has been overridden multiple times\n", v300, v301, v302, v303, v304, v305);
          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v444 = &v563[8];
          }

          else
          {
            v444 = *&v563[8];
          }

          conditionalAssert(v444, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 970, v306, v307);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v445 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v445 = byte_287529580;
          v446 = (v445 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v446, *v563, *&v563[8]);
          }

          else
          {
            v485 = *v563;
            v445[3] = *&v563[16];
            *&v446->__r_.__value_.__l.__data_ = v485;
          }

          *v445 = &unk_287526298;
        }

        v157 = v18;
        loggableFileObject(v504);
        v158 = v563[23];
        v159 = *v563;
        loggableUnicode(v520, &__p);
        v164 = v563;
        if (v158 < 0)
        {
          v164 = v159;
        }

        if (v523 >= 0)
        {
          v165 = &__p;
        }

        else
        {
          v165 = __p;
        }

        tknPrintf("Warning: %sParameter '%s' has been overridden multiple times\n", v160, v161, v162, v163, v164, v165);
        v18 = v157;
        if (SHIBYTE(v523) < 0)
        {
          operator delete(__p);
        }

        if ((v563[23] & 0x80000000) != 0)
        {
          operator delete(*v563);
        }
      }

      else
      {
        std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__emplace_unique_key_args<wchar_t const*,wchar_t const* const&>(v495, &v520);
      }

      v191 = *(v156 + 40);
      if (v191 && (v192 = v191 - 1, v193 = *(a1 + 24), v192 < (*(a1 + 32) - v193) >> 3))
      {
        v190 = *(v193 + 8 * v192);
        if (!a3)
        {
LABEL_265:
          if (v496)
          {
            v194 = v18;
            v195 = v509;
            if (v510 - v509 == 48)
            {
              if (v190)
              {
                v196 = **v190;
              }

              else
              {
                v197 = 0;
              }

              v221 = v515;
              if (SHIBYTE(v515->__r_.__value_.__r.__words[2]) < 0)
              {
                v221 = v515->__r_.__value_.__r.__words[0];
              }

              v222 = wcscmp(v221, "t");
              v223 = (v195 + 24 * (v222 == 0));
              if (*(v223 + 23) < 0)
              {
                v223 = *v223;
              }

              v224 = (v195 + 24 * (v222 != 0));
              if (*(v224 + 23) < 0)
              {
                v224 = *v224;
              }

              v18 = v194;
              MEMORY[0x26672AF30](v197 + 200, v223);
              MEMORY[0x26672AF30](v197 + 224, v224);
            }

            else
            {
              v18 = v194;
            }
          }

          goto LABEL_343;
        }
      }

      else
      {
        v190 = 0;
        if (!a3)
        {
          goto LABEL_265;
        }
      }

LABEL_280:
      if (a3 == 2)
      {
        if (v190)
        {
          v198 = **v190;
        }

        else
        {
          v199 = 0;
        }

        if (v499)
        {
          {
            operator new();
          }

          v202 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v499, &v521);
        }

        else
        {
          v202 = v199[38];
        }

        if (v521 == 1)
        {
          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v312 = v563;
          }

          else
          {
            v312 = *v563;
          }

          tknPrintf("Error: %sParameter min value is not an integer\n", v308, v309, v310, v311, v312);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v423 = &v563[8];
          }

          else
          {
            v423 = *&v563[8];
          }

          conditionalAssert(v423, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1058, v313, v314);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v424 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v424 = byte_287529580;
          v425 = (v424 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v425, *v563, *&v563[8]);
          }

          else
          {
            v466 = *v563;
            v424[3] = *&v563[16];
            *&v425->__r_.__value_.__l.__data_ = v466;
          }

          *v424 = &unk_287526298;
        }

        if (v497)
        {
          {
            operator new();
          }

          v203 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v497, &v521);
          if (v521)
          {
            loggableFileObject(v504);
            if (v563[23] >= 0)
            {
              v208 = v563;
            }

            else
            {
              v208 = *v563;
            }

            tknPrintf("Error: %sParameter max value is not an integer\n", v204, v205, v206, v207, v208);
            if ((v563[23] & 0x80000000) != 0)
            {
              operator delete(*v563);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
            *v563 = byte_287529580;
            if (SHIBYTE(v523) < 0)
            {
              std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
            }

            else
            {
              *&v563[8] = __p;
              v564 = v523;
            }

            *v563 = &unk_287526298;
            if (v564 >= 0)
            {
              v438 = &v563[8];
            }

            else
            {
              v438 = *&v563[8];
            }

            conditionalAssert(v438, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1065, v209, v210);
            *v563 = byte_287529580;
            if (SHIBYTE(v564) < 0)
            {
              operator delete(*&v563[8]);
            }

            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            v439 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
            *v439 = byte_287529580;
            v440 = (v439 + 1);
            if ((v563[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v440, *v563, *&v563[8]);
            }

            else
            {
              v474 = *v563;
              v439[3] = *&v563[16];
              *&v440->__r_.__value_.__l.__data_ = v474;
            }

            *v439 = &unk_287526298;
          }
        }

        else
        {
          v203 = v199[39];
        }

        if (v202 > v203)
        {
          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v319 = v563;
          }

          else
          {
            v319 = *v563;
          }

          tknPrintf("Error: %sInvalid range\n", v315, v316, v317, v318, v319);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v426 = &v563[8];
          }

          else
          {
            v426 = *&v563[8];
          }

          conditionalAssert(v426, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1071, v320, v321);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v427 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v427 = byte_287529580;
          v428 = (v427 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v428, *v563, *&v563[8]);
          }

          else
          {
            v467 = *v563;
            v427[3] = *&v563[16];
            *&v428->__r_.__value_.__l.__data_ = v467;
          }

          *v427 = &unk_287526298;
        }

        v199[38] = v202;
        v199[39] = v203;
        goto LABEL_343;
      }

      if (a3 != 4 && a3 != 1)
      {
        goto LABEL_343;
      }

      if (v190)
      {
        v200 = **v190;
      }

      else
      {
        v201 = 0;
      }

      if (v496)
      {
        v211 = v512 == v513 ? 0 : &v512;
        v212 = v509 == v510 ? 0 : &v509;
        if (TStringParam::setAllowables(v201, &v515, v211, v212))
        {
          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v353 = v563;
          }

          else
          {
            v353 = *v563;
          }

          tknPrintf("Error: %sParameter allowable list is invalid\n", v349, v350, v351, v352, v353);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v456 = &v563[8];
          }

          else
          {
            v456 = *&v563[8];
          }

          conditionalAssert(v456, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1092, v354, v355);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v457 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v457 = byte_287529580;
          v458 = (v457 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v458, *v563, *&v563[8]);
          }

          else
          {
            v488 = *v563;
            v457[3] = *&v563[16];
            *&v458->__r_.__value_.__l.__data_ = v488;
          }

          *v457 = &unk_287526298;
        }
      }

      if (a3 != 1)
      {
LABEL_343:
        if ((*(v190 + 111) & 0x8000000000000000) != 0)
        {
          if (!v190[12])
          {
            goto LABEL_356;
          }
        }

        else if (!*(v190 + 111))
        {
          goto LABEL_356;
        }

        v225 = v18;
        loggableFileObject(v504);
        v226 = v563[23];
        v227 = *v563;
        loggableUnicode(v520, &__p);
        v232 = v563;
        if (v226 < 0)
        {
          v232 = v227;
        }

        if (v523 >= 0)
        {
          v233 = &__p;
        }

        else
        {
          v233 = __p;
        }

        tknPrintf("Warning: %sParameter '%s' is deprecated\n", v228, v229, v230, v231, v232, v233);
        v18 = v225;
        if (SHIBYTE(v523) < 0)
        {
          operator delete(__p);
        }

        if ((v563[23] & 0x80000000) != 0)
        {
          operator delete(*v563);
        }

LABEL_356:
        if (v501)
        {
          MEMORY[0x26672AF30](v190 + 5);
        }

        v190[14] = (v190[14] | v507);
        if (v18)
        {
          v190[18] = v18;
        }

        if (*(a1 + 80) - *(a1 + 72) >= 0x21uLL)
        {
          v234 = 0;
          v235 = 1;
          do
          {
            if (*(v519[0] + v235) && (*(*v190 + 5))(v190, v235))
            {
              v237 = v563;
              loggableFileObject(v504);
              if (v563[23] < 0)
              {
                v237 = *v563;
              }

              v238 = *(a1 + 72) + v234;
              v239 = (v238 + 40);
              if (*(v238 + 63) < 0)
              {
                v239 = *v239;
              }

              loggableUnicode(v239, &__p);
              if (v523 >= 0)
              {
                v244 = &__p;
              }

              else
              {
                v244 = __p;
              }

              tknPrintf("Error: %sIncorrect default setting for '%s' configuration\n", v240, v241, v242, v243, v237, v244);
              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              if ((v563[23] & 0x80000000) != 0)
              {
                operator delete(*v563);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
              *v563 = byte_287529580;
              if (SHIBYTE(v523) < 0)
              {
                std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
              }

              else
              {
                *&v563[8] = __p;
                v564 = v523;
              }

              *v563 = &unk_287526298;
              if (v564 >= 0)
              {
                v322 = &v563[8];
              }

              else
              {
                v322 = *&v563[8];
              }

              conditionalAssert(v322, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1148, v245, v246);
              *v563 = byte_287529580;
              if (SHIBYTE(v564) < 0)
              {
                operator delete(*&v563[8]);
              }

              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              v323 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
              *v323 = byte_287529580;
              v324 = (v323 + 1);
              if ((v563[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v324, *v563, *&v563[8]);
              }

              else
              {
                v402 = *v563;
                v323[3] = *&v563[16];
                *&v324->__r_.__value_.__l.__data_ = v402;
              }

              *v323 = &unk_287526298;
            }

            if (*(v518[0] + v235) && (*(*v190 + 4))(v190, v235))
            {
              v247 = v563;
              loggableFileObject(v504);
              if (v563[23] < 0)
              {
                v247 = *v563;
              }

              v248 = *(a1 + 72) + v234;
              v249 = (v248 + 40);
              if (*(v248 + 63) < 0)
              {
                v249 = *v249;
              }

              loggableUnicode(v249, &__p);
              if (v523 >= 0)
              {
                v254 = &__p;
              }

              else
              {
                v254 = __p;
              }

              tknPrintf("Error: %sIncorrect value setting for '%s' configuration\n", v250, v251, v252, v253, v247, v254);
              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              if ((v563[23] & 0x80000000) != 0)
              {
                operator delete(*v563);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
              *v563 = byte_287529580;
              if (SHIBYTE(v523) < 0)
              {
                std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
              }

              else
              {
                *&v563[8] = __p;
                v564 = v523;
              }

              *v563 = &unk_287526298;
              if (v564 >= 0)
              {
                v325 = &v563[8];
              }

              else
              {
                v325 = *&v563[8];
              }

              conditionalAssert(v325, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1154, v255, v256);
              *v563 = byte_287529580;
              if (SHIBYTE(v564) < 0)
              {
                operator delete(*&v563[8]);
              }

              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              v326 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
              *v326 = byte_287529580;
              v327 = (v326 + 1);
              if ((v563[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v327, *v563, *&v563[8]);
              }

              else
              {
                v403 = *v563;
                v326[3] = *&v563[16];
                *&v327->__r_.__value_.__l.__data_ = v403;
              }

              *v326 = &unk_287526298;
            }

            ++v235;
            v234 += 32;
          }

          while (v235 < (*(a1 + 80) - *(a1 + 72)) >> 5);
        }

        if (v508 && (*(*v190 + 5))(v190, 1))
        {
          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v265 = v563;
          }

          else
          {
            v265 = *v563;
          }

          tknPrintf("Error: %sIncorrect setting of Original attribute\n", v261, v262, v263, v264, v265);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v411 = &v563[8];
          }

          else
          {
            v411 = *&v563[8];
          }

          conditionalAssert(v411, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1162, v266, v267);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v412 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v412 = byte_287529580;
          v413 = (v412 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v413, *v563, *&v563[8]);
          }

          else
          {
            v453 = *v563;
            v412[3] = *&v563[16];
            *&v413->__r_.__value_.__l.__data_ = v453;
          }

          *v412 = &unk_287526298;
        }

        if (v155 && (*(*v190 + 5))(v190, Config, v155))
        {
          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v272 = v563;
          }

          else
          {
            v272 = *v563;
          }

          tknPrintf("Error: %sIncorrect setting of Format attribute\n", v268, v269, v270, v271, v272);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v414 = &v563[8];
          }

          else
          {
            v414 = *&v563[8];
          }

          conditionalAssert(v414, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1168, v273, v274);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v415 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v415 = byte_287529580;
          v416 = (v415 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v416, *v563, *&v563[8]);
          }

          else
          {
            v454 = *v563;
            v415[3] = *&v563[16];
            *&v416->__r_.__value_.__l.__data_ = v454;
          }

          *v415 = &unk_287526298;
        }

        if (v503 && (*(*v190 + 5))(v190, v500))
        {
          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v279 = v563;
          }

          else
          {
            v279 = *v563;
          }

          tknPrintf("Error: %sIncorrect setting of SpellOut attribute\n", v275, v276, v277, v278, v279);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v417 = &v563[8];
          }

          else
          {
            v417 = *&v563[8];
          }

          conditionalAssert(v417, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1174, v280, v281);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v418 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v418 = byte_287529580;
          v419 = (v418 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v419, *v563, *&v563[8]);
          }

          else
          {
            v455 = *v563;
            v418[3] = *&v563[16];
            *&v419->__r_.__value_.__l.__data_ = v455;
          }

          *v418 = &unk_287526298;
        }

        if (!v505)
        {
          TParamManager::add(a1, v190);
          goto LABEL_380;
        }

        if ((*(v190 + 111) & 0x8000000000000000) != 0)
        {
          if (!v190[12])
          {
            goto LABEL_380;
          }
        }

        else if (!*(v190 + 111))
        {
          goto LABEL_380;
        }

        (*(*a1 + 24))(a1, v190);
        goto LABEL_380;
      }

      if (v508)
      {
        {
          operator new();
        }

        v213 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v508, &v521);
        v214 = v201[163];
        if (0xAAAAAAAAAAAAAAABLL * ((v201[164] - v214) >> 3) < v213)
        {
          loggableFileObject(v504);
          v372 = v563[23];
          v373 = *v563;
          loggableUnicode(v508, &__p);
          v378 = v563;
          if (v372 < 0)
          {
            v378 = v373;
          }

          if (v523 >= 0)
          {
            v379 = &__p;
          }

          else
          {
            v379 = __p;
          }

          tknPrintf("Error: %sParameter Original value is out of range, was '%s', expected an int in the range [0,%llu].\n", v374, v375, v376, v377, v378, v379, 0xAAAAAAAAAAAAAAABLL * ((v201[164] - v201[163]) >> 3));
          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v476 = &v563[8];
          }

          else
          {
            v476 = *&v563[8];
          }

          conditionalAssert(v476, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1104, v380, v381);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v477 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v477 = byte_287529580;
          v478 = (v477 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v478, *v563, *&v563[8]);
          }

          else
          {
            v492 = *v563;
            v477[3] = *&v563[16];
            *&v478->__r_.__value_.__l.__data_ = v492;
          }

          *v477 = &unk_287526298;
        }

        v215 = (v214 + 24 * v213);
        if (*(v215 + 23) < 0)
        {
          v215 = *v215;
        }

        v508 = v215;
        if (!v506)
        {
          goto LABEL_328;
        }
      }

      else
      {
        v508 = 0;
        if (!v506)
        {
LABEL_328:
          if (v503)
          {
            {
              operator new();
            }

            v218 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v503, &v521);
            v219 = v201[163];
            if (0xAAAAAAAAAAAAAAABLL * ((v201[164] - v219) >> 3) < v218)
            {
              loggableFileObject(v504);
              v392 = v563[23];
              v393 = *v563;
              loggableUnicode(v503, &__p);
              v398 = v563;
              if (v392 < 0)
              {
                v398 = v393;
              }

              if (v523 >= 0)
              {
                v399 = &__p;
              }

              else
              {
                v399 = __p;
              }

              tknPrintf("Error: %sParameter SpellOut value is out of range, was '%s', expected an int in the range [0,%llu].\n", v394, v395, v396, v397, v398, v399, 0xAAAAAAAAAAAAAAABLL * ((v201[164] - v201[163]) >> 3));
              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              if ((v563[23] & 0x80000000) != 0)
              {
                operator delete(*v563);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
              *v563 = byte_287529580;
              if (SHIBYTE(v523) < 0)
              {
                std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
              }

              else
              {
                *&v563[8] = __p;
                v564 = v523;
              }

              *v563 = &unk_287526298;
              if (v564 >= 0)
              {
                v482 = &v563[8];
              }

              else
              {
                v482 = *&v563[8];
              }

              conditionalAssert(v482, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1126, v400, v401);
              *v563 = byte_287529580;
              if (SHIBYTE(v564) < 0)
              {
                operator delete(*&v563[8]);
              }

              if (SHIBYTE(v523) < 0)
              {
                operator delete(__p);
              }

              v483 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
              *v483 = byte_287529580;
              v484 = (v483 + 1);
              if ((v563[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v484, *v563, *&v563[8]);
              }

              else
              {
                v494 = *v563;
                v483[3] = *&v563[16];
                *&v484->__r_.__value_.__l.__data_ = v494;
              }

              *v483 = &unk_287526298;
            }

            v220 = (v219 + 24 * v218);
            if (*(v220 + 23) < 0)
            {
              v220 = *v220;
            }

            v503 = v220;
          }

          else
          {
            v503 = 0;
          }

          goto LABEL_343;
        }
      }

      {
        operator new();
      }

      v216 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v506, &v521);
      v217 = v201[163];
      if (0xAAAAAAAAAAAAAAABLL * ((v201[164] - v217) >> 3) < v216)
      {
        loggableFileObject(v504);
        v382 = v563[23];
        v383 = *v563;
        loggableUnicode(v506, &__p);
        v388 = v563;
        if (v382 < 0)
        {
          v388 = v383;
        }

        if (v523 >= 0)
        {
          v389 = &__p;
        }

        else
        {
          v389 = __p;
        }

        tknPrintf("Error: %sParameter Format value is out of range, was '%s', expected an int in the range [0,%llu].\n", v384, v385, v386, v387, v388, v389, 0xAAAAAAAAAAAAAAABLL * ((v201[164] - v201[163]) >> 3));
        if (SHIBYTE(v523) < 0)
        {
          operator delete(__p);
        }

        if ((v563[23] & 0x80000000) != 0)
        {
          operator delete(*v563);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
        *v563 = byte_287529580;
        if (SHIBYTE(v523) < 0)
        {
          std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
        }

        else
        {
          *&v563[8] = __p;
          v564 = v523;
        }

        *v563 = &unk_287526298;
        if (v564 >= 0)
        {
          v479 = &v563[8];
        }

        else
        {
          v479 = *&v563[8];
        }

        conditionalAssert(v479, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1115, v390, v391);
        *v563 = byte_287529580;
        if (SHIBYTE(v564) < 0)
        {
          operator delete(*&v563[8]);
        }

        if (SHIBYTE(v523) < 0)
        {
          operator delete(__p);
        }

        v480 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
        *v480 = byte_287529580;
        v481 = (v480 + 1);
        if ((v563[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v481, *v563, *&v563[8]);
        }

        else
        {
          v493 = *v563;
          v480[3] = *&v563[16];
          *&v481->__r_.__value_.__l.__data_ = v493;
        }

        *v480 = &unk_287526298;
      }

      v155 = (v217 + 24 * v216);
      if (*(v155 + 23) < 0)
      {
        v155 = *v155;
      }

      goto LABEL_328;
    }

    if ((v498 & 1) == 0)
    {
      loggableFileObject(v504);
      v180 = v563[23];
      v181 = *v563;
      loggableUnicode(v520, &__p);
      v186 = v563;
      if (v180 < 0)
      {
        v186 = v181;
      }

      if (v523 >= 0)
      {
        v187 = &__p;
      }

      else
      {
        v187 = __p;
      }

      tknPrintf("Error: %sParameter '%s' does not exist\n", v182, v183, v184, v185, v186, v187);
      if (SHIBYTE(v523) < 0)
      {
        operator delete(__p);
      }

      if ((v563[23] & 0x80000000) != 0)
      {
        operator delete(*v563);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
      *v563 = byte_287529580;
      if (SHIBYTE(v523) < 0)
      {
        std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
      }

      else
      {
        *&v563[8] = __p;
        v564 = v523;
      }

      *v563 = &unk_287526298;
      if (v564 >= 0)
      {
        v447 = &v563[8];
      }

      else
      {
        v447 = *&v563[8];
      }

      conditionalAssert(v447, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 955, v188, v189);
      *v563 = byte_287529580;
      if (SHIBYTE(v564) < 0)
      {
        operator delete(*&v563[8]);
      }

      if (SHIBYTE(v523) < 0)
      {
        operator delete(__p);
      }

      v448 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
      *v448 = byte_287529580;
      v449 = (v448 + 1);
      if ((v563[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v449, *v563, *&v563[8]);
      }

      else
      {
        v486 = *v563;
        v448[3] = *&v563[16];
        *&v449->__r_.__value_.__l.__data_ = v486;
      }

      *v448 = &unk_287526298;
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      if (a1 + 56 != v154)
      {
        loggableFileObject(v504);
        v288 = v563[23];
        v289 = *v563;
        loggableUnicode(v520, &__p);
        v294 = v563;
        if (v288 < 0)
        {
          v294 = v289;
        }

        if (v523 >= 0)
        {
          v295 = &__p;
        }

        else
        {
          v295 = __p;
        }

        tknPrintf("Error: %sParameter '%s' already exists\n", v290, v291, v292, v293, v294, v295);
        if (SHIBYTE(v523) < 0)
        {
          operator delete(__p);
        }

        if ((v563[23] & 0x80000000) != 0)
        {
          operator delete(*v563);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
        *v563 = byte_287529580;
        if (SHIBYTE(v523) < 0)
        {
          std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
        }

        else
        {
          *&v563[8] = __p;
          v564 = v523;
        }

        *v563 = &unk_287526298;
        if (v564 >= 0)
        {
          v429 = &v563[8];
        }

        else
        {
          v429 = *&v563[8];
        }

        conditionalAssert(v429, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 995, v296, v297);
        *v563 = byte_287529580;
        if (SHIBYTE(v564) < 0)
        {
          operator delete(*&v563[8]);
        }

        if (SHIBYTE(v523) < 0)
        {
          operator delete(__p);
        }

        v430 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
        *v430 = byte_287529580;
        v431 = (v430 + 1);
        if ((v563[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v431, *v563, *&v563[8]);
        }

        else
        {
          v471 = *v563;
          v430[3] = *&v563[16];
          *&v431->__r_.__value_.__l.__data_ = v471;
        }

        *v430 = &unk_287526298;
      }

      if (*(a1 + 120) > 4uLL)
      {
        if (!*(v519[0] + 1))
        {
          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v332 = v563;
          }

          else
          {
            v332 = *v563;
          }

          tknPrintf("Error: %s'Root' default setting is mandatory\n", v328, v329, v330, v331, v332);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v435 = &v563[8];
          }

          else
          {
            v435 = *&v563[8];
          }

          conditionalAssert(v435, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1009, v333, v334);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v436 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v436 = byte_287529580;
          v437 = (v436 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v437, *v563, *&v563[8]);
          }

          else
          {
            v473 = *v563;
            v436[3] = *&v563[16];
            *&v437->__r_.__value_.__l.__data_ = v473;
          }

          *v436 = &unk_287526298;
        }
      }

      else if (!v508)
      {
        loggableFileObject(v504);
        if (v563[23] >= 0)
        {
          v170 = v563;
        }

        else
        {
          v170 = *v563;
        }

        tknPrintf("Error: %s'Original' attribute is mandatory\n", v166, v167, v168, v169, v170);
        if ((v563[23] & 0x80000000) != 0)
        {
          operator delete(*v563);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
        *v563 = byte_287529580;
        if (SHIBYTE(v523) < 0)
        {
          std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
        }

        else
        {
          *&v563[8] = __p;
          v564 = v523;
        }

        *v563 = &unk_287526298;
        if (v564 >= 0)
        {
          v432 = &v563[8];
        }

        else
        {
          v432 = *&v563[8];
        }

        conditionalAssert(v432, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1003, v171, v172);
        *v563 = byte_287529580;
        if (SHIBYTE(v564) < 0)
        {
          operator delete(*&v563[8]);
        }

        if (SHIBYTE(v523) < 0)
        {
          operator delete(__p);
        }

        v433 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
        *v433 = byte_287529580;
        v434 = (v433 + 1);
        if ((v563[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v434, *v563, *&v563[8]);
        }

        else
        {
          v472 = *v563;
          v433[3] = *&v563[16];
          *&v434->__r_.__value_.__l.__data_ = v472;
        }

        *v433 = &unk_287526298;
      }

      v190 = 0;
      if (a3 <= 1)
      {
        if (!a3)
        {
          operator new();
        }

        if (a3 == 1)
        {
          if (v496)
          {
            operator new();
          }

          loggableFileObject(v504);
          if (v563[23] >= 0)
          {
            v362 = v563;
          }

          else
          {
            v362 = *v563;
          }

          tknPrintf("Error: %s'Allowables' attribute is mandatory\n", v358, v359, v360, v361, v362);
          if ((v563[23] & 0x80000000) != 0)
          {
            operator delete(*v563);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
          *v563 = byte_287529580;
          if (SHIBYTE(v523) < 0)
          {
            std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
          }

          else
          {
            *&v563[8] = __p;
            v564 = v523;
          }

          *v563 = &unk_287526298;
          if (v564 >= 0)
          {
            v460 = &v563[8];
          }

          else
          {
            v460 = *&v563[8];
          }

          conditionalAssert(v460, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1039, v363, v364);
          *v563 = byte_287529580;
          if (SHIBYTE(v564) < 0)
          {
            operator delete(*&v563[8]);
          }

          if (SHIBYTE(v523) < 0)
          {
            operator delete(__p);
          }

          v461 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
          *v461 = byte_287529580;
          v462 = (v461 + 1);
          if ((v563[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v462, *v563, *&v563[8]);
          }

          else
          {
            v489 = *v563;
            v461[3] = *&v563[16];
            *&v462->__r_.__value_.__l.__data_ = v489;
          }

          *v461 = &unk_287526298;
        }
      }

      else
      {
        switch(a3)
        {
          case 2:
            if (v499 && v497)
            {
              operator new();
            }

            loggableFileObject(v504);
            if (v563[23] >= 0)
            {
              v369 = v563;
            }

            else
            {
              v369 = *v563;
            }

            tknPrintf("Error: %s'Min' and 'Max' attributes are mandatory\n", v365, v366, v367, v368, v369);
            if ((v563[23] & 0x80000000) != 0)
            {
              operator delete(*v563);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
            *v563 = byte_287529580;
            if (SHIBYTE(v523) < 0)
            {
              std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
            }

            else
            {
              *&v563[8] = __p;
              v564 = v523;
            }

            *v563 = &unk_287526298;
            if (v564 >= 0)
            {
              v463 = &v563[8];
            }

            else
            {
              v463 = *&v563[8];
            }

            conditionalAssert(v463, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1025, v370, v371);
            *v563 = byte_287529580;
            if (SHIBYTE(v564) < 0)
            {
              operator delete(*&v563[8]);
            }

            if (SHIBYTE(v523) < 0)
            {
              operator delete(__p);
            }

            v464 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
            *v464 = byte_287529580;
            v465 = (v464 + 1);
            if ((v563[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v465, *v563, *&v563[8]);
            }

            else
            {
              v490 = *v563;
              v464[3] = *&v563[16];
              *&v465->__r_.__value_.__l.__data_ = v490;
            }

            *v464 = &unk_287526298;
          case 3:
            operator new();
          case 4:
            operator new();
        }
      }

      v507 |= 8uLL;
      goto LABEL_280;
    }

    if ((v498 & 1) == 0)
    {
      loggableFileObject(v504);
      if (v563[23] >= 0)
      {
        v177 = v563;
      }

      else
      {
        v177 = *v563;
      }

      tknPrintf("Error: %sThis param manager does not support param creation\n", v173, v174, v175, v176, v177);
      if ((v563[23] & 0x80000000) != 0)
      {
        operator delete(*v563);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, &byte_262899963);
      *v563 = byte_287529580;
      if (SHIBYTE(v523) < 0)
      {
        std::string::__init_copy_ctor_external(&v563[8], __p, *(&__p + 1));
      }

      else
      {
        *&v563[8] = __p;
        v564 = v523;
      }

      *v563 = &unk_287526298;
      if (v564 >= 0)
      {
        v420 = &v563[8];
      }

      else
      {
        v420 = *&v563[8];
      }

      conditionalAssert(v420, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 988, v178, v179);
      *v563 = byte_287529580;
      if (SHIBYTE(v564) < 0)
      {
        operator delete(*&v563[8]);
      }

      if (SHIBYTE(v523) < 0)
      {
        operator delete(__p);
      }

      v421 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v563, &byte_262899963);
      *v421 = byte_287529580;
      v422 = (v421 + 1);
      if ((v563[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v422, *v563, *&v563[8]);
      }

      else
      {
        v459 = *v563;
        v421[3] = *&v563[16];
        *&v422->__r_.__value_.__l.__data_ = v459;
      }

      *v421 = &unk_287526298;
    }
  }

LABEL_380:
  *v563 = &v509;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v563);
  *v563 = &v512;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v563);
  *v563 = &v515;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v563);
  if (v518[0])
  {
    v518[1] = v518[0];
    operator delete(v518[0]);
  }

  if (v519[0])
  {
    v519[1] = v519[0];
    operator delete(v519[0]);
  }

  v236 = *MEMORY[0x277D85DE8];
}

void sub_262579C08(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52)
{
  MEMORY[0x26672B1B0](v53, 0x1070C40ADD13FEBLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if ((a25 & 1) == 0)
    {
      if (v52)
      {
        (*(*v52 + 8))(v52);
      }
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x26257A270);
}

void sub_26257A25C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x26257A260);
  }

  __clang_call_terminate(a1);
}

void sub_26257A26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char **a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48)
{
  a48 = &a28;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a48);
  a28 = &a31;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = &a34;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

void TSemanticException::~TSemanticException(void **this)
{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

uint64_t TParamManager::getConfig(uint64_t a1, __int32 *a2)
{
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(a1 + 96, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 104 == v3)
  {
    return -1;
  }

  else
  {
    return *(v3 + 56);
  }
}

void sub_26257A380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TParamManager::nameToParam(uint64_t a1, const __int32 *a2)
{
  v8 = a2;
  v3 = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 48, &v8);
  if (a1 + 56 == v3)
  {
    return 0;
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 1;
  v6 = *(a1 + 24);
  if (v5 >= (*(a1 + 32) - v6) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v6 + 8 * v5);
  }
}

void TParamManager::init(TParamManager *this, const TFileObject *a2, char a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v22 = "O";
  v23 = xmmword_26286B6D0;
  v24 = -1;
  v25 = "O";
  v26 = xmmword_26286B6D0;
  v27 = -1;
  v28 = "O";
  v29 = xmmword_26286B6D0;
  v30 = -1;
  v31 = "O";
  v32 = xmmword_26286B6D0;
  v33 = 3;
  v34 = "O";
  v35 = xmmword_26286B6D0;
  v36 = -1;
  v37 = "C";
  v38 = xmmword_26286B6D0;
  v39 = -1;
  v40 = "C";
  v41 = xmmword_26286B6D0;
  v42 = -1;
  v43 = "C";
  v44 = xmmword_26286B6D0;
  v45 = -1;
  v46 = "C";
  v47 = 3;
  v48 = xmmword_26286B6E0;
  v49 = "C";
  v50 = 3;
  v51 = xmmword_26286B690;
  if (TFileObject::verify(a2, &v22, 10, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v18, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v19) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v18[0], v18[1]);
    }

    else
    {
      *&__p[8] = *v18;
      v21 = v19;
    }

    *__p = &unk_287526298;
    if (v21 >= 0)
    {
      v14 = &__p[8];
    }

    else
    {
      v14 = *&__p[8];
    }

    conditionalAssert(v14, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1218, v12, v13);
    *__p = byte_287529580;
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v16 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v16, *__p, *&__p[8]);
    }

    else
    {
      v17 = *__p;
      exception[3] = *&__p[16];
      *&v16->__r_.__value_.__l.__data_ = v17;
    }

    *exception = &unk_287526298;
  }

  v18[1] = 0;
  v19 = 0;
  v18[0] = &v18[1];
  v6 = *(a2 + 3);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_31;
  }

  do
  {
    v7 = *(v6 + 8);
    if (!wcscmp(v7, "O"))
    {
      v9 = 0;
LABEL_15:
      v8 = 1;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "C"))
    {
      v9 = 0;
      v8 = 0;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "O"))
    {
      v8 = 1;
LABEL_19:
      v9 = 4;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "C"))
    {
      v8 = 0;
      goto LABEL_19;
    }

    if (!wcscmp(v7, "O"))
    {
      v8 = 1;
LABEL_22:
      v9 = 2;
      goto LABEL_23;
    }

    if (!wcscmp(v7, "C"))
    {
      v8 = 0;
      goto LABEL_22;
    }

    if (!wcscmp(v7, "O"))
    {
      v9 = 1;
      goto LABEL_15;
    }

    if (!wcscmp(v7, "C"))
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      if (!wcscmp(v7, "O"))
      {
        v8 = 1;
      }

      else
      {
        if (wcscmp(v7, "C"))
        {
          goto LABEL_24;
        }

        v8 = 0;
      }

      v9 = 3;
    }

LABEL_23:
    TParamManager::initParam(this, v6, v9, v8, a3, v18);
LABEL_24:
    v6 = *(v6 + 16);
  }

  while (v6);
  v10 = v18[1];
LABEL_31:
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v18, v10);
  v11 = *MEMORY[0x277D85DE8];
}

void TParamManager::initialize(TParamManager *this, TInputStream *a2, char a3)
{
  if (*(a2 + 8) == 1)
  {
    if (TInputStream::verifyHeader(a2, "Parameter", pParameterVersion, 7))
    {
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v47 = byte_287529580;
      if ((__s[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v47[8], *__s, *&__s[8]);
      }

      else
      {
        *&v47[8] = *__s;
        v48[0] = *&__s[16];
      }

      *v47 = &unk_287528000;
      if (v48[0] >= 0)
      {
        v34 = &v47[8];
      }

      else
      {
        v34 = *&v47[8];
      }

      conditionalAssert(v34, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1282, v32, v33);
      *v47 = byte_287529580;
      if (SHIBYTE(v48[0]) < 0)
      {
        operator delete(*&v47[8]);
      }

      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v47, &byte_262899963);
      *exception = byte_287529580;
      v36 = (exception + 1);
      if ((v47[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v36, *v47, *&v47[8]);
      }

      else
      {
        v37 = *v47;
        exception[3] = *&v47[16];
        *&v36->__r_.__value_.__l.__data_ = v37;
      }

      *exception = &unk_287528000;
    }

    *(this + 15) = *(a2 + 12);
    TFileObjectParser::TFileObjectParser(v50, a2);
    v5 = v50[0];
    if (*(this + 15) >= 5uLL)
    {
      v38 = v50[0];
      *v47 = v48;
      *&v47[8] = xmmword_26286B6F0;
      v49 = 1;
      TInputStream::getStringParameter(a2, "ConfigurationNames", v47, &dword_26286B714);
      if (*&v47[16])
      {
        *__s = v45;
        *&__s[8] = xmmword_26286B6F0;
        v46 = 1;
        if (*&v47[16] >= *&v47[8])
        {
          if (v49)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(v47, *&v47[16], __p, 1uLL);
            NextToken = *v47;
            --*&v47[16];
          }

          else
          {
            NextToken = *v47;
            if (*&v47[8])
            {
              *(*v47 + 4 * *&v47[8] - 4) = 0;
            }
          }
        }

        else
        {
          NextToken = *v47;
          *(*v47 + 4 * *&v47[16]) = 0;
        }

        if (*NextToken)
        {
          v7 = 0;
          while (1)
          {
            NextToken = getNextToken(NextToken, __s, ",");
            v8 = *&__s[16];
            if (*&__s[16] >= *&__s[8])
            {
              if (v46)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                v9 = *__s;
                v8 = --*&__s[16];
              }

              else
              {
                v9 = *__s;
                if (*&__s[8])
                {
                  *(*__s + 4 * *&__s[8] - 4) = 0;
                }
              }
            }

            else
            {
              v9 = *__s;
              *(*__s + 4 * *&__s[16]) = 0;
            }

            v10 = wcschr(v9, 58);
            if (v10)
            {
              v11 = v10;
              Config = TParamManager::getConfig(this, v10 + 1);
              if (Config == -1)
              {
                if (*&__s[16] >= *&__s[8])
                {
                  if (v46)
                  {
                    LODWORD(v40[0]) = 0;
                    TBuffer<wchar_t>::insert(__s, *&__s[16], v40, 1uLL);
                    v13 = *__s;
                    --*&__s[16];
                  }

                  else
                  {
                    v13 = *__s;
                    if (*&__s[8])
                    {
                      *(*__s + 4 * *&__s[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v13 = *__s;
                  *(*__s + 4 * *&__s[16]) = 0;
                }

                loggableUnicode(v13, __p);
                if (__p[23] >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = *__p;
                }

                tknPrintf("Error: Parent configuration not defined: '%s'\n", v14, v15, v16, v17, v18);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                v7 = 1;
              }

              v8 = *&__s[16];
              if (*&__s[16] >= *&__s[8])
              {
                if (v46)
                {
                  *__p = 0;
                  TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                  v9 = *__s;
                  v8 = --*&__s[16];
                }

                else
                {
                  v9 = *__s;
                  if (*&__s[8])
                  {
                    *(*__s + 4 * *&__s[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v9 = *__s;
                *(*__s + 4 * *&__s[16]) = 0;
              }

              *v11 = 0;
            }

            else
            {
              Config = 1;
            }

            if (v8 >= *&__s[8])
            {
              if (v46)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(__s, v8, __p, 1uLL);
                v9 = *__s;
                --*&__s[16];
              }

              else if (*&__s[8])
              {
                v9[*&__s[8] - 1] = 0;
              }
            }

            else
            {
              v9[v8] = 0;
            }

            if (TParamManager::getConfig(this, v9) == -1)
            {
              if (v7)
              {
                goto LABEL_62;
              }

              if (*&__s[16] >= *&__s[8])
              {
                if (v46)
                {
                  *__p = 0;
                  TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                  v20 = *__s;
                  --*&__s[16];
                }

                else
                {
                  v20 = *__s;
                  if (*&__s[8])
                  {
                    *(*__s + 4 * *&__s[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v20 = *__s;
                *(*__s + 4 * *&__s[16]) = 0;
              }

              TParamManager::newConfig(this, v20, Config);
              v7 = 0;
              if (!*NextToken)
              {
                break;
              }
            }

            else
            {
              if (*&__s[16] >= *&__s[8])
              {
                if (v46)
                {
                  LODWORD(v40[0]) = 0;
                  TBuffer<wchar_t>::insert(__s, *&__s[16], v40, 1uLL);
                  v19 = *__s;
                  --*&__s[16];
                }

                else
                {
                  v19 = *__s;
                  if (*&__s[8])
                  {
                    *(*__s + 4 * *&__s[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v19 = *__s;
                *(*__s + 4 * *&__s[16]) = 0;
              }

              loggableUnicode(v19, __p);
              if (__p[23] >= 0)
              {
                v25 = __p;
              }

              else
              {
                v25 = *__p;
              }

              tknPrintf("Error: Duplicate configuration name: '%s'\n", v21, v22, v23, v24, v25);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

LABEL_62:
              v7 = 1;
              if (!*NextToken)
              {
                std::string::basic_string[abi:ne200100]<0>(v40, &byte_262899963);
                *__p = byte_287529580;
                if (SHIBYTE(v41) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p[8], v40[0], v40[1]);
                }

                else
                {
                  *&__p[8] = *v40;
                  v43 = v41;
                }

                *__p = &unk_287526298;
                if (v43 >= 0)
                {
                  v28 = &__p[8];
                }

                else
                {
                  v28 = *&__p[8];
                }

                conditionalAssert(v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/params.cpp", 1327, v26, v27);
                *__p = byte_287529580;
                if (SHIBYTE(v43) < 0)
                {
                  operator delete(*&__p[8]);
                }

                if (SHIBYTE(v41) < 0)
                {
                  operator delete(v40[0]);
                }

                v29 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
                *v29 = byte_287529580;
                v30 = (v29 + 1);
                if ((__p[23] & 0x80000000) != 0)
                {
                  std::string::__init_copy_ctor_external(v30, *__p, *&__p[8]);
                }

                else
                {
                  v31 = *__p;
                  v29[3] = *&__p[16];
                  *&v30->__r_.__value_.__l.__data_ = v31;
                }

                *v29 = &unk_287526298;
              }
            }
          }
        }

        if (v46 == 1 && *__s != v45 && *__s)
        {
          MEMORY[0x26672B1B0]();
        }
      }

      if (v49 == 1 && *v47 != v48 && *v47)
      {
        MEMORY[0x26672B1B0]();
      }

      v5 = v38;
    }

    TParamManager::init(this, v5, a3);
    TFileObjectParser::~TFileObjectParser(v50);
  }
}

void sub_26257B2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (LOBYTE(STACK[0x490]) == 1 && a24 != a11 && a24 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8B0]) == 1)
  {
    v27 = STACK[0x498];
    if (STACK[0x498] != a12)
    {
      if (v27)
      {
        MEMORY[0x26672B1B0](v27, 0x1000C4052888210);
      }
    }
  }

  TFileObjectParser::~TFileObjectParser((v24 - 168));
  _Unwind_Resume(a1);
}

void TParamManager::save(void *a1, void **a2, char a3)
{
  v5 = 0;
  v110[0] = 0;
  v110[1] = 0;
  v109 = v110;
  v105 = v107;
  v106 = xmmword_26286B6F0;
  v108 = 1;
  v6 = a1[9];
  if ((a1[10] - v6) < 0x41)
  {
    goto LABEL_17;
  }

  v7 = 2;
  do
  {
    if (*(&v106 + 1))
    {
      LODWORD(__p) = 44;
      TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), &__p, 1uLL);
      v6 = a1[9];
    }

    v8 = v6 + 32 * v7;
    v9 = (v8 + 8);
    if (*(v8 + 31) < 0)
    {
      v9 = *v9;
    }

    v10 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), v9, v10 - 1);
    v6 = a1[9];
    v12 = *(v6 + 32 * v7);
    if (v12 != 1)
    {
      LODWORD(__p) = 58;
      TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), &__p, 1uLL);
      v13 = a1[9] + 32 * v12;
      v14 = (v13 + 8);
      if (*(v13 + 31) < 0)
      {
        v14 = *v14;
      }

      v15 = 0;
        ;
      }

      TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), v14, v15 - 1);
      v6 = a1[9];
    }

    ++v7;
  }

  while (v7 < (a1[10] - v6) >> 5);
  v5 = *(&v106 + 1);
  if (*(&v106 + 1) >= v106)
  {
    if (v108)
    {
      LODWORD(__p) = 0;
      TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), &__p, 1uLL);
      v17 = v105;
      --*(&v106 + 1);
    }

    else
    {
      v17 = v105;
      if (v106)
      {
        *&v105[4 * v106 - 4] = 0;
      }
    }
  }

  else
  {
LABEL_17:
    v17 = v105;
    *&v105[4 * v5] = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ConfigurationNames");
  p_p = &__p;
  v18 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v109, &__p);
  MEMORY[0x26672AF30](v18 + 56, v17);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p);
  }

  if (*(&v106 + 1))
  {
    v19 = &v109;
  }

  else
  {
    v19 = 0;
  }

  TOutputStream::writeHeader(a2, "Parameter", pParameterVersion, 7, v19);
  __p = v103;
  v102 = xmmword_26286B6F0;
  v104 = 1;
  p_p = v99;
  v98 = xmmword_26286B6F0;
  v100 = 1;
  v20 = a1[6];
  if (v20 == a1 + 7)
  {
LABEL_205:
    v95 = p_p == v99 || p_p == 0;
    if (!v95)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_210;
  }

  do
  {
    v21 = v20[5];
    if (v21 && (v22 = v21 - 1, v23 = a1[3], v22 < (a1[4] - v23) >> 3))
    {
      v24 = *(v23 + 8 * v22);
    }

    else
    {
      v24 = 0;
    }

    if (!TParam::needSave(v24))
    {
      goto LABEL_198;
    }

    v25 = TParam::flagsSet(v24, 8);
    if (v25)
    {
      v26 = "Create";
    }

    else
    {
      v26 = "Override";
    }

    v27 = *(v24 + 2);
    if (v27 <= 2)
    {
      if (v27)
      {
        if (v27 == 2)
        {
          v28 = *a2;
          if (v25)
          {
            v29 = 6;
          }

          else
          {
            v29 = 8;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "IntParam = {\n", 13);
          v30 = **v24;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Min = '", 11);
          MEMORY[0x26672B060](*a2, v31[38]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "'\n", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Max = '", 11);
          MEMORY[0x26672B060](*a2, v31[39]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "'\n", 2);
        }

        goto LABEL_106;
      }

      v49 = *a2;
      if (v25)
      {
        v50 = 6;
      }

      else
      {
        v50 = 8;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "BoolParam = {\n", 14);
      v51 = **v24;
      v53 = v52;
      v54 = v52 + 25;
      if (*(v52 + 223) < 0)
      {
        if (!v52[26] || !*v54)
        {
          goto LABEL_106;
        }
      }

      else if (!*(v52 + 223))
      {
        goto LABEL_106;
      }

      TBuffer<wchar_t>::resize(&__p, 0);
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "", 0x17uLL);
      if (*(v53 + 223) < 0)
      {
        if (v53[26])
        {
          v57 = *v54;
        }

        else
        {
          v57 = 0;
        }
      }

      else if (*(v53 + 223))
      {
        v57 = v54;
      }

      else
      {
        v57 = 0;
      }

      slashEscape(v57, &__p);
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "", 2uLL);
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "", 0x16uLL);
      if (*(v53 + 247) < 0)
      {
        if (v53[29])
        {
          v58 = v53[28];
        }

        else
        {
          v58 = 0;
        }
      }

      else if (*(v53 + 247))
      {
        v58 = (v53 + 28);
      }

      else
      {
        v58 = 0;
      }

      slashEscape(v58, &__p);
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "", 2uLL);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Allowables = {", 18);
      if (*(&v102 + 1) < v102)
      {
        v48 = __p;
        *(__p + *(&v102 + 1)) = 0;
        goto LABEL_105;
      }

      if ((v104 & 1) == 0)
      {
        v48 = __p;
        if (v102)
        {
          *(__p + v102 - 1) = 0;
        }

        goto LABEL_105;
      }

      goto LABEL_102;
    }

    if (v27 == 3)
    {
      v55 = *a2;
      if (v25)
      {
        v56 = 6;
      }

      else
      {
        v56 = 8;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "FloatParam = {\n", 15);
      goto LABEL_106;
    }

    if (v27 == 4)
    {
      v32 = *a2;
      v33 = v25 ? 6 : 8;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v26, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "StringParam = {\n", 16);
      v34 = **v24;
      if (v35[164] != v35[163])
      {
        v36 = v35;
        TBuffer<wchar_t>::resize(&__p, 0);
        if (v36[164] != v36[163])
        {
          v37 = 0;
          v38 = 0;
          do
          {
            v111[0] = 34;
            TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
            v39 = v36[163] + v37;
            if (*(v39 + 23) < 0)
            {
              v39 = *v39;
            }

            slashEscape(v39, &__p);
            TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "", 2uLL);
            v40 = v36[166];
            if (v40 != v36[167])
            {
              v41 = v40 + v37;
              if ((*(v41 + 23) & 0x80000000) == 0 || *v41)
              {
                TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "G", 0xBuLL);
                v42 = v36[166];
                if (v42 == v36[167])
                {
                  v43 = 0;
                }

                else
                {
                  v43 = (v42 + v37);
                  if (*(v42 + v37 + 23) < 0)
                  {
                    v43 = *v43;
                  }
                }

                slashEscape(v43, &__p);
                TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "", 2uLL);
              }
            }

            v44 = v36[169];
            if (v44 != v36[170])
            {
              v45 = v44 + v37;
              if ((*(v45 + 23) & 0x80000000) == 0 || *v45)
              {
                TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "D", 0xFuLL);
                v46 = v36[169];
                if (v46 == v36[170])
                {
                  v47 = 0;
                }

                else
                {
                  v47 = (v46 + v37);
                  if (*(v46 + v37 + 23) < 0)
                  {
                    v47 = *v47;
                  }
                }

                slashEscape(v47, &__p);
                TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "", 2uLL);
              }
            }

            ++v38;
            v37 += 24;
          }

          while (v38 < 0xAAAAAAAAAAAAAAABLL * ((v36[164] - v36[163]) >> 3));
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Allowables = {", 18);
        if (*(&v102 + 1) < v102)
        {
          v48 = __p;
          *(__p + *(&v102 + 1)) = 0;
LABEL_105:
          v59 = TOutputStream::operator<<(a2, v48);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v59, "}\n", 2);
          goto LABEL_106;
        }

        if ((v104 & 1) == 0)
        {
          v48 = __p;
          if (v102)
          {
            *(__p + v102 - 1) = 0;
          }

          goto LABEL_105;
        }

LABEL_102:
        v111[0] = 0;
        TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
        v48 = __p;
        --*(&v102 + 1);
        goto LABEL_105;
      }
    }

LABEL_106:
    TBuffer<wchar_t>::resize(&__p, 0);
    v60 = v24 + 2;
    if (*(v24 + 39) < 0)
    {
      v60 = *v60;
    }

    slashEscape(v60, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Name = ", 12);
    if (*(&v102 + 1) >= v102)
    {
      if (v104)
      {
        v111[0] = 0;
        TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
        v61 = __p;
        --*(&v102 + 1);
      }

      else
      {
        v61 = __p;
        if (v102)
        {
          *(__p + v102 - 1) = 0;
        }
      }
    }

    else
    {
      v61 = __p;
      *(__p + *(&v102 + 1)) = 0;
    }

    v62 = TOutputStream::operator<<(a2, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v62, "\n", 2);
    TBuffer<wchar_t>::resize(&__p, 0);
    v63 = v24 + 5;
    if (*(v24 + 63) < 0)
    {
      v63 = *v63;
    }

    slashEscape(v63, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Description = ", 19);
    if (*(&v102 + 1) >= v102)
    {
      if (v104)
      {
        v111[0] = 0;
        TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
        v64 = __p;
        --*(&v102 + 1);
      }

      else
      {
        v64 = __p;
        if (v102)
        {
          *(__p + v102 - 1) = 0;
        }
      }
    }

    else
    {
      v64 = __p;
      *(__p + *(&v102 + 1)) = 0;
    }

    v65 = TOutputStream::operator<<(a2, v64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v65, "\n", 2);
    if (v24[18])
    {
      TBuffer<wchar_t>::resize(&__p, 0);
      v66 = v24[18];
      v67 = v66 + 16;
      if (v66[39] < 0)
      {
        v67 = *v67;
      }

      slashEscape(v67, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Require = ", 15);
      if (*(&v102 + 1) >= v102)
      {
        if (v104)
        {
          v111[0] = 0;
          TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
          v68 = __p;
          --*(&v102 + 1);
        }

        else
        {
          v68 = __p;
          if (v102)
          {
            *(__p + v102 - 1) = 0;
          }
        }
      }

      else
      {
        v68 = __p;
        *(__p + *(&v102 + 1)) = 0;
      }

      v69 = TOutputStream::operator<<(a2, v68);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v69, "\n", 2);
    }

    TBuffer<wchar_t>::resize(&__p, 0);
    if (TParam::flagsSet(v24, 1))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "'", 0xAuLL);
    }

    if (TParam::flagsSet(v24, 32))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "'", 9uLL);
    }

    if (TParam::flagsSet(v24, 2))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "'", 7uLL);
    }

    if (TParam::flagsSet(v24, 256))
    {
      TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), "'", 0xCuLL);
    }

    if (*(&v102 + 1))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Flags = {", 13);
      if (*(&v102 + 1) >= v102)
      {
        if (v104)
        {
          v111[0] = 0;
          TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
          v70 = __p;
          --*(&v102 + 1);
        }

        else
        {
          v70 = __p;
          if (v102)
          {
            *(__p + v102 - 1) = 0;
          }
        }
      }

      else
      {
        v70 = __p;
        *(__p + *(&v102 + 1)) = 0;
      }

      v71 = TOutputStream::operator<<(a2, v70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v71, "}\n", 2);
    }

    (*(*v24 + 3))(v24, 1, &p_p);
    TBuffer<wchar_t>::resize(&__p, 0);
    if (*(&v98 + 1) >= v98)
    {
      if (v100)
      {
        v111[0] = 0;
        TBuffer<wchar_t>::insert(&p_p, *(&v98 + 1), v111, 1uLL);
        v72 = p_p;
        --*(&v98 + 1);
      }

      else
      {
        v72 = p_p;
        if (v98)
        {
          *(p_p + v98 - 1) = 0;
        }
      }
    }

    else
    {
      v72 = p_p;
      *(p_p + *(&v98 + 1)) = 0;
    }

    slashEscape(v72, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Defaults = { ", 17);
    if (a1[10] - a1[9] >= 0x21uLL)
    {
      v73 = 0;
      v74 = 10;
      do
      {
        if (((v24[14] >> v74) & 1) != 0 || v74 == 10 && TParam::flagsSet(v24, 8))
        {
          (*(*v24 + 3))(v24, v74 - 9, &p_p);
          TBuffer<wchar_t>::resize(&__p, 0);
          if (*(&v98 + 1) >= v98)
          {
            if (v100)
            {
              v111[0] = 0;
              TBuffer<wchar_t>::insert(&p_p, *(&v98 + 1), v111, 1uLL);
              v75 = p_p;
              --*(&v98 + 1);
            }

            else
            {
              v75 = p_p;
              if (v98)
              {
                *(p_p + v98 - 1) = 0;
              }
            }
          }

          else
          {
            v75 = p_p;
            *(p_p + *(&v98 + 1)) = 0;
          }

          slashEscape(v75, &__p);
          v76 = a1[9] + v73;
          v77 = (v76 + 40);
          if (*(v76 + 63) < 0)
          {
            v77 = *v77;
          }

          v78 = TOutputStream::operator<<(a2, v77);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v78, " = ", 4);
          if (*(&v102 + 1) >= v102)
          {
            if (v104)
            {
              v111[0] = 0;
              TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
              v79 = __p;
              --*(&v102 + 1);
            }

            else
            {
              v79 = __p;
              if (v102)
              {
                *(__p + v102 - 1) = 0;
              }
            }
          }

          else
          {
            v79 = __p;
            *(__p + *(&v102 + 1)) = 0;
          }

          v80 = TOutputStream::operator<<(v78, v79);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v80, " ", 2);
        }

        v81 = v74 - 8;
        ++v74;
        v73 += 32;
      }

      while (v81 < (a1[10] - a1[9]) >> 5);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n", 2);
    if ((a3 & 1) == 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Values = { ", 15);
      v83 = a1[9];
      v82 = a1[10];
      if ((v82 - v83) >= 0x21)
      {
        v84 = 0;
        v85 = 34;
        do
        {
          if ((v24[14] >> v85))
          {
            (*(*v24 + 2))(v24, v85 - 33, &p_p);
            TBuffer<wchar_t>::resize(&__p, 0);
            if (*(&v98 + 1) >= v98)
            {
              if (v100)
              {
                v111[0] = 0;
                TBuffer<wchar_t>::insert(&p_p, *(&v98 + 1), v111, 1uLL);
                v86 = p_p;
                --*(&v98 + 1);
              }

              else
              {
                v86 = p_p;
                if (v98)
                {
                  *(p_p + v98 - 1) = 0;
                }
              }
            }

            else
            {
              v86 = p_p;
              *(p_p + *(&v98 + 1)) = 0;
            }

            slashEscape(v86, &__p);
            v87 = a1[9] + v84;
            v88 = (v87 + 40);
            if (*(v87 + 63) < 0)
            {
              v88 = *v88;
            }

            v89 = TOutputStream::operator<<(a2, v88);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v89, " = ", 4);
            if (*(&v102 + 1) >= v102)
            {
              if (v104)
              {
                v111[0] = 0;
                TBuffer<wchar_t>::insert(&__p, *(&v102 + 1), v111, 1uLL);
                v90 = __p;
                --*(&v102 + 1);
              }

              else
              {
                v90 = __p;
                if (v102)
                {
                  *(__p + v102 - 1) = 0;
                }
              }
            }

            else
            {
              v90 = __p;
              *(__p + *(&v102 + 1)) = 0;
            }

            v91 = TOutputStream::operator<<(v89, v90);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v91, " ", 2);
            v83 = a1[9];
            v82 = a1[10];
          }

          v92 = v85 - 32;
          ++v85;
          v84 += 32;
        }

        while (v92 < (v82 - v83) >> 5);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n", 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n", 2);
LABEL_198:
    v93 = v20[1];
    if (v93)
    {
      do
      {
        v94 = v93;
        v93 = *v93;
      }

      while (v93);
    }

    else
    {
      do
      {
        v94 = v20[2];
        v95 = *v94 == v20;
        v20 = v94;
      }

      while (!v95);
    }

    v20 = v94;
  }

  while (v94 != a1 + 7);
  if (v100)
  {
    goto LABEL_205;
  }

LABEL_210:
  if (v104 == 1 && __p != v103 && __p)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v108 == 1 && v105 != v107 && v105)
  {
    MEMORY[0x26672B1B0]();
  }

  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(&v109, v110[0]);
}