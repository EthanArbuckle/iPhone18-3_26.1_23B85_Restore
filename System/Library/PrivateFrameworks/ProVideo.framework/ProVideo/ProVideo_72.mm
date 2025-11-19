void sub_25FFA5584(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Subtract>::BinaryOp(uint64_t a1)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264928);
  *a1 = &unk_287264850;
  *(a1 + 112) = &unk_287264908;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_28725E328;
  *(a1 + 96) = 0;
  PCSharedCount::PCSharedCount((a1 + 104));
  return a1;
}

void sub_25FFA5718(_Unwind_Exception *a1)
{
  v7 = v4;
  *v6 = v7;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

double ProShade::BinaryOp<ProShade::Multiply>::computeBinary(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  if (*a1 > 1)
  {
    if (*a1 != 2)
    {
      return ProShade::computeBinaryType<ProShade::Multiply,double>(a1, a2, a3);
    }

    v3 = *a2;
  }

  else
  {
    v3 = *a2;
    if (*a2 < 2)
    {
      ProShade::computeBinaryType<ProShade::Multiply,BOOL>(a1, a2, a3);
      return result;
    }
  }

  if (v3 <= 2)
  {
    ProShade::computeBinaryType<ProShade::Multiply,int>(a1, a2, a3);
    return result;
  }

  return ProShade::computeBinaryType<ProShade::Multiply,double>(a1, a2, a3);
}

BOOL ProShade::Multiply::simplify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[12] = *MEMORY[0x277D85DE8];
  if (ProShade::isZero(a1))
  {
    goto LABEL_2;
  }

  if (ProShade::isZero(a2) || ProShade::isOne(a1))
  {
    v6 = a3;
    v7 = a2;
    goto LABEL_6;
  }

  if (ProShade::isOne(a2))
  {
LABEL_2:
    v6 = a3;
    v7 = a1;
LABEL_6:
    ProShade::VarT<ProShade::Node>::operator=(v6, v7);
    return 1;
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    throw_PCNullPointerException(1);
  }

  result = ProShade::shapeIsVector(*(v9 + 28));
  if (result)
  {
    v11 = ProShade::VarT<ProShade::Node>::width(a1, v10);
    if (v11 > ProShade::VarT<ProShade::Node>::width(a2, v12))
    {
      v14 = ProShade::VarT<ProShade::Node>::width(a1, v13);
      if (v14 == 3)
      {
LABEL_18:
        if (ProShade::VarT<ProShade::Node>::width(a2, v15) == 2)
        {
          ProShade::VarT<ProShade::Node>::VarT(v17);
        }

        return 0;
      }

      if (v14 == 4)
      {
        v16 = ProShade::VarT<ProShade::Node>::width(a2, v15);
        if (v16 == 3)
        {
          ProShade::VarT<ProShade::Node>::VarT(v17);
        }

        if (v16 == 2)
        {
          ProShade::VarT<ProShade::Node>::VarT(v17);
        }

        goto LABEL_18;
      }
    }

    return 0;
  }

  return result;
}

void sub_25FFA5BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount a13, void *a14, uint64_t a15, uint64_t a16, PCSharedCount a17, void *a18)
{
  a18 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18 + 3);
  PCSharedCount::~PCSharedCount(&a13);
  a14 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a17);
  *(v19 - 72) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v19 - 48));
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Multiply>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264BA0);
  *a1 = &unk_287264AC8;
  *(a1 + 112) = &unk_287264B80;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v6 = ProShade::Multiply::resultShape(*(a2 + 7), *(a3 + 7));
  v7 = *(a2 + 6);
  if (v7 <= *(a3 + 6))
  {
    v7 = *(a3 + 6);
  }

  *(a1 + 24) = v7;
  *(a1 + 28) = v6;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FFA5E98(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Multiply,BOOL>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v9 = v8;
  v10 = *a1;
  if (v10 == 1)
  {
    v11 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v11 = &v24 - v12;
    bzero(&v24 - v12, v13);
    v8 = ProShade::copyData(v10, a1 + 2, 1, v11, Size);
  }

  v14 = *a2;
  if (v14 == 1)
  {
    v15 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v15 = &v24 - v16;
    bzero(&v24 - v16, v17);
    ProShade::copyData(v14, a2 + 2, 1, v15, v9);
  }

  result = ProShade::Multiply::computeBinaryType<BOOL>(v11, v15, a1, a2, a3);
  if (!result)
  {
    v20 = a1[1];
    if (v20 != a2[1])
    {
      ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v19);
    }

    ProShade::Value::set(a3, 1, v20);
    result = ProShade::shapeIsVector(a1[1]);
    v22 = a1[1] == 1 || result;
    if (v22 != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v26, "not implemented yet");
      PCString::PCString(&v25, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
      PCException::PCException(exception, &v26, &v25, 426);
      *exception = &unk_2871F6178;
    }

    if (Size >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("* operator doesn't apply to BOOL", v21);
    }
  }

  return result;
}

void sub_25FFA6170(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Multiply,int>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v9 = v8;
  v10 = *a1;
  if (v10 == 2)
  {
    v11 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v11 = &v28 - v12;
    bzero(&v28 - v12, v13);
    v8 = ProShade::copyData(v10, a1 + 2, 2, v11, Size);
  }

  v14 = *a2;
  if (v14 == 2)
  {
    v15 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v15 = &v28 - v16;
    bzero(&v28 - v16, v17);
    ProShade::copyData(v14, a2 + 2, 2, v15, v9);
  }

  result = ProShade::Multiply::computeBinaryType<int>(v11, v15, a1, a2, a3);
  if (!result)
  {
    v20 = a1[1];
    if (v20 != a2[1])
    {
      ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v19);
    }

    ProShade::Value::set(a3, 2, v20);
    result = ProShade::shapeIsVector(a1[1]);
    v21 = a1[1] == 1 || result;
    if (v21 != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v30, "not implemented yet");
      PCString::PCString(&v29, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
      PCException::PCException(exception, &v30, &v29, 426);
      *exception = &unk_2871F6178;
    }

    if (Size >= 1)
    {
      v22 = (a3 + 16);
      v23 = Size;
      do
      {
        v25 = *v11;
        v11 += 4;
        v24 = v25;
        v26 = *v15;
        v15 += 4;
        *v22++ = v26 * v24;
        --v23;
      }

      while (v23);
    }
  }

  return result;
}

void sub_25FFA6418(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

double ProShade::computeBinaryType<ProShade::Multiply,double>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v9 = v8;
  v10 = *a1;
  if (v10 == 3)
  {
    v11 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v11 = &v29 - v12;
    bzero(&v29 - v12, v13);
    v8 = ProShade::copyData(v10, a1 + 2, 3, v11, Size);
  }

  v14 = *a2;
  if (v14 == 3)
  {
    v15 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v15 = &v29 - v16;
    bzero(&v29 - v16, v17);
    ProShade::copyData(v14, a2 + 2, 3, v15, v9);
  }

  if (!ProShade::Multiply::computeBinaryType<double>(v11, v15, a1, a2, a3))
  {
    v20 = a1[1];
    if (v20 != a2[1])
    {
      ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v18);
    }

    ProShade::Value::set(a3, 3, v20);
    IsVector = ProShade::shapeIsVector(a1[1]);
    v22 = a1[1] == 1 || IsVector;
    if (v22 != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v31, "not implemented yet");
      PCString::PCString(&v30, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
      PCException::PCException(exception, &v31, &v30, 426);
      *exception = &unk_2871F6178;
    }

    if (Size >= 1)
    {
      v23 = (a3 + 16);
      v24 = Size;
      do
      {
        v25 = *v11;
        v11 += 8;
        v26 = v25;
        v27 = *v15;
        v15 += 8;
        result = v26 * v27;
        *v23++ = result;
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

void sub_25FFA66C0(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

BOOL ProShade::Multiply::computeBinaryType<BOOL>(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v125 = *MEMORY[0x277D85DE8];
  if (!ProShade::shapeIsMatrix(*(a3 + 4)) || !ProShade::shapeIsVector(*(a4 + 4)) || (v11 = ProShade::shapeGetWidth(*(a3 + 4), v10), v11 != ProShade::shapeGetWidth(*(a4 + 4), v12)))
  {
    IsVector = ProShade::shapeIsVector(*(a3 + 4));
    v27 = *(a4 + 4);
    if (IsVector && v27 == 1)
    {
      Width = ProShade::shapeGetWidth(*(a3 + 4), v25);
      if (Width > 4)
      {
        PCGenVector<BOOL>::PCGenVector(&v120, a1, Width, 0);
        v55 = *a2;
        v56 = v121;
        PCGenBlockRef<BOOL>::PCGenBlockRef(&v115, v121);
        v116 = v56;
        v117 = 1;
        v57 = v115;
        v118 = v115;
        v58 = v123;
        v59 = v121;
        v60 = v122;
        if (v122 == 1)
        {
          if (v121 >= 1)
          {
            v61 = v115;
            do
            {
              v62 = *v58++;
              *v61++ = v62 & v55;
              --v59;
            }

            while (v59);
          }
        }

        else if (v121 >= 1)
        {
          v86 = v115;
          do
          {
            *v86++ = *v58 & v55;
            v58 += v60;
            --v59;
          }

          while (v59);
        }

        ProShade::Value::set(a5, 1, *(a3 + 4), v57);
LABEL_72:
        v95 = v115;
        if (v115)
        {
          v96 = *(v115 - 1) - 1;
          *(v115 - 1) = v96;
          if (!v96)
          {
            MEMORY[0x2666E9ED0](v95 - 8, 0x1000C8077774924);
          }
        }

        v97 = v120;
        if (!v120)
        {
          return 1;
        }

        goto LABEL_76;
      }

      if (Width >= 1)
      {
        v38 = *a2;
        v39 = Width;
        v40 = &v120;
        do
        {
          v41 = *a1++;
          *v40++ = v41 * v38;
          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v30 = ProShade::shapeIsVector(v27);
      v31 = *(a3 + 4);
      if (v30 && v31 == 1)
      {
        v32 = ProShade::shapeGetWidth(*(a4 + 4), v29);
        if (v32 <= 4)
        {
          if (v32 >= 1)
          {
            v33 = *a1;
            v34 = v32;
            v35 = &v120;
            do
            {
              v36 = *a2++;
              *v35++ = v36 * v33;
              --v34;
            }

            while (v34);
          }

          goto LABEL_10;
        }

        PCGenVector<BOOL>::PCGenVector(&v120, a2, v32, 0);
        v78 = *a1;
        v79 = v121;
        PCGenBlockRef<BOOL>::PCGenBlockRef(&v115, v121);
        v116 = v79;
        v117 = 1;
        v80 = v115;
        v118 = v115;
        v81 = v123;
        v82 = v121;
        v83 = v122;
        if (v122 == 1)
        {
          if (v121 >= 1)
          {
            v84 = v115;
            do
            {
              v85 = *v81++;
              *v84++ = v85 & v78;
              --v82;
            }

            while (v82);
          }
        }

        else if (v121 >= 1)
        {
          v88 = v115;
          do
          {
            *v88++ = *v81 & v78;
            v81 += v83;
            --v82;
          }

          while (v82);
        }

        ProShade::Value::set(a5, 1, *(a4 + 4), v80);
        goto LABEL_72;
      }

      if (!ProShade::shapeIsVector(v31) || !ProShade::shapeIsMatrix(*(a4 + 4)) || (v43 = ProShade::shapeGetWidth(*(a3 + 4), v42), v43 != ProShade::shapeGetWidth(*(a4 + 4), v44)))
      {
        result = ProShade::shapeIsMatrix(*(a3 + 4));
        if (!result)
        {
          return result;
        }

        v65 = ProShade::shapeGetWidth(*(a3 + 4), v64);
        v66 = v65;
        if (v65 <= 4)
        {
          MEMORY[0x28223BE20](v65);
          v68 = &v104 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (v66 >= 1)
          {
            v69 = 0;
            do
            {
              v70 = 0;
              v71 = a2;
              do
              {
                v72 = 0;
                v73 = v66;
                v74 = v71;
                v75 = a1;
                do
                {
                  v76 = *v75++;
                  v77 = (*v74 * v76) | v72;
                  v72 = v77 != 0;
                  v74 += v66;
                  --v73;
                }

                while (v73);
                v68[v69 * v66 + v70++] = v77;
                ++v71;
              }

              while (v70 != v66);
              ++v69;
              a1 += v66;
            }

            while (v69 != v66);
          }

          ProShade::Value::set(a5, 1, *(a3 + 4), v68);
          return 1;
        }

        PCGenMatrix<BOOL>::PCGenMatrix(&v120, a1, v65, v65, 1, 0);
        PCGenMatrix<BOOL>::PCGenMatrix(&v115, a2, v66, v66, 1, 0);
        PCGenMatrix<BOOL>::PCGenMatrix(&v111, a5 + 16, v66, v66, 1, 0);
        v89 = v121;
        v90 = v117;
        PCGenBlockRef<BOOL>::PCGenBlockRef(&v105, v117 * v121);
        v106 = v89;
        v107 = v90;
        v108 = 1;
        v109 = v89;
        v110 = v105;
        MMultiplyMatrices<BOOL>(v121, v122, v117, v124, v123, SHIDWORD(v123), v119, v118, SHIDWORD(v118), v105, 1, v89);
        PCGenMatrix<BOOL>::set<BOOL>(&v111, &v105);
        v91 = v105;
        if (v105)
        {
          v92 = *(v105 - 4) - 1;
          *(v105 - 4) = v92;
          if (!v92)
          {
            MEMORY[0x2666E9ED0](v91 - 8, 0x1000C8077774924);
          }
        }

        goto LABEL_69;
      }

      v46 = ProShade::shapeGetWidth(*(a4 + 4), v45);
      v47 = v46;
      if (v46 > 4)
      {
        PCGenVector<BOOL>::PCGenVector(&v115, a1, v46, 0);
        PCGenMatrix<BOOL>::PCGenMatrix(&v120, a2, v47, v47, 1, 0);
        v99 = v122;
        PCGenBlockRef<BOOL>::PCGenBlockRef(&v111, v122);
        v112 = v99;
        v113 = 1;
        v114 = v111;
        MMultiplyMatrices<BOOL>(1, v116, v122, v118, 1, v117, v124, v123, SHIDWORD(v123), v111, 1, 1);
        ProShade::Value::set(a5, 1, *(a3 + 4), v114);
        v100 = v111;
        if (v111)
        {
          v101 = *(v111 - 1) - 1;
          *(v111 - 1) = v101;
          if (!v101)
          {
            MEMORY[0x2666E9ED0](v100 - 8, 0x1000C8077774924);
          }
        }

        v102 = v120;
        if (v120)
        {
          v103 = *(v120 - 1) - 1;
          *(v120 - 1) = v103;
          if (!v103)
          {
            MEMORY[0x2666E9ED0](v102 - 8, 0x1000C8077774924);
          }
        }

        v97 = v115;
        if (!v115)
        {
          return 1;
        }

LABEL_76:
        v98 = *(v97 - 1) - 1;
        *(v97 - 1) = v98;
        if (!v98)
        {
          MEMORY[0x2666E9ED0](v97 - 8, 0x1000C8077774924);
        }

        return 1;
      }

      if (v46 >= 1)
      {
        v48 = 0;
        do
        {
          v49 = 0;
          v50 = v46;
          v51 = a1;
          v52 = a2;
          do
          {
            v53 = *v51++;
            v54 = (*v52 * v53) | v49;
            v49 = v54 != 0;
            v52 += v46;
            --v50;
          }

          while (v50);
          *(&v120 + v48++) = v54;
          ++a2;
        }

        while (v48 != v46);
      }
    }

    ProShade::Value::set(a5, 1, *(a3 + 4), &v120);
    return 1;
  }

  v14 = ProShade::shapeGetWidth(*(a3 + 4), v13);
  v15 = v14;
  if (v14 > 4)
  {
    PCGenMatrix<BOOL>::PCGenMatrix(&v120, a1, v14, v14, 1, 0);
    PCGenVector<BOOL>::PCGenVector(&v115, a2, v15, 0);
    v87 = v121;
    PCGenBlockRef<BOOL>::PCGenBlockRef(&v111, v121);
    v112 = v87;
    v113 = 1;
    v114 = v111;
    MMultiplyMatrices<BOOL>(v121, v122, 1, v124, v123, SHIDWORD(v123), v118, v117, 1, v111, 1, 1);
    ProShade::Value::set(a5, 1, *(a4 + 4), v114);
LABEL_69:
    v93 = v111;
    if (v111)
    {
      v94 = *(v111 - 1) - 1;
      *(v111 - 1) = v94;
      if (!v94)
      {
        MEMORY[0x2666E9ED0](v93 - 8, 0x1000C8077774924);
      }
    }

    goto LABEL_72;
  }

  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = 0;
      v18 = v14;
      v19 = a2;
      v20 = a1;
      do
      {
        v22 = *v20++;
        v21 = v22;
        v23 = *v19++;
        v24 = (v23 * v21) | v17;
        v17 = v24 != 0;
        --v18;
      }

      while (v18);
      *(&v120 + v16++) = v24;
      a1 += v14;
    }

    while (v16 != v14);
  }

LABEL_10:
  ProShade::Value::set(a5, 1, *(a4 + 4), &v120);
  return 1;
}

void sub_25FFA6F10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    v4 = *(v3 - 4) - 1;
    *(v3 - 4) = v4;
    if (!v4)
    {
      MEMORY[0x2666E9ED0](v3 - 8, 0x1000C8077774924);
    }
  }

  v5 = *(v1 - 88);
  if (v5)
  {
    v6 = *(v5 - 4) - 1;
    *(v5 - 4) = v6;
    if (!v6)
    {
      MEMORY[0x2666E9ED0](v5 - 8, 0x1000C8077774924);
    }
  }

  v7 = *(v1 - 120);
  if (v7)
  {
    v8 = *(v7 - 4) - 1;
    *(v7 - 4) = v8;
    if (!v8)
    {
      MEMORY[0x2666E9ED0](v7 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCGenMatrix<BOOL>::set<BOOL>(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4 != *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenMatrix row mismatch %d != %d", &v31, *(v3 + 8), *(a2 + 8));
      PCException::PCException(exception, &v31);
      *exception = &unk_2872074D0;
    }

    v5 = *(result + 12);
    if (v5 != *(a2 + 12))
    {
      v30 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenMatrix col mismatch %d != %d", &v31, *(v3 + 12), *(a2 + 12));
      PCException::PCException(v30, &v31);
      *v30 = &unk_2872074D0;
    }

    v6 = *result;
    if (!*result)
    {
      result = PCGenMatrix<BOOL>::resize(result, v4, v5, *(result + 20) == 1);
      v6 = *v3;
    }

    if (*a2 == v6)
    {
      v31.var0 = 0;
      v32 = 0;
      v33 = 0x100000001;
      v34 = 0;
      result = PCGenMatrix<BOOL>::set<BOOL>(&v31, a2);
      v17 = *(v3 + 8);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = *(v3 + 12);
        v20 = v34;
        v22 = v33;
        v21 = SHIDWORD(v33);
        do
        {
          if (v19 >= 1)
          {
            v23 = *(v3 + 20);
            v24 = (*(v3 + 24) + v18 * *(v3 + 16));
            v25 = v19;
            v26 = v20;
            do
            {
              result = *v26;
              *v24 = result;
              v24 += v23;
              v26 += v21;
              --v25;
            }

            while (v25);
          }

          ++v18;
          v20 += v22;
        }

        while (v18 != v17);
      }

      var0 = v31.var0;
      if (v31.var0)
      {
        v28 = HIDWORD(v31.var0[-1].length) - 1;
        HIDWORD(v31.var0[-1].length) = v28;
        if (!v28)
        {
          return MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
        }
      }
    }

    else
    {
      v7 = *(v3 + 8);
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = *(v3 + 12);
        v10 = *(a2 + 24);
        v12 = *(a2 + 16);
        v11 = *(a2 + 20);
        do
        {
          if (v9 >= 1)
          {
            v13 = *(v3 + 20);
            v14 = (*(v3 + 24) + v8 * *(v3 + 16));
            v15 = v9;
            v16 = v10;
            do
            {
              result = *v16;
              *v14 = result;
              v14 += v13;
              v16 += v11;
              --v15;
            }

            while (v15);
          }

          ++v8;
          v10 += v12;
        }

        while (v8 != v7);
      }
    }
  }

  return result;
}

uint64_t PCGenMatrix<BOOL>::PCGenMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  if (a5)
  {
    v7 = a4;
  }

  else
  {
    v7 = 1;
  }

  if (a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  *(a1 + 16) = v7;
  *(a1 + 20) = v8;
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix number of rows %d must be nonnegative", &v16, a3);
    PCException::PCException(exception, &v16);
    *exception = &unk_2872074D0;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v15 = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix number of cols %d must be nonnegative", &v16, a4);
    PCException::PCException(v15, &v16);
    *v15 = &unk_2872074D0;
  }

  *(a1 + 24) = a2;
  if (a6)
  {
    PCGenMatrix<BOOL>::copy(a1, 0, &v16);
    var0 = v16.var0;
    if (&v16 != a1)
    {
      *(a1 + 8) = v17;
      if (*a1 != var0)
      {
        PCGenBlockRef<double>::deref(a1);
        *a1 = var0;
        if (var0)
        {
          ++HIDWORD(var0[-1].length);
        }
      }

      var0 = v16.var0;
      *(a1 + 24) = v18;
    }

    if (var0)
    {
      v11 = HIDWORD(var0[-1].length) - 1;
      HIDWORD(var0[-1].length) = v11;
      if (!v11)
      {
        MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
      }
    }
  }

  return a1;
}

void sub_25FFA753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11)
{
  if (a11.var0)
  {
    v13 = HIDWORD(a11.var0[-1].length) - 1;
    HIDWORD(a11.var0[-1].length) = v13;
    if (!v13)
    {
      MEMORY[0x2666E9ED0](&a11.var0[-1].length, 0x1000C8077774924);
    }
  }

  PCGenBlockRef<double>::deref(v11);
  _Unwind_Resume(a1);
}

