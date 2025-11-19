float PadFireflyShapeNoiseProjection::updateDetectionState(PadFireflyShapeNoiseProjection *this)
{
  PadFireflyShapeNoiseProjection::calculateSignalEnergy(this);
  v2 = *(this + 6);
  v3 = *(v2 + 52);
  if (!*(v2 + 52))
  {
    goto LABEL_9;
  }

  v4 = vcgt_f32(*(v2 + 44), *(v2 + 8 * (v3 != 1) + 28));
  *(v2 + 53) = v4.i8[0] & v4.i8[4] & 1;
  if (v4.i8[0] & v4.i8[4])
  {
    PadFireflyShapeNoiseProjection::switchToListenSignal(this);
    v2 = *(this + 6);
    v3 = *(v2 + 52);
  }

  if (v3 == 1)
  {
    if (*(v2 + 53))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v3 = 1;
  }

  else
  {
LABEL_9:
    v5 = 0;
  }

  v6 = v2 + 28;
  v7 = (v2 + 28 + 8 * v5);
  *(this + 37) = *v7;
  *(this + 38) = v7[1];
  if (v3 == 2)
  {
    v8 = *(v2 + 53) == 0;
    v9 = 1;
    if (!v8)
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = v6 + 8 * v9;
  *(this + 39) = *v10;
  result = *(v10 + 4);
  *(this + 40) = result;
  return result;
}

uint64_t PadHoverTransitioningStep::PadHoverTransitioningStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v16 = &unk_2876F31E0;
  v16[10] = a3 + 28;
  v16[11] = a4 + 28;
  v16[12] = a5 + 28;
  v16[13] = a6;
  v16[14] = a7;
  v16[15] = a8;
  v17 = (v16 + 17);
  v16[16] = a9;
  AlgDataNode::AlgDataNode((v16 + 17), 0x377A34E1248190CLL, 0);
  *(a1 + 136) = &unk_2876F0108;
  *(a1 + 164) = 0;
  *(a1 + 152) = 20480;
  *(a1 + 160) = 1;
  AlgWorkNode::registerAlgDataNode(a1 + 56, v17);
  *(a1 + 164) = 1;
  return a1;
}

{
  return PadHoverTransitioningStep::PadHoverTransitioningStep(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_265405E40(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadHoverTransitioningStep::run(PadHoverTransitioningStep *this)
{
  if (*(this + 164) == 1)
  {
    PadHoverTransitioningStep::updateHoverPositionAtTransition(this);
    PadHoverTransitioningStep::applyHeightCorrection(this, 0);
  }

  return 0;
}

void *PadHoverTransitioningStep::updateHoverPositionAtTransition(void *this)
{
  v1 = this[10];
  v2 = this[11];
  v3 = v1[3].f32[0];
  v4 = v2[1];
  v5 = 0.0;
  if (v3 >= v4)
  {
    v5 = 1.0;
    if (v3 <= *v2)
    {
      v5 = (v3 - v4) / (*v2 - v4);
    }
  }

  *(this[15] + 28) = vmla_n_f32(vmul_n_f32(*(this[15] + 28), 1.0 - v5), *v1, v5);
  return this;
}

float PadHoverTransitioningStep::applyHeightCorrection(PadHoverTransitioningStep *a1, int a2)
{
  v4 = *(a1 + 12);
  v3 = *(a1 + 13);
  v5 = v4 + 16;
  if (v4[16] == a2 || (v5 = v4 + 19, v4[19] == a2) || (v5 = v4 + 22, v4[22] == a2))
  {
    v6 = v5[2];
    v7 = ((*(*(v3 + 32) + 8))() + v6);
  }

  else
  {
    v7 = v4 + 18;
  }

  v8 = PadHoverTransitioningStep::interpolateHeightCorrection(a1, *(*(a1 + 15) + 36), *v7);
  v9 = *(a1 + 15);
  result = v8 + *(v9 + 36);
  *(v9 + 36) = result;
  return result;
}

float PadHoverTransitioningStep::interpolateHeightCorrection(PadHoverTransitioningStep *this, float a2, int a3)
{
  v6 = *(this + 14);
  v7 = (*(*(v6 + 808) + 8))(v6 + 808);
  v8 = (*(*(v6 + 808) + 24))(v6 + 808);
  v9 = *(this + 14);
  v10 = (*(*(v9 + 744) + 8))(v9 + 744);
  v11 = (*(*(v9 + 744) + 24))(v9 + 744);
  v12 = v10 + 4 * (v11 * a3);
  v13 = *(*(this + 14) + 836);
  v14 = v13 - 1;
  if (((v13 - 1) & 0x80) != 0)
  {
    return *v12;
  }

  v15 = v7 + 4 * (v8 * a3);
  v16 = v14 & 0x7F;
  while (*(v15 + 4 * v16) >= a2)
  {
    if (v16-- <= 0)
    {
      return *v12;
    }
  }

  if (v16 == -1)
  {
    return *v12;
  }

  if (v13 - 1 == v16)
  {
    return *(v12 + 4 * v14);
  }

  v19 = 4 * v16;
  v20 = *(v15 + v19);
  v21 = v16 + 1;
  v22 = *(v15 + 4 * v21);
  v23 = *(v12 + v19);
  v24 = *(v12 + 4 * v21);

  return HoverCommon::linearInterpolation1D(v11, v20, v22, v23, v24, a2);
}

void PadHoverTransitioningStep::~PadHoverTransitioningStep(PadHoverTransitioningStep *this)
{
  *this = &unk_2876F31E0;
  *(this + 17) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F31E0;
  *(this + 17) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadFireflyModelBasedGridSearch::PadFireflyModelBasedGridSearch(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a1 = *(a2 + 10);
  *(a1 + 1) = *(a2 + 13);
  *(a1 + 2) = a4;
  *(a1 + 8) = a3;
  *(a1 + 16) = a6 + 176;
  *(a1 + 24) = a6 + 240;
  *(a1 + 32) = a6 + 304;
  *(a1 + 40) = a6 + 368;
  *(a1 + 48) = a6 + 432;
  *(a1 + 56) = a6 + 496;
  *(a1 + 64) = a6 + 560;
  *(a1 + 72) = a6 + 624;
  *(a1 + 80) = a6 + 944;
  *(a1 + 88) = a6 + 1008;
  *(a1 + 96) = a7;
  *(a1 + 104) = a8;
  *(a1 + 112) = a9;
  *(a1 + 120) = a10;
  *(a1 + 128) = a12 + 28;
  *(a1 + 136) = a13 + 28;
  *(a1 + 144) = a15 + 28;
  *(a1 + 152) = 0;
  *(a1 + 224) = vneg_f32(0x7F0000007FLL);
  *(a1 + 232) = 0;
  AlgDataNode::AlgDataNode((a1 + 240));
  *(a1 + 240) = &unk_2876F3230;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 256) = 20707;
  *(a1 + 264) = 32;
  AlgDataNode::AlgDataNode((a1 + 304));
  *(a1 + 304) = &unk_2876EFE20;
  *(a1 + 340) = 0;
  *(a1 + 348) = 0;
  *(a1 + 332) = 0;
  *(a1 + 320) = 20723;
  *(a1 + 328) = 24;
  *(a1 + 376) = a14;
  *(a1 + 384) = a11;
  *(a1 + 392) = 0;
  v16 = *(a1 + 1) * *(a1 + 1) * *(a1 + 2);
  operator new[]();
}

{
  PadFireflyModelBasedGridSearch::PadFireflyModelBasedGridSearch(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void PadFireflyModelBasedGridSearch::~PadFireflyModelBasedGridSearch(PadFireflyModelBasedGridSearch *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8052888210);
  }

  v3 = *(this + 21);
  if (v3)
  {
    MEMORY[0x266758580](v3, 0x1000C8052888210);
  }

  v4 = *(this + 22);
  if (v4)
  {
    MEMORY[0x266758580](v4, 0x1000C8052888210);
  }

  v5 = *(this + 23);
  if (v5)
  {
    MEMORY[0x266758580](v5, 0x1000C8052888210);
  }

  v6 = *(this + 24);
  if (v6)
  {
    MEMORY[0x266758580](v6, 0x1000C8052888210);
  }

  v7 = *(this + 25);
  if (v7)
  {
    MEMORY[0x266758580](v7, 0x1000C8052888210);
  }

  v8 = *(this + 26);
  if (v8)
  {
    MEMORY[0x266758580](v8, 0x1000C8052888210);
  }

  v9 = *(this + 27);
  if (v9)
  {
    MEMORY[0x266758580](v9, 0x1000C8052888210);
  }

  *(this + 38) = &unk_2876F3810;
  *(this + 30) = &unk_2876F3810;
}

void PadFireflyModelBasedGridSearch::runModelBasedGridSearch(unsigned __int8 *a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != 1 || a1[233] == 1)
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 15);
    v9 = *(a1 + 12);
    v11 = *(v9 + 44);
    v10 = (v9 + 44);
    v54 = v6;
    if (v11 == a2 || (v10 = v7 + 47, v7[47] == a2) || (v10 = v7 + 50, v7[50] == a2))
    {
      v12 = v10[2];
      v13 = ((*(*(v8 + 32) + 8))() + v12);
    }

    else
    {
      v13 = v7 + 46;
    }

    v53 = *v13;
    v14 = *(a1 + 13);
    v15 = 232;
    if (a2)
    {
      v16 = 304;
    }

    else
    {
      v15 = 88;
      v16 = 160;
    }

    if (a2)
    {
      v17 = 48;
    }

    else
    {
      v17 = 16;
    }

    if (a2)
    {
      v18 = 56;
    }

    else
    {
      v18 = 24;
    }

    if (a2)
    {
      v19 = 64;
    }

    else
    {
      v19 = 32;
    }

    if (a2)
    {
      v20 = 72;
    }

    else
    {
      v20 = 40;
    }

    v21 = v14 + v15;
    v22 = (*(*(v14 + v15) + 8))(v14 + v15);
    (*(*v21 + 32))(v21);
    (*(*v21 + 24))(v21);
    (*(*v21 + 32))(v21);
    v23 = *(a1 + 13) + v16;
    v24 = (*(*v23 + 8))(v23);
    (*(*v23 + 32))(v23);
    (*(*v23 + 24))(v23);
    (*(*v23 + 32))(v23);
    v25 = (*(*(*&a1[v17] + 32) + 8))();
    v26 = (*(*(*&a1[v18] + 32) + 8))();
    v27 = (*(*(*&a1[v19] + 32) + 8))();
    v28 = (*(*(*&a1[v20] + 32) + 8))();
    v29 = HoverCommon::calculateComplexNorm(v25, v26, a1[1]);
    v30 = *&v29;
    v31 = HoverCommon::calculateComplexNorm(v27, v28, *a1);
    v32 = *&v31;
    PadFireflyModelBasedGridSearch::projectProfileMatrices(a1, v22, v24, a2);
    PadFireflyModelBasedGridSearch::calculateSignalProfileInnerProduct(a1, v25, v26, v27, v28, a2);
    PadFireflyModelBasedGridSearch::calculateProjectedProfileNorm(a1, a2);
    PadFireflyModelBasedGridSearch::performGridSearch(a1, v53, a2, a3, v30, v32);
    v55 = 0;
    v56 = 0;
    if (a2 || !a3)
    {
      v35 = v54;
      if (a2)
      {
        if ((a3 & 1) == 0)
        {
          v44 = *(a1 + 47);
          v43 = *(a1 + 48);
          LOBYTE(InitialConditionResults) = v43[32];
          v45 = LODWORD(InitialConditionResults);
          LOBYTE(v34) = v43[33];
          v44[10] = v45;
          v44[11] = v34;
          LOBYTE(v45) = v43[34];
          v44[12] = LODWORD(v45);
          return;
        }

        if ((v54 & 1) == 0)
        {
          return;
        }

        LOBYTE(InitialConditionResults) = a1[272];
        v36 = LODWORD(InitialConditionResults);
        *(a1 + 86) = v36;
        LOBYTE(v36) = a1[273];
        v37 = LODWORD(v36);
        v38 = 20;
        v39 = 6;
        v40 = 16;
        goto LABEL_45;
      }
    }

    else
    {
      InitialConditionResults = *(*(a1 + 17) + 12) * *(a1 + 73);
      *(a1 + 98) = *(*(a1 + 48) + 52) > InitialConditionResults;
      v35 = v54;
    }

    v41 = a3 ^ 1;
    if (*(*(a1 + 16) + 20) == 1 && a1[232] == 1)
    {
      v42 = PadFireflyModelBasedGridSearch::performHighResXYGridSearch(a1, v53, &v56, *(a1 + 48), v30, v32);
      *(a1 + 45) = v56;
      if (a1[233] == 1)
      {
        InitialConditionResults = PadFireflyModelBasedGridSearch::performHighResXYGridSearch(a1, v53, &v55, a1 + 240, v30, v32);
        *(a1 + 46) = v55;
      }

      else
      {
        InitialConditionResults = INFINITY;
      }

      if (v42 > InitialConditionResults)
      {
        InitialConditionResults = PadFireflyModelBasedGridSearch::swapBestAndNextInitialConditionResults(a1);
      }
    }

    if ((v41 | a1[232]))
    {
      v47 = *(a1 + 47);
      v46 = *(a1 + 48);
      LOBYTE(InitialConditionResults) = v46[28];
      v48 = *(a1 + 90);
      *&v49 = v48 + LODWORD(InitialConditionResults);
      LOBYTE(v48) = v46[29];
      v50 = *(a1 + 91) + LODWORD(v48);
      v47[7] = *&v49;
      v47[8] = v50;
      LOBYTE(v49) = v46[30];
      InitialConditionResults = v49;
      v47[9] = InitialConditionResults;
    }

    if ((v35 | a1[233]))
    {
      LOBYTE(InitialConditionResults) = a1[268];
      *&v51 = *(a1 + 92) + LODWORD(InitialConditionResults);
      *(a1 + 83) = *&v51;
      LOBYTE(v51) = a1[269];
      v37 = *(a1 + 93) + v51;
      v38 = 8;
      v39 = 2;
      v40 = 4;
LABEL_45:
      v52 = a1 + 332;
      *&v52[v40] = v37;
      LOBYTE(v37) = a1[v39 + 268];
      *&v52[v38] = LODWORD(v37);
    }
  }
}

void PadFireflyModelBasedGridSearch::projectProfileMatrices(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = &a1[a4];
  bzero(*(a1 + 20), 4 * a1[1] * a1[1] * v7[237]);
  v8 = (*(*(*(a1 + 10) + 32) + 8))();
  v9 = a1[1];
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, v9, v7[237] * v9, v9, 1.0, v8, v9, (a2 + 4 * a1[234] * a1[1]), a1[2] * v9, 0.0, *(a1 + 20), v7[237] * v9);
  bzero(*(a1 + 21), 4 * *a1 * *a1 * v7[237]);
  v10 = (*(*(*(a1 + 11) + 32) + 8))();
  v11 = *a1;
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, v11, v7[237] * v11, v11, 1.0, v10, v11, (a3 + 4 * a1[234] * *a1), a1[2] * v11, 0.0, *(a1 + 21), v7[237] * v11);
}

void PadFireflyModelBasedGridSearch::calculateSignalProfileInnerProduct(unsigned __int8 *a1, const float *a2, const float *a3, const float *a4, const float *a5, int a6)
{
  v11 = &a1[a6];
  bzero(*(a1 + 24), 4 * a1[1] * v11[237]);
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 1, v11[237] * a1[1], a1[1], 1.0, a2, a1[1], *(a1 + 20), v11[237] * a1[1], 0.0, *(a1 + 24), v11[237] * a1[1]);
  bzero(*(a1 + 25), 4 * a1[1] * v11[237]);
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 1, v11[237] * a1[1], a1[1], 1.0, a3, a1[1], *(a1 + 20), v11[237] * a1[1], 0.0, *(a1 + 25), v11[237] * a1[1]);
  bzero(*(a1 + 26), 4 * *a1 * v11[237]);
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 1, v11[237] * *a1, *a1, 1.0, a4, *a1, *(a1 + 21), v11[237] * *a1, 0.0, *(a1 + 26), v11[237] * *a1);
  bzero(*(a1 + 27), 4 * *a1 * v11[237]);
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, 1, v11[237] * *a1, *a1, 1.0, a5, *a1, *(a1 + 21), v11[237] * *a1, 0.0, *(a1 + 27), v11[237] * *a1);
}

void PadFireflyModelBasedGridSearch::calculateProjectedProfileNorm(unsigned __int8 *a1, int a2)
{
  v4 = a1 + 237;
  bzero(*(a1 + 22), 4 * a1[1] * a1[a2 + 237]);
  v5 = v4[a2];
  if (v4[a2])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a1[1];
      if (a1[1])
      {
        v9 = v8 * v5;
        v10 = (*(a1 + 22) + v6 * v8);
        v11 = (*(a1 + 20) + v6 * v8);
        v12 = a1[1];
        do
        {
          *v10++ = cblas_sdot(v8, v11, v9, v11, v9);
          ++v11;
          --v12;
        }

        while (v12);
        v5 = v4[a2];
      }

      ++v7;
      v6 += 4;
    }

    while (v7 < v5);
    v13 = 4 * v5;
  }

  else
  {
    v13 = 0;
  }

  bzero(*(a1 + 23), v13 * *a1);
  v14 = v4[a2];
  if (v4[a2])
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *a1;
      if (*a1)
      {
        v18 = v17 * v14;
        v19 = (*(a1 + 23) + v15 * v17);
        v20 = (*(a1 + 21) + v15 * v17);
        v21 = *a1;
        do
        {
          *v19++ = cblas_sdot(v17, v20, v18, v20, v18);
          ++v20;
          --v21;
        }

        while (v21);
        v14 = v4[a2];
      }

      ++v16;
      v15 += 4;
    }

    while (v16 < v14);
  }
}

void PadFireflyModelBasedGridSearch::performGridSearch(unsigned __int8 *a1, int a2, int a3, int a4, float a5, float a6)
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  v140 = v8;
  if (a3 == 1)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    if (a1[233] != 1)
    {
      return;
    }

    v105 = 1;
    v10 = a1 + 240;
    goto LABEL_11;
  }

  v10 = *(a1 + 48);
  v105 = v9;
  if (a3)
  {
LABEL_11:
    v11 = INFINITY;
    v126 = INFINITY;
    goto LABEL_13;
  }

  v11 = *(a1 + 56);
  v126 = *(a1 + 57);
LABEL_13:
  v104 = v10;
  PadFireflyModelBasedGridSearch::determineSearchBound(a1, a3, &v145, v144, v143, v10 + 28);
  v13 = *(a1 + 14);
  v14 = v13[4];
  v13 += 4;
  v15 = (*(v14 + 8))(v13);
  (*(*v13 + 32))(v13);
  v16 = (*(*v13 + 24))(v13) * a2;
  v110 = v15 + 4 * v16 * (*(*v13 + 32))(v13);
  v17 = *(a1 + 14);
  v18 = v17[13];
  v17 += 13;
  v19 = (*(v18 + 8))(v17);
  (*(*v17 + 32))(v17);
  v20 = (*(*v17 + 24))(v17) * a2;
  v109 = v19 + 4 * v20 * (*(*v17 + 32))(v17);
  v21 = *(a1 + 14);
  v22 = a1[234];
  v115 = a3;
  v23 = 320;
  if (a3)
  {
    v24 = 392;
  }

  else
  {
    v23 = 176;
    v24 = 248;
  }

  v25 = v21 + v23;
  v26 = (*(*(v21 + v23) + 8))(v21 + v23);
  v138 = (*(*v25 + 32))(v25);
  v136 = (*(*v25 + 24))(v25);
  v27 = (*(*v25 + 32))(v25);
  v28 = *(a1 + 14) + v24;
  v29 = a1[234];
  v30 = (*(*v28 + 8))(v28);
  v31 = (*(*v28 + 32))(v28);
  v32 = (*(*v28 + 24))(v28);
  v33 = (*(*v28 + 32))(v28);
  v34 = v145;
  v108 = v146;
  if (v145 < v146)
  {
    v35 = (v31 * v29 + v32 * a2 * v33);
    v36 = *(a1 + 14);
    v37 = v36[955];
    v38 = v36[956];
    v39 = v36[953];
    v40 = v36[952];
    v41 = v144[0];
    v113 = v144[1];
    v42 = v143[0];
    v43 = v143[1];
    v111 = (v30 + 4 * v143[0] * v39 + 4 * v38 + 4 * v145 + 4 * v35);
    v44 = 4 * v39;
    v106 = v26 + 4 * v143[0] * v40 + 4 * v37 + 4 * v144[0] + 4 * (v138 * v22 + v136 * a2 * v27);
    v45 = 4 * v40;
    v46 = 0.0;
    v47 = 0.0000001;
    v48 = -2.0;
    v49 = 0.0;
    v123 = 0.0;
    v124 = 0.0;
    v50 = v11;
    v125 = "ly_SPA_Dirty_Frequency_Freq2_time";
    v117 = "ly_SPA_Dirty_Frequency_Freq2_time";
    v118 = "ly_SPA_Dirty_Frequency_Freq2_time";
    v51 = a1;
    v107 = v144[0];
    v112 = v143[0];
    while (v41 >= v113)
    {
      v11 = v50;
      v78 = v49;
      v79 = v46;
LABEL_47:
      ++v34;
      ++v111;
      v46 = v79;
      v49 = v78;
      v50 = v11;
      v41 = v107;
      if (v34 == v108)
      {
        goto LABEL_50;
      }
    }

    v52 = v106;
    v127 = v41;
    while (1)
    {
      v114 = v52;
      if (v42 < v43)
      {
        break;
      }

      v11 = v50;
      v78 = v49;
      v79 = v46;
LABEL_44:
      v52 = v114 + 1;
      v46 = v79;
      v49 = v78;
      v50 = v11;
      ++v127;
      v42 = v112;
      if (v127 == v113)
      {
        goto LABEL_47;
      }
    }

    v54 = *(v51 + 22);
    v53 = *(v51 + 23);
    v55 = v34 + v127 * v51[1];
    v56 = *(v110 + 4 * v55);
    v57 = *(v51 + 24);
    v58 = *(v51 + 25);
    v59 = *(v109 + 4 * v55);
    v60 = v127 + v42 * *v51;
    v61 = 4 * *v51;
    v62 = v34 + v42 * v51[1];
    v64 = *(v51 + 26);
    v63 = *(v51 + 27);
    v65 = 4 * v51[1];
    v66 = v52;
    v67 = v111;
    v121 = v59;
    v119 = v65;
    v120 = v61;
    while (1)
    {
      v68 = *(v54 + 4 * v62);
      v69 = *(v53 + 4 * v60);
      v70 = *v66;
      v71 = *v67;
      v72 = *(v64 + 4 * v60);
      v73 = *(v63 + 4 * v60);
      v74 = (v72 * v56) - (v73 * v59);
      v75 = (v73 * v56) + (v72 * v59);
      v76 = (*v67 * v74) + (*v66 * *(v57 + 4 * v62));
      v77 = (*v67 * v75) + (*v66 * *(v58 + 4 * v62));
      v78 = v47;
      v79 = v47;
      if (fabsf(v77) > v47)
      {
        v78 = v47;
        v79 = v47;
        if (fabsf(v76) > v47)
        {
          v80 = v51;
          v81 = v34;
          v139 = v31;
          v82 = v43;
          v83 = v47;
          v133 = v49;
          v130 = v42;
          v134 = v53;
          v135 = v64;
          v137 = v57;
          v84 = v58;
          v85 = v63;
          v131 = v67;
          v132 = v66;
          v128 = *(v53 + 4 * v60);
          v129 = *(v54 + 4 * v62);
          v86 = hypotf((*v67 * v74) + (*v66 * *(v57 + 4 * v62)), (*v67 * v75) + (*v66 * *(v58 + 4 * v62)));
          v69 = v128;
          v68 = v129;
          v67 = v131;
          v66 = v132;
          v65 = v119;
          v61 = v120;
          v63 = v85;
          v64 = v135;
          v57 = v137;
          v59 = v121;
          v58 = v84;
          v53 = v134;
          v42 = v130;
          v49 = v133;
          v48 = -2.0;
          v47 = v83;
          v43 = v82;
          v31 = v139;
          v34 = v81;
          v51 = v80;
          v78 = 0.0000001;
          v79 = 0.0000001;
          if (v86 > 0.0000001)
          {
            v78 = v76 / v86;
            v79 = -v77 / v86;
          }
        }
      }

      v11 = ((a5 + ((v70 * v70) * v68)) + (a6 + ((v71 * v71) * v69))) + (((v76 * v78) - (v77 * v79)) * v48);
      if (v11 < v50)
      {
        break;
      }

      v87 = v140;
      if (v11 >= v126)
      {
        v87 = 0;
      }

      if (v87 != 1)
      {
        v11 = v50;
        goto LABEL_40;
      }

      v116 = v51[234] + v42;
      v51[233] = 1;
      LOBYTE(v118) = v127;
      LOBYTE(v117) = v34;
      v126 = v11;
      v11 = v50;
LABEL_41:
      ++v42;
      v67 = (v67 + v44);
      v66 = (v66 + v45);
      v63 += v61;
      v64 += v61;
      v53 += v61;
      v58 += v65;
      v57 += v65;
      v54 += v65;
      v46 = v79;
      v49 = v78;
      v50 = v11;
      if (v43 == v42)
      {
        goto LABEL_44;
      }
    }

    if (v140)
    {
      if (v51[232] == 1)
      {
        v116 = v122;
        LOBYTE(v118) = v31;
        v51[233] = 1;
        LOBYTE(v117) = v125;
        v126 = v50;
        v46 = v123;
        v49 = v124;
      }

      v122 = v51[234] + v42;
    }

    else
    {
      v122 = v51[234] + v42;
      if (v115)
      {
        LOBYTE(v125) = v34;
        v31 = v127;
LABEL_38:
        v123 = v79;
        v124 = v78;
LABEL_40:
        v78 = v49;
        v79 = v46;
        goto LABEL_41;
      }
    }

    LOBYTE(v125) = v34;
    v31 = v127;
    v51[232] = 1;
    goto LABEL_38;
  }

  v123 = 0.0;
  v124 = 0.0;
  LOBYTE(v118) = v146;
  LOBYTE(v117) = v146;
  LOBYTE(v125) = v146;
  v78 = 0.0;
  v79 = 0.0;
  v51 = a1;
