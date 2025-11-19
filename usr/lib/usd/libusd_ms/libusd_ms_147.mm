pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType::HdPrimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *this)
{
  v92 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "capsule", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "capsule_1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "cone", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "cube", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "cylinder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "cylinder_1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "geomSubset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "mesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "tetMesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "nurbsPatch", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "basisCurves", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "nurbsCurves", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "plane", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "points", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "sphere", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "volume", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "model", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "drawTarget", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "material", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "coordSys", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "instancer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "instance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "integrator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "sampleFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "displayFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "imageShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "cylinderLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 224, "diskLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 232, "distantLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 240, "domeLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 248, "light", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 256, "meshLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 264, "pluginLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 272, "rectLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 280, "simpleLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 288, "sphereLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 296, "lightFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 304, "extComputation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 312, "renderBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 320, "renderSettings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 328, "renderPass", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 336, "task", 0);
  v3 = *this;
  v49 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v50 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v51 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v52 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v53 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v54 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v55 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v56 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v57 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v58 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v59 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v60 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v61 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v62 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v63 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v64 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v65 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v66 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v67 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v68 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v69 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v70 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v71 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v72 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v73 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v74 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v75 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v76 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v77 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v78 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v79 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v80 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v81 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v82 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v83 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v84 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v85 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v86 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v87 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v88 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v88 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v89 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v89 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v90 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v90 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v91 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v91 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  sub_29A12EF7C(this + 43, &v49, &v92, 0x2BuLL);
  for (i = 336; i != -8; i -= 8)
  {
    v47 = *(&v49 + i);
    if ((v47 & 7) != 0)
    {
      atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEF938(_Unwind_Exception *a1)
{
  v3 = 336;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[42];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[41];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[40];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[39];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[38];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[37];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[36];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[35];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[34];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[33];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[32];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[31];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[30];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[29];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[28];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[27];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[26];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[25];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[24];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[23];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[22];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[21];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[20];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[19];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[18];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[17];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[16];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[15];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[14];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[13];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[12];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[11];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[10];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[9];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[8];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[7];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[6];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[5];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v1[4];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v1[3];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v1[2];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v1[1];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType::~HdPrimvarRoleTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType::HdPrimvarRoleTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "vector", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "normal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "point", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "textureCoordinate", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACF00D4(_Unwind_Exception *a1)
{
  v3 = 40;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType::~HdAovTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType *this)
{
  v18 = (this + 136);
  sub_29A124AB0(&v18);
  v2 = *(this + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 15);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 14);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 13);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 12);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 11);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 10);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 9);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 8);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 7);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 6);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 5);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 4);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 3);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 2);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 1);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType::HdAovTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "depth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "depthStencil", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "cameraDepth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "primId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "instanceId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "elementId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "edgeId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "pointId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "Peye", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "Neye", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "patchCoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "primitiveParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "normal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "primvars:", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "lpe:", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "shader:", 0);
  v3 = (this + 136);
  v4 = *this;
  v24 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v25 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v26 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v27 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v28 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v29 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v30 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v31 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v32 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v34 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v35 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v36 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v37 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v38 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v39 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v40 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  sub_29A12EF7C(v3, &v24, &v41, 0x11uLL);
  for (i = 128; i != -8; i -= 8)
  {
    v22 = *(&v24 + i);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACF085C(_Unwind_Exception *a1)
{
  v3 = 128;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[16];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[15];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[14];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[13];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[12];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[11];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[10];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[9];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[8];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[7];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[6];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[5];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[4];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[3];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[2];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[1];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType::~HdRenderSettingsTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType *this)
{
  v9 = (this + 64);
  sub_29A124AB0(&v9);
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 5);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 3);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 1);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType::HdRenderSettingsTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "enableShadows", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "enableSceneMaterials", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "enableSceneLights", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "domeLightCameraVisibility", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "convergedVariance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "convergedSamplesPerPixel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "threadLimit", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "enableInteractive", 0);
  v3 = (this + 64);
  v4 = *this;
  v23 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v5;
    }
  }

  v6 = *(this + 1);
  v24 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v7;
    }
  }

  v8 = *(this + 2);
  v25 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v9;
    }
  }

  v10 = *(this + 3);
  v26 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v11;
    }
  }

  v12 = *(this + 4);
  v27 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v13;
    }
  }

  v14 = *(this + 5);
  v28 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v15;
    }
  }

  v16 = *(this + 6);
  v29 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v17;
    }
  }

  v18 = *(this + 7);
  v30 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v19;
    }
  }

  *v3 = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  sub_29A12EF7C(v3, &v23, &v31, 8uLL);
  for (i = 56; i != -8; i -= 8)
  {
    v21 = *(&v23 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACF0DC0(_Unwind_Exception *a1)
{
  v3 = 56;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[7];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[6];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType::~HdRenderSettingsPrimTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType *this)
{
  v8 = (this + 56);
  sub_29A124AB0(&v8);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType::HdRenderSettingsPrimTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "active", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "namespacedSettings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "renderProducts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "includedPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "materialBindingPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "renderingColorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "shutterInterval", 0);
  v3 = (this + 56);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v5;
    }
  }

  v6 = *(this + 1);
  v22 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v7;
    }
  }

  v8 = *(this + 2);
  v23 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v9;
    }
  }

  v10 = *(this + 3);
  v24 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v11;
    }
  }

  v12 = *(this + 4);
  v25 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v13;
    }
  }

  v14 = *(this + 5);
  v26 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v15;
    }
  }

  v16 = *(this + 6);
  v27 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v17;
    }
  }

  *v3 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_29A12EF7C(v3, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACF11D8(_Unwind_Exception *a1)
{
  v3 = 48;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[6];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType::~HdAspectRatioConformPolicyTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  sub_29A124AB0(&v6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType::HdAspectRatioConformPolicyTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "adjustApertureWidth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "adjustApertureHeight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "expandAperture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "cropAperture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "adjustPixelAspectRatio", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  sub_29A12EF7C(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACF1534(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType::~HdResourceTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType::HdResourceTypeTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "texture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "shaderFile", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACF1768(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType::~HdSceneIndexEmulationTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType::HdSceneIndexEmulationTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "sceneDelegate", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType::~HdCollectionEmulationTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType::HdCollectionEmulationTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "lightLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "shadowLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "filterLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "lightLinkCollectionMembershipExpression", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "shadowLinkCollectionMembershipExpression", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "filterLinkCollectionMembershipExpression", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACF1C28(_Unwind_Exception *a1)
{
  v3 = 40;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdPrimTypeIsGprim(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v3 + 7) ^ *this) < 8)
  {
    return 1;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v4 + 10) ^ *this) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v5 + 13) ^ *this) < 8)
  {
    return 1;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return (*(v7 + 15) ^ *this) < 8uLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdLightPrimTypeTokens(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
  if (!v1)
  {
    v1 = sub_29ACF233C(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
  }

  return v1 + 80;
}

BOOL pxrInternal__aapl__pxrReserved__::HdPrimTypeIsLight(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
  if (!v3)
  {
    v3 = sub_29ACF233C(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
  }

  v4 = *(v3 + 10);
  v5 = *(v3 + 11);
  if (v4 != v5)
  {
    while ((*v4 ^ *this) >= 8)
    {
      if (++v4 == v5)
      {
        v4 = *(v3 + 11);
        return v4 != v5;
      }
    }
  }

  return v4 != v5;
}

BOOL pxrInternal__aapl__pxrReserved__::HdPrimTypeSupportsGeomSubsets(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174BFC0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = __cxa_guard_acquire(&qword_2A174BFC0);
    this = v4;
    if (v5)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v6)
      {
        v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v7 = *(v6 + 7);
      v14 = v7;
      if ((v7 & 7) != 0)
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
        {
          v14 = v8;
        }
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v9)
      {
        v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v10 = *(v9 + 10);
      v15 = v10;
      if ((v10 & 7) != 0)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
        {
          v15 = v11;
        }
      }

      qword_2A174BFA8 = 0;
      unk_2A174BFB0 = 0;
      qword_2A174BFB8 = 0;
      sub_29A12EF7C(&qword_2A174BFA8, &v14, &v16, 2uLL);
      for (i = 8; i != -8; i -= 8)
      {
        v13 = *(&v14 + i);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A174BFA8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BFC0);
      this = v4;
    }
  }

  v2 = qword_2A174BFA8;
  if (qword_2A174BFA8 != unk_2A174BFB0)
  {
    while ((*v2 ^ *this) >= 8)
    {
      if (++v2 == unk_2A174BFB0)
      {
        v2 = unk_2A174BFB0;
        return v2 != unk_2A174BFB0;
      }
    }
  }

  return v2 != unk_2A174BFB0;
}