uint64_t PCGenMatrix<BOOL>::copy@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  PCGenBlockRef<BOOL>::PCGenBlockRef(a3, v7 * v6);
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  *(a3 + 16) = v8;
  *(a3 + 20) = v9;
  *(a3 + 24) = *a3;
  return PCGenMatrix<BOOL>::set<BOOL>(a3, a1);
}

void *PCGenBlockRef<BOOL>::PCGenBlockRef(void *result, int a2)
{
  if (a2)
  {
    operator new[]();
  }

  *result = 0;
  return result;
}

uint64_t PCGenVector<BOOL>::PCGenVector(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = 1;
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenVector length %d must be nonnegative", &v10, a3);
    PCException::PCException(exception, &v10);
    *exception = &unk_2872074D0;
  }

  *(a1 + 16) = a2;
  if (a4)
  {
    PCGenBlockRef<BOOL>::PCGenBlockRef(&v10, a3);
    v11 = a3 | 0x100000000;
    var0 = v10.var0;
    PCGenVector<BOOL>::set<BOOL>(&v10, a1);
    v6 = v10.var0;
    if (&v10 != a1)
    {
      *(a1 + 8) = v11;
      if (*a1 != v6)
      {
        PCGenBlockRef<double>::deref(a1);
        *a1 = v6;
        if (v6)
        {
          ++HIDWORD(v6[-1].length);
        }
      }

      v6 = v10.var0;
      *(a1 + 16) = var0;
    }

    if (v6)
    {
      v7 = HIDWORD(v6[-1].length) - 1;
      HIDWORD(v6[-1].length) = v7;
      if (!v7)
      {
        MEMORY[0x2666E9ED0](&v6[-1].length, 0x1000C8077774924);
      }
    }
  }

  return a1;
}

void sub_25FFA7824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  if (a10.var0)
  {
    v12 = HIDWORD(a10.var0[-1].length) - 1;
    HIDWORD(a10.var0[-1].length) = v12;
    if (!v12)
    {
      MEMORY[0x2666E9ED0](&a10.var0[-1].length, 0x1000C8077774924);
    }
  }

  PCGenBlockRef<double>::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t PCGenVector<BOOL>::set<BOOL>(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 8);
    if (v4 != *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenVector length mismatch %d != %d", &v19, *(a1 + 8), *(a2 + 8));
      PCException::PCException(exception, &v19);
      *exception = &unk_2872074D0;
    }

    if (*a1)
    {
      v5 = *a2 == *a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      PCGenBlockRef<BOOL>::PCGenBlockRef(&v19, *(a1 + 8));
      v20 = v4;
      v21 = 1;
      var0 = v19.var0;
      PCGenVector<BOOL>::set<BOOL>(&v19, a2);
      v10 = *(a1 + 8);
      if (v10 >= 1)
      {
        v11 = var0;
        v12 = v21;
        v13 = *(a1 + 16);
        v14 = *(a1 + 12);
        do
        {
          *v13 = v11->isa;
          v13 += v14;
          v11 = (v11 + v12);
          --v10;
        }

        while (v10);
      }

      v15 = v19.var0;
      if (v19.var0)
      {
        v16 = HIDWORD(v19.var0[-1].length) - 1;
        HIDWORD(v19.var0[-1].length) = v16;
        if (!v16)
        {
          MEMORY[0x2666E9ED0](&v15[-1].length, 0x1000C8077774924);
        }
      }
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 12);
      v8 = *(a1 + 16);
      v9 = *(a1 + 12);
      do
      {
        *v8 = *v6;
        v8 += v9;
        v6 += v7;
        --v4;
      }

      while (v4);
    }
  }

  return a1;
}

uint64_t MMultiplyMatrices<BOOL>(uint64_t result, int a2, int a3, _BYTE *a4, int a5, int a6, _BYTE *a7, int a8, int a9, uint64_t a10, int a11, int a12)
{
  if (result >= 1)
  {
    v12 = 0;
    v13 = a5;
    v14 = result;
    result = a3;
    while (a3 < 1)
    {
LABEL_26:
      ++v12;
      a4 += v13;
      if (v12 == v14)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = a7;
    while (1)
    {
      if (a6 == 1)
      {
        if (a8 == 1)
        {
          if (a2)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              v18 = ((v16[v17] * a4[v17]) | v18) != 0;
              ++v17;
            }

            while (a2 != v17);
            goto LABEL_25;
          }
        }

        else if (a2 >= 1)
        {
          v21 = 0;
          v18 = 0;
          v22 = v16;
          do
          {
            v18 = ((*v22 * a4[v21++]) | v18) != 0;
            v22 += a8;
          }

          while (a2 != v21);
          goto LABEL_25;
        }
      }

      else if (a8 == 1)
      {
        if (a2 >= 1)
        {
          v19 = 0;
          v18 = 0;
          v20 = a4;
          do
          {
            v18 = ((v16[v19++] * *v20) | v18) != 0;
            v20 += a6;
          }

          while (a2 != v19);
          goto LABEL_25;
        }
      }

      else if (a2 >= 1)
      {
        v18 = 0;
        v23 = a4;
        v24 = v16;
        v25 = a2;
        do
        {
          v18 = ((*v24 * *v23) | v18) != 0;
          v24 += a8;
          v23 += a6;
          --v25;
        }

        while (v25);
        goto LABEL_25;
      }

      v18 = 0;
LABEL_25:
      *(a10 + v12 * a11 + v15 * a12) = v18;
      ++v15;
      v16 += a9;
      if (v15 == a3)
      {
        goto LABEL_26;
      }
    }
  }

  return result;
}

_DWORD *PCGenMatrix<BOOL>::resize(_DWORD *result, int a2, int a3, int a4)
{
  v6 = result;
  v8 = result[2];
  v7 = result[3];
  v10 = v8 != a2 || v7 != a3;
  if (a4)
  {
    if (a4 == 1)
    {
      if (result[5] == 1 && result[4] == v7 && !v10)
      {
        return result;
      }
    }

    else if (!v10)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    if (result[4] == 1 && result[5] == v8 && !v10)
    {
      return result;
    }

    v11 = 1;
  }

  result = PCGenBlockRef<BOOL>::PCGenBlockRef(&v32, a3 * a2);
  *&v33 = __PAIR64__(a3, a2);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = 1;
  }

  *(&v33 + 1) = __PAIR64__(v13, v12);
  v14 = *(v6 + 12);
  if (a2 >= *(v6 + 8))
  {
    v15 = *(v6 + 8);
  }

  else
  {
    v15 = a2;
  }

  v16 = v32;
  v34 = v32;
  if (a3 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = a3;
  }

  v18 = v15 - 1;
  if (v15 >= 1 && v17 >= 1)
  {
    v30[0] = 0;
    v30[1] = v15 - 1;
    v20 = v17 - 1;
    v29[0] = 0;
    v29[1] = v17 - 1;
    PCGenMatrix<BOOL>::operator()(result, v30, v29, v31);
    v27[0] = 0;
    v27[1] = v18;
    v26[0] = 0;
    v26[1] = v20;
    PCGenMatrix<BOOL>::operator()(v6, v27, v26, v28);
    result = PCGenMatrix<BOOL>::set<BOOL>(v31, v28);
    v21 = v28[0];
    if (v28[0])
    {
      v22 = *(v28[0] - 4) - 1;
      *(v28[0] - 4) = v22;
      if (!v22)
      {
        result = MEMORY[0x2666E9ED0](v21 - 8, 0x1000C8077774924);
      }
    }

    v23 = v31[0];
    if (v31[0])
    {
      v24 = *(v31[0] - 4) - 1;
      *(v31[0] - 4) = v24;
      if (!v24)
      {
        result = MEMORY[0x2666E9ED0](v23 - 8, 0x1000C8077774924);
      }
    }

    v16 = v32;
  }

  if (&v32 != v6)
  {
    *(v6 + 8) = v33;
    if (*v6 != v16)
    {
      result = PCGenBlockRef<double>::deref(v6);
      *v6 = v16;
      if (v16)
      {
        ++*(v16 - 4);
      }
    }

    v16 = v32;
    *(v6 + 24) = v34;
  }

  if (v16)
  {
    v25 = *(v16 - 4) - 1;
    *(v16 - 4) = v25;
    if (!v25)
    {
      return MEMORY[0x2666E9ED0](v16 - 8, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_25FFA7E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 80);
  if (v19)
  {
    v20 = *(v19 - 4) - 1;
    *(v19 - 4) = v20;
    if (!v20)
    {
      MEMORY[0x2666E9ED0](v19 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCGenMatrix<BOOL>::operator()@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  PCGenMatrix<BOOL>::checkRowIndex(a1, *a2);
  PCGenMatrix<BOOL>::checkRowIndex(a1, a2[1]);
  PCGenMatrix<BOOL>::checkColIndex(a1, *a3);
  result = PCGenMatrix<BOOL>::checkColIndex(a1, a3[1]);
  v10 = *a2;
  v9 = a2[1];
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a1 + 16);
  v14 = *(a1 + 20);
  v15 = *(a1 + 24);
  v16 = *a1;
  *a4 = *a1;
  if (v16)
  {
    ++*(v16 - 4);
  }

  *(a4 + 8) = v9 - v10 + 1;
  *(a4 + 12) = v11 - v12 + 1;
  *(a4 + 16) = v13;
  *(a4 + 20) = v14;
  *(a4 + 24) = v15 + v13 * v10 + v14 * v12;
  return result;
}

uint64_t PCGenMatrix<BOOL>::checkRowIndex(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || *(result + 8) <= a2)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix row %d out of range 0..%d", &v5, a2, (*(v3 + 8) - 1));
    PCException::PCException(exception, &v5);
    *exception = &unk_2872074D0;
  }

  return result;
}

uint64_t PCGenMatrix<BOOL>::checkColIndex(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || *(result + 12) <= a2)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix col %d out of range 0..%d", &v5, a2, (*(v3 + 12) - 1));
    PCException::PCException(exception, &v5);
    *exception = &unk_2872074D0;
  }

  return result;
}

BOOL ProShade::Multiply::computeBinaryType<int>(int *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v123 = *MEMORY[0x277D85DE8];
  if (!ProShade::shapeIsMatrix(*(a3 + 4)) || !ProShade::shapeIsVector(*(a4 + 4)) || (v11 = ProShade::shapeGetWidth(*(a3 + 4), v10), v11 != ProShade::shapeGetWidth(*(a4 + 4), v12)))
  {
    IsVector = ProShade::shapeIsVector(*(a3 + 4));
    v26 = *(a4 + 4);
    if (IsVector && v26 == 1)
    {
      Width = ProShade::shapeGetWidth(*(a3 + 4), v24);
      if (Width > 4)
      {
        PCGenVector<int>::PCGenVector(&v118, a1, Width, 0);
        v53 = *a2;
        v54 = v119;
        PCGenBlockRef<int>::PCGenBlockRef(&v113, v119);
        v114 = v54;
        v115 = 1;
        v55 = v113;
        v116 = v113;
        v56 = v121;
        v57 = v119;
        if (v120 == 1)
        {
          if (v119 >= 1)
          {
            v58 = v113;
            do
            {
              v59 = *v56++;
              *v58++ = v59 * v53;
              --v57;
            }

            while (v57);
          }
        }

        else if (v119 >= 1)
        {
          v82 = 4 * v120;
          v83 = v113;
          do
          {
            *v83++ = *v56 * v53;
            v56 = (v56 + v82);
            --v57;
          }

          while (v57);
        }

        ProShade::Value::set(a5, 2, *(a3 + 4), v55);
LABEL_72:
        v93 = v113;
        if (v113)
        {
          v94 = *(v113 - 1) - 1;
          *(v113 - 1) = v94;
          if (!v94)
          {
            MEMORY[0x2666E9ED0](v93 - 2, 0x1000C8077774924);
          }
        }

        v95 = v118;
        if (!v118)
        {
          return 1;
        }

        goto LABEL_76;
      }

      if (Width >= 1)
      {
        v37 = *a2;
        v38 = Width;
        v39 = &v118;
        do
        {
          v40 = *a1++;
          *v39++ = v40 * v37;
          --v38;
        }

        while (v38);
      }
    }

    else
    {
      v29 = ProShade::shapeIsVector(v26);
      v30 = *(a3 + 4);
      if (v29 && v30 == 1)
      {
        v31 = ProShade::shapeGetWidth(*(a4 + 4), v28);
        if (v31 <= 4)
        {
          if (v31 >= 1)
          {
            v32 = *a1;
            v33 = v31;
            v34 = &v118;
            do
            {
              v35 = *a2++;
              *v34++ = v35 * v32;
              --v33;
            }

            while (v33);
          }

          goto LABEL_10;
        }

        PCGenVector<int>::PCGenVector(&v118, a2, v31, 0);
        v75 = *a1;
        v76 = v119;
        PCGenBlockRef<int>::PCGenBlockRef(&v113, v119);
        v114 = v76;
        v115 = 1;
        v77 = v113;
        v116 = v113;
        v78 = v121;
        v79 = v119;
        if (v120 == 1)
        {
          if (v119 >= 1)
          {
            v80 = v113;
            do
            {
              v81 = *v78++;
              *v80++ = v81 * v75;
              --v79;
            }

            while (v79);
          }
        }

        else if (v119 >= 1)
        {
          v85 = 4 * v120;
          v86 = v113;
          do
          {
            *v86++ = *v78 * v75;
            v78 = (v78 + v85);
            --v79;
          }

          while (v79);
        }

        ProShade::Value::set(a5, 2, *(a4 + 4), v77);
        goto LABEL_72;
      }

      if (!ProShade::shapeIsVector(v30) || !ProShade::shapeIsMatrix(*(a4 + 4)) || (v42 = ProShade::shapeGetWidth(*(a3 + 4), v41), v42 != ProShade::shapeGetWidth(*(a4 + 4), v43)))
      {
        result = ProShade::shapeIsMatrix(*(a3 + 4));
        if (!result)
        {
          return result;
        }

        v62 = ProShade::shapeGetWidth(*(a3 + 4), v61);
        v63 = v62;
        if (v62 <= 4)
        {
          MEMORY[0x28223BE20](v62);
          v65 = &v102 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (v63 >= 1)
          {
            v66 = 0;
            v67 = 4 * v63;
            do
            {
              v68 = 0;
              v69 = a2;
              do
              {
                v70 = 0;
                v71 = v63;
                v72 = v69;
                v73 = a1;
                do
                {
                  v74 = *v73++;
                  v70 += *v72 * v74;
                  v72 = (v72 + v67);
                  --v71;
                }

                while (v71);
                *&v65[4 * v66 * v63 + 4 * v68++] = v70;
                ++v69;
              }

              while (v68 != v63);
              ++v66;
              a1 = (a1 + v67);
            }

            while (v66 != v63);
          }

          ProShade::Value::set(a5, 2, *(a3 + 4), v65);
          return 1;
        }

        PCGenMatrix<int>::PCGenMatrix(&v118, a1, v62, v62, 1, 0);
        PCGenMatrix<int>::PCGenMatrix(&v113, a2, v63, v63, 1, 0);
        PCGenMatrix<int>::PCGenMatrix(&v109, a5 + 16, v63, v63, 1, 0);
        v87 = v119;
        v88 = v115;
        PCGenBlockRef<int>::PCGenBlockRef(&v103, v115 * v119);
        v104 = v87;
        v105 = v88;
        v106 = 1;
        v107 = v87;
        v108 = v103;
        MMultiplyMatrices<int>(v119, v120, v115, v122, v121, SHIDWORD(v121), v117, v116, SHIDWORD(v116), v103, 1, v87);
        PCGenMatrix<int>::set<int>(&v109, &v103);
        v89 = v103;
        if (v103)
        {
          v90 = *(v103 - 4) - 1;
          *(v103 - 4) = v90;
          if (!v90)
          {
            MEMORY[0x2666E9ED0](v89 - 8, 0x1000C8077774924);
          }
        }

        goto LABEL_69;
      }

      v45 = ProShade::shapeGetWidth(*(a4 + 4), v44);
      v46 = v45;
      if (v45 > 4)
      {
        PCGenVector<int>::PCGenVector(&v113, a1, v45, 0);
        PCGenMatrix<int>::PCGenMatrix(&v118, a2, v46, v46, 1, 0);
        v97 = v120;
        PCGenBlockRef<int>::PCGenBlockRef(&v109, v120);
        v110 = v97;
        v111 = 1;
        v112 = v109;
        MMultiplyMatrices<int>(1, v114, v120, v116, 1, v115, v122, v121, SHIDWORD(v121), v109, 1, 1);
        ProShade::Value::set(a5, 2, *(a3 + 4), v112);
        v98 = v109;
        if (v109)
        {
          v99 = *(v109 - 1) - 1;
          *(v109 - 1) = v99;
          if (!v99)
          {
            MEMORY[0x2666E9ED0](v98 - 8, 0x1000C8077774924);
          }
        }

        v100 = v118;
        if (v118)
        {
          v101 = *(v118 - 1) - 1;
          *(v118 - 1) = v101;
          if (!v101)
          {
            MEMORY[0x2666E9ED0](v100 - 2, 0x1000C8077774924);
          }
        }

        v95 = v113;
        if (!v113)
        {
          return 1;
        }

LABEL_76:
        v96 = *(v95 - 1) - 1;
        *(v95 - 1) = v96;
        if (!v96)
        {
          MEMORY[0x2666E9ED0](v95 - 2, 0x1000C8077774924);
        }

        return 1;
      }

      if (v45 >= 1)
      {
        v47 = 0;
        do
        {
          v48 = 0;
          v49 = v45;
          v50 = a1;
          v51 = a2;
          do
          {
            v52 = *v50++;
            v48 += *v51 * v52;
            v51 += v45;
            --v49;
          }

          while (v49);
          *(&v118 + v47++) = v48;
          ++a2;
        }

        while (v47 != v45);
      }
    }

    ProShade::Value::set(a5, 2, *(a3 + 4), &v118);
    return 1;
  }

  v14 = ProShade::shapeGetWidth(*(a3 + 4), v13);
  v15 = v14;
  if (v14 > 4)
  {
    PCGenMatrix<int>::PCGenMatrix(&v118, a1, v14, v14, 1, 0);
    PCGenVector<int>::PCGenVector(&v113, a2, v15, 0);
    v84 = v119;
    PCGenBlockRef<int>::PCGenBlockRef(&v109, v119);
    v110 = v84;
    v111 = 1;
    v112 = v109;
    MMultiplyMatrices<int>(v119, v120, 1, v122, v121, SHIDWORD(v121), v116, v115, 1, v109, 1, 1);
    ProShade::Value::set(a5, 2, *(a4 + 4), v112);
LABEL_69:
    v91 = v109;
    if (v109)
    {
      v92 = *(v109 - 1) - 1;
      *(v109 - 1) = v92;
      if (!v92)
      {
        MEMORY[0x2666E9ED0](v91 - 8, 0x1000C8077774924);
      }
    }

    goto LABEL_72;
  }

  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = 0;
      v18 = v14;
      v19 = a2;
      v20 = a1;
      do
      {
        v22 = *v20++;
        v21 = v22;
        v23 = *v19++;
        v17 += v23 * v21;
        --v18;
      }

      while (v18);
      *(&v118 + v16++) = v17;
      a1 += v14;
    }

    while (v16 != v14);
  }

LABEL_10:
  ProShade::Value::set(a5, 2, *(a4 + 4), &v118);
  return 1;
}