LABEL_50:
  if ((v105 | v51[232]))
  {
    v88 = v79;
    v89 = v51[1] * v31 + v125;
    v90 = v51;
    v91 = atan2f(-v123, v124);
    v93 = v109;
    v92 = v110;
    v94 = v91 + atan2f(-*(v109 + 4 * v89), *(v110 + 4 * v89));
    v95 = v116;
    v97 = v117;
    v96 = v118;
    if (v115)
    {
      v104[32] = v125;
      v104[33] = v31;
      v104[34] = v122;
      *(v104 + 11) = v91;
      *(v104 + 12) = v94;
      *(v104 + 14) = v11;
      return;
    }

    v98 = *(v90 + 48);
    v98[28] = v125;
    v98[29] = v31;
    v98[30] = v122;
    v99 = *(v90 + 48);
    v99[9] = v91;
    v99[10] = v94;
    v99[13] = v11;
    *(v90 + 56) = v11;
    v51 = v90;
    v79 = v88;
  }

  else
  {
    v95 = v116;
    v93 = v109;
    v92 = v110;
    v97 = v117;
    v96 = v118;
    if (v115)
    {
      return;
    }
  }

  if (v51[233] == 1)
  {
    v100 = v51[1] * v96 + v97;
    v101 = v51;
    v102 = atan2f(-v79, v78);
    v103 = atan2f(-*(v93 + 4 * v100), *(v92 + 4 * v100));
    *(v101 + 268) = v97;
    *(v101 + 269) = v96;
    *(v101 + 270) = v95;
    v101[69] = v102;
    v101[70] = v102 + v103;
    v101[73] = v126;
    v101[57] = v126;
  }
}

float PadFireflyModelBasedGridSearch::performHighResXYGridSearch(unsigned __int8 *a1, int a2, _DWORD *a3, unsigned __int8 *a4, float a5, float a6)
{
  v100 = a3;
  v102 = a5;
  v103 = a6;
  v114 = *MEMORY[0x277D85DE8];
  v88 = a4;
  v8 = a4 + 28;
  v9 = a4[28];
  LOBYTE(a5) = a4[29];
  v10 = LODWORD(a5);
  v11 = a4[30];
  v12 = v11;
  v13 = *(a1 + 14);
  v14 = v13[4];
  v13 += 4;
  v15 = (*(v14 + 8))(v13);
  (*(*v13 + 32))(v13);
  v16 = (*(*v13 + 24))(v13) * a2;
  v17 = v15 + 4 * v16 * (*(*v13 + 32))(v13);
  v18 = *(a1 + 14);
  v19 = v18[13];
  v18 += 13;
  v20 = (*(v19 + 8))(v18);
  (*(*v18 + 32))(v18);
  v21 = (*(*v18 + 24))(v18);
  v109 = a2;
  v22 = v21 * a2;
  v23 = (*(*v18 + 32))(v18);
  v25 = v20 + 4 * (v22 * v24);
  v26 = a1;
  v23.n128_u8[0] = a1[1];
  v95 = v9;
  v27 = (v9 + (v10 * v23.n128_u32[0]));
  v105 = *(v17 + 4 * v27);
  v106 = v10;
  v104 = *(v25 + 4 * v27);
  v111 = *(v8 + 6);
  v28 = *(a1 + 16);
  v91 = v8;
  PadFireflyModelBasedGridSearch::determineHighResSearchBound(v26, v113, v112, v8);
  v29 = (4 * *(v28 + 2) + 15) & 0x7F0;
  MEMORY[0x28223BE20](v30);
  v108 = v87 - v31;
  v32 = 4 * *(v28 + 2);
  MEMORY[0x28223BE20](v33);
  v107 = v87 - ((v34 + 15) & 0x7F0);
  MEMORY[0x28223BE20](v35);
  v37 = v87 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = v87 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = v87 - v42;
  MEMORY[0x28223BE20](v44);
  v47 = v87 - v46;
  if (*(v26 + 98) == 1)
  {
    v11 = v26[234];
    v48 = v26[235];
  }

  else
  {
    v48 = (v12 + 1.0);
  }

  if (v11 < v48)
  {
    v87[1] = v45;
    v96 = v12;
    v99 = 0;
    v90 = v113[0];
    v94 = v113[1];
    v49 = v28 + 4;
    v50 = v11;
    v93 = v112[0];
    v51 = v112[1];
    v89 = v48;
    v97 = 0.0;
    v98 = 0.0;
    do
    {
      v52 = *((*(*(*(v26 + 13) + 32) + 8))() + 4 * v50);
      v53 = v91;
      PadFireflyModelBasedGridSearch::generateCostComponentsForHighResSearchPerAxis(v26, v52, 0, 0, v113, v108, v107, v37, v91);
      v110 = v52;
      PadFireflyModelBasedGridSearch::generateCostComponentsForHighResSearchPerAxis(v26, v52, 0, 1, v112, v40, v43, v47, v53);
      v54 = v50 - v26[234];
      v55 = (v95 + (v54 * v26[1]));
      v56 = *(v26 + 23);
      v57 = *(v28 + 3);
      *(v108 + 4 * v57) = *(*(v26 + 22) + 4 * v55);
      v58 = *(v26 + 25);
      *(v107 + 4 * v57) = *(*(v26 + 24) + 4 * v55);
      *&v37[4 * v57] = *(v58 + 4 * v55);
      v59 = (v106 + (v54 * *v26));
      *&v40[4 * v57] = *(v56 + 4 * v59);
      v60 = *(v26 + 27);
      *&v43[4 * v57] = *(*(v26 + 26) + 4 * v59);
      *&v47[4 * v57] = *(v60 + 4 * v59);
      v61 = v90;
      v92 = v50;
      if (v90 < v94)
      {
        v101 = v50;
        do
        {
          v62 = v26;
          ScalingFactor = HoverCommon::getScalingFactor(1, *(v49 + 4 * v61) + v95, v110, 0, *(v26 + 14), v109);
          v64 = v93;
          if (v93 < v51)
          {
            v65 = ScalingFactor;
            v66 = ScalingFactor * ScalingFactor;
            do
            {
              v67 = *(v28 + 3);
              if (v61 != v67 || v64 != v67)
              {
                v69 = HoverCommon::getScalingFactor(0, *(v49 + 4 * v64) + v106, v110, 0, *(v62 + 14), v109);
                v70 = *(v108 + 4 * v61);
                v71 = *&v40[4 * v64];
                v72 = *&v43[4 * v64];
                v73 = *&v47[4 * v64];
                v74 = (v65 * ((v72 * v105) - (v73 * v104))) + (v69 * *(v107 + 4 * v61));
                v75 = (v65 * ((v105 * v73) + (v72 * v104))) + (v69 * *&v37[4 * v61]);
                v76 = 0.0000001;
                v77 = 0.0000001;
                if (fabsf(v74) > 0.0000001)
                {
                  v76 = 0.0000001;
                  v77 = 0.0000001;
                  if (fabsf(v75) > 0.0000001)
                  {
                    v78 = hypotf(v74, v75);
                    v76 = 0.0000001;
                    v77 = 0.0000001;
                    if (v78 > 0.0000001)
                    {
                      v76 = v74 / v78;
                      v77 = -v75 / v78;
                    }
                  }
                }

                v79 = ((v102 + ((v69 * v69) * v70)) + (v103 + (v66 * v71))) + (((v74 * v76) - (v75 * v77)) * -2.0);
                if (v79 < v111)
                {
                  v80 = v100;
                  *v100 = *(v49 + 4 * v61);
                  v81 = *(v49 + 4 * v64);
                  v99 = 1;
                  v80[1] = v81;
                  v97 = v76;
                  v98 = v77;
                  v111 = v79;
                  v96 = v101;
                }
              }

              ++v64;
            }

            while (v51 != v64);
          }

          ++v61;
          v26 = v62;
        }

        while (v61 != v94);
      }

      v50 = v92 + 1;
    }

    while (v92 + 1 != v89);
    if (v99)
    {
      v82 = atan2f(-v98, v97);
      v83 = atan2f(-v104, v105);
      v84 = v88;
      *(v88 + 9) = v82;
      *(v84 + 10) = v82 + v83;
      *(v84 + 13) = v111;
      if (*(v26 + 98) == 1)
      {
        v84[30] = v96;
      }
    }
  }

  v85 = *MEMORY[0x277D85DE8];
  return v111;
}

float PadFireflyModelBasedGridSearch::swapBestAndNextInitialConditionResults(PadFireflyModelBasedGridSearch *this)
{
  AlgDataNode::AlgDataNode(&v15);
  v15 = &unk_2876EFE20;
  v18 = 0uLL;
  v19 = 0;
  v16 = 20723;
  v17 = 24;
  AlgDataNode::AlgDataNode(v12);
  v2 = *(this + 268);
  v14 = *(this + 284);
  v13 = v2;
  v19 = *(this + 348);
  v18 = *(this + 332);
  result = *(this + 57);
  v4 = *(this + 47);
  v5 = *(this + 48);
  v6 = *(v4 + 28);
  *(this + 348) = *(v4 + 44);
  *(this + 332) = v6;
  v7 = *(v5 + 44);
  *(this + 268) = *(v5 + 28);
  *(this + 284) = v7;
  v8 = *(this + 46);
  *(this + 46) = *(this + 45);
  v9 = v13;
  *(v5 + 44) = v14;
  *(v5 + 28) = v9;
  v10 = *(this + 47);
  v11 = v18;
  *(v10 + 44) = v19;
  *(v10 + 28) = v11;
  *(this + 45) = v8;
  *(this + 57) = result;
  return result;
}

unsigned __int8 *PadFireflyModelBasedGridSearch::determineSearchBound(unsigned __int8 *result, int a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, unsigned __int8 *a6)
{
  if (a2)
  {
    v6 = *(result + 16);
    v7 = *a6;
    v8 = *v6;
    v9 = v7 - v8;
    v10 = v8 + v7;
    v11 = a6[1];
    v12 = v11 - v8;
    v13 = v11 + v8;
    v14 = a6[2] - result[234];
    v15 = v14 + v6[1];
    *a3 = v9 & ~(v9 >> 31);
    if (v10 < result[1])
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = result[1];
    }

    a3[1] = v16;
    *a4 = v12 & ~(v12 >> 31);
    v17 = *result;
    if (v13 < v17)
    {
      LOBYTE(v17) = v13 + 1;
    }

    a4[1] = v17;
    *a5 = v14 & ~(v14 >> 31);
    if (v15 + 1 <= result[238])
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = result[238];
    }
  }

  else
  {
    v19 = result[1];
    *a3 = 0;
    a3[1] = v19;
    v20 = *result;
    *a4 = 0;
    a4[1] = v20;
    v18 = result[237];
    *a5 = 0;
  }

  a5[1] = v18;
  return result;
}

unsigned __int8 *PadFireflyModelBasedGridSearch::determineHighResSearchBound(unsigned __int8 *result, _BYTE *a2, _BYTE *a3, unsigned __int8 *a4)
{
  v4 = *(result + 16);
  v5 = *(v4 + 2);
  *a2 = 0;
  a2[1] = v5;
  v6 = *(v4 + 2);
  *a3 = 0;
  a3[1] = v6;
  v7 = *a4;
  if (!*a4)
  {
    *a2 = *(v4 + 3);
  }

  if (result[1] - 1 == v7)
  {
    a2[1] = *(v4 + 3) + 1;
  }

  v8 = a4[1];
  if (!a4[1])
  {
    *a3 = *(v4 + 3);
  }

  if (*result - 1 == v8)
  {
    a3[1] = *(v4 + 3) + 1;
  }

  return result;
}

void PadFireflyModelBasedGridSearch::generateCostComponentsForHighResSearchPerAxis(unsigned __int8 *a1, float a2, uint64_t a3, int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v50 = a7;
  v51 = a8;
  v49 = a6;
  v53[1] = *MEMORY[0x277D85DE8];
  v48 = a4;
  if (a4)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1 + 1;
  }

  v13 = *v12;
  v14 = 88;
  if (a4)
  {
    v15 = 32;
  }

  else
  {
    v14 = 80;
    v15 = 16;
  }

  v16 = *&a1[v14];
  if (a4)
  {
    v17 = 40;
  }

  else
  {
    v17 = 24;
  }

  v19 = *(v16 + 32);
  v18 = v16 + 32;
  v20 = *(v19 + 8);
  if (a4)
  {
    v21 = a9 + 1;
  }

  else
  {
    v21 = a9;
  }

  v47 = v20(v18);
  (*(*v18 + 24))(v18);
  v46 = (*(*(*&a1[v15] + 32) + 8))();
  v45 = (*(*(*&a1[v17] + 32) + 8))();
  v22 = *v21;
  v23 = *(a1 + 16);
  MEMORY[0x28223BE20](v24);
  v26 = (&v45 - ((v25 + 15) & 0x7F0));
  MEMORY[0x28223BE20](v27);
  v29 = (&v45 - v28);
  v53[0] = 0;
  v52 = 0;
  MEMORY[0x28223BE20](v30);
  v32 = (&v45 - v31);
  MEMORY[0x28223BE20](v33);
  v36 = (&v45 - v35);
  v37 = *a5;
  v38 = a5[1];
  if (v37 < v38)
  {
    v39 = v34;
    do
    {
      if (v37 != *(v23 + 3))
      {
        HoverModelSelector::evalEstimatedProfile(*(a1 + 1), v48, 0, v13, v26, v53 + 1, v53, &v52, *(v23 + 4 + 4 * v37) + v39, a2, v32, v36);
        HoverCommon::project1Dvector(v26, v13, v29, v47, v40);
        v41 = HoverCommon::calculateNormSquared(v29, v13);
        *(v49 + 4 * v37) = LODWORD(v41);
        v42 = cblas_sdot(v13, v46, 1, v29, 1);
        *(v50 + 4 * v37) = v42;
        v43 = cblas_sdot(v13, v45, 1, v29, 1);
        *(v51 + 4 * v37) = v43;
        v38 = a5[1];
      }

      ++v37;
    }

    while (v37 < v38);
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t PadFireflyModelBasedGridSearch::determineComputationBound(float32x2_t *a1, __int32 a2, unsigned int a3)
{
  v5 = *(*&a1[13] + 32);
  a1[19].i32[0] = a2;
  v6 = *(v5 + 8);
  v7 = a1 + a3;
  if (a2 == 2)
  {
    v15 = *(*&a1[17] + 8);
    v16 = v6();
    result = HoverCommon::findIndexOfNearestElement(v16, v15, a1->u8[2]);
    a1[29].i8[2] = result + 1;
    v7[235] = a1->i8[2];
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else if (a2 == 1)
  {
    v8 = *(*&a1[17] + 4);
    v9 = v6();
    a1[29].i8[2] = HoverCommon::findIndexOfNearestElement(v9, v8, a1->u8[2]);
    v10 = *(*&a1[17] + 8);
    v11 = (*(*(*&a1[13] + 32) + 8))();
    a1[29].i8[3] = HoverCommon::findIndexOfNearestElement(v11, v10, a1->u8[2]) + 1;
    v12 = *(*&a1[17] + 8) + 7.2;
    v13 = (*(*(*&a1[13] + 32) + 8))();
    result = HoverCommon::findIndexOfNearestElement(v13, v12, a1->u8[2]);
    a1[29].i8[4] = result + 1;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *(*&a1[16] + 16);
    v18 = v6();
    result = HoverCommon::findIndexOfNearestElement(v18, v17, a1->u8[2]);
    a1[29].i8[2] = result;
    v7[235] = a1->i8[2];
    if (!a3)
    {
LABEL_8:
      a1[28] = vneg_f32(0x7F0000007FLL);
LABEL_9:
      a1[29].i16[0] = 0;
    }
  }

  v7[237] = v7[235] - a1[29].i8[2];
  return result;
}

float PadFireflyModelBasedGridSearch::replaceInitialConditionByNextBestResult(PadFireflyModelBasedGridSearch *this)
{
  v1 = *(this + 48);
  v2 = *(this + 268);
  *(v1 + 44) = *(this + 284);
  *(v1 + 28) = v2;
  v3 = *(this + 47);
  v4 = *(this + 332);
  *(v3 + 44) = *(this + 348);
  *(v3 + 28) = v4;
  result = *(this + 57);
  *(this + 56) = result;
  return result;
}

uint64_t PadFireflyDisplayNoiseProjectionStep::PadFireflyDisplayNoiseProjectionStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v15 = &unk_2876F3268;
  v15[10] = a5;
  v15[11] = a6;
  v15[12] = a7;
  v15[13] = a8;
  v16 = (v15 + 14);
  AlgDataNode::AlgDataNode((v15 + 14), 0x377A34E1248190CLL, 0);
  *(a1 + 112) = &unk_2876F0108;
  *(a1 + 140) = 0;
  *(a1 + 128) = 20480;
  *(a1 + 136) = 1;
  *(a1 + 144) = *(a3 + 10);
  *(a1 + 145) = *(a3 + 13);
  *(a1 + 152) = a4;
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 88));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 96));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 104));
  AlgWorkNode::registerAlgDataNode(a1 + 56, v16);
  *(a1 + 140) = 1;
  return a1;
}

uint64_t PadFireflyDisplayNoiseProjectionStep::run(PadFireflyDisplayNoiseProjectionStep *this)
{
  if (*(this + 140) == 1)
  {
    PadFireflyDisplayNoiseProjectionStep::runDisplayNoiseProjection(this);
  }

  return 0;
}

uint64_t PadFireflyDisplayNoiseProjectionStep::runDisplayNoiseProjection(PadFireflyDisplayNoiseProjectionStep *this)
{
  if (**(this + 19) == 1)
  {
    for (i = 0; i != 2; ++i)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        v5 = v4;
        v6 = *(this + 10);
        v7 = v6[4];
        v6 += 4;
        v8 = (*(v7 + 8))(v6);
        v9 = (*(*v6 + 32))(v6) * v3;
        v10 = (*(*v6 + 24))(v6) * i;
        v11 = (v8 + 2 * (v9 + v10 * (*(*v6 + 32))(v6)));
        v12 = *(this + 12);
        v13 = v12[4];
        v12 += 4;
        v14 = (*(v13 + 8))(v12);
        v15 = (*(*v12 + 32))(v12) * v3;
        v16 = (*(*v12 + 24))(v12) * i;
        v17 = (v14 + 4 * (v15 + v16 * (*(*v12 + 32))(v12)));
        v3 = 1;
        PadFireflyDisplayNoiseProjectionStep::projectSignal(this, v11, v17, 1);
        v4 = 0;
      }

      while ((v5 & 1) != 0);
    }

    for (j = 0; j != 2; ++j)
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = v20;
        v22 = *(this + 11);
        v23 = v22[4];
        v22 += 4;
        v24 = (*(v23 + 8))(v22);
        v25 = (*(*v22 + 32))(v22) * v19;
        v26 = (*(*v22 + 24))(v22) * j;
        v27 = (v24 + 2 * (v25 + v26 * (*(*v22 + 32))(v22)));
        v28 = *(this + 13);
        v29 = v28[4];
        v28 += 4;
        v30 = (*(v29 + 8))(v28);
        v31 = (*(*v28 + 32))(v28) * v19;
        v32 = (*(*v28 + 24))(v28) * j;
        v33 = (*(*v28 + 32))(v28);
        PadFireflyDisplayNoiseProjectionStep::projectSignal(this, v27, (v30 + 4 * (v31 + v32 * v33)), 0);
        v20 = 0;
        v19 = 1;
      }

      while ((v21 & 1) != 0);
    }
  }

  else
  {
    SA1DArrayBase<float>::copyArrayStaticCast<short>(*(this + 12) + 32, *(this + 10) + 32);
    SA1DArrayBase<float>::copyArrayStaticCast<short>(*(this + 13) + 32, *(this + 11) + 32);
  }

  return 1;
}

uint64_t PadFireflyDisplayNoiseProjectionStep::projectSignal(uint64_t this, const __int16 *a2, float *a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = 145;
  }

  else
  {
    v4 = 144;
  }

  v5 = 40;
  if (a4)
  {
    v5 = 4;
  }

  v6 = *(this + 152) + v5;
  v7 = *(this + v4);
  v22 = 0;
  v8 = 0.0;
  v9 = 0.0;
  if (v7)
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = a2[v10];
      v12 = v12 + v13;
      v11 = v11 + (v10 * v13);
      v9 = v9 + ((v10 * v10) * v13);
      ++v10;
    }

    while (v7 != v10);
    v22 = __PAIR64__(LODWORD(v12), LODWORD(v11));
  }

  v14 = 0;
  v21 = v9;
  v15 = (v6 + 12);
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    v18 = *(&v21 + v14);
    v17 = v17 + (*(v15 - 3) * v18);
    v16 = v16 + (*v15 * v18);
    v8 = v8 + (v15[3] * v18);
    ++v14;
    ++v15;
  }

  while (v14 != 3);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      a3[i] = ((a2[i] - ((i * i) * v17)) - (i * v16)) - v8;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return this;
}

void PadFireflyDisplayNoiseProjectionStep::~PadFireflyDisplayNoiseProjectionStep(PadFireflyDisplayNoiseProjectionStep *this)
{
  *this = &unk_2876F3268;
  *(this + 14) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3268;
  *(this + 14) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadFireflyXYMeasurementStep::PadFireflyXYMeasurementStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v18 = &unk_2876F32B8;
  AlgDataNode::AlgDataNode((v18 + 10), 0x377A34E1248190CLL, 0);
  *(a1 + 80) = &unk_2876F0108;
  *(a1 + 108) = 0;
  *(a1 + 96) = 20480;
  *(a1 + 104) = 1;
  AlgDataNode::AlgDataNode((a1 + 112), 0x574DEEAF489BB25DLL, 0);
  *(a1 + 112) = &unk_2876F0108;
  *(a1 + 140) = 0;
  *(a1 + 128) = 20480;
  *(a1 + 136) = 1;
  *(a1 + 144) = a3;
  *(a1 + 152) = a4;
  *(a1 + 160) = a5;
  *(a1 + 168) = a6;
  *(a1 + 176) = a7;
  *(a1 + 184) = a8;
  *(a1 + 192) = a9;
  *(a1 + 200) = a10;
  *(a1 + 208) = a11;
  *(a1 + 216) = a12;
  if (a10[841] <= a10[840])
  {
    v19 = a10[840];
  }

  else
  {
    v19 = a10[841];
  }

  v20 = a10[842];
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 224), 0xC25E750EF9D2B522, v19 + 2 * v20);
  *(a1 + 224) = &unk_2876F2DF8;
  *(a1 + 256) = &unk_2876F2E40;
  *(a1 + 280) = v20;
  *(a1 + 284) = v20;
  *(a1 + 285) = v20 + v19;
  *(a1 + 286) = v19;
  PadFireflyXYMeasurementStep::runNodeRegistrations(a1);
  *(a1 + 108) = 1;
  *(a1 + 140) = 1;
  return a1;
}

{
  return PadFireflyXYMeasurementStep::PadFireflyXYMeasurementStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_2654090B8(_Unwind_Exception *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v4);
  *v3 = &unk_2876F3810;
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void *PadFireflyXYMeasurementStep::runNodeRegistrations(PadFireflyXYMeasurementStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 19));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 22));
  AlgWorkNode::registerAlgDataNode(this + 56, this + 112);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 21) + 24);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 21) + 88);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 26));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 8);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 80);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 152);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 224);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 296);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 368);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 440);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 512);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 584);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 648);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 712);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25) + 776);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 24));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 8);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 80);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 152);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 224);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 584);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 648);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 712);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25) + 776);
  v2 = *(this + 24);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t PadFireflyXYMeasurementStep::run(PadFireflyXYMeasurementStep *this)
{
  if (*(this + 108) == 1)
  {
    v2 = *(this + 24);
    v4 = *(this + 26);
    v3 = *(this + 27);
    v5 = v4 + 44;
    v6 = v4 + 44;
    if (v4[44] && (v6 = v4 + 47, v4[47]) && (v6 = v4 + 50, v4[50]))
    {
      v7 = v4 + 46;
    }

    else
    {
      v8 = v6[2];
      v7 = ((*(*(v3 + 32) + 8))() + v8);
    }

    v9 = *v7;
    if (*v5 == 1 || (v5 = v4 + 47, v4[47] == 1) || (v5 = v4 + 50, v4[50] == 1))
    {
      v10 = v5[2];
      v11 = ((*(*(*(this + 27) + 32) + 8))() + v10);
    }

    else
    {
      v11 = v4 + 46;
    }

    v12 = *v11;
    PadFireflyXYMeasurementStep::computeCentroidsAndRadius(this, (v2 + 28), v2[188], (*(this + 25) + 584), *(this + 25) + 8, *(this + 25) + 296, (*(this + 18) + 56), v9, 1, 1u);
    PadFireflyXYMeasurementStep::computeCentroidsAndRadius(this, (v2 + 108), v2[189], (*(this + 25) + 712), *(this + 25) + 152, *(this + 25) + 440, (*(this + 18) + 120), v9, 1, 0);
    PadFireflyXYMeasurementStep::computeCentroidsAndRadius(this, (v2 + 240), v2[400], (*(this + 25) + 648), *(this + 25) + 80, *(this + 25) + 368, (*(this + 18) + 56), v12, 0, 1u);
    v13 = PadFireflyXYMeasurementStep::computeCentroidsAndRadius(this, (v2 + 320), v2[401], (*(this + 25) + 776), *(this + 25) + 224, *(this + 25) + 512, (*(this + 18) + 120), v12, 0, 0);
    v15 = PadFireflyXYMeasurementStep::cullAndMergePatchSlices(v14, v13, (v2 + 28), (v2 + 192), (v2 + 212));
    PadFireflyXYMeasurementStep::cullAndMergePatchSlices(v15, v16, (v2 + 240), (v2 + 404), (v2 + 424));
    v17 = *(this + 19);
    v18 = v17 + 4 * v9;
    LODWORD(v19) = *(v18 + 64);
    PadFireflyXYMeasurementStep::computeMergedZareaZdensity(this, (v2 + 28), v19, *(v18 + 28), 1.0);
    LODWORD(v20) = *(v17 + 4 * v12 + 100);
    PadFireflyXYMeasurementStep::computeMergedZareaZdensity(this, (v2 + 240), v20, 0.5, 3.0);
    if (*(this + 140) == 1 && v2[188] >= 3u && v2[189] >= 3u)
    {
      PadFireflyXYMeasurementStep::postCentroidCorrection(this);
    }
  }

  return 0;
}