void sub_29ACF2064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174BFC0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdAovTokensMakePrimvar(pxrInternal__aapl__pxrReserved__ *this@<X0>, uint64_t a2@<X8>)
{
  EmptyString = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!EmptyString)
  {
    EmptyString = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(EmptyString + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = ((*(EmptyString + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    v6 = EmptyString;
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v6, v7, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

void sub_29ACF2180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdAovTokensMakeLpe(pxrInternal__aapl__pxrReserved__ *this@<X0>, uint64_t a2@<X8>)
{
  EmptyString = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!EmptyString)
  {
    EmptyString = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(EmptyString + 15) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = ((*(EmptyString + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    v6 = EmptyString;
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v6, v7, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

void sub_29ACF2250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdAovTokensMakeShader(pxrInternal__aapl__pxrReserved__ *this@<X0>, uint64_t a2@<X8>)
{
  EmptyString = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!EmptyString)
  {
    EmptyString = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(EmptyString + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = ((*(EmptyString + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    v6 = EmptyString;
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v6, v7, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

void sub_29ACF2320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *sub_29ACF233C(atomic_ullong *a1)
{
  result = sub_29ACF2384();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType::~HdLightTypeTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *sub_29ACF2384()
{
  v0 = operator new(0x68uLL);
  pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType::HdLightTypeTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ACF23FC()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 0xFFFFFFFFLL, "HdTypeInvalid", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 0, "HdTypeBool", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 1, "HdTypeUInt8", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 2, "HdTypeUInt16", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 3, "HdTypeInt8", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 4, "HdTypeInt16", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 5, "HdTypeInt32", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 6, "HdTypeInt32Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 7, "HdTypeInt32Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 8, "HdTypeInt32Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 9, "HdTypeUInt32", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 10, "HdTypeUInt32Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 11, "HdTypeUInt32Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 12, "HdTypeUInt32Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 13, "HdTypeFloat", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 14, "HdTypeFloatVec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 15, "HdTypeFloatVec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 16, "HdTypeFloatVec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 17, "HdTypeFloatMat3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 18, "HdTypeFloatMat4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 25, "HdTypeHalfFloat", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 26, "HdTypeHalfFloatVec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 27, "HdTypeHalfFloatVec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 28, "HdTypeHalfFloatVec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 19, "HdTypeDouble", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 20, "HdTypeDoubleVec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 21, "HdTypeDoubleVec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 22, "HdTypeDoubleVec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 23, "HdTypeDoubleMat3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 24, "HdTypeDoubleMat4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2076058, 29, "HdTypeInt32_2_10_10_10_REV", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 0xFFFFFFFFLL, "HdFormatInvalid", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 0, "HdFormatUNorm8", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 1, "HdFormatUNorm8Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 2, "HdFormatUNorm8Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 3, "HdFormatUNorm8Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 4, "HdFormatSNorm8", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 5, "HdFormatSNorm8Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 6, "HdFormatSNorm8Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 7, "HdFormatSNorm8Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 8, "HdFormatFloat16", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 9, "HdFormatFloat16Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 10, "HdFormatFloat16Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 11, "HdFormatFloat16Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 12, "HdFormatFloat32", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 13, "HdFormatFloat32Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 14, "HdFormatFloat32Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 15, "HdFormatFloat32Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 16, "HdFormatInt16", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 17, "HdFormatInt16Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 18, "HdFormatInt16Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 19, "HdFormatInt16Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 20, "HdFormatUInt16", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 21, "HdFormatUInt16Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 22, "HdFormatUInt16Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 23, "HdFormatUInt16Vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 24, "HdFormatInt32", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 25, "HdFormatInt32Vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 26, "HdFormatInt32Vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 27, "HdFormatInt32Vec4", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2079840, 28, "HdFormatFloat32UInt8", 0);
}

double pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(pxrInternal__aapl__pxrReserved__::HdSamplerParameters *this)
{
  *this = 0x100000001;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *&result = 0x1000000000;
  *(this + 28) = 0x1000000000;
  return result;
}

{
  *this = 0x100000001;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *&result = 0x1000000000;
  *(this + 28) = 0x1000000000;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, char a8, int a9, int a10)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a6;
  *(result + 20) = a7;
  *(result + 24) = a8;
  *(result + 28) = a9;
  *(result + 32) = a10;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a6;
  *(result + 20) = a7;
  *(result + 24) = a8;
  *(result + 28) = a9;
  *(result + 32) = a10;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGetValueData(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if ((atomic_load_explicit(&qword_2A174BFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BFF0))
  {
    sub_29ACF2C08();
    __cxa_atexit(sub_29ACF38D4, qword_2A174BFC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174BFF0);
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(this);
  sub_29A008E78(v6, (*(Typeid + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v4 = sub_29A12A600(qword_2A174BFC8, v6);
  sub_29B2C7830(v4, v6, this, &v7);
  return v7;
}

void sub_29ACF2C08()
{
  v60[4] = *MEMORY[0x29EDCA608];
  sub_29A008E78(v1, (0x800000029B4858B0 & 0x7FFFFFFFFFFFFFFFLL));
  v1[3] = sub_29ACF4178;
  sub_29A008E78(v2, (0x800000029B6ECC54 & 0x7FFFFFFFFFFFFFFFLL));
  v2[3] = sub_29ACF4190;
  sub_29A008E78(v3, (0x800000029B4E166ALL & 0x7FFFFFFFFFFFFFFFLL));
  v3[3] = sub_29ACF41C4;
  sub_29A008E78(v4, (0x800000029B6ECB72 & 0x7FFFFFFFFFFFFFFFLL));
  v4[3] = sub_29ACF41E0;
  sub_29A008E78(v5, (0x800000029B6EBC6ELL & 0x7FFFFFFFFFFFFFFFLL));
  v5[3] = sub_29ACF4214;
  sub_29A008E78(v6, (0x800000029B480FC3 & 0x7FFFFFFFFFFFFFFFLL));
  v6[3] = sub_29ACF4230;
  sub_29A008E78(v7, (0x800000029B7194FCLL & 0x7FFFFFFFFFFFFFFFLL));
  v7[3] = sub_29ACF4264;
  sub_29A008E78(v8, (0x800000029B6ECBB2 & 0x7FFFFFFFFFFFFFFFLL));
  v8[3] = sub_29ACF4280;
  sub_29A008E78(v9, (0x800000029B6EBCA6 & 0x7FFFFFFFFFFFFFFFLL));
  v9[3] = sub_29ACF42B4;
  sub_29A008E78(v10, (0x800000029B6FEFCALL & 0x7FFFFFFFFFFFFFFFLL));
  v10[3] = sub_29ACF42D0;
  sub_29A008E78(v11, (0x800000029B4C5C4ALL & 0x7FFFFFFFFFFFFFFFLL));
  v11[3] = sub_29ACF4304;
  sub_29A008E78(v12, (0x800000029B6ECA08 & 0x7FFFFFFFFFFFFFFFLL));
  v12[3] = sub_29ACF4320;
  sub_29A008E78(v13, (0x800000029B4C5A90 & 0x7FFFFFFFFFFFFFFFLL));
  v13[3] = sub_29ACF4354;
  sub_29A008E78(v14, (0x800000029B4C5F54 & 0x7FFFFFFFFFFFFFFFLL));
  v14[3] = sub_29ACF436C;
  sub_29A008E78(v15, (0x800000029B705508 & 0x7FFFFFFFFFFFFFFFLL));
  v15[3] = sub_29ACF43A0;
  sub_29A008E78(v16, (0x800000029B6ECA80 & 0x7FFFFFFFFFFFFFFFLL));
  v16[3] = sub_29ACF43B8;
  sub_29A008E78(v17, (0x800000029B704E38 & 0x7FFFFFFFFFFFFFFFLL));
  v17[3] = sub_29ACF43EC;
  sub_29A008E78(v18, (0x800000029B6ECA44 & 0x7FFFFFFFFFFFFFFFLL));
  v18[3] = sub_29ACF4404;
  sub_29A008E78(v19, (0x800000029B4C5C7ALL & 0x7FFFFFFFFFFFFFFFLL));
  v19[3] = sub_29ACF4438;
  sub_29A008E78(v20, (0x800000029B6FEA68 & 0x7FFFFFFFFFFFFFFFLL));
  v20[3] = sub_29ACF4454;
  sub_29A008E78(v21, (0x800000029B4C5E78 & 0x7FFFFFFFFFFFFFFFLL));
  v21[3] = sub_29ACF4488;
  sub_29A008E78(v22, (0x800000029B4C5E3CLL & 0x7FFFFFFFFFFFFFFFLL));
  v22[3] = sub_29ACF44A4;
  sub_29A008E78(v23, (0x800000029B4C5FCCLL & 0x7FFFFFFFFFFFFFFFLL));
  v23[3] = sub_29ACF44D8;
  sub_29A008E78(v24, (0x800000029B480F88 & 0x7FFFFFFFFFFFFFFFLL));
  v24[3] = sub_29ACF44F0;
  sub_29A008E78(v25, (0x800000029B704BE4 & 0x7FFFFFFFFFFFFFFFLL));
  v25[3] = sub_29ACF4524;
  sub_29A008E78(v26, (0x800000029B6FD340 & 0x7FFFFFFFFFFFFFFFLL));
  v26[3] = sub_29ACF4540;
  sub_29A008E78(v27, (0x800000029B6EBCDELL & 0x7FFFFFFFFFFFFFFFLL));
  v27[3] = sub_29ACF4574;
  sub_29A008E78(v28, (0x800000029B6ECABELL & 0x7FFFFFFFFFFFFFFFLL));
  v28[3] = sub_29ACF4590;
  sub_29A008E78(v29, (0x800000029B4DAD90 & 0x7FFFFFFFFFFFFFFFLL));
  v29[3] = sub_29ACF45C4;
  sub_29A008E78(v30, (0x800000029B4C5F90 & 0x7FFFFFFFFFFFFFFFLL));
  v30[3] = sub_29ACF45E0;
  sub_29A008E78(v31, (0x800000029B70508CLL & 0x7FFFFFFFFFFFFFFFLL));
  v31[3] = sub_29ACF4614;
  sub_29A008E78(v32, (0x800000029B6ECB36 & 0x7FFFFFFFFFFFFFFFLL));
  v32[3] = sub_29ACF462C;
  sub_29A008E78(v33, (0x800000029B704990 & 0x7FFFFFFFFFFFFFFFLL));
  v33[3] = sub_29ACF4660;
  sub_29A008E78(v34, (0x800000029B6ECAFALL & 0x7FFFFFFFFFFFFFFFLL));
  v34[3] = sub_29ACF467C;
  sub_29A008E78(v35, (0x800000029B6EBD0ELL & 0x7FFFFFFFFFFFFFFFLL));
  v35[3] = sub_29ACF46B0;
  sub_29A008E78(v36, (0x800000029B481134 & 0x7FFFFFFFFFFFFFFFLL));
  v36[3] = sub_29ACF46C8;
  sub_29A008E78(v37, (0x800000029B6EBD3ELL & 0x7FFFFFFFFFFFFFFFLL));
  v37[3] = sub_29ACF46FC;
  sub_29A008E78(v38, (0x800000029B6FB0CELL & 0x7FFFFFFFFFFFFFFFLL));
  v38[3] = sub_29ACF4718;
  sub_29A008E78(v39, (0x800000029B6EBD6ELL & 0x7FFFFFFFFFFFFFFFLL));
  v39[3] = sub_29ACF474C;
  sub_29A008E78(v40, (0x800000029B701A42 & 0x7FFFFFFFFFFFFFFFLL));
  v40[3] = sub_29ACF4768;
  sub_29A008E78(v41, (0x800000029B6EBD9ELL & 0x7FFFFFFFFFFFFFFFLL));
  v41[3] = sub_29ACF479C;
  sub_29A008E78(v42, (0x800000029B6EBDDBLL & 0x7FFFFFFFFFFFFFFFLL));
  v42[3] = sub_29ACF47B4;
  sub_29A008E78(v43, (*(MEMORY[0x29EDC94A8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v43[3] = sub_29ACF47E8;
  sub_29A008E78(v44, (0x800000029B6EBE26 & 0x7FFFFFFFFFFFFFFFLL));
  v44[3] = sub_29ACF4800;
  sub_29A008E78(v45, (*(MEMORY[0x29EDC94B0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v45[3] = sub_29ACF4834;
  sub_29A008E78(v46, (0x800000029B6EBE56 & 0x7FFFFFFFFFFFFFFFLL));
  v46[3] = sub_29ACF484C;
  sub_29A008E78(v47, (*(MEMORY[0x29EDC94B8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v47[3] = sub_29ACF4880;
  sub_29A008E78(v48, (0x800000029B4C5BC4 & 0x7FFFFFFFFFFFFFFFLL));
  v48[3] = sub_29ACF4898;
  sub_29A008E78(v49, (*(MEMORY[0x29EDC94C0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v49[3] = sub_29ACF48CC;
  sub_29A008E78(v50, (0x800000029B4C5528 & 0x7FFFFFFFFFFFFFFFLL));
  v50[3] = sub_29ACF48E4;
  sub_29A008E78(v51, (*(MEMORY[0x29EDC94F0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v51[3] = sub_29ACF4918;
  sub_29A008E78(v52, (0x800000029B6EBE86 & 0x7FFFFFFFFFFFFFFFLL));
  v52[3] = sub_29ACF4930;
  sub_29A008E78(v53, (*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v53[3] = sub_29ACF4964;
  sub_29A008E78(v54, (0x800000029B6ECBF4 & 0x7FFFFFFFFFFFFFFFLL));
  v54[3] = sub_29ACF497C;
  sub_29A008E78(v55, (*(MEMORY[0x29EDC94F8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v55[3] = sub_29ACF49B0;
  sub_29A008E78(v56, (0x800000029B6EBEB6 & 0x7FFFFFFFFFFFFFFFLL));
  v56[3] = sub_29ACF49C8;
  sub_29A008E78(v57, (*(MEMORY[0x29EDC94D8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v57[3] = sub_29ACF49FC;
  sub_29A008E78(v58, (0x800000029B6ECC24 & 0x7FFFFFFFFFFFFFFFLL));
  v58[3] = sub_29ACF4A14;
  sub_29A008E78(v59, (*(MEMORY[0x29EDC94C8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v59[3] = sub_29ACF4A48;
  sub_29A008E78(v60, (0x800000029B6EBEE6 & 0x7FFFFFFFFFFFFFFFLL));
  v60[3] = sub_29ACF4A60;
  sub_29ACF4A94(&unk_2A174BFC8, v1, 60);
  v0 = 240;
  do
  {
    if (*(&v1[v0 - 1] - 1) < 0)
    {
      operator delete(v1[v0 - 4]);
    }

    v0 -= 4;
  }

  while (v0 * 8);
}

void sub_29ACF3788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 1911);
  v13 = -1920;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if ((atomic_load_explicit(&qword_2A174C020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C020))
  {
    sub_29ACF3A44();
    __cxa_atexit(sub_29ACF4020, qword_2A174BFF8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C020);
  }

  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this))
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(this);
    sub_29A008E78(__p, (*(Typeid + 8) & 0x7FFFFFFFFFFFFFFFLL));
    v7 = sub_29A12A600(qword_2A174BFF8, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7)
    {
      return *(v7 + 10);
    }

    return -1;
  }

  ElementTypeid = pxrInternal__aapl__pxrReserved__::VtValue::GetElementTypeid(this);
  sub_29A008E78(__p, (*(ElementTypeid + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v4 = sub_29A12A600(qword_2A174BFF8, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v4)
  {
    return -1;
  }

  v5 = *(v4 + 10);
  pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(this);
  return v5;
}

void sub_29ACF3A44()
{
  v61 = *MEMORY[0x29EDCA608];
  sub_29A008E78(v1, (0x800000029B4858B0 & 0x7FFFFFFFFFFFFFFFLL));
  v2 = 25;
  sub_29A008E78(v3, (0x800000029B4E166ALL & 0x7FFFFFFFFFFFFFFFLL));
  v4 = 23;
  sub_29A008E78(v5, (0x800000029B6EBC6ELL & 0x7FFFFFFFFFFFFFFFLL));
  v6 = 17;
  sub_29A008E78(v7, (0x800000029B7194FCLL & 0x7FFFFFFFFFFFFFFFLL));
  v8 = 24;
  sub_29A008E78(v9, (0x800000029B6EBCA6 & 0x7FFFFFFFFFFFFFFFLL));
  v10 = 18;
  sub_29A008E78(v11, (0x800000029B4C5C4ALL & 0x7FFFFFFFFFFFFFFFLL));
  v12 = 20;
  sub_29A008E78(v13, (0x800000029B4C5A90 & 0x7FFFFFFFFFFFFFFFLL));
  v14 = 14;
  sub_29A008E78(v15, (0x800000029B705508 & 0x7FFFFFFFFFFFFFFFLL));
  v16 = 26;
  sub_29A008E78(v17, (0x800000029B704E38 & 0x7FFFFFFFFFFFFFFFLL));
  v18 = 6;
  sub_29A008E78(v19, (0x800000029B4C5C7ALL & 0x7FFFFFFFFFFFFFFFLL));
  v20 = 21;
  sub_29A008E78(v21, (0x800000029B4C5E78 & 0x7FFFFFFFFFFFFFFFLL));
  v22 = 15;
  sub_29A008E78(v23, (0x800000029B4C5FCCLL & 0x7FFFFFFFFFFFFFFFLL));
  v24 = 27;
  sub_29A008E78(v25, (0x800000029B704BE4 & 0x7FFFFFFFFFFFFFFFLL));
  v26 = 7;
  sub_29A008E78(v27, (0x800000029B6EBCDELL & 0x7FFFFFFFFFFFFFFFLL));
  v28 = 22;
  sub_29A008E78(v29, (0x800000029B4DAD90 & 0x7FFFFFFFFFFFFFFFLL));
  v30 = 16;
  sub_29A008E78(v31, (0x800000029B70508CLL & 0x7FFFFFFFFFFFFFFFLL));
  v32 = 28;
  sub_29A008E78(v33, (0x800000029B704990 & 0x7FFFFFFFFFFFFFFFLL));
  v34 = 8;
  sub_29A008E78(v35, (0x800000029B6EBD0ELL & 0x7FFFFFFFFFFFFFFFLL));
  v36 = 28;
  sub_29A008E78(v37, (0x800000029B6EBD3ELL & 0x7FFFFFFFFFFFFFFFLL));
  v38 = 16;
  sub_29A008E78(v39, (0x800000029B6EBD6ELL & 0x7FFFFFFFFFFFFFFFLL));
  v40 = 22;
  sub_29A008E78(v41, (0x800000029B6EBD9ELL & 0x7FFFFFFFFFFFFFFFLL));
  v42 = 29;
  sub_29A008E78(v43, (*(MEMORY[0x29EDC94A8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v44 = 0;
  sub_29A008E78(v45, (*(MEMORY[0x29EDC94B0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v46 = 3;
  sub_29A008E78(v47, (*(MEMORY[0x29EDC94B8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v48 = 19;
  sub_29A008E78(v49, (*(MEMORY[0x29EDC94C0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v50 = 13;
  sub_29A008E78(v51, (*(MEMORY[0x29EDC94F0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v52 = 4;
  sub_29A008E78(v53, (*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v54 = 5;
  sub_29A008E78(v55, (*(MEMORY[0x29EDC94F8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v56 = 2;
  sub_29A008E78(v57, (*(MEMORY[0x29EDC94D8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v58 = 9;
  sub_29A008E78(v59, (*(MEMORY[0x29EDC94C8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v60 = 1;
  sub_29ACF4D70(&unk_2A174BFF8, v1, 30);
  v0 = 120;
  do
  {
    if (*(&v1[v0 - 1] - 1) < 0)
    {
      operator delete(v1[v0 - 4]);
    }

    v0 -= 4;
  }

  while (v0 * 8);
}

void sub_29ACF3F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 951);
  v13 = -960;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGetComponentType(uint64_t result)
{
  v1 = result - 6;
  if (result - 6) <= 0x16 && ((0x77DF77u >> v1))
  {
    return dword_29B6EBF18[v1];
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGetComponentCount(int a1)
{
  if ((a1 - 6) > 0x16)
  {
    return 1;
  }

  else
  {
    return qword_29B6EBF78[a1 - 6];
  }
}

{
  if ((a1 - 1) > 0x1A)
  {
    return 1;
  }

  else
  {
    return qword_29B6EC198[a1 - 1];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(unsigned int a1)
{
  if (a1 < 0x1E)
  {
    return qword_29B6EC030[a1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hd/types.cpp";
  v4[1] = "HdDataSizeOfType";
  v4[2] = 331;
  v4[3] = "size_t pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(HdType)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Cannot query size of invalid HdType");
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGetComponentFormat(unsigned int a1)
{
  if (a1 > 0x1C)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_29B6EC120[a1];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSizeOfFormat(unsigned int a1)
{
  if (a1 > 0x1C)
  {
    return 0;
  }

  else
  {
    return qword_29B6EC270[a1];
  }
}

uint64_t sub_29ACF4178(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF4190(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF41C4(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF41E0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4214(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4230(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4264(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4280(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF42B4(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF42D0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4304(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4320(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4354(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF436C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF43A0(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF43B8(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF43EC(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF4404(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4438(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4454(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4488(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF44A4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF44D8(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF44F0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4524(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4540(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4574(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4590(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF45C4(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF45E0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4614(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF462C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4660(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF467C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF46B0(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF46C8(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF46FC(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4718(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF474C(void *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_29ACF4768(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF479C(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF47B4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF47E8(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF4800(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4834(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF484C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4880(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF4898(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF48CC(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF48E4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4918(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF4930(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4964(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF497C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF49B0(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF49C8(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF49FC(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF4A14(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4A48(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 4) != 0)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  return result;
}

uint64_t sub_29ACF4A60(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  return *(v2 + 32);
}

uint64_t sub_29ACF4A94(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_29ACF4B0C(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **sub_29ACF4B0C(uint64_t a1, const void **a2, uint64_t a3)
{
  v7 = sub_29A12A708(v26, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A12A04C(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29ACF4D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ACF4D70(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_29ACF4DE8(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **sub_29ACF4DE8(uint64_t a1, const void **a2, uint64_t a3)
{
  v7 = sub_29A12A708(v26, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AA26BE0(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29ACF5028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::HdUnitTestDelegate(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(this, a2, a3);
  *v3 = &unk_2A20854A0;
  *(v3 + 4) = 0;
  *(v3 + 3) = v3 + 32;
  *(v3 + 7) = 0;
  *(v3 + 10) = 0;
  *(v3 + 5) = 0;
  *(v3 + 6) = v3 + 56;
  *(v3 + 8) = 0;
  *(v3 + 9) = v3 + 80;
  *(v3 + 13) = 0;
  *(v3 + 11) = 0;
  *(v3 + 12) = v3 + 104;
  *(v3 + 16) = 0;
  *(v3 + 14) = 0;
  *(v3 + 15) = v3 + 128;
  *(v3 + 19) = 0;
  *(v3 + 17) = 0;
  *(v3 + 18) = v3 + 152;
  *(v3 + 22) = 0;
  *(v3 + 20) = 0;
  *(v3 + 21) = v3 + 176;
  *(v3 + 25) = 0;
  *(v3 + 28) = 0;
  *(v3 + 23) = 0;
  *(v3 + 24) = v3 + 200;
  *(v3 + 26) = 0;
  *(v3 + 27) = v3 + 224;
  *(v3 + 31) = 0;
  *(v3 + 32) = 0;
  *(v3 + 29) = 0;
  *(v3 + 30) = v3 + 248;
  result = 0.0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 74) = 1065353216;
  *(v3 + 38) = v3 + 312;
  *(v3 + 39) = 0;
  *(v3 + 42) = 0;
  *(v3 + 43) = 0;
  *(v3 + 40) = 0;
  *(v3 + 41) = v3 + 336;
  *(v3 + 352) = 1;
  *(v3 + 89) = 0;
  *(v3 + 360) = 1;
  *(v3 + 46) = v3 + 376;
  *(v3 + 47) = 0;
  *(v3 + 50) = 0;
  *(v3 + 51) = 0;
  *(v3 + 48) = 0;
  *(v3 + 49) = v3 + 400;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetRefineLevel(void *this, int a2)
{
  v3 = this;
  *(this + 89) = a2;
  v4 = this[3];
  v5 = this + 4;
  v14 = v4;
  v15 = this + 4;
  while (v4 != v5)
  {
    v6 = v3[1];
    v7 = sub_29ACF5240(&v14);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v6 + 440), (*v7 + 32), 16);
    this = sub_29ACF5278(&v14);
    v4 = v14;
    v5 = v15;
  }

  v8 = v3[6];
  v9 = v3 + 7;
  v14 = v8;
  v15 = v3 + 7;
  while (v8 != v9)
  {
    v10 = v3[1];
    v11 = sub_29ACF5320(&v14);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v10 + 440), (*v11 + 32), 16);
    this = sub_29ACF5358(&v14);
    v8 = v14;
    v9 = v15;
  }

  v12 = v3[46];
  v13 = v3 + 47;
  v14 = v12;
  v15 = v3 + 47;
  while (v12 != v13)
  {
    *(*sub_29ACF5400(&v14) + 36) = a2;
    this = sub_29ACF5438(&v14);
    v12 = v14;
    v13 = v15;
  }

  return this;
}

void *sub_29ACF5240(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C788C();
  }

  return result;
}

void *sub_29ACF5278(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_Mesh>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_Mesh>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29ACF5320(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C78D8();
  }

  return result;
}

void *sub_29ACF5358(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_Curves>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_Curves>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29ACF5400(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C7924();
  }

  return result;
}

void *sub_29ACF5438(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, int>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, int>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetVisibility(void *this, char a2)
{
  v3 = this;
  *(this + 360) = a2;
  v4 = this[3];
  v5 = this + 4;
  v12 = v4;
  i = this + 4;
  if (v4 != this + 4)
  {
    do
    {
      v6 = v3[1];
      v7 = sub_29ACF5240(&v12);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v6 + 440), (*v7 + 32), 1024);
      this = sub_29ACF5278(&v12);
    }

    while (v12 != i);
    v4 = v3[3];
  }

  v12 = v4;
  for (i = v5; v12 != i; this = sub_29ACF5278(&v12))
  {
    v8 = v3[1];
    v9 = sub_29ACF5240(&v12);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v8 + 440), (*v9 + 32), 1024);
  }

  v10 = v3[49];
  v11 = v3 + 50;
  v12 = v10;
  i = v3 + 50;
  while (v10 != v11)
  {
    *(*sub_29ACF55D8(&v12) + 36) = a2;
    this = sub_29ACF5610(&v12);
    v10 = v12;
    v11 = i;
  }

  return this;
}

void *sub_29ACF55D8(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C7970();
  }

  return result;
}

void *sub_29ACF5610(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, BOOL>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, BOOL>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v17, 1.0);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v4)
  {
    v4 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v5 = *(v4 + 7);
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v7)
  {
    v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, v17, v15, v13, v11, 0, &v9, &v8, v7 + 71, 0);
}

void sub_29ACF5808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, int a8, uint64_t *a9, uint64_t *a10, char a11)
{
  v26[64] = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 1);
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v17)
  {
    v17 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v16, (v17 + 56), a1, a2);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_29AD01030(v26, a9, a10, a3, a4, a5, a6, v23, v21, a7, a11);
  v25 = a2;
  v18 = sub_29AD03C64(a1 + 3, a2, &unk_29B4D6118, &v25);
  sub_29ACF5D48((v18 + 5), v26);
  sub_29AD0137C(v26);
}

uint64_t sub_29ACF5D48(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
    v4 = *(a1 + 8);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v7;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v10;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  sub_29AD011F0((a1 + 240), (a2 + 240));
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 504) = *(a2 + 504);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, __int128 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t *a15, uint64_t *a16, char a17)
{
  v22 = a17;
  v24 = a15;
  v23 = a16;
  v25 = a13;
  v33[64] = *MEMORY[0x29EDCA608];
  v26 = *(a1 + 1);
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v27)
  {
    v27 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v26, (v27 + 56), a1, a2);
  sub_29AD01030(v33, v24, v23, a3, a4, a5, a6, a7, a8, v25, v22);
  v32 = a2;
  v28 = sub_29AD03C64(a1 + 3, a2, &unk_29B4D6118, &v32);
  sub_29ACF5D48((v28 + 5), v33);
  sub_29AD0137C(v33);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, __int128 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t *a17, uint64_t *a18, char a19)
{
  v24 = a19;
  v26 = a17;
  v25 = a18;
  v27 = a15;
  v35[64] = *MEMORY[0x29EDCA608];
  v28 = *(a1 + 1);
  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v29)
  {
    v29 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v28, (v29 + 56), a1, a2);
  sub_29AD01030(v35, v26, v25, a3, a4, a5, a6, a7, a8, v27, v24);
  v34 = a2;
  v30 = sub_29AD03C64(a1 + 3, a2, &unk_29B4D6118, &v34);
  sub_29ACF5D48((v30 + 5), v35);
  sub_29AD0137C(v35);
}

void sub_29ACF665C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetMeshCullStyle(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, _DWORD *a3)
{
  v6 = sub_29A55CDFC(a1 + 24);
  if (a1 + 32 == v6)
  {
    v10[0] = "hd/unitTestDelegate.cpp";
    v10[1] = "SetMeshCullStyle";
    v10[2] = 233;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetMeshCullStyle(const SdfPath &, const HdCullStyle &)";
    v11 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v10, "Could not find mesh Rprim named %s. \n", v9, Text);
  }

  else if (*(v6 + 544) != *a3)
  {
    *(v6 + 544) = *a3;
    v7 = (*(a1 + 8) + 440);

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty(v7, a2, 0x2000);
  }
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddBasisCurves(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, __int128 *a4, uint64_t a5, int a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v30 = *MEMORY[0x29EDCA608];
  v22 = *(a1 + 1);
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v23)
  {
    v23 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v22, (v23 + 80), a1, a2);
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29AD01540(v26, a3, a4, a5, a7, a8, v24 + 53);
  v25 = a2;
  if (sub_29AD04364(a1 + 6, a2, &unk_29B4D6118, &v25) + 40 != v26)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29ACF6DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29ACF6EE4(void *a1)
{
  v1 = a1[17];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[16];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[15];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddPoints(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = a7;
  v20 = a5;
  v13 = *(a1 + 1);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v14)
  {
    v14 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v13, (v14 + 104), a1, a2);
  v15 = a3[1];
  v21 = *a3;
  v22 = v15;
  v16 = *(a3 + 4);
  v23 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v22 + 1))
    {
      v17 = *(&v22 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  v18 = a2;
  if (sub_29AD04768(a1 + 9, a2, &unk_29B4D6118, &v18) + 40 != &v21)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddInstancer(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a4)
{
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertInstancer(*(this + 1), this, a2);
  v11 = 0uLL;
  v12 = 0;
  memset(v10, 0, 160);
  v13 = a2;
  v6 = sub_29AD04230(this + 12, a2, &unk_29B4D6118, &v13);
  if (v6 + 5 != v10)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v8 = v10[12];
  v7 = v10[13];
  v9 = v10[11];
  *(v6 + 25) = v10[10];
  *(v6 + 27) = v9;
  *(v6 + 29) = v8;
  *(v6 + 31) = v7;
  sub_29A1E23D4(v6 + 33);
  *(v6 + 33) = v11;
  v6[35] = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_29A1E234C(&v13);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29ACF76BC(uint64_t a1)
{
  v1 = (a1 + 224);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetInstancerProperties(uint64_t a1, _DWORD *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v12 = *a3;
  if (*a3 != *a4)
  {
    v21[0] = "hd/unitTestDelegate.cpp";
    v21[1] = "SetInstancerProperties";
    v21[2] = 362;
    v21[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetInstancerProperties(const SdfPath &, const VtIntArray &, const VtVec3fArray &, const VtVec4fArray &, const VtVec3fArray &)";
    v22 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v21, "prototypeIndex.size() == scale.size()", 0))
    {
      return;
    }

    v12 = *a3;
  }

  if (v12 != *a5)
  {
    v19[0] = "hd/unitTestDelegate.cpp";
    v19[1] = "SetInstancerProperties";
    v19[2] = 363;
    v19[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetInstancerProperties(const SdfPath &, const VtIntArray &, const VtVec3fArray &, const VtVec4fArray &, const VtVec3fArray &)";
    v20 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v19, "prototypeIndex.size() == rotate.size()", 0))
    {
      return;
    }

    v12 = *a3;
  }

  if (v12 == *a6 || (v17[0] = "hd/unitTestDelegate.cpp", v17[1] = "SetInstancerProperties", v17[2] = 364, v17[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetInstancerProperties(const SdfPath &, const VtIntArray &, const VtVec3fArray &, const VtVec4fArray &, const VtVec3fArray &)", v18 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v17, "prototypeIndex.size() == translate.size()", 0) & 1) != 0))
  {
    v21[0] = a2;
    v13 = sub_29AD04230((a1 + 96), a2, &unk_29B4D6118, v21);
    sub_29A4ADDE0((v13 + 5), a4);
    v21[0] = a2;
    v14 = sub_29AD04230((a1 + 96), a2, &unk_29B4D6118, v21);
    sub_29A4AE538(v14 + 5, a5);
    v21[0] = a2;
    v15 = sub_29AD04230((a1 + 96), a2, &unk_29B4D6118, v21);
    sub_29A4ADDE0((v15 + 15), a6);
    v21[0] = a2;
    v16 = sub_29AD04230((a1 + 96), a2, &unk_29B4D6118, v21);
    sub_29A27CF04(v16 + 10, a3);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkInstancerDirty((*(a1 + 8) + 440), a2, 131136);
  }
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateInstancer(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (this + 4 != sub_29A55CDFC((this + 3)) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a3))
  {
    v8 = a2;
    v6 = sub_29A326108(this + 41, a2, &unk_29B4D6118, &v8);
    sub_29A2258F0(v6 + 9, a3);
    sub_29A225948(v6 + 10, a3 + 1);
    v8 = a3;
    v7 = sub_29AD04230(this + 12, a3, &unk_29B4D6118, &v8);
    sub_29A1E28B4((v7 + 33), a2);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 0x10000);
  }
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddPrimvar(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3, void *a4, _DWORD *a5, uint64_t *a6, __int128 *a7)
{
  v24 = 0;
  if (pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(a1, a2, a3, &v24))
  {
    v22[0] = "hd/unitTestDelegate.cpp";
    v22[1] = "AddPrimvar";
    v22[2] = 404;
    v22[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddPrimvar(const SdfPath &, const TfToken &, const VtValue &, const HdInterpolation &, const TfToken &, const VtIntArray &)";
    v23 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v16 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v17 = (v16 + 16);
      if (*(v16 + 39) < 0)
      {
        v17 = *v17;
      }
    }

    else
    {
      v17 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v22, "Rprim %s already has a primvar named %s. Skipping.\n", v15, Text, v17);
  }

  else
  {
    v22[0] = a2;
    v18 = sub_29A55C168((a1 + 120), a2, &unk_29B4D6118, v22);
    v19 = v18;
    v20 = *(v18 + 6);
    if (v20 >= *(v18 + 7))
    {
      v21 = sub_29AD04810((v18 + 10), a3, a4, a5, a6, a7);
    }

    else
    {
      sub_29AD01450(*(v18 + 6), a3, a4, a5, a6, a7);
      v21 = v20 + 80;
      *(v19 + 6) = v20 + 80;
    }

    *(v19 + 6) = v21;
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((*(a1 + 8) + 440), a2, 64);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_29A55CDFC(a1 + 120);
  if (a1 + 128 == v7)
  {
    return 0;
  }

  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  if (v8 != v9)
  {
    while ((*v8 ^ *a3) >= 8)
    {
      v8 += 10;
      if (v8 == v9)
      {
        v10 = 1;
        return !v10;
      }
    }
  }

  v11 = v8 == v9;
  v10 = v8 == v9;
  if (a4)
  {
    if (!v11)
    {
      v10 = 0;
      *a4 = v8;
    }
  }

  return !v10;
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdatePrimvarValue(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3, void *a4, __int128 *a5)
{
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(a1, a2, a3, &v16))
  {
    sub_29A1854E8((v16 + 8), a4);
    sub_29A27CF04((v16 + 40), a5);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((*(a1 + 8) + 440), a2, 64);
  }

  else
  {
    v14[0] = "hd/unitTestDelegate.cpp";
    v14[1] = "UpdatePrimvarValue";
    v14[2] = 429;
    v14[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdatePrimvarValue(const SdfPath &, const TfToken &, const VtValue &, const VtIntArray &)";
    v15 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v12 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v12)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Rprim %s has no primvar named %s.\n", v11, Text, v13);
  }
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::RemovePrimvar(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v14 = 0;
  if (pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(this, a2, a3, &v14))
  {
    v12[0] = a2;
    v6 = sub_29A55C168(this + 15, a2, &unk_29B4D6118, v12);
    sub_29AD04970(v12, v14 + 80, *(v6 + 6), v14);
    if (*(v6 + 6) != v7)
    {
      sub_29AD038C8();
    }

    *(v6 + 6) = v7;
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 64);
  }

  else
  {
    v12[0] = "hd/unitTestDelegate.cpp";
    v12[1] = "RemovePrimvar";
    v12[2] = 445;
    v12[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::RemovePrimvar(const SdfPath &, const TfToken &)";
    v13 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v10 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v10)
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      v11 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v12, "Rprim %s has no primvar named %s.\n", v9, Text, v11);
  }
}

__n128 pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateTransform(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a3)
{
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    v15 = a2;
    v6 = sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v15);
    v7 = *a3;
    v8 = *(a3 + 1);
    v9 = *(a3 + 2);
    *(v6 + 13) = *(a3 + 3);
    *(v6 + 11) = v9;
    *(v6 + 9) = v8;
    *(v6 + 7) = v7;
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 512);
  }

  if (this + 22 != sub_29A55CDFC((this + 21)))
  {
    v15 = a2;
    v11 = sub_29AD04A98(this + 21, a2, &unk_29B4D6118, &v15);
    v12 = *a3;
    v13 = *(a3 + 1);
    v14 = *(a3 + 3);
    *(v11 + 5) = *(a3 + 2);
    *(v11 + 6) = v14;
    *(v11 + 3) = v12;
    *(v11 + 4) = v13;
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty((this[1] + 55), a2, 512);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMaterialResource(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v6, (v7 + 152), a1, a2);
  v10 = a2;
  v8 = sub_29AD04B48((a1 + 144), a2, &unk_29B4D6118, &v10);
  return sub_29A1854E8(v8 + 5, a3);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateMaterialResource(uint64_t a1, _DWORD *a2, void *a3)
{
  v13 = a2;
  v6 = sub_29AD04B48((a1 + 144), a2, &unk_29B4D6118, &v13);
  sub_29A1854E8(v6 + 5, a3);
  v7 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty((v7 + 440), a2, 8);
  v8 = *(a1 + 304);
  v9 = (a1 + 312);
  if (v8 != v9)
  {
    do
    {
      if (*(v8 + 36) == *a2)
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v7 + 440), (v8 + 28), 128);
      }

      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }
}

int *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::BindMaterial(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = a2;
  v4 = sub_29A326108(this + 38, a2, &unk_29B4D6118, &v6);
  sub_29A2258F0(v4 + 9, a3);
  return sub_29A225948(v4 + 10, a3 + 1);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::RebindMaterial(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::BindMaterial(this, a2, a3);
  v5 = (this[1] + 55);

  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty(v5, a2, 128);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::HideRprim(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A43A86C(this + 264, a2, a2);
  sub_29A1E21F4(&v5, a2);
  sub_29A1E2240(&v6, a2 + 1);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((*(this + 1) + 440), &v5, 0x80000);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29ACF81F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UnhideRprim(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A43AB80(this + 33, a2);
  sub_29A1E21F4(&v5, a2);
  sub_29A1E2240(&v6, a2 + 1);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((*(this + 1) + 440), &v5, 0x80000);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29ACF8294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetReprSelector(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a3)
{
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    v7 = a2;
    v6 = sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v7);
    sub_29A166F2C(v6 + 65, a3);
    sub_29A166F2C(v6 + 66, a3 + 1);
    sub_29A166F2C(v6 + 67, a3 + 2);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 0x40000);
  }
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetRefineLevel(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  v5 = a2;
  *(sub_29AD04BE4(this + 46, a2, &unk_29B4D6118, &v5) + 9) = a3;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 16);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetVisibility(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, char a3)
{
  v5 = a2;
  *(sub_29AD04C80(this + 49, a2, &unk_29B4D6118, &v5) + 36) = a3;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 1024);
}

pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdatePositions(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, float a3)
{
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    v11 = a2;
    v6 = sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v11);
    sub_29ACF86CC((v6 + 15), &v10, a3);
    v11 = a2;
    if (sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v11) + 15 != &v10)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (this + 7 != sub_29A55CDFC((this + 6)))
  {
    v11 = a2;
    v7 = sub_29AD04364(this + 6, a2, &unk_29B4D6118, &v11);
    sub_29ACF86CC((v7 + 40), &v10, a3);
    v11 = a2;
    if (sub_29AD04364(this + 6, a2, &unk_29B4D6118, &v11) + 40 != &v10)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  result = sub_29A55CDFC((this + 9));
  if (this + 10 != result)
  {
    v11 = a2;
    v9 = sub_29AD04768(this + 9, a2, &unk_29B4D6118, &v11);
    sub_29ACF86CC((v9 + 40), &v10, a3);
    v11 = a2;
    if (sub_29AD04768(this + 9, a2, &unk_29B4D6118, &v11) + 40 != &v10)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  return result;
}

void sub_29ACF86CC(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  if (*a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = a3;
    do
    {
      sub_29A1935CC(a2);
      *&v10 = sin(vcvtd_n_f64_u64(v8, 1uLL) + v9) * 0.5;
      v11 = (*(a2 + 32) + v7);
      *v11 = vadd_f32(*v11, v10);
      v11[1].f32[0] = v11[1].f32[0] + 0.0;
      ++v8;
      v7 += 12;
    }

    while (v8 < *a2);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateRprims(void *this, float a2)
{
  v18[2] = *MEMORY[0x29EDCA608];
  v2 = this[1];
  v16 = this[3];
  v17 = this + 4;
  if (v16 != this + 4)
  {
    v3 = this;
    do
    {
      v4 = *sub_29ACF5240(&v16);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v2 + 440), (v4 + 32), 64);
      v15 = 0;
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v5)
      {
        v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if (pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(v3, v4 + 32, v5 + 19, &v15) && !*(v15 + 24))
      {
        v6 = sub_29A9FF92C((v15 + 8));
        v8 = *v6;
        v7 = *(v6 + 1);
        v9 = v6[1];
        v18[1] = &off_2A2042A68 + 2;
        v10 = operator new(0x14uLL);
        *v11.i32 = v8 + 0.01;
        *v12.i32 = (v8 + 0.01) - truncf(v8 + 0.01);
        v13.i64[0] = 0x8000000080000000;
        v13.i64[1] = 0x8000000080000000;
        v11.i32[0] = vbslq_s8(v13, v12, v11).u32[0];
        *v12.i32 = v7 + 0.02;
        *v14.i32 = (v7 + 0.02) - truncf(v7 + 0.02);
        *v10 = v11.i32[0];
        v10[1] = vbslq_s8(v13, v14, v12).u32[0];
        *(v10 + 1) = v9;
        atomic_store(0, v10 + 4);
        v18[0] = v10;
        atomic_fetch_add_explicit(v10 + 4, 1u, memory_order_relaxed);
        sub_29A18606C((v15 + 8), v18);
        sub_29A186B14(v18);
      }

      this = sub_29ACF5278(&v16);
    }

    while (v16 != v17);
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateInstancerPrimvars(void *this, float a2)
{
  v21 = this[12];
  v22 = this + 13;
  if (v21 != this + 13)
  {
    v3 = this;
    do
    {
      if (*(*sub_29ACF8A88(&v21) + 80))
      {
        v4 = 0;
        v5 = 0;
        do
        {
          v18 = 0x3FF0000000000000uLL;
          v19 = 0;
          v20 = (v5 * a2);
          Quat = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(&v18);
          v8 = v7;
          v9 = Quat;
          v11 = v10;
          v13 = v12;
          v14 = *sub_29ACF8A88(&v21);
          sub_29A195BC4(v14 + 80);
          v15 = (*(v14 + 112) + v4);
          *v15 = v8;
          v15[1] = v9;
          v15[2] = v11;
          v15[3] = v13;
          ++v5;
          v4 += 16;
        }

        while (v5 < *(*sub_29ACF8A88(&v21) + 80));
      }

      v16 = *(v3 + 8);
      v17 = sub_29ACF8A88(&v21);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkInstancerDirty((v16 + 440), (*v17 + 32), 64);
      this = sub_29ACF8AC0(&v21);
    }

    while (v21 != v22);
  }

  return this;
}

void *sub_29ACF8A88(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C79BC();
  }

  return result;
}

void *sub_29ACF8AC0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_Instancer>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_Instancer>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateInstancerPrototypes(void *this, float a2)
{
  v12 = this[12];
  v13 = this + 13;
  if (v12 != this + 13)
  {
    v2 = this;
    do
    {
      v3 = *(*sub_29ACF8A88(&v12) + 160);
      if (v3 >= 1)
      {
        v4 = *sub_29ACF8A88(&v12);
        sub_29A19DBEC(v4 + 160);
        v5 = **(v4 + 192);
        if (v3 != 1)
        {
          v6 = 0;
          do
          {
            v7 = *sub_29ACF8A88(&v12);
            sub_29A19DBEC(v7 + 160);
            LODWORD(v7) = *(*(v7 + 192) + 4 * v6 + 4);
            v8 = *sub_29ACF8A88(&v12);
            sub_29A19DBEC(v8 + 160);
            *(*(v8 + 192) + 4 * v6++) = v7;
          }

          while ((v3 & 0x7FFFFFFF) - 1 != v6);
        }

        v9 = *sub_29ACF8A88(&v12);
        sub_29A19DBEC(v9 + 160);
        *(*(v9 + 192) + 4 * (v3 - 1)) = v5;
      }

      v10 = *(v2 + 8);
      v11 = sub_29ACF8A88(&v12);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkInstancerDirty((v10 + 440), (*v11 + 32), 0x20000);
      this = sub_29ACF8AC0(&v12);
    }

    while (v12 != v13);
  }

  return this;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddRenderBuffer(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 1);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertBprim(v6, (v7 + 312), a1, a2);
  v8 = *(a3 + 16);
  v9 = *a3;
  v12 = a2;
  v13 = v9;
  v10 = *(a3 + 12);
  v14 = *(a3 + 8);
  result = sub_29AD04D1C(a1 + 24, a2, &unk_29B4D6118, &v12);
  *(result + 36) = v13;
  *(result + 11) = v14;
  *(result + 12) = v10;
  *(result + 52) = v8;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateRenderBuffer(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 16);
  v6 = *a3;
  v9 = a2;
  v10 = v6;
  v7 = *(a3 + 12);
  v11 = *(a3 + 8);
  v8 = sub_29AD04D1C((a1 + 192), a2, &unk_29B4D6118, &v9);
  *(v8 + 36) = v10;
  *(v8 + 11) = v11;
  *(v8 + 12) = v7;
  *(v8 + 52) = v5;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimDirty((*(a1 + 8) + 440), a2, 1);
}

__n128 pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddCamera(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = *(this + 1);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v4, (v5 + 136), this, a2);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v12 = a2;
  v6 = sub_29AD04A98(this + 21, a2, &unk_29B4D6118, &v12);
  *&v10[0] = 0;
  sub_29A184A10(v6 + 5, 0);
  v7 = *(&v10[2] + 8);
  v8 = *(&v10[1] + 8);
  *(v6 + 3) = *(v10 + 8);
  *(v6 + 4) = v8;
  *(v6 + 5) = v7;
  *(v6 + 6) = 0uLL;
  sub_29A184A10(v10, 0);
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateCamera(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v12 = a2;
  v8 = sub_29AD04A98((a1 + 168), a2, &unk_29B4D6118, &v12);
  v9 = v8;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((v9 + 40), EmptyString);
  sub_29A1854E8(v11, a4);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty((*(a1 + 8) + 440), a2, 4294967293);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateTask(uint64_t a1, _DWORD *a2, uint64_t *a3, void *a4)
{
  v22[0] = a2;
  v8 = sub_29A88FF4C((a1 + 240), a2, &unk_29B4D6118, v22);
  v9 = v8;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((v9 + 40), EmptyString);
  sub_29A1854E8(v11, a4);
  v12 = *(a1 + 8);
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v13)
  {
    v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v13 + 55) ^ *a3) <= 7)
  {
    v14 = (v12 + 440);
    v15 = a2;
    v16 = 4;
LABEL_16:
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty(v14, v15, v16);
    return;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v17 + 12) ^ *a3) <= 7)
  {
    v14 = (v12 + 440);
    v15 = a2;
    v16 = 8;
    goto LABEL_16;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v19 = *a3;
  if ((*(v18 + 70) ^ *a3) <= 7)
  {
    v14 = (v12 + 440);
    v15 = a2;
    v16 = 16;
    goto LABEL_16;
  }

  v22[0] = "hd/unitTestDelegate.cpp";
  v22[1] = "UpdateTask";
  v22[2] = 699;
  v22[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::UpdateTask(const SdfPath &, const TfToken &, VtValue)";
  v23 = 0;
  v20 = v19 & 0xFFFFFFFFFFFFFFF8;
  if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v21 = (v20 + 16);
    if (*(v20 + 39) < 0)
    {
      v21 = *v21;
    }
  }

  else
  {
    v21 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v22, 1, "Unknown key %s", v21);
}

pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetRenderTag@<X0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  if (sub_29A2F4F50(this + 33, a2))
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
LABEL_3:
    if (!result)
    {
      result = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    v6 = *(result + 2);
    goto LABEL_17;
  }

  v7 = sub_29A55CDFC(this + 24);
  if ((this + 32) == v7)
  {
    if (sub_29AD04DB4(this + 48))
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    else
    {
      v9 = sub_29AD04DB4(this + 72);
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    v8 = v7[512];
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (v8 == 1)
    {
      if (!result)
      {
        result = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      }

      v6 = *(result + 1);
      goto LABEL_17;
    }
  }

  if (!result)
  {
    result = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
  }

  v6 = *result;
LABEL_17:
  *a3 = v6;
  if ((v6 & 7) != 0)
  {
    v10 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v10;
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetTaskRenderTags@<X0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, void *a2@<X8>)
{
  result = sub_29A55CDFC(this + 240);
  if ((this + 248) != result)
  {
    v6 = result;
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v7 + 70) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v7 + 70) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
    }

    memset(v9, 0, 24);
    v9[3] = v9;
    sub_29ACF9380(v6 + 5, EmptyString, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_29ACF9368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29ACF9380(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v7 = v6;
  v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v7 != v9 || v7 && v5 != v8) && (sub_29A1DE724((v5 + 56)))
  {
    v10 = *(v5 + 64);
    if ((v10 & 4) != 0)
    {
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 56);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetMeshTopology(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v7);
  v8 = a2;
  v6 = sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v8);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3, v6 + 5, v6 + 6, v6 + 20, v6 + 25, v6 + 30, 0);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v7);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetBasisCurvesTopology@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v4 = sub_29AD04364(this + 6, a2, &unk_29B4D6118, &v6);
  return pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3, v4 + 160, v4 + 168, v4 + 176, v4 + 80, v4 + 120);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetSubdivTags@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v4 = sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v6);
  return sub_29AB6F3BC(a3, v4 + 35);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetExtent(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a3 + 16) = xmmword_29B43C5A0;
  *(a3 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  if (this + 4 == sub_29A55CDFC((this + 3)))
  {
    if (this + 7 == sub_29A55CDFC((this + 6)))
    {
      if (this + 10 == sub_29A55CDFC((this + 9)))
      {
LABEL_9:
        sub_29A1935CC(v16);
        v8 = v17;
        sub_29A1935CC(v16);
        v14 = v8;
        v15 = v17 + 12 * *&v16[0];
        while (v14 != v15)
        {
          v11 = sub_29A21D194(&v14, v9, v10);
          v12 = vcvtq_f64_f32(*v11);
          v13 = v11[1].f32[0];
          sub_29A87C7EC(a3, &v12);
          sub_29A21D214(&v14);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }

      *&v12.f64[0] = a2;
      v7 = sub_29AD04768(this + 9, a2, &unk_29B4D6118, &v12);
    }

    else
    {
      *&v12.f64[0] = a2;
      v7 = sub_29AD04364(this + 6, a2, &unk_29B4D6118, &v12);
    }

    v6 = (v7 + 40);
  }

  else
  {
    *&v12.f64[0] = a2;
    v6 = (sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v12) + 15);
  }

  sub_29A4ADDE0(v16, v6);
  goto LABEL_9;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetDoubleSided(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (this + 4 == sub_29A55CDFC((this + 3)))
  {
    v4 = 0;
  }

  else
  {
    v6 = a2;
    v4 = *(sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v6) + 513);
  }

  return v4 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetDisplayStyle(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (this + 47 == sub_29A1EF6EC((this + 46)))
  {
    v4 = this + 89;
  }

  else
  {
    v7 = a2;
    v4 = sub_29AD04BE4(this + 46, a2, &unk_29B4D6118, &v7) + 9;
  }

  sub_29AD01650(&v6, *v4, 0, 1, 0, 0, 0);
  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetCullStyle(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (this + 4 == sub_29A55CDFC((this + 3)))
  {
    return 0;
  }

  v5 = a2;
  return *(sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v5) + 136);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_29A19D6E4(a3, 0);
  v7 = sub_29A55CDFC(this + 96);
  v8 = (this + 104) == v7;
  if ((this + 104) == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 + 5;
  }

  if (!v8)
  {
    v10 = v7[33];
    v11 = (v7[34] - v10) >> 3;
    v12 = 0;
    if (v7[34] != v10)
    {
      if (v11 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = (v7[34] - v10) >> 3;
      }

      while (*(v10 + 8 * v12) != *a2)
      {
        if (v13 == ++v12)
        {
          v12 = v13;
          break;
        }
      }
    }

    if (v12 != v11 && v9[15])
    {
      v14 = 0;
      do
      {
        sub_29A19DBEC((v9 + 15));
        if (*(v9[19] + 4 * v14) == v12)
        {
          v15 = v14;
          sub_29A7ACA64(a3, &v15);
        }

        ++v14;
      }

      while (v14 < v9[15]);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, void *a2@<X8>)
{
  result = sub_29A55CDFC(this + 96);
  if ((this + 104) != result)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetInstancerTransform@<X0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X8>)
{
  v5 = sub_29A55CDFC(this + 96);
  if ((this + 104) == v5)
  {

    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(a2, (v5 + 200));
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetMaterialId@<W0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  return sub_29AD04E1C(this + 304, a2, a3);
}

BOOL pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetInstancerId@<W0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  return sub_29AD04E1C(this + 328, a2, a3);
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetMaterialResource@<X0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, void *a2@<X8>)
{
  result = sub_29A55CDFC(this + 144);
  if ((this + 152) == result)
  {
    a2[1] = 0;
  }

  else
  {

    return sub_29A186EF4(a2, result + 5);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetCameraParamValue@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  result = sub_29A55CDFC((this + 21));
  if (this + 22 == result)
  {
    a4[1] = 0;
  }

  else
  {
    v13 = a2;
    v9 = sub_29AD04A98(this + 21, a2, &unk_29B4D6118, &v13);
    v10 = v9;
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    v12 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((v10 + 40), EmptyString);
    return sub_29A186EF4(a4, v12);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetRenderBufferDescriptor@<X0>(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1EF6EC(this + 192);
  if ((this + 200) == result)
  {
    v6 = 0;
    *a2 = 0;
    v7 = -1;
    *(a2 + 8) = 0;
  }

  else
  {
    v6 = *(result + 52);
    *a2 = *(result + 36);
    v7 = *(result + 48);
    *(a2 + 8) = *(result + 44);
  }

  *(a2 + 12) = v7;
  *(a2 + 16) = v6;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetTransform@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3@<X8>)
{
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    v8 = a2;
    v6 = (sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v8) + 7);
    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(a3, v6);
  }

  if (this + 22 != sub_29A55CDFC((this + 21)))
  {
    v8 = a2;
    v6 = (sub_29AD04A98(this + 21, a2, &unk_29B4D6118, &v8) + 48);
    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(a3, v6);
  }

  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetVisible(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (this + 50 == sub_29A1EF6EC((this + 49)))
  {
    v4 = (this + 45);
  }

  else
  {
    v6 = a2;
    v4 = (sub_29AD04C80(this + 49, a2, &unk_29B4D6118, &v6) + 9);
  }

  return *v4;
}

void *pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::Get@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v23[2] = *MEMORY[0x29EDCA608];
  if (this + 31 != sub_29A55CDFC((this + 30)))
  {
    v23[0] = a2;
    v8 = sub_29A88FF4C(this + 30, a2, &unk_29B4D6118, v23);
    v9 = v8;
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
LABEL_8:
      v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((v9 + 40), EmptyString);
      return sub_29A186EF4(a4, v11);
    }

    goto LABEL_7;
  }

  if (this + 28 != sub_29A55CDFC((this + 27)))
  {
    v23[0] = a2;
    v8 = sub_29A88FF4C(this + 27, a2, &unk_29B4D6118, v23);
    v9 = v8;
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
      goto LABEL_8;
    }

LABEL_7:
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
    goto LABEL_8;
  }

  v23[1] = 0;
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v13)
  {
    v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v13 + 59) ^ *a3) <= 7)
  {
    if (this + 4 != sub_29A55CDFC((this + 3)))
    {
      v22[0] = a2;
      v14 = sub_29AD03C64(this + 3, a2, &unk_29B4D6118, v22);
LABEL_14:
      v15 = (v14 + 15);
LABEL_36:
      a4[1] = &off_2A20433C0;
      sub_29A18ECC8(a4, v15);
      return sub_29A186B14(v23);
    }

    if (this + 7 != sub_29A55CDFC((this + 6)))
    {
      v22[0] = a2;
      v17 = sub_29AD04364(this + 6, a2, &unk_29B4D6118, v22);
      goto LABEL_35;
    }

    if (this + 10 != sub_29A55CDFC((this + 9)))
    {
      v22[0] = a2;
      v17 = sub_29AD04768(this + 9, a2, &unk_29B4D6118, v22);
      goto LABEL_35;
    }

    goto LABEL_42;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v16)
  {
    v16 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  if ((*(v16 + 8) ^ *a3) <= 7)
  {
    if (this + 13 != sub_29A55CDFC((this + 12)))
    {
      v22[0] = a2;
      v17 = sub_29AD04230(this + 12, a2, &unk_29B4D6118, v22);
LABEL_35:
      v15 = v17 + 40;
      goto LABEL_36;
    }

LABEL_42:
    sub_29A186A3C(a4, v23);
    return sub_29A186B14(v23);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v18)
  {
    v18 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  if ((*(v18 + 7) ^ *a3) > 7)
  {
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v20)
    {
      v20 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v20 + 9) ^ *a3) > 7)
    {
      v21 = 0;
      if (pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(this, a2, a3, &v21))
      {
        if (*(v21 + 40))
        {
          sub_29A1854E8(v23, (v21 + 8));
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(v23))
          {
            sub_29ACFA2E0(v23, (v21 + 40), v22);
            sub_29A18606C(v23, v22);
            sub_29A186B14(v22);
          }
        }

        else
        {
          sub_29A1854E8(v23, (v21 + 8));
        }
      }
    }

    else if (this + 13 != sub_29A55CDFC((this + 12)))
    {
      v22[0] = a2;
      v14 = sub_29AD04230(this + 12, a2, &unk_29B4D6118, v22);
      goto LABEL_14;
    }

    goto LABEL_42;
  }

  if (this + 13 == sub_29A55CDFC((this + 12)))
  {
    goto LABEL_42;
  }

  v22[0] = a2;
  v19 = sub_29AD04230(this + 12, a2, &unk_29B4D6118, v22);
  a4[1] = &off_2A20435E8;
  sub_29A18ECC8(a4, (v19 + 10));
  return sub_29A186B14(v23);
}

void sub_29ACFA2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29ACFA2E0@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  if (sub_29A19104C(a1))
  {
    v6 = sub_29A1915AC(a1);
    v7 = *(v6 + 1);
    v59 = *v6;
    v60 = v7;
    v8 = v6[4];
    v61 = v8;
    if (v8)
    {
      v9 = (v8 - 16);
      if (*(&v60 + 1))
      {
        v9 = *(&v60 + 1);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    sub_29A190B18(v57, *a2);
    if (*a2)
    {
      v10 = 0;
      do
      {
        v11 = *(a2[4] + 4 * v10);
        if ((v11 & 0x80000000) != 0 || v59 <= v11)
        {
          v52 = "hd/unitTestDelegate.cpp";
          v53 = "_ComputeFlattened";
          v54 = 981;
          v55 = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
          v56 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v52, 1, "Invalid indices");
        }

        else
        {
          sub_29A190F50(&v59);
          v12 = v61;
          sub_29A190F50(v57);
          *(v58 + 8 * v10) = *&v12[8 * v11];
        }

        ++v10;
      }

      while (v10 < *a2);
    }

    a3[1] = &off_2A2043198;
    sub_29A18ECC8(a3, v57);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if (sub_29A192658(a1))
  {
    v50 = a3;
    v13 = sub_29A192BB8(a1);
    v14 = *(v13 + 1);
    v59 = *v13;
    v60 = v14;
    v15 = v13[4];
    v61 = v15;
    if (v15)
    {
      v16 = (v15 - 16);
      if (*(&v60 + 1))
      {
        v16 = *(&v60 + 1);
      }

      atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
    }

    sub_29A1921FC(v57, *a2);
    if (*a2)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(a2[4] + 4 * v18);
        if ((v19 & 0x80000000) != 0 || v59 <= v19)
        {
          v52 = "hd/unitTestDelegate.cpp";
          v53 = "_ComputeFlattened";
          v54 = 981;
          v55 = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
          v56 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v52, 1, "Invalid indices");
        }

        else
        {
          sub_29A19255C(&v59);
          v20 = v61;
          sub_29A19255C(v57);
          *(v58 + v17) = *&v20[16 * v19];
        }

        ++v18;
        v17 += 16;
      }

      while (v18 < *a2);
    }

    v50[1] = &off_2A2043308;
    sub_29A18ECC8(v50, v57);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  if (sub_29A3FCEC4(a1))
  {
    v21 = a3;
    v22 = sub_29AD02EB4(a1);
    v23 = *(v22 + 1);
    v59 = *v22;
    v60 = v23;
    v24 = v22[4];
    v61 = v24;
    if (v24)
    {
      v25 = (v24 - 16);
      if (*(&v60 + 1))
      {
        v25 = *(&v60 + 1);
      }

      atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
    }

    sub_29A219F48(v57, *a2);
    if (*a2)
    {
      v26 = 0;
      do
      {
        v27 = *(a2[4] + 4 * v26);
        if ((v27 & 0x80000000) != 0 || v59 <= v27)
        {
          v52 = "hd/unitTestDelegate.cpp";
          v53 = "_ComputeFlattened";
          v54 = 981;
          v55 = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
          v56 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v52, 1, "Invalid indices");
        }

        else
        {
          sub_29A21A6E8(&v59);
          v28 = v61;
          sub_29A21A6E8(v57);
          *(v58 + 8 * v26) = *&v28[8 * v27];
        }

        ++v26;
      }

      while (v26 < *a2);
    }

    v21[1] = &off_2A2047FA0;
    sub_29A18ECC8(v21, v57);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  if (sub_29A190BD0(a1))
  {
    v29 = a3;
    v30 = sub_29A190A84(a1);
    v31 = *(v30 + 1);
    v59 = *v30;
    v60 = v31;
    v32 = v30[4];
    v61 = v32;
    if (v32)
    {
      v33 = (v32 - 16);
      if (*(&v60 + 1))
      {
        v33 = *(&v60 + 1);
      }

      atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
    }

    sub_29A191640(v57, *a2);
    if (*a2)
    {
      v34 = 0;
      do
      {
        v35 = *(a2[4] + 4 * v34);
        if ((v35 & 0x80000000) != 0 || v59 <= v35)
        {
          v52 = "hd/unitTestDelegate.cpp";
          v53 = "_ComputeFlattened";
          v54 = 981;
          v55 = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
          v56 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v52, 1, "Invalid indices");
        }

        else
        {
          sub_29A191A40(&v59);
          v36 = v61;
          sub_29A191A40(v57);
          *(v58 + 4 * v34) = *&v36[4 * v35];
        }

        ++v34;
      }

      while (v34 < *a2);
    }

    v29[1] = &off_2A2043250;
    sub_29A18ECC8(v29, v57);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  if (sub_29A1936C8(a1))
  {
    v51 = a3;
    v37 = sub_29A193BCC(a1);
    v38 = *(v37 + 1);
    v59 = *v37;
    v60 = v38;
    v39 = v37[4];
    v61 = v39;
    if (v39)
    {
      v40 = (v39 - 16);
      if (*(&v60 + 1))
      {
        v40 = *(&v60 + 1);
      }

      atomic_fetch_add_explicit(v40, 1uLL, memory_order_relaxed);
    }

    sub_29A193124(v57, *a2);
    if (*a2)
    {
      v41 = 0;
      v42 = 0;
      do
      {
        v43 = *(a2[4] + 4 * v42);
        if ((v43 & 0x80000000) != 0 || v59 <= v43)
        {
          v52 = "hd/unitTestDelegate.cpp";
          v53 = "_ComputeFlattened";
          v54 = 981;
          v55 = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
          v56 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v52, 1, "Invalid indices");
        }

        else
        {
          sub_29A1935CC(&v59);
          v44 = v61;
          sub_29A1935CC(v57);
          v45 = &v44[12 * v43];
          v46 = v58 + v41;
          v47 = *v45;
          *(v46 + 8) = *(v45 + 2);
          *v46 = v47;
        }

        ++v42;
        v41 += 12;
      }

      while (v42 < *a2);
    }

    v51[1] = &off_2A20433C0;
    sub_29A18ECC8(v51, v57);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (sub_29A194DC4(a1))
  {

    sub_29AD01714(a1, a2, a3);
  }

  if (sub_29A3FD9D0(a1))
  {

    sub_29AD018B4(a1, a2, a3);
  }

  if (sub_29A1931E0(a1))
  {

    sub_29AD01A54(a1, a2, a3);
  }

  if (sub_29A195CC0(a1))
  {

    sub_29AD01BF4(a1, a2, a3);
  }

  if (sub_29A197328(a1))
  {

    sub_29AD01D80(a1, a2, a3);
  }

  if (sub_29A3FE614(a1))
  {

    sub_29AD01F14(a1, a2, a3);
  }

  if (sub_29A195848(a1))
  {

    sub_29AD020A0(a1, a2, a3);
  }

  if (sub_29A3FC06C(a1))
  {

    sub_29AD02224(a1, a2, a3);
  }

  if (sub_29A19833C(a1))
  {

    sub_29AD023D0(a1, a2, a3);
  }

  if (sub_29A1FA6D8(a1))
  {

    sub_29AD0257C(a1, a2, a3);
  }

  if (sub_29A190184(a1))
  {

    sub_29AD02710(a1, a2, a3);
  }

  if (sub_29A19D610(a1))
  {

    sub_29AD0289C(a1, a2, a3);
  }

  if (sub_29A19BC88(a1))
  {

    sub_29AD02A20(a1, a2, a3);
  }

  if (sub_29A18E720(a1))
  {

    sub_29AD02BA4(a1, a2, a3);
  }

  if (sub_29A18E100(a1))
  {

    sub_29AD02D30(a1, a2, a3);
  }

  *&v59 = "hd/unitTestDelegate.cpp";
  *(&v59 + 1) = "_ComputeFlattenedValue";
  *&v60 = 1031;
  *(&v60 + 1) = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattenedValue(const VtValue &, const VtIntArray &)";
  LOBYTE(v61) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v59, "Type of primvar not yet fully supported", v48);
  return sub_29A186EF4(a3, a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetIndexedPrimvar@<X0>(uint64_t **a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v20[1] = 0;
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v10)
  {
    v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v10 + 59) ^ *a3) <= 7)
  {
    if (a1 + 4 != sub_29A55CDFC((a1 + 3)))
    {
      v19 = a2;
      v11 = sub_29AD03C64(a1 + 3, a2, &unk_29B4D6118, &v19);
LABEL_6:
      v12 = (v11 + 15);
LABEL_27:
      a5[1] = &off_2A20433C0;
      sub_29A18ECC8(a5, v12);
      return sub_29A186B14(v20);
    }

    if (a1 + 7 != sub_29A55CDFC((a1 + 6)))
    {
      v19 = a2;
      v14 = sub_29AD04364(a1 + 6, a2, &unk_29B4D6118, &v19);
      goto LABEL_26;
    }

    if (a1 + 10 != sub_29A55CDFC((a1 + 9)))
    {
      v19 = a2;
      v14 = sub_29AD04768(a1 + 9, a2, &unk_29B4D6118, &v19);
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v13)
  {
    v13 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  if ((*(v13 + 8) ^ *a3) <= 7)
  {
    if (a1 + 13 != sub_29A55CDFC((a1 + 12)))
    {
      v19 = a2;
      v14 = sub_29AD04230(a1 + 12, a2, &unk_29B4D6118, &v19);
LABEL_26:
      v12 = v14 + 40;
      goto LABEL_27;
    }

LABEL_31:
    sub_29A186A3C(a5, v20);
    return sub_29A186B14(v20);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v15)
  {
    v15 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  if ((*(v15 + 7) ^ *a3) > 7)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v17)
    {
      v17 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v17 + 9) ^ *a3) > 7)
    {
      v19 = 0;
      if (pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(a1, a2, a3, &v19))
      {
        sub_29A1854E8(v20, v19 + 1);
        if (a4)
        {
          sub_29A27CF04(a4, (v19 + 10));
        }
      }
    }

    else if (a1 + 13 != sub_29A55CDFC((a1 + 12)))
    {
      v19 = a2;
      v11 = sub_29AD04230(a1 + 12, a2, &unk_29B4D6118, &v19);
      goto LABEL_6;
    }

    goto LABEL_31;
  }

  if (a1 + 13 == sub_29A55CDFC((a1 + 12)))
  {
    goto LABEL_31;
  }

  v19 = a2;
  v16 = sub_29AD04230(a1 + 12, a2, &unk_29B4D6118, &v19);
  a5[1] = &off_2A20435E8;
  sub_29A18ECC8(a5, (v16 + 10));
  return sub_29A186B14(v20);
}

void sub_29ACFB170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t **pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetReprSelector@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A55CDFC((this + 3));
  if (this + 4 == result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v13 = a2;
    result = sub_29AD03C64(this + 3, a2, &unk_29B4D6118, &v13);
    v7 = result[65];
    *a3 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v8;
      }
    }

    v9 = result[66];
    a3[1] = v9;
    if ((v9 & 7) != 0)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
      {
        a3[1] = v10;
      }
    }

    v11 = result[67];
    a3[2] = v11;
    if ((v11 & 7) != 0)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
      {
        a3[2] = v12;
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::GetPrimvarDescriptors@<X0>(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v3 = a2;
  v29[0] = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2 == 3)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v6)
    {
      v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    if (!v7)
    {
      v7 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    }

    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v9 = sub_29AD04E7C(a3, v6 + 59, v29, v7 + 4);
      v3 = v29[0];
    }

    else
    {
      v3 = v29[0];
      sub_29ACCA394(a3[1], v6 + 59, v29[0], v7 + 4, 0);
      v9 = v8 + 32;
    }

    a3[1] = v9;
  }

  if (v3 == 5 && *(a1 + 352) == 1 && a1 + 104 != sub_29A55CDFC(a1 + 96))
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v10)
    {
      v10 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    v11 = a3[1];
    if (v11 >= a3[2])
    {
      v12 = sub_29AD04FA4(a3, v10 + 8, v29);
    }

    else
    {
      sub_29AD050C0(a3, a3[1], v10 + 8, v29);
      v12 = v11 + 32;
    }

    a3[1] = v12;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v13)
    {
      v13 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    v14 = a3[1];
    if (v14 >= a3[2])
    {
      v15 = sub_29AD04FA4(a3, v13 + 7, v29);
    }

    else
    {
      sub_29AD050C0(a3, a3[1], v13 + 7, v29);
      v15 = v14 + 32;
    }

    a3[1] = v15;
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v16)
    {
      v16 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    v17 = a3[1];
    if (v17 >= a3[2])
    {
      v18 = sub_29AD04FA4(a3, v16 + 9, v29);
    }

    else
    {
      sub_29AD050C0(a3, a3[1], v16 + 9, v29);
      v18 = v17 + 32;
    }

    a3[1] = v18;
  }

  result = sub_29A55CDFC(a1 + 120);
  if (a1 + 128 != result)
  {
    v20 = *(result + 40);
    v21 = *(result + 48);
    if (v20 != v21)
    {
      v22 = v20 + 24;
      do
      {
        v23 = (v22 - 24);
        v24 = *v22;
        if (*v22 == v29[0])
        {
          v25 = *(v22 + 16);
          v28 = v25 != 0;
          v26 = a3[1];
          if (v26 >= a3[2])
          {
            result = sub_29AD05134(a3, v23, v22, (v22 + 8), &v28);
          }

          else
          {
            result = sub_29ACCA394(v26, v23, v24, (v22 + 8), v25 != 0) + 32;
          }

          a3[1] = result;
        }

        v27 = v22 + 56;
        v22 += 80;
      }

      while (v27 != v21);
    }
  }

  return result;
}

void sub_29ACFB534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_29ABEE9FC(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddCube(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a3, char a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6)
{
  v7 = a5;
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v12)
  {
    v12 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  if ((*(v12 + 8) ^ *a6) <= 7)
  {
    sub_29ACFB7C4(&xmmword_29B6EC78C, 8, v17);
    sub_29ACFB858(&unk_29B6EC4C8, 12, v16);
    sub_29ACFB858(&unk_29B6EC4F8, 36, v15);
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v13)
    {
      v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, a3, v17, v16, v15, a4, v7, a6, v13 + 71, 0);
  }

  sub_29ACFB7C4(&xmmword_29B6EC78C, 8, v17);
  sub_29ACFB858(&unk_29B6EC588, 6, v16);
  sub_29ACFB858(&unk_29B6EC5A0, 24, v15);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, a3, v17, v16, v15, a4, v7, a6, v14 + 71, 0);
}

void *sub_29ACFB7C4@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_29A193124(a3, a2);
  result = sub_29A1935CC(a3);
  if (a2)
  {
    v8 = *(a3 + 32);

    return memmove(v8, a1, 12 * v6);
  }

  return result;
}

void *sub_29ACFB858@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_29A19D6E4(a3, a2);
  result = sub_29A19DBEC(a3);
  if (a2)
  {
    v8 = *(a3 + 32);

    return memmove(v8, a1, 4 * v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddPolygons(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, int a4, uint64_t a5)
{
  v57[2] = *MEMORY[0x29EDCA608];
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v57[1] = 0;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      sub_29A193124(&v54, 8uLL);
      if (v54)
      {
        v30 = 0;
        v31 = 0;
        do
        {
          sub_29A1935CC(&v54);
          v32 = sin(v31 * 0.9);
          v33 = v32 * cos(vcvtd_n_f64_u64(v31, 2uLL));
          *&v32 = fabsf(v33);
          v44 = cos(v31 * 0.7);
          v34.f64[0] = sin(vcvtd_n_f64_u64(v31, 1uLL));
          v35 = (v56 + v30);
          v34.f64[1] = v44;
          *v35 = vabs_f32(vcvt_f32_f64(v34));
          v35[1].i32[0] = LODWORD(v32);
          ++v31;
          v30 += 12;
        }

        while (v31 < v54);
      }

      *&v50[8] = &off_2A20433C0;
      v36 = operator new(0x30uLL);
      v37 = v55;
      *v36 = v54;
      *(v36 + 1) = v37;
      v38 = v56;
      *(v36 + 4) = v56;
      if (v38)
      {
        v39 = (v38 - 16);
        if (*(v36 + 3))
        {
          v39 = *(v36 + 3);
        }

        atomic_fetch_add_explicit(v39, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v36 + 10);
      *v50 = v36;
      atomic_fetch_add_explicit(v36 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v57, v50);
      sub_29A186B14(v50);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    if (a4 == 4)
    {
      sub_29A193124(&v54, 0xCuLL);
      if (v54)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          sub_29A1935CC(&v54);
          v16 = sin(v15 * 0.9);
          v17 = v16 * cos(vcvtd_n_f64_u64(v15, 2uLL));
          *&v16 = fabsf(v17);
          v43 = cos(v15 * 0.7);
          v18.f64[0] = sin(vcvtd_n_f64_u64(v15, 1uLL));
          v19 = (v56 + v14);
          v18.f64[1] = v43;
          *v19 = vabs_f32(vcvt_f32_f64(v18));
          v19[1].i32[0] = LODWORD(v16);
          ++v15;
          v14 += 12;
        }

        while (v15 < v54);
      }

      *&v50[8] = &off_2A20433C0;
      v20 = operator new(0x30uLL);
      v21 = v55;
      *v20 = v54;
      *(v20 + 1) = v21;
      v22 = v56;
      *(v20 + 4) = v56;
      if (v22)
      {
        v23 = (v22 - 16);
        if (*(v20 + 3))
        {
          v23 = *(v20 + 3);
        }

        atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v20 + 10);
      *v50 = v20;
      atomic_fetch_add_explicit(v20 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v57, v50);
      sub_29A186B14(v50);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v51 = 0uLL;
      *&v50[4] = 0uLL;
      *v50 = 1065353216;
      LODWORD(v51) = 1065353216;
      DWORD2(v51) = 1065353216;
      sub_29ACFB7C4(v50, 3, &v54);
      v49[1] = &off_2A20433C0;
      v10 = operator new(0x30uLL);
      v11 = v55;
      *v10 = v54;
      *(v10 + 1) = v11;
      v12 = v56;
      *(v10 + 4) = v56;
      if (v12)
      {
        v13 = (v12 - 16);
        if (*(v10 + 3))
        {
          v13 = *(v10 + 3);
        }

        atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v10 + 10);
      v49[0] = v10;
      atomic_fetch_add_explicit(v10 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v57, v49);
      sub_29A186B14(v49);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }
  }

  else
  {
    *(&v54 + 1) = &off_2A2042840 + 2;
    v24 = operator new(0x10uLL);
    __asm { FMOV            V0.2S, #1.0 }

    *v24 = _D0;
    v24[2] = 0;
    atomic_store(0, v24 + 3);
    *&v54 = v24;
    atomic_fetch_add_explicit(v24 + 3, 1u, memory_order_relaxed);
    sub_29A18606C(v57, &v54);
    sub_29A186B14(&v54);
  }

  v53 = &unk_2A2044C63;
  v52 = 1065353216;
  sub_29ACFB7C4(&unk_29B6EC63C, 8, &v54);
  sub_29ACFB858(&unk_29B6EC600, 3, v50);
  sub_29ACFB858(&unk_29B6EC60C, 12, v49);
  v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v40)
  {
    v40 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v41)
  {
    v41 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  LODWORD(v42) = a4;
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(a1, a2, a3, &v54, v50, v49, v45, v47, v57, v42, &v52, 0, 0, a5, v40 + 7, v41 + 71, 0);
}

void sub_29ACFBE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddFaceVaryingPolygons(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  memset(v28, 0, 232);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v37 = xmmword_29B6EC6FC;
  v38 = unk_29B6EC70C;
  v39 = xmmword_29B6EC71C;
  v33 = xmmword_29B6EC6BC;
  v34 = unk_29B6EC6CC;
  v35 = xmmword_29B6EC6DC;
  v36 = unk_29B6EC6EC;
  v31 = xmmword_29B6EC69C;
  v32 = unk_29B6EC6AC;
  sub_29A901CD8(v24, &v31, 12);
  v31 = xmmword_29B6EC72C;
  v32 = unk_29B6EC73C;
  v33 = xmmword_29B6EC74C;
  sub_29AA039F4(v22, &v31, 12);
  v31 = xmmword_29B6EC75C;
  v32 = unk_29B6EC76C;
  v33 = xmmword_29B6EC77C;
  sub_29A9096F4(v21, &v31, 12);
  sub_29ACFB7C4(&unk_29B6EC63C, 8, &v31);
  sub_29ACFB858(&unk_29B6EC600, 3, v20);
  sub_29ACFB858(&unk_29B6EC60C, 12, v19);
  v30[1] = &off_2A20433C0;
  v8 = operator new(0x30uLL);
  v9 = v24[1];
  *v8 = v24[0];
  *(v8 + 1) = v9;
  v10 = v25;
  *(v8 + 4) = v25;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(v8 + 3))
    {
      v11 = *(v8 + 3);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v8 + 10);
  atomic_fetch_add_explicit(v8 + 10, 1u, memory_order_relaxed);
  v29[1] = &off_2A2042F70;
  v30[0] = v8;
  v12 = operator new(0x30uLL);
  v13 = v22[1];
  *v12 = v22[0];
  *(v12 + 1) = v13;
  v14 = v23;
  *(v12 + 4) = v23;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(v12 + 3))
    {
      v15 = *(v12 + 3);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v12 + 10);
  v29[0] = v12;
  atomic_fetch_add_explicit(v12 + 10, 1u, memory_order_relaxed);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v16)
  {
    v16 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  LODWORD(v18) = 4;
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, a3, &v31, v20, v19, v26, v28, v30, v21, v18, v29, v21, 4, 0, a4, v16 + 7, v17 + 71, 0);
}

void sub_29ACFC1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddGrid(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3, int a4, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a5, int a6, char a7, const pxrInternal__aapl__pxrReserved__::SdfPath *a8)
{
  v8 = a8;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_29ACFC51C(a3, a4, &v26, &v23, &v20);
  sub_29ACFB7C4(v26, -1431655765 * ((v27 - v26) >> 2), v19);
  sub_29ACFB858(v23, (v24 - v23) >> 2, v18);
  sub_29ACFB858(v20, (v21 - v20) >> 2, v17);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v14)
  {
    v14 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (a6)
  {
    if (!v15)
    {
      v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v16 = (v15 + 568);
  }

  else
  {
    if (!v15)
    {
      v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v16 = (v15 + 344);
  }

  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, a5, v19, v18, v17, 0, v8, v14 + 7, v16, a7);
}

void sub_29ACFC51C(int a1, int a2, uint64_t a3, const void **a4, const void **a5)
{
  if (a2 | a1 && (a2 & 0x80000000) == 0)
  {
    v10 = 0;
    v11 = a1;
    v12 = a1 + 1;
    do
    {
      if ((a1 & 0x80000000) == 0)
      {
        v13 = 0;
        v15 = v12;
        do
        {
          v16 = v13 / v11 + -1.0;
          *&v23 = v16;
          v14 = (2 * v10) / a2 + -1.0;
          *(&v23 + 1) = v14;
          v24 = 0;
          sub_29A3A429C(a3, &v23);
          v13 += 2;
          --v15;
        }

        while (v15);
      }
    }

    while (v10++ != a2);
    if (a2 >= 1)
    {
      v18 = 0;
      v22 = a1 + 1;
      do
      {
        if (a1 <= 0)
        {
          ++v18;
        }

        else
        {
          v19 = v18 * v22;
          v20 = ++v18 * v22;
          v21 = a1;
          do
          {
            LODWORD(v23) = 4;
            sub_29A00D250(a4, &v23);
            LODWORD(v23) = v19;
            sub_29A00D250(a5, &v23);
            LODWORD(v23) = ++v19;
            sub_29A00D250(a5, &v23);
            LODWORD(v23) = v20 + 1;
            sub_29A00D250(a5, &v23);
            LODWORD(v23) = v20;
            sub_29A00D250(a5, &v23);
            ++v20;
            --v21;
          }

          while (v21);
        }
      }

      while (v18 != a2);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddGridWithCustomColor(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3, int a4, __int128 *a5, uint64_t a6, int a7, int a8, char a9, uint64_t a10)
{
  v38 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_29ACFC51C(a3, a4, &v33, &v30, &v27);
  v37 = &unk_2A2044C63;
  v36 = 1065353216;
  sub_29ACFB7C4(v33, -1431655765 * ((v34 - v33) >> 2), v22);
  sub_29ACFB858(v30, (v31 - v30) >> 2, v21);
  sub_29ACFB858(v27, (v28 - v27) >> 2, v20);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v16)
  {
    v16 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (a8)
  {
    if (!v17)
    {
      v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v18 = (v17 + 568);
  }

  else
  {
    if (!v17)
    {
      v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v18 = (v17 + 344);
  }

  LODWORD(v19) = a7;
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(a1, a2, a5, v22, v21, v20, v25, v23, a6, v19, &v36, 0, 0, a10, v16 + 7, v18, a9);
}

void sub_29ACFC920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddGridWithFaceColor(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3, int a4, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a5, int a6, char a7, const pxrInternal__aapl__pxrReserved__::SdfPath *a8)
{
  v49[2] = *MEMORY[0x29EDCA608];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_29ACFC51C(a3, a4, &v44, &v41, &v38);
  sub_29A193124(v32, (v42 - v41) >> 2);
  if (v42 != v41)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      sub_29A1935CC(v32);
      v16 = sin(v15 * 0.7);
      v17 = v16 * cos(vcvtd_n_f64_u64(v15, 2uLL));
      *&v16 = fabsf(v17);
      v28 = cos(v15 * 0.3);
      v18.f64[0] = sin(v15 * 0.1);
      v19 = (v33 + v14);
      v18.f64[1] = v28;
      *v19 = vabs_f32(vcvt_f32_f64(v18));
      v19[1].i32[0] = LODWORD(v16);
      ++v15;
      v14 += 12;
    }

    while (v15 < (v42 - v41) >> 2);
  }

  sub_29ACFB7C4(v44, -1431655765 * ((v45 - v44) >> 2), v31);
  sub_29ACFB858(v41, (v42 - v41) >> 2, v30);
  sub_29ACFB858(v38, (v39 - v38) >> 2, v29);
  v49[1] = &off_2A20433C0;
  v20 = operator new(0x30uLL);
  v21 = v32[1];
  *v20 = v32[0];
  *(v20 + 1) = v21;
  v22 = v33;
  *(v20 + 4) = v33;
  if (v22)
  {
    v23 = (v22 - 16);
    if (*(v20 + 3))
    {
      v23 = *(v20 + 3);
    }

    atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v20 + 10);
  atomic_fetch_add_explicit(v20 + 10, 1u, memory_order_relaxed);
  v48 = &unk_2A2044C63;
  v49[0] = v20;
  v47 = 1065353216;
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v24)
  {
    v24 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (a6)
  {
    if (!v25)
    {
      v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v26 = (v25 + 568);
  }

  else
  {
    if (!v25)
    {
      v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v26 = (v25 + 344);
  }

  LODWORD(v27) = 1;
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, a5, v31, v30, v29, v36, v34, v49, v27, &v47, 0, 0, a8, v24 + 7, v26, a7);
}

void sub_29ACFCD64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddGridWithVertexColor(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3, int a4, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a5, int a6, char a7, const pxrInternal__aapl__pxrReserved__::SdfPath *a8)
{
  v51[2] = *MEMORY[0x29EDCA608];
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_29ACFC51C(a3, a4, &v46, &v43, &v40);
  sub_29A193124(v34, 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 2));
  v14 = v46;
  if (v47 == v46)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      sub_29A1935CC(v34);
      v17 = sin(v16 * 0.7);
      v18 = v17 * cos(vcvtd_n_f64_u64(v16, 2uLL));
      *&v17 = fabsf(v18);
      v30 = cos(v16 * 0.3);
      v19.f64[0] = sin(v16 * 0.1);
      v20 = (v35 + v15);
      v19.f64[1] = v30;
      *v20 = vabs_f32(vcvt_f32_f64(v19));
      v20[1].i32[0] = LODWORD(v17);
      ++v16;
      v14 = v46;
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 2);
      v15 += 12;
    }

    while (v16 < v21);
  }

  sub_29ACFB7C4(v14, v21, v33);
  sub_29ACFB858(v43, (v44 - v43) >> 2, v32);
  sub_29ACFB858(v40, (v41 - v40) >> 2, v31);
  v51[1] = &off_2A20433C0;
  v22 = operator new(0x30uLL);
  v23 = v34[1];
  *v22 = v34[0];
  *(v22 + 1) = v23;
  v24 = v35;
  *(v22 + 4) = v35;
  if (v24)
  {
    v25 = (v24 - 16);
    if (*(v22 + 3))
    {
      v25 = *(v22 + 3);
    }

    atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v22 + 10);
  atomic_fetch_add_explicit(v22 + 10, 1u, memory_order_relaxed);
  v50 = &unk_2A2044C63;
  v51[0] = v22;
  v49 = 1065353216;
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v26)
  {
    v26 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (a6)
  {
    if (!v27)
    {
      v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v28 = (v27 + 568);
  }

  else
  {
    if (!v27)
    {
      v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v28 = (v27 + 344);
  }

  LODWORD(v29) = 3;
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, a5, v33, v32, v31, v38, v36, v51, v29, &v49, 0, 0, a8, v26 + 7, v28, a7);
}

void sub_29ACFD1E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddGridWithFaceVaryingColor(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3, int a4, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a5, int a6, char a7, const pxrInternal__aapl__pxrReserved__::SdfPath *a8)
{
  v49[2] = *MEMORY[0x29EDCA608];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_29ACFC51C(a3, a4, &v44, &v41, &v38);
  sub_29A193124(v32, (v39 - v38) >> 2);
  if (v39 != v38)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      sub_29A1935CC(v32);
      v16 = sin(v15 * 0.7);
      v17 = v16 * cos(vcvtd_n_f64_u64(v15, 2uLL));
      *&v16 = fabsf(v17);
      v28 = cos(v15 * 0.3);
      v18.f64[0] = sin(v15 * 0.1);
      v19 = (v33 + v14);
      v18.f64[1] = v28;
      *v19 = vabs_f32(vcvt_f32_f64(v18));
      v19[1].i32[0] = LODWORD(v16);
      ++v15;
      v14 += 12;
    }

    while (v15 < (v39 - v38) >> 2);
  }

  sub_29ACFB7C4(v44, -1431655765 * ((v45 - v44) >> 2), v31);
  sub_29ACFB858(v41, (v42 - v41) >> 2, v30);
  sub_29ACFB858(v38, (v39 - v38) >> 2, v29);
  v49[1] = &off_2A20433C0;
  v20 = operator new(0x30uLL);
  v21 = v32[1];
  *v20 = v32[0];
  *(v20 + 1) = v21;
  v22 = v33;
  *(v20 + 4) = v33;
  if (v22)
  {
    v23 = (v22 - 16);
    if (*(v20 + 3))
    {
      v23 = *(v20 + 3);
    }

    atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v20 + 10);
  atomic_fetch_add_explicit(v20 + 10, 1u, memory_order_relaxed);
  v48 = &unk_2A2044C63;
  v49[0] = v20;
  v47 = 1065353216;
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v24)
  {
    v24 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (a6)
  {
    if (!v25)
    {
      v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v26 = (v25 + 568);
  }

  else
  {
    if (!v25)
    {
      v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v26 = (v25 + 344);
  }

  LODWORD(v27) = 4;
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddMesh(this, a2, a5, v31, v30, v29, v36, v34, v49, v27, &v47, 0, 0, a8, v24 + 7, v26, a7);
}

void sub_29ACFD64C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddCurves(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3, uint64_t *a4, __int128 *a5, int a6, int a7, int a8, uint64_t a9)
{
  v77[1] = *MEMORY[0x29EDCA608];
  v77[0] = 0x400000004;
  v76[2] = xmmword_29B6EC7AC;
  v76[3] = unk_29B6EC7BC;
  v76[4] = xmmword_29B6EC7CC;
  v76[5] = unk_29B6EC7DC;
  v76[0] = xmmword_29B6EC78C;
  v76[1] = unk_29B6EC79C;
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  if (a8)
  {
    sub_29ACFB7C4(&unk_29B6EC7EC, 8, &v73);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v15 = 0;
  v16 = *(a5 + 40);
  v17 = *(a5 + 24);
  v18 = *(a5 + 8);
  v19 = *(a5 + 36);
  v20 = *(a5 + 20);
  v21 = *(a5 + 4);
  v22 = a5[2];
  v24 = *a5;
  v23 = a5[1];
  v25 = vdupq_lane_s32(a5[3], 0);
  v26 = vdupq_lane_s32(*(a5 + 52), 0);
  v27 = vdupq_lane_s32(*(a5 + 56), 0);
  do
  {
    v28 = &v76[v15];
    v78 = vld3q_f32(v28);
    v79.val[0] = vaddq_f32(v25, vaddq_f32(vaddq_f32(vmulq_n_f32(v78.val[0], *&v24), vmulq_n_f32(v78.val[1], *&v23)), vmulq_n_f32(v78.val[2], *&v22)));
    v79.val[1] = vaddq_f32(v26, vaddq_f32(vaddq_f32(vmulq_n_f32(v78.val[0], *&v21), vmulq_n_f32(v78.val[1], *&v20)), vmulq_n_f32(v78.val[2], *&v19)));
    v79.val[2] = vaddq_f32(v27, vaddq_f32(vaddq_f32(vmulq_n_f32(v78.val[0], *&v18), vmulq_n_f32(v78.val[1], *&v17)), vmulq_n_f32(v78.val[2], *&v16)));
    vst3q_f32(v28, v79);
    v15 += 3;
  }

  while (v15 != 6);
  v72[1] = 0;
  if (a6 != 3)
  {
    if (a6 != 1)
    {
      if (!a6)
      {
        *(&v73 + 1) = &off_2A2042840 + 2;
        v29 = operator new(0x10uLL);
        __asm { FMOV            V0.2S, #1.0 }

        *v29 = _D0;
        v29[2] = 1065353216;
        atomic_store(0, v29 + 3);
        *&v73 = v29;
        atomic_fetch_add_explicit(v29 + 3, 1u, memory_order_relaxed);
        sub_29A18606C(v72, &v73);
        sub_29A186B14(&v73);
      }

      v71[1] = 0;
      if (a7 != 3)
      {
        if (a7 != 1)
        {
          if (a7)
          {
            v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v51)
            {
              v51 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            if (a7 == 2 && (*(v51 + 15) ^ *a3) <= 7)
            {
              sub_29ACFDF38(&unk_29B6EC4A0, 4u, &v73);
              *(&v70[0] + 1) = &off_2A2042F70;
              v52 = operator new(0x30uLL);
              v53 = v74;
              *v52 = v73;
              *(v52 + 1) = v53;
              v54 = v75;
              *(v52 + 4) = v75;
              if (v54)
              {
                v55 = (v54 - 16);
                if (*(v52 + 3))
                {
                  v55 = *(v52 + 3);
                }

                atomic_fetch_add_explicit(v55, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v52 + 10);
              *&v70[0] = v52;
              atomic_fetch_add_explicit(v52 + 10, 1u, memory_order_relaxed);
              sub_29A18606C(v71, v70);
              sub_29A186B14(v70);
              pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
            }

            v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v56)
            {
              v56 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            if (a7 == 2 && (*(v56 + 44) ^ *a3) <= 7)
            {
              sub_29ACFDF38(&unk_29B6EC8C4, 8u, &v73);
              *(&v70[0] + 1) = &off_2A2042F70;
              v57 = operator new(0x30uLL);
              v58 = v74;
              *v57 = v73;
              *(v57 + 1) = v58;
              v59 = v75;
              *(v57 + 4) = v75;
              if (v59)
              {
                v60 = (v59 - 16);
                if (*(v57 + 3))
                {
                  v60 = *(v57 + 3);
                }

                atomic_fetch_add_explicit(v60, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v57 + 10);
              *&v70[0] = v57;
              atomic_fetch_add_explicit(v57 + 10, 1u, memory_order_relaxed);
              sub_29A18606C(v71, v70);
              sub_29A186B14(v70);
              pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
            }
          }

          else
          {
            *(&v73 + 1) = &unk_2A2044C63;
            LODWORD(v73) = 1036831949;
            sub_29A18606C(v71, &v73);
            sub_29A186B14(&v73);
          }

          sub_29ACFB7C4(v76, 8, &v73);
          sub_29ACFB858(v77, 2, v70);
          v69 = 0;
          memset(v68, 0, sizeof(v68));
          v67 = &unk_2A2044C63;
          v66 = 1065353216;
          LODWORD(v63) = a7;
          LODWORD(v62) = 0;
          LODWORD(v61) = a6;
          pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddBasisCurves(a1, a2, &v73, v70, v68, v64, a3, a4, v72, v61, &v66, v62, v71, v63, a9);
        }

        *&v68[0] = 0x3ECCCCCD3DCCCCCDLL;
        sub_29ACFDF38(v68, 2u, &v73);
        *(&v70[0] + 1) = &off_2A2042F70;
        v43 = operator new(0x30uLL);
        v44 = v74;
        *v43 = v73;
        *(v43 + 1) = v44;
        v45 = v75;
        *(v43 + 4) = v75;
        if (v45)
        {
          v46 = (v45 - 16);
          if (*(v43 + 3))
          {
            v46 = *(v43 + 3);
          }

          atomic_fetch_add_explicit(v46, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v43 + 10);
        *&v70[0] = v43;
        atomic_fetch_add_explicit(v43 + 10, 1u, memory_order_relaxed);
        sub_29A18606C(v71, v70);
        sub_29A186B14(v70);
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }

      sub_29ACFDF38(&unk_29B6EC8C4, 8u, &v73);
      *(&v70[0] + 1) = &off_2A2042F70;
      v47 = operator new(0x30uLL);
      v48 = v74;
      *v47 = v73;
      *(v47 + 1) = v48;
      v49 = v75;
      *(v47 + 4) = v75;
      if (v49)
      {
        v50 = (v49 - 16);
        if (*(v47 + 3))
        {
          v50 = *(v47 + 3);
        }

        atomic_fetch_add_explicit(v50, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v47 + 10);
      *&v70[0] = v47;
      atomic_fetch_add_explicit(v47 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v71, v70);
      sub_29A186B14(v70);
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    sub_29ACFB7C4(&unk_29B6EC84C, 2, &v73);
    *(&v70[0] + 1) = &off_2A20433C0;
    v35 = operator new(0x30uLL);
    v36 = v74;
    *v35 = v73;
    *(v35 + 1) = v36;
    v37 = v75;
    *(v35 + 4) = v75;
    if (v37)
    {
      v38 = (v37 - 16);
      if (*(v35 + 3))
      {
        v38 = *(v35 + 3);
      }

      atomic_fetch_add_explicit(v38, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v35 + 10);
    *&v70[0] = v35;
    atomic_fetch_add_explicit(v35 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(v72, v70);
    sub_29A186B14(v70);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  sub_29ACFB7C4(&unk_29B6EC864, 8, &v73);
  *(&v70[0] + 1) = &off_2A20433C0;
  v39 = operator new(0x30uLL);
  v40 = v74;
  *v39 = v73;
  *(v39 + 1) = v40;
  v41 = v75;
  *(v39 + 4) = v75;
  if (v41)
  {
    v42 = (v41 - 16);
    if (*(v39 + 3))
    {
      v42 = *(v39 + 3);
    }

    atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v39 + 10);
  *&v70[0] = v39;
  atomic_fetch_add_explicit(v39 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(v72, v70);
  sub_29A186B14(v70);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29ACFDDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  sub_29A186B14(&a35);
  sub_29A186B14(&a37);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void *sub_29ACFDF38@<X0>(const void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_29A18E048(a3, a2);
  result = sub_29A18E624(a3);
  if (a2)
  {
    v8 = *(a3 + 32);

    return memmove(v8, a1, 4 * v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetCurveWrapMode(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  if (this + 7 == sub_29A55CDFC((this + 6)))
  {
    v9[0] = "hd/unitTestDelegate.cpp";
    v9[1] = "SetCurveWrapMode";
    v9[2] = 1675;
    v9[3] = "void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::SetCurveWrapMode(const SdfPath &, const TfToken &)";
    v10 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v9, "Could not find Rprim named %s.\n", v8, Text);
  }

  else
  {
    v9[0] = a2;
    if ((*a3 ^ *(sub_29AD04364(this + 6, a2, &unk_29B4D6118, v9) + 22)) >= 8)
    {
      v9[0] = a2;
      v6 = sub_29AD04364(this + 6, a2, &unk_29B4D6118, v9);
      sub_29A166F2C(v6 + 22, a3);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 256);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddPoints(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, float32x2_t *a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v58[2] = *MEMORY[0x29EDCA608];
  sub_29A193124(v50, 0x1F4uLL);
  v12 = 0;
  v13 = -6000;
  do
  {
    v48 = v12;
    v14 = *a3;
    v15 = a3[2];
    v16 = a3[4];
    v47 = a3[6];
    v17 = a3[1].f32[0];
    v18 = a3[3].f32[0];
    v19 = a3[5].f32[0];
    v20 = a3[7].f32[0];
    sub_29A1935CC(v50);
    v21 = __sincosf_stret(v48.f32[0]);
    v22 = __sincosf_stret(v48.f32[1]);
    v23 = (v51 + v13);
    v23[750] = vadd_f32(v47, vadd_f32(vadd_f32(vmul_n_f32(v14, v22.__cosval * v21.__sinval), vmul_n_f32(v15, v22.__sinval * v21.__sinval)), vmul_n_f32(v16, v21.__cosval)));
    v23[751].f32[0] = v20 + ((((v22.__cosval * v21.__sinval) * v17) + ((v22.__sinval * v21.__sinval) * v18)) + (v21.__cosval * v19));
    v12 = vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(v48), xmmword_29B6EC360));
    v13 += 12;
  }

  while (v13);
  v58[1] = 0;
  if (a4 > 1)
  {
    if (a4 == 3)
    {
      sub_29A193124(&v55, 0x1F4uLL);
      v30 = 0;
      for (i = 0; i != 500; ++i)
      {
        sub_29A1935CC(&v55);
        v32 = sin(i * 0.7);
        v33 = v32 * cos(vcvtd_n_f64_u32(i, 2uLL));
        *&v32 = fabsf(v33);
        v49 = cos(i * 0.3);
        v34.f64[0] = sin(i * 0.1);
        v35 = (v57 + v30);
        v34.f64[1] = v49;
        *v35 = vabs_f32(vcvt_f32_f64(v34));
        v35[1].i32[0] = LODWORD(v32);
        v30 += 12;
      }

      v54 = &off_2A20433C0;
      v36 = operator new(0x30uLL);
      v37 = v56;
      *v36 = v55;
      *(v36 + 1) = v37;
      v38 = v57;
      *(v36 + 4) = v57;
      if (v38)
      {
        v39 = (v38 - 16);
        if (*(v36 + 3))
        {
          v39 = *(v36 + 3);
        }

        atomic_fetch_add_explicit(v39, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v36 + 10);
      v53 = v36;
      atomic_fetch_add_explicit(v36 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v58, &v53);
      sub_29A186B14(&v53);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }
  }

  else
  {
    *(&v55 + 1) = &off_2A2042840 + 2;
    v24 = operator new(0x10uLL);
    __asm { FMOV            V0.2S, #1.0 }

    *v24 = _D0;
    v24[2] = 1065353216;
    atomic_store(0, v24 + 3);
    *&v55 = v24;
    atomic_fetch_add_explicit(v24 + 3, 1u, memory_order_relaxed);
    sub_29A18606C(v58, &v55);
    sub_29A186B14(&v55);
  }

  v54 = 0;
  if (a5 <= 1)
  {
    *(&v55 + 1) = &unk_2A2044C63;
    LODWORD(v55) = 1036831949;
    sub_29A18606C(&v53, &v55);
    sub_29A186B14(&v55);
    *(&v55 + 1) = &unk_2A2044C63;
    LODWORD(v55) = 1065353216;
    LODWORD(v46) = a5;
    pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddPoints(a1, a2, v50, v58, a4, &v55, 0, &v53, v46, a6);
  }

  sub_29A18E048(&v55, 0x1F4uLL);
  for (j = 0; j != 500; ++j)
  {
    sub_29A18E624(&v55);
    v41 = v57;
    v42 = fabs(sin(j * 0.1)) * 0.1;
    *(v41 + 4 * j) = v42;
  }

  v52[1] = &off_2A2042F70;
  v43 = operator new(0x30uLL);
  v44 = v56;
  *v43 = v55;
  *(v43 + 1) = v44;
  *(v43 + 4) = v41;
  v45 = *(v43 + 3);
  if (!v45)
  {
    v45 = (v41 - 16);
  }

  atomic_fetch_add_explicit(v45, 1uLL, memory_order_relaxed);
  atomic_store(0, v43 + 10);
  v52[0] = v43;
  atomic_fetch_add_explicit(v43 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(&v53, v52);
  sub_29A186B14(v52);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29ACFE510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddSubdiv(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  v8[0] = 2;
  v8[1] = 1;
  v9 = 0x300000002;
  v6 = 5;
  v7 = 1084227584;
  v5 = 1084227584;
  memset(&v4[2] + 8, 0, 232);
  sub_29ACFB858(v8, 1, v4);
  sub_29A27CF04(&v4[7], v4);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::PopulateBasicTestSet(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this)
{
  *v3 = xmmword_29B6EC370;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(v7, v3);
  sub_29A008E78(&__p, "/grid1");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v6, &__p);
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v3, v7);
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v2 + 1);
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddGrid(this, v6, 10, 10, v3, 1, 0, &v2);
}

void sub_29AD00694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, int a34)
{
  sub_29A1DCEA8(&a34);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::PopulateInvalidPrimsSet(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "/empty_mesh");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v5, __p);
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(&v3, 1.0);
  *&v4 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v4 + 1);
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddGrid(this, &v5, 0, 0, &v3, 1, 0, &v4);
}

void pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_GetPrimvarValue(pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v13 = 0;
  if (pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_FindPrimvar(this, a2, a3, &v13))
  {
    sub_29A186EF4(a4, (v13 + 8));
  }

  else
  {
    v11[0] = "hd/unitTestDelegate.cpp";
    v11[1] = "_GetPrimvarValue";
    v11[2] = 2057;
    v11[3] = "VtValue pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::_GetPrimvarValue(const SdfPath &, const TfToken &)";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v9 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v9)
    {
      v10 = (v9 + 16);
      if (*(v9 + 39) < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v11, "Rprim %s has no primvar named %s.\n", v8, Text, v10);
    a4[1] = 0;
  }
}

void sub_29AD01008(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1)
{
  sub_29AD03244(a1);

  operator delete(v1);
}

uint64_t sub_29AD01030(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, __int128 *a8, uint64_t *a9, char a10, char a11)
{
  v12 = *a2;
  *a1 = *a2;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *a3;
  *(a1 + 8) = *a3;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *a4;
  v15 = a4[1];
  v16 = a4[3];
  *(a1 + 48) = a4[2];
  *(a1 + 64) = v16;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  v17 = *(a5 + 16);
  *(a1 + 80) = *a5;
  *(a1 + 96) = v17;
  v18 = *(a5 + 32);
  *(a1 + 112) = v18;
  if (v18)
  {
    v19 = (v18 - 16);
    if (*(a1 + 104))
    {
      v19 = *(a1 + 104);
    }

    atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
  }

  v20 = *a6;
  *(a1 + 136) = a6[1];
  *(a1 + 120) = v20;
  v21 = *(a6 + 4);
  *(a1 + 152) = v21;
  if (v21)
  {
    v22 = (v21 - 16);
    if (*(a1 + 144))
    {
      v22 = *(a1 + 144);
    }

    atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
  }

  v23 = *(a7 + 16);
  *(a1 + 160) = *a7;
  *(a1 + 176) = v23;
  v24 = *(a7 + 32);
  *(a1 + 192) = v24;
  if (v24)
  {
    v25 = (v24 - 16);
    if (*(a1 + 184))
    {
      v25 = *(a1 + 184);
    }

    atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
  }

  v26 = *a8;
  *(a1 + 216) = a8[1];
  *(a1 + 200) = v26;
  v27 = *(a8 + 4);
  *(a1 + 232) = v27;
  if (v27)
  {
    v28 = (v27 - 16);
    if (*(a1 + 224))
    {
      v28 = *(a1 + 224);
    }

    atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
  }

  sub_29AB6F3BC(a1 + 240, a9);
  *(a1 + 472) = a10;
  *(a1 + 473) = a11;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  return a1;
}

void *sub_29AD011F0(void *result, void *a2)
{
  if (a2 != result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = *a2;
    *a2 = 0;
    v2 = result[1];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    result[1] = a2[1];
    a2[1] = 0;
    v3 = result[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    result[2] = a2[2];
    a2[2] = 0;
    v4 = result[3];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    result[3] = a2[3];
    a2[3] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

void sub_29AD0137C(void *a1)
{
  v1 = a1[62];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[61];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[60];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AB72D70();
}

uint64_t sub_29AD01450(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4, uint64_t *a5, __int128 *a6)
{
  v10 = *a2;
  *a1 = *a2;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 8), a3);
  *(a1 + 24) = *a4;
  v11 = *a5;
  *(a1 + 32) = *a5;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *a6;
  *(a1 + 56) = a6[1];
  *(a1 + 40) = v12;
  v13 = *(a6 + 4);
  *(a1 + 72) = v13;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(a1 + 64))
    {
      v14 = *(a1 + 64);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t sub_29AD01540(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v7 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v7;
  v8 = *(a2 + 32);
  *(result + 32) = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(result + 24))
    {
      v9 = *(result + 24);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a3;
  *(result + 56) = a3[1];
  *(result + 40) = v10;
  v11 = *(a3 + 4);
  *(result + 72) = v11;
  if (v11)
  {
    v12 = (v11 - 16);
    if (*(result + 64))
    {
      v12 = *(result + 64);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  v13 = *(a4 + 16);
  *(result + 80) = *a4;
  *(result + 96) = v13;
  v14 = *(a4 + 32);
  *(result + 112) = v14;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(result + 104))
    {
      v15 = *(result + 104);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  v16 = *a5;
  *(result + 120) = *a5;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 120) &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *a6;
  *(result + 128) = *a6;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 128) &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *a7;
  *(result + 136) = *a7;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 136) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29AD01650(uint64_t a1, int a2, char a3, char a4, char a5, char a6, char a7)
{
  *a1 = a2 & ~(a2 >> 31);
  *(a1 + 4) = a3;
  *(a1 + 5) = a4;
  *(a1 + 6) = a5;
  *(a1 + 7) = a6;
  *(a1 + 8) = a7;
  if (a2 < 0)
  {
    v9 = "hd/sceneDelegate.h";
    v10 = "HdDisplayStyle";
    v11 = 127;
    v12 = "pxrInternal__aapl__pxrReserved__::HdDisplayStyle::HdDisplayStyle(int, BOOL, BOOL, BOOL, BOOL, BOOL)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "negative refine level is not supported");
  }

  else if (a2 >= 9)
  {
    v9 = "hd/sceneDelegate.h";
    v10 = "HdDisplayStyle";
    v11 = 129;
    v12 = "pxrInternal__aapl__pxrReserved__::HdDisplayStyle::HdDisplayStyle(int, BOOL, BOOL, BOOL, BOOL, BOOL)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "refine level > 8 is not supported");
  }

  return a1;
}

void sub_29AD01714(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A1952C8(a1);
  v5 = *(v4 + 1);
  v20 = *v4;
  v21 = v5;
  v6 = v4[4];
  v22 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v21 + 1))
    {
      v7 = *(&v21 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A1948F8(v18, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v20 <= v10)
      {
        v16[0] = "hd/unitTestDelegate.cpp";
        v16[1] = "_ComputeFlattened";
        v16[2] = 981;
        v16[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
        v17 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Invalid indices");
      }

      else
      {
        sub_29A194CC8(&v20);
        v11 = v22;
        sub_29A194CC8(v18);
        v12 = &v11[24 * v10];
        v13 = v19 + v8;
        v14 = *v12;
        *(v13 + 16) = *(v12 + 2);
        *v13 = v14;
      }

      ++v9;
      v8 += 24;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2043530;
  sub_29A18ECC8(a3, v18);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AD018B4(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29AD02FE4(a1);
  v5 = *(v4 + 1);
  v20 = *v4;
  v21 = v5;
  v6 = v4[4];
  v22 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v21 + 1))
    {
      v7 = *(&v21 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A21BE0C(v18, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v20 <= v10)
      {
        v16[0] = "hd/unitTestDelegate.cpp";
        v16[1] = "_ComputeFlattened";
        v16[2] = 981;
        v16[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
        v17 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Invalid indices");
      }

      else
      {
        sub_29A21C6E0(&v20);
        v11 = v22;
        sub_29A21C6E0(v18);
        v12 = &v11[12 * v10];
        v13 = v19 + v8;
        v14 = *v12;
        *(v13 + 8) = *(v12 + 2);
        *v13 = v14;
      }

      ++v9;
      v8 += 12;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2048110;
  sub_29A18ECC8(a3, v18);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AD01A54(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A193090(a1);
  v5 = *(v4 + 1);
  v20 = *v4;
  v21 = v5;
  v6 = v4[4];
  v22 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v21 + 1))
    {
      v7 = *(&v21 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A193C60(v18, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v20 <= v10)
      {
        v16[0] = "hd/unitTestDelegate.cpp";
        v16[1] = "_ComputeFlattened";
        v16[2] = 981;
        v16[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
        v17 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Invalid indices");
      }

      else
      {
        sub_29A1940CC(&v20);
        v11 = v22;
        sub_29A1940CC(v18);
        v12 = &v11[6 * v10];
        v13 = v19 + v8;
        v14 = *v12;
        *(v13 + 4) = *(v12 + 2);
        *v13 = v14;
      }

      ++v9;
      v8 += 6;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2043478;
  sub_29A18ECC8(a3, v18);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29AD01BF4(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A196258(a1);
  v5 = *(v4 + 1);
  v17 = *v4;
  v18 = v5;
  v6 = v4[4];
  v19 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v18 + 1))
    {
      v7 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A195790(v15, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v17 <= v10)
      {
        v13[0] = "hd/unitTestDelegate.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 981;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Invalid indices");
      }

      else
      {
        sub_29A195BC4(&v17);
        v11 = v19;
        sub_29A195BC4(v15);
        *(v16 + v8) = *&v11[16 * v10];
      }

      ++v9;
      v8 += 16;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A20435E8;
  sub_29A18ECC8(a3, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AD01D80(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A1978C0(a1);
  v5 = *(v4 + 1);
  v20 = *v4;
  v21 = v5;
  v6 = v4[4];
  v22 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v21 + 1))
    {
      v7 = *(&v21 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A196EB8(v18, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v20 <= v10)
      {
        v16[0] = "hd/unitTestDelegate.cpp";
        v16[1] = "_ComputeFlattened";
        v16[2] = 981;
        v16[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
        v17 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Invalid indices");
      }

      else
      {
        sub_29A19722C(&v20);
        v11 = v22;
        sub_29A19722C(v18);
        v12 = &v11[32 * v10];
        v13 = (v19 + v8);
        v14 = *(v12 + 1);
        *v13 = *v12;
        v13[1] = v14;
      }

      ++v9;
      v8 += 32;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2043758;
  sub_29A18ECC8(a3, v18);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AD01F14(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29AD03114(a1);
  v5 = *(v4 + 1);
  v17 = *v4;
  v18 = v5;
  v6 = v4[4];
  v19 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v18 + 1))
    {
      v7 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A21DF14(v15, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v17 <= v10)
      {
        v13[0] = "hd/unitTestDelegate.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 981;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Invalid indices");
      }

      else
      {
        sub_29A21E784(&v17);
        v11 = v19;
        sub_29A21E784(v15);
        *(v16 + v8) = *&v11[16 * v10];
      }

      ++v9;
      v8 += 16;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2048280;
  sub_29A18ECC8(a3, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29AD020A0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A1956FC(a1);
  v6 = *(v5 + 1);
  v16 = *v5;
  v17 = v6;
  v7 = v5[4];
  v18 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v17 + 1))
    {
      v8 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  sub_29A1962EC(v14, *a2);
  if (*a2)
  {
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v16 <= v10)
      {
        v12[0] = "hd/unitTestDelegate.cpp";
        v12[1] = "_ComputeFlattened";
        v12[2] = 981;
        v12[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
        v13 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Invalid indices");
      }

      else
      {
        sub_29A1966EC(&v16);
        v11 = v18;
        sub_29A1966EC(v14);
        *(v15 + 8 * v9) = *&v11[8 * v10];
      }

      ++v9;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A20436A0;
  sub_29A18ECC8(a3, v14);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29AD02224(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29ACE3630(a1);
  v5 = *(v4 + 1);
  v22 = *v4;
  v23 = v5;
  v6 = v4[4];
  v24 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v23 + 1))
    {
      v7 = *(&v23 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A221F2C(v20, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v22 <= v10)
      {
        v18[0] = "hd/unitTestDelegate.cpp";
        v18[1] = "_ComputeFlattened";
        v18[2] = 981;
        v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
        v19 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Invalid indices");
      }

      else
      {
        sub_29A222868(&v22);
        v11 = v24;
        sub_29A222868(v20);
        v12 = &v11[72 * v10];
        v13 = v21 + v8;
        v14 = *(v12 + 1);
        v15 = *(v12 + 2);
        v16 = *(v12 + 3);
        *(v13 + 64) = *(v12 + 8);
        *(v13 + 32) = v15;
        *(v13 + 48) = v16;
        *v13 = *v12;
        *(v13 + 16) = v14;
      }

      ++v9;
      v8 += 72;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2048560;
  sub_29A18ECC8(a3, v20);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29AD023D0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A1988F4(a1);
  v5 = *(v4 + 1);
  v25 = *v4;
  v26 = v5;
  v6 = v4[4];
  v27 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v26 + 1))
    {
      v7 = *(&v26 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A197D6C(v23, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v25 <= v10)
      {
        v21[0] = "hd/unitTestDelegate.cpp";
        v21[1] = "_ComputeFlattened";
        v21[2] = 981;
        v21[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
        v22 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v21, 1, "Invalid indices");
      }

      else
      {
        sub_29A198240(&v25);
        v11 = v27;
        sub_29A198240(v23);
        v12 = &v11[128 * v10];
        v13 = (v24 + v8);
        v14 = *v12;
        v15 = v12[1];
        v16 = v12[3];
        v13[2] = v12[2];
        v13[3] = v16;
        v17 = v12[7];
        v19 = v12[4];
        v18 = v12[5];
        v13[6] = v12[6];
        v13[7] = v17;
        v13[4] = v19;
        v13[5] = v18;
        *v13 = v14;
        v13[1] = v15;
      }

      ++v9;
      v8 += 128;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2043810;
  sub_29A18ECC8(a3, v23);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29AD0257C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A9005EC(a1);
  v5 = *(v4 + 1);
  v17 = *v4;
  v18 = v5;
  v6 = v4[4];
  v19 = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(&v18 + 1))
    {
      v7 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  sub_29A213A04(v15, *a2);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v17 <= v10)
      {
        v13[0] = "hd/unitTestDelegate.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 981;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = std::string]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Invalid indices");
      }

      else
      {
        sub_29A214388(&v17);
        v11 = v19;
        sub_29A214388(v15);
        std::string::operator=((v16 + v8), &v11[24 * v10]);
      }

      ++v9;
      v8 += 24;
    }

    while (v9 < *a2);
  }

  a3[1] = off_2A20479C8;
  sub_29A18ECC8(a3, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29AD02710(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A190618(a1);
  v6 = *(v5 + 1);
  v16 = *v5;
  v17 = v6;
  v7 = v5[4];
  v18 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v17 + 1))
    {
      v8 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  sub_29A18FC40(v14, *a2);
  if (*a2)
  {
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v16 <= v10)
      {
        v12[0] = "hd/unitTestDelegate.cpp";
        v12[1] = "_ComputeFlattened";
        v12[2] = 981;
        v12[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = double]";
        v13 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Invalid indices");
      }

      else
      {
        sub_29A190088(&v16);
        v11 = *&v18[8 * v10];
        sub_29A190088(v14);
        *(v15 + 8 * v9) = v11;
      }

      ++v9;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A20430E0;
  sub_29A18ECC8(a3, v14);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AD0289C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A19D57C(a1);
  v6 = *(v5 + 1);
  v16 = *v5;
  v17 = v6;
  v7 = v5[4];
  v18 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v17 + 1))
    {
      v8 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  sub_29A19D6E4(v14, *a2);
  if (*a2)
  {
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v16 <= v10)
      {
        v12[0] = "hd/unitTestDelegate.cpp";
        v12[1] = "_ComputeFlattened";
        v12[2] = 981;
        v12[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = int]";
        v13 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Invalid indices");
      }

      else
      {
        sub_29A19DBEC(&v16);
        v11 = *&v18[4 * v10];
        sub_29A19DBEC(v14);
        *(v15 + 4 * v9) = v11;
      }

      ++v9;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2043D18;
  sub_29A18ECC8(a3, v14);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AD02A20(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A19BB3C(a1);
  v6 = *(v5 + 1);
  v16 = *v5;
  v17 = v6;
  v7 = v5[4];
  v18 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v17 + 1))
    {
      v8 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  sub_29A19C954(v14, *a2);
  if (*a2)
  {
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v16 <= v10)
      {
        v12[0] = "hd/unitTestDelegate.cpp";
        v12[1] = "_ComputeFlattened";
        v12[2] = 981;
        v12[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = unsigned int]";
        v13 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Invalid indices");
      }

      else
      {
        sub_29A19CEF8(&v16);
        v11 = *&v18[4 * v10];
        sub_29A19CEF8(v14);
        *(v15 + 4 * v9) = v11;
      }

      ++v9;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2043C60;
  sub_29A18ECC8(a3, v14);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AD02BA4(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A18ED70(a1);
  v6 = *(v5 + 1);
  v16 = *v5;
  v17 = v6;
  v7 = v5[4];
  v18 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v17 + 1))
    {
      v8 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  sub_29A18E048(v14, *a2);
  if (*a2)
  {
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v16 <= v10)
      {
        v12[0] = "hd/unitTestDelegate.cpp";
        v12[1] = "_ComputeFlattened";
        v12[2] = 981;
        v12[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = float]";
        v13 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Invalid indices");
      }

      else
      {
        sub_29A18E624(&v16);
        v11 = *&v18[4 * v10];
        sub_29A18E624(v14);
        *(v15 + 4 * v9) = v11;
      }

      ++v9;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2042F70;
  sub_29A18ECC8(a3, v14);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AD02D30(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A18DFB4(a1);
  v6 = *(v5 + 1);
  v16 = *v5;
  v17 = v6;
  v7 = v5[4];
  v18 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v17 + 1))
    {
      v8 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  sub_29A18EE04(v14, *a2);
  if (*a2)
  {
    v9 = 0;
    do
    {
      v10 = *(a2[4] + 4 * v9);
      if ((v10 & 0x80000000) != 0 || v16 <= v10)
      {
        v12[0] = "hd/unitTestDelegate.cpp";
        v12[1] = "_ComputeFlattened";
        v12[2] = 981;
        v12[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtValue &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        v13 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Invalid indices");
      }

      else
      {
        sub_29A18F540(&v16);
        v11 = v18;
        sub_29A18F540(v14);
        *(v15 + 2 * v9) = *&v11[2 * v10];
      }

      ++v9;
    }

    while (v9 < *a2);
  }

  a3[1] = &off_2A2043028;
  sub_29A18ECC8(a3, v14);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void **sub_29AD02EB4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FCEC4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AD02F48, &stru_2A2042128);
  }
}

double sub_29AD02F48@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29AD02F98;
  a1[2] = &stru_2A2042128;
  return result;
}

uint64_t sub_29AD02F98(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  return result;
}

void **sub_29AD02FE4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD9D0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AD03078, &stru_2A2042110);
  }
}

double sub_29AD03078@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29AD030C8;
  a1[2] = &stru_2A2042110;
  return result;
}

uint64_t sub_29AD030C8(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  return result;
}

void **sub_29AD03114(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FE614(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AD031A8, &stru_2A20420F8);
  }
}