void sub_25FFA89B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    v4 = *(v3 - 4) - 1;
    *(v3 - 4) = v4;
    if (!v4)
    {
      MEMORY[0x2666E9ED0](v3 - 8, 0x1000C8077774924);
    }
  }

  v5 = *(v1 - 88);
  if (v5)
  {
    v6 = *(v5 - 4) - 1;
    *(v5 - 4) = v6;
    if (!v6)
    {
      MEMORY[0x2666E9ED0](v5 - 8, 0x1000C8077774924);
    }
  }

  v7 = *(v1 - 120);
  if (v7)
  {
    v8 = *(v7 - 4) - 1;
    *(v7 - 4) = v8;
    if (!v8)
    {
      MEMORY[0x2666E9ED0](v7 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *PCGenMatrix<int>::set<int>(_DWORD *result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = result[2];
    if (v4 != *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenMatrix row mismatch %d != %d", &v23, v3[2], *(a2 + 8));
      PCException::PCException(exception, &v23);
      *exception = &unk_2872074D0;
    }

    v5 = result[3];
    if (v5 != *(a2 + 12))
    {
      v22 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenMatrix col mismatch %d != %d", &v23, v3[3], *(a2 + 12));
      PCException::PCException(v22, &v23);
      *v22 = &unk_2872074D0;
    }

    v6 = *result;
    if (!*result)
    {
      result = PCGenMatrix<int>::resize(result, v4, v5, result[5] == 1);
      v6 = *v3;
    }

    if (*a2 == v6)
    {
      v23.var0 = 0;
      v24 = 0;
      v25 = 0x100000001;
      v26 = 0;
      result = PCGenMatrix<int>::set<int>(&v23, a2);
      v13 = v3[2];
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = v26;
        v16 = v3[3];
        do
        {
          if (v16 >= 1)
          {
            v17 = 0;
            v18 = *(v3 + 3);
            do
            {
              *(v18 + 4 * (v3[5] * v17 + v3[4] * v14)) = *(v15 + 4 * (HIDWORD(v25) * v17 + v25 * v14));
              ++v17;
              v16 = v3[3];
            }

            while (v17 < v16);
            v13 = v3[2];
          }

          ++v14;
        }

        while (v14 < v13);
      }

      var0 = v23.var0;
      if (v23.var0)
      {
        v20 = HIDWORD(v23.var0[-1].length) - 1;
        HIDWORD(v23.var0[-1].length) = v20;
        if (!v20)
        {
          return MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
        }
      }
    }

    else
    {
      v7 = v3[2];
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = *(a2 + 24);
        v10 = v3[3];
        do
        {
          if (v10 >= 1)
          {
            v11 = 0;
            v12 = *(v3 + 3);
            do
            {
              *(v12 + 4 * (v3[5] * v11 + v3[4] * v8)) = *(v9 + 4 * (*(a2 + 20) * v11 + *(a2 + 16) * v8));
              ++v11;
              v10 = v3[3];
            }

            while (v11 < v10);
            v7 = v3[2];
          }

          ++v8;
        }

        while (v8 < v7);
      }
    }
  }

  return result;
}

uint64_t PCGenMatrix<int>::PCGenMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  if (a5)
  {
    v7 = a4;
  }

  else
  {
    v7 = 1;
  }

  if (a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  *(a1 + 16) = v7;
  *(a1 + 20) = v8;
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix number of rows %d must be nonnegative", &v16, a3);
    PCException::PCException(exception, &v16);
    *exception = &unk_2872074D0;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v15 = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix number of cols %d must be nonnegative", &v16, a4);
    PCException::PCException(v15, &v16);
    *v15 = &unk_2872074D0;
  }

  *(a1 + 24) = a2;
  if (a6)
  {
    PCGenMatrix<int>::copy(a1, 0, &v16);
    var0 = v16.var0;
    if (&v16 != a1)
    {
      *(a1 + 8) = v17;
      if (*a1 != var0)
      {
        PCGenBlockRef<double>::deref(a1);
        *a1 = var0;
        if (var0)
        {
          ++HIDWORD(var0[-1].length);
        }
      }

      var0 = v16.var0;
      *(a1 + 24) = v18;
    }

    if (var0)
    {
      v11 = HIDWORD(var0[-1].length) - 1;
      HIDWORD(var0[-1].length) = v11;
      if (!v11)
      {
        MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
      }
    }
  }

  return a1;
}

void sub_25FFA8FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11)
{
  if (a11.var0)
  {
    v13 = HIDWORD(a11.var0[-1].length) - 1;
    HIDWORD(a11.var0[-1].length) = v13;
    if (!v13)
    {
      MEMORY[0x2666E9ED0](&a11.var0[-1].length, 0x1000C8077774924);
    }
  }

  PCGenBlockRef<double>::deref(v11);
  _Unwind_Resume(a1);
}

_DWORD *PCGenMatrix<int>::copy@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  PCGenBlockRef<int>::PCGenBlockRef(a3, v7 * v6);
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  *(a3 + 16) = v8;
  *(a3 + 20) = v9;
  *(a3 + 24) = *a3;
  return PCGenMatrix<int>::set<int>(a3, a1);
}

void *PCGenBlockRef<int>::PCGenBlockRef(void *result, int a2)
{
  if (a2)
  {
    operator new[]();
  }

  *result = 0;
  return result;
}

uint64_t PCGenVector<int>::PCGenVector(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = 1;
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenVector length %d must be nonnegative", &v10, a3);
    PCException::PCException(exception, &v10);
    *exception = &unk_2872074D0;
  }

  *(a1 + 16) = a2;
  if (a4)
  {
    PCGenBlockRef<int>::PCGenBlockRef(&v10, a3);
    v11 = a3 | 0x100000000;
    var0 = v10.var0;
    PCGenVector<int>::set<int>(&v10, a1);
    v6 = v10.var0;
    if (&v10 != a1)
    {
      *(a1 + 8) = v11;
      if (*a1 != v6)
      {
        PCGenBlockRef<double>::deref(a1);
        *a1 = v6;
        if (v6)
        {
          ++HIDWORD(v6[-1].length);
        }
      }

      v6 = v10.var0;
      *(a1 + 16) = var0;
    }

    if (v6)
    {
      v7 = HIDWORD(v6[-1].length) - 1;
      HIDWORD(v6[-1].length) = v7;
      if (!v7)
      {
        MEMORY[0x2666E9ED0](&v6[-1].length, 0x1000C8077774924);
      }
    }
  }

  return a1;
}

void sub_25FFA92D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  if (a10.var0)
  {
    v12 = HIDWORD(a10.var0[-1].length) - 1;
    HIDWORD(a10.var0[-1].length) = v12;
    if (!v12)
    {
      MEMORY[0x2666E9ED0](&a10.var0[-1].length, 0x1000C8077774924);
    }
  }

  PCGenBlockRef<double>::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t PCGenVector<int>::set<int>(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 8);
    if (v4 != *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenVector length mismatch %d != %d", &v16, *(a1 + 8), *(a2 + 8));
      PCException::PCException(exception, &v16);
      *exception = &unk_2872074D0;
    }

    if (*a1)
    {
      v5 = *a2 == *a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      PCGenBlockRef<int>::PCGenBlockRef(&v16, *(a1 + 8));
      v17 = v4;
      v18 = 1;
      var0 = v16.var0;
      PCGenVector<int>::set<int>(&v16, a2);
      if (*(a1 + 8) >= 1)
      {
        v9 = 0;
        v10 = var0;
        v11 = *(a1 + 16);
        do
        {
          *(v11 + 4 * *(a1 + 12) * v9) = *(&v10->isa + v18 * v9);
          ++v9;
        }

        while (v9 < *(a1 + 8));
      }

      v12 = v16.var0;
      if (v16.var0)
      {
        v13 = HIDWORD(v16.var0[-1].length) - 1;
        HIDWORD(v16.var0[-1].length) = v13;
        if (!v13)
        {
          MEMORY[0x2666E9ED0](&v12[-1].length, 0x1000C8077774924);
        }
      }
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = *(a2 + 16);
      v8 = *(a1 + 16);
      do
      {
        *(v8 + 4 * *(a1 + 12) * v6) = *(v7 + 4 * *(a2 + 12) * v6);
        ++v6;
      }

      while (v6 < *(a1 + 8));
    }
  }

  return a1;
}

uint64_t MMultiplyMatrices<int>(uint64_t result, int a2, int a3, _DWORD *a4, int a5, int a6, _DWORD *a7, int a8, int a9, uint64_t a10, int a11, int a12)
{
  if (result >= 1)
  {
    v12 = 0;
    v13 = result;
    v14 = 4 * a8;
    v15 = 4 * a6;
    result = 4 * a2;
    while (a3 < 1)
    {
LABEL_26:
      ++v12;
      a4 += a5;
      if (v12 == v13)
      {
        return result;
      }
    }

    v16 = 0;
    v17 = a7;
    while (1)
    {
      if (a6 == 1)
      {
        if (a8 == 1)
        {
          if (a2)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              v19 += v17[v18] * a4[v18];
              ++v18;
            }

            while (a2 != v18);
            goto LABEL_25;
          }
        }

        else if (a2 >= 1)
        {
          v22 = 0;
          v19 = 0;
          v23 = v17;
          do
          {
            v19 += *v23 * a4[v22 / 4];
            v22 += 4;
            v23 = (v23 + v14);
          }

          while (result != v22);
          goto LABEL_25;
        }
      }

      else if (a8 == 1)
      {
        if (a2 >= 1)
        {
          v20 = 0;
          v19 = 0;
          v21 = a4;
          do
          {
            v19 += v17[v20 / 4] * *v21;
            v20 += 4;
            v21 = (v21 + v15);
          }

          while (result != v20);
          goto LABEL_25;
        }
      }

      else if (a2 >= 1)
      {
        v19 = 0;
        v24 = a4;
        v25 = v17;
        v26 = a2;
        do
        {
          v19 += *v25 * *v24;
          v25 = (v25 + v14);
          v24 = (v24 + v15);
          --v26;
        }

        while (v26);
        goto LABEL_25;
      }

      v19 = 0;
LABEL_25:
      *(a10 + 4 * v12 * a11 + 4 * v16 * a12) = v19;
      ++v16;
      v17 += a9;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }
  }

  return result;
}

_DWORD *PCGenMatrix<int>::resize(_DWORD *result, int a2, int a3, int a4)
{
  v6 = result;
  v8 = result[2];
  v7 = result[3];
  v10 = v8 != a2 || v7 != a3;
  if (a4)
  {
    if (a4 == 1)
    {
      if (result[5] == 1 && result[4] == v7 && !v10)
      {
        return result;
      }
    }

    else if (!v10)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    if (result[4] == 1 && result[5] == v8 && !v10)
    {
      return result;
    }

    v11 = 1;
  }

  result = PCGenBlockRef<int>::PCGenBlockRef(&v32, a3 * a2);
  *&v33 = __PAIR64__(a3, a2);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = 1;
  }

  *(&v33 + 1) = __PAIR64__(v13, v12);
  v14 = *(v6 + 12);
  if (a2 >= *(v6 + 8))
  {
    v15 = *(v6 + 8);
  }

  else
  {
    v15 = a2;
  }

  v16 = v32;
  v34 = v32;
  if (a3 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = a3;
  }

  v18 = v15 - 1;
  if (v15 >= 1 && v17 >= 1)
  {
    v30[0] = 0;
    v30[1] = v15 - 1;
    v20 = v17 - 1;
    v29[0] = 0;
    v29[1] = v17 - 1;
    PCGenMatrix<int>::operator()(result, v30, v29, v31);
    v27[0] = 0;
    v27[1] = v18;
    v26[0] = 0;
    v26[1] = v20;
    PCGenMatrix<int>::operator()(v6, v27, v26, v28);
    result = PCGenMatrix<int>::set<int>(v31, v28);
    v21 = v28[0];
    if (v28[0])
    {
      v22 = *(v28[0] - 4) - 1;
      *(v28[0] - 4) = v22;
      if (!v22)
      {
        result = MEMORY[0x2666E9ED0](v21 - 8, 0x1000C8077774924);
      }
    }

    v23 = v31[0];
    if (v31[0])
    {
      v24 = *(v31[0] - 4) - 1;
      *(v31[0] - 4) = v24;
      if (!v24)
      {
        result = MEMORY[0x2666E9ED0](v23 - 8, 0x1000C8077774924);
      }
    }

    v16 = v32;
  }

  if (&v32 != v6)
  {
    *(v6 + 8) = v33;
    if (*v6 != v16)
    {
      result = PCGenBlockRef<double>::deref(v6);
      *v6 = v16;
      if (v16)
      {
        ++*(v16 - 4);
      }
    }

    v16 = v32;
    *(v6 + 24) = v34;
  }

  if (v16)
  {
    v25 = *(v16 - 4) - 1;
    *(v16 - 4) = v25;
    if (!v25)
    {
      return MEMORY[0x2666E9ED0](v16 - 8, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_25FFA9914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 80);
  if (v19)
  {
    v20 = *(v19 - 4) - 1;
    *(v19 - 4) = v20;
    if (!v20)
    {
      MEMORY[0x2666E9ED0](v19 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCGenMatrix<int>::operator()@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  PCGenMatrix<BOOL>::checkRowIndex(a1, *a2);
  PCGenMatrix<BOOL>::checkRowIndex(a1, a2[1]);
  PCGenMatrix<BOOL>::checkColIndex(a1, *a3);
  result = PCGenMatrix<BOOL>::checkColIndex(a1, a3[1]);
  v10 = *a2;
  v9 = a2[1];
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a1 + 16);
  v14 = *(a1 + 20);
  v15 = *(a1 + 24);
  v16 = *a1;
  *a4 = *a1;
  if (v16)
  {
    ++*(v16 - 4);
  }

  *(a4 + 8) = v9 - v10 + 1;
  *(a4 + 12) = v11 - v12 + 1;
  *(a4 + 16) = v13;
  *(a4 + 20) = v14;
  *(a4 + 24) = v15 + 4 * v13 * v10 + 4 * v14 * v12;
  return result;
}

BOOL ProShade::Multiply::computeBinaryType<double>(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v123 = *MEMORY[0x277D85DE8];
  if (!ProShade::shapeIsMatrix(*(a3 + 4)) || !ProShade::shapeIsVector(*(a4 + 4)) || (v11 = ProShade::shapeGetWidth(*(a3 + 4), v10), v11 != ProShade::shapeGetWidth(*(a4 + 4), v12)))
  {
    IsVector = ProShade::shapeIsVector(*(a3 + 4));
    v26 = *(a4 + 4);
    if (IsVector && v26 == 1)
    {
      Width = ProShade::shapeGetWidth(*(a3 + 4), v24);
      if (Width > 4)
      {
        PCGenVector<double>::PCGenVector(&v118, a1, Width, 0);
        v53 = *a2;
        v54 = v119;
        PCGenBlockRef<double>::PCGenBlockRef(&v113, v119);
        v114 = v54;
        v115 = 1;
        v55 = v113;
        v116 = v113;
        v56 = v121;
        v57 = v119;
        if (v120 == 1)
        {
          if (v119 >= 1)
          {
            v58 = v113;
            do
            {
              v59 = *v56++;
              *v58++ = v53 * v59;
              --v57;
            }

            while (v57);
          }
        }

        else if (v119 >= 1)
        {
          v82 = 8 * v120;
          v83 = v113;
          do
          {
            *v83++ = v53 * *v56;
            v56 = (v56 + v82);
            --v57;
          }

          while (v57);
        }

        ProShade::Value::set(a5, 3, *(a3 + 4), v55);
LABEL_72:
        v93 = v113;
        if (v113)
        {
          v94 = *(v113 - 1) - 1;
          *(v113 - 1) = v94;
          if (!v94)
          {
            MEMORY[0x2666E9ED0](v93 - 1, 0x1000C8077774924);
          }
        }

        v95 = v118;
        if (!v118)
        {
          return 1;
        }

        goto LABEL_76;
      }

      if (Width >= 1)
      {
        v37 = *a2;
        v38 = Width;
        v39 = &v118;
        do
        {
          v40 = *a1++;
          *v39++ = v37 * v40;
          --v38;
        }

        while (v38);
      }
    }

    else
    {
      v29 = ProShade::shapeIsVector(v26);
      v30 = *(a3 + 4);
      if (v29 && v30 == 1)
      {
        v31 = ProShade::shapeGetWidth(*(a4 + 4), v28);
        if (v31 <= 4)
        {
          if (v31 >= 1)
          {
            v32 = *a1;
            v33 = v31;
            v34 = &v118;
            do
            {
              v35 = *a2++;
              *v34++ = v32 * v35;
              --v33;
            }

            while (v33);
          }

          goto LABEL_10;
        }

        PCGenVector<double>::PCGenVector(&v118, a2, v31, 0);
        v75 = *a1;
        v76 = v119;
        PCGenBlockRef<double>::PCGenBlockRef(&v113, v119);
        v114 = v76;
        v115 = 1;
        v77 = v113;
        v116 = v113;
        v78 = v121;
        v79 = v119;
        if (v120 == 1)
        {
          if (v119 >= 1)
          {
            v80 = v113;
            do
            {
              v81 = *v78++;
              *v80++ = v75 * v81;
              --v79;
            }

            while (v79);
          }
        }

        else if (v119 >= 1)
        {
          v85 = 8 * v120;
          v86 = v113;
          do
          {
            *v86++ = v75 * *v78;
            v78 = (v78 + v85);
            --v79;
          }

          while (v79);
        }

        ProShade::Value::set(a5, 3, *(a4 + 4), v77);
        goto LABEL_72;
      }

      if (!ProShade::shapeIsVector(v30) || !ProShade::shapeIsMatrix(*(a4 + 4)) || (v42 = ProShade::shapeGetWidth(*(a3 + 4), v41), v42 != ProShade::shapeGetWidth(*(a4 + 4), v43)))
      {
        result = ProShade::shapeIsMatrix(*(a3 + 4));
        if (!result)
        {
          return result;
        }

        v62 = ProShade::shapeGetWidth(*(a3 + 4), v61);
        v63 = v62;
        if (v62 <= 4)
        {
          MEMORY[0x28223BE20](v62);
          v65 = &v102 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (v63 >= 1)
          {
            v66 = 0;
            v67 = 8 * v63;
            do
            {
              v68 = 0;
              v69 = a2;
              do
              {
                v70 = 0.0;
                v71 = v63;
                v72 = v69;
                v73 = a1;
                do
                {
                  v74 = *v73++;
                  v70 = v70 + v74 * *v72;
                  v72 = (v72 + v67);
                  --v71;
                }

                while (v71);
                *&v65[8 * v66 * v63 + 8 * v68++] = v70;
                ++v69;
              }

              while (v68 != v63);
              ++v66;
              a1 = (a1 + v67);
            }

            while (v66 != v63);
          }

          ProShade::Value::set(a5, 3, *(a3 + 4), v65);
          return 1;
        }

        PCGenMatrix<double>::PCGenMatrix(&v118, a1, v62, v62, 1, 0);
        PCGenMatrix<double>::PCGenMatrix(&v113, a2, v63, v63, 1, 0);
        PCGenMatrix<double>::PCGenMatrix(&v109, a5 + 16, v63, v63, 1, 0);
        v87 = v119;
        v88 = v115;
        PCGenBlockRef<double>::PCGenBlockRef(&v103, v115 * v119);
        v104 = v87;
        v105 = v88;
        v106 = 1;
        v107 = v87;
        v108 = v103;
        MMultiplyMatrices<double>(v119, v120, v115, v122, v121, SHIDWORD(v121), v117, v116, SHIDWORD(v116), v103, 1, v87);
        PCGenMatrix<double>::set<double>(&v109, &v103);
        v89 = v103;
        if (v103)
        {
          v90 = *(v103 - 4) - 1;
          *(v103 - 4) = v90;
          if (!v90)
          {
            MEMORY[0x2666E9ED0](v89 - 8, 0x1000C8077774924);
          }
        }

        goto LABEL_69;
      }

      v45 = ProShade::shapeGetWidth(*(a4 + 4), v44);
      v46 = v45;
      if (v45 > 4)
      {
        PCGenVector<double>::PCGenVector(&v113, a1, v45, 0);
        PCGenMatrix<double>::PCGenMatrix(&v118, a2, v46, v46, 1, 0);
        v97 = v120;
        PCGenBlockRef<double>::PCGenBlockRef(&v109, v120);
        v110 = v97;
        v111 = 1;
        v112 = v109;
        MMultiplyMatrices<double>(1, v114, v120, v116, 1, v115, v122, v121, SHIDWORD(v121), v109, 1, 1);
        ProShade::Value::set(a5, 3, *(a3 + 4), v112);
        v98 = v109;
        if (v109)
        {
          v99 = *(v109 - 1) - 1;
          *(v109 - 1) = v99;
          if (!v99)
          {
            MEMORY[0x2666E9ED0](v98 - 8, 0x1000C8077774924);
          }
        }

        v100 = v118;
        if (v118)
        {
          v101 = *(v118 - 1) - 1;
          *(v118 - 1) = v101;
          if (!v101)
          {
            MEMORY[0x2666E9ED0](v100 - 1, 0x1000C8077774924);
          }
        }

        v95 = v113;
        if (!v113)
        {
          return 1;
        }

LABEL_76:
        v96 = *(v95 - 1) - 1;
        *(v95 - 1) = v96;
        if (!v96)
        {
          MEMORY[0x2666E9ED0](v95 - 1, 0x1000C8077774924);
        }

        return 1;
      }

      if (v45 >= 1)
      {
        v47 = 0;
        do
        {
          v48 = 0.0;
          v49 = v45;
          v50 = a1;
          v51 = a2;
          do
          {
            v52 = *v50++;
            v48 = v48 + v52 * *v51;
            v51 += v45;
            --v49;
          }

          while (v49);
          *&(&v118)[v47++] = v48;
          ++a2;
        }

        while (v47 != v45);
      }
    }

    ProShade::Value::set(a5, 3, *(a3 + 4), &v118);
    return 1;
  }

  v14 = ProShade::shapeGetWidth(*(a3 + 4), v13);
  v15 = v14;
  if (v14 > 4)
  {
    PCGenMatrix<double>::PCGenMatrix(&v118, a1, v14, v14, 1, 0);
    PCGenVector<double>::PCGenVector(&v113, a2, v15, 0);
    v84 = v119;
    PCGenBlockRef<double>::PCGenBlockRef(&v109, v119);
    v110 = v84;
    v111 = 1;
    v112 = v109;
    MMultiplyMatrices<double>(v119, v120, 1, v122, v121, SHIDWORD(v121), v116, v115, 1, v109, 1, 1);
    ProShade::Value::set(a5, 3, *(a4 + 4), v112);
LABEL_69:
    v91 = v109;
    if (v109)
    {
      v92 = *(v109 - 1) - 1;
      *(v109 - 1) = v92;
      if (!v92)
      {
        MEMORY[0x2666E9ED0](v91 - 8, 0x1000C8077774924);
      }
    }

    goto LABEL_72;
  }

  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = 0.0;
      v18 = v14;
      v19 = a2;
      v20 = a1;
      do
      {
        v21 = *v20++;
        v22 = v21;
        v23 = *v19++;
        v17 = v17 + v22 * v23;
        --v18;
      }

      while (v18);
      *&(&v118)[v16++] = v17;
      a1 += v14;
    }

    while (v16 != v14);
  }

LABEL_10:
  ProShade::Value::set(a5, 3, *(a4 + 4), &v118);
  return 1;
}

void sub_25FFAA280(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    v4 = *(v3 - 4) - 1;
    *(v3 - 4) = v4;
    if (!v4)
    {
      MEMORY[0x2666E9ED0](v3 - 8, 0x1000C8077774924);
    }
  }

  v5 = *(v1 - 104);
  if (v5)
  {
    v6 = *(v5 - 4) - 1;
    *(v5 - 4) = v6;
    if (!v6)
    {
      MEMORY[0x2666E9ED0](v5 - 8, 0x1000C8077774924);
    }
  }

  v7 = *(v1 - 136);
  if (v7)
  {
    v8 = *(v7 - 4) - 1;
    *(v7 - 4) = v8;
    if (!v8)
    {
      MEMORY[0x2666E9ED0](v7 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCGenMatrix<double>::PCGenMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  if (a5)
  {
    v7 = a4;
  }

  else
  {
    v7 = 1;
  }

  if (a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  *(a1 + 16) = v7;
  *(a1 + 20) = v8;
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix number of rows %d must be nonnegative", &v16, a3);
    PCException::PCException(exception, &v16);
    *exception = &unk_2872074D0;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v15 = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenMatrix number of cols %d must be nonnegative", &v16, a4);
    PCException::PCException(v15, &v16);
    *v15 = &unk_2872074D0;
  }

  *(a1 + 24) = a2;
  if (a6)
  {
    PCGenMatrix<double>::copy(a1, 0, &v16);
    var0 = v16.var0;
    if (&v16 != a1)
    {
      *(a1 + 8) = v17;
      if (*a1 != var0)
      {
        PCGenBlockRef<double>::deref(a1);
        *a1 = var0;
        if (var0)
        {
          ++HIDWORD(var0[-1].length);
        }
      }

      var0 = v16.var0;
      *(a1 + 24) = v18;
    }

    if (var0)
    {
      v11 = HIDWORD(var0[-1].length) - 1;
      HIDWORD(var0[-1].length) = v11;
      if (!v11)
      {
        MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
      }
    }
  }

  return a1;
}

void sub_25FFAA5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11)
{
  if (a11.var0)
  {
    v13 = HIDWORD(a11.var0[-1].length) - 1;
    HIDWORD(a11.var0[-1].length) = v13;
    if (!v13)
    {
      MEMORY[0x2666E9ED0](&a11.var0[-1].length, 0x1000C8077774924);
    }
  }

  PCGenBlockRef<double>::deref(v11);
  _Unwind_Resume(a1);
}

uint64_t PCGenVector<double>::PCGenVector(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = 1;
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenVector length %d must be nonnegative", &v10, a3);
    PCException::PCException(exception, &v10);
    *exception = &unk_2872074D0;
  }

  *(a1 + 16) = a2;
  if (a4)
  {
    PCGenBlockRef<double>::PCGenBlockRef(&v10, a3);
    v11 = a3 | 0x100000000;
    var0 = v10.var0;
    PCGenVector<double>::set<double>(&v10, a1);
    v6 = v10.var0;
    if (&v10 != a1)
    {
      *(a1 + 8) = v11;
      if (*a1 != v6)
      {
        PCGenBlockRef<double>::deref(a1);
        *a1 = v6;
        if (v6)
        {
          ++HIDWORD(v6[-1].length);
        }
      }

      v6 = v10.var0;
      *(a1 + 16) = var0;
    }

    if (v6)
    {
      v7 = HIDWORD(v6[-1].length) - 1;
      HIDWORD(v6[-1].length) = v7;
      if (!v7)
      {
        MEMORY[0x2666E9ED0](&v6[-1].length, 0x1000C8077774924);
      }
    }
  }

  return a1;
}

void sub_25FFAA7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  if (a10.var0)
  {
    v12 = HIDWORD(a10.var0[-1].length) - 1;
    HIDWORD(a10.var0[-1].length) = v12;
    if (!v12)
    {
      MEMORY[0x2666E9ED0](&a10.var0[-1].length, 0x1000C8077774924);
    }
  }

  PCGenBlockRef<double>::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Multiply::resultShape(uint64_t a1, uint64_t a2)
{
  if (ProShade::shapeIsMatrix(a1))
  {
    Width = ProShade::shapeGetWidth(a1, v4);
    if (Width != ProShade::shapeGetWidth(a2, v6))
    {
      if (!ProShade::shapeIsVector(a2) || (v8 = ProShade::shapeGetWidth(a1, v7), v8 <= ProShade::shapeGetWidth(a2, v9)))
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("matrix/vector width mismatch", v7);
      }
    }
  }

  else if (ProShade::shapeIsMatrix(a2))
  {
    v11 = ProShade::shapeGetWidth(a1, v10);
    v13 = ProShade::shapeGetWidth(a2, v12);
    a2 = a1;
    if (v11 != v13)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector/matrix width mismatch", v14);
    }
  }

  else if (a1 != 1)
  {
    if (a2 == 1)
    {
      return a1;
    }

    else
    {
      v15 = a1 == a2;
      a2 = a1;
      if (!v15)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v10);
      }
    }
  }

  return a2;
}