uint64_t PadFireflyXYMeasurementStep::computeCentroidsAndRadius(uint64_t result, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unsigned int a8, char a9, unsigned __int8 a10)
{
  if (a3 >= 3)
  {
    v14 = result;
    v15 = *(result + 160);
    v16 = 38;
    if (a10)
    {
      v16 = 36;
    }

    v17 = *(v15 + v16);
    v18 = 46;
    if (a10)
    {
      v18 = 44;
    }

    v19 = *(v15 + v18);
    v20 = 172;
    if (!a10)
    {
      v20 = 173;
    }

    v45 = v20;
    v46 = *(result + 160);
    if (a10)
    {
      v21 = 174;
    }

    else
    {
      v21 = 175;
    }

    v22 = v19;
    v23 = 50;
    if (a10)
    {
      v23 = 48;
    }

    v43 = v23;
    v44 = v21;
    v24 = 42;
    if (a10)
    {
      v24 = 40;
    }

    v42 = v24;
    v25 = (a2 + 40);
    for (i = a3 - 2; i; --i)
    {
      if (v25[10])
      {
        if ((a9 & 1) == 0)
        {
          v22 = *(v46 + v43);
          v17 = *(v46 + v42);
        }

        PadFireflyXYMeasurementStep::dampenPatchPeriphery(v17, v22, result, v25, a5, a6);
        v27 = PadFireflyXYMeasurementStep::extrapolateVectorPatchAlongPaddings(v14, v25, a4, a5, a10, a9);
        v30 = v14[19];
        if (a9)
        {
          v31 = v30 + 136;
          if (!a10)
          {
            v31 = v30 + 145;
          }

          LOBYTE(v28) = *(v31 + a8);
          if (a10)
          {
            v32 = v30 + 154;
          }

          else
          {
            v32 = v30 + 163;
          }

          LOBYTE(v29) = *(v32 + a8);
          PadFireflyXYMeasurementStep::totalSignalSum(v28 / v29, v27, v25, a5);
          v34 = *(v30 + v44);
          v35 = *(v30 + v45);
          if (v35 == 3 && v34 == 4)
          {
            PadFireflyXYMeasurementStep::preprocessPatch3by4(v33, v25, a5);
          }

          else if (v35 == 5 && v34 == 4)
          {
            PadFireflyXYMeasurementStep::preprocessPatch5by4(v33, v25, a5);
          }

          else if (v35 != v34)
          {
            PadFireflyXYMeasurementStep::preprocessPatchPowf(v35 / v34, v33, v25, a5);
          }

          result = PadFireflyXYMeasurementStep::cullOnePixelPatch(v33, v25, a4);
          if (result)
          {
            goto LABEL_47;
          }

          PadFireflyXYMeasurementStep::computeTipPatchCentroid(v14, a5, v25, a7, a10);
          goto LABEL_46;
        }

        result = PadFireflyXYMeasurementStep::cullOnePixelPatch(v27, v25, a4);
        if ((result & 1) == 0)
        {
          v40 = v30 + 176;
          if (!a10)
          {
            v40 = v30 + 185;
          }

          LOBYTE(v38) = *(v40 + a8);
          if (a10)
          {
            v41 = v30 + 194;
          }

          else
          {
            v41 = v30 + 203;
          }

          LOBYTE(v39) = *(v41 + a8);
          PadFireflyXYMeasurementStep::computeRingPatchCentroid(v14, a5, v25, a7, a10, v38 / v39);
LABEL_46:
          result = PadFireflyXYMeasurementStep::computePatchRadius(v14, v25, a4, a6, a7);
        }
      }

LABEL_47:
      v25 += 20;
    }
  }

  return result;
}

float PadFireflyXYMeasurementStep::cullAndMergePatchSlices(float result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 160);
  if (v5 >= 3)
  {
    v6 = 0;
    v7 = 0;
    result = *a4;
    v8 = *(a3 + 161);
    v9 = a3 + 80;
    v10 = 3.4028e38;
    for (i = 2; i != v5; ++i)
    {
      if (v8 >= 3)
      {
        v12 = (a3 + 120);
        for (j = 2; j != v8; ++j)
        {
          v14 = *v12;
          v12 += 5;
          v15 = sqrtf(((*a5 - v14) * (*a5 - v14)) + ((result - *(a3 + 20 * i)) * (result - *(a3 + 20 * i))));
          if (v15 < v10)
          {
            v10 = v15;
            v7 = j;
            v6 = i;
          }
        }
      }
    }

    if (v6 && v7)
    {
      v16 = a3 + 20 * v6;
      v17 = *(v16 + 10);
      if (!v17)
      {
        *(v9 + 20 * v7 + 16) = 0;
      }

      v18 = v9 + 20 * v7;
      if (*(v18 + 10))
      {
        v19 = *(v16 + 16);
      }

      else
      {
        *(v16 + 16) = 0;
        v19 = 0;
      }

      *a4 = *v16;
      *(a4 + 8) = *(v16 + 8);
      *(a4 + 10) = v17;
      *(a4 + 13) = *(v16 + 13);
      *(a4 + 16) = v19;
      *(a4 + 11) = *(v16 + 11);
      *a5 = *v18;
      *(a5 + 8) = *(v18 + 8);
      result = *(v18 + 16);
      *(a5 + 16) = result;
      *(a5 + 10) = *(v18 + 10);
    }
  }

  return result;
}

float PadFireflyXYMeasurementStep::computeMergedZareaZdensity(uint64_t a1, uint64_t a2, double a3, float a4, float a5)
{
  v7 = *&a3;
  v10 = *(a2 + 164);
  v11 = *(a2 + 184);
  v12 = *(a1 + 144);
  v13 = ((v12[8] / v12[9]) * 1000.0) * 0.5;
  if (v11 <= (v12[58] - v13) && v11 >= (v13 + v12[59]))
  {
    v15 = *(a2 + 164);
  }

  else
  {
    LODWORD(a3) = *(a2 + 164);
    v14 = SurfaceGrid::computeMinDistToTopBottomElectrodes(v12, 0, a3, *(a2 + 184));
    v12 = *(a1 + 144);
    *(a2 + 180) = *(a2 + 180) * (*(*(a1 + 152) + 240) + (((v14 / 1000.0) * *(*(a1 + 152) + 236)) + (((v14 / 1000.0) * (v14 / 1000.0)) * *(*(a1 + 152) + 232))));
    v15 = *(a2 + 164);
  }

  v16 = ((v12[10] / v12[11]) * 1000.0) * 0.5;
  if (v15 <= (v12[56] - v16) && v15 >= (v16 + v12[57]))
  {
    v19 = *(a2 + 200);
    v18 = *(a1 + 152);
  }

  else
  {
    v17 = SurfaceGrid::computeMinDistToSideElectrodes(v12, 0, v10);
    v18 = *(a1 + 152);
    v19 = *(a2 + 200) * (v18[63] + (((v17 / 1000.0) * v18[62]) + (((v17 / 1000.0) * (v17 / 1000.0)) * v18[61])));
    *(a2 + 200) = v19;
  }

  v20 = ((1.0 - a4) * v19) + (a4 * *(a2 + 180));
  v21 = ((v20 + v20) * 0.0039062) * v7;
  *(a2 + 204) = v21;
  v22 = v18[53];
  v23 = sqrtf((*(a2 + 188) * *(a2 + 188)) + (*(a2 + 168) * *(a2 + 168)));
  if (v23 > v22)
  {
    v22 = v23;
  }

  if (*(a2 + 160) < 3u || *(a2 + 161) <= 2u)
  {
    *(a2 + 180) = 0;
    v24 = 0.0;
    *(a2 + 200) = 0;
  }

  else
  {
    v24 = (v21 * a5) / ((v22 / 1000.0) * 0.097656);
  }

  result = v24 * 0.5;
  *(a2 + 208) = result;
  return result;
}

float PadFireflyXYMeasurementStep::postCentroidCorrection(PadFireflyXYMeasurementStep *this)
{
  v2 = *(this + 24);
  v3 = *(this + 21);
  if ((*(v3 + 633) & 1) == 0)
  {
    PadFireflyXYMeasurementStep::postCentroidCorrection(this, (v2 + 192), 0);
    result = v4 + *(v2 + 192);
    *(v2 + 192) = result;
    v3 = *(this + 21);
  }

  if ((*(v3 + 634) & 1) == 0)
  {
    v6 = (v2 + 212);
    PadFireflyXYMeasurementStep::postCentroidCorrection(this, v6, 1);
    result = v7 + *v6;
    *v6 = result;
  }

  return result;
}

void PadFireflyXYMeasurementStep::dampenPatchPeriphery(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - a1;
  if ((a2 - a1) != 0.0)
  {
    v8 = *(a4 + 11);
    if (v8 <= *(a4 + 12))
    {
      v11 = a6 + 32;
      v12 = a5 + 32;
      while (1)
      {
        v13 = *((*(*v11 + 8))(v11) + 4 * v8);
        if (v13 < a1)
        {
          break;
        }

        if (v13 < a2)
        {
          v14 = ((v13 - a1) * *((*(*v12 + 8))(v12) + 4 * v8)) / v6;
          goto LABEL_8;
        }

LABEL_9:
        LOBYTE(v8) = v8 + 1;
        if (*(a4 + 12) < v8)
        {
          return;
        }
      }

      v14 = 0.0;
LABEL_8:
      *((*(*v12 + 8))(v12) + 4 * v8) = v14;
      goto LABEL_9;
    }
  }
}

uint64_t PadFireflyXYMeasurementStep::extrapolateVectorPatchAlongPaddings(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  if (a2[11] <= 1u)
  {
    PadFireflyXYMeasurementStep::extrapolatePixel(a1, a2, 1u, 0, a3, a4, a2[13], a5, a6);
  }

  result = (*(*a3 + 40))(a3);
  v13 = a2[12];
  v14 = (result - 2);
  if (v13 == v14 || v14 + 1 == v13)
  {
    return PadFireflyXYMeasurementStep::extrapolatePixel(a1, a2, v14, (result - 1), a3, a4, a2[13], a5, a6);
  }

  return result;
}

void PadFireflyXYMeasurementStep::totalSignalSum(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 11);
  v6 = 0.0;
  if (v5 <= *(a3 + 12))
  {
    v8 = a4 + 32;
    do
    {
      v9 = *((*(*v8 + 8))(v8) + 4 * v5);
      if (a1 != 1.0)
      {
        v10 = logf(v9);
        v9 = expf(v10 * a1);
      }

      v6 = v6 + v9;
      LOBYTE(v5) = v5 + 1;
    }

    while (*(a3 + 12) >= v5);
  }

  *(a3 + 16) = v6;
}

void PadFireflyXYMeasurementStep::preprocessPatch3by4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 11);
  if (v3 <= *(a2 + 12))
  {
    v5 = a3 + 32;
    do
    {
      v6 = sqrtf(*((*(*v5 + 8))(v5) + 4 * v3));
      *((*(*v5 + 8))(v5) + 4 * v3++) = v6 * sqrtf(v6);
    }

    while (*(a2 + 12) >= v3);
  }
}

void PadFireflyXYMeasurementStep::preprocessPatch5by4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 11);
  if (v3 <= *(a2 + 12))
  {
    v5 = a3 + 32;
    do
    {
      v6 = (*(*v5 + 8))(v5);
      v7 = *(v6 + 4 * v3) * sqrtf(sqrtf(*(v6 + 4 * v3)));
      *((*(*v5 + 8))(v5) + 4 * v3++) = v7;
    }

    while (*(a2 + 12) >= v3);
  }
}

void PadFireflyXYMeasurementStep::preprocessPatchPowf(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 11);
  if (v4 <= *(a3 + 12))
  {
    v7 = a4 + 32;
    do
    {
      v8 = (*(*v7 + 8))(v7);
      v9 = logf(*(v8 + 4 * v4));
      v10 = expf(v9 * a1);
      *((*(*v7 + 8))(v7) + 4 * v4++) = v10;
    }

    while (*(a3 + 12) >= v4);
  }
}

BOOL PadFireflyXYMeasurementStep::cullOnePixelPatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 11);
  if (v3 <= v4)
  {
    if (v4 <= v3)
    {
      v6 = a3 + 32;
      v7 = *(a2 + 11);
      do
      {
        *((*(*v6 + 8))(v6) + v7++) = 1;
      }

      while (*(a2 + 12) >= v7);
    }

    *(a2 + 10) = 0;
    *(a2 + 16) = 0;
  }

  return v3 <= v4;
}

uint64_t PadFireflyXYMeasurementStep::computeTipPatchCentroid(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v10 = a4 + 4;
  v11 = *((*(a4[4] + 8))(a4 + 4) + 4);
  v12 = *(*(*v10 + 8))(v10);
  v13 = a1 + 256;
  SA1DArrayBase<float>::fill(a1 + 256, 0.0);
  for (i = -1; i != 2; ++i)
  {
    v15 = i + *(a3 + 8);
    *((*(*v13 + 8))(a1 + 256) + 4 * v15) = 1065353216;
  }

  v16 = v11 - v12;
  PadFireflyXYMeasurementStep::computePatchCentroid(a1, a2, a3, a4, a5);
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = v17 - *((*(a4[4] + 8))(v10) + 4 * v18);
  v20 = 1.0 - fabsf((v19 + v19) / v16);
  v21 = *(a3 + 8);
  v22 = (*(*(a1 + 256) + 8))(a1 + 256);
  v23 = v21 - 1;
  if (v19 <= 0.0)
  {
    v23 = v21 + 1;
  }

  *(v22 + 4 * v23) = v20;
  v24 = *(a3 + 11);
  if (v24 <= *(a3 + 12))
  {
    v25 = a2 + 32;
    do
    {
      v26 = *((*(*v13 + 8))(a1 + 256) + 4 * v24);
      v27 = v26 * *((*(*v25 + 8))(a2 + 32) + 4 * v24);
      *((*(*v25 + 8))(a2 + 32) + 4 * v24++) = v27;
    }

    while (*(a3 + 12) >= v24);
  }

  return PadFireflyXYMeasurementStep::computePatchCentroid(a1, a2, a3, a4, a5);
}

float PadFireflyXYMeasurementStep::computeRingPatchCentroid(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, float a6)
{
  v9 = a1;
  v10 = *(a3 + 11);
  if (v10 <= *(a3 + 12))
  {
    v14 = a2 + 32;
    v15 = a4 + 4;
    v16 = 0.0;
    v12 = 0.0;
    v17 = 0.0;
    do
    {
      v18 = (*(*v14 + 8))(v14);
      v19 = *(v18 + 4 * v10);
      if (a6 == 2.0)
      {
        v20 = v19 * v19;
      }

      else
      {
        v21 = logf(*(v18 + 4 * v10));
        v20 = expf(v21 * a6);
      }

      v17 = v17 + v20;
      v12 = v12 + v19;
      a1 = (*(*v15 + 8))(a4 + 4);
      v16 = v16 + (v20 * *(a1 + 4 * v10));
      LOBYTE(v10) = v10 + 1;
    }

    while (*(a3 + 12) >= v10);
    v11 = v16 / v17;
  }

  else
  {
    v11 = NAN;
    v12 = 0.0;
  }

  if (v12 <= 0.0)
  {
    v11 = 0.0;
  }

  *a3 = v11;
  v22 = 228;
  if (a5)
  {
    v22 = 224;
  }

  PadFireflyXYMeasurementStep::stretchCentroidInExtrapolationRange(*(*(v9 + 152) + v22), a1, a3, a4);
  result = v12 + v12;
  *(a3 + 16) = v12 + v12;
  return result;
}

uint64_t PadFireflyXYMeasurementStep::computePatchRadius(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 11))
  {
    v10 = *(a2 + 11);
    v11 = *(a2 + 11) - (*((*(a3[4] + 8))() + (v10 - 1)) == 1);
  }

  else
  {
    v11 = 0;
  }

  result = (*(*a3 + 40))(a3);
  v14 = *(a2 + 12);
  if (v14 <= (result - 2))
  {
    result = (*(a3[4] + 8))(a3 + 4);
    if (*(result + v14 + 1) == 1)
    {
      LOBYTE(v14) = *(a2 + 12) + 1;
    }

    else
    {
      LOBYTE(v14) = *(a2 + 12);
    }
  }

  v13.n128_u64[0] = 0;
  if (v11 <= v14)
  {
    v15 = a4 + 32;
    v16 = a5 + 32;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = v11;
      v20 = *((*(*v15 + 8))(v15, v13) + 4 * v11);
      v21 = *a2;
      result = (*(*v16 + 8))(v16);
      if (v20 > 0.0)
      {
        v13.n128_f32[0] = v21 - *(result + 4 * v11);
        v17 = v17 + (v20 * v20);
        v18 = v18 + (((v20 * v20) * v13.n128_f32[0]) * v13.n128_f32[0]);
      }

      ++v11;
    }

    while ((v19 + 1) <= v14);
    v13.n128_u32[0] = 0;
    if (v17 > 0.0)
    {
      v13.n128_f32[0] = sqrtf(v18 / v17) * *(*(a1 + 152) + 216);
    }
  }

  *(a2 + 4) = v13.n128_u32[0];
  return result;
}

uint64_t PadFireflyXYMeasurementStep::extrapolatePixel(void *a1, _BYTE *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int a8, char a9)
{
  result = (*(*(a5 + 32) + 8))();
  if (*(result + a3) != a7)
  {
    return result;
  }

  v59 = a2;
  v18 = a1[22];
  v19 = 34;
  if (a8)
  {
    v19 = 30;
  }

  v20 = a3;
  v21 = *(a1[23] + v19);
  if (*(v18 + 144))
  {
    v22 = *(a1[23] + v19);
  }

  else
  {
    v22 = 0.0;
  }

  v24 = *(a6 + 32);
  v23 = a6 + 32;
  v25 = *((*(v24 + 8))(v23) + 4 * a3);
  v26 = 2 * a3 - a4;
  v27 = (*(*v23 + 8))(v23);
  if (a9)
  {
    v28 = *(v27 + 4 * v26);
    v29 = *(a1[19] + 220);
    v30 = 80;
    if (a3 > a4)
    {
      v30 = 84;
    }

    v31 = 136;
    if (a3 > a4)
    {
      v31 = 140;
    }

    v32 = v29 == a8;
    if (v29 == a8)
    {
      v33 = v30;
    }

    else
    {
      v33 = v31;
    }

    if (v32)
    {
      v34 = (v18 + 44);
    }

    else
    {
      v34 = (v18 + 100);
    }

    if (v32)
    {
      v35 = (v18 + 56);
    }

    else
    {
      v35 = (v18 + 112);
    }

    if (v32)
    {
      v36 = (v18 + 68);
    }

    else
    {
      v36 = (v18 + 124);
    }

    if (v32)
    {
      v37 = (v18 + 32);
    }

    else
    {
      v37 = (v18 + 88);
    }

    v38 = *(v18 + v33);
    result = (*(*v23 + 8))(v23);
    if (*(result + 4 * v26) <= v38)
    {
      v56 = *((*(*v23 + 8))(v23) + 4 * v20) / *(v18 + 148);
      *((*(*v23 + 8))(v23) + 4 * v20) = v56;
      result = (*(*v23 + 8))(v23);
      v53 = *(result + 4 * v20) * 0.5;
      v41 = v59;
      goto LABEL_51;
    }

    v39 = (v22 + v25) / (v22 + (v28 + 1.0));
    v40 = 0.0;
    v41 = v59;
    if (v39 >= 0.15)
    {
      if (v39 >= *v37)
      {
        if (v39 >= v37[1])
        {
          if (v39 >= v37[2])
          {
            result = (*(*v23 + 8))(v23);
            v40 = *(result + 4 * v20) * 0.5;
            goto LABEL_50;
          }

          v42 = v34[2];
          v43 = v39 - v35[2];
          v44 = v36[2];
        }

        else
        {
          v42 = v34[1];
          v43 = v39 - v35[1];
          v44 = v36[1];
        }
      }

      else
      {
        v42 = *v34;
        v43 = v39 - *v35;
        v44 = *v36;
      }

      v40 = v44 + (v42 * v43);
    }

LABEL_50:
    v53 = v40 - v21;
LABEL_51:
    if (v53 <= 0.0 || v53 >= 1000.0)
    {
      return result;
    }

LABEL_56:
    v58 = (*(*v23 + 8))(v23);
    *(v58 + 4 * a4) = v53;

    return PadFireflyWatershedStep::addPixelToPatch(v58, a4, v41, a5);
  }

  v45 = 42;
  if (a8)
  {
    v45 = 38;
  }

  v46 = *(a1[23] + v45);
  if (*((*(*v23 + 8))(v23) + 4 * a3) <= fmaxf(*(v18 + 156) - v46, 0.0))
  {
    goto LABEL_38;
  }

  v47 = *(v18 + 152);
  v48 = v47 - *((*(*v23 + 8))(v23) + 4 * a3);
  v49 = v48 - *((*(*v23 + 8))(v23) + 4 * v26);
  v50 = v49 - *((*(*v23 + 8))(v23) + 4 * (3 * a3 - 2 * a4));
  v51 = v50 - *((*(*v23 + 8))(v23) + 4 * (-3 * a4 + 4 * a3));
  v52 = v51 - *((*(*v23 + 8))(v23) + 4 * (5 * a3 - 4 * a4));
  v53 = (v52 - *((*(*v23 + 8))(v23) + 4 * (-5 * a4 + 6 * a3))) + (v46 * -7.0);
  result = (*(*v23 + 8))(v23);
  if (v53 <= 0.0 || v53 >= *(result + 4 * a3))
  {
LABEL_38:
    result = (*(*v23 + 8))(v23);
    v53 = ((*(result + 4 * a3) + v46) * 0.5) - v46;
  }

  v55 = v53 > 0.0 && v53 < 1000.0;
  v41 = v59;
  if (v55)
  {
    goto LABEL_56;
  }

  return result;
}

uint64_t PadFireflyXYMeasurementStep::computePatchCentroid(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v8 = a1;
  v9 = *(a3 + 11);
  v10 = 0.0;
  v11 = 0.0;
  if (v9 <= *(a3 + 12))
  {
    v12 = a2 + 32;
    v13 = a4 + 4;
    do
    {
      a1 = (*(*v12 + 8))(v12);
      v14 = *(a1 + 4 * v9);
      if (v14 > 0.0)
      {
        v10 = v10 + v14;
        a1 = (*(*v13 + 8))(a4 + 4);
        v11 = v11 + (v14 * *(a1 + 4 * v9));
      }

      LOBYTE(v9) = v9 + 1;
    }

    while (*(a3 + 12) >= v9);
  }

  v15 = v11 / v10;
  if (v10 <= 0.0)
  {
    v15 = 0.0;
  }

  *a3 = v15;
  v16 = 228;
  if (a5)
  {
    v16 = 224;
  }

  v17 = *(*(v8 + 152) + v16);

  return PadFireflyXYMeasurementStep::stretchCentroidInExtrapolationRange(v17, a1, a3, a4);
}

uint64_t PadFireflyXYMeasurementStep::stretchCentroidInExtrapolationRange(float a1, uint64_t a2, float *a3, void *a4)
{
  v6 = a1 + -1.0;
  v7 = (*(*a4 + 40))(a4);
  v8 = *a3;
  v10 = a4[4];
  v9 = a4 + 4;
  if (v8 >= *((*(v10 + 8))(v9) + 4))
  {
    v13 = *a3;
    v14 = (v7 - 2);
    result = (*(*v9 + 8))(v9);
    if (v13 <= *(result + 4 * v14))
    {
      return result;
    }

    v15 = *a3;
    result = (*(*v9 + 8))(v9);
    v12 = *a3 + ((v15 - *(result + 4 * v14)) * v6);
  }

  else
  {
    result = (*(*v9 + 8))(v9);
    v12 = *a3 - ((*(result + 4) - *a3) * v6);
  }

  *a3 = v12;
  return result;
}

uint64_t PadFireflyXYMeasurementStep::postCentroidCorrection(void *a1, float *a2, int a3)
{
  v4 = *a2;
  v5 = a1[18];
  v6 = a1[21];
  if (a3)
  {
    v7 = v6[1];
    v8 = v6[632];
    v10 = a1[26];
    v9 = a1[27];
    v11 = (v4 / ((*(v5 + 32) / *(v5 + 36)) * 1000.0)) + 1;
    v13 = *((*(*(v5 + 152) + 8))() + 4 * v11);
    v14 = *(a1[21] + 8);
    v15 = (v6 + 88);
  }

  else
  {
    v7 = *v6;
    v8 = v6[632];
    v10 = a1[26];
    v9 = a1[27];
    v16 = (v4 / ((*(v5 + 40) / *(v5 + 44)) * 1000.0)) + 1;
    v13 = *((*(*(v5 + 88) + 8))() + 4 * v16);
    v14 = *(a1[21] + 4);
    v15 = (v6 + 24);
  }

  v12.n128_f32[0] = v4;

  return PadUtils::correctCentroidLut(v7, v15, (v10 + 28), v8, v9, v12, v13, v14);
}