uint64_t ProShade::BinaryOp<ProShade::Multiply>::setFrequency(uint64_t result)
{
  v1 = *(result + 64);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(v1 + 40);
  v3 = *(result + 96);
  if (!v3)
  {
    throw_PCNullPointerException(1);
  }

  v4 = *(v3 + 40);
  if (v2 < 1 && v4 < 1)
  {
    v10 = 0;
  }

  else if (v2 <= 1 && v4 < 2)
  {
    v10 = 1;
  }

  else
  {
    if (v4 < 2 && v2 < 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    if (v2 <= 1 && v4 < 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8;
    }
  }

  if (*(result + 44) < v10)
  {
    v10 = *(result + 44);
  }

  *(result + 40) = v10;
  return result;
}

uint64_t ProShade::BinaryOp<ProShade::Multiply>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264AC8;
  *(a1 + 112) = &unk_287264B80;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264BE0;
  *(a1 + 112) = off_287264C98;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));
  return a1;
}

void ProShade::BinaryOp<ProShade::Multiply>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264AC8;
  *(a1 + 112) = &unk_287264B80;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264BE0;
  *(a1 + 112) = off_287264C98;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));

  JUMPOUT(0x2666E9F00);
}

void ProShade::BinaryOp<ProShade::Multiply>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v25)
  {
    v4 = *(v25 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 12) = 40;
  memcpy(v5 + 13, v25, v4);
  *(v5 + v4 + 13) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v22 = a2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  memcpy(v7 + 3, v5 + 3, v6);
  *(v8 + v6) = 32;
  *(v8 + v6 + 1) = 0;
  atomic_fetch_add(v7, 1u);
  v23 = v7;
  v9 = v7[1];
  v10 = malloc_type_malloc(v9 + 14, 0x10000403E1C8BA9uLL);
  v10[1] = v9 + 1;
  v10[2] = v9 + 2;
  atomic_store(1u, v10);
  v11 = v10 + 3;
  atomic_store(0, v10);
  memcpy(v10 + 3, v7 + 3, v9);
  *(v11 + v9) = 42;
  *(v11 + v9 + 1) = 0;
  atomic_fetch_add(v10, 1u);
  v12 = v10[1];
  v13 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v13);
  v14 = v13 + 3;
  atomic_store(0, v13);
  v13[1] = v12 + 1;
  v13[2] = v12 + 2;
  memcpy(v13 + 3, v10 + 3, v12);
  v14[v12] = 32;
  v14[v12 + 1] = 0;
  atomic_fetch_add(v13, 1u);
  ProShade::VarT<ProShade::Node>::repr(a1 + 80);
  v15 = v13[1];
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v14, v15);
  memcpy(v18 + v15 + 12, v24, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v22 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    free(v24 - 12);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    free(v23);
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    free(v5);
  }

  if (v25)
  {
    if (atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      free(v25 - 12);
    }
  }
}

void sub_25FFAB20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    free(a12);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::BinaryOp<ProShade::Multiply>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "BinaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 42;
  *(v6 + v4 + 1) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFAB434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::BinaryOp<ProShade::Multiply>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "*");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  PCHashWriteStream::writeValue(this, &v5);
  ProShade::VarT<ProShade::Node>::hash(a1 + 80, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

void ProShade::BinaryOp<ProShade::Multiply>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  (**a2)(v8, a2, a1 + 48);
  (**a2)(v6, a2, a1 + 80);
  if (v8[2] != *(a1 + 8) || v6[2] != *(a1 + 12))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v6[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v7);
  v8[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9);
}

void sub_25FFAB63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C403815D87CLL);
  PCSharedCount::~PCSharedCount(va);
  v9 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

double ProShade::BinaryOp<ProShade::Multiply>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = (*(a2 + 16) + 144);
  v6 = *(a2 + 16);

  return ProShade::BinaryOp<ProShade::Multiply>::computeBinary(v6, v5, a3);
}

void virtual thunk toProShade::BinaryOp<ProShade::Multiply>::~BinaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264AC8;
  v1[14].var0 = &unk_287264B80;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264BE0;
  v1[14].var0 = off_287264C98;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[15].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264AC8;
  v1[14].var0 = &unk_287264B80;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264BE0;
  v1[14].var0 = off_287264C98;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::BinaryOp<ProShade::Multiply>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3, int a4)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264BA0);
  *a1 = &unk_287264AC8;
  *(a1 + 112) = &unk_287264B80;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v8 = ProShade::Multiply::resultShape(*(a2 + 7), *(a3 + 7));
  v9 = *(a2 + 6);
  if (v9 <= *(a3 + 6))
  {
    v9 = *(a3 + 6);
  }

  *(a1 + 24) = v9;
  *(a1 + 28) = v8;
  *(a1 + 44) = a4;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FFABB50(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Multiply>::BinaryOp(uint64_t a1)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264BA0);
  *a1 = &unk_287264AC8;
  *(a1 + 112) = &unk_287264B80;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_28725E328;
  *(a1 + 96) = 0;
  PCSharedCount::PCSharedCount((a1 + 104));
  return a1;
}

void sub_25FFABCE4(_Unwind_Exception *a1)
{
  v7 = v4;
  *v6 = v7;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

double ProShade::BinaryOp<ProShade::Divide>::computeBinary(const PCString *a1, const PCString *a2, uint64_t a3)
{
  if (SLODWORD(a1->var0) > 1)
  {
    if (LODWORD(a1->var0) != 2)
    {
      return ProShade::computeBinaryType<ProShade::Divide,double>(a1, a2, a3);
    }

    var0 = a2->var0;
  }

  else
  {
    var0 = a2->var0;
    if (SLODWORD(a2->var0) < 2)
    {
      ProShade::computeBinaryType<ProShade::Divide,BOOL>(a1, a2, a3);
      return result;
    }
  }

  if (var0 <= 2)
  {
    ProShade::computeBinaryType<ProShade::Divide,int>(a1, a2, a3);
    return result;
  }

  return ProShade::computeBinaryType<ProShade::Divide,double>(a1, a2, a3);
}

BOOL ProShade::Divide::simplify(const PCSharedCount *a1, uint64_t a2, uint64_t a3)
{
  isZero = ProShade::isZero(a1);
  if (isZero)
  {
    ProShade::VarT<ProShade::Node>::operator=(a3, a1);
  }

  else if (ProShade::isZero(a2))
  {
    ProShade::VarT<ProShade::Node>::repr(a1);
    operator+(&v10, "/", &v11);
    ProShade::VarT<ProShade::Node>::repr(a2);
    operator+(&v11, &v9, &v12);
    ProShade::Error<PCDivideByZeroException>::raise<LiString>(&v12, v8);
  }

  return isZero;
}

void sub_25FFABE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10, atomic_uint *a11, atomic_uint *a12)
{
  if (a12 && atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
  {
    *a12 = 0;
    free(a12 - 3);
  }

  if (a9 && atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
  {
    *a9 = 0;
    free(a9 - 3);
  }

  if (a11 && atomic_fetch_add(a11 - 3, 0xFFFFFFFF) == 1)
  {
    *a11 = 0;
    free(a11 - 3);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
    {
      *a10 = 0;
      free(a10 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::BinaryOp<ProShade::Divide>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264E18);
  *a1 = &unk_287264D40;
  *(a1 + 112) = &unk_287264DF8;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v7 = *(a2 + 7);
  v8 = *(a3 + 7);
  if (v7 != 1)
  {
    if (v8 == 1)
    {
      v8 = *(a2 + 7);
    }

    else
    {
      v9 = v7 == v8;
      v8 = *(a2 + 7);
      if (!v9)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v6);
      }
    }
  }

  v10 = *(a2 + 6);
  if (v10 <= *(a3 + 6))
  {
    v10 = *(a3 + 6);
  }

  *(a1 + 24) = v10;
  *(a1 + 28) = v8;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FFAC050(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Divide,BOOL>(const PCString *a1, const PCString *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(HIDWORD(a1->var0), a2);
  v8 = ProShade::shapeGetSize(HIDWORD(a2->var0), v7);
  v10 = v8;
  var0_low = LODWORD(a1->var0);
  if (var0_low != 1)
  {
    MEMORY[0x28223BE20](v8);
    v13 = &v24 - v12;
    bzero(&v24 - v12, v14);
    v8 = ProShade::copyData(var0_low, a1 + 2, 1, v13, Size);
  }

  v15 = LODWORD(a2->var0);
  if (v15 != 1)
  {
    MEMORY[0x28223BE20](v8);
    v17 = &v24 - v16;
    bzero(&v24 - v16, v18);
    ProShade::copyData(v15, a2 + 2, 1, v17, v10);
  }

  var0_high = HIDWORD(a1->var0);
  if (var0_high != HIDWORD(a2->var0))
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 1, var0_high);
  result = ProShade::shapeIsVector(HIDWORD(a1->var0));
  v22 = HIDWORD(a1->var0) == 1 || result;
  if (v22 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v26, "not implemented yet");
    PCString::PCString(&v25, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v26, &v25, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("/ operator doesn't apply to BOOL", v21);
  }

  return result;
}

void sub_25FFAC2FC(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Divide,int>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 2)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v28 - v13;
    bzero(&v28 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 2, v12, Size);
  }

  v15 = *a2;
  if (v15 == 2)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v28 - v17;
    bzero(&v28 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 2, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 2, v19);
  result = ProShade::shapeIsVector(a1[1]);
  v21 = a1[1] == 1 || result;
  if (v21 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v30, "not implemented yet");
    PCString::PCString(&v29, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v30, &v29, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v22 = (a3 + 16);
    v23 = Size;
    do
    {
      v25 = *v12;
      v12 += 4;
      v24 = v25;
      v26 = *v16;
      v16 += 4;
      *v22++ = v24 / v26;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_25FFAC588(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

double ProShade::computeBinaryType<ProShade::Divide,double>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 3)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v29 - v13;
    bzero(&v29 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 3, v12, Size);
  }

  v15 = *a2;
  if (v15 == 3)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v29 - v17;
    bzero(&v29 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 3, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 3, v19);
  IsVector = ProShade::shapeIsVector(a1[1]);
  v22 = a1[1] == 1 || IsVector;
  if (v22 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v31, "not implemented yet");
    PCString::PCString(&v30, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v31, &v30, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v23 = (a3 + 16);
    v24 = Size;
    do
    {
      v25 = *v12;
      v12 += 8;
      v26 = v25;
      v27 = *v16;
      v16 += 8;
      result = v26 / v27;
      *v23++ = result;
      --v24;
    }

    while (v24);
  }

  return result;
}

void sub_25FFAC814(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

void ProShade::Error<PCDivideByZeroException>::raise<LiString>(OZChannelBase *a1, const PCString *a2)
{
  OZChannelBase::setRangeName(a1, a2);
  exception = __cxa_allocate_exception(0x40uLL);
  if (a1->var0)
  {
    var0 = a1->var0;
  }

  else
  {
    var0 = "";
  }

  PCString::PCString(&v5, var0);
  PCException::PCException(exception, &v5);
  *exception = &unk_2872088F0;
}

uint64_t ProShade::BinaryOp<ProShade::Divide>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264D40;
  *(a1 + 112) = &unk_287264DF8;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264E58;
  *(a1 + 112) = off_287264F10;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));
  return a1;
}

void ProShade::BinaryOp<ProShade::Divide>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264D40;
  *(a1 + 112) = &unk_287264DF8;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264E58;
  *(a1 + 112) = off_287264F10;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));

  JUMPOUT(0x2666E9F00);
}

void ProShade::BinaryOp<ProShade::Divide>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v25)
  {
    v4 = *(v25 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 12) = 40;
  memcpy(v5 + 13, v25, v4);
  *(v5 + v4 + 13) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v22 = a2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  memcpy(v7 + 3, v5 + 3, v6);
  *(v8 + v6) = 32;
  *(v8 + v6 + 1) = 0;
  atomic_fetch_add(v7, 1u);
  v23 = v7;
  v9 = v7[1];
  v10 = malloc_type_malloc(v9 + 14, 0x10000403E1C8BA9uLL);
  v10[1] = v9 + 1;
  v10[2] = v9 + 2;
  atomic_store(1u, v10);
  v11 = v10 + 3;
  atomic_store(0, v10);
  memcpy(v10 + 3, v7 + 3, v9);
  *(v11 + v9) = 47;
  *(v11 + v9 + 1) = 0;
  atomic_fetch_add(v10, 1u);
  v12 = v10[1];
  v13 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v13);
  v14 = v13 + 3;
  atomic_store(0, v13);
  v13[1] = v12 + 1;
  v13[2] = v12 + 2;
  memcpy(v13 + 3, v10 + 3, v12);
  v14[v12] = 32;
  v14[v12 + 1] = 0;
  atomic_fetch_add(v13, 1u);
  ProShade::VarT<ProShade::Node>::repr(a1 + 80);
  v15 = v13[1];
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v14, v15);
  memcpy(v18 + v15 + 12, v24, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v22 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    free(v24 - 12);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    free(v23);
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    free(v5);
  }

  if (v25)
  {
    if (atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      free(v25 - 12);
    }
  }
}

void sub_25FFACF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    free(a12);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::BinaryOp<ProShade::Divide>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "BinaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 47;
  *(v6 + v4 + 1) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFAD13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::BinaryOp<ProShade::Divide>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "/");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  PCHashWriteStream::writeValue(this, &v5);
  ProShade::VarT<ProShade::Node>::hash(a1 + 80, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

void ProShade::BinaryOp<ProShade::Divide>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  (**a2)(v8, a2, a1 + 48);
  (**a2)(v6, a2, a1 + 80);
  if (v8[2] != *(a1 + 8) || v6[2] != *(a1 + 12))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v6[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v7);
  v8[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9);
}

void sub_25FFAD344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C403815D87CLL);
  PCSharedCount::~PCSharedCount(va);
  v9 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

double ProShade::BinaryOp<ProShade::Divide>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = (*(a2 + 16) + 144);
  v6 = *(a2 + 16);

  return ProShade::BinaryOp<ProShade::Divide>::computeBinary(v6, v5, a3);
}

void virtual thunk toProShade::BinaryOp<ProShade::Divide>::~BinaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264D40;
  v1[14].var0 = &unk_287264DF8;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264E58;
  v1[14].var0 = off_287264F10;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[15].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264D40;
  v1[14].var0 = &unk_287264DF8;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264E58;
  v1[14].var0 = off_287264F10;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::BinaryOp<ProShade::Divide>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3, int a4)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264E18);
  *a1 = &unk_287264D40;
  *(a1 + 112) = &unk_287264DF8;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v9 = *(a2 + 7);
  v10 = *(a3 + 7);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v11 = v9 == v10;
      v10 = *(a2 + 7);
      if (!v11)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v8);
      }
    }
  }

  v12 = *(a2 + 6);
  if (v12 <= *(a3 + 6))
  {
    v12 = *(a3 + 6);
  }

  *(a1 + 24) = v12;
  *(a1 + 28) = v10;
  *(a1 + 44) = a4;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FFAD884(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Divide>::BinaryOp(uint64_t a1)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264E18);
  *a1 = &unk_287264D40;
  *(a1 + 112) = &unk_287264DF8;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_28725E328;
  *(a1 + 96) = 0;
  PCSharedCount::PCSharedCount((a1 + 104));
  return a1;
}

void sub_25FFADA18(_Unwind_Exception *a1)
{
  v7 = v4;
  *v6 = v7;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Equals>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264FB8;
  *(a1 + 112) = &unk_287265070;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_2872650D0;
  *(a1 + 112) = off_287265188;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));
  return a1;
}

void ProShade::BinaryOp<ProShade::Equals>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264FB8;
  *(a1 + 112) = &unk_287265070;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_2872650D0;
  *(a1 + 112) = off_287265188;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));

  JUMPOUT(0x2666E9F00);
}

void ProShade::BinaryOp<ProShade::Equals>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v25)
  {
    v4 = *(v25 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 12) = 40;
  memcpy(v5 + 13, v25, v4);
  *(v5 + v4 + 13) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v22 = a2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  memcpy(v7 + 3, v5 + 3, v6);
  *(v8 + v6) = 32;
  *(v8 + v6 + 1) = 0;
  atomic_fetch_add(v7, 1u);
  v23 = v7;
  v9 = v7[1];
  v10 = malloc_type_malloc(v9 + 15, 0x10000403E1C8BA9uLL);
  v10[1] = v9 + 2;
  v10[2] = v9 + 3;
  atomic_store(1u, v10);
  v11 = v10 + 3;
  atomic_store(0, v10);
  memcpy(v10 + 3, v7 + 3, v9);
  *(v11 + v9) = 15677;
  *(v11 + v9 + 2) = 0;
  atomic_fetch_add(v10, 1u);
  v12 = v10[1];
  v13 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v13);
  v14 = v13 + 3;
  atomic_store(0, v13);
  v13[1] = v12 + 1;
  v13[2] = v12 + 2;
  memcpy(v13 + 3, v10 + 3, v12);
  v14[v12] = 32;
  v14[v12 + 1] = 0;
  atomic_fetch_add(v13, 1u);
  ProShade::VarT<ProShade::Node>::repr(a1 + 80);
  v15 = v13[1];
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v14, v15);
  memcpy(v18 + v15 + 12, v24, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v22 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    free(v24 - 12);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    free(v23);
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    free(v5);
  }

  if (v25)
  {
    if (atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      free(v25 - 12);
    }
  }
}

void sub_25FFAE054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    free(a12);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::BinaryOp<ProShade::Equals>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "BinaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 15, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 2;
  v5[2] = v4 + 3;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 15677;
  *(v6 + v4 + 2) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFAE27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::BinaryOp<ProShade::Equals>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "==");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  PCHashWriteStream::writeValue(this, &v5);
  ProShade::VarT<ProShade::Node>::hash(a1 + 80, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

void ProShade::BinaryOp<ProShade::Equals>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  (**a2)(v8, a2, a1 + 48);
  (**a2)(v6, a2, a1 + 80);
  if (v8[2] != *(a1 + 8) || v6[2] != *(a1 + 12))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v6[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v7);
  v8[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9);
}

void sub_25FFAE484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C403815D87CLL);
  PCSharedCount::~PCSharedCount(va);
  v9 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

BOOL ProShade::BinaryOp<ProShade::Equals>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = (*(a2 + 16) + 144);
  v6 = *(a2 + 16);

  return ProShade::computeBinaryType<ProShade::Equals,BOOL>(v6, v5, a3);
}

void virtual thunk toProShade::BinaryOp<ProShade::Equals>::~BinaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264FB8;
  v1[14].var0 = &unk_287265070;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872650D0;
  v1[14].var0 = off_287265188;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[15].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264FB8;
  v1[14].var0 = &unk_287265070;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872650D0;
  v1[14].var0 = off_287265188;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::BinaryOp<ProShade::Equals>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3, int a4)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265090);
  *a1 = &unk_287264FB8;
  *(a1 + 112) = &unk_287265070;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v9 = *(a2 + 7);
  v10 = *(a3 + 7);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v11 = v9 == v10;
      v10 = *(a2 + 7);
      if (!v11)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v8);
      }
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 28) = v10;
  *(a1 + 44) = a4;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FFAE9B8(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Equals>::BinaryOp(uint64_t a1)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265090);
  *a1 = &unk_287264FB8;
  *(a1 + 112) = &unk_287265070;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_28725E328;
  *(a1 + 96) = 0;
  PCSharedCount::PCSharedCount((a1 + 104));
  return a1;
}

void sub_25FFAEB4C(_Unwind_Exception *a1)
{
  v7 = v4;
  *v6 = v7;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Equals,BOOL>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 1)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v28 - v13;
    bzero(&v28 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 1, v12, Size);
  }

  v15 = *a2;
  if (v15 == 1)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v28 - v17;
    bzero(&v28 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 1, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 1, v19);
  result = ProShade::shapeIsVector(a1[1]);
  v21 = a1[1] == 1 || result;
  if (v21 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v30, "not implemented yet");
    PCString::PCString(&v29, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v30, &v29, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v22 = (a3 + 16);
    v23 = Size;
    do
    {
      v25 = *v12++;
      v24 = v25;
      v26 = *v16++;
      *v22++ = v24 == v26;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_25FFAEDDC(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::GreaterThan>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287265230;
  *(a1 + 112) = &unk_2872652E8;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287265348;
  *(a1 + 112) = off_287265400;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));
  return a1;
}

void ProShade::BinaryOp<ProShade::GreaterThan>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287265230;
  *(a1 + 112) = &unk_2872652E8;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287265348;
  *(a1 + 112) = off_287265400;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));

  JUMPOUT(0x2666E9F00);
}

void ProShade::BinaryOp<ProShade::GreaterThan>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v25)
  {
    v4 = *(v25 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 12) = 40;
  memcpy(v5 + 13, v25, v4);
  *(v5 + v4 + 13) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v22 = a2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  memcpy(v7 + 3, v5 + 3, v6);
  *(v8 + v6) = 32;
  *(v8 + v6 + 1) = 0;
  atomic_fetch_add(v7, 1u);
  v23 = v7;
  v9 = v7[1];
  v10 = malloc_type_malloc(v9 + 14, 0x10000403E1C8BA9uLL);
  v10[1] = v9 + 1;
  v10[2] = v9 + 2;
  atomic_store(1u, v10);
  v11 = v10 + 3;
  atomic_store(0, v10);
  memcpy(v10 + 3, v7 + 3, v9);
  *(v11 + v9) = 62;
  *(v11 + v9 + 1) = 0;
  atomic_fetch_add(v10, 1u);
  v12 = v10[1];
  v13 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v13);
  v14 = v13 + 3;
  atomic_store(0, v13);
  v13[1] = v12 + 1;
  v13[2] = v12 + 2;
  memcpy(v13 + 3, v10 + 3, v12);
  v14[v12] = 32;
  v14[v12 + 1] = 0;
  atomic_fetch_add(v13, 1u);
  ProShade::VarT<ProShade::Node>::repr(a1 + 80);
  v15 = v13[1];
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v14, v15);
  memcpy(v18 + v15 + 12, v24, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v22 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    free(v24 - 12);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    free(v23);
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    free(v5);
  }

  if (v25)
  {
    if (atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      free(v25 - 12);
    }
  }
}

void sub_25FFAF418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    free(a12);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::BinaryOp<ProShade::GreaterThan>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "BinaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 62;
  *(v6 + v4 + 1) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFAF640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::BinaryOp<ProShade::GreaterThan>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, ">");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  PCHashWriteStream::writeValue(this, &v5);
  ProShade::VarT<ProShade::Node>::hash(a1 + 80, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

void ProShade::BinaryOp<ProShade::GreaterThan>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  (**a2)(v8, a2, a1 + 48);
  (**a2)(v6, a2, a1 + 80);
  if (v8[2] != *(a1 + 8) || v6[2] != *(a1 + 12))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v6[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v7);
  v8[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9);
}

void sub_25FFAF848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C403815D87CLL);
  PCSharedCount::~PCSharedCount(va);
  v9 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

BOOL ProShade::BinaryOp<ProShade::GreaterThan>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = (*(a2 + 16) + 144);
  v6 = *(a2 + 16);

  return ProShade::computeBinaryType<ProShade::GreaterThan,BOOL>(v6, v5, a3);
}

void virtual thunk toProShade::BinaryOp<ProShade::GreaterThan>::~BinaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287265230;
  v1[14].var0 = &unk_2872652E8;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287265348;
  v1[14].var0 = off_287265400;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[15].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287265230;
  v1[14].var0 = &unk_2872652E8;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287265348;
  v1[14].var0 = off_287265400;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::BinaryOp<ProShade::GreaterThan>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3, int a4)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265308);
  *a1 = &unk_287265230;
  *(a1 + 112) = &unk_2872652E8;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v9 = *(a2 + 7);
  v10 = *(a3 + 7);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v11 = v9 == v10;
      v10 = *(a2 + 7);
      if (!v11)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v8);
      }
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 28) = v10;
  *(a1 + 44) = a4;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FFAFD7C(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::GreaterThan>::BinaryOp(uint64_t a1)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265308);
  *a1 = &unk_287265230;
  *(a1 + 112) = &unk_2872652E8;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_28725E328;
  *(a1 + 96) = 0;
  PCSharedCount::PCSharedCount((a1 + 104));
  return a1;
}

void sub_25FFAFF10(_Unwind_Exception *a1)
{
  v7 = v4;
  *v6 = v7;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::GreaterThan,BOOL>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 1)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v28 - v13;
    bzero(&v28 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 1, v12, Size);
  }

  v15 = *a2;
  if (v15 == 1)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v28 - v17;
    bzero(&v28 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 1, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 1, v19);
  result = ProShade::shapeIsVector(a1[1]);
  v21 = a1[1] == 1 || result;
  if (v21 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v30, "not implemented yet");
    PCString::PCString(&v29, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v30, &v29, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v22 = (a3 + 16);
    v23 = Size;
    do
    {
      v25 = *v12++;
      v24 = v25;
      v26 = *v16++;
      *v22++ = v24 & (v26 ^ 1);
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_25FFB01A0(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::LessThanEquals>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_2872654A8;
  *(a1 + 112) = &unk_287265560;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_2872655C0;
  *(a1 + 112) = off_287265678;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));
  return a1;
}

void ProShade::BinaryOp<ProShade::LessThanEquals>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_2872654A8;
  *(a1 + 112) = &unk_287265560;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_2872655C0;
  *(a1 + 112) = off_287265678;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));

  JUMPOUT(0x2666E9F00);
}

void ProShade::BinaryOp<ProShade::LessThanEquals>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v25)
  {
    v4 = *(v25 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 12) = 40;
  memcpy(v5 + 13, v25, v4);
  *(v5 + v4 + 13) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v22 = a2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  memcpy(v7 + 3, v5 + 3, v6);
  *(v8 + v6) = 32;
  *(v8 + v6 + 1) = 0;
  atomic_fetch_add(v7, 1u);
  v23 = v7;
  v9 = v7[1];
  v10 = malloc_type_malloc(v9 + 15, 0x10000403E1C8BA9uLL);
  v10[1] = v9 + 2;
  v10[2] = v9 + 3;
  atomic_store(1u, v10);
  v11 = v10 + 3;
  atomic_store(0, v10);
  memcpy(v10 + 3, v7 + 3, v9);
  *(v11 + v9) = 15676;
  *(v11 + v9 + 2) = 0;
  atomic_fetch_add(v10, 1u);
  v12 = v10[1];
  v13 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v13);
  v14 = v13 + 3;
  atomic_store(0, v13);
  v13[1] = v12 + 1;
  v13[2] = v12 + 2;
  memcpy(v13 + 3, v10 + 3, v12);
  v14[v12] = 32;
  v14[v12 + 1] = 0;
  atomic_fetch_add(v13, 1u);
  ProShade::VarT<ProShade::Node>::repr(a1 + 80);
  v15 = v13[1];
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v14, v15);
  memcpy(v18 + v15 + 12, v24, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v22 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    free(v24 - 12);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    free(v23);
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    free(v5);
  }

  if (v25)
  {
    if (atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      free(v25 - 12);
    }
  }
}

void sub_25FFB07DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    free(a12);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::BinaryOp<ProShade::LessThanEquals>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "BinaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 15, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 2;
  v5[2] = v4 + 3;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 15676;
  *(v6 + v4 + 2) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFB0A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::BinaryOp<ProShade::LessThanEquals>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "<=");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  PCHashWriteStream::writeValue(this, &v5);
  ProShade::VarT<ProShade::Node>::hash(a1 + 80, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

void ProShade::BinaryOp<ProShade::LessThanEquals>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  (**a2)(v8, a2, a1 + 48);
  (**a2)(v6, a2, a1 + 80);
  if (v8[2] != *(a1 + 8) || v6[2] != *(a1 + 12))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v6[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v7);
  v8[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9);
}

void sub_25FFB0C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C403815D87CLL);
  PCSharedCount::~PCSharedCount(va);
  v9 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

BOOL ProShade::BinaryOp<ProShade::LessThanEquals>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = (*(a2 + 16) + 144);
  v6 = *(a2 + 16);

  return ProShade::computeBinaryType<ProShade::LessThanEquals,BOOL>(v6, v5, a3);
}

void virtual thunk toProShade::BinaryOp<ProShade::LessThanEquals>::~BinaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_2872654A8;
  v1[14].var0 = &unk_287265560;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872655C0;
  v1[14].var0 = off_287265678;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[15].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_2872654A8;
  v1[14].var0 = &unk_287265560;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872655C0;
  v1[14].var0 = off_287265678;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::BinaryOp<ProShade::LessThanEquals>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3, int a4)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265580);
  *a1 = &unk_2872654A8;
  *(a1 + 112) = &unk_287265560;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v9 = *(a2 + 7);
  v10 = *(a3 + 7);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v11 = v9 == v10;
      v10 = *(a2 + 7);
      if (!v11)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v8);
      }
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 28) = v10;
  *(a1 + 44) = a4;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FFB1140(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::LessThanEquals>::BinaryOp(uint64_t a1)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265580);
  *a1 = &unk_2872654A8;
  *(a1 + 112) = &unk_287265560;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_28725E328;
  *(a1 + 96) = 0;
  PCSharedCount::PCSharedCount((a1 + 104));
  return a1;
}

void sub_25FFB12D4(_Unwind_Exception *a1)
{
  v7 = v4;
  *v6 = v7;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::LessThanEquals,BOOL>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 1)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v28 - v13;
    bzero(&v28 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 1, v12, Size);
  }

  v15 = *a2;
  if (v15 == 1)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v28 - v17;
    bzero(&v28 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 1, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 1, v19);
  result = ProShade::shapeIsVector(a1[1]);
  v21 = a1[1] == 1 || result;
  if (v21 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v30, "not implemented yet");
    PCString::PCString(&v29, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v30, &v29, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v22 = (a3 + 16);
    v23 = Size;
    do
    {
      v25 = *v12++;
      v24 = v25;
      v26 = *v16++;
      *v22++ = v24 ^ 1 | v26;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_25FFB1564(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_2_1(a1);
  if (v3)
  {
    OUTLINED_FUNCTION_0_13(v1, v2);
  }
}

LiPlaneTransform *LiPlaneTransform::LiPlaneTransform(LiPlaneTransform *this, LiPlaneTransform *a2, char a3)
{
  *(this + 10) = 0x3FF0000000000000;
  *(this + 5) = 0x3FF0000000000000;
  *this = 0x3FF0000000000000;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 31) = 0x3FF0000000000000;
  *(this + 26) = 0x3FF0000000000000;
  *(this + 21) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 120) = _Q1;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 297) = a3;
  return LiPlaneTransform::operator=(this, a2);
}

LiPlaneTransform *LiPlaneTransform::operator=(LiPlaneTransform *this, LiPlaneTransform *a2)
{
  if (a2 != this)
  {
    v3 = 0;
    v4 = this;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v4 + i) = *(a2 + i);
      }

      ++v3;
      v4 = (v4 + 32);
      a2 = (a2 + 32);
    }

    while (v3 != 4);
  }

  LiPlaneTransform::compute(this);
  return this;
}

float64x2_t LiPlaneTransform::compute(LiPlaneTransform *this)
{
  v2 = 0;
  v3 = (this + 264);
  v4 = this + 128;
  v5 = v4;
  do
  {
    v6 = 4;
    v7 = v5;
    do
    {
      *v7 = *(v7 - 8);
      ++v7;
      v6 -= 2;
    }

    while (v6);
    ++v2;
    v5 += 2;
  }

  while (v2 != 4);
  v8 = PCMatrix44Tmpl<double>::invertTranspose(v4);
  *(this + 256) = v8;
  if (v8)
  {
    *(this + 296) = 0;
  }

  else
  {
    MatrixPlane = liFindMatrixPlane(this, v3->f64);
    *(this + 296) = MatrixPlane;
    if (MatrixPlane && (*(this + 297) & 1) == 0)
    {
      result = vnegq_f64(*v3);
      v11 = vnegq_f64(v3[1]);
      *v3 = result;
      v3[1] = v11;
    }
  }

  return result;
}

BOOL PCMatrix44Tmpl<double>::invertTranspose(uint64_t a1)
{
  v2 = PCMatrix44Tmpl<double>::invert(a1, a1, 0.0);
  if (v2)
  {
    PCMatrix44Tmpl<double>::transpose(a1);
  }

  return v2;
}

uint64_t LiPlaneTransform::operator()(uint64_t a1, double *a2, uint64_t a3)
{
  if (*(a1 + 256) == 1)
  {
    PCMatrix44Tmpl<double>::transform<double>((a1 + 128), a2, a3);
    return 1;
  }

  else if (*(a1 + 296) == 1)
  {
    v4 = *(a1 + 280);
    *a3 = *(a1 + 264);
    *(a3 + 16) = v4;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t LiPlaneTransform::isValid(LiPlaneTransform *this)
{
  if (*(this + 256))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 296);
  }

  return v1 & 1;
}

void LiPolygon::LiPolygon(LiPolygon *this)
{
  *this = &unk_287265718;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = this + 64;
  *(this + 2) = -1;
  *(this + 96) = 0;
}

void LiPolygon::LiPolygon(LiPolygon *this, const LiPolygon *a2)
{
  *this = &unk_287265718;
  *(this + 2) = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = this + 64;
  *(this + 96) = *(a2 + 96);
  LiPolygon::ArrayFacet::copyFrom(this + 11, a2 + 11);
}

void sub_25FFB18C8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

char *LiPolygon::ArrayFacet::copyFrom(char **a1, __int128 ***a2)
{
  result = *a1;
  if (result != *a2)
  {
    return std::vector<LiPolygon::PosEdge>::__assign_with_size[abi:ne200100]<LiPolygon::PosEdge*,LiPolygon::PosEdge*>(result, **a2, (*a2)[1], ((*a2)[1] - **a2) >> 5);
  }

  return result;
}

void LiPolygon::~LiPolygon(LiPolygon *this)
{
  *this = &unk_287265718;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_287265718;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t LiPolygon::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  LiPolygon::ArrayFacet::copyFrom((a1 + 88), (a2 + 88));
  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t LiPolygon::computePlane(LiPolygon *this)
{
  if ((*(this + 96) & 1) == 0)
  {
    *(this + 5) = 0;
    v2 = (this + 40);
    v3 = (this + 16);
    *(this + 6) = 0;
    *(this + 7) = 0;
    v4 = *(this + 11);
    v5 = *v4;
    v6 = v4[1] - *v4;
    v7 = v6 >> 5;
    if ((v6 >> 5))
    {
      v8 = *v5;
      *(this + 4) = *(v5 + 2);
      *v3 = v8;
      if (v7 >= 1)
      {
        v9 = *v4;
        v10 = -((v6 >> 5) & 0x7FFFFFFF);
        v11 = (v9 + 1);
        v12 = 0uLL;
        v13 = 0.0;
        v14 = 1;
        do
        {
          v15 = v14;
          if (!(v10 + v14))
          {
            v15 = 0;
          }

          v16 = &v9[2 * v15];
          v17 = &v9[2 * (++v14 % v7)];
          v18.f64[0] = *v11;
          v19 = *(v16 + 8);
          *&v20.f64[0] = vdupq_laneq_s64(v19, 1).u64[0];
          v20.f64[1] = *v16;
          v21 = vsubq_f64(*(v17 + 8), v19);
          v22 = v19.f64[0] - *(v11 - 1);
          v18.f64[1] = *(v11 - 2);
          v23 = vsubq_f64(v20, v18);
          v24 = vextq_s8(v21, v21, 8uLL);
          v19.f64[0] = v24.f64[0];
          v19.f64[1] = *v17 - *v16;
          v25 = vdupq_lane_s64(*&v23.f64[0], 0);
          v25.f64[0] = v22;
          v26 = vmulq_f64(v21, v23);
          v24.f64[0] = v19.f64[1];
          v23.f64[0] = v22;
          v27 = vsubq_f64(v26, vmulq_f64(v19, v25));
          v28 = vmulq_f64(v24, v23);
          v12 = vaddq_f64(v12, v27);
          *(this + 40) = v12;
          v13 = vsubq_f64(v28, vdupq_laneq_s64(v28, 1)).f64[0] + v13;
          *(this + 7) = v13;
          v11 += 4;
        }

        while (v10 + v14 != 1);
      }

      PCVector3<double>::normalize(v2, 0.000000100000001);
    }

    else
    {
      *v3 = 0;
      *(this + 3) = 0;
      *(this + 4) = 0;
    }
  }

  return this + 16;
}

double LiPolygon::getPlaneEq@<D0>(LiPolygon *this@<X0>, double *a2@<X8>)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  v4 = *(this + 7);
  result = -(v2 * *(this + 2) + v3 * *(this + 3) + v4 * *(this + 4));
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = result;
  return result;
}