uint64_t PadHoverPathFilteringStep::PadHoverPathFilteringStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v21 = &unk_2876F3308;
  *(v21 + 80) = a3 + 28;
  *(v21 + 88) = a4 + 28;
  *(v21 + 96) = a5 + 28;
  *(v21 + 104) = a6 + 28;
  *(v21 + 112) = a7 + 28;
  *(v21 + 120) = a8 + 28;
  *(v21 + 128) = a9 + 28;
  *(v21 + 136) = a10 + 28;
  *(v21 + 144) = a11 + 28;
  *(v21 + 152) = 0;
  *(v21 + 160) = a15;
  PadHoverOneLiraFilter::PadHoverOneLiraFilter(v21 + 168);
  v22 = *(a1 + 112);
  PadHoverOneLiraFilter::PadHoverOneLiraFilter(a1 + 656);
  v23 = *(a1 + 112);
  PadHoverOneLiraFilter::PadHoverOneLiraFilter(a1 + 1144);
  v24 = *(a1 + 112);
  PadHoverOneLiraFilter::PadHoverOneLiraFilter(a1 + 1632);
  v25 = *(a1 + 112);
  PadHoverOneLiraFilter::PadHoverOneLiraFilter(a1 + 2120);
  *(a1 + 2608) = a7 + 176;
  *(a1 + 2616) = a12 + 28;
  *(a1 + 2624) = a13 + 28;
  AlgDataNode::AlgDataNode((a1 + 2632), 0x377A34E1248190CLL, 0);
  *(a1 + 2632) = &unk_2876F0108;
  *(a1 + 2660) = 0;
  *(a1 + 2648) = 20480;
  *(a1 + 2656) = 1;
  AlgWorkNode::registerAlgDataNode(a1 + 8, a3);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a4);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a8);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a9);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a10);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a11);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 2632);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a7);
  *(a1 + 2660) = 1;
  return a1;
}

{
  return PadHoverPathFilteringStep::PadHoverPathFilteringStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void sub_26540B520(_Unwind_Exception *a1)
{
  *(v1 + 308) = &unk_2876F3810;
  *(v1 + 299) = &unk_2876F3810;
  *(v1 + 287) = &unk_2876F3810;
  *(v1 + 247) = &unk_2876F3810;
  *(v1 + 238) = &unk_2876F3810;
  *(v1 + 226) = &unk_2876F3810;
  *(v1 + 186) = &unk_2876F3810;
  *(v1 + 177) = &unk_2876F3810;
  *(v1 + 165) = &unk_2876F3810;
  *(v1 + 125) = &unk_2876F3810;
  *(v1 + 116) = &unk_2876F3810;
  *(v1 + 104) = &unk_2876F3810;
  *(v1 + 64) = &unk_2876F3810;
  *(v1 + 55) = &unk_2876F3810;
  *(v1 + 43) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadHoverPathFilteringStep::run(PadHoverPathFilteringStep *this)
{
  if (*(this + 2660) == 1)
  {
    PadHoverPathFilteringStep::runPathFiltering(this);
    v2 = *(this + 16);
  }

  else
  {
    v3 = *(this + 10);
    v4 = *(this + 15);
    v2 = *(this + 16);
    *v4 = *v3;
    *(v4 + 8) = *(v3 + 8);
    v5 = *(this + 12);
    v6 = *(this + 17);
    v7 = *(this + 18);
    *v6 = *v5;
    *(v6 + 8) = *(v5 + 8);
    *v2 = 0;
    *(v2 + 8) = 0;
    *v7 = 0;
    *(v7 + 8) = 0;
  }

  *(v2 + 8) = 0;
  return 0;
}

uint64_t PadHoverPathFilteringStep::runPathFiltering(PadHoverPathFilteringStep *this)
{
  v2 = *(this + 326);
  if ((*v2 & 1) != 0 || (*(v2 + 2) & 1) != 0 || *(v2 + 4) >= *(v2 + 8))
  {
    PadHoverOneLiraFilter::reset((this + 168));
    PadHoverOneLiraFilter::reset((this + 656));
    PadHoverOneLiraFilter::reset((this + 1144));
    PadHoverOneLiraFilter::reset((this + 1632));
    PadHoverOneLiraFilter::reset((this + 2120));
    LOWORD(v4) = 0;
    v6 = *(this + 326);
    *v6 = 0;
    *(v6 + 2) = 0;
    *(v6 + 4) = 0;
    *(v6 + 12) = 0;
    v3 = *(this + 14);
    *(v3 + 144) = 0;
    v5 = 0.0;
  }

  else
  {
    v3 = *(this + 14);
    v4 = *(v2 + 12);
    v5 = *(v3 + 144);
  }

  v7 = sqrtf((*(*(this + 12) + 4) * *(*(this + 12) + 4)) + (**(this + 12) * **(this + 12))) > *(v3 + 96);
  *(this + 153) = v7;
  **(this + 20) = v7;
  PadHoverOneLiraFilter::run((this + 168), **(this + 10), *(this + 15), *(this + 16), **(this + 11), v4, v5);
  PadHoverOneLiraFilter::run((this + 656), *(*(this + 10) + 4), (*(this + 15) + 4), (*(this + 16) + 4), *(*(this + 11) + 4), *(*(this + 326) + 12), *(*(this + 14) + 144));
  PadHoverOneLiraFilter::run((this + 1144), **(this + 12), *(this + 17), *(this + 18), **(this + 13), *(*(this + 326) + 12), *(*(this + 14) + 144));
  PadHoverOneLiraFilter::run((this + 1632), *(*(this + 12) + 4), (*(this + 17) + 4), (*(this + 18) + 4), *(*(this + 13) + 4), *(*(this + 326) + 12), *(*(this + 14) + 144));
  PadHoverOneLiraFilter::run((this + 2120), *(*(this + 12) + 8), (*(this + 17) + 8), (*(this + 18) + 8), *(*(this + 13) + 8), *(*(this + 326) + 12), *(*(this + 14) + 144));
  v8 = *(this + 14);
  *(*(this + 15) + 8) = *(*(this + 10) + 8);
  *(*(this + 326) + 12) = 0;
  *(v8 + 144) = 0;
  return 1;
}

uint64_t PadFireflyPathCollection::PadFireflyPathCollection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  PadHomography::PadHomography(v30 + 32, a8, a19);
  *a1 = &unk_2876F3358;
  *(a1 + 56) = a26;
  *(a1 + 64) = a20 + 28;
  *(a1 + 72) = a21 + 28;
  *(a1 + 80) = a23;
  *(a1 + 88) = a19;
  *(a1 + 96) = a27;
  *(a1 + 104) = a15;
  *(a1 + 112) = a16;
  *(a1 + 120) = a17;
  *(a1 + 128) = a18;
  *(a1 + 136) = a3;
  *(a1 + 144) = a4;
  *(a1 + 152) = a5;
  *(a1 + 160) = a6;
  *(a1 + 168) = a7;
  *(a1 + 176) = a9;
  *(a1 + 184) = a10;
  *(a1 + 192) = a11;
  *(a1 + 200) = a12;
  *(a1 + 208) = a13;
  *(a1 + 216) = a14;
  InputDetectionStateNode::InputDetectionStateNode(a1 + 224, 0x6557C1F63F6F27B5);
  *&v32 = a19;
  *(&v32 + 1) = a23;
  PadFireflyPathTrack::PadFireflyPathTrack(a1 + 256, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a25, a22, v32, a24, a26);
  *(a1 + 16) = 12293;
  *(a1 + 24) = 68;
  *(a1 + 252) = 0;
  PadFireflyPathTrack::reset((a1 + 256));
  *(a1 + 1256) = 0;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  return a1;
}

{
  return PadFireflyPathCollection::PadFireflyPathCollection(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

void sub_26540BFD4(_Unwind_Exception *a1)
{
  InputDetectionStateNode::~InputDetectionStateNode((v1 + 28));
  *v1 = &unk_2876F3810;
  _Unwind_Resume(a1);
}

uint64_t PadFireflyPathCollection::extractBuffer(uint64_t this, unsigned __int8 *a2)
{
  *a2 = 0;
  v2 = *(this + 1256);
  if (v2)
  {
    v3 = *(this + 1128);
    v4 = *(this + 1144);
    v5 = *(this + 1160);
    *(a2 + 52) = *(this + 1176);
    *(a2 + 36) = v5;
    *(a2 + 20) = v4;
    *(a2 + 4) = v3;
    v2 = *(this + 1256);
  }

  *a2 = v2;
  *(a2 + 1) = *(this + 252);
  return this;
}

uint64_t PadFireflyPathCollection::copyPaths(uint64_t this, unsigned __int8 *a2)
{
  *a2 = 0;
  v2 = *(this + 1256);
  if (v2)
  {
    v3 = *(this + 1128);
    v4 = *(this + 1144);
    v5 = *(this + 1160);
    *(a2 + 52) = *(this + 1176);
    *(a2 + 36) = v5;
    *(a2 + 20) = v4;
    *(a2 + 4) = v3;
    v2 = *(this + 1256);
  }

  *a2 = v2;
  *(a2 + 1) = *(this + 252);
  return this;
}

uint64_t PadFireflyPathCollection::storePathIntoLocalContact(uint64_t this)
{
  v1 = this;
  if (*(this + 1108) || *(this + 1104) <= 3u)
  {
    *(this + 1160) = 0u;
    *(this + 1176) = 0u;
    *(this + 1128) = 0u;
    *(this + 1144) = 0u;
    *(this + 1128) = *(this + 924);
    v2 = **(this + 96);
    if ((v2 & 0x10) != 0)
    {
      this = PadFireflyPathTrack::getPathStage((this + 256));
      *(v1 + 1129) = this;
      *(v1 + 1130) = *(v1 + 925) & 0x1F;
      *(v1 + 1131) = 0;
      v2 = **(v1 + 96);
    }

    v3 = *(v1 + 1112);
    v4 = vsub_f32(*(v1 + 1120), v3);
    v5 = v3.i32[1];
    if ((v2 & 2) != 0)
    {
      this = alg_ClipPosPointToScreenEdge(*(v1 + 88) + 208, v3.f32[0], v3.f32[1]);
    }

    *(v1 + 1132) = v3.i32[0];
    *(v1 + 1136) = v5;
    *(v1 + 1140) = vmul_f32(vmul_f32(*(v1 + 420), vdup_n_s32(0x447A0000u)), vdup_n_s32(0x3B800000u));
    *(v1 + 1160) = *(v1 + 408);
    *(v1 + 1168) = *(v1 + 416);
    if (*(v1 + 553))
    {
      v6 = 12288;
    }

    else
    {
      v6 = 4096;
    }

    *(v1 + 1172) = v6;
    *(v1 + 1156) = *(v1 + 452);
    *(v1 + 1176) = *(v1 + 448);
    *(v1 + 1180) = v4;
    if (*(*(v1 + 72) + 32))
    {
      v7 = *(*(v1 + 64) + 8);
    }

    else
    {
      v7 = 0;
    }

    *(v1 + 1188) = v7;
    *(v1 + 1148) = *(v1 + 440);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 1256) = v8;
  return this;
}

uint64_t PadFireflyPathCollection::setInputDetectionFlags(uint64_t this, int a2)
{
  if (a2)
  {
    *(this + 252) = 0;
  }

  if (*(this + 952) <= *(this + 976))
  {
    v2 = *(this + 252) & 0xEFFF;
  }

  else
  {
    v2 = 4096;
  }

  *(this + 252) = v2;
  return this;
}

void PadFireflyPathCollection::setHomographyPos(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) == 1)
  {
    *(a1 + 1112) = PadHomography::rotateAndTranslate2D(a1 + 32, (a1 + 400));
    *(a1 + 1116) = v3;
    *(a1 + 1120) = PadHomography::rotateAndTranslate2D(a1 + 32, (a1 + 432));
    *(a1 + 1124) = v4;
  }

  else
  {
    *(a1 + 1112) = *(a1 + 400);
    *(a1 + 1120) = *(a1 + 432);
  }
}

uint64_t PadFireflyPathCollection::sendCallback(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, __n128 a4)
{
  if (*(*(a1 + 128) + 28) == 1)
  {
    return AlgDataNode::sendCallback(a1, a2, a3, a4);
  }

  return a1;
}

__n128 PadFireflyPathCollection::updatePalmRejection(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1129) - 6 >= 0xFFFFFFFC && *(*(a1 + 128) + 28) == 1)
  {
    v2 = *(a1 + 56);
    *(a2 + 24) = *(v2 + 56);
    *(a2 + 32) = *(v2 + 4);
    result.n128_u64[0] = *(a1 + 1132);
    result.n128_u32[2] = *(a1 + 1156);
    result.n128_u32[3] = *(a1 + 1176);
    *(a2 + 8) = result;
    *(a2 + 28) = 0;
  }

  return result;
}

void PadFireflyPathCollection::storePathIntoTransitionStateNode(PadFireflyPathCollection *this)
{
  v2 = *(this + 17);
  v3.i32[0] = v2[48];
  v4 = *(this + 9);
  v3.i32[1] = v2[53];
  v5 = vdup_n_s32(0x447A0000u);
  *v4 = vdiv_f32(v3, v5);
  v3.i32[0] = v2[101];
  v3.i32[1] = v2[106];
  *(v4 + 12) = vdiv_f32(v3, v5);
  if (*(v4 + 32))
  {
    v6 = *(*(this + 8) + 8);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 8) = v6;
  *(v4 + 20) = v6;
  *(*(this + 9) + 24) = PadFireflyPathTrack::getZtotal((this + 256));
  *(*(this + 9) + 28) = PadFireflyPathTrack::getZdensity((this + 256));
}

void *PadFireflyPathCollection::updateFireflyOutputReady(void *this)
{
  if (*(this[13] + 28) == 1 && *(this[14] + 28) == 1)
  {
    v1 = *(this[15] + 28);
  }

  else
  {
    v1 = 0;
  }

  *(this[16] + 28) = v1 & 1;
  return this;
}

__n128 PadFireflyPathCollection::updatePreviousFireflyContact(PadFireflyPathCollection *this)
{
  if (*(this + 1256))
  {
    v1 = *(this + 1144);
    *(this + 1192) = *(this + 1128);
    *(this + 1208) = v1;
    result = *(this + 1160);
    v3 = *(this + 1176);
    *(this + 1224) = result;
    *(this + 1240) = v3;
  }

  return result;
}

double PadFireflyPathCollection::updateOORFireflyContact(PadFireflyPathCollection *this)
{
  if (*(this + 1129) == 7)
  {
    v1 = *(this + 1208);
    *(this + 1128) = *(this + 1192);
    *(this + 1144) = v1;
    v2 = *(this + 1240);
    *(this + 1160) = *(this + 1224);
    *(this + 1176) = v2;
    *(this + 1129) = 7;
    result = 0.0;
    *(this + 145) = 0;
  }

  return result;
}

void PadFireflyPathCollection::~PadFireflyPathCollection(PadFireflyPathCollection *this)
{
  *this = &unk_2876F3358;
  InputDetectionStateNode::~InputDetectionStateNode((this + 224));
  *this = &unk_2876F3810;
}

{
  *this = &unk_2876F3358;
  InputDetectionStateNode::~InputDetectionStateNode((this + 224));
  *this = &unk_2876F3810;

  JUMPOUT(0x266758590);
}

void *PadHoverTransferSampleStep::PadHoverTransferSampleStep(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = AlgWorkNode::AlgWorkNode(a1);
  *v13 = &unk_2876F33C8;
  *(v13 + 10) = a3;
  *(v13 + 11) = a4;
  *(v13 + 12) = a5;
  *(v13 + 13) = a6;
  *(v13 + 14) = a7;
  PadHoverTransferSampleStep::runNodeRegistrations(v13);
  return a1;
}

void *PadHoverTransferSampleStep::runNodeRegistrations(PadHoverTransferSampleStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 11));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 12));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 13));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 14) + 128);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 14) + 64);
  v2 = *(this + 14) + 192;

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t PadHoverTransferSampleStep::run(PadHoverTransferSampleStep *this)
{
  v2 = PadHoverTransferSampleStep::padSignal(this, *(this + 10), *(this + 14));
  v3 = PadHoverTransferSampleStep::padSignal(v2, *(this + 12), *(this + 14) + 64);
  v4 = PadHoverTransferSampleStep::padSignal(v3, *(this + 11), *(this + 14) + 128);
  PadHoverTransferSampleStep::padSignal(v4, *(this + 13), *(this + 14) + 192);
  return 0;
}

uint64_t PadHoverTransferSampleStep::padSignal(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  v5 = a3 + 32;
  SA1DArrayBase<float>::fill(a3 + 32, 0.0);
  result = (*(*a2 + 40))(a2);
  if (result)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *((*(a2[4] + 8))(a2 + 4) + 4 * v8);
      *((*(*v5 + 8))(v5) + 4 * (v7 + v4)) = v9;
      v7 = ++v8;
      result = (*(*a2 + 40))(a2);
    }

    while (result > v8);
  }

  return result;
}

void PadHoverTransferSampleStep::~PadHoverTransferSampleStep(PadHoverTransferSampleStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHoverFinalizeContactsStep::PadHoverFinalizeContactsStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v13 = &unk_2876F3418;
  v13[10] = a3;
  v13[11] = a4;
  v13[12] = a5;
  v13[13] = a6;
  v14 = (v13 + 14);
  AlgDataNode::AlgDataNode((v13 + 14), 0x912653DDA142BFE7, 0);
  *(a1 + 112) = &unk_2876F0690;
  *(a1 + 128) = 20486;
  *(a1 + 136) = 4;
  AlgDataNode::AlgDataNode((a1 + 144), 0x377A34E1248190CLL, 0);
  *(a1 + 144) = &unk_2876F0108;
  *(a1 + 172) = 0;
  *(a1 + 160) = 20480;
  *(a1 + 168) = 1;
  *(a1 + 176) = a7;
  AlgWorkNode::registerAlgDataNode(a1 + 8, a6);
  AlgWorkNode::registerAlgDataNode(a1 + 24, v14);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 144);
  *(a1 + 140) = 7;
  *(a1 + 172) = 1;
  return a1;
}

void sub_26540C9E8(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadHoverFinalizeContactsStep::run(PadFireflyPathCollection **this)
{
  if (*(this + 172) == 1)
  {
    PadHoverFinalizeContactsStep::runHoverFinalizeContactsStep(this);
  }

  return 0;
}

uint64_t PadHoverFinalizeContactsStep::runHoverFinalizeContactsStep(PadFireflyPathCollection **this)
{
  v2 = PadHoverFinalizeContactsStep::determineInkingOrHoverTimeoutStatus(this);
  PadHoverFinalizeContactsStep::determineHoverContactsTimeOut(this, v2);
  *PadFireflyPathCollection::getMutableContact(this[10]) = 18;
  result = PadFireflyPathCollection::getMutableContact(this[10]);
  *(result + 2) = 7;
  return result;
}

BOOL PadHoverFinalizeContactsStep::determineInkingOrHoverTimeoutStatus(PadHoverFinalizeContactsStep *this)
{
  v2 = *(this + 13);
  v3 = *(v2 + 56);
  if (v3 < 2)
  {
    v11 = 0;
  }

  else
  {
    v4 = v3 - 2;
    v5 = *(v2 + 48);
    v6 = 6 - v4;
    v7 = v2 + 36;
    v8 = v5 >= v6;
    v9 = (v7 + v5 - v6);
    v10 = (v7 + v5 + v4);
    if (v8)
    {
      v10 = v9;
    }

    v11 = *v10 - 3 < 2;
  }

  v12 = *(*(this + 11) + 28) == 1 && *(PadFireflyPathCollection::getMutableContact(*(this + 10)) + 1) == 7 && *PadFireflyPathCollection::getMutableNumContacts(*(this + 10)) != 0;
  v13 = *(*(this + 11) + 28) == 1 && *(PadFireflyPathCollection::getMutableContact(*(this + 10)) + 1) == 2;
  if (v11 || v13)
  {
    *(this + 35) = 0;
  }

  if (v12)
  {
    *(this + 35) = 7;
  }

  v14 = *(this + 35);
  if ((*(*(this + 11) + 28) & 1) == 0)
  {
    *(this + 35) = ++v14;
  }

  return v14 == 6;
}

uint64_t PadHoverFinalizeContactsStep::determineHoverContactsTimeOut(uint64_t this, int a2)
{
  if ((*(*(this + 88) + 28) & 1) == 0)
  {
    v2 = this;
    if (*(*(this + 96) + 60))
    {
      MutableContact = PadFireflyPathCollection::getMutableContact(*(this + 80));
      if (a2)
      {
        *(MutableContact + 1) = 7;
        this = PadFireflyPathCollection::getMutableNumContacts(*(v2 + 80));
        *this = 1;
      }

      else
      {
        *(MutableContact + 32) = 0u;
        *(MutableContact + 48) = 0u;
        *MutableContact = 0u;
        *(MutableContact + 16) = 0u;
        this = PadFireflyPathCollection::getMutableNumContacts(*(v2 + 80));
        *this = 0;
        *(*(v2 + 176) + 28) = 0;
      }
    }
  }

  return this;
}

void PadHoverFinalizeContactsStep::~PadHoverFinalizeContactsStep(PadHoverFinalizeContactsStep *this)
{
  *this = &unk_2876F3418;
  *(this + 18) = &unk_2876F3810;
  *(this + 14) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3418;
  *(this + 18) = &unk_2876F3810;
  *(this + 14) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void *PadFireflyTransferSampleStep::PadFireflyTransferSampleStep(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = AlgWorkNode::AlgWorkNode(a1);
  *v13 = &unk_2876F3468;
  *(v13 + 10) = a3;
  *(v13 + 11) = a4;
  *(v13 + 12) = a5;
  *(v13 + 13) = a6;
  *(v13 + 14) = a7;
  PadFireflyTransferSampleStep::runNodeRegistrations(v13);
  return a1;
}

void *PadFireflyTransferSampleStep::runNodeRegistrations(PadFireflyTransferSampleStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 11));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 12));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 13));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 14) + 8);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 14) + 152);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 14) + 80);
  v2 = *(this + 14) + 224;

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t PadFireflyTransferSampleStep::run(PadFireflyTransferSampleStep *this)
{
  v2 = PadFireflyTransferSampleStep::toMagnitude(this, *(this + 10), *(this + 14) + 8);
  v3 = PadFireflyTransferSampleStep::toMagnitude(v2, *(this + 12), *(this + 14) + 80);
  v4 = PadFireflyTransferSampleStep::toMagnitude(v3, *(this + 11), *(this + 14) + 152);
  PadFireflyTransferSampleStep::toMagnitude(v4, *(this + 13), *(this + 14) + 224);
  return 0;
}

uint64_t PadFireflyTransferSampleStep::toMagnitude(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  v5 = a3 + 32;
  SA1DArrayBase<float>::fill(a3 + 32, 0.0);
  v6 = (*(*a2 + 48))(a2);
  v7 = a2[4];
  a2 += 4;
  v8 = (*(v7 + 8))(a2);
  (*(*a2 + 24))(a2);
  v9 = (*(*a2 + 8))(a2);
  result = (*(*a2 + 24))(a2);
  v11 = v6;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    v14 = (v9 + 4 * result);
    do
    {
      v15 = *v8++;
      v16 = v15;
      v17 = *v14++;
      v18 = sqrtf((v17 * v17) + (v16 * v16)) * 0.5;
      v19 = v12 + v4;
      result = (*(*v5 + 8))(v5);
      *(result + 4 * v19) = v18;
      v12 = ++v13;
    }

    while (v11 > v13);
  }

  return result;
}

uint64_t PadHoverDetectTask::PadHoverDetectTask(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, PadFireflyPathCollection *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v32 = ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *v32 = &unk_2876F34B8;
  v32[13] = a5;
  v32[14] = a6;
  v32[15] = a8;
  v32[16] = a10;
  v33 = (v32 + 17);
  AlgDataNode::AlgDataNode((v32 + 17), 0xAA35585CC42B66ADLL, 0);
  *(a1 + 164) = 0;
  *(a1 + 152) = 20480;
  *(a1 + 160) = 1;
  *(a1 + 136) = &unk_2876F0EB0;
  *(a1 + 168) = a6;
  *(a1 + 176) = a23;
  *(a1 + 184) = a14;
  *(a1 + 192) = a15;
  *(a1 + 200) = a16;
  *(a1 + 208) = a17;
  *(a1 + 216) = a18;
  *(a1 + 224) = a21;
  MutableContact = PadFireflyPathCollection::getMutableContact(a21);
  PadHoverDetectionStep::PadHoverDetectionStep(a1 + 232, 0x87745BB3928AD1A4, a18, a19, a14, a15, a7, a25, MutableContact, v33, a8, *(a1 + 104) + 2596, *(a1 + 104) + 2508, a24);
  PadHoverTask::PadHoverTask(a1 + 528, 0x377A1ED94D74E1CLL, v33, a4, *(a1 + 104), *(a1 + 112), *(a1 + 120), a9, a24, a11, a7, *(a1 + 128), a12, a13, a25, a26, *(a1 + 200), *(a1 + 208), *(a1 + 216), a19, a20, a27, *(a1 + 224), a22);
  PadHoverFinalizeContactsStep::PadHoverFinalizeContactsStep(a1 + 7160, 0x9FEB56F903870F36, *(a1 + 224), v33, *(a1 + 120), *(a1 + 128), a22);
  PadHoverDetectTask::runNodeRegistrations(a1);
  return a1;
}

{
  return PadHoverDetectTask::PadHoverDetectTask(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

void sub_26540D288(_Unwind_Exception *a1)
{
  PadHoverFinalizeContactsStep::~PadHoverFinalizeContactsStep((v1 + v3));
  PadHoverTask::~PadHoverTask((v1 + 66));
  v6 = *(v4 - 104);
  v1[29] = &unk_2876F2858;
  v1[62] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v6);
  *v2 = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadHoverDetectTask::runNodeRegistrations(PadHoverDetectTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 13) + 2480);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 23));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 24));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 26));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 27));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 26));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 232));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 528));

  return ConditionalInjExtAndTaskNode::registerChild(this, (this + 7160));
}

uint64_t PadHoverDetectTask::runBeforeChildren(PadHoverDetectTask *this)
{
  v1 = *(this + 13);
  v2 = *(this + 22);
  if (*(v1 + 2744))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 28);
  }

  *(v1 + 2744) = v3 & 1;
  *(v2 + 28) = 0;
  return 0;
}

void PadFireflyShapeNoiseRemovalStep::PadFireflyShapeNoiseRemovalStep(PadFireflyShapeNoiseRemovalStep *this, unint64_t a2, PadFireflyShapeNoiseProjection *a3)
{
  AlgWorkNode::AlgWorkNode(this);
  *v5 = &unk_2876F3530;
  v5[10] = a3;
  v6 = (v5 + 11);
  AlgDataNode::AlgDataNode((v5 + 11), 0x377A34E1248190CLL, 0);
  *(this + 11) = &unk_2876F0108;
  *(this + 116) = 0;
  *(this + 26) = 20480;
  *(this + 28) = 1;
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 1072);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 1144);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 176);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 240);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 304);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 368);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 432);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 496);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 560);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 624);
  AlgWorkNode::registerAlgDataNode(this + 40, *(*(this + 10) + 1216));
  AlgWorkNode::registerAlgDataNode(this + 40, *(*(this + 10) + 1224));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 944);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 10) + 1008);
  AlgWorkNode::registerAlgDataNode(this + 56, v6);
  *(this + 116) = 1;
}

uint64_t PadFireflyShapeNoiseRemovalStep::run(PadFireflyShapeNoiseRemovalStep *this)
{
  if (*(this + 116) == 1)
  {
    PadFireflyShapeNoiseProjection::runFireflySignalProjection(*(this + 10), 1);
    PadFireflyShapeNoiseProjection::updateDetectionState(*(this + 10));
  }

  return 0;
}

void PadFireflyShapeNoiseRemovalStep::~PadFireflyShapeNoiseRemovalStep(PadFireflyShapeNoiseRemovalStep *this)
{
  *this = &unk_2876F3530;
  *(this + 11) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3530;
  *(this + 11) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void HoverProfileModel::evaluateEstimatedProfile(float **this, float a2, float a3, int a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10)
{
  v20 = *this;
  v21 = **this;
  v22 = expf((*this)[1] * a3);
  v23 = v20[2];
  v24 = (v23 * expf(v20[3] * a3)) + (v21 * v22);
  v25 = v20[4];
  *a6 = v24 + (v25 * expf(v20[5] * a3));
  v26 = this[1];
  v27 = *v26;
  v28 = expf(v26[1] * a3);
  v29 = v26[2];
  v30 = (v29 * expf(v26[3] * a3)) + (v27 * v28);
  v31 = v26[4];
  *a7 = v30 + (v31 * expf(v26[5] * a3));
  v32 = this[2];
  v33 = *v32;
  v34 = expf(v32[1] * a3);
  v35 = v32[2];
  v36 = (v35 * expf(v32[3] * a3)) + (v33 * v34);
  v37 = v32[4];
  v38 = v36 + (v37 * expf(v32[5] * a3));
  *a8 = v38;
  if (a4)
  {
    v39 = 0;
    v40 = v38 + -1.0;
    do
    {
      v41 = vabds_f32(v39, a2);
      v42 = powf(v41, v40);
      a10[v39] = v42;
      v43 = ((v42 * *a7) * v41) + 1.0;
      a9[v39] = v43;
      a5[v39++] = *a6 / v43;
    }

    while (a4 != v39);
  }
}

void HoverProfileModel::evaluateJacobian(float **this, float a2, float a3, float *a4, float *a5, const float *a6, float *a7, float *a8, int a9, float a10, float a11, float *a12, float *a13)
{
  v23 = *this;
  v73 = **this;
  v68 = (*this)[1];
  v67 = expf(v68 * a3);
  v65 = v23[3];
  v66 = v23[2];
  v63 = expf(v65 * a3);
  v64 = v23[4];
  v62 = v23[5];
  v61 = expf(v62 * a3);
  v24 = this[1];
  v25 = v24[1];
  v60 = *v24;
  v59 = expf(v25 * a3);
  v26 = v24[3];
  v58 = v24[2];
  v56 = expf(v26 * a3);
  v27 = v24[5];
  v57 = v24[4];
  v55 = expf(v27 * a3);
  v28 = this[2];
  v29 = v28[1];
  v54 = *v28;
  v53 = expf(v29 * a3);
  v30 = v28[3];
  v52 = v28[2];
  v50 = expf(v30 * a3);
  v31 = v28[5];
  v51 = v28[4];
  v32 = expf(v31 * a3);
  if (a9)
  {
    v33 = a2;
    v34 = 0;
    v35 = (((v66 * v65) * v63) + ((v73 * v68) * v67)) + ((v64 * v62) * v61);
    v36 = (((v58 * v26) * v56) + ((v60 * v25) * v59)) + ((v57 * v27) * v55);
    v37 = (((v52 * v30) * v50) + ((v54 * v29) * v53)) + ((v51 * v31) * v32);
    v38 = -(a10 * a11);
    v72 = a2;
    v74 = v36;
    v71 = v38;
    do
    {
      v39 = v33 - v34;
      v40 = -v39;
      if (v39 >= 0.0)
      {
        v40 = v33 - v34;
      }

      v41 = a8[v34];
      v42 = v40 * v41;
      v43 = a7[v34];
      v44 = *a4;
      v45 = *a5;
      v46 = 0.0;
      if (v39 != 0.0)
      {
        v47 = v35;
        v48 = logf(v40);
        v38 = v71;
        v33 = v72;
        v36 = v74;
        v35 = v47;
        v46 = v48 * v42;
      }

      a12[v34] = v38 * ((v35 / v43) - ((v44 * (((v37 * v45) * v46) + (v36 * v42))) / (v43 * v43)));
      v49 = *a4;
      if (v39 >= 0.0)
      {
        v49 = -*a4;
      }

      a13[v34++] = v38 * ((v41 * ((v49 * *a5) * *a6)) / (v43 * v43));
    }

    while (a9 != v34);
  }
}

uint64_t PadFireflyNearTouchStep::PadFireflyNearTouchStep(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = AlgWorkNode::AlgWorkNode(a1);
  *v13 = &unk_2876F3580;
  v13[10] = a3;
  v13[11] = a4;
  v13[12] = a5;
  v13[13] = a7;
  v13[14] = a6;
  *(v13 + 60) = a4[79] - a4[78];
  *(v13 + 61) = a4[82] - a4[81];
  v14 = (v13 + 16);
  AlgDataNode::AlgDataNode((v13 + 16), 0x377A34E1248190CLL, 0);
  *(a1 + 128) = &unk_2876F0108;
  *(a1 + 156) = 0;
  *(a1 + 144) = 20480;
  *(a1 + 152) = 1;
  AlgWorkNode::registerAlgDataNode(a1 + 56, *(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 56, v14);
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 96));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 88));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 112));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 96));
  *(a1 + 156) = 1;
  return a1;
}

uint64_t PadFireflyNearTouchStep::run(PadFireflyNearTouchStep *this)
{
  if (*(this + 156) == 1)
  {
    v2 = *(this + 10);
    v3 = v2[20];
    v39 = v2[21] + v3;
    v36 = v2[14];
    v4 = *(this + 13);
    MutableTipPos = PadFireflyPathCollection::getMutableTipPos(*(this + 14));
    v6 = SurfaceGrid::Xpos2Bcol(v4, *MutableTipPos);
    v7 = v6;
    v40 = (v3 + v6);
    v41 = v3 + v6;
    if (*(this + 61) >= v40)
    {
      v8 = v3 + v6;
    }

    else
    {
      v8 = *(this + 61);
    }

    if ((v6 - v3) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 - v3;
    }

    v10 = *(this + 13);
    v11 = PadFireflyPathCollection::getMutableTipPos(*(this + 14));
    v12 = SurfaceGrid::Ypos2Brow(v10, *(v11 + 4));
    v13 = v12;
    v37 = (v3 + v12);
    v38 = v3 + v12;
    if (*(this + 60) >= v37)
    {
      v14 = (v3 + v12);
    }

    else
    {
      v14 = *(this + 60);
    }

    if ((v12 - v3) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v12 - v3);
    }

    v16 = *(this + 11);
    v17 = v16[4];
    v16 += 4;
    v18 = (*(v17 + 8))(v16);
    v19 = (*(*v16 + 24))(v16);
    v20 = (*(**(this + 11) + 48))(*(this + 11));
    v21 = 0.0;
    if (v15 <= v14)
    {
      v22 = v15;
      v23 = (v18 + 4 * (v19 * v15 + v9));
      v24 = v15;
      do
      {
        LOWORD(v25) = v9;
        if (v9 <= v8)
        {
          do
          {
            if (v36 + v7 <= v25 || v7 - v36 >= v25 || v22 >= v36 + v13 || v22 <= v13 - v36)
            {
              v21 = fmaxf(v21, fabsf(*v23));
            }

            ++v23;
            v25 = (v25 + 1);
          }

          while (v25 <= v8);
        }

        v23 += v9 + ~v8 + v20;
        v22 = ++v24;
      }

      while (v24 <= v14);
    }

    *(*(this + 12) + 28) = wFfuzzifyAndClip(v21, *(*(this + 10) + 32), *(*(this + 10) + 36));
    if (*(this + 61) >= (v39 + v7))
    {
      v26 = (v39 + v7);
    }

    else
    {
      v26 = *(this + 61);
    }

    if ((v7 - v39) <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = (v7 - v39);
    }

    if (*(this + 60) >= (v39 + v13))
    {
      v28 = (v39 + v13);
    }

    else
    {
      v28 = *(this + 60);
    }

    if ((v13 - v39) <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = (v13 - v39);
    }

    PadFireflyNearTouchStep::findMaxInBox(this, v27, v26, v29, v28);
    *(*(this + 12) + 32) = v30;
    if (*(this + 60) >= v38)
    {
      v31 = v37;
    }

    else
    {
      v31 = *(this + 60);
    }

    PadFireflyNearTouchStep::findMaxInBox(this, 1, *(this + 61), v15, v31);
    *(*(this + 12) + 36) = v32;
    if (*(this + 61) >= v41)
    {
      v33 = v40;
    }

    else
    {
      v33 = *(this + 61);
    }

    PadFireflyNearTouchStep::findMaxInBox(this, v9, v33, 1, *(this + 60));
    *(*(this + 12) + 40) = v34;
  }

  return 0;
}

uint64_t PadFireflyNearTouchStep::findMaxInBox(PadFireflyNearTouchStep *this, int a2, int a3, int a4, int a5)
{
  v10 = *(this + 11);
  v11 = v10[4];
  v10 += 4;
  v12 = (*(v11 + 8))(v10);
  v13 = (*(*v10 + 24))(v10);
  result = (*(**(this + 11) + 48))(*(this + 11));
  v15 = 0.0;
  if (a4 <= a5)
  {
    v16 = (v12 + 4 * (a2 + v13 * a4));
    do
    {
      LOWORD(v17) = a2;
      if (a2 <= a3)
      {
        do
        {
          v18 = *v16++;
          v15 = fmaxf(v15, fabsf(v18));
          v17 = (v17 + 1);
        }

        while (v17 <= a3);
      }

      v16 += ~a3 + a2 + result;
      a4 = (a4 + 1);
    }

    while (a4 <= a5);
  }

  return result;
}

void PadFireflyNearTouchStep::~PadFireflyNearTouchStep(PadFireflyNearTouchStep *this)
{
  *this = &unk_2876F3580;
  *(this + 16) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3580;
  *(this + 16) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void *HoverModelSelector::HoverModelSelector(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

void HoverModelSelector::evalEstimatedProfile(uint64_t *a1, int a2, int a3, int a4, float *a5, float *a6, float *a7, float *a8, float a9, float a10, float *a11, float *a12)
{
  CurrentHoverProfileModel = HoverModelSelector::getCurrentHoverProfileModel(a1, a2, a3);

  HoverProfileModel::evaluateEstimatedProfile(CurrentHoverProfileModel, a9, a10, a4, a5, a6, a7, a8, a11, a12);
}

uint64_t HoverModelSelector::getCurrentHoverProfileModel(uint64_t *a1, int a2, int a3)
{
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + 44;
  if (v7[44] == a3 || (v8 = v7 + 47, v7[47] == a3) || (v8 = v7 + 50, v7[50] == a3))
  {
    v9 = v8[2];
    v10 = ((*(*(v6 + 32) + 8))() + v9);
  }

  else
  {
    v10 = v7 + 46;
  }

  v11 = *v10;
  v12 = *a1;
  v13 = *a1 + 24 * v11 + 576;
  if (!a2)
  {
    v13 = *a1 + 24 * v11 + 384;
  }

  v14 = v12 + 24 * v11 + 192;
  v15 = v12 + 24 * v11;
  if (a2)
  {
    v15 = v14;
  }

  if (a3)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

void HoverModelSelector::evalJacobian(uint64_t *a1, int a2, float *a3, float *a4, const float *a5, float *a6, float *a7, float *a8, float a9, float a10, float a11, float a12, float a13, float a14, float *a15, const float *a16, float *a17, float *a18, unsigned __int16 a19, unsigned __int16 a20, float *a21)
{
  CurrentHoverProfileModel = HoverModelSelector::getCurrentHoverProfileModel(a1, 0, a2);
  v30 = HoverModelSelector::getCurrentHoverProfileModel(a1, 1, a2);
  v31 = &a21[a19];
  v32 = &v31[a20 + a19 + a20];
  v33 = &v32[a19];
  HoverProfileModel::evaluateJacobian(CurrentHoverProfileModel, a9, a11, a3, a4, a5, a6, a7, a19, a12, a13, v32, a21);
  HoverProfileModel::evaluateJacobian(v30, a10, a11, a8, a15, a16, a17, a18, a20, a12, a14, v33, &v31[a20 + a19]);
  bzero(v31, 4 * a20);

  bzero(&v31[a20], 4 * a19);
}

void HoverModelSelector::evalJacobian(__n128 a1, double a2, double a3, float a4, double a5, double a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21, unsigned __int16 a22, float *a23, float *a24, float a25, float a26, const float *a27, const float *a28, float *a29)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v32 = MEMORY[0x28223BE20](a1);
  v34 = (v57 - v33);
  HoverModelSelector::evalJacobian(v32, v35, v36, v37, v38, v39, v40, v41, v44, v45, v46, a4, v49, v50, v47, v48, v42, v43, a21, a22, (v57 - v33));
  v55 = HoverModelSelector::addEdgeLutDerivativeToJacobian(v51, 0, a21, a22, a23, v52, v53, v54, a4, a7, a8, a25, a26, a24, v34);
  HoverModelSelector::projectJacobian(v55, a21, a22, a27, a28, v34, a29);
  v56 = *MEMORY[0x277D85DE8];
}

float *HoverModelSelector::addEdgeLutDerivativeToJacobian(int a1, int a2, const float *a3, const float *a4, float *a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13, float *a14, uint64_t a15)
{
  v23 = (a15 + 4 * a3);
  v24 = &v23[a4];
  v25 = &v24[a3 + a4];
  v26 = &v25[a3];
  HoverCommon::multiplyAccumulate1Dvector(v24, a5, a3, -(a9 * a10));
  HoverCommon::multiplyAccumulate1Dvector(v25, a5, a3, -(a9 * a11));
  HoverCommon::multiplyAccumulate1Dvector(v23, a14, a4, -(a9 * a12));

  return HoverCommon::multiplyAccumulate1Dvector(v26, a14, a4, -(a9 * a13));
}

void HoverModelSelector::projectJacobian(HoverModelSelector *this, const float *a2, const float *a3, const float *a4, const float *a5, HoverCommon *a6, float *a7)
{
  v27 = (a6 + 4 * a2);
  v13 = (v27 + 4 * a3);
  v14 = (v13 + 4 * a2);
  v15 = (v14 + 4 * a3);
  v25 = (v15 + 4 * a2);
  v26 = &a7[a2];
  v16 = &v26[a3];
  v17 = &v16[a2];
  v18 = &v17[a3];
  v24 = &v18[a2];
  HoverCommon::project1Dvector(v15, a2, v18, a4, a5);
  HoverCommon::project1Dvector(a6, a2, a7, a4, v19);
  HoverCommon::project1Dvector(v13, a2, v16, a4, v20);
  HoverCommon::project1Dvector(v25, a3, v24, a5, v21);
  HoverCommon::project1Dvector(v14, a3, v17, a5, v22);

  HoverCommon::project1Dvector(v27, a3, v26, a5, v23);
}

void sub_265414858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void PacketCollection::~PacketCollection(PacketCollection *this)
{
  *this = &unk_2876F3A60;
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8077774924);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x266758580](v3, 0x1000C8077774924);
  }

  v4 = *(this + 1);
  if (v4)
  {
    MEMORY[0x266758580](v4, 0x1000C8077774924);
  }
}

{
  PacketCollection::~PacketCollection(this);
  OUTLINED_FUNCTION_81();

  JUMPOUT(0x266758590);
}

void sub_265414C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PacketCollection::~PacketCollection(va);
  PacketCollection::~PacketCollection((v11 - 72));
  _Unwind_Resume(a1);
}

void sub_265415948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void sub_265417444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  PacketCollection::~PacketCollection(&a56);
  PacketCollection::~PacketCollection(&a21);

  _Unwind_Resume(a1);
}

void DeviceOrientationNode::~DeviceOrientationNode(DeviceOrientationNode *this)
{
  OUTLINED_FUNCTION_3_0(this);
  OUTLINED_FUNCTION_2_0();
}

{
  OUTLINED_FUNCTION_3_0(this);
}

uint64_t DeviceOrientationNode::DeviceOrientationNode(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 28) = 0;
  *(result + 24) = 1;
  *result = &unk_2876F35D0;
  *(result + 16) = 20521;
  return result;
}

uint64_t PathStages::deriveTouchRangeStage(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[3];
  if (*a1 <= v3)
  {
    if (v3 == a2)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = a1[1];
    if (v2 == a2)
    {
      if (v4 == a2)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else if (v4 >= v2)
    {
      if (v4 == a2)
      {
        return 3;
      }

      else
      {
        v6 = a1[2];
        if (v6 == a2)
        {
          v7 = 5;
        }

        else
        {
          v7 = 6;
        }

        if (v6 >= v4)
        {
          return v7;
        }

        else
        {
          return 4;
        }
      }
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PathStages::clearPathsInStagesBitmaps(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void InputDetectionStateNode::~InputDetectionStateNode(InputDetectionStateNode *this)
{
  OUTLINED_FUNCTION_3_0(this);
  OUTLINED_FUNCTION_2_0();
}

{
  OUTLINED_FUNCTION_3_0(this);
}

uint64_t InputDetectionStateNode::InputDetectionStateNode(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 28) = 0;
  *(result + 24) = 2;
  *result = &unk_2876F3620;
  *(result + 16) = 20525;
  return result;
}

float SurfaceGrid::computeMinDistToEdgesHelper(float *a1, int a2, int a3, _WORD *a4, int a5, float a6, float a7)
{
  if (!a2)
  {
    v15 = 3.4028e38;
    goto LABEL_15;
  }

  v13 = a1[52] - a6;
  v14 = a6 - a1[53];
  if (v13 >= v14)
  {
    v15 = a6 - a1[53];
  }

  else
  {
    v15 = a1[52] - a6;
  }

  if (a4)
  {
    if (v13 >= v14)
    {
      v16 = 256;
    }

    else
    {
      v16 = 512;
    }

    *a4 |= v16;
  }

  if (!a5)
  {
LABEL_15:
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

  v17 = a1[49];
  v18 = a1[12];
  if (v15 >= v17)
  {
    v15 = v15 - (v17 / v18);
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_36:
    v24 = 3.4028e38;
    return fminf(v15, v24);
  }

  v15 = v15 * (1.0 - (1.0 / v18));
  if (!a3)
  {
    goto LABEL_36;
  }

LABEL_16:
  v19 = a1[54];
  v20 = a7 - a1[55];
  v21 = (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (a6 >= v21 && a6 <= v22)
  {
    v19 = a1[54] + -3850.0;
  }

  v24 = v19 - a7;
  if (v20 < (v19 - a7))
  {
    v24 = v20;
  }

  if (a4)
  {
    if (v20 >= (v19 - a7))
    {
      v25 = 1024;
    }

    else
    {
      v25 = 2048;
    }

    *a4 |= v25;
  }

  if (!a5)
  {
LABEL_31:
    if (!a4)
    {
      return fminf(v15, v24);
    }

    goto LABEL_32;
  }

  v26 = a1[50];
  v27 = a1[13];
  if (v24 < v26)
  {
    v24 = v24 * (1.0 - (1.0 / v27));
    goto LABEL_31;
  }

  v24 = v24 - (v26 / v27);
  if (!a4)
  {
    return fminf(v15, v24);
  }

LABEL_32:
  if (a2)
  {
    if ((*a4 & 0x300) != 0)
    {
      v28 = 3000.0;
    }

    else
    {
      v28 = 4000.0;
      if ((*a4 & 0x800) == 0)
      {
        v28 = 3000.0;
      }
    }

    if (v15 >= v28 || v24 >= v28)
    {
      if (v15 >= v24)
      {
        v29 = -769;
      }

      else
      {
        v29 = -3073;
      }

      *a4 &= v29;
    }
  }

  return fminf(v15, v24);
}

void SurfaceGrid::~SurfaceGrid(SurfaceGrid *this)
{
  SurfaceGrid::~SurfaceGrid(this);

  JUMPOUT(0x266758590);
}

{
  OUTLINED_FUNCTION_27();
  *v1 = v2;
  v3 = v1 + 7;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 15);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v3);
}

void *SA1DArrayBase<float>::copyFromBuffer<float>(uint64_t *a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26(a1);
  v6 = (*(v5 + 8))(v4);
  OUTLINED_FUNCTION_31();
  result = (*v7)(a1);
  if (v6 != a2)
  {
    v9 = OUTLINED_FUNCTION_48();

    return memcpy(v9, v10, v11);
  }

  return result;
}

AlgDataNode *SensorVector<float>::SensorVector(AlgDataNode *a1, uint64_t a2, int a3, int a4)
{
  v5 = a3;
  result = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize(a1, a2, a3 + 2 * a4);
  *result = &unk_2876F2DF8;
  *(result + 4) = &unk_2876F2E40;
  *(result + 14) = a4;
  *(result + 60) = a4;
  *(result + 61) = a4 + v5;
  *(result + 62) = v5;
  return result;
}

uint64_t SurfaceGrid::populateBorderPosByEdgeMirror(uint64_t result, float a2, float a3)
{
  v5 = result;
  v6 = 0;
  v7 = result + 32;
  for (i = -1; ; --i)
  {
    v9 = *(v5 + 56);
    if (v6 >= v9)
    {
      break;
    }

    v10 = v6 + v9;
    OUTLINED_FUNCTION_72();
    v12 = -(*((*(v11 + 8))(v7) + 4 * v10) - (a2 * 2.0));
    v13 = i + *(v5 + 56);
    OUTLINED_FUNCTION_72();
    *((*(v14 + 8))(v7) + 4 * v13) = v12;
    OUTLINED_FUNCTION_19();
    v16 = i + (*(v15 + 40))(v5) - *(v5 + 56);
    OUTLINED_FUNCTION_72();
    v18 = -(*((*(v17 + 8))(v7) + 4 * v16) - (a3 * 2.0));
    OUTLINED_FUNCTION_19();
    v20 = v6 + (*(v19 + 40))(v5) - *(v5 + 56);
    OUTLINED_FUNCTION_72();
    result = (*(v21 + 8))(v7);
    *(result + 4 * v20) = v18;
    ++v6;
  }

  return result;
}

uint64_t SurfaceGrid::initSurfaceEdges(uint64_t a1, float *a2)
{
  v4 = *(a1 + 165) + ~*(a1 + 176);
  v5 = a1 + 152;
  *(a1 + 232) = *((*(*(a1 + 152) + 8))(a1 + 152) + 4 * v4);
  v6 = *(a1 + 176);
  v7 = (*(*v5 + 8))(v5);
  v8 = *(a1 + 88);
  *(a1 + 236) = *(v7 + 4 * v6);
  v9 = *(a1 + 101) + ~*(a1 + 112);
  *(a1 + 224) = *((*(v8 + 8))(a1 + 88) + 4 * v9);
  v10 = *(a1 + 112);
  OUTLINED_FUNCTION_31();
  result = (*(v11 + 8))(a1 + 88);
  *(a1 + 228) = *(result + 4 * v10);
  v13 = (*a2 * a2[1]) / ((*a2 * a2[1]) + 1.0);
  v14 = *(a1 + 32);
  if (v14 == 0.0 || (v15 = *(a1 + 40), v15 == 0.0))
  {
    v19 = *(a1 + 176);
    if (v19)
    {
      v20 = *(a1 + 165) - v19;
      OUTLINED_FUNCTION_78();
      v22 = *((*(v21 + 8))(v5) + 4 * v20);
      v23 = *(a1 + 165) + ~*(a1 + 176);
      OUTLINED_FUNCTION_78();
      *(a1 + 200) = v13 * (v22 - *((*(v24 + 8))(v5) + 4 * v23));
      v25 = *(a1 + 176);
      OUTLINED_FUNCTION_78();
      v27 = *((*(v26 + 8))(v5) + 4 * v25);
      LODWORD(v25) = *(a1 + 176) - 1;
      OUTLINED_FUNCTION_78();
      result = (*(v28 + 8))(v5);
      v16 = v13 * (v27 - *(result + 4 * v25));
    }

    else
    {
      *(a1 + 200) = 0;
      v16 = 0.0;
    }

    *(a1 + 204) = v16;
    v29 = *(a1 + 112);
    if (v29)
    {
      OUTLINED_FUNCTION_61();
      v31 = *((*(v30 + 8))(a1 + 88) + 4 * v29);
      v32 = *(a1 + 112) - 1;
      OUTLINED_FUNCTION_61();
      *(a1 + 196) = v13 * (v31 - *((*(v33 + 8))(a1 + 88) + 4 * v32));
      v34 = *(a1 + 101) - *(a1 + 112);
      OUTLINED_FUNCTION_61();
      v36 = *((*(v35 + 8))(a1 + 88) + 4 * v34);
      v37 = *(a1 + 101) + ~*(a1 + 112);
      OUTLINED_FUNCTION_61();
      result = (*(v38 + 8))(a1 + 88);
      v17.f32[0] = v13 * (v36 - *(result + 4 * v37));
      v16 = *(a1 + 204);
      v18 = *(a1 + 196);
    }

    else
    {
      v17.i32[0] = 0;
      v18 = 0;
    }
  }

  else
  {
    v16 = ((v14 * 1000.0) * v13) / *(a1 + 36);
    *(a1 + 200) = v16;
    v17.f32[0] = (v13 * (v15 * 1000.0)) / *(a1 + 44);
    v18 = v17.i32[0];
  }

  v39 = a2[8];
  v17.i32[1] = v18;
  v17.i32[2] = *(a1 + 200);
  *(a1 + 48) = v39;
  *(a1 + 52) = v39;
  v17.f32[3] = v16;
  v40 = vmulq_n_f32(v17, v39);
  *(a1 + 192) = v40;
  if ((*(a1 + 244) & 1) == 0)
  {
    *(a1 + 208) = vtrn2q_s32(vrev64q_s32(vaddq_f32(*(a1 + 224), v40)), vsubq_f32(*(a1 + 224), v40));
  }

  return result;
}

void *SensorVector<float>::copyInteriorFromBuffer(uint64_t a1, const void *a2, unsigned int a3)
{
  result = ((*(*(a1 + 32) + 8))(a1 + 32) + 4 * *(a1 + 60));
  if (result != a2)
  {

    return memcpy(result, a2, 4 * a3);
  }

  return result;
}

int32x4_t *SurfaceGrid::SurfaceGrid(uint64_t a1, __int32 a2, uint64_t a3, uint64_t a4, uint64_t a5, int32x4_t *a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_27();
  *v16 = v17;
  v16[3] = *v18;
  SensorVector<float>::SensorVector((v16 + 7), 0x726AA9D073116532, *(v19 + 5), *(v20 + 40));
  SensorVector<float>::SensorVector(&v8[7].u64[1], 0x726ABD03951D2CEDLL, *(a3 + 2), *(a4 + 36));
  v8[11].i64[1] = a8;
  v8[1].i32[1] = a2;
  v21 = *a3;
  v8[1].i8[0] = *(a3 + 8);
  v8->i64[1] = v21;
  v22 = *(a5 + 8);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v22)))))
  {
    v8[13] = vzip2q_s32(v22, vextq_s8(v22, v22, 8uLL));
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v8[15].i8[4] = v23;
  v24 = *(a7 + 8);
  if (v24 && *(a7 + 16))
  {
    v8[2].i32[0] = 0;
    v8[2].i32[2] = 0;
    SensorVector<float>::copyInteriorFromBuffer(&v8[3].i64[1], v24, *a7);
    SensorVector<float>::copyInteriorFromBuffer(&v8[7].i64[1], *(a7 + 16), *(a7 + 4));
    v25.i32[0] = v8[2].i32[0];
  }

  else
  {
    v25 = *a6;
    v8[2] = *a6;
  }

  v8[15].i32[0] = 602525;
  if (*v25.i32 == 0.0 || *&v8[2].i32[2] == 0.0)
  {
    SurfaceGrid::populateBorderPosByEdgeMirror(&v8[3].i64[1], *(a4 + 44), *(a4 + 48));
    SurfaceGrid::populateBorderPosByEdgeMirror(&v8[7].i64[1], *(a4 + 52), *(a4 + 56));
    while (v8[6].i8[5])
    {
      OUTLINED_FUNCTION_31();
      v31 = (*(v30 + 8))(&v8[5].i64[1]);
      OUTLINED_FUNCTION_59(v31);
    }

    while (v8[10].i8[5])
    {
      OUTLINED_FUNCTION_31();
      v33 = (*(v32 + 8))(&v8[9].i64[1]);
      OUTLINED_FUNCTION_59(v33);
    }
  }

  else
  {
    while (v8[10].i8[5])
    {
      v26 = v8[11].u32[2];
      v28 = v8[2].i32[0];
      v27 = v8[2].i32[1];
      v29 = (*(v8[9].i64[1] + 8))(&v8[9].i64[1]);
      OUTLINED_FUNCTION_33(v29);
    }

    while (v8[6].i8[5])
    {
      v34 = v8[11].u32[3];
      v36 = v8[2].i32[2];
      v35 = v8[2].i32[3];
      OUTLINED_FUNCTION_61();
      v38 = (*(v37 + 8))(&v8[5].i64[1]);
      OUTLINED_FUNCTION_33(v38);
    }
  }

  SurfaceGrid::initSurfaceEdges(v8, a4);
  return v8;
}