uint64_t LiPolygon::isCoplanar(LiPolygon *this, const LiPolygon *a2)
{
  v2 = *(this + 2);
  if (v2 < 0 || v2 != *(a2 + 2))
  {
    return (*(*this + 40))(this, a2);
  }

  else
  {
    return 1;
  }
}

BOOL LiPolygon::isConvex(LiPolygon *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  v1 = this + 40;
  v4 = fabs(v3) > fabs(v2);
  if (fabs(*(v1 + 2)) <= fabs(*&v1[8 * v4]))
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  elim<LiPolygon::PosFacet,LiChannelT<PCVector2<double>>>(v1 + 6, &__p, v5);
  IsConvex = liIsConvex(&__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return IsConvex;
}

void sub_25FFB1C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LiPolygon::set(uint64_t a1, double *a2)
{
  v3 = *(a1 + 88);
  if (a2[2] < 0.0 || a2[3] < 0.0)
  {

    std::vector<LiPolygon::PosEdge>::resize(v3, 0);
  }

  else
  {
    std::vector<LiPolygon::PosEdge>::resize(v3, 4uLL);
    v5 = **(a1 + 88);
    v6 = *a2;
    v7 = a2[1];
    *v5 = *a2;
    *(v5 + 8) = v7;
    *(v5 + 16) = 0;
    v8 = a2[2];
    v9 = v7 + a2[3];
    *(v5 + 32) = v6;
    *(v5 + 40) = v9;
    *(v5 + 48) = 0;
    v10 = v6 + v8;
    *(v5 + 64) = v10;
    *(v5 + 72) = v9;
    *(v5 + 80) = 0;
    *(v5 + 96) = v10;
    *(v5 + 104) = v7;
    *(v5 + 112) = 0;
  }
}

BOOL PCPlane<double>::intersect(double *a1, double *a2, uint64_t a3, float64x2_t *a4)
{
  memset(v7, 0, sizeof(v7));
  result = planeIntersection<double>(a1, (a1 + 3), a2, (a2 + 3), v7[0].f64, &v7[1].f64[1]);
  if (result)
  {
    return PCPlane<double>::intersect(a3, v7, a4);
  }

  return result;
}

void LiPolygon::dilate(void *a1, void *a2)
{
  memset(&v140, 0, sizeof(v140));
  v4 = *(a1[11] + 8) - *a1[11];
  std::vector<unsigned int>::resize(&v140, (v4 >> 5));
  if ((v4 >> 5) >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(((v4 >> 5) & 0x7FFFFFFF) - 1);
    v7 = xmmword_260343DF0;
    v8 = xmmword_260343E00;
    v9 = v140.__begin_ + 2;
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 2) = v5;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 1) = v5 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = v5 + 2;
        v9[1] = v5 + 3;
      }

      v5 += 4;
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
    }

    while ((((v4 >> 5) + 3) & 0xFFFFFFFC) != v5);
  }

  v12 = a1[11];
  v13 = ((v12[1] - *v12) >> 5);
  if (v13 < 1)
  {
    goto LABEL_30;
  }

  v14 = 0;
  do
  {
    if (v13 <= 0)
    {
      _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
    }

    v15 = v14;
    if (v14 < 0)
    {
      v15 = v14 % v13 + v13;
    }

    v16 = v15 % v13 + 1;
    if (v15 % v13 <= -2)
    {
      v16 = v16 % v13 + v13;
    }

    v12 = a1[11];
    v17 = *v12;
    v18 = (*v12 + 32 * (v15 % v13));
    v19 = v16 % v13;
    v20 = *v12 + 32 * v19;
    if (vabdd_f64(*v18, *v20) >= 0.0000001 || vabdd_f64(v18[1], *(v20 + 8)) >= 0.0000001 || vabdd_f64(v18[2], *(v20 + 16)) >= 0.0000001)
    {
      ++v14;
    }

    else
    {
      v21 = v12[1];
      if (v20 + 32 != v21)
      {
        do
        {
          v22 = v20 + 32;
          *v20 = *(v20 + 32);
          *(v20 + 12) = *(v20 + 44);
          v23 = v20 + 64;
          v20 += 32;
        }

        while (v23 != v21);
        v20 = v22;
      }

      v12[1] = v20;
      v24 = &v140.__begin_[v19];
      v25 = (v140.__end_ - (v24 + 1));
      if (v140.__end_ != v24 + 1)
      {
        memmove(&v140.__begin_[v19], v24 + 1, v140.__end_ - (v24 + 1));
      }

      v140.__end_ = &v25[v24];
      v12 = a1[11];
      v17 = *v12;
    }

    v26 = v12[1] - v17;
    v13 = (v26 >> 5);
  }

  while (v14 < (v26 >> 5));
  if (v13 <= 2)
  {
LABEL_30:
    std::vector<LiPolygon::PosEdge>::resize(v12, 0);
    goto LABEL_113;
  }

  v27 = (*(*a1 + 16))(a1);
  v28 = v27[1];
  v137 = *v27;
  v138 = v28;
  v139 = v27[2];
  __p = 0;
  v135 = 0;
  v136 = 0;
  std::vector<PCPlane<double>>::reserve(&__p, (v26 >> 4));
  v29 = 0;
  v132 = 0;
  v133 = v13;
  do
  {
    if (v13 <= 0)
    {
      _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
    }

    v30 = v29 + 1;
    if (v29 <= -2)
    {
      v30 = v30 % v13 + v13;
    }

    v31 = *a1[11] + 32 * v29;
    v32 = *a1[11] + 32 * (v30 % v13);
    v33 = *v32;
    v34 = *v31;
    v126 = v138.f64[1];
    v122 = *(v31 + 8);
    v123 = *(v32 + 8);
    v124 = v139;
    v121 = *(*a2 + 8 * v140.__begin_[v132]);
    memset(v142, 0, sizeof(v142));
    v141 = 0u;
    v35 = v135;
    if (v135 >= v136)
    {
      v13 = std::vector<PCPlane<double>>::__emplace_back_slow_path<PCPlane<double>>(&__p, &v141);
    }

    else
    {
      *v135 = 0;
      *(v35 + 1) = 0;
      *(v35 + 2) = 0;
      *(v35 + 24) = *(v142 + 8);
      *(v35 + 5) = *(&v142[1] + 1);
      v13 = v35 + 48;
    }

    *&v36.f64[0] = vdupq_laneq_s64(v124, 1).u64[0];
    v37 = vsubq_f64(v123, v122);
    v36.f64[1] = v126;
    *&v38.f64[0] = vdupq_laneq_s64(v37, 1).u64[0];
    v38.f64[1] = v33 - v34;
    v135 = v13;
    *(v13 - 24) = vsubq_f64(vmulq_f64(v37, v36), vmulq_f64(v38, v124));
    *(v13 - 1) = (v33 - v34) * v124.f64[0] - v126 * v37.f64[0];
    PCVector3<double>::normalize((v13 - 24), 0.000000100000001);
    v39 = *(v31 + 16) - v121 * *(v13 - 1);
    *(v13 - 3) = vsubq_f64(*v31, vmulq_n_f64(*(v13 - 24), v121));
    *(v13 - 4) = v39;
    LODWORD(v13) = v133;
    v29 = (v132 + 1) % v133;
    v132 = v29;
  }

  while (v29);
  v132 = 0;
  v40 = (*(a1[11] + 8) - *a1[11]) >> 5;
  v133 = v40;
  if (v40 < 1)
  {
    goto LABEL_111;
  }

  v41 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v125 = _Q0;
  v127 = vdupq_n_s64(0x3E7AD7F2A0000000uLL);
  do
  {
    if (v40 <= 0)
    {
      _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
    }

    v47 = v41 - 1;
    if (v41 <= 0)
    {
      v47 = v47 % v40 + v40;
    }

    v48 = __p + 48 * (v47 % v40);
    v49 = v132;
    v50 = *a1[11];
    v51 = __p + 48 * v132;
    v130 = 0uLL;
    v131 = 0.0;
    v52 = PCPlane<double>::intersect(v137.f64, v48, v51, &v130);
    v53 = v132;
    if (v52)
    {
      if (v133 <= 0)
      {
        _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
      }

      v54 = v132 - 1;
      if (v132 <= 0)
      {
        v54 = v54 % v133 + v133;
      }

      v55 = *(*a2 + 8 * v140.__begin_[v54 % v133]);
      v56 = *(*a2 + 8 * v140.__begin_[v132]);
      if (v55 == 0.0 && v56 == 0.0)
      {
        goto LABEL_60;
      }

      if (v55 < v56)
      {
        v55 = *(*a2 + 8 * v140.__begin_[v132]);
      }

      if (v55 <= 0.0)
      {
        goto LABEL_59;
      }

      memset(v142, 0, sizeof(v142));
      v141 = 0u;
      v57.f64[0] = *(v48 + 5);
      v58 = *(v48 + 24);
      v59 = *(v51 + 24);
      v57.f64[1] = *(v51 + 5);
      v60 = vsqrtq_f64(vaddq_f64(vpaddq_f64(vmulq_f64(v58, v58), vmulq_f64(v59, v59)), vmulq_f64(v57, v57)));
      v61 = vbslq_s8(vcgtq_f64(v127, vabsq_f64(v60)), v125, v60);
      v62 = vdivq_f64(v58, vdupq_lane_s64(*&v61.f64[0], 0));
      v63 = vdivq_f64(v59, vdupq_laneq_s64(v61, 1));
      v64 = vdivq_f64(v57, v61);
      v65 = vaddq_f64(v62, v63);
      v66 = vaddq_f64(v64, vdupq_laneq_s64(v64, 1));
      v67 = vaddvq_f64(v64);
      *(v142 + 8) = v65;
      *(&v142[1] + 1) = v67;
      v68 = vmulq_f64(v65, v65);
      v69 = sqrt(vaddq_f64(vmulq_f64(v66, v66), vaddq_f64(v68, vdupq_laneq_s64(v68, 1))).f64[0]);
      if (fabs(v69) >= 0.000000100000001)
      {
        v65 = vdivq_f64(v65, vdupq_lane_s64(*&v69, 0));
        *(v142 + 8) = v65;
        v67 = v67 / v69;
        *(&v142[1] + 1) = v67;
      }

      v70 = (v50 + 32 * v49);
      v71 = v55 + v55;
      v72 = vmulq_n_f64(v65, v71);
      v73 = v70[1].f64[0] - v71 * v67;
      v141 = vsubq_f64(*v70, v72);
      *v142 = v73;
      if (vaddvq_f64(vmulq_f64(v65, vsubq_f64(v130, v141))) + v67 * (v131 - v73) >= 0.0)
      {
LABEL_59:
        v74 = *a1[11] + 32 * v132;
        v75 = v130;
        *(v74 + 16) = v131;
        *v74 = v75;
LABEL_60:
        ++v41;
        goto LABEL_70;
      }

      v129[0] = *v48;
      v129[1] = *(v48 + 1);
      v129[2] = *(v48 + 2);
      v128[0] = *v51;
      v128[1] = *(v51 + 1);
      v128[2] = *(v51 + 2);
      if (!PCPlane<double>::intersect(v137.f64, v141.f64, v129, (*a1[11] + 32 * v132)))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(__x, "edges must not be parallel (1)");
        PCException::PCException(exception, __x);
      }

      std::vector<PCPlane<double>>::insert(&__p, __p + 48 * v41, &v141);
      v88 = a1[11];
      v89 = v41 + 1;
      v90 = *v88 + 32 * v89;
      *__x = 0u;
      v144 = 0u;
      std::vector<LiPolygon::PosEdge>::insert(v88, v90, __x);
      if (!PCPlane<double>::intersect(v137.f64, v141.f64, v128, (*a1[11] + 32 * v89)))
      {
        v120 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(__x, "edges must not be parallel (2)");
        PCException::PCException(v120, __x);
      }

      __x[0] = -1;
      v91.__i_ = &v140.__begin_[v132];
      std::vector<int>::insert(&v140, v91, __x);
      v41 += 2;
    }

    else
    {
      v76 = v135;
      v77 = __p + 48 * v132;
      if (v77 + 48 != v135)
      {
        do
        {
          v78 = v77 + 48;
          *v77 = *(v77 + 3);
          *(v77 + 2) = *(v77 + 8);
          *(v77 + 24) = *(v77 + 72);
          *(v77 + 5) = *(v77 + 11);
          v79 = v77 + 96;
          v77 += 48;
        }

        while (v79 != v76);
        v77 = v78;
      }

      v135 = v77;
      v80 = a1[11];
      v81 = v80[1];
      v82 = (*v80 + 32 * v53);
      if (v82 + 2 != v81)
      {
        do
        {
          v83 = v82 + 2;
          *v82 = v82[2];
          *(v82 + 12) = *(v82 + 44);
          v84 = v82 + 4;
          v82 += 2;
        }

        while (v84 != v81);
        v82 = v83;
      }

      v80[1] = v82;
      v85 = &v140.__begin_[v53];
      v86 = (v140.__end_ - (v85 + 1));
      if (v140.__end_ != v85 + 1)
      {
        memmove(&v140.__begin_[v53], v85 + 1, v140.__end_ - (v85 + 1));
      }

      v140.__end_ = &v86[v85];
    }

LABEL_70:
    v132 = v41;
    v87 = *(a1[11] + 8) - *a1[11];
    v40 = v87 >> 5;
    v133 = v87 >> 5;
  }

  while (v41 < v133);
  v132 = 0;
  if (v40 >= 1)
  {
    v92 = 0;
    v93 = v87 >> 5;
    do
    {
      if (v93 <= 0)
      {
        _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
      }

      v94 = v92 + 2;
      if (v92 <= -3)
      {
        v94 = v94 % v93 + v93;
      }

      v95 = __p + 48 * v92;
      v96 = v94 % v93;
      v97 = a1[11];
      v98 = v96;
      v99 = *v97;
      v100 = *v97 + 32 * v98;
      v101 = vmulq_f64(vsubq_f64(*(v100 + 8), *(v95 + 8)), *(v95 + 2));
      if ((*v100 - *v95) * *(v95 + 3) + v101.f64[0] + v101.f64[1] >= 0.0)
      {
        ++v92;
      }

      else
      {
        if (v133 <= 0)
        {
          _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
        }

        v102 = v132 + 1;
        if (v132 <= -2)
        {
          v102 = v102 % v133 + v133;
        }

        v103 = v102 % v133;
        v104 = a1[11];
        v105 = *v104;
        v106 = v104[1];
        v107 = (*v104 + 32 * v103);
        if (v107 + 2 == v106)
        {
          v110 = a1[11];
        }

        else
        {
          do
          {
            v108 = v107 + 2;
            *v107 = v107[2];
            *(v107 + 12) = *(v107 + 44);
            v109 = v107 + 4;
            v107 += 2;
          }

          while (v109 != v106);
          v110 = a1[11];
          v105 = *v110;
          v107 = v108;
        }

        v104[1] = v107;
        if (((v110[1] - v105) & 0x1FFFFFFFE0) == 0)
        {
          break;
        }

        if (v133 <= 0)
        {
          _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
        }

        v111 = v132 + 1;
        if (v132 <= -2)
        {
          v111 = v111 % v133 + v133;
        }

        v112 = v135;
        v113 = __p + 48 * (v111 % v133);
        if (v113 + 48 != v135)
        {
          do
          {
            v114 = v113 + 48;
            *v113 = *(v113 + 3);
            *(v113 + 2) = *(v113 + 8);
            *(v113 + 24) = *(v113 + 72);
            *(v113 + 5) = *(v113 + 11);
            v115 = v113 + 96;
            v113 += 48;
          }

          while (v115 != v112);
          v113 = v114;
        }

        v135 = v113;
        if (v133 <= 0)
        {
          _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
        }

        v116 = v132 + 1;
        if (v132 <= -2)
        {
          v116 = v116 % v133 + v133;
        }

        PCMod::remove(&v132, v116 % v133, 1);
        if (v133 <= 0)
        {
          _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
        }

        v117 = v132 + 1;
        if (v132 <= -2)
        {
          v117 = v117 % v133 + v133;
        }

        v118 = v132 + 1;
        if (v132 <= -2)
        {
          v118 = v118 % v133 + v133;
        }

        PCPlane<double>::intersect(v137.f64, v95, __p + 48 * (v117 % v133), (*a1[11] + 32 * (v118 % v133)));
        v97 = a1[11];
        v99 = *v97;
      }

      v93 = (v97[1] - v99) >> 5;
      v132 = v92;
      v133 = v93;
    }

    while (v92 < v93);
  }

LABEL_111:
  if (__p)
  {
    v135 = __p;
    operator delete(__p);
  }

LABEL_113:
  if (v140.__begin_)
  {
    v140.__end_ = v140.__begin_;
    operator delete(v140.__begin_);
  }
}

void sub_25FFB2A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  PCString::~PCString((v37 - 160));
  if (__p)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 232);
  if (v39)
  {
    *(v37 - 224) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

int *PCMod::remove(int *this, int a2, int a3)
{
  if (a3 < 0)
  {
    _PCMod_error("howmany must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 134);
  }

  v3 = this[1];
  if (v3 <= a3)
  {
    _PCMod_error("can't remove all values", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 136);
  }

  v4 = v3 - a3;
  this[1] = v3 - a3;
  v5 = *this;
  if (*this > a2)
  {
    if (v5 >= a3 + a2)
    {
      v5 -= a3;
    }

    else
    {
      v5 = a2;
    }

    *this = v5;
  }

  if (v4 <= 0)
  {
    _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
  }

  if (v5 < 0)
  {
    v5 = v5 % v4 + v4;
  }

  *this = v5 % v4;
  return this;
}

void LiPolygon::projectToPlane(uint64_t a1, float64x2_t *a2, double *a3)
{
  if (PCPlane<double>::setImplicit(a1 + 16, a2))
  {
    v16 = 0x3FF0000000000000;
    v13 = 0x3FF0000000000000;
    v10 = 0x3FF0000000000000;
    v7 = 0x3FF0000000000000;
    v8 = 0u;
    v9 = 0u;
    v11 = 0u;
    v12 = 0u;
    v14 = 0u;
    v15 = 0u;
    if (PCMatrix44Tmpl<double>::flatten(&v7, a2->f64, a3))
    {
      transform<LiPolygon::PosFacet,LiPolygon::PosFacet,double>(&v7, a1 + 88, (a1 + 88));
    }

    else
    {
      *(a1 + 72) = *(a1 + 64);
    }
  }

  else
  {
    v6 = *(a1 + 88);

    std::vector<LiPolygon::PosEdge>::resize(v6, 0);
  }
}

void transform<LiPolygon::PosFacet,LiPolygon::PosFacet,double>(double *a1, uint64_t a2, void **a3)
{
  v6 = *(*a2 + 8) - **a2;
  std::vector<LiPolygon::PosEdge>::resize(*a3, (v6 >> 5));
  if ((v6 >> 5) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 5) & 0x7FFFFFFF;
    do
    {
      PCMatrix44Tmpl<double>::transform<double>(a1, (**a2 + v7), (**a3 + v7));
      v7 += 32;
      --v8;
    }

    while (v8);
  }
}

uint64_t LiPolygon::isEmpty(LiPolygon *this)
{
  if (((*(*(this + 11) + 8) - **(this + 11)) & 0x1FFFFFFFE0) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 96) ^ 1;
  }

  return v1 & 1;
}