uint64_t alg_ClipPosPointToScreenEdge(uint64_t result, float a2, float a3)
{
  *result;
  if (a2 < *(result + 4))
  {
    v3 = *(result + 4);
  }

  *(result + 8);
  if (a3 < *(result + 12))
  {
    v4 = *(result + 12);
  }

  return result;
}

float SurfaceGrid::computeMinDistToSideElectrodes(float *a1, int a2, float a3)
{
  v3 = fminf(a1[56] - a3, 3.4028e38);
  result = a3 - a1[57];
  if (result >= v3)
  {
    result = v3;
  }

  if (result < 0.0 && a2 != 0)
  {
    return result / a1[12];
  }

  return result;
}

float SurfaceGrid::computeMinDistToTopBottomElectrodes(float *a1, int a2, double a3, float a4)
{
  result = fminf(a4 - a1[59], 3.4028e38);
  v5 = a1[58] - a4;
  if (v5 < result)
  {
    result = v5;
  }

  if (result < 0.0 && a2 != 0)
  {
    return result / a1[13];
  }

  return result;
}

uint64_t SurfaceGrid::findSwipeEdgeType(float *a1, float a2, float a3, float a4, float a5)
{
  v10 = SurfaceGrid::computeMinDistToSideElectrodes(a1, 1, a2);
  *&v11 = a2;
  if (v10 >= SurfaceGrid::computeMinDistToTopBottomElectrodes(a1, 1, v11, a3))
  {
    v17 = a3 - a1[59];
    v18 = a1[58] - a3;
    if (a5 > 0.0 && v17 < v18)
    {
      return 3;
    }

    else if (v17 <= v18 || a5 > 0.0)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v12 = a2 - a1[57];
    v13 = a1[56] - a2;
    if (a4 > 0.0 && v12 < v13)
    {
      return 0;
    }

    else if (v12 <= v13 || a4 > 0.0)
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }
}

void SurfaceGrid::computeMinDistToEdges(uint64_t a1, char a2)
{
  if ((a2 & 0xC) != 0)
  {
    v4 = OUTLINED_FUNCTION_74();
    v7 = SurfaceGrid::computeMinDistToSideElectrodes(v5, v6, v4);
    if (a2)
    {
      v8 = v7 + *(a1 + 196);
    }
  }

  if ((a2 & 0x30) != 0)
  {
    *&v9 = OUTLINED_FUNCTION_74();
    v13 = SurfaceGrid::computeMinDistToTopBottomElectrodes(v10, v11, v9, v12);
    if (a2)
    {
      v14 = v13 + *(a1 + 200);
    }
  }
}

void SurfaceDimensions::SurfaceDimensions(SurfaceDimensions *this)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 1;
  SurfaceDescriptorNode::SurfaceDescriptorNode((this + 88), 0x29965DE49819D20DLL);
}

void SurfaceDescriptorNode::SurfaceDescriptorNode(SurfaceDescriptorNode *this, uint64_t a2)
{
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 28) = 0;
  *(this + 44) = 0;
  *(this + 36) = 0;
  *(this + 4) = 20508;
  *(this + 6) = 24;
  *this = &unk_2876F36C0;
}

__n128 PlainDataNode<SASensorSurfaceDescriptor>::injectBuffer(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 44) = a2[1].n128_u64[0];
  *(a1 + 28) = result;
  return result;
}

void SurfaceDescriptorNode::~SurfaceDescriptorNode(SurfaceDescriptorNode *this)
{
  OUTLINED_FUNCTION_3_0(this);
  OUTLINED_FUNCTION_2_0();
}

{
  OUTLINED_FUNCTION_3_0(this);
}

double SensorImage<float>::fillInjExtHeader(_DWORD *a1, uint64_t a2)
{
  v2 = a1[14];
  v3 = a1[15];
  v4 = a1[16];
  v5 = a1[17];
  *a2 = 0;
  *(a2 + 8) = v2;
  *(a2 + 10) = v3;
  *(a2 + 12) = 0x100000001;
  result = 0.0078125;
  *(a2 + 20) = 0x3F80000000000000;
  *(a2 + 28) = v4;
  *(a2 + 29) = v5;
  *(a2 + 30) = 0;
  return result;
}

void SensorImage<float>::injectBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(a2 + 24);
  v6 = (a2 + *(a1 + 22));
  switch(*(a2 + 16))
  {
    case 1:
      SA2DArrayBase<float>::numElems(a1 + 32);
      SA1DArrayBase<float>::copyFromBuffer<float>((a1 + 32), v6);
      break;
    case 2:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_23();
      (*(v25 + 8))(v2);
      OUTLINED_FUNCTION_9();
      (*v26)(v2);
      OUTLINED_FUNCTION_50(*v6);
      while (v28 < v27)
      {
        OUTLINED_FUNCTION_49(v28, v6[v28]);
      }

      break;
    case 3:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_23();
      (*(v15 + 8))(v2);
      OUTLINED_FUNCTION_9();
      v17 = (*v16)(v2);
      v17.n128_u8[0] = *v6;
      OUTLINED_FUNCTION_50(v17.n128_u32[0]);
      while (v19 < v18)
      {
        LOBYTE(v20) = v6[v19];
        OUTLINED_FUNCTION_49(v19, v20);
      }

      break;
    case 4:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_23();
      (*(v21 + 8))(v2);
      OUTLINED_FUNCTION_9();
      (*v22)(v2);
      OUTLINED_FUNCTION_50(*v6);
      while (v24 < v23)
      {
        OUTLINED_FUNCTION_49(v24, *&v6[2 * v24]);
      }

      break;
    case 5:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_23();
      (*(v9 + 8))(v2);
      OUTLINED_FUNCTION_9();
      v11 = (*v10)(v2);
      v11.n128_u16[0] = *v6;
      OUTLINED_FUNCTION_50(v11.n128_u32[0]);
      while (v13 < v12)
      {
        LOWORD(v14) = *&v6[2 * v13];
        OUTLINED_FUNCTION_49(v13, v14);
      }

      break;
    case 6:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_23();
      (*(v29 + 8))(v2);
      OUTLINED_FUNCTION_9();
      (*v30)(v2);
      OUTLINED_FUNCTION_50(*v6);
      while (v32 < v31)
      {
        OUTLINED_FUNCTION_49(v32, *&v6[4 * v32]);
      }

      break;
    case 7:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_23();
      (*(v33 + 8))(v2);
      OUTLINED_FUNCTION_9();
      (*v34)(v2);
      OUTLINED_FUNCTION_50(*v6);
      while (v36 < v35)
      {
        OUTLINED_FUNCTION_49(v36, *&v6[4 * v36]);
      }

      break;
    default:
      break;
  }

  if (v5 != 1.0 || v4 != 0.0)
  {
    v7 = *(a1 + 48);
    for (i = v7; i != &v7[SA2DArrayBase<float>::numElems(a1 + 32)]; ++i)
    {
      *i = v4 + (*i * v5);
      v7 = *(a1 + 48);
    }
  }
}

uint64_t SensorImage<float>::sendCallback()
{
  OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_26(v3);
  (*(v5 + 64))(v4, v7);
  *(v0 + 40) = v7;
  *(v0 + 56) = *(v2 + 48);
  return v1(v0);
}

void SensorImage<float>::SensorImage(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v9 = a4;
  v10 = a3;
  v12 = a3 + 2 * a5;
  v13 = a4 + 2 * a6;
  v14 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize(a1, a2, a3 + 2 * a5, a4 + 2 * a6, a7, 1);
  *v14 = &unk_2876EFEC0;
  *(a1 + 32) = &unk_2876EFF18;
  *(a1 + 64) = a5;
  *(a1 + 68) = a6;
  *(a1 + 72) = 0;
  *(a1 + 73) = v12;
  *(a1 + 74) = v12;
  *(a1 + 75) = 0;
  *(a1 + 76) = v13;
  *(a1 + 77) = v13;
  *(a1 + 78) = a5;
  *(a1 + 79) = a5 + v10;
  *(a1 + 80) = v10;
  *(a1 + 81) = a6;
  *(a1 + 82) = a6 + v9;
  *(a1 + 83) = v9;
  *(a1 + 16) = 4096;
  *(a1 + 22) = 32;
  *(a1 + 24) = 4 * *(a1 + 60) * *(a1 + 56) + 32;
  SA1DArrayBase<float>::fill(v14 + 32, 0.0);
  OUTLINED_FUNCTION_82();
}

void sub_2654193D8()
{
  v1 = OUTLINED_FUNCTION_75();
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1);
  _Unwind_Resume(v0);
}

float dot_f(float *a1, float *a2, int a3)
{
  v3 = a3 & ~(a3 >> 31);
  result = 0.0;
  if ((a3 & ~(a3 >> 31)) != 0)
  {
    do
    {
      v5 = *a1++;
      v6 = v5;
      v7 = *a2++;
      result = result + (v6 * v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t solveLeastSquare_f(uint64_t result, float *a2, float *a3, int a4, int a5)
{
  v5 = a3;
  v6 = result;
  v7 = a4;
  if (a4 < a5)
  {
    v8 = a5 - a4;
    for (i = &a2[a4]; v8; --v8)
    {
      *i++ = 0.0;
    }

    a5 = a4;
  }

  v10 = 0;
  v47 = a5 & ~(a5 >> 31);
  v11 = result + 4 * a5 - 4;
  v12 = 4 * a4;
  v44 = a4;
  v13 = a3;
  v14 = a4;
  v42 = a5;
  v15 = a5;
  while (v10 != v47)
  {
    v52 = result;
    v53 = v11;
    v50 = v14;
    v51 = v10;
    v16 = v14 & ~(v14 >> 63);
    v48 = 4 * v16;
    v49 = v15 - 1;
    v17 = a4 - v10;
    v18 = (result + 4 * v10);
    v19 = dot_f(v18, v18, a4 - v10);
    v20 = 0;
    v21 = sqrtf(v19);
    v22 = *v18;
    if (*v18 <= 0.0)
    {
      v23 = -v21;
    }

    else
    {
      v23 = v21;
    }

    *v18 = v23 + v22;
    v24 = v23 * (v23 + v22);
    v25 = v6;
    while (v20 != (v49 & ~(v49 >> 31)))
    {
      v26 = dot_f(v18, (v25 + v12), v17);
      v27 = v12;
      v28 = v6;
      for (j = v16; j; v27 += 4)
      {
        v30 = *v28++;
        *(v25 + v27) = *(v25 + v27) - ((v26 * v30) / v24);
        --j;
      }

      ++v20;
      v25 += v12;
    }

    v5 = a3;
    v31 = dot_f(v18, &a3[v51], v17);
    v32 = 0;
    v7 = v44;
    v15 = v49;
    while (v48 != v32)
    {
      v13[v32 / 4] = v13[v32 / 4] - ((v31 * *(v6 + v32)) / v24);
      v32 += 4;
    }

    *(v52 + 4 * v51) = -v23;
    result = v52 + 4 * v44;
    v10 = v51 + 1;
    v14 = v50 - 1;
    v11 = v53 + v12;
    v6 += v12 + 4;
    ++v13;
  }

  v33 = -v7;
  v34 = v42;
  v35 = &a2[v42];
  while (v34 >= 1)
  {
    v36 = v34 - 1;
    result += 4 * v33;
    v37 = *(result + 4 * (v34 - 1));
    v38 = 0.0;
    v39 = v11;
    v40 = v35;
    while (v42 > v34)
    {
      v41 = *v40++;
      v38 = v38 + (*v39 * v41);
      LODWORD(v34) = v34 + 1;
      v39 = (v39 + v12);
    }

    a2[v36] = (v5[v36] - v38) / v37;
    --v35;
    v11 += v12 ^ 0xFFFFFFFFFFFFFFFCLL;
    v34 = v36;
  }

  return result;
}

uint64_t ConditionalInjExtAndTaskNode::runTask(ConditionalInjExtAndTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  if ((a6 & 1) != 0 || *(*(this + 12) + 28) == 1)
  {
    AlgTaskNode::runTask(this, a2, a3, a4, a5, a6);
  }

  return 0;
}

void ConditionalInjExtAndTaskNode::~ConditionalInjExtAndTaskNode(ConditionalInjExtAndTaskNode *this)
{
  AlgTaskNode::~AlgTaskNode(this);
  OUTLINED_FUNCTION_77();

  JUMPOUT(0x266758590);
}

void *SAList<std::reference_wrapper<AlgWorkNode>>::~SAList(void *a1)
{
  if (*a1)
  {
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x266758580]();
  }

  return a1;
}

uint64_t ConditionalInjExtAndTaskNode::ConditionalInjExtAndTaskNode()
{
  OUTLINED_FUNCTION_80();
  AlgTaskNode::AlgTaskNode(v2);
  *v3 = &unk_2876F3740;
  v3[12] = v1;
  AlgWorkNode::registerAlgDataNode((v3 + 1), v1);
  return v0;
}

void sub_265419778()
{
  v1 = OUTLINED_FUNCTION_75();
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(v0);
}

float CovarianceToEllipseAxes(float *a1, uint64_t a2, float32_t a3)
{
  v3 = a1[3];
  v4 = fmaxf((*a1 * v3) - (a1[1] * a1[2]), 0.0);
  if (a2)
  {
    v5 = *a1 + v3;
    v6 = sqrtf(fmaxf((v4 * -4.0) + (v5 * v5), 0.0));
    v7.f32[0] = v5 + v6;
    v7.f32[1] = v5 - v6;
    v8 = vmaxnm_f32(vadd_f32(v7, v7), 0);
    v9 = vsqrt_f32(v8);
    *(a2 + 4) = v9;
    if (v9.f32[1] <= a3)
    {
      v10 = 1.0;
      if (v9.f32[0] > a3)
      {
        v10 = v9.f32[0] / a3;
      }
    }

    else
    {
      v10 = v9.f32[0] / v9.f32[1];
    }

    *(a2 + 12) = v10;
    v11 = (0.25 * v8.f32[0]) - *a1;
    v12 = *a1 - vmuls_lane_f32(0.25, v8, 1);
    v13 = a1[2];
    if (v11 <= v12)
    {
      if (v13 >= 0.0)
      {
        v11 = a1[2];
        v13 = v12;
      }

      else
      {
        v11 = -v13;
        v13 = -v12;
      }
    }

    *a2 = atan2f(v11, v13);
  }

  return sqrtf(sqrtf(v4) * 4.0);
}

BOOL AlgsDevice::injExtWith(AlgsDevice *this, AlgDataInjector *a2, AlgDataExtractor *a3, void *a4, unint64_t *a5)
{
  v7 = OUTLINED_FUNCTION_62(this);
  if (v9)
  {
    v10 = *v5;
  }

  AlgsDevice::StreamingClient::setBuffer(v7, v8);
  v11 = AlgsDevice::injExtWith();
  v12 = AlgsDevice::StreamingClient::resetBuffer(*(v6 + 64));
  if (v5)
  {
    *v5 = v12;
  }

  return v11;
}

BOOL AlgsDevice::injExtWith()
{
  OUTLINED_FUNCTION_20();
  v4 = v3 + 32;
  for (i = 32; i != 48; i += 8)
  {
    v6 = *(v2 + i);
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_26(v6);
      (*(v8 + 24))(v7, 0, v1, v0);
    }
  }

  OUTLINED_FUNCTION_31();
  v10 = (*(v9 + 48))(v2);
  v11 = OUTLINED_FUNCTION_26(v10);
  v13 = (*(v12 + 40))(v11, v1, v0, 0, 0, 1);
  for (j = 0; j != 16; j += 8)
  {
    v15 = *(v4 + j);
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_26(v15);
      (*(v17 + 32))(v16);
    }
  }

  return v13 == 0;
}

BOOL AlgsDevice::runPlan(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_62(a1);
  if (v5)
  {
    v6 = *v1;
  }

  AlgsDevice::StreamingClient::setBuffer(v3, v4);
  v7 = AlgsDevice::run();
  v8 = AlgsDevice::StreamingClient::resetBuffer(*(v2 + 64));
  if (v1)
  {
    *v1 = v8;
  }

  return v7;
}

BOOL AlgsDevice::run()
{
  OUTLINED_FUNCTION_79();
  v1 = v0;
  v2 = v0 + 32;
  for (i = 32; i != 48; i += 8)
  {
    v4 = *(v1 + i);
    if (v4)
    {
      OUTLINED_FUNCTION_26(v4);
      v6 = *(v5 + 24);
      OUTLINED_FUNCTION_55();
      v7();
    }
  }

  v8 = *(v1 + 56);
  SAList<unsigned char>::clear(v8 + 40);
  for (j = 0; *(v8 + 20) > j; ++j)
  {
    SAList<unsigned char>::push_back(v8 + 40);
  }

  OUTLINED_FUNCTION_19();
  v11 = (*(v10 + 48))(v1);
  v12 = *(v1 + 56);
  OUTLINED_FUNCTION_26(v11);
  v14 = *(v13 + 56);
  OUTLINED_FUNCTION_55();
  v16 = v15();
  OUTLINED_FUNCTION_19();
  v18 = (*(v17 + 48))(v1);
  AlgWorkNode::resetInjectionState(v18);
  for (k = 0; k != 16; k += 8)
  {
    v20 = *(v2 + k);
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_26(v20);
      (*(v22 + 32))(v21);
    }
  }

  return v16 == 0;
}

BOOL AlgsDevice::runPlan(AlgsDevice *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  OUTLINED_FUNCTION_20();
  v7 = OUTLINED_FUNCTION_26(v6);
  v9 = (*(v8 + 48))(v7);
  v10 = OUTLINED_FUNCTION_26(v9);
  v12 = (*(v11 + 48))(v10, v4, v3) == 0;
  OUTLINED_FUNCTION_31();
  v14 = (*(v13 + 48))(v5);
  AlgWorkNode::resetInjectionState(v14);
  return v12;
}

uint64_t AlgsDevice::AlgsDevice(uint64_t a1, char a2, uint64_t a3, int a4, char a5, const char *a6, char a7)
{
  OUTLINED_FUNCTION_28();
  *v13 = v14;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v15;
  v13[5] = 0;
  v13[6] = 0;
  v13[4] = 0;
  v16 = OUTLINED_FUNCTION_44(0x48uLL);
  *(v7 + 56) = AlgDataExtractor::AlgDataExtractor(v16, 0);
  v17 = OUTLINED_FUNCTION_44(0x98uLL);
  *v17 = &unk_2876F39D0;
  *(v17 + 1) = 0;
  *(v17 + 8) = 256;
  *(v17 + 3) = 0;
  *(v17 + 4) = v7;
  v17[74] = 0;
  *(v17 + 10) = 0;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  v17[72] = 0;
  OUTLINED_FUNCTION_68();
  *(v17 + 11) = 0;
  v17[97] = 0;
  *(v17 + 13) = 0;
  *(v17 + 14) = 0;
  v17[120] = a2;
  v17[128] = 0;
  *(v17 + 17) = 0;
  v17[144] = a2;
  AlgDataExtractor::AlgDataExtractor(v20, 0);
  AlgsDevice::StreamingClient::configure(v17, 0, v20);
  PacketCollection::~PacketCollection(v20);
  *(v7 + 64) = v17;
  *(v7 + 80) = 0;
  *(v7 + 88) = 16;
  *(v7 + 96) = 0;
  *(v7 + 104) = a7;
  *(v7 + 76) = a5;
  *(v7 + 72) = a4;
  *(v7 + 77) = 0;
  if (a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = "";
  }

  AlgsDevice::addVersion(v7, v18);
  return v7;
}

void *AlgDataExtractor::AlgDataExtractor(uint64_t a1, int a2)
{
  result = PacketCollection::PacketCollection(a1, a2);
  *result = &unk_2876F3A30;
  result[7] = 0;
  result[8] = 0;
  return result;
}

void AlgsDevice::addVersion(AlgsDevice *this, const char *a2)
{
  if (a2)
  {
    if (*a2)
    {
      SAList<char const*>::push_back(this + 80);
    }
  }
}

void SAList<char const*>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_12(a1);
  if (!v3)
  {
    v3 = OUTLINED_FUNCTION_44(8 * *(v1 + 8));
    *v1 = v3;
  }

  *(v3 + 8 * *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_10();
}

void AlgsDevice::~AlgsDevice(AlgsDevice *this)
{
  OUTLINED_FUNCTION_28();
  *v2 = v3;
  v4 = v2[7];
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_26(v4);
    (*(v6 + 8))(v5);
  }

  v7 = *(v1 + 64);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_26(v7);
    (*(v9 + 8))(v8);
  }

  SAList<std::reference_wrapper<AlgWorkNode>>::~SAList((v1 + 80));
}

void AlgsDevice::addClient(uint64_t a1, unsigned int a2, uint64_t a3, const PacketCollection *a4)
{
  *(a1 + 8 * a2 + 32) = a3;
  v4 = a1 + 48;
  if (*(a1 + 48 + 4 * a2) | *(a4 + 5))
  {
    v8 = a2;
    v9 = *(a1 + 56);
    v10 = OUTLINED_FUNCTION_44(0x48uLL);
    v11 = AlgDataExtractor::AlgDataExtractor(v10, *(a4 + 5) - *(v4 + 4 * v8) + *(v9 + 5));
    v12 = 0;
    v13 = 0;
    *(a1 + 56) = v11;
    v14 = a2 ? v9 : a4;
    *(v11 + 7) = *(v14 + 56);
    while (v12 != 8)
    {
      if (4 * v8 == v12)
      {
        v15 = a4;
        v16 = -1;
        v17 = 0;
      }

      else
      {
        v16 = *(v4 + v12);
        v15 = v9;
        v17 = v13;
      }

      PacketCollection::append(*(a1 + 56), v15, v16, v17);
      v13 += *(v4 + v12);
      v12 += 4;
    }

    *(v4 + 4 * v8) = *(a4 + 5);
    if (v9)
    {
      OUTLINED_FUNCTION_31();
      v19 = *(v18 + 8);
      OUTLINED_FUNCTION_82();

      __asm { BRAA            X1, X16 }
    }
  }

  OUTLINED_FUNCTION_82();
}

void AlgsDevice::getClientExtractor()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (v2 + 48);
LABEL_4:
  v8 = v4 + 80 * v6;
  for (i = v5; i < *v7; ++i)
  {
    v10 = *(*(v3 + 56) + 8);
    OUTLINED_FUNCTION_19();
    (*(v11 + 16))(v1, v12 + v8);
    v8 += 80;
  }

  do
  {
    v6 += v7[v5++];
    v4 += 80;
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  while (v5 != 2);
  OUTLINED_FUNCTION_70();
}

size_t AlgDataNode::sendCallback(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, __n128 a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  result = *(a3 + 48) + *(a3 + 32);
  if (result)
  {
    if (result < 0x81)
    {
      v11 = *(a3 + 48);
      MEMORY[0x28223BE20](a4);
      v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      OUTLINED_FUNCTION_31();
      (*(v14 + 16))(a1, v13);
      v15 = OUTLINED_FUNCTION_58();
      result = a2(v15);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_44(result);
      OUTLINED_FUNCTION_31();
      (*(v8 + 16))(a1, v7);
      v9 = OUTLINED_FUNCTION_58();
      result = a2(v9);
      if (v7)
      {
        v10 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_4_0();

        JUMPOUT(0x266758580);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *AlgDataNode::extractBuffer(uint64_t *this, unsigned __int8 *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4[0] = a2;
    v4[1] = 0;
    v3 = *this;
    v4[2] = this[1];
    v5 = *(this + 4);
    v6 = 0;
    v7 = *(this + 11);
    v8 = 0;
    v9 = ((v2 + 3) & 0xFFFFFFFC) - v7;
    v10 = 0;
    return (*(v3 + 24))(this, AlgDataNode::extractBuffer(unsigned char *)const::$_0::__invoke, v4);
  }

  return this;
}

void *AlgDataNode::extractBuffer(unsigned char *)const::$_0::__invoke(void **a1)
{
  v2 = *a1;
  memcpy(*a1, a1[5], a1[4]);
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[4] + v2;

  return memcpy(v5, v3, v4);
}

void AlgDataNode::~AlgDataNode(AlgDataNode *this)
{
  OUTLINED_FUNCTION_3_0(this);
  OUTLINED_FUNCTION_2_0();
}

{
  OUTLINED_FUNCTION_3_0(this);
}

void AlgDataNode::AlgDataNode(AlgDataNode *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2876F3810;
  *(this + 6) = 0;
}

void AlgDataNode::AlgDataNode(AlgDataNode *this, uint64_t a2, char a3)
{
  *this = &unk_2876F3810;
  *(this + 1) = a2;
  *(this + 20) = a3;
  *(this + 21) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
}

float alg_AverageAngles0_180(double a1, float a2, int a3)
{
  v3 = vabds_f32(*&a1, a2);
  if (v3 <= 4.7124)
  {
    if (v3 <= 2.3562 || a3 == 0)
    {
      v5 = v3 > 0.7854 && a3 == 0;
      v6 = (*&a1 + a2) * 0.5;
      if (!v5)
      {
        *&a1 = v6;
      }
    }

    else
    {
      *(&a1 + 1) = a2;
      v7 = vadd_f32(*&a1, *&a1);
      *&a1 = vaddv_f32(vbsl_s8(vcgt_f32(v7, vdup_n_s32(0x40490FDBu)), vmla_f32(vdup_n_s32(0xC0C90FDB), 0x4000000040000000, *&a1), v7));
      if (*&a1 > 3.1416)
      {
        *&a1 = *&a1 + -6.2832;
      }

      *&a1 = *&a1 * 0.25;
      if (*&a1 < 0.0)
      {
        *&a1 = *&a1 + 3.1416;
      }
    }
  }

  else
  {
    if (*&a1 < 0.0)
    {
      *&a1 = *&a1 + 6.2832;
    }

    if (a2 < 0.0)
    {
      a2 = a2 + 6.2832;
    }

    *&a1 = (*&a1 + a2) * 0.5;
    if (*&a1 > 3.1416)
    {
      *&a1 = *&a1 + -6.2832;
    }
  }

  return *&a1;
}

uint64_t ConditionalAlgTaskNode::runTask(ConditionalAlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(*(this + 12) + 28) ^ 1;
  }

  AlgTaskNode::runTask(this, a2, a3, a4, a5, v6 & 1);
  return 0;
}

void ConditionalAlgTaskNode::~ConditionalAlgTaskNode(ConditionalAlgTaskNode *this)
{
  AlgTaskNode::~AlgTaskNode(this);
  OUTLINED_FUNCTION_77();

  JUMPOUT(0x266758590);
}

uint64_t ConditionalAlgTaskNode::ConditionalAlgTaskNode()
{
  OUTLINED_FUNCTION_80();
  AlgTaskNode::AlgTaskNode(v2);
  v4 = OUTLINED_FUNCTION_25(v3);
  AlgWorkNode::registerAlgDataNode((v4 + 1), v1);
  return v0;
}

{
  OUTLINED_FUNCTION_80();
  v6 = AlgTaskNode::AlgTaskNode(v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_25(v6);
  AlgWorkNode::registerAlgDataNode((v7 + 1), v1);
  return v0;
}

void sub_26541A6F8()
{
  v1 = OUTLINED_FUNCTION_75();
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(v0);
}

void sub_26541A74C()
{
  v1 = OUTLINED_FUNCTION_75();
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(v0);
}

float wFfuzzifyAndClip(float a1, float a2, float a3)
{
  result = 0.0;
  if (a1 > a2)
  {
    result = 1.0;
    if (a1 < a3)
    {
      return (a1 - a2) / (a3 - a2);
    }
  }

  return result;
}

float wFfuzzifyAndClipDecreasing(float a1, float a2, float a3)
{
  result = 1.0;
  if (a1 > a2)
  {
    result = 0.0;
    if (a1 < a3)
    {
      return (a3 - a1) / (a3 - a2);
    }
  }

  return result;
}

uint64_t AlgTaskNode::runPlan(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (a2 && *a2 == 0x2000)
  {
    v4 = *(a2 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = OUTLINED_FUNCTION_26(a1);
  return (*(v8 + 48))(v7, v9, v10);
}

uint64_t AlgTaskNode::runPlan(AlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  v4 = *(a2 + 1);
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  AlgWorkNode::runPrologue(this, a3);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);
  v9 = OUTLINED_FUNCTION_48();
  AlgWorkNode::runEpilogue(v9, v10);
  return 1;
}

void AlgTaskNode::runTask(AlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  OUTLINED_FUNCTION_57();
  v9 = v8;
  AlgWorkNode::runPrologue(v8, v10, v11);
  if ((a6 & 1) == 0)
  {
    (*(*v9 + 64))(v9);
  }

  for (i = 0; i < *(v9 + 23); ++i)
  {
    v13 = *(*(v9 + 10) + 8 * i);
    v14 = *(v6 + 56);
    if (v14)
    {
      v14(*(v6 + 64), v13[9]);
    }

    v15 = *(*v13 + 16);
    OUTLINED_FUNCTION_41();
    v16();
  }

  if ((a6 & 1) == 0)
  {
    (*(*v9 + 72))(v9);
  }

  OUTLINED_FUNCTION_41();
  AlgWorkNode::runEpilogue(v17, v18, v19);
  OUTLINED_FUNCTION_82();
}

void AlgTaskNode::AlgTaskNode(AlgTaskNode *this)
{
  v1 = AlgWorkNode::AlgWorkNode(this);
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v2[10] = 0;
  v2[11] = 32;
}

void *AlgTaskNode::AlgTaskNode(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = AlgWorkNode::AlgWorkNode(a1);
  result = OUTLINED_FUNCTION_6_0(v5);
  result[10] = 0;
  *(result + 22) = a4;
  *(result + 23) = 0;
  return result;
}

uint64_t *AlgWorkNode::children(AlgWorkNode *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    qword_2800179F8 = 0;
    qword_2800179F0 = 0;
    __cxa_atexit(SAList<std::reference_wrapper<AlgWorkNode>>::~SAList, &qword_2800179F0, &dword_2653C2000);
    __cxa_guard_release(&_MergedGlobals);
  }

  return &qword_2800179F0;
}

uint64_t AlgWorkNode::runStep(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  OUTLINED_FUNCTION_57();
  v8 = v7;
  AlgWorkNode::runPrologue(v7, v9, v10);
  if (a6)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*v8 + 32))(v8);
  }

  OUTLINED_FUNCTION_41();
  AlgWorkNode::runEpilogue(v12, v13, v14);
  return v11;
}

void AlgWorkNode::runPrologue(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 13);
  while (v7 != v5)
  {
    v8 = *(a2 + 1) + 80 * *(*(a2 + 5) - v6 + v5);
    v9 = *v8 == *(this + 9) && *(v8 + 33) == 1;
    if (v9 && (AlgWorkNode::injectDataIfOnList(*(this + 7), *(this + 17), *(a2 + 1) + 80 * *(*(a2 + 5) - v6 + v5)) || AlgWorkNode::injectDataIfOnList(*(this + 1), *(this + 5), v8) || AlgWorkNode::injectDataIfOnList(*(this + 3), *(this + 9), v8)))
    {
      *(*(a2 + 3) + 2 * *(*(a2 + 5) - v6 + v5)) = 1;
      PacketCollection::popIterableAt(a2, v5 - v6++);
    }

    ++v5;
  }

  OUTLINED_FUNCTION_55();

  AlgWorkNode::runPrologue(v10, v11);
}

void AlgWorkNode::runEpilogue(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_57();
  v10 = v9;
  OUTLINED_FUNCTION_11(v11, v9);
  while (v6 != v4)
  {
    v12 = *(v10 + 8) + *(*(v10 + 40) - v5 + v4) * v7;
    if (*v12 == *(v3 + 72) && *(v12 + 33) == 2 && AlgWorkNode::injectDataIfOnList(*(v3 + 40), *(v3 + 52), v12))
    {
      *(*(v10 + 24) + 2 * *(*(v10 + 40) - v5 + v4)) = v8;
      PacketCollection::popIterableAt(v10, v4 - v5++);
    }

    ++v4;
  }

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_70();

  AlgWorkNode::runEpilogue(v14, v15);
}

void AlgWorkNode::runEpilogue(AlgWorkNode *this, AlgDataExtractor *a2)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_11(v8, v9);
  while (v6 != v4)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_46(v10);
    v12 = v12 && v11 == 2;
    if (v12)
    {
      v13 = *(v3 + 40);
      v14 = *(v3 + 52);
      OUTLINED_FUNCTION_45();
      if (AlgWorkNode::extractDataIfOnList(v15, v16, v17, v18, v19) || (v20 = *(v3 + 24), v21 = *(v3 + 36), OUTLINED_FUNCTION_45(), AlgWorkNode::extractDataIfOnList(v22, v23, v24, v25, v26)))
      {
        OUTLINED_FUNCTION_35();
        *(*(v2 + 24) + 2 * v27) = v7;
        PacketCollection::popIterableAt(v2, v28);
        ++v5;
      }
    }

    ++v4;
  }

  OUTLINED_FUNCTION_70();
}

BOOL AlgWorkNode::extractDataIfOnList(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = 0;
  v6 = a2;
  do
  {
    if (a2 == v5)
    {
      v7 = a2;
      return v7 < v6;
    }

    v7 = v5;
    v8 = *(a1 + 8 * v5++);
  }

  while (*(v8 + 8) != a3[1]);
  *(a3 + 4) = *(v8 + 16);
  v9 = (*(v8 + 24) + 3) & 0xFFFFFFFC;
  a3[3] = v9;
  a3[5] = a4;
  *(a3 + 12) = a5;
  if (a3[8])
  {
    v13 = a3[9];
    v14 = *a3;
    v15 = *(a3 + 33);
    v16 = v9 - *(v8 + 22);
    OUTLINED_FUNCTION_19();
    (*(v10 + 24))(v8);
  }

  else
  {
    if (!a3[7])
    {
      a3[7] = OUTLINED_FUNCTION_44(v9);
    }

    OUTLINED_FUNCTION_19();
    (*(v11 + 16))(v8);
  }

  return v7 < v6;
}

BOOL AlgWorkNode::injectDataIfOnList(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = a2;
  do
  {
    if (a2 == v4)
    {
      v6 = a2;
      return v6 < v5;
    }

    v6 = v4;
    v7 = *(a1 + 8 * v4++);
  }

  while (*(v7 + 8) != *(a3 + 8));
  v8 = *(a3 + 56);
  v9 = v8 & 3;
  if ((v8 & 3) != 0)
  {
    v8 = OUTLINED_FUNCTION_44(*(a3 + 24));
    memcpy(v8, *(a3 + 56), *(a3 + 24));
  }

  v10 = *(a3 + 24);
  OUTLINED_FUNCTION_37();
  (*(v11 + 32))(v7, v8);
  *(v7 + 21) = 1;
  if (v9 && v8)
  {
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x266758580](v8);
  }

  return v6 < v5;
}

void AlgWorkNode::runPrologue(AlgWorkNode *this, AlgDataExtractor *a2)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_11(v8, v9);
  while (v6 != v4)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_46(v10);
    v12 = v12 && v11 == 1;
    if (v12)
    {
      v13 = *(v3 + 56);
      v14 = *(v3 + 68);
      OUTLINED_FUNCTION_45();
      if (AlgWorkNode::extractDataIfOnList(v15, v16, v17, v18, v19) || (v20 = *(v3 + 8), v21 = *(v3 + 20), OUTLINED_FUNCTION_45(), AlgWorkNode::extractDataIfOnList(v22, v23, v24, v25, v26)))
      {
        OUTLINED_FUNCTION_35();
        *(*(v2 + 24) + 2 * v27) = v7;
        PacketCollection::popIterableAt(v2, v28);
        ++v5;
      }
    }

    ++v4;
  }

  OUTLINED_FUNCTION_70();
}

void AlgWorkNode::AlgWorkNode(AlgWorkNode *this)
{
  v1 = OUTLINED_FUNCTION_63(this);
  v1[2] = 16;
  v1[3] = 0;
  v1[4] = 16;
  v1[5] = 0;
  v1[6] = 16;
  v1[7] = 0;
  v1[8] = 16;
  v1[9] = v2;
}

void *AlgWorkNode::AlgWorkNode(void *a1)
{
  result = OUTLINED_FUNCTION_63(a1);
  v3 = v2[1];
  *(result + 4) = *v2;
  *(result + 5) = 0;
  result[3] = 0;
  *(result + 8) = v3;
  *(result + 9) = 0;
  result[5] = 0;
  v4 = v2[3];
  result[6] = v2[2];
  result[7] = 0;
  result[8] = v4;
  result[9] = v5;
  return result;
}

uint64_t AlgWorkNode::getDataNodeInfo(uint64_t a1, char a2, uint64_t a3)
{
  v8 = 0;
  v5 = *(a1 + 8);
  v3 = (*(a1 + 24) + 3) & 0xFFFFFFFC;
  v6 = *(a1 + 16);
  v7 = v3;
  LOBYTE(v8) = a2;
  return AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a3, &v5);
}

uint64_t AlgWorkNode::getTreeInfo(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 36) + *(a1 + 20) + *(a1 + 52) + *(a1 + 68);
  OUTLINED_FUNCTION_37();
  v7 = v5 + *((*(v6 + 24))(a1) + 12);
  v8 = *(a1 + 72);
  v30 = 0;
  v29 = v8;
  v31 = 0;
  BYTE1(v31) = v7;
  result = AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a2, &v29);
  if (result)
  {
LABEL_3:
    v10 = 0;
    while (v10 < *(a1 + 20))
    {
      DataNodeInfo = AlgWorkNode::getDataNodeInfo(*(*(a1 + 8) + 8 * v10++), 2, a2);
      if ((DataNodeInfo & 1) == 0)
      {
        return 0;
      }
    }

    v12 = 0;
    while (v12 < *(a1 + 36))
    {
      v13 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 24) + 8 * v12++), 4, a2);
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = 0;
    while (v14 < *(a1 + 52))
    {
      v15 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 40) + 8 * v14++), 3, a2);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = 0;
    while (v16 < *(a1 + 68))
    {
      v17 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 56) + 8 * v16++), 5, a2);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    v18 = 0;
    do
    {
      OUTLINED_FUNCTION_37();
      v20 = *((*(v19 + 24))(a1) + 12);
      result = v18 >= v20;
      if (v18 >= v20)
      {
        break;
      }

      OUTLINED_FUNCTION_37();
      v22 = *(*(*(v21 + 24))(a1) + 8 * v18);
      v23 = v22[36] + v22[20] + v22[52] + v22[68];
      OUTLINED_FUNCTION_31();
      v25 = v23 + *((*(v24 + 24))(v22) + 12);
      OUTLINED_FUNCTION_37();
      v27 = *(*(*(v26 + 24))(a1) + 8 * v18);
      v30 = 0;
      v31 = 1;
      v29 = *(v27 + 72);
      BYTE1(v31) = v25;
      result = AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a2, &v29);
      if (!result)
      {
        break;
      }

      TreeInfo = AlgWorkNode::getTreeInfo(v22, a2, 0);
      result = 0;
      ++v18;
    }

    while ((TreeInfo & 1) != 0);
  }

  return result;
}

uint64_t AlgWorkNode::getTreeSize(AlgWorkNode *this)
{
  v2 = 0;
  for (i = *(this + 10) + *(this + 18) + *(this + 26) + *(this + 34) + 1; ; i += AlgWorkNode::getTreeSize(*(*v6 + 8 * v2++)))
  {
    OUTLINED_FUNCTION_19();
    if (v2 >= *((*(v4 + 24))(this) + 12))
    {
      break;
    }

    OUTLINED_FUNCTION_19();
    v6 = (*(v5 + 24))(this);
  }

  return i;
}