uint64_t LiPolygon::isFinite(LiPolygon *this)
{
  if (((*(*(this + 11) + 8) - **(this + 11)) & 0x1FFFFFFFE0) != 0)
  {
    v1 = *(this + 96) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL LiPolygon::isClockwise(double ***this)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  elim<LiPolygon::PosFacet,LiChannelT<PCVector2<double>>>(this + 11, &v12, 2);
  v1 = (v13 - v12) >> 4;
  v2 = v1 - 1;
  if (v1 >= 1)
  {
    v3 = 0.0;
    v4 = 1;
    v5 = v12;
    do
    {
      v6 = v4;
      if (v4 == (((v13 - v12) >> 4) & 0x7FFFFFFF))
      {
        v6 = 0;
      }

      v7 = *v5++;
      v8 = vsubq_f64(v12[v2 % v1], v7);
      v9 = vmulq_f64(vsubq_f64(v12[v6], v7), vextq_s8(v8, v8, 8uLL));
      v3 = v3 + vsubq_f64(v9, vdupq_laneq_s64(v9, 1)).f64[0];
      ++v2;
      ++v4;
    }

    while (v4 - (((v13 - v12) >> 4) & 0x7FFFFFFF) != 1);
    v10 = v3 <= 0.0;
    goto LABEL_8;
  }

  v10 = 1;
  if (v12)
  {
LABEL_8:
    v13 = v12;
    operator delete(v12);
  }

  return v10;
}

void sub_25FFB2EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL LiPolygon::contains(void **a1, double *a2)
{
  v2 = *a1[11];
  v3 = a1[11][1] - v2;
  v4 = v3 >> 5;
  v5 = (v3 >> 5) - 1;
  if ((v3 >> 5) < 1)
  {
    return 0;
  }

  v8 = (v3 >> 5) & 0x7FFFFFFF;
  v9 = (v2 + 8);
  v10 = v8;
  do
  {
    if (*a2 == *(v9 - 1) && a2[1] == *v9)
    {
      return 1;
    }

    v9 += 4;
    --v10;
  }

  while (v10);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -v8;
  v16 = 1;
  do
  {
    v17 = *a1[11];
    v18 = v16;
    if (!(v15 + v16))
    {
      v18 = 0;
    }

    v19 = (v17 + 32 * v18);
    v20 = v17 + v11;
    v21 = *(v17 + v11 + 8);
    v22 = v19[1];
    v23 = a2[1];
    if (v21 == v22)
    {
      if (v21 == v23)
      {
        v24 = *a2;
        v25 = *(v17 + v11);
        v26 = *v19;
        if (*a2 > v25 && v24 <= v26)
        {
          return 1;
        }

        if (v24 < v25 && v24 >= v26)
        {
          return 1;
        }
      }
    }

    else if ((v23 >= v21 || v23 >= v22) && (v23 <= v21 || v23 <= v22))
    {
      if (v23 != v22 || ((v31 = *(v17 + 32 * (v5 % v4) + 8), v21 < v22) ? (v32 = v31 < v21) : (v32 = 0), !v32 && (v21 > v22 ? (v33 = v31 <= v21) : (v33 = 1), v33)))
      {
        v34 = *(v17 + v11) + (v23 - v21) * (*v19 - *(v17 + v11)) / (v22 - v21);
        if (v34 >= *a2)
        {
          if (v34 == *a2)
          {
            if ((v13 & 1) == 0)
            {
              v12 = ((*a1)[7])(a1);
              v22 = v19[1];
              v21 = *(v20 + 8);
            }

            v14 += (v12 ^ (v22 < v21)) & 1;
            v13 = 1;
          }
        }

        else
        {
          ++v14;
        }
      }
    }

    v11 += 32;
    ++v5;
    ++v16;
  }

  while (v15 + v16 != 1);
  return v14 == 1;
}

BOOL LiPolygon::contains(void **a1, float64x2_t *a2)
{
  v10 = *a2;
  result = LiPolygon::contains(a1, v10.f64);
  if (result)
  {
    v5 = a2->f64[1];
    v9[0] = a2->f64[0] + a2[1].f64[0];
    v9[1] = v5;
    result = LiPolygon::contains(a1, v9);
    if (result)
    {
      v6 = a2->f64[1] + a2[1].f64[1];
      v8[0] = a2->f64[0];
      v8[1] = v6;
      result = LiPolygon::contains(a1, v8);
      if (result)
      {
        v7 = vaddq_f64(*a2, a2[1]);
        return LiPolygon::contains(a1, v7.f64);
      }
    }
  }

  return result;
}

BOOL transform(double *a1, void **a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  transform<LiPolygon::PosFacet,LiChannelT<PCVector4<double>>,double>(a1, (a2 + 11), &v12);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = minmax<double>(&v12, &v10, &v8);
  v4 = *(&v11 + 1);
  v5 = *(&v9 + 1);
  v6 = perspectiveDivide<LiChannelT<PCVector4<double>>,LiPolygon::PosFacet,double>(&v12, a2 + 11);
  ((*a2)[2])(a2, v6);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v4 * v5 > 0.0 && v3;
}

void sub_25FFB3264(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void transform<LiPolygon::PosFacet,LiChannelT<PCVector4<double>>,double>(double *a1, uint64_t a2, void *a3)
{
  v6 = *(*a2 + 8) - **a2;
  std::vector<PCVector4<double>>::resize(a3, (v6 >> 5));
  if ((v6 >> 5) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 5) & 0x7FFFFFFF;
    do
    {
      PCMatrix44Tmpl<double>::transform<double>(a1, (**a2 + v7), (*a3 + v7));
      v7 += 32;
      --v8;
    }

    while (v8);
  }
}

BOOL minmax<double>(void *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  v5 = v4 >> 5;
  if ((v4 >> 5) >= 1)
  {
    v6 = v3[1];
    *a3 = *v3;
    *(a3 + 1) = v6;
    v7 = v3[1];
    *a2 = *v3;
    *(a2 + 1) = v7;
    if (v5 != 1)
    {
      v8 = (v4 >> 5) & 0x7FFFFFFF;
      v9 = (*a1 + 56);
      v10 = v8 - 1;
      do
      {
        v11 = *(v9 - 3);
        v12 = a2[1];
        if (v11 >= *a2)
        {
          v11 = *a2;
        }

        *a2 = v11;
        v13 = *(v9 - 2);
        if (v13 >= v12)
        {
          v13 = v12;
        }

        a2[1] = v13;
        v14 = *(v9 - 1);
        v15 = a2[3];
        if (v14 >= a2[2])
        {
          v14 = a2[2];
        }

        a2[2] = v14;
        v16 = *v9;
        if (*v9 >= v15)
        {
          v16 = v15;
        }

        a2[3] = v16;
        v17 = *(v9 - 3);
        v18 = a3[1];
        if (*a3 >= v17)
        {
          v17 = *a3;
        }

        *a3 = v17;
        v19 = *(v9 - 2);
        if (v18 >= v19)
        {
          v19 = v18;
        }

        a3[1] = v19;
        v20 = *(v9 - 1);
        v21 = a3[3];
        if (a3[2] >= v20)
        {
          v20 = a3[2];
        }

        a3[2] = v20;
        v22 = *v9;
        v9 += 4;
        v23 = v22;
        if (v21 >= v22)
        {
          v23 = v21;
        }

        a3[3] = v23;
        --v10;
      }

      while (v10);
    }
  }

  return v5 > 0;
}

double perspectiveDivide<LiChannelT<PCVector4<double>>,LiPolygon::PosFacet,double>(void *a1, void **a2)
{
  v4 = a1[1] - *a1;
  std::vector<LiPolygon::PosEdge>::resize(*a2, (v4 >> 5));
  if ((v4 >> 5) >= 1)
  {
    v6 = (v4 >> 5) & 0x7FFFFFFF;
    v7 = (**a2 + 16);
    v8 = (*a1 + 24);
    do
    {
      v9 = *v8;
      *(v7 - 1) = vdivq_f64(*(v8 - 3), vdupq_lane_s64(*v8, 0));
      result = *(v8 - 1) / v9;
      *v7 = result;
      v7 += 4;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

void LiImagePolygon::LiImagePolygon(LiImagePolygon *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = this + 64;
  *(this + 2) = -1;
  *(this + 96) = 0;
  *this = &unk_287265768;
  *(this + 13) = this + 64;
}

void LiImagePolygon::LiImagePolygon(LiImagePolygon *this, const LiImagePolygon *a2)
{
  *(this + 1) = 0u;
  v4 = this + 16;
  *(this + 10) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 11) = this + 64;
  *(this + 2) = -1;
  *(this + 96) = 0;
  *this = &unk_287265768;
  *(this + 13) = this + 64;
  LiPolygon::ArrayFacet::copyFrom(this + 11, a2 + 11);
  LiPolygon::ArrayFacet::copyFrom(this + 13, a2 + 13);
  v5 = *(a2 + 1);
  *(v4 + 2) = *(a2 + 4);
  *v4 = v5;
  v6 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v6;
}

void sub_25FFB35A0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[8];
  if (v4)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void LiImagePolygon::~LiImagePolygon(LiImagePolygon *this)
{
  *this = &unk_287265718;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_287265718;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_287265718;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t LiImagePolygon::operator=(uint64_t a1, uint64_t a2)
{
  LiPolygon::ArrayFacet::copyFrom((a1 + 88), (a2 + 88));
  LiPolygon::ArrayFacet::copyFrom((a1 + 104), (a2 + 104));
  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  return a1;
}

void LiImagePolygon::dilateType(uint64_t a1, int a2, double a3)
{
  v6 = *(*(a1 + 88) + 8) - **(a1 + 88);
  __p = 0;
  v25 = 0;
  v26 = 0;
  std::vector<double>::resize(&__p, (v6 >> 5));
  if ((v6 >> 5) >= 1)
  {
    v7 = __p;
    v8 = (v6 >> 5) & 0x7FFFFFFF;
    v9 = (**(a1 + 104) + 24);
    do
    {
      v10 = *v9;
      v9 += 8;
      if (v10 == a2)
      {
        v11 = a3;
      }

      else
      {
        v11 = 0.0;
      }

      *v7++ = v11;
      --v8;
    }

    while (v8);
  }

  LiPolygon::dilate(a1, &__p);
  v12 = *(a1 + 104);
  v13 = *v12;
  v14 = v12[1] - *v12;
  if (v14)
  {
    v15 = v14 >> 5;
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = vdupq_n_s64(v16 - 1);
    v19 = xmmword_260343DF0;
    v20 = xmmword_260343E00;
    v21 = (v13 + 88);
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v21 - 16) = 1;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v21 - 8) = 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v21 = 1;
        v21[8] = 1;
      }

      v19 = vaddq_s64(v19, v22);
      v20 = vaddq_s64(v20, v22);
      v21 += 32;
      v17 -= 4;
    }

    while (v17);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_25FFB389C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t LiImagePolygon::getDOD@<D0>(LiImagePolygon *this@<X0>, double a2@<D0>, int32x2_t *a3@<X8>)
{
  v16 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v17 = _Q0;
  if (a2 <= 0.0)
  {
    bounds<LiPolygon::PosFacet,double>(this + 88, &v16);
  }

  else
  {
    LiImagePolygon::LiImagePolygon(v12, this);
    LiImagePolygon::dilateType(v12, 0, a2);
    bounds<LiPolygon::PosFacet,double>(&v15, &v16);
    v12[0] = &unk_287265718;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  result = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v16, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
  v11 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v16, v17)))), result);
  *a3 = result;
  a3[1] = v11;
  return result;
}

void sub_25FFB39AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LiImagePolygon::set(uint64_t a1, double *a2, int a3)
{
  LiPolygon::set(a1, a2);
  std::vector<LiPolygon::PosEdge>::resize(*(a1 + 104), ((*(*(a1 + 88) + 8) - **(a1 + 88)) >> 5));
  v5 = *(a1 + 104);
  v6 = *v5;
  v7 = v5[1] - *v5;
  if (v7)
  {
    v8 = v7 >> 5;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = (v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = vdupq_n_s64(v9 - 1);
    v12 = xmmword_260343DF0;
    v13 = xmmword_260343E00;
    v14 = (v6 + 88);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 16) = a3;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 8) = a3;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = a3;
        v14[8] = a3;
      }

      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 32;
      v10 -= 4;
    }

    while (v10);
  }
}

void LiImagePolygon::set(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = *(a2 + 8);
  LiPolygon::ArrayFacet::copyFrom((a1 + 88), (a2 + 88));
  v6 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  *(a1 + 96) = *(a2 + 96);
  std::vector<LiPolygon::PosEdge>::resize(*(a1 + 104), ((*(*(a1 + 88) + 8) - **(a1 + 88)) >> 5));
  v8 = *(a1 + 104);
  v9 = *v8;
  v10 = v8[1] - *v8;
  if (v10)
  {
    v11 = v10 >> 5;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = xmmword_260343DF0;
    v16 = xmmword_260343E00;
    v17 = (v9 + 88);
    v18 = vdupq_n_s64(4uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v14, v16));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v17 - 16) = a3;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v17 - 8) = a3;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
      {
        *v17 = a3;
        v17[8] = a3;
      }

      v15 = vaddq_s64(v15, v18);
      v16 = vaddq_s64(v16, v18);
      v17 += 32;
      v13 -= 4;
    }

    while (v13);
  }
}

uint64_t **LiImagePolygon::operator&=(uint64_t **a1, uint64_t a2)
{
  v3 = *(*(a2 + 88) + 8) - **(a2 + 88);
  if ((v3 >> 5) >= 1)
  {
    v5 = 0;
    v6 = -((v3 >> 5) & 0x7FFFFFFF);
    v7 = 1;
    do
    {
      v8 = **(a2 + 88);
      v9 = v8 + v5;
      v10 = v7;
      if (!(v6 + v7))
      {
        v10 = 0;
      }

      v11 = v8 + 32 * v10;
      v12 = *v11 - *v9;
      v13 = *(a2 + 40);
      v19 = *v9;
      v14 = *(a2 + 48);
      *&v15.f64[0] = vdupq_laneq_s64(v14, 1).u64[0];
      v15.f64[1] = v13;
      v16 = vsubq_f64(*(v11 + 8), *(v9 + 8));
      *&v17.f64[0] = vdupq_laneq_s64(v16, 1).u64[0];
      v17.f64[1] = v12;
      v20 = *(v9 + 8);
      v21 = vsubq_f64(vmulq_f64(v16, v15), vmulq_f64(v17, v14));
      v22 = v12 * v14.f64[0] - v13 * v16.f64[0];
      LiImagePolygon::clip(a1, &v19, *(**(a2 + 104) + v5 + 24));
      v5 += 32;
      ++v7;
    }

    while (v6 + v7 != 1);
  }

  return a1;
}

uint64_t LiImagePolygon::clip(uint64_t **a1, double *a2, int a3)
{
  v3 = a2[4];
  v4 = a2[5];
  v5 = -(a2[3] * *a2 + v3 * a2[1] + v4 * a2[2]);
  *v7 = a2[3];
  *&v7[1] = v3;
  *&v7[2] = v4;
  *&v7[3] = v5;
  return LiImagePolygon::do_clip(a1, a2, v7, a3);
}

{
  v6 = -*a2;
  v15 = 0;
  v14 = 0x3FF0000000000000uLL;
  v16 = v6;
  v7 = LiImagePolygon::clip(a1, &v14, a3);
  v8 = *a2 + a2[2];
  v15 = 0;
  v14 = 0xBFF0000000000000;
  v16 = v8;
  v9 = v7 | LiImagePolygon::clip(a1, &v14, a3);
  v10 = -a2[1];
  v14 = xmmword_260342700;
  v15 = 0;
  v16 = v10;
  v11 = LiImagePolygon::clip(a1, &v14, a3);
  v12 = a2[1] + a2[3];
  v14 = xmmword_26034D970;
  v15 = 0;
  v16 = v12;
  return v9 | v11 | LiImagePolygon::clip(a1, &v14, a3);
}

uint64_t LiImagePolygon::clip(uint64_t **a1, uint64_t a2, double *a3)
{
  v3 = *(*(a2 + 88) + 8) - **(a2 + 88);
  v4 = v3 >> 5;
  if ((v3 >> 5) < 1)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -((v3 >> 5) & 0x7FFFFFFF);
    v11 = 1;
    do
    {
      v12 = **(a2 + 88);
      v13 = v12 + v8;
      v14 = v11;
      if (!(v10 + v11))
      {
        v14 = 0;
      }

      v15 = v12 + 32 * v14;
      v16 = *v13;
      v17 = (v12 + 32 * ((v11 + 1) % v4));
      v18 = *(v13 + 8);
      v19 = vsubq_f64(*(v15 + 8), v18);
      v20 = *(a2 + 48);
      *&v21.f64[0] = vdupq_laneq_s64(v20, 1).u64[0];
      v21.f64[1] = *(a2 + 40);
      *&v22.f64[0] = vdupq_laneq_s64(v19, 1).u64[0];
      v22.f64[1] = *v15 - *v13;
      v23 = vsubq_f64(vmulq_f64(v19, v21), vmulq_f64(v22, v20));
      v24 = v22.f64[1] * v20.f64[0] - *(a2 + 40) * v19.f64[0];
      v25 = vaddvq_f64(vmulq_f64(v23, *v17)) + v24 * v17[1].f64[0];
      v26 = v25 < 0.0;
      if (v25 >= 0.0)
      {
        v27 = v23.f64[0];
      }

      else
      {
        v27 = -v23.f64[0];
      }

      if (v26)
      {
        v28 = -v23.f64[1];
      }

      else
      {
        v28 = v23.f64[1];
      }

      if (v26)
      {
        v24 = -v24;
      }

      *v35 = *v13;
      *&v35[8] = v18;
      v36.f64[0] = v27;
      v36.f64[1] = v28;
      v37 = v24;
      v29 = *(**(a2 + 104) + v8 + 24);
      v32.f64[0] = v27;
      v32.f64[1] = v28;
      v33 = v24;
      v34 = -(v16 * v27 + v28 * v18.f64[0] + vmuld_lane_f64(v24, v18, 1));
      PCMatrix44Tmpl<double>::transform_row<double>(a3, v32.f64, v32.f64);
      v30 = vaddvq_f64(vmulq_f64(v32, v32)) + v33 * v33;
      if (fabs(v30) >= 1.0e-24)
      {
        v36 = v32;
        v37 = v33;
        *v35 = vdivq_f64(vmulq_n_f64(v32, -v34), vdupq_lane_s64(*&v30, 0));
        *&v35[16] = -(v34 * v33) / v30;
        v9 |= LiImagePolygon::do_clip(a1, v35, &v32, v29);
      }

      ++v11;
      v8 += 32;
    }

    while (v10 + v11 != 1);
  }

  return v9 & 1;
}

uint64_t LiImagePolygon::do_clip(uint64_t **a1, double *a2, uint64_t a3, int a4)
{
  v6 = a1[11];
  if (((v6[1] - *v6) >> 5) > 2)
  {
    v79 = v4;
    v80 = v5;
    v12 = ((*a1)[2])(a1);
    v13 = v12[1];
    v77[0] = *v12;
    v77[1] = v13;
    v14 = v12[2];
    v77[2] = v14;
    v15 = a1[11];
    v16 = *v15;
    v17 = v15[1] - *v15;
    v18 = v17 >> 5;
    v19 = (v17 >> 5) - 1;
    if ((v17 >> 5) < 1)
    {
      LODWORD(v20) = 0;
    }

    else
    {
      v20 = 0;
      v21 = (v17 >> 5) & 0x7FFFFFFF;
      for (i = (v16 + 8); ; i += 2)
      {
        v23 = vmulq_f64(*i, *(a3 + 8));
        v24 = *(a3 + 24) + i[-1].f64[1] * *a3 + v23.f64[0] + v23.f64[1];
        if (v24 < 0.0 && fabs(v24) >= 0.0000001)
        {
          break;
        }

        if (v21 == ++v20)
        {
          return 0;
        }
      }
    }

    if (v20 == v18)
    {
      return 0;
    }

    else
    {
      if (v18 <= 0)
      {
        _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
      }

      v25 = 0;
      v26 = v20 % v18;
      v27 = v20 % v18;
      while (1)
      {
        v28 = *a1[11] + 32 * v27;
        v29 = vmulq_f64(*(v28 + 8), *(a3 + 8));
        if (*(a3 + 24) + *v28 * *a3 + v29.f64[0] + v29.f64[1] >= 0.0)
        {
          break;
        }

        v27 = (v19 + v27) % v18;
        if (++v25 >= v18)
        {
          a1[11][1] = *a1[11];
          return 1;
        }
      }

      v30 = 0;
      v31 = *a1[11];
      do
      {
        v32 = v31 + 32 * v26;
        v33 = vmulq_f64(*(v32 + 8), *(a3 + 8));
        if (*(a3 + 24) + *v32 * *a3 + v33.f64[0] + v33.f64[1] > 0.0)
        {
          break;
        }

        v26 = (v26 + 1) % v18;
        ++v30;
      }

      while (v30 < v18);
      v70.f64[1] = 0.0;
      v34 = v31 + 32 * v27;
      v35 = *v34;
      v36 = *(v34 + 8);
      v37 = v27 + 1;
      v38 = v27 + 1;
      v39 = (v27 + 1) / v18;
      if (v27 <= -2)
      {
        v38 = v37 - v39 * v18 + v18;
      }

      v40 = *a1[11] + 32 * (v38 % v18);
      v41 = *v40;
      v42 = *(v40 + 8);
      *&v43.f64[0] = vdupq_laneq_s64(v14, 1).u64[0];
      v43.f64[1] = v13.f64[1];
      v44 = vsubq_f64(v42, v36);
      v45 = vmulq_f64(v44, v43);
      *&v43.f64[0] = vdupq_laneq_s64(v44, 1).u64[0];
      v43.f64[1] = *v40 - v35;
      v75 = vsubq_f64(v45, vmulq_f64(v43, v14));
      v76 = v43.f64[1] * v14.f64[0] - vmuld_lane_f64(v44.f64[0], v13, 1);
      v73 = v41;
      v74 = v42;
      v46 = v26 - 1;
      v47 = v26 - 1;
      if (v26 <= 0)
      {
        v47 = v46 % v18 + v18;
      }

      v48 = *a1[11];
      v49 = v48 + 32 * (v47 % v18);
      v50 = *v49;
      v51 = v48 + 32 * v26;
      v52 = (*v51 - *v49) * v14.f64[0];
      v53 = *(v49 + 8);
      v54 = vsubq_f64(*(v51 + 8), v53);
      v13.f64[0] = v14.f64[1];
      *&v55.f64[0] = vdupq_laneq_s64(v54, 1).u64[0];
      v55.f64[1] = *v51 - *v49;
      v71 = vsubq_f64(vmulq_f64(v54, v13), vmulq_f64(v55, v14));
      v72 = v52 - v13.f64[1] * v54.f64[0];
      v69 = v50;
      v70 = v53;
      v56 = v37 - v39 * v18;
      PCPlane<double>::intersect(v77, a2, &v73, (v48 + 32 * v56));
      *(*a1[13] + 32 * v56 + 24) = a4;
      v57 = a1[11];
      v58 = *v57 + 32 * v26;
      memset(v78, 0, sizeof(v78));
      std::vector<LiPolygon::PosEdge>::insert(v57, v58, v78);
      PCPlane<double>::intersect(v77, a2, &v69, (*a1[11] + 32 * v26));
      v59 = (a1[11][1] - *a1[11]) >> 5;
      if (v56 < v26)
      {
        v60 = v56;
      }

      else
      {
        v60 = v56 + 1;
      }

      if (v59 <= 0)
      {
        _PCMod_error("base must be positive", "/AppleInternal/Library/BuildRoots/4~B_vzugDyvCrQn2X7XJDolv5DBDZrF5G9KFm5JbE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ProCore/PCMod.h", 158);
      }

      v61 = v26 - 1;
      if (v26 <= 0)
      {
        v61 = v46 % v59 + v59;
      }

      *(*a1[13] + 32 * v26 + 24) = *(*a1[13] + 32 * (v61 % v59) + 24);
      for (j = v46 + v59; ; j = v63 + v59 - 1)
      {
        v63 = j % v59;
        if (v63 == v60)
        {
          break;
        }

        v64 = a1[11];
        v65 = v64[1];
        v66 = (*v64 + 32 * v63);
        if (v66 + 2 != v65)
        {
          do
          {
            v67 = v66 + 2;
            *v66 = v66[2];
            *(v66 + 12) = *(v66 + 44);
            v68 = v66 + 4;
            v66 += 2;
          }

          while (v68 != v65);
          v66 = v67;
        }

        v64[1] = v66;
        LODWORD(v59) = v59 - 1;
        if (v63 < v60)
        {
          v60 = (v60 + v59 - 1) % v59;
        }
      }

      return 1;
    }
  }

  else
  {
    result = 0;
    v6[1] = *v6;
  }

  return result;
}