uint64_t *AlgWorkNode::resetInjectionStateOnList(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  if (a2)
  {
    do
    {
      v3 = *result++;
      *(v3 + 21) = 0;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t AlgWorkNode::resetInjectionState(AlgWorkNode *this)
{
  AlgWorkNode::resetInjectionStateOnList(*(this + 7), *(this + 17));
  AlgWorkNode::resetInjectionStateOnList(*(this + 1), *(this + 5));
  AlgWorkNode::resetInjectionStateOnList(*(this + 3), *(this + 9));
  AlgWorkNode::resetInjectionStateOnList(*(this + 5), *(this + 13));
  for (i = 0; ; ++i)
  {
    OUTLINED_FUNCTION_19();
    result = (*(v3 + 24))(this);
    if (i >= *(result + 12))
    {
      break;
    }

    OUTLINED_FUNCTION_19();
    v6 = (*(v5 + 24))(this);
    AlgWorkNode::resetInjectionState(*(*v6 + 8 * i));
  }

  return result;
}

void StreamingPacketCache::~StreamingPacketCache(StreamingPacketCache *this)
{
  if (*(this + 1))
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x266758580]();
  }
}

void SABinaryParser::parseInfoData(uint64_t *a1, unsigned int (*a2)(uint64_t, void, void, void, void), uint64_t (*a3)(uint64_t, const char *), unsigned int (*a4)(uint64_t, BOOL))
{
  v4 = a1[2];
  if ((a1[1] - v4) >= 7)
  {
    v8 = *a1;
    a1[2] = v4 + 7;
    if (!a2 || a2(a1[3], *(v8 + v4), *(v8 + v4 + 1), *(v8 + v4 + 5), *(v8 + v4 + 6)))
    {
      while (1)
      {
        v9 = a1[1];
        v10 = a1[2];
        if (v9 == v10)
        {
          break;
        }

        v11 = *a1;
        v12 = (*a1 + v10);
        v13 = *v12;
        v14 = v10 + 1;
        a1[2] = v10 + 1;
        if (!v13)
        {
          if (v9 == v14)
          {
            return;
          }

          v18 = v10 + 2;
          a1[2] = v18;
          if (a4)
          {
            if (!a4(a1[3], *(v11 + v14) != 0))
            {
              return;
            }

            v9 = a1[1];
            v18 = a1[2];
          }

          if (v9 != v18)
          {
            v19 = OUTLINED_FUNCTION_73();

            SABinaryParser::parseInjExtData(v19, v20, v21, v22);
          }

          return;
        }

        v15 = *v12;
        if (v9 - v14 >= v15)
        {
          a1[2] = v14 + v15;
          v17 = *v12;
          v16 = (v12 + 1);
          if (strnlen(v16, v17) != v17 && (!a3 || (a3(a1[3], v16) & 1) != 0))
          {
            continue;
          }
        }

        return;
      }
    }
  }
}

void SABinaryParser::parseInjExtData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_79();
  v8 = v7;
  while (1)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = v9 - v10;
    if (v9 <= v10)
    {
      break;
    }

    v12 = (*v8 + v10);
    v13 = *v12;
    if (v13 < 0)
    {
      v15 = *(v8 + 40);
      if (!v15)
      {
        break;
      }

      v16 = v13 & 0x7F;
      if (v16 >= *(v8 + 32))
      {
        break;
      }

      v17 = (v15 + 22 * v16);
      v18 = *(v17 + 10);
      if (v11 <= v18)
      {
        break;
      }

      *(v8 + 16) = v10 + v18 + 1;
      if (*v17 == 1)
      {
        if (v5)
        {
          v19 = *(v8 + 24);
          v20 = (v12 + 1);
          v12 = v17;
LABEL_21:
          if ((v5(v19, v12, v20) & 1) == 0)
          {
            break;
          }
        }
      }

      else if (v4)
      {
        v22 = *(v8 + 24);
        v23 = (v12 + 1);
        v12 = v17;
LABEL_27:
        if ((v4(v22, v12, v23) & 1) == 0)
        {
          break;
        }
      }
    }

    else
    {
      if (v11 < 0x12)
      {
        break;
      }

      v14 = *v12;
      *(v8 + 16) = v10 + 18;
      if (v14 == 3)
      {
        if (a4 && (a4(*(v8 + 24)) & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v9 - (v10 + 18) < 4)
        {
          break;
        }

        *(v8 + 16) = v10 + 22;
        v21 = *(v12 + 10);
        if (v9 - (v10 + 22) < v21)
        {
          break;
        }

        *(v8 + 16) = v10 + 22 + v21;
        if (v14 == 2)
        {
          if (v4)
          {
            v22 = *(v8 + 24);
            v23 = (v12 + 22);
            goto LABEL_27;
          }
        }

        else
        {
          if (v14 != 1)
          {
            break;
          }

          if (v5)
          {
            v19 = *(v8 + 24);
            v20 = (v12 + 22);
            goto LABEL_21;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_82();
}

uint64_t StreamingParser::parseReset(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke(uint64_t a1, char a2, int a3, char a4, char a5)
{
  if (*a1)
  {
    **a1 = a2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *v6 = a4;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *v7 = a5;
  }

  return 1;
}

void SABinaryParser::parseRunFrame(void *a1, unsigned int (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[2];
  if ((v4 - v5) >= 2)
  {
    a1[2] = v5 + 2;
    if ((v4 - (v5 + 2)) >= 4)
    {
      v8 = *a1 + v5 + 2;
      v9 = v5 + 6;
      a1[2] = v9;
      v10 = *(v8 + 2);
      if (v4 - v9 >= v10)
      {
        a1[2] = v9 + v10;
        if (!a2 || a2(a1[3]))
        {

          SABinaryParser::parseInjExtData(a1, a3, a4, 0);
        }
      }
    }
  }
}

uint64_t StreamingParser::addPacket(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 18);
  v6 = *(a2 + 17);
  v7 = *(a2 + 20);
  v13 = *(a2 + 1);
  v14 = v5;
  v15 = v7;
  v16 = a3;
  v17 = v6;
  OUTLINED_FUNCTION_71();
  v18 = v8;
  v10 = OUTLINED_FUNCTION_26(v9);
  result = (*(v11 + 16))(v10, &v13);
  if (a3 == 2)
  {
    if (result)
    {
      *(*(a1 + 24) + 2 * *(a1 + 20) - 2) = 1;
    }
  }

  return result;
}

uint64_t StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_0::__invoke(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  *v2 = *a2;
  *(v2 + 8) = a2[1];
  *(v2 + 16) = a2 + 2;
  return 1;
}

void SABinaryParser::parseInjExtFrame(uint64_t *a1, unsigned int (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a1[1];
  v5 = a1[2];
  if ((v6 - v5) >= 2)
  {
    a1[2] = v5 + 2;
    if ((v6 - (v5 + 2)) >= 8)
    {
      v8 = *a1;
      a1[2] = v5 + 10;
      if (!a2 || a2(a1[3], *(v8 + v5 + 2)))
      {
        OUTLINED_FUNCTION_55();

        SABinaryParser::parseInjExtData(v9, v10, v11, a5);
      }
    }
  }
}

void StreamingParser::numberOfPackets(StreamingParser *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 24);
  v30 = *(this + 8);
  v31 = v8;
  v32 = *(this + 40);
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v27 = a2;
  v28 = a3;
  v29 = a4;
  *(&v31 + 1) = &v27;
  if (*(&v30 + 1) >= 2uLL && *v30 == 1)
  {
    switch(*(v30 + 1))
    {
      case 2:
        OUTLINED_FUNCTION_17();
        SABinaryParser::parseRunFrame(&v30, 0, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_17();
        v19 = OUTLINED_FUNCTION_22(v11, v12, v13, v14, v15, v16, v17, v18, v26, v27, v28, v29, v30);
        SABinaryParser::parseInjExtFrame(v19, v20, v21, v22, v23);
        break;
      case 5:
        SABinaryParser::parseConfigure(&v30, 0, StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_2::__invoke, 0);
        break;
      case 6:
        v24 = OUTLINED_FUNCTION_22(0, a2, a3, a4, a5, a6, a7, a8, v26, v27, v28, v29, v30);
        SABinaryParser::parseInfo(v24, v25, 0, 0);
        break;
      default:
        return;
    }
  }
}

void SABinaryParser::parseConfigure(uint64_t *a1, unsigned int (*a2)(uint64_t, BOOL), uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t))
{
  v5 = a1[1];
  v4 = a1[2];
  if ((v5 - v4) < 2)
  {
    return;
  }

  a1[2] = v4 + 2;
  if (v5 == v4 + 2)
  {
    return;
  }

  v8 = *a1;
  v9 = (*a1 + v4 + 2);
  v10 = v4 + 3;
  a1[2] = v4 + 3;
  v11 = *v9;
  v12 = v9;
  if (v11 < 2)
  {
    goto LABEL_9;
  }

  if (v5 != v10)
  {
    v12 = (v8 + v10);
    a1[2] = v4 + 4;
LABEL_9:
    if (a2 && v12 && !a2(a1[3], *v12 != 0))
    {
      return;
    }

    goto LABEL_12;
  }

  if (v11 != 3)
  {
    return;
  }

LABEL_12:
  if (!a4 || (*v9 <= 2u ? (v13 = 2) : (v13 = *v9), a4(a1[3], v13)))
  {
    v14 = OUTLINED_FUNCTION_73();

    SABinaryParser::parseInjExtData(v14, v15, v16, v17);
  }
}

void SABinaryParser::parseInfo(uint64_t *a1, unsigned int (*a2)(uint64_t, void, void, void, void), uint64_t (*a3)(uint64_t, const char *), unsigned int (*a4)(uint64_t, BOOL))
{
  v4 = a1[1];
  v5 = a1[2];
  if ((v4 - v5) >= 2)
  {
    v6 = v5 + 2;
    a1[2] = v6;
    if (v4 != v6)
    {
      SABinaryParser::parseInfoData(a1, a2, a3, a4);
    }
  }
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_2::__invoke(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    ++*v1;
  }

  return 1;
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_1::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    ++*v1;
  }

  return 1;
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_0::__invoke(void **a1)
{
  if (*a1)
  {
    ++**a1;
  }

  return 1;
}

uint64_t StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke(uint64_t a1, char a2, int a3, char a4, char a5)
{
  if (*a1)
  {
    **a1 = a2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *v6 = a4;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *v7 = a5;
  }

  return 1;
}

uint64_t StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = StreamingParser::addPoint(v5, a2);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    return v6 & StreamingParser::addPoint(v7, a3);
  }

  return v6;
}

uint64_t StreamingParser::parsePacketCache(unsigned char &,StreamingPacketCache &)::$_0::__invoke(uint64_t a1, char a2, unsigned int a3, const void *a4)
{
  **a1 = a2;
  v6 = *(a1 + 8);
  if (*(v6 + 1))
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x266758580]();
  }

  *v6 = a3;
  v7 = OUTLINED_FUNCTION_44(22 * a3);
  *(v6 + 1) = v7;
  memcpy(v7, a4, 22 * *v6);
  return 1;
}

uint64_t SABinaryWriter::updateCacheSizes(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 + 20);
  if (result)
  {
    do
    {
      *v3 = (*v3 + 3) & 0xFFFC;
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t SABinaryWriter::writeHeader(uint64_t a1, char a2)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v5[0] = 1;
  v5[1] = a2;
  return SABinaryWriter::write(a1, v5);
}

uint64_t SABinaryWriter::write(SABinaryWriter *this, const void *a2)
{
  OUTLINED_FUNCTION_80();
  if (*v4)
  {
    v6 = *(v2 + 16);
    if (*(v2 + 8) - v6 < v3)
    {
      result = 0;
      *(v2 + 24) = 0;
      return result;
    }

    memcpy((*v4 + v6), v5, v3);
  }

  *(v2 + 16) += v3;
  return 1;
}

uint64_t StreamingWriter::writeResetOrInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, AlgDataExtractor *a9)
{
  *(a1 + 33) = 0;
  if (a2)
  {
    v12 = OUTLINED_FUNCTION_60();
    if ((SABinaryWriter::writeHeader(v12, 1) & 1) == 0)
    {
      return 0;
    }

    v13 = OUTLINED_FUNCTION_76();
    if ((SABinaryWriter::write(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_60();
    if ((SABinaryWriter::writeHeader(v15, 6) & 1) == 0)
    {
      return 0;
    }

    v16 = OUTLINED_FUNCTION_76();
    if (!SABinaryWriter::write(v16, v17))
    {
      return 0;
    }
  }

  v18 = 0;
  while (v18 < *(a7 + 12))
  {
    v19 = *(*a7 + 8 * v18);
    v20 = *(a1 + 32);
    if (v20 == 1)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        v21 = v20 == 6;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        return 0;
      }
    }

    if (*v19)
    {
      v22 = *(a1 + 16) + ~*(a1 + 24);
      v23 = strnlen(*(*a7 + 8 * v18), v22);
      if (v23 != v22 && v23 + 1 <= 0xFF)
      {
        v24 = OUTLINED_FUNCTION_76();
        if (SABinaryWriter::write(v24, v25))
        {
          ++v18;
          if (SABinaryWriter::write((a1 + 8), v19))
          {
            continue;
          }
        }
      }
    }

    return 0;
  }

  v26 = *(a1 + 32);
  if (v26 != 6 && v26 != 1)
  {
    return 0;
  }

  if (*(a1 + 33))
  {
    return 0;
  }

  *(a1 + 33) = 1;
  v31 = a8;
  v28 = OUTLINED_FUNCTION_76();
  if ((SABinaryWriter::write(v28, v29) & 1) == 0 || !SABinaryWriter::write((a1 + 8), &v31))
  {
    return 0;
  }

  return StreamingWriter::writeExtPoints(a1, a9);
}

uint64_t StreamingWriter::writeExtPoints(StreamingWriter *this, AlgDataExtractor *a2)
{
  v2 = 1;
  if (a2)
  {
    v5 = 0;
    v6 = -1;
    while (++v6 < *(a2 + 5))
    {
      v7 = (*(a2 + 1) + v5);
      v8 = *v7;
      v9 = *(v7 + 33);
      v10 = *(this + 32);
      v11 = v10 == 3 || v10 == 5;
      if (v11 || *(this + 33) == 1)
      {
        v5 += 80;
        v14 = 3;
        v15 = v8;
        v12 = v9 == 1 ? 1 : 2;
        v16 = v12;
        if (SABinaryWriter::write((this + 8), &v14))
        {
          continue;
        }
      }

      return 0;
    }

    return 1;
  }

  return v2;
}

BOOL StreamingWriter::writeInjExtData(StreamingWriter *this, int a2, PacketCollection *a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = 0;
  v7 = -1;
  while (1)
  {
    v8 = *(a3 + 5);
    result = ++v7 >= v8;
    if (v7 >= v8)
    {
      break;
    }

    v10 = v6 + 80;
    v11 = *(a3 + 1) + v6;
    v12 = SABinaryWriter::addInjExtData((this + 8), a2, *v11, *(v11 + 8), *(v11 + 33) == 1, *(v11 + 16), *(v11 + 24), *(v11 + 56));
    v6 = v10;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SABinaryWriter::addInjExtData(SABinaryWriter *this, int a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, __int16 a7, const void *a8)
{
  if ((*(this + 24) & 0xFE) != 2)
  {
    return 0;
  }

  v21 = v8;
  v22 = v9;
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v17 = v14;
  v18 = a3;
  v19 = a4;
  if (a5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v20 = v15;
  result = SABinaryWriter::write(this, &v17);
  if (result)
  {
    return SABinaryWriter::writeData(this, a6, a7, a8);
  }

  return result;
}

uint64_t SABinaryWriter::writeData(SABinaryWriter *this, __int16 a2, __int16 a3, const void *a4)
{
  v8[0] = a2;
  v8[1] = (a3 + 3) & 0xFFFC;
  v7 = 0;
  result = SABinaryWriter::write(this, v8);
  if (result)
  {
    if (a4)
    {
      result = SABinaryWriter::write(this, a4);
      if (result)
      {
        return SABinaryWriter::write(this, &v7);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t StreamingWriter::writeConfigure(StreamingWriter *this, char a2, BOOL a3, AlgDataExtractor *a4)
{
  v10 = 3;
  if ((SABinaryWriter::writeHeader(this + 8, 5) & 1) == 0)
  {
    return 0;
  }

  if (!SABinaryWriter::write((this + 8), &v10))
  {
    return 0;
  }

  v9 = a2;
  if (!SABinaryWriter::write((this + 8), &v9))
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_48();

  return StreamingWriter::writeExtPoints(v6, v7);
}

uint64_t PacketCollection::reset(PacketCollection *this)
{
  v1 = 0;
  for (i = 0; ; ++i)
  {
    v3 = *(this + 5);
    if (i >= v3)
    {
      break;
    }

    v4 = *(this + 1) + v1;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v1 += 80;
  }

    ;
  }

  for (k = v3 - 1; k != -1; --k)
  {
    *(this + 5) = k;
  }

  return SAList<unsigned char>::clear(this + 40);
}

uint64_t SAList<unsigned char>::clear(uint64_t result)
{
    ;
  }

  return result;
}

uint64_t PacketCollection::add(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (!v3)
  {
    while (80 * *(a1 + 20) != v3)
    {
      v5 = *(a1 + 8);
      if (*a2 == *(v5 + v3))
      {
        v6 = v5 + v3;
        if (*(a2 + 8) == *(v6 + 8) && *(a2 + 33) == *(v6 + 33))
        {
          return 0;
        }
      }

      v3 += 80;
    }
  }

  SAList<AlgDataPacket>::push_back(a1 + 8);
  SAList<PacketBookkeeper>::push_back(a1 + 24);
  v8 = (*(a1 + 20) - 1);
  SAList<unsigned char>::push_back(a1 + 40);
  return 1;
}

void SAList<AlgDataPacket>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_12(a1);
  if (!v3)
  {
    v3 = OUTLINED_FUNCTION_44(80 * *(v1 + 8));
    *v1 = v3;
  }

  memcpy((v3 + 80 * *(v1 + 12)), v2, 0x50uLL);
  OUTLINED_FUNCTION_10();
}

void SAList<PacketBookkeeper>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_12(a1);
  if (!v3)
  {
    v3 = OUTLINED_FUNCTION_44(2 * *(v1 + 8));
    *v1 = v3;
  }

  *(v3 + 2 * *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_10();
}

void SAList<unsigned char>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_12(a1);
  if (!v3)
  {
    v3 = OUTLINED_FUNCTION_44(*(v1 + 8));
    *v1 = v3;
  }

  *(v3 + *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_10();
}

void AlgDataInjector::~AlgDataInjector(AlgDataInjector *this)
{
  PacketCollection::~PacketCollection(this);
  OUTLINED_FUNCTION_81();

  JUMPOUT(0x266758590);
}

uint64_t AlgDataExtractor::reset(AlgDataExtractor *this)
{
  v2 = 0;
  v3 = 1;
  v4 = 56;
  while (v2 < *(this + 9))
  {
    if ((*(*(this + 3) + v3) & 1) == 0)
    {
      v5 = *(*(this + 1) + v4);
      if (v5)
      {
        MEMORY[0x266758580](v5, 0x1000C8077774924);
      }
    }

    ++v2;
    v3 += 2;
    v4 += 80;
  }

  return PacketCollection::reset(this);
}

void AlgDataExtractor::~AlgDataExtractor(AlgDataExtractor *this)
{
  PacketCollection::~PacketCollection(this);

  JUMPOUT(0x266758590);
}

uint64_t PacketCollection::PacketCollection(uint64_t result, int a2)
{
  *result = &unk_2876F3A60;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 36) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 52) = 0;
  return result;
}

void PacketCollection::append(PacketCollection *this, const PacketCollection *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = *(a2 + 5);
  if (a3 != -1)
  {
    v7 = a3;
  }

  v8 = v7 + a4;
  v9 = 80 * a4;
  while (v4 < v8)
  {
    v10 = *(a2 + 1);
    SAList<AlgDataPacket>::push_back(this + 8);
    SAList<PacketBookkeeper>::push_back(this + 24);
    v11 = (*(this + 20) - 1);
    SAList<unsigned char>::push_back(this + 40);
    ++v4;
    v9 += 80;
  }
}

_DWORD *PacketCollection::popIterableAt(_DWORD *this, uint64_t a2)
{
  v2 = this[13];
  v3 = (v2 - 1);
  if (v3 == a2)
  {
    if (v2)
    {
      this[13] = v3;
    }
  }

  else
  {
    this[13] = v3;
    return memmove((*(this + 5) + a2), (*(this + 5) + a2 + 1), v3 - a2);
  }

  return this;
}

uint64_t PacketCollection::getFor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 20);
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v7 = *(a1 + 8);
    v8 = *(v7 + v4) == a2 && *(v7 + v4 + 8) == a3;
    if (v8 && *(v7 + v4 + 33) == a4)
    {
      break;
    }

    ++v5;
    v4 += 80;
  }

  if (v6 <= v5)
  {
    return 0;
  }

  v10 = v5;
  v11 = v7 + 80 * v5;
  v12 = *(v11 + 32);
  v13 = v12 == 2 ? *(*(a1 + 24) + 2 * v10) : 0;
  if (v12 != 1 && (v13 & 1) == 0)
  {
    return 0;
  }

  *(*(a1 + 24) + 2 * v10 + 1) = 1;
  return v11;
}

uint64_t AlgDataExtractor::requestFor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v8[0] = a2;
  v8[1] = a3;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  v12 = a4;
  OUTLINED_FUNCTION_71();
  v13 = 0;
  v5 = OUTLINED_FUNCTION_26(v4);
  return (*(v6 + 16))(v5, v8);
}

void AlgsDevice::StreamingClient::finish(AlgsDevice::StreamingClient *this)
{
  if (*(this + 10) && *(*(this + 4) + 96))
  {
    AlgsDevice::StreamingClient::saveTimestamp(this, 0x652B2D24D46);
    *(*(this + 1) + 5) = *(this + 20);
    v2 = SABinaryWriter::addExtractionData((this + 48), 0x3779B8717A8905ELL, 0xC0246BF06F597652, 0, 39424, *(this + 8), *(this + 1));
    if (v2)
    {
      *(this + 97) = 1;
    }

    else
    {
      SABinaryWriter::updateCacheSizes(v2, 0);
      OUTLINED_FUNCTION_8();
    }
  }

  if ((*(this + 97) & 1) == 0 && !*(this + 11))
  {
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_8();
  }

  *(this + 97) = 0;
}

_BYTE *AlgsDevice::StreamingClient::saveTimestamp(_BYTE *this, uint64_t a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = this;
    v4 = *(*(this + 4) + 96);
    if (v4)
    {
      v6 = *(this + 10);
      if (v6 == *(this + 9))
      {
        this = AlgsDevice::StreamingClient::profileAlloc(this, 2 * (*(this + 8) & 0x7FFFu));
        v6 = *(v3 + 10);
        v2 = *(v3 + 3);
        v4 = *(*(v3 + 4) + 96);
      }

      *(v2 + 16 * v6) = a2;
      this = v4(this);
      v7 = *(v3 + 10);
      *(*(v3 + 3) + 16 * v7 + 8) = this;
      *(v3 + 10) = v7 + 1;
    }
  }

  return this;
}

_BYTE *AlgsDevice::StreamingClient::profileAlloc(AlgsDevice::StreamingClient *this, unsigned int a2)
{
  v3 = *(this + 8);
  *(this + 8) = a2;
  *(this + 9) = (a2 + 1048568) >> 4;
  v4 = *(this + 1);
  result = OUTLINED_FUNCTION_44(a2);
  *(this + 1) = result;
  if (v4)
  {
    OUTLINED_FUNCTION_55();
    memcpy(v6, v7, v8);
    OUTLINED_FUNCTION_39();
    result = MEMORY[0x266758590](v4);
  }

  else
  {
    *result = 20488;
    result[4] = 2;
    result[6] = 2;
  }

  *(this + 3) = *(this + 1) + 8;
  return result;
}

double AlgsDevice::StreamingClient::start(uint64_t a1, int *a2, PacketCollection *a3, AlgDataExtractor *a4)
{
  v4 = a1 + 48;
  if (*(a1 + 48))
  {
    v9 = (a1 + 40);
    *(a1 + 20) = 0;
    AlgsDevice::StreamingClient::saveTimestamp(a1, 0x310E1E39B3);
    v10 = *(a1 + 96);
    *(a1 + 97) |= v10;
    if (!v10)
    {
      a3 = 0;
    }

    if (a2)
    {
      v11 = *a2;
      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (SABinaryWriter::writeHeader(v4, 2) && SABinaryWriter::writeData(v4, v11, v13, v12) && StreamingWriter::writeInjExtData((v4 - 8), 1, a3))
      {
        return result;
      }

LABEL_13:
      OUTLINED_FUNCTION_68();
      *(v4 + 24) = 0;
      result = 0.0;
      *v9 = 0u;
      *(v4 + 8) = 0u;
      *(a1 + 74) = 0;
      *(a1 + 80) = 0;
      return result;
    }

    v15 = *(a1 + 88);
    if ((SABinaryWriter::writeHeader(v4, 3) & 1) == 0 || !SABinaryWriter::write(v4, &v15) || !StreamingWriter::writeInjExtData((v4 - 8), 1, a3) || (StreamingWriter::writeExtPoints((v4 - 8), a4) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return result;
}

void AlgsDevice::StreamingClient::reset(AlgsDevice::StreamingClient *this)
{
  if (*(this + 6))
  {
    v2 = *(this + 4);
    Info = AlgsDevice::getInfo(v2);
    AlgDataExtractor::AlgDataExtractor(v4, v2[12]);
    AlgsDevice::getClientExtractor();
    StreamingWriter::writeResetOrInfo(this + 40, 1, BYTE5(Info), Info, BYTE4(Info), BYTE6(Info), *(this + 4) + 80, *(this + 96), v4);
    PacketCollection::~PacketCollection(v4);
  }
}

void sub_26541CEF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void AlgsDevice::StreamingClient::~StreamingClient(AlgsDevice::StreamingClient *this)
{
  AlgsDevice::StreamingClient::~StreamingClient(this);

  JUMPOUT(0x266758590);
}

{
  *this = &unk_2876F39D0;
  v2 = *(this + 13);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_26(v2);
    (*(v4 + 8))(v3);
  }

  v5 = *(this + 14);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_26(v5);
    (*(v7 + 8))(v6);
  }

  v8 = *(this + 1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x266758590]();
  StreamingPacketCache::~StreamingPacketCache((this + 128));
}

void AlgsDevice::StreamingClient::configure(AlgsDevice::StreamingClient *this, char a2, AlgDataExtractor *a3)
{
  *(this + 96) = a2;
  v5 = *(this + 1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x266758590]();
  v6 = 0;
  v7 = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  while (v7 < *(a3 + 5))
  {
    v8 = (*(a3 + 1) + v6);
    if (*v8 == 0x3779B8717A8905ELL && v8[1] == 0xC0246BF06F597652)
    {
      *(a3 + 7) = AlgsDevice::StreamingClient::configure(BOOL,AlgDataExtractor &)::$_0::__invoke;
      *(a3 + 8) = this;
      AlgsDevice::StreamingClient::profileAlloc(this, *(this + 8));
    }

    v8[8] = AlgsDevice::StreamingClient::extraction;
    v8[9] = this;
    ++v7;
    v6 += 80;
  }

  v10 = *(this + 4);
  OUTLINED_FUNCTION_82();

  AlgsDevice::addClient(v11, v12, v13, v14);
}

double AlgsDevice::StreamingClient::extraction(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 + 48);
  if (*v2)
  {
    v4 = *(a1 + 12);
    v5 = (v4 + *(a1 + 8));
    if (SABinaryWriter::addExtractionData((*a1 + 48), a1[1], a1[2], *(a1 + 28) == 1, *(a1 + 12), v4 + *(a1 + 16), 0) && (v6 = *(a1 + 16), SABinaryWriter::write(v2, a1[5])) && (v7 = *(a1 + 24), SABinaryWriter::write(v2, a1[7])))
    {
      *(v1 + 97) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_68();
      *(v1 + 72) = 0;
      result = 0.0;
      *(v1 + 56) = 0u;
      *(v1 + 40) = 0u;
      *(v1 + 74) = 0;
      *(v1 + 80) = 0;
    }
  }

  return result;
}

uint64_t *AlgsDevice::StreamingClient::configureTranslation(AlgsDevice::StreamingClient *this, const PacketCollection *a2, const PacketCollection *a3)
{
  OUTLINED_FUNCTION_20();
  v8 = (v6 + 104);
  v7 = *(v6 + 104);
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_26(v7);
    (*(v10 + 8))(v9);
  }

  result = *(v5 + 112);
  if (result)
  {
    v12 = OUTLINED_FUNCTION_26(result);
    result = (*(v13 + 8))(v12);
  }

  v14 = *(v4 + 20);
  if (v14)
  {
    v15 = v14 == *(v3 + 20);
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_44(0x38uLL);
    *(v5 + 104) = PacketCollection::PacketCollection(v16, *(v4 + 20));
    v17 = OUTLINED_FUNCTION_44(0x38uLL);
    result = PacketCollection::PacketCollection(v17, *(v3 + 20));
    v18 = 0;
    v19 = 0;
    *(v5 + 112) = result;
    while (v19 < *(v4 + 20))
    {
      v20 = *(v4 + 8);
      v21 = OUTLINED_FUNCTION_26(*(v5 + 104));
      (*(v22 + 16))(v21, v23 + v18);
      v24 = *(v3 + 8);
      v25 = OUTLINED_FUNCTION_26(*(v5 + 112));
      result = (*(v26 + 16))(v25, v27 + v18);
      ++v19;
      v18 += 80;
    }
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
  }

  return result;
}

uint64_t AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 72) != 8)
  {
    return 0;
  }

  v16[4] = v2;
  v16[5] = v3;
  v4 = 0;
  v5 = *(a2 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 17);
  v9 = *(a1 + 48);
  v10 = *(v9 + 5);
  for (i = (v9 + *(a1 + 64) - 16 * v10); ; i += 2)
  {
    if (v10 == v4)
    {
      v13 = *(v9 + 5);
      goto LABEL_9;
    }

    if (*i == v6)
    {
      break;
    }

    ++v4;
  }

  v13 = v4;
LABEL_9:
  v14 = *(v9 + 3);
  v15 = v9 + 7 + 4 * v14;
  if (v15 >= v9 + *(a1 + 64) - 16 * v10)
  {
    return 0;
  }

  *v15 = v13;
  *(v15 + 2) = v8;
  *(v15 + 3) = v5;
  *(v9 + 3) = v14 + 1;
  if (v10 == v4)
  {
    v16[0] = v6;
    v16[1] = v7;
    result = SABinaryWriter::write((a1 + 48), v16);
    if (!result)
    {
      return result;
    }

    ++*(v9 + 5);
  }

  return 1;
}

uint64_t AlgsDevice::StreamingClient::configureStatus(AlgsDevice::StreamingClient *this)
{
  AlgDataExtractor::AlgDataExtractor(v5, *(*(this + 4) + 48));
  AlgsDevice::getClientExtractor();
  v3 = StreamingWriter::writeConfigure((this + 40), *(this + 96), v5, v2);
  PacketCollection::~PacketCollection(v5);
  return v3;
}

void sub_26541D430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void AlgsDevice::StreamingClient::translate(AlgsDevice::StreamingClient *this, PacketCollection *a2, PacketCollection *a3)
{
  if (*(this + 13))
  {
    OUTLINED_FUNCTION_69();
    v7 = v6;
    if (*(v6 + 112))
    {
      v8 = v4;
      v9 = v3;
      v10 = 0;
      for (i = 0; i < *(v5 + 20); ++i)
      {
        v12 = *(v7 + 112);
        if (i >= *(v12 + 20))
        {
          break;
        }

        v13 = *(v5 + 8);
        v14 = *(v12 + 8);
        v15 = PacketCollection::getFor(v8, *(v13 + v10), *(v13 + v10 + 8), *(v13 + v10 + 33));
        if (v15 || (v15 = PacketCollection::getFor(v9, *(v13 + v10), *(v13 + v10 + 8), *(v13 + v10 + 33))) != 0)
        {
          *v15 = *(v14 + v10);
          *(v15 + 33) = *(v14 + v10 + 33);
          if (*(v15 + 32) == 2)
          {
            *(v15 + 32) = 1;
            OUTLINED_FUNCTION_37();
            (*(v16 + 16))(v9);
          }
        }

        v5 = *(v7 + 104);
        v10 += 80;
      }
    }

    OUTLINED_FUNCTION_70();
  }
}

uint64_t AlgsDevice::StreamingClient::setBuffer(AlgsDevice::StreamingClient *this, void *a2)
{
  OUTLINED_FUNCTION_20();
  result = OUTLINED_FUNCTION_68();
  *(v4 + 40) = 0;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 74) = 0;
  *(v4 + 80) = 0;
  return result;
}

uint64_t AlgsDevice::StreamingClient::resetBuffer(AlgsDevice::StreamingClient *this)
{
  v1 = *(this + 8);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_8();
  return v1;
}

uint64_t SALoggingGeneral()
{
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  return qword_2800179E0;
}

os_log_t __SALoggingGeneral_block_invoke()
{
  result = os_log_create("com.apple.SensingAlgs", "General");
  qword_2800179E0 = result;
  return result;
}

os_log_t __SALoggingHIDEventSignpost_block_invoke()
{
  result = os_log_create("com.apple.SensingAlgs", "HIDEventSignpost");
  SALoggingHIDEventSignpost::__logObj = result;
  return result;
}

double OUTLINED_FUNCTION_8()
{
  *(v0 + 72) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 74) = 0;
  *(v0 + 80) = 0;
  return result;
}

void *OUTLINED_FUNCTION_25(void *result)
{
  *result = &unk_2876F3858;
  result[12] = v1;
  return result;
}

float OUTLINED_FUNCTION_33(uint64_t a1)
{
  result = ((v5 * v2) * (~v3 + v1)) / v4;
  *(a1 + 4 * v1) = result;
  return result;
}

void *OUTLINED_FUNCTION_44(size_t a1)
{

  return malloc_type_malloc(a1, 0x5BC87F79uLL);
}

void OUTLINED_FUNCTION_46(unsigned int a1@<W8>)
{
  v4 = *(v1 + 8) + a1 * v3;
  v5 = *v4;
  v6 = *(v2 + 72);
  v7 = *(v4 + 33);
}

void *OUTLINED_FUNCTION_58()
{
  v0[5] = v1;
  v0[7] = v1 + v0[4];
  return v0;
}

float OUTLINED_FUNCTION_59(uint64_t a1)
{
  result = *(a1 + 4 * v1) * v2;
  *(a1 + 4 * v1) = result;
  return result;
}

void *OUTLINED_FUNCTION_63(void *result)
{
  *result = &unk_2876F3948;
  result[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{

  return SA2DArrayBase<float>::numElems(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_68()
{

  return SABinaryWriter::updateCacheSizes(0, 0);
}

void operator delete[]()
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

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}