uint64_t LiImagePolygon::clip(uint64_t **a1, float64x2_t *a2, int a3)
{
  result = PCPlaneType(a2->f64);
  if (result)
  {
    if (result == 1)
    {
      std::vector<LiPolygon::PosEdge>::resize(a1[11], 0);
      return 1;
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      result = PCPlane<double>::setImplicit(v7, a2);
      if (result)
      {
        return LiImagePolygon::do_clip(a1, v7, a2, a3);
      }
    }
  }

  return result;
}

uint64_t LiImagePolygon::clip(uint64_t **this, const LiClipSet *a2)
{
  v2 = *(a2 + 3);
  if (v2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    do
    {
      if (v5 >= *(a2 + 3))
      {
        PCArray_base::badIndex(this);
      }

      if (v5 >= *(a2 + 9))
      {
        PCArray_base::badIndex(this);
      }

      this = LiImagePolygon::clip(v4, (*(a2 + 2) + 32 * v5), *(*(a2 + 5) + 4 * v5));
      v6 |= this;
      ++v5;
    }

    while (v5 != v2);
  }

  return v6 & 1;
}

char *std::vector<LiPolygon::PosEdge>::__assign_with_size[abi:ne200100]<LiPolygon::PosEdge*,LiPolygon::PosEdge*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<LiPolygon::PosEdge>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 5)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      *(result + 12) = *(v5 + 12);
      *result = v17;
      result += 32;
      v5 += 2;
    }

    a1[1] = result;
  }

  else
  {
    v13 = a2 + v12;
    if (v11 != result)
    {
      do
      {
        v14 = *v5;
        *(result + 12) = *(v5 + 12);
        *result = v14;
        result += 32;
        v5 += 2;
        v12 -= 32;
      }

      while (v12);
      v11 = a1[1];
    }

    v15 = v11;
    if (v13 != a3)
    {
      v15 = v11;
      v16 = v11;
      do
      {
        *v16 = *v13;
        *(v16 + 2) = *(v13 + 2);
        *(v16 + 6) = *(v13 + 6);
        v13 += 32;
        v16 += 32;
        v15 += 32;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<LiPolygon::PosEdge>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<LiPolygon::PosEdge>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

_OWORD *std::vector<LiPolygon::PosEdge>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = ((v6 - *a1) >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v11 = a2 - v9;
    v12 = v7 - v9;
    v13 = v12 >> 4;
    if (v12 >> 4 <= v10)
    {
      v13 = ((v6 - *a1) >> 5) + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v15 = v11 >> 5;
    v21 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<LiPolygon::PosEdge>>(a1, v14);
    }

    __p = 0;
    v18 = 32 * v15;
    v19 = 32 * v15;
    v20 = 0;
    std::__split_buffer<LiPolygon::PosEdge>::emplace_back<LiPolygon::PosEdge>(&__p, a3);
    v4 = std::vector<LiPolygon::PosEdge>::__swap_out_circular_buffer(a1, &__p, v4);
    if (v19 != v18)
    {
      v19 += (v18 - v19 + 31) & 0xFFFFFFFFFFFFFFE0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    *(v6 + 16) = *(a3 + 16);
    *(v6 + 24) = *(a3 + 24);
    a1[1] = v6 + 32;
  }

  else
  {
    std::vector<LiPolygon::PosEdge>::__move_range(a1, a2, v6, a2 + 32);
    v8 = *a3;
    *(v4 + 12) = *(a3 + 12);
    *v4 = v8;
  }

  return v4;
}

void sub_25FFB4950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<LiPolygon::PosEdge>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    result.n128_u64[0] = *(v6 + 16);
    *(v7 + 16) = result.n128_u64[0];
    *(v7 + 24) = *(v6 + 24);
    v6 += 32;
    v7 += 32;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = v4 - 32;
    v10 = a2 - 32;
    do
    {
      result = *(v10 + v5);
      *(v9 + 12) = *(v10 + v5 + 12);
      *v9 = result;
      v9 -= 32;
      v5 -= 32;
    }

    while (v5);
  }

  return result;
}

double std::__split_buffer<LiPolygon::PosEdge>::emplace_back<LiPolygon::PosEdge>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v5 = *a1;
    v4 = a1[1];
    if (v4 <= *a1)
    {
      if (v2 == v5)
      {
        v8 = 1;
      }

      else
      {
        v8 = v2 - v5;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<LiPolygon::PosEdge>>(a1[4], v8);
    }

    v6 = ((v4 - *a1) >> 5) + 1;
    v3 = &v4[-2 * (v6 / 2)];
    if (v4 != v2)
    {
      do
      {
        v7 = *v4;
        *(v3 + 12) = *(v4 + 12);
        *v3 = v7;
        v3 += 2;
        v4 += 2;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[2 * (v6 / -2)];
  }

  *v3 = *a2;
  result = *(a2 + 16);
  *(v3 + 2) = result;
  *(v3 + 6) = *(a2 + 24);
  a1[2] = v3 + 2;
  return result;
}

uint64_t std::vector<LiPolygon::PosEdge>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *(v8 + 24) = *(v7 + 24);
      v7 += 32;
      v8 += 32;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v9 = *a1;
  v10 = result + *a1 - a3;
  if (*a1 != a3)
  {
    v11 = *a1;
    v12 = result + *a1 - a3;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *(v12 + 24) = *(v11 + 24);
      v11 += 32;
      v12 += 32;
    }

    while (v11 != a3);
  }

  a2[1] = v10;
  v13 = *a1;
  *a1 = v10;
  a1[1] = v9;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

void *std::vector<PCPlane<double>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCEdgeVertex>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25FFB4CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<PCPlane<double>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<PCPlane<double>>::__emplace_back_slow_path<PCPlane<double>>(void *a1, _OWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCEdgeVertex>>(a1, v6);
  }

  v7 = 48 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 16) = a2[1];
  *(v7 + 32) = a2[2];
  v12 = 48 * v2 + 48;
  v13 = 0;
  std::vector<PCPlane<double>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 48) % 0x30uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25FFB4ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::vector<PCPlane<double>>::insert(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    if (v14 > 0x555555555555555)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v15 = a2 - v13;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v13) >> 4);
    v17 = 2 * v16;
    if (2 * v16 <= v14)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v16 >= 0x2AAAAAAAAAAAAAALL)
    {
      v18 = 0x555555555555555;
    }

    else
    {
      v18 = v17;
    }

    v24 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCEdgeVertex>>(a1, v18);
    }

    __p = 0;
    v21 = 16 * (v15 >> 4);
    v22 = v21;
    v23 = 0;
    std::__split_buffer<PCPlane<double>>::emplace_back<PCPlane<double> const&>(&__p, a3);
    v4 = std::vector<PCPlane<double>>::__swap_out_circular_buffer(a1, &__p, v4);
    if (v22 != v21)
    {
      v22 = (v22 - v21 - 48) % 0x30uLL + v21;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    v6[1] = a3[1];
    v6[2] = a3[2];
    *(a1 + 8) = v6 + 3;
  }

  else
  {
    std::vector<PCPlane<double>>::__move_range(a1, a2, v6, a2 + 48);
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 3;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v11 = *v10;
    *(v4 + 16) = *(v10 + 2);
    *v4 = v11;
    v12 = *(v10 + 24);
    *(v4 + 40) = *(v10 + 5);
    *(v4 + 24) = v12;
  }

  return v4;
}

void sub_25FFB50D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<PCPlane<double>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = *v5;
    *(v6 + 16) = *(v5 + 16);
    result = *(v5 + 32);
    *(v6 + 32) = result;
    v5 += 48;
    v6 += 48;
  }

  *(a1 + 8) = v6;
  v8 = v4 - a4;
  if (v4 != a4)
  {
    v9 = a4 - v4;
    v10 = v4 - 48;
    v11 = (v8 + a2 - 24);
    do
    {
      v12 = *(&v11[-2] + 8);
      *(v10 + 16) = v11[-1].n128_u64[1];
      *v10 = v12;
      result = *v11;
      *(v10 + 40) = v11[1].n128_u64[0];
      *(v10 + 24) = result;
      v10 -= 48;
      v11 -= 3;
      v9 += 48;
    }

    while (v9);
  }

  return result;
}

__n128 std::__split_buffer<PCPlane<double>>::emplace_back<PCPlane<double> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v5 = *a1;
    v4 = a1[1];
    if (v4 <= *a1)
    {
      if (v2 == v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * (v2 - v5);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<PCEdgeVertex>>(a1[4], v9);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4) + 1;
    v3 = &v4[-3 * (v6 / 2)];
    if (v4 != v2)
    {
      do
      {
        v7 = *v4;
        *(v3 + 2) = *(v4 + 2);
        *v3 = v7;
        v8 = *(v4 + 24);
        *(v3 + 5) = *(v4 + 5);
        *(v3 + 24) = v8;
        v4 += 3;
        v3 += 3;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[3 * (v6 / -2)];
  }

  *v3 = *a2;
  v3[1] = *(a2 + 16);
  result = *(a2 + 32);
  v3[2] = result;
  a1[2] = (v3 + 3);
  return result;
}

uint64_t std::vector<PCPlane<double>>::__swap_out_circular_buffer(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      *v8 = *v7;
      v8[1] = *(v7 + 1);
      v8[2] = *(v7 + 2);
      v7 += 48;
      v8 += 3;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v9 = *a1;
  v10 = (result + *a1 - a3);
  if (*a1 != a3)
  {
    v11 = *a1;
    v12 = (result + *a1 - a3);
    do
    {
      *v12 = *v11;
      v12[1] = *(v11 + 1);
      v12[2] = *(v11 + 2);
      v11 += 48;
      v12 += 3;
    }

    while (v11 != a3);
  }

  a2[1] = v10;
  v13 = *a1;
  *a1 = v10;
  a1[1] = v9;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int const&>(&v26, __x);
    v16.__i_ = v27;
    memcpy(v28, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v27;
    *&v28 = v28 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v23 = v9 <= __x || i > __x;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *i = __x[v24];
  }

  return i;
}

void sub_25FFB5580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<int>::emplace_back<int const&>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void std::vector<PCVector4<double>>::resize(void *a1, unint64_t a2)
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
    std::vector<PCVector4<double>>::__append(a1, a2 - v2);
  }
}

void std::vector<PCVector4<double>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OMVertex>>(a1, v10);
    }

    __p = 0;
    v12 = 32 * v8;
    v14 = 0;
    bzero((32 * v8), 32 * a2);
    v13 = 32 * v8 + 32 * a2;
    std::vector<PCVector4<double>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25FFB57F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<PCVector4<double>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t LiEquirectReorient::LiEquirectReorient(uint64_t a1, const PCSharedCount *a2, int a3, int a4, _DWORD *a5, char a6)
{
  *(a1 + 88) = &unk_2872DEA38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  LiImageFilter::LiImageFilter(a1, &off_2872658F0);
  *a1 = &unk_2872657E8;
  *(a1 + 88) = &unk_2872658D0;
  *(a1 + 36) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = *a5;
  *(a1 + 48) = a5[1];
  *(a1 + 52) = a5[2];
  *(a1 + 56) = a5[3];
  *(a1 + 60) = a5[4];
  *(a1 + 64) = a5[5];
  *(a1 + 68) = a5[6];
  *(a1 + 72) = a5[7];
  *(a1 + 76) = a5[8];
  *(a1 + 80) = a6;
  *(a1 + 16) = a2->var0;
  PCSharedCount::PCSharedCount(&v13, a2 + 1);
  PCSharedCount::operator=((a1 + 24), &v13);
  PCSharedCount::~PCSharedCount(&v13);
  return a1;
}

void sub_25FFB59FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::~PCSharedCount(&a10);
  LiImageFilter::~LiImageFilter(v10, &off_2872658F0);
  *(v10 + 88) = v11;
  *(v10 + 104) = 0;
  PCWeakCount::~PCWeakCount(v12);
  _Unwind_Resume(a1);
}

void LiEquirectReorient::LiEquirectReorient(LiEquirectReorient *this, const LiEquirectReorient *a2)
{
  *(this + 11) = &unk_2872DEA38;
  *(this + 12) = 0;
  *(this + 104) = 1;
  LiImageFilter::LiImageFilter(this, &off_2872658F0, a2);
  *this = &unk_2872657E8;
  *(this + 11) = &unk_2872658D0;
  *(this + 36) = *(a2 + 36);
  *(this + 11) = *(a2 + 11);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = *(a2 + 16);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = *(a2 + 18);
  *(this + 19) = *(a2 + 19);
  *(this + 80) = *(a2 + 80);
}

void sub_25FFB5B4C(_Unwind_Exception *a1)
{
  *(v1 + 88) = v2;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiEquirectReorient::~LiEquirectReorient(PCSharedCount *this)
{
  this->var0 = off_287265940;
  this[11].var0 = off_287265A28;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2872658F8);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);
}

{
  LiEquirectReorient::~LiEquirectReorient(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiEquirectReorient::~LiEquirectReorient(LiEquirectReorient *this)
{
  LiEquirectReorient::~LiEquirectReorient((this + *(*this - 24)));
}

{
  LiEquirectReorient::~LiEquirectReorient((this + *(*this - 24)));

  JUMPOUT(0x2666E9F00);
}

void LiDofInfo::LiDofInfo(LiDofInfo *this)
{
  *this = xmmword_26084C090;
  *(this + 2) = 0x447A0000461C4000;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 6) = 0;
  *(this + 28) = HGRectInfinite;
  *(this + 56) = xmmword_26084C0A0;
  *(this + 18) = 1124073472;
}

double LiDofInfo::getCircleOfConfusionRadius(LiDofInfo *this, double a2)
{
  v2 = fmax(a2, 1.0);
  v3 = fmax(*(this + 1) - v2, 0.0);
  if (v3 < v2 - *(this + 2))
  {
    v3 = v2 - *(this + 2);
  }

  return *this / v2 * v3;
}

void LiPolygonDrawer::LiPolygonDrawer(LiPolygonDrawer *this)
{
  LiImagePolygon::LiImagePolygon(this);
  LiDrawer::LiDrawer((v2 + 112));
  *this = &unk_287265BC0;
  *(this + 14) = &unk_287265C10;
  *(this + 20) = 0;
}

void LiPolygonDrawer::~LiPolygonDrawer(LiPolygonDrawer *this)
{
  *this = &unk_287265BC0;
  v2 = (this + 112);
  *(this + 14) = &unk_287265C10;
  v3 = *(this + 20);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  LiDrawer::~LiDrawer(v2);

  LiImagePolygon::~LiImagePolygon(this);
}

void LiPolygonInstance::LiPolygonInstance(LiPolygonInstance *this, LiRenderInstance *a2)
{
  LiPolygonDrawer::LiPolygonDrawer(this);
  Description = ProGL::Private::TextureImpl::getDescription(a2);
  LiAgent::LiAgent((this + 168), Description, 1);
  *this = &unk_287265CC8;
  *(this + 14) = &unk_287265D78;
  *(this + 89) = 0x3FF0000000000000;
  *(this + 84) = 0x3FF0000000000000;
  *(this + 79) = 0x3FF0000000000000;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 105) = 0x3FF0000000000000;
  *(this + 100) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 47) = _Q1;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 121) = 0x3FF0000000000000;
  *(this + 116) = 0x3FF0000000000000;
  *(this + 55) = _Q1;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 142) = 0x3FF0000000000000;
  *(this + 137) = 0x3FF0000000000000;
  *(this + 132) = 0x3FF0000000000000;
  *(this + 63) = _Q1;
  *(this + 64) = 0u;
  *(this + 65) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *(this + 157) = 0x3FF0000000000000;
  *(this + 152) = 0x3FF0000000000000;
  *(this + 147) = 0x3FF0000000000000;
  *(this + 74) = 0u;
  *(this + 75) = 0u;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 178) = 0x3FF0000000000000;
  *(this + 173) = 0x3FF0000000000000;
  *(this + 168) = 0x3FF0000000000000;
  *(this + 81) = _Q1;
  *(this + 82) = 0u;
  *(this + 83) = 0u;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 88) = 0u;
  *(this + 87) = 0u;
  *(this + 179) = 0;
  *(this + 1440) = 0;
  *(this + 181) = a2;
  *(this + 182) = 0;
  PCSharedCount::PCSharedCount(this + 183);
  *(this + 184) = 0;
  PCSharedCount::PCSharedCount(this + 185);
  *(this + 186) = 0;
  PCSharedCount::PCSharedCount(this + 187);
  *(this + 188) = 0;
  PCSharedCount::PCSharedCount(this + 189);
  *(this + 190) = 0x3FF0000000000000;
  *(this + 1528) = 0;
  *(this + 192) = 0;
  LiImageFilterChain::LiImageFilterChain((this + 1544));
  *(this + 200) = 0;
  *(this + 99) = 0u;
  *(this + 402) = 1;
  *(this + 1612) = 0;
  *(this + 416) = *(a2 + 16);
}

void sub_25FFB6164(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 189);
  PCSharedCount::~PCSharedCount(v1 + 187);
  PCSharedCount::~PCSharedCount(v1 + 185);
  PCSharedCount::~PCSharedCount(v1 + 183);
  LiAgent::~LiAgent(&v1[21]);
  LiPolygonDrawer::~LiPolygonDrawer(v1);
  _Unwind_Resume(a1);
}

void LiPolygonInstance::~LiPolygonInstance(PCSharedCount *this)
{
  this->var0 = &unk_287265CC8;
  this[14].var0 = &unk_287265D78;
  v2 = this + 195;
  this[195].var0 = &unk_2871F2660;
  if (SLODWORD(this[196].var0) < 0)
  {
    var0 = 1;
  }

  else
  {
    var0 = this[196].var0;
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(v2, 0, var0);
  v4 = this[197].var0;
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  this[197].var0 = 0;
  LODWORD(this[196].var0) = 0;
  PCSharedCount::~PCSharedCount(this + 194);
  PCSharedCount::~PCSharedCount(this + 189);
  PCSharedCount::~PCSharedCount(this + 187);
  PCSharedCount::~PCSharedCount(this + 185);
  PCSharedCount::~PCSharedCount(this + 183);
  LiAgent::~LiAgent(&this[21]);

  LiPolygonDrawer::~LiPolygonDrawer(this);
}

{
  LiPolygonInstance::~LiPolygonInstance(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toLiPolygonInstance::~LiPolygonInstance(PCSharedCount *this)
{
  LiPolygonInstance::~LiPolygonInstance(this - 14);
}

{
  LiPolygonInstance::~LiPolygonInstance(this - 14);

  JUMPOUT(0x2666E9F00);
}