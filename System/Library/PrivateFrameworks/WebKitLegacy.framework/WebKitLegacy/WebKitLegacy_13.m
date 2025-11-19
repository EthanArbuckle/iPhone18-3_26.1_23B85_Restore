void sub_1C7AE41B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  --*v2;
  _Unwind_Resume(exception_object);
}

void sub_1C7AE47C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18)
{
  if (a18)
  {
    if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE4AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t regExpForLabels(NSArray *a1)
{
  if ((byte_1ED6A622D & 1) == 0)
  {
    goto LABEL_88;
  }

  if ((byte_1ED6A622E & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_3:
  if ((byte_1ED6A622F & 1) == 0)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v2 = [qword_1ED6A6258 indexOfObject:a1];
    v3 = &qword_1ED6A6258;
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v21 = v2;
    if (v2 >= dword_1ED6A6274)
    {
      __break(0xC471u);
      goto LABEL_93;
    }

    v64 = *(qword_1ED6A6268 + 8 * v2);
    if (!v2)
    {
      return v64;
    }

    [qword_1ED6A6258 removeObjectAtIndex:v2];
    if (v21 < dword_1ED6A6274)
    {
      memmove((qword_1ED6A6268 + 8 * v21), (qword_1ED6A6268 + 8 * v21 + 8), qword_1ED6A6268 + 8 * dword_1ED6A6274 - (qword_1ED6A6268 + 8 * v21 + 8));
      --dword_1ED6A6274;
      goto LABEL_51;
    }

    __break(1u);
LABEL_88:
    qword_1ED6A6258 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    byte_1ED6A622D = 1;
    if (byte_1ED6A622E)
    {
      goto LABEL_3;
    }

LABEL_89:
    *&dword_1ED6A6270 = 0;
    qword_1ED6A6268 = 0;
    byte_1ED6A622E = 1;
    if ((byte_1ED6A622F & 1) == 0)
    {
LABEL_90:
      JSC::Yarr::RegularExpression::RegularExpression();
      byte_1ED6A622F = 1;
    }
  }

  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 1;
  LOBYTE(v70) = 40;
  WTF::StringBuilder::append();
  v4 = [(NSArray *)a1 count];
  v6 = v4;
  if (v4)
  {
    MEMORY[0x1CCA63A40](&v59, [(NSArray *)a1 objectAtIndex:0]);
    v7 = v59;
    if (v59)
    {
      v8 = *(v59 + 1);
      v9 = "";
      if (v8)
      {
        v10 = *(v59 + 4) >> 2;
        v11 = 0x100000001;
        if ((*(v59 + 4) & 4) == 0)
        {
          v11 = 1;
        }

        if (v8 == 1)
        {
          v12 = v8 | (((*(v59 + 4) & 4) != 0) << 32);
        }

        else
        {
          v12 = v11;
        }

        v58 = v12;
        v13 = JSC::Yarr::RegularExpression::match();
        if (v10)
        {
          v14 = 0x100000001;
        }

        else
        {
          v14 = 1;
        }

        if (v8 == 1)
        {
          v15 = v8 | ((v10 & 1) << 32);
        }

        else
        {
          v15 = v14;
        }

        v57 = v15;
        v16 = JSC::Yarr::RegularExpression::match();
        v17 = "\\b";
        v7 = v59;
        if (v13 < 0)
        {
          v18 = "";
        }

        else
        {
          v18 = "\\b";
        }

        v19 = 2 * (v13 >= 0);
        v20 = 2 * (v16 >= 0);
        if (v16 < 0)
        {
          v17 = "";
        }

        v9 = v18;
      }

      else
      {
        v20 = 0;
        v19 = 0;
        v17 = "";
      }
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v9 = "";
      v17 = "";
    }

    v70 = "";
    v71 = 0;
    v68 = v9;
    v69 = v19;
    v66 = v20;
    v67 = v7;
    v65 = v17;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v60, &v70, &v68, &v67, &v65);
    v22 = v59;
    v59 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v5);
    }

    if (v6 != 1)
    {
      v38 = 1;
      v56 = v6;
      do
      {
        MEMORY[0x1CCA63A40](&v59, [(NSArray *)a1 objectAtIndex:v38]);
        v39 = v59;
        if (v59 && (v40 = *(v59 + 1), v40))
        {
          v41 = v3;
          v42 = a1;
          v43 = *(v59 + 4) >> 2;
          if ((*(v59 + 4) & 4) != 0)
          {
            v44 = 0x100000001;
          }

          else
          {
            v44 = 1;
          }

          if (v40 == 1)
          {
            v44 = v40 | (((*(v59 + 4) & 4) != 0) << 32);
          }

          v58 = v44 | v58 & 0xFFFFFF0000000000;
          v45 = JSC::Yarr::RegularExpression::match();
          v46 = 1;
          if (v43)
          {
            v46 = 0x100000001;
          }

          if (v40 == 1)
          {
            v47 = v40 | ((v43 & 1) << 32);
          }

          else
          {
            v47 = v46;
          }

          v57 = v47 | v57 & 0xFFFFFF0000000000;
          v48 = JSC::Yarr::RegularExpression::match();
          v39 = v59;
          v49 = "\\b";
          if (v45 < 0)
          {
            v50 = "";
          }

          else
          {
            v50 = "\\b";
          }

          v51 = 2 * (v45 >= 0);
          v52 = 2 * (v48 >= 0);
          if (v48 < 0)
          {
            v49 = "";
          }

          a1 = v42;
          v3 = v41;
          v6 = v56;
        }

        else
        {
          v52 = 0;
          v51 = 0;
          v50 = "";
          v49 = "";
        }

        v70 = "|";
        v71 = 1;
        v68 = v50;
        v69 = v51;
        v66 = v52;
        v67 = v39;
        v65 = v49;
        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v60, &v70, &v68, &v67, &v65);
        v53 = v59;
        v59 = 0;
        if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, v5);
        }

        ++v38;
      }

      while (v6 != v38);
    }
  }

  LOBYTE(v70) = 41;
  if (v61 && ((v23 = v62, v62 < *(v61 + 1)) ? (v24 = v60 == 0) : (v24 = 0), v24))
  {
    v54 = *(v61 + 4);
    v55 = *(v61 + 1);
    ++v62;
    if ((v54 & 4) != 0)
    {
      *(v55 + v23) = 41;
    }

    else
    {
      *(v55 + 2 * v23) = 41;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  if (*MEMORY[0x1E696EB78])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E696EB78], v5);
  }

  else
  {
    NonCompact = JSC::Yarr::RegularExpression::operatorNewSlow(8);
  }

  v26 = NonCompact;
  if (!v60)
  {
    WTF::StringBuilder::shrinkToFit(&v60);
    WTF::StringBuilder::reifyString(&v60);
  }

  JSC::Yarr::RegularExpression::RegularExpression();
  v64 = v26;
  v28 = v61;
  v61 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v27);
  }

  v29 = v60;
  v60 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v27);
  }

LABEL_51:
  [*v3 insertObject:a1 atIndex:0];
  v30 = *(v3 + 7);
  if (v30 == *(v3 + 6))
  {
    v31 = WTF::Vector<JSC::Yarr::RegularExpression *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v30 + 1, &v64);
    LODWORD(v30) = dword_1ED6A6274;
  }

  else
  {
    v31 = &v64;
  }

  v32 = v3[2];
  memmove(v32 + 1, v32, 8 * v30);
  *v32 = *v31;
  ++*(v3 + 7);
  if ([*v3 count] >= 5)
  {
    [*v3 removeObjectAtIndex:4];
    v33 = *(v3 + 7);
    if (!v33)
    {
      __break(0xC471u);
LABEL_93:
      JUMPOUT(0x1C7AE51C0);
    }

    v34 = *(qword_1ED6A6268 + 8 * v33 - 8);
    dword_1ED6A6274 = v33 - 1;
    if (v34)
    {
      v35 = MEMORY[0x1CCA63300]();
      bmalloc::api::tzoneFree(v35, v36);
    }
  }

  return v64;
}

void sub_1C7AE51CC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
      WebCore::DatabaseDetails::~DatabaseDetails(&a14, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::DatabaseDetails::~DatabaseDetails(&a14, a2);
  _Unwind_Resume(a1);
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = *a4;
  v10 = *(a1 + 1);
  if ((!v10 && (v10 = *a1) == 0 || (*(v10 + 16) & 4) != 0) && (!v9 || (*(v9 + 16) & 4) != 0))
  {
    result = MEMORY[0x1CCA63570]();
    if (!result)
    {
      return result;
    }

    v31 = result;
    v32 = a2[1];
    v34 = *a3;
    v33 = a3[1];
    v35 = *a4;
    v36 = *a5;
    v37 = a5[1];
    if (v32)
    {
      v38 = *a2;
      if (v32 == 1)
      {
        *result = *v38;
      }

      else
      {
        v82 = v30;
        result = memcpy(result, v38, v32);
        v30 = v82;
      }
    }

    v83 = v30 - v32;
    if (v30 < v32)
    {
      goto LABEL_171;
    }

    v84 = &v31[v32];
    if (v33)
    {
      if (v33 == 1)
      {
        *v84 = *v34;
      }

      else
      {
        result = memcpy(&v31[v32], v34, v33);
      }
    }

    v85 = v33;
    v40 = v83 >= v33;
    v86 = v83 - v33;
    if (!v40)
    {
LABEL_171:
      __break(1u);
      return result;
    }

    v87 = &v84[v85];
    if (!v35)
    {
      v93 = 0;
      goto LABEL_143;
    }

    v88 = *(v35 + 8);
    v89 = *(v35 + 4);
    if ((*(v35 + 16) & 4) != 0)
    {
      if (v89)
      {
        if (v89 == 1)
        {
          *v87 = v88->i8[0];
        }

        else
        {
          result = memcpy(v87, v88, v89);
        }
      }
    }

    else
    {
      v90 = &v87[v89];
      if (v89 < 0x10)
      {
        v91 = v87;
      }

      else
      {
        v91 = v87;
        do
        {
          v92 = vld2q_s8(v88->i8);
          v88 += 2;
          *v91++ = v92;
        }

        while (v91 != &v87[v89 & 0xFFFFFFF0]);
      }

      if (v91 != v90)
      {
        v119 = &v31[v89 + v32 + v85] - v91;
        if (v119 < 4 || ((v120 = &v31[v89 + v85 + v32], v91 < (v88 + 2 * v119)) ? (v121 = v88 >= v120) : (v121 = 1), !v121))
        {
          v123 = v91;
          v124 = v88;
          goto LABEL_115;
        }

        if (v119 >= 0x20)
        {
          v122 = v119 & 0xFFFFFFFFFFFFFFE0;
          v166 = v88 + 2;
          v167 = (v91 + 1);
          v168 = v119 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v170 = v166[-2];
            v169 = v166[-1];
            v172 = *v166;
            v171 = v166[1];
            v166 += 4;
            v167[-1] = vuzp1q_s8(v170, v169);
            *v167 = vuzp1q_s8(v172, v171);
            v167 += 2;
            v168 -= 32;
          }

          while (v168);
          if (v119 == v122)
          {
            goto LABEL_142;
          }

          if ((v119 & 0x1C) == 0)
          {
            v124 = (v88 + 2 * v122);
            v123 = (v91 + v122);
            do
            {
LABEL_115:
              v125 = v124->i8[0];
              v124 = (v124 + 2);
              *v123 = v125;
              v123 = (v123 + 1);
            }

            while (v123 != v90);
            goto LABEL_142;
          }
        }

        else
        {
          v122 = 0;
        }

        v123 = (v91 + (v119 & 0xFFFFFFFFFFFFFFFCLL));
        v124 = (v88 + 2 * (v119 & 0xFFFFFFFFFFFFFFFCLL));
        v173 = (v88 + 2 * v122);
        v174 = (v91 + v122);
        v175 = v122 - (v119 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v176 = *v173++;
          *v174++ = vuzp1_s8(v176, v176).u32[0];
          v175 += 4;
        }

        while (v175);
        if (v119 != (v119 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_115;
        }
      }
    }

LABEL_142:
    v93 = *(v35 + 4);
    if (v86 < v93)
    {
      goto LABEL_171;
    }

LABEL_143:
    if (v37)
    {
      if (v37 == 1)
      {
        v87[v93] = *v36;
      }

      else
      {

        return memcpy(&v87[v93], v36, v37);
      }
    }

    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v14 = *a2;
  v13 = a2[1];
  v16 = *a3;
  v15 = a3[1];
  v17 = *a4;
  v19 = *a5;
  v18 = a5[1];
  v20 = &result[2 * v13];
  if (v13 < 0x40)
  {
    v21 = result;
    if (result == v20)
    {
      goto LABEL_27;
    }

LABEL_17:
    v39 = &v20[-v21 - 2];
    if (v39 < 0xE || (v21 < v14 + (v39 >> 1) + 1 ? (v40 = v14 >= (v39 & 0xFFFFFFFFFFFFFFFELL) + v21 + 2) : (v40 = 1), !v40))
    {
      v43 = v14;
      v44 = v21;
      goto LABEL_26;
    }

    v41 = (v39 >> 1) + 1;
    if (v39 >= 0x3E)
    {
      v42 = v41 & 0xFFFFFFFFFFFFFFE0;
      v126 = (v21 + 32);
      v127 = (v14 + 16);
      v128 = v41 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v129 = *v127[-2].i8;
        v130 = vmovl_u8(*v127);
        v131 = vmovl_high_u8(*v127->i8);
        v126[-2] = vmovl_u8(*v129.i8);
        v126[-1] = vmovl_high_u8(v129);
        *v126 = v130;
        v126[1] = v131;
        v126 += 4;
        v127 += 4;
        v128 -= 32;
      }

      while (v128);
      if (v41 == v42)
      {
        goto LABEL_27;
      }

      if ((v41 & 0x18) == 0)
      {
        v44 = (v21 + 2 * v42);
        v43 = (v14 + v42);
        goto LABEL_26;
      }
    }

    else
    {
      v42 = 0;
    }

    v43 = (v14 + (v41 & 0xFFFFFFFFFFFFFFF8));
    v44 = (v21 + 2 * (v41 & 0xFFFFFFFFFFFFFFF8));
    v132 = (v21 + 2 * v42);
    v133 = (v14 + v42);
    v134 = v42 - (v41 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v135 = *v133++;
      *v132++ = vmovl_u8(v135);
      v134 += 8;
    }

    while (v134);
    if (v41 == (v41 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      v45 = *v43++;
      *v44++ = v45;
    }

    while (v44 != v20);
    goto LABEL_27;
  }

  v21 = &result[2 * (v13 & 0x7FFFFFFFFFFFFFC0)];
  v22 = 0uLL;
  v23 = result;
  do
  {
    v178.val[0] = *v14;
    v24 = *(v14 + 16);
    v182.val[0] = *(v14 + 32);
    v25 = *(v14 + 48);
    v14 += 64;
    v26 = v25;
    v182.val[1] = 0uLL;
    v186.val[0] = v24;
    v178.val[1] = 0uLL;
    v27 = v23;
    vst2q_s8(v27, v178);
    v27 += 32;
    v186.val[1] = 0uLL;
    vst2q_s8(v27, v186);
    v28 = v23 + 64;
    vst2q_s8(v28, v182);
    v29 = v23 + 96;
    vst2q_s8(v29, *(&v22 - 1));
    v23 += 128;
  }

  while (v23 != v21);
  if (v21 != v20)
  {
    goto LABEL_17;
  }

LABEL_27:
  v46 = v13;
  v47 = v12 - v13;
  if (v12 < v13)
  {
    goto LABEL_171;
  }

  v48 = &result[2 * v13];
  v49 = &v48[2 * v15];
  if (v15 < 0x40)
  {
    v50 = &result[2 * v46];
    if (v48 == v49)
    {
      goto LABEL_44;
    }

LABEL_34:
    v59 = &result[2 * v15 + 2 * v46 - v50 - 2];
    if (v59 < 0xE || (v50 < v16 + (v59 >> 1) + 1 ? (v60 = v16 >= (v59 & 0xFFFFFFFFFFFFFFFELL) + v50 + 2) : (v60 = 1), !v60))
    {
      v63 = v16;
      v64 = v50;
      goto LABEL_43;
    }

    v61 = (v59 >> 1) + 1;
    if (v59 >= 0x3E)
    {
      v62 = v61 & 0xFFFFFFFFFFFFFFE0;
      v136 = (v50 + 32);
      v137 = (v16 + 16);
      v138 = v61 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v139 = *v137[-2].i8;
        v140 = vmovl_u8(*v137);
        v141 = vmovl_high_u8(*v137->i8);
        v136[-2] = vmovl_u8(*v139.i8);
        v136[-1] = vmovl_high_u8(v139);
        *v136 = v140;
        v136[1] = v141;
        v136 += 4;
        v137 += 4;
        v138 -= 32;
      }

      while (v138);
      if (v61 == v62)
      {
        goto LABEL_44;
      }

      if ((v61 & 0x18) == 0)
      {
        v64 = (v50 + 2 * v62);
        v63 = (v16 + v62);
        goto LABEL_43;
      }
    }

    else
    {
      v62 = 0;
    }

    v63 = (v16 + (v61 & 0xFFFFFFFFFFFFFFF8));
    v64 = (v50 + 2 * (v61 & 0xFFFFFFFFFFFFFFF8));
    v142 = (v50 + 2 * v62);
    v143 = (v16 + v62);
    v144 = v62 - (v61 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v145 = *v143++;
      *v142++ = vmovl_u8(v145);
      v144 += 8;
    }

    while (v144);
    if (v61 == (v61 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_44;
    }

    do
    {
LABEL_43:
      v65 = *v63++;
      *v64++ = v65;
    }

    while (v64 != v49);
    goto LABEL_44;
  }

  v50 = &v48[2 * (v15 & 0x7FFFFFFFFFFFFFC0)];
  v51 = 0uLL;
  v52 = &result[2 * v46];
  do
  {
    v179.val[0] = *v16;
    v53 = *(v16 + 16);
    v183.val[0] = *(v16 + 32);
    v54 = *(v16 + 48);
    v16 += 64;
    v55 = v54;
    v183.val[1] = 0uLL;
    v187.val[0] = v53;
    v179.val[1] = 0uLL;
    v56 = v52;
    vst2q_s8(v56, v179);
    v56 += 32;
    v187.val[1] = 0uLL;
    vst2q_s8(v56, v187);
    v57 = v52 + 64;
    vst2q_s8(v57, v183);
    v58 = v52 + 96;
    vst2q_s8(v58, *(&v51 - 1));
    v52 += 128;
  }

  while (v52 != v50);
  if (v50 != v49)
  {
    goto LABEL_34;
  }

LABEL_44:
  v66 = v15;
  v67 = v47 - v15;
  if (v47 < v15)
  {
    goto LABEL_171;
  }

  v68 = &v48[2 * v15];
  if (!v17)
  {
    v71 = 0;
    goto LABEL_88;
  }

  v69 = *(v17 + 8);
  v70 = *(v17 + 4);
  if ((*(v17 + 16) & 4) != 0)
  {
    v72 = &v68[2 * v70];
    if (v70 < 0x40)
    {
      v73 = v68;
      if (v68 == v72)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v73 = &v68[2 * (v70 & 0xFFFFFFC0)];
      v74 = 0uLL;
      v75 = v68;
      do
      {
        v180.val[0] = *v69;
        v76 = v69[1];
        v184.val[0] = v69[2];
        v77 = v69[3];
        v69 += 4;
        v78 = v77;
        v184.val[1] = 0uLL;
        v188.val[0] = v76;
        v180.val[1] = 0uLL;
        v79 = v75;
        vst2q_s8(v79, v180);
        v79 += 32;
        v188.val[1] = 0uLL;
        vst2q_s8(v79, v188);
        v80 = v75 + 64;
        vst2q_s8(v80, v184);
        v81 = v75 + 96;
        vst2q_s8(v81, *(&v74 - 1));
        v75 += 128;
      }

      while (v75 != v73);
      if (v73 == v72)
      {
        goto LABEL_87;
      }
    }

    v94 = &result[2 * v70 + 2 * v46 + 2 * v66 - v73 - 2];
    if (v94 < 0xE || (v73 < v69->u64 + (v94 >> 1) + 1 ? (v95 = v69 >= (v94 & 0xFFFFFFFFFFFFFFFELL) + v73 + 2) : (v95 = 1), !v95))
    {
      v98 = v69;
      v99 = v73;
      goto LABEL_84;
    }

    v96 = (v94 >> 1) + 1;
    if (v94 >= 0x3E)
    {
      v97 = v96 & 0xFFFFFFFFFFFFFFE0;
      v156 = (v73 + 32);
      v157 = &v69[1];
      v158 = v96 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v159 = *v157[-2].i8;
        v160 = vmovl_u8(*v157);
        v161 = vmovl_high_u8(*v157->i8);
        v156[-2] = vmovl_u8(*v159.i8);
        v156[-1] = vmovl_high_u8(v159);
        *v156 = v160;
        v156[1] = v161;
        v156 += 4;
        v157 += 4;
        v158 -= 32;
      }

      while (v158);
      if (v96 == v97)
      {
        goto LABEL_87;
      }

      if ((v96 & 0x18) == 0)
      {
        v99 = (v73 + 2 * v97);
        v98 = (v69 + v97);
        goto LABEL_84;
      }
    }

    else
    {
      v97 = 0;
    }

    v98 = (v69 + (v96 & 0xFFFFFFFFFFFFFFF8));
    v99 = (v73 + 2 * (v96 & 0xFFFFFFFFFFFFFFF8));
    v162 = (v73 + 2 * v97);
    v163 = &v69->i8[v97];
    v164 = v97 - (v96 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v165 = *v163++;
      *v162++ = vmovl_u8(v165);
      v164 += 8;
    }

    while (v164);
    if (v96 == (v96 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_87;
    }

    do
    {
LABEL_84:
      v100 = v98->u8[0];
      v98 = (v98 + 1);
      *v99 = v100;
      v99 += 2;
    }

    while (v99 != v72);
    goto LABEL_87;
  }

  if (v70)
  {
    if (v70 == 1)
    {
      *v68 = v69->i16[0];
    }

    else
    {
      v101 = result;
      memcpy(v68, v69, 2 * v70);
      result = v101;
    }
  }

LABEL_87:
  v71 = *(v17 + 4);
  if (v67 < v71)
  {
    goto LABEL_171;
  }

LABEL_88:
  v102 = &v68[2 * v71];
  v103 = (v102 + 2 * v18);
  if (v18 >= 0x40)
  {
    v104 = v102 + 2 * (v18 & 0x7FFFFFFFFFFFFFC0);
    v105 = 0uLL;
    do
    {
      v181.val[0] = *v19;
      v106 = *(v19 + 16);
      v185.val[0] = *(v19 + 32);
      v107 = *(v19 + 48);
      v19 += 64;
      v108 = v107;
      v185.val[1] = 0uLL;
      v189.val[0] = v106;
      v181.val[1] = 0uLL;
      v109 = v102;
      vst2q_s8(v109, v181);
      v109 += 32;
      v189.val[1] = 0uLL;
      vst2q_s8(v109, v189);
      v110 = (v102 + 64);
      vst2q_s8(v110, v185);
      v111 = (v102 + 96);
      vst2q_s8(v111, *(&v105 - 1));
      v102 += 128;
    }

    while (v102 != v104);
    v102 = v104;
  }

  if (v102 != v103)
  {
    v112 = &result[2 * v71 + 2 * v18 + 2 * v46 + 2 * v66 - v102 - 2];
    if (v112 < 0xE || (v102 < v19 + (v112 >> 1) + 1 ? (v113 = v19 >= (v112 & 0xFFFFFFFFFFFFFFFELL) + v102 + 2) : (v113 = 1), !v113))
    {
      v116 = v19;
      v117 = v102;
      goto LABEL_102;
    }

    v114 = (v112 >> 1) + 1;
    if (v112 >= 0x3E)
    {
      v115 = v114 & 0xFFFFFFFFFFFFFFE0;
      v146 = (v102 + 32);
      v147 = (v19 + 16);
      v148 = v114 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v149 = *v147[-2].i8;
        v150 = vmovl_u8(*v147);
        v151 = vmovl_high_u8(*v147->i8);
        v146[-2] = vmovl_u8(*v149.i8);
        v146[-1] = vmovl_high_u8(v149);
        *v146 = v150;
        v146[1] = v151;
        v146 += 4;
        v147 += 4;
        v148 -= 32;
      }

      while (v148);
      if (v114 == v115)
      {
        return result;
      }

      if ((v114 & 0x18) == 0)
      {
        v117 = (v102 + 2 * v115);
        v116 = (v19 + v115);
        do
        {
LABEL_102:
          v118 = *v116++;
          *v117++ = v118;
        }

        while (v117 != v103);
        return result;
      }
    }

    else
    {
      v115 = 0;
    }

    v116 = (v19 + (v114 & 0xFFFFFFFFFFFFFFF8));
    v117 = (v102 + 2 * (v114 & 0xFFFFFFFFFFFFFFF8));
    v152 = (v102 + 2 * v115);
    v153 = (v19 + v115);
    v154 = v115 - (v114 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v155 = *v153++;
      *v152++ = vmovl_u8(v155);
      v154 += 8;
    }

    while (v154);
    if (v114 != (v114 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_102;
    }
  }

  return result;
}

unint64_t WTF::Vector<JSC::Yarr::RegularExpression *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = qword_1ED6A6268;
  if (qword_1ED6A6268 <= a2)
  {
    v4 = dword_1ED6A6274;
    if (qword_1ED6A6268 + 8 * dword_1ED6A6274 > a2)
    {
      if (dword_1ED6A6270 + (dword_1ED6A6270 >> 1) <= dword_1ED6A6270 + 1)
      {
        v5 = dword_1ED6A6270 + 1;
      }

      else
      {
        v5 = dword_1ED6A6270 + (dword_1ED6A6270 >> 1);
      }

      if (v5 <= a1)
      {
        v5 = a1;
      }

      if (!(v5 >> 29))
      {
        v6 = a2 - qword_1ED6A6268;
        if (v5 <= 0x10)
        {
          v7 = 16;
        }

        else
        {
          v7 = v5;
        }

        v8 = WTF::fastMalloc((8 * v7));
        dword_1ED6A6270 = v7;
        qword_1ED6A6268 = v8;
        memcpy(v8, v3, 8 * v4);
        if (v3)
        {
          if (qword_1ED6A6268 == v3)
          {
            qword_1ED6A6268 = 0;
            dword_1ED6A6270 = 0;
          }

          WTF::fastFree(v3, v9);
        }

        return qword_1ED6A6268 + v6;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x1C7AE5D2CLL);
    }
  }

  if (dword_1ED6A6270 + (dword_1ED6A6270 >> 1) <= dword_1ED6A6270 + 1)
  {
    v11 = dword_1ED6A6270 + 1;
  }

  else
  {
    v11 = dword_1ED6A6270 + (dword_1ED6A6270 >> 1);
  }

  if (v11 <= a1)
  {
    v11 = a1;
  }

  if (v11 >> 29)
  {
    goto LABEL_31;
  }

  if (v11 <= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  v13 = dword_1ED6A6274;
  v14 = WTF::fastMalloc((8 * v12));
  dword_1ED6A6270 = v12;
  qword_1ED6A6268 = v14;
  memcpy(v14, v3, 8 * v13);
  if (!v3)
  {
    return v2;
  }

  if (qword_1ED6A6268 == v3)
  {
    qword_1ED6A6268 = 0;
    dword_1ED6A6270 = 0;
  }

  WTF::fastFree(v3, v15);
  return v2;
}

atomic_uint *matchLabelsAgainstString(atomic_uint *result, NSArray *a2, atomic_uint *a3)
{
  v4 = result;
  if (!a3 || !a3[1])
  {
    *result = 0;
    return result;
  }

  atomic_fetch_add_explicit(a3, 2u, memory_order_relaxed);
  JSC::Yarr::RegularExpression::RegularExpression();
  JSC::Yarr::replace();
  MEMORY[0x1CCA63300](&v21);
  WTF::StringImpl::replace();
  v7 = a3;
  v20 = v21;
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = regExpForLabels(a2);
  v9 = -1;
  v10 = -1;
  v11 = v20;
  if (!v20)
  {
    goto LABEL_7;
  }

LABEL_6:
  v12 = *(v11 + 16);
  v11 = *(v11 + 4);
  for (i = ((v12 >> 2) & 1) << 32; ; i = 0x100000000)
  {
    v3 = v11 | v3 & 0xFFFFFF0000000000 | i;
    v15 = JSC::Yarr::RegularExpression::match();
    if (v15 == -1)
    {
      break;
    }

    v16 = JSC::Yarr::RegularExpression::matchedLength(v8);
    if (v16 >= v10)
    {
      v9 = v15;
    }

    if (v16 > v10)
    {
      v10 = v16;
    }

    v11 = v20;
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_7:
    ;
  }

  if (v9 == -1)
  {
    *v4 = 0;
  }

  else
  {
    v17 = v20;
    if (v20)
    {
      if (!v9 && v20[1] <= v10)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        goto LABEL_22;
      }

      WTF::StringImpl::substring(v20);
      v17 = v21;
      if (v21)
      {
LABEL_22:
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](v17);
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        goto LABEL_28;
      }
    }

    *v4 = &stru_1F472E7E8;
    v18 = &stru_1F472E7E8;
  }

LABEL_28:
  result = v20;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v20, v14);
  }

  return result;
}

void sub_1C7AE5F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE611C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebInspectorClient::WebInspectorClient(WebInspectorClient *this, WebView *a2)
{
  *this = &unk_1F472DF00;
  *(this + 1) = &unk_1F472DFC0;
  *(this + 2) = 0;
  objc_initWeak(this + 2, a2);
  v4 = [[WebNodeHighlighter alloc] initWithInspectedWebView:a2];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v4;
}

void WebInspectorClient::~WebInspectorClient(WebInspectorClient *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
    v5 = *(this + 3);
    *(this + 3) = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
LABEL_6:
  }

LABEL_7:
  objc_destroyWeak(this + 2);
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (!v4 || atomic_fetch_add(v4, 0xFFFFFFFF) != 1)
  {
    v5 = *(this + 3);
    *(this + 3) = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_store(1u, v4);
  WTF::fastFree(v4, a2);
  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
LABEL_6:
  }

LABEL_7:
  objc_destroyWeak(this + 2);

  bmalloc::api::tzoneFree(this, v6);
}

void non-virtual thunk toWebInspectorClient::~WebInspectorClient(WebInspectorClient *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (!v4 || atomic_fetch_add(v4, 0xFFFFFFFF) != 1)
  {
    v5 = *(this + 2);
    *(this + 2) = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_store(1u, v4);
  WTF::fastFree(v4, a2);
  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
LABEL_6:
  }

LABEL_7:

  objc_destroyWeak(this + 1);
}

{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (!v4 || atomic_fetch_add(v4, 0xFFFFFFFF) != 1)
  {
    v5 = *(this + 2);
    *(this + 2) = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_store(1u, v4);
  WTF::fastFree(v4, a2);
  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
LABEL_6:
  }

LABEL_7:
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree((this - 8), v6);
}

void WebInspectorClient::showInspectorIndication(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained setShowingInspectorIndication:1];
  if (WeakRetained)
  {
  }
}

void sub_1C7AE65D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebInspectorClient::hideInspectorIndication(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  [WeakRetained setShowingInspectorIndication:0];
  if (WeakRetained)
  {
  }
}

void sub_1C7AE6654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebInspectorClient::didSetSearchingForNode(id *this, int a2)
{
  v3 = &WebInspectorDidStartSearchingForNode;
  if (!a2)
  {
    v3 = &WebInspectorDidStopSearchingForNode;
  }

  v4 = *v3;
  WTF::RunLoop::mainSingleton(this);
  if (v4)
  {
    v5 = v4;
  }

  WeakRetained = objc_loadWeakRetained(this + 2);
  v7 = [WeakRetained inspector];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F472DFF0;
  v10[1] = v4;
  v10[2] = v8;
  v11 = v10;
  WTF::RunLoop::dispatch();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (WeakRetained)
  {
  }
}

void sub_1C7AE676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  [_WebSafeAsyncForwarder forwardInvocation:]::$_6::~$_6(&a9);
  if (v12)
  {

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebInspectorClient::didSetSearchingForNode(BOOL)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F472DFF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebInspectorClient::didSetSearchingForNode(BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F472DFF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebInspectorClient::didSetSearchingForNode(BOOL)::$_0,void>::call(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);

  return [v2 postNotificationName:v3 object:v4];
}

JSValueRef jsPDFDocPrint(JSContextRef ctx, OpaqueJSValue *a2, JSValueRef value, unint64_t a4, const OpaqueJSValue *const *a5, const OpaqueJSValue **a6)
{
  {
    if (!JSValueIsObjectOfClass(ctx, value, jsPDFDocClass(void)::jsPDFDocClass))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  jsPDFDocClass(void)::jsPDFDocClass = JSClassCreate(&jsPDFDocClass(void)::jsPDFDocClassDefinition);
  if (JSValueIsObjectOfClass(ctx, value, jsPDFDocClass(void)::jsPDFDocClass))
  {
LABEL_3:
    Private = JSObjectGetPrivate(value);
    CallUIDelegate([objc_msgSend(Private "webFrame")], sel_webView_printFrameView_, objc_msgSend(objc_msgSend(Private, "webFrame"), "frameView"));
  }

LABEL_4:

  return JSValueMakeUndefined(ctx);
}

CFTypeRef jsPDFDocInitialize(const OpaqueJSContext *a1, JSObjectRef object)
{
  Private = JSObjectGetPrivate(object);

  return CFRetain(Private);
}

void jsPDFDocFinalize(OpaqueJSValue *a1)
{
  Private = JSObjectGetPrivate(a1);

  CFRelease(Private);
}

void sub_1C7AE7324(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)>::operator()(uint64_t *a1, char *a2)
{
  v2 = *a1;
  *a1 = 0;
  if (a2[16])
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    *(a2 + 1) = 0;
    v8[0] = v3;
    v9 = v4;
    v10 = 1;
  }

  else
  {
    v8[0] = 0;
    v10 = 0;
  }

  (*(*v2 + 16))(v2, v8);
  if (v10 == 1)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  return (*(*v2 + 8))(v2);
}

void sub_1C7AE7438(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  (*(*v12 + 8))(v12);
  _Unwind_Resume(a1);
}

void sub_1C7AE761C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void ReportDiscardedDelegateException(objc_selector *a1, objc_object *a2)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  Name = sel_getName(a1);
  if (isKindOfClass)
  {
    NSLog(&cfstr_WebkitDiscarde.isa, Name, [(objc_object *)a2 name], [(objc_object *)a2 reason]);
  }

  else
  {
    NSLog(&cfstr_WebkitDiscarde_0.isa, Name, a2);
  }
}

uint64_t WTF::NeverDestroyed<WebKit::LogChannels,WTF::AnyThreadsAccessTraits>::NeverDestroyed<>(uint64_t a1)
{
  *(a1 + 8) = 0;
  v2 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *a1 = &unk_1F472E038;
  v4 = WTF::fastMalloc(0xC0);
  v4[6] = xmmword_1E82C78C0;
  v4[7] = *&off_1E82C78D0;
  v4[4] = xmmword_1E82C78A0;
  v4[5] = *&off_1E82C78B0;
  v4[10] = xmmword_1E82C7900;
  v4[11] = *&off_1E82C7910;
  v4[8] = xmmword_1E82C78E0;
  v4[9] = *&off_1E82C78F0;
  *v4 = constinit;
  v4[1] = *&off_1E82C7870;
  v4[2] = xmmword_1E82C7880;
  v4[3] = *&off_1E82C7890;
  v5 = *v2;
  if (*v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v5, v3);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = 0x1800000018;
  return a1;
}

void sub_1C7AE789C(_Unwind_Exception *a1, void *a2)
{
  WTF::fastFree(v4, a2);
  *v2 = v3;
  v7 = *(v2 + 8);
  if (v7)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v7, v6);
  }

  _Unwind_Resume(a1);
}

void WebKit::LogChannels::~LogChannels(WebKit::LogChannels *this, void *a2)
{
  *this = &unk_1F472E060;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v2, a2);
  }
}

{
  *this = &unk_1F472E060;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v3, a2);
    v2 = vars8;
  }

  JUMPOUT(0x1CCA6A890);
}

void WebKit::LogChannels::logLevelString(WebKit::LogChannels *this)
{
  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];

  JUMPOUT(0x1CCA63A40);
}

void sub_1C7AE7B4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef WebLocalizedStringInternal(char *cStr)
{
  v1 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x1E695E498]);
  WebCore::copyLocalizedString(&arg, v1, v2);
  v3 = arg;
  arg = 0;
  if (v3)
  {
    CFAutorelease(v3);
    v4 = arg;
    arg = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

void sub_1C7AE7CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
    if (!v10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  CFRelease(v10);
  _Unwind_Resume(exception_object);
}

void sub_1C7AE7D44(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a2;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  if (v14 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v16 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v16);
  objc_end_catch();
}

void WebMediaKeySystemClient::~WebMediaKeySystemClient(WebMediaKeySystemClient *this, void *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(v2 + 8) = 0;
    *(this + 1) = 0;
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v2);
      WTF::fastFree(v2, a2);
    }
  }
}

{
  v3 = *(this + 1);
  if (v3 && (*(v3 + 8) = 0, *(this + 1) = 0, add = atomic_fetch_add(v3, 0xFFFFFFFF), add == 1))
  {
    v6 = v2;
    atomic_store(add, v3);
    v5 = this;
    WTF::fastFree(v3, a2);
    this = v5;
  }

  bmalloc::api::tzoneFree(this, a2);
}

void sub_1C7AE7F84(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE8100(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE81F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE8284(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE8CA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE8EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void layerPathWithHole(CAShapeLayer *a1, const WebCore::FloatQuad *a2, const WebCore::FloatQuad *this)
{
  v6 = *a2 == *this && *(a2 + 1) == *(this + 1);
  if (v6 && (*(a2 + 2) == *(this + 2) ? (v7 = *(a2 + 3) == *(this + 3)) : (v7 = 0), v7 && (*(a2 + 4) == *(this + 4) ? (v8 = *(a2 + 5) == *(this + 5)) : (v8 = 0), v8 && (*(a2 + 6) == *(this + 6) ? (v9 = *(a2 + 7) == *(this + 7)) : (v9 = 0), v9))) || WebCore::FloatQuad::containsQuad(this, a2))
  {

    [(CAShapeLayer *)a1 setPath:0];
    return;
  }

  if (WebCore::FloatQuad::containsQuad(a2, this))
  {
    v10 = *this;
    v11 = *(this + 1);
    v12 = *(this + 2);
    v13 = *(this + 3);
    v14 = *(this + 4);
    v15 = *(this + 5);
    v16 = *(this + 6);
    v17 = *(this + 7);
    goto LABEL_160;
  }

  v18 = *(a2 + 1);
  v37 = *a2;
  v38 = v18;
  v19 = *(this + 1);
  v35 = *this;
  v36 = v19;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v34 = WebCore::FloatQuad::containsPoint(&v37, &v35);
  if (v34)
  {
    goto LABEL_41;
  }

  *v43 = 0;
  if (!WebCore::findIntersection(&v37, (&v37 + 8), &v35, (&v36 + 8), v43, v20))
  {
    goto LABEL_41;
  }

  if (*&v37 >= *(&v37 + 2))
  {
    if (v43[0] > *&v37 || v43[0] < *(&v37 + 2))
    {
      goto LABEL_41;
    }
  }

  else if (v43[0] > *(&v37 + 2) || v43[0] < *&v37)
  {
    goto LABEL_41;
  }

  if (*(&v37 + 1) >= *(&v37 + 3))
  {
    if (v43[1] > *(&v37 + 1) || v43[1] < *(&v37 + 3))
    {
      goto LABEL_41;
    }
  }

  else if (v43[1] > *(&v37 + 3) || v43[1] < *(&v37 + 1))
  {
LABEL_41:
    v21 = 0;
    v42 = v35;
    goto LABEL_42;
  }

  v42 = *v43;
  v21 = 1;
LABEL_42:
  v23 = WebCore::FloatQuad::containsPoint(&v37, (&v35 + 8));
  if (v23)
  {
    goto LABEL_57;
  }

  *v43 = 0;
  if (!WebCore::findIntersection(&v37, (&v37 + 8), (&v35 + 8), &v36, v43, v22))
  {
    goto LABEL_57;
  }

  if (*&v37 >= *(&v37 + 2))
  {
    if (v43[0] > *&v37 || v43[0] < *(&v37 + 2))
    {
      goto LABEL_57;
    }
  }

  else if (v43[0] > *(&v37 + 2) || v43[0] < *&v37)
  {
    goto LABEL_57;
  }

  if (*(&v37 + 1) >= *(&v37 + 3))
  {
    if (v43[1] > *(&v37 + 1) || v43[1] < *(&v37 + 3))
    {
      goto LABEL_57;
    }
  }

  else if (v43[1] > *(&v37 + 3) || v43[1] < *(&v37 + 1))
  {
LABEL_57:
    v24 = 0;
    v41 = *(&v35 + 1);
    goto LABEL_58;
  }

  v41 = *v43;
  v24 = 1;
LABEL_58:
  v26 = WebCore::FloatQuad::containsPoint(&v37, &v36);
  if (v26)
  {
    goto LABEL_73;
  }

  *v43 = 0;
  if (!WebCore::findIntersection((&v38 + 8), &v38, (&v35 + 8), &v36, v43, v25))
  {
    goto LABEL_73;
  }

  if (*(&v38 + 2) >= *&v38)
  {
    if (v43[0] > *(&v38 + 2) || v43[0] < *&v38)
    {
      goto LABEL_73;
    }
  }

  else if (v43[0] > *&v38 || v43[0] < *(&v38 + 2))
  {
    goto LABEL_73;
  }

  if (*(&v38 + 3) >= *(&v38 + 1))
  {
    if (v43[1] > *(&v38 + 3) || v43[1] < *(&v38 + 1))
    {
      goto LABEL_73;
    }

LABEL_72:
    v40 = *v43;
    v27 = 1;
    goto LABEL_74;
  }

  if (v43[1] <= *(&v38 + 1) && v43[1] >= *(&v38 + 3))
  {
    goto LABEL_72;
  }

LABEL_73:
  v27 = 0;
  v40 = v36;
LABEL_74:
  v29 = WebCore::FloatQuad::containsPoint(&v37, (&v36 + 8));
  if (v29)
  {
    v30 = 0;
    v39 = *(&v36 + 1);
    v31 = v21;
    v32 = v34;
    goto LABEL_91;
  }

  *v43 = 0;
  v31 = v21;
  v32 = v34;
  if (!WebCore::findIntersection((&v38 + 8), &v38, &v35, (&v36 + 8), v43, v28))
  {
    goto LABEL_90;
  }

  if (*(&v38 + 2) >= *&v38)
  {
    if (v43[0] > *(&v38 + 2) || v43[0] < *&v38)
    {
      goto LABEL_90;
    }
  }

  else if (v43[0] > *&v38 || v43[0] < *(&v38 + 2))
  {
    goto LABEL_90;
  }

  if (*(&v38 + 3) >= *(&v38 + 1))
  {
    if (v43[1] > *(&v38 + 3) || v43[1] < *(&v38 + 1))
    {
      goto LABEL_90;
    }

LABEL_89:
    v39 = *v43;
    v30 = 1;
    goto LABEL_91;
  }

  if (v43[1] <= *(&v38 + 1) && v43[1] >= *(&v38 + 3))
  {
    goto LABEL_89;
  }

LABEL_90:
  v30 = 0;
  v39 = *(&v36 + 1);
LABEL_91:
  if ((v31 | v24 ^ 1 | v32))
  {
    if (((v23 | v31 ^ 1 | v24) & 1) == 0)
    {
      v41 = *(&v37 + 1);
      v23 = 1;
    }

    if ((v29 | v27 ^ 1 | v30))
    {
      goto LABEL_95;
    }

LABEL_98:
    v39 = *(&v38 + 1);
    v29 = 1;
    goto LABEL_99;
  }

  v42 = v37;
  v32 = 1;
  if (((v29 | v27 ^ 1 | v30) & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_95:
  if (((v27 | v30 ^ 1 | v26) & 1) == 0)
  {
    v40 = v38;
    v26 = 1;
  }

LABEL_99:
  if (((v24 | v23) & 1) == 0)
  {
    *v43 = 0;
    if (WebCore::findIntersection((&v37 + 8), &v38, &v42, &v41, v43, v28))
    {
      if (*(&v37 + 2) < *&v38)
      {
        if (v43[0] > *&v38 || v43[0] < *(&v37 + 2))
        {
          goto LABEL_114;
        }

LABEL_107:
        if (*(&v37 + 3) >= *(&v38 + 1))
        {
          if (v43[1] > *(&v37 + 3) || v43[1] < *(&v38 + 1))
          {
            goto LABEL_114;
          }
        }

        else if (v43[1] > *(&v38 + 1) || v43[1] < *(&v37 + 3))
        {
          goto LABEL_114;
        }

        v41 = *v43;
        goto LABEL_114;
      }

      if (v43[0] <= *(&v37 + 2) && v43[0] >= *&v38)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_114:
  if (((v27 | v26) & 1) == 0)
  {
    *v43 = 0;
    if (WebCore::findIntersection((&v37 + 8), &v38, &v39, &v40, v43, v28))
    {
      if (*(&v37 + 2) < *&v38)
      {
        if (v43[0] > *&v38 || v43[0] < *(&v37 + 2))
        {
          goto LABEL_129;
        }

LABEL_122:
        if (*(&v37 + 3) >= *(&v38 + 1))
        {
          if (v43[1] > *(&v37 + 3) || v43[1] < *(&v38 + 1))
          {
            goto LABEL_129;
          }
        }

        else if (v43[1] > *(&v38 + 1) || v43[1] < *(&v37 + 3))
        {
          goto LABEL_129;
        }

        v40 = *v43;
        goto LABEL_129;
      }

      if (v43[0] <= *(&v37 + 2) && v43[0] >= *&v38)
      {
        goto LABEL_122;
      }
    }
  }

LABEL_129:
  if (((v31 | v32) & 1) == 0)
  {
    *v43 = 0;
    if (WebCore::findIntersection(&v37, (&v38 + 8), &v42, &v41, v43, v28))
    {
      if (*&v37 < *(&v38 + 2))
      {
        if (v43[0] > *(&v38 + 2) || v43[0] < *&v37)
        {
          goto LABEL_144;
        }

LABEL_137:
        if (*(&v37 + 1) >= *(&v38 + 3))
        {
          if (v43[1] > *(&v37 + 1) || v43[1] < *(&v38 + 3))
          {
            goto LABEL_144;
          }
        }

        else if (v43[1] > *(&v38 + 3) || v43[1] < *(&v37 + 1))
        {
          goto LABEL_144;
        }

        v42 = *v43;
        goto LABEL_144;
      }

      if (v43[0] <= *&v37 && v43[0] >= *(&v38 + 2))
      {
        goto LABEL_137;
      }
    }
  }

LABEL_144:
  if ((v30 | v29))
  {
    goto LABEL_159;
  }

  *v43 = 0;
  if (!WebCore::findIntersection(&v37, (&v38 + 8), &v39, &v40, v43, v28))
  {
    goto LABEL_159;
  }

  if (*&v37 >= *(&v38 + 2))
  {
    if (v43[0] > *&v37 || v43[0] < *(&v38 + 2))
    {
      goto LABEL_159;
    }
  }

  else if (v43[0] > *(&v38 + 2) || v43[0] < *&v37)
  {
    goto LABEL_159;
  }

  if (*(&v37 + 1) >= *(&v38 + 3))
  {
    if (v43[1] > *(&v37 + 1) || v43[1] < *(&v38 + 3))
    {
      goto LABEL_159;
    }
  }

  else if (v43[1] > *(&v38 + 3) || v43[1] < *(&v37 + 1))
  {
    goto LABEL_159;
  }

  v39 = *v43;
LABEL_159:
  v11 = *(&v42 + 1);
  v10 = *&v42;
  v13 = *(&v41 + 1);
  v12 = *&v41;
  v15 = *(&v40 + 1);
  v14 = *&v40;
  v17 = *(&v39 + 1);
  v16 = *&v39;
LABEL_160:
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v10, v11);
  CGPathAddLineToPoint(Mutable, 0, v12, v13);
  CGPathAddLineToPoint(Mutable, 0, v14, v15);
  CGPathAddLineToPoint(Mutable, 0, v16, v17);
  CGPathMoveToPoint(Mutable, 0, *a2, *(a2 + 1));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 6), *(a2 + 7));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 4), *(a2 + 5));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 2), *(a2 + 3));
  [(CAShapeLayer *)a1 setPath:Mutable];
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C7AE9768(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void layerPath(CAShapeLayer *a1, const WebCore::FloatQuad *a2)
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, *a2, *(a2 + 1));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 6), *(a2 + 7));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 4), *(a2 + 5));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 2), *(a2 + 3));
  [(CAShapeLayer *)a1 setPath:Mutable];
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void sub_1C7AE9844(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE9964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE9A68(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::InspectorOverlayHighlight::~InspectorOverlayHighlight(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AE9A7C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::InspectorOverlayHighlight::~InspectorOverlayHighlight(va, a2);
  _Unwind_Resume(a1);
}

void WebCore::InspectorOverlayHighlight::~InspectorOverlayHighlight(WebCore::InspectorOverlayHighlight *this, void *a2)
{
  v3 = *(this + 23);
  v4 = *(this + 10);
  if (!v3)
  {
    goto LABEL_44;
  }

  v5 = &v4[17 * v3];
  while (2)
  {
    v6 = *(v4 + 33);
    v7 = v4[15];
    if (!v6)
    {
      goto LABEL_28;
    }

    v8 = v7 + 40 * v6;
    do
    {
      v9 = *(v7 + 24);
      if ((v9 & 0x8000000000000) == 0 || (v10 = (v9 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) != 1))
      {
        v11 = *(v7 + 12);
        v12 = *v7;
        if (!v11)
        {
          goto LABEL_23;
        }

LABEL_10:
        v13 = 32 * v11;
        while (1)
        {
          v14 = v12[3];
          if ((v14 & 0x8000000000000) != 0 && (v15 = (v14 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
          {
            atomic_store(1u, v15);
            WTF::fastFree(v15, a2);
            v16 = v12[1];
            if ((v16 & 0x8000000000000) != 0)
            {
LABEL_15:
              v17 = (v16 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v17);
                WTF::fastFree(v17, a2);
              }
            }
          }

          else
          {
            v16 = v12[1];
            if ((v16 & 0x8000000000000) != 0)
            {
              goto LABEL_15;
            }
          }

          v18 = *v12;
          *v12 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, a2);
          }

          v12 += 4;
          v13 -= 32;
          if (!v13)
          {
            v12 = *v7;
            goto LABEL_23;
          }
        }
      }

      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
      v11 = *(v7 + 12);
      v12 = *v7;
      if (v11)
      {
        goto LABEL_10;
      }

LABEL_23:
      if (v12)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        WTF::fastFree(v12, a2);
      }

      v7 += 40;
    }

    while (v7 != v8);
    v7 = v4[15];
LABEL_28:
    if (v7)
    {
      v4[15] = 0;
      *(v4 + 32) = 0;
      WTF::fastFree(v7, a2);
    }

    v19 = v4[13];
    if (v19)
    {
      v4[13] = 0;
      *(v4 + 28) = 0;
      WTF::fastFree(v19, a2);
    }

    v20 = v4[11];
    if (v20)
    {
      v4[11] = 0;
      *(v4 + 24) = 0;
      WTF::fastFree(v20, a2);
    }

    v21 = v4[9];
    if (v21)
    {
      v4[9] = 0;
      *(v4 + 20) = 0;
      WTF::fastFree(v21, a2);
    }

    v22 = v4[7];
    if (v22)
    {
      v4[7] = 0;
      *(v4 + 16) = 0;
      WTF::fastFree(v22, a2);
    }

    v23 = v4[5];
    if (v23)
    {
      v4[5] = 0;
      *(v4 + 12) = 0;
      WTF::fastFree(v23, a2);
    }

    v24 = *v4;
    if ((*v4 & 0x8000000000000) != 0)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v24 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25);
        WTF::fastFree(v25, a2);
      }
    }

    v4 += 17;
    if (v4 != v5)
    {
      continue;
    }

    break;
  }

  v4 = *(this + 10);
LABEL_44:
  if (v4)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v4, a2);
  }

  v26 = *(this + 19);
  v27 = *(this + 8);
  if (!v26)
  {
    goto LABEL_92;
  }

  v28 = &v27[9 * v26];
  while (2)
  {
    v29 = *(v27 + 17);
    v30 = v27[7];
    if (!v29)
    {
      goto LABEL_73;
    }

    v31 = v30 + 40 * v29;
    while (2)
    {
      v32 = *(v30 + 24);
      if ((v32 & 0x8000000000000) == 0 || (v33 = (v32 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v32 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) != 1))
      {
        v34 = *(v30 + 12);
        v35 = *v30;
        if (!v34)
        {
          goto LABEL_68;
        }

LABEL_55:
        v36 = 32 * v34;
        while (2)
        {
          v37 = v35[3];
          if ((v37 & 0x8000000000000) != 0 && (v38 = (v37 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v37 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
          {
            atomic_store(1u, v38);
            WTF::fastFree(v38, a2);
            v39 = v35[1];
            if ((v39 & 0x8000000000000) != 0)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v39 = v35[1];
            if ((v39 & 0x8000000000000) != 0)
            {
LABEL_60:
              v40 = (v39 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v39 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v40);
                WTF::fastFree(v40, a2);
              }
            }
          }

          v41 = *v35;
          *v35 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, a2);
          }

          v35 += 4;
          v36 -= 32;
          if (!v36)
          {
            v35 = *v30;
            goto LABEL_68;
          }

          continue;
        }
      }

      atomic_store(1u, v33);
      WTF::fastFree(v33, a2);
      v34 = *(v30 + 12);
      v35 = *v30;
      if (v34)
      {
        goto LABEL_55;
      }

LABEL_68:
      if (v35)
      {
        *v30 = 0;
        *(v30 + 8) = 0;
        WTF::fastFree(v35, a2);
      }

      v30 += 40;
      if (v30 != v31)
      {
        continue;
      }

      break;
    }

    v30 = v27[7];
LABEL_73:
    if (v30)
    {
      v27[7] = 0;
      *(v27 + 16) = 0;
      WTF::fastFree(v30, a2);
    }

    v42 = *(v27 + 13);
    v43 = v27[5];
    if (v42)
    {
      v44 = 40 * v42;
      do
      {
        v45 = *v43;
        *v43 = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, a2);
        }

        v43 = (v43 + 40);
        v44 -= 40;
      }

      while (v44);
      v43 = v27[5];
    }

    if (v43)
    {
      v27[5] = 0;
      *(v27 + 12) = 0;
      WTF::fastFree(v43, a2);
    }

    v46 = v27[3];
    if (v46)
    {
      v27[3] = 0;
      *(v27 + 8) = 0;
      WTF::fastFree(v46, a2);
    }

    v47 = v27[1];
    if (v47)
    {
      v27[1] = 0;
      *(v27 + 4) = 0;
      WTF::fastFree(v47, a2);
    }

    v48 = *v27;
    if ((*v27 & 0x8000000000000) != 0)
    {
      v49 = (v48 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v48 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v49);
        WTF::fastFree(v49, a2);
      }
    }

    v27 += 9;
    if (v27 != v28)
    {
      continue;
    }

    break;
  }

  v27 = *(this + 8);
LABEL_92:
  if (v27)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v27, a2);
  }

  v50 = *(this + 6);
  if (v50)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v50, a2);
  }

  v51 = *(this + 4);
  if ((v51 & 0x8000000000000) != 0 && (v52 = (v51 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v51 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
  {
    atomic_store(1u, v52);
    WTF::fastFree(v52, a2);
    v53 = *(this + 3);
    if ((v53 & 0x8000000000000) != 0)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v53 = *(this + 3);
    if ((v53 & 0x8000000000000) != 0)
    {
LABEL_99:
      v54 = (v53 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v53 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v54);
        WTF::fastFree(v54, a2);
      }
    }
  }

  v55 = *(this + 2);
  if ((v55 & 0x8000000000000) != 0 && (v56 = (v55 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v55 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
  {
    atomic_store(1u, v56);
    WTF::fastFree(v56, a2);
    v57 = *(this + 1);
    if ((v57 & 0x8000000000000) != 0)
    {
      goto LABEL_104;
    }
  }

  else
  {
    v57 = *(this + 1);
    if ((v57 & 0x8000000000000) != 0)
    {
LABEL_104:
      v58 = (v57 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v57 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v58);
        WTF::fastFree(v58, a2);
      }
    }
  }

  v59 = *this;
  if ((*this & 0x8000000000000) != 0)
  {
    v60 = (v59 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v59 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v60);
      WTF::fastFree(v60, a2);
    }
  }
}

void sub_1C7AEA5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEA688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEA76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEA850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEA934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEAA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEAB90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEAC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEAD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEAE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEAF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEAFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL WebNotificationClient::show(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  LOBYTE(v42) = 1;
  v8 = [*(a1 + 8) _notificationProvider];
  if (!v8)
  {
    goto LABEL_39;
  }

  v10 = *(a3 + 144);
  v9 = *(a3 + 152);
  v11 = [[WebNotification alloc] initWithCoreNotification:a3];
  if (!(v10 ^ 1 | v9) || !(v10 | v9))
  {
    __break(0xC471u);
    JUMPOUT(0x1C7AEB3B0);
  }

  v12 = v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RetainPtr<WebNotification>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RetainPtr<WebNotification>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash((a1 + 16), 8u);
    v13 = *(a1 + 16);
  }

  v14 = *(v13 - 8);
  v15 = (v9 >> 5) & 0x7FFF800 ^ ((v9 - 1640531527) << 16) ^ (v9 - 1640531527);
  v16 = (v9 >> 37) & 0x7FFF800 ^ ((v15 + WORD2(v9) + (v15 >> 11)) << 16) ^ (v15 + WORD2(v9) + (v15 >> 11));
  v17 = (v10 >> 5) & 0x7FFF800 ^ ((v16 + v10 + (v16 >> 11)) << 16) ^ (v16 + v10 + (v16 >> 11));
  v18 = (v10 >> 37) & 0x7FFF800 ^ ((v17 + WORD2(v10) + (v17 >> 11)) << 16) ^ (v17 + WORD2(v10) + (v17 >> 11));
  v19 = (v18 + (v18 >> 11)) ^ (8 * (v18 + (v18 >> 11)));
  v20 = (v19 + (v19 >> 5)) ^ (4 * (v19 + (v19 >> 5)));
  v21 = v20 + (v20 >> 15);
  if (v21 == v21 << 10)
  {
    v22 = 0x800000;
  }

  else
  {
    v22 = (v21 << 10) ^ v21;
  }

  v23 = v14 & v22;
  v24 = (v13 + 32 * v23);
  v26 = *v24;
  v25 = v24[1];
  if (*v24 != 0)
  {
    v27 = 0;
    v28 = 1;
    while (v25 != v9 || v26 != v10)
    {
      if (!(v26 ^ 1 | v25))
      {
        v27 = v24;
      }

      v23 = (v23 + v28) & v14;
      v24 = (v13 + 32 * v23);
      v26 = *v24;
      v25 = v24[1];
      ++v28;
      if (*v24 == 0)
      {
        if (v27)
        {
          *v27 = 0;
          v27[1] = 0;
          v27[2] = 0;
          --*(*(a1 + 16) - 16);
          v24 = v27;
        }

        goto LABEL_20;
      }
    }

    if (v12)
    {
      v38 = v12;
    }

    v39 = v24[2];
    v24[2] = v12;
    if (v39)
    {
    }

    goto LABEL_37;
  }

LABEL_20:
  *v24 = v10;
  v24[1] = v9;
  if (v12)
  {
    v30 = v12;
  }

  v31 = v24[2];
  v24[2] = v12;
  if (v31)
  {
  }

  v32 = *(a1 + 16);
  if (v32)
  {
    v33 = *(v32 - 16);
    v34 = *(v32 - 12) + 1;
    *(v32 - 12) = v34;
    v35 = (v33 + v34);
    v36 = *(v32 - 4);
    if (v36 <= 0x400)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v36 > 2 * v35)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v34 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v35 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v36 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (3 * v36 > 4 * v35)
  {
    goto LABEL_37;
  }

  if (v36)
  {
LABEL_35:
    v37 = v36 << (6 * v34 >= (2 * v36));
    goto LABEL_36;
  }

  v37 = 8;
LABEL_36:
  WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RetainPtr<WebNotification>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RetainPtr<WebNotification>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash((a1 + 16), v37);
LABEL_37:
  [objc_msgSend(*(a1 + 8) "_notificationProvider")];
  if (v12)
  {
  }

LABEL_39:
  v40 = *a5;
  *a5 = 0;
  (*(*v40 + 16))(v40);
  (*(*v40 + 8))(v40);
  return v8 != 0;
}

void sub_1C7AEB3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (v9)
  {

    WTF::ScopeExit<WebNotificationClient::show(WebCore::ScriptExecutionContext &,WebCore::NotificationData &&,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>::~ScopeExit(&a9);
    _Unwind_Resume(a1);
  }

  WTF::ScopeExit<WebNotificationClient::show(WebCore::ScriptExecutionContext &,WebCore::NotificationData &&,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>::~ScopeExit(&a9);
  _Unwind_Resume(a1);
}

uint64_t **WTF::ScopeExit<WebNotificationClient::show(WebCore::ScriptExecutionContext &,WebCore::NotificationData &&,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>::~ScopeExit(uint64_t **result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    v2 = **result;
    **result = 0;
    (*(*v2 + 16))(v2);
    (*(*v2 + 8))(v2);
    return v1;
  }

  return result;
}

uint64_t WebNotificationClient::cancel(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 144);
  v2 = *(a2 + 152);
  if (!(v3 ^ 1 | v2) || !(v3 | v2))
  {
    __break(0xC471u);
    JUMPOUT(0x1C7AEB674);
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = (v2 >> 5) & 0x7FFF800 ^ ((v2 - 1640531527) << 16) ^ (v2 - 1640531527);
    v7 = (v2 >> 37) & 0x7FFF800 ^ ((v6 + WORD2(v2) + (v6 >> 11)) << 16) ^ (v6 + WORD2(v2) + (v6 >> 11));
    v8 = (v3 >> 5) & 0x7FFF800 ^ ((v7 + v3 + (v7 >> 11)) << 16) ^ (v7 + v3 + (v7 >> 11));
    v9 = (v3 >> 37) & 0x7FFF800 ^ ((v8 + WORD2(v3) + (v8 >> 11)) << 16) ^ (v8 + WORD2(v3) + (v8 >> 11));
    v10 = (v9 + (v9 >> 11)) ^ (8 * (v9 + (v9 >> 11)));
    v11 = (v10 + (v10 >> 5)) ^ (4 * (v10 + (v10 >> 5)));
    v12 = v11 + (v11 >> 15);
    if (v12 == v12 << 10)
    {
      v13 = 0x800000;
    }

    else
    {
      v13 = (v12 << 10) ^ v12;
    }

    v14 = v5 & v13;
    v15 = (v4 + 32 * v14);
    v16 = *v15;
    v17 = v15[1];
    if (v17 == v2 && v16 == v3)
    {
LABEL_18:
      v22 = *(v4 + 32 * v14 + 16);
      if (v22)
      {
        v23 = result;
        v24 = v22;

        v25 = [*(v23 + 8) _notificationProvider];

        return [v25 cancelNotification:v22];
      }
    }

    else
    {
      v19 = 1;
      while (v16 | v17)
      {
        v14 = (v14 + v19) & v5;
        v20 = (v4 + 32 * v14);
        v16 = *v20;
        v17 = v20[1];
        v21 = v17 == v2 && v16 == v3;
        ++v19;
        if (v21)
        {
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

void WebNotificationClient::notificationObjectDestroyed(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a2 + 144);
    v4 = *(a2 + 152);
    if (!(v5 ^ 1 | v4) || !(v5 | v4))
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AEB8BCLL);
    }

    v6 = *(v3 - 8);
    v7 = (v4 >> 5) & 0x7FFF800 ^ ((v4 - 1640531527) << 16) ^ (v4 - 1640531527);
    v8 = (v4 >> 37) & 0x7FFF800 ^ ((v7 + WORD2(v4) + (v7 >> 11)) << 16) ^ (v7 + WORD2(v4) + (v7 >> 11));
    v9 = (v5 >> 5) & 0x7FFF800 ^ ((v8 + v5 + (v8 >> 11)) << 16) ^ (v8 + v5 + (v8 >> 11));
    v10 = (v5 >> 37) & 0x7FFF800 ^ ((v9 + WORD2(v5) + (v9 >> 11)) << 16) ^ (v9 + WORD2(v5) + (v9 >> 11));
    v11 = (v10 + (v10 >> 11)) ^ (8 * (v10 + (v10 >> 11)));
    v12 = (v11 + (v11 >> 5)) ^ (4 * (v11 + (v11 >> 5)));
    v13 = v12 + (v12 >> 15);
    if (v13 == v13 << 10)
    {
      v14 = 0x800000;
    }

    else
    {
      v14 = (v13 << 10) ^ v13;
    }

    v15 = v6 & v14;
    v16 = (v3 + 32 * v15);
    v17 = *v16;
    v18 = v16[1];
    if (v18 == v4 && v17 == v5)
    {
LABEL_18:
      if (v15 != *(v3 - 4))
      {
        v23 = (v3 + 32 * v15);
        v30 = v23[2];
        v23[2] = 0;
        v24 = *v2;
        if (!*v2 || (v24 += 4 * *(v24 - 1), v24 != v23))
        {
          if (v24 != v23)
          {
            v23[1] = 0;
            v23[2] = 0;
            *v23 = 1;
            v25 = *v2;
            v26 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
            *(v25 - 2) = v26;
            v27 = *(v25 - 1);
            if (6 * v26.i32[1] < v27 && v27 >= 9)
            {
              v29 = a1;
              WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RetainPtr<WebNotification>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RetainPtr<WebNotification>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash((a1 + 16), v27 >> 1);
              a1 = v29;
            }
          }
        }

        if (v30)
        {
          [objc_msgSend(*(a1 + 8) "_notificationProvider")];
        }
      }
    }

    else
    {
      v20 = 1;
      while (v17 | v18)
      {
        v15 = (v15 + v20) & v6;
        v21 = (v3 + 32 * v15);
        v17 = *v21;
        v18 = v21[1];
        v22 = v18 == v4 && v17 == v5;
        ++v20;
        if (v22)
        {
          goto LABEL_18;
        }
      }
    }
  }
}

void sub_1C7AEB8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

mpark **WebNotificationClient::notificationControllerDestroyed(mpark **this, WTF::StringImpl *a2)
{
  if (this)
  {
    v2 = this;
    v3 = this[3];
    if (v3)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = *(v2 + 2);
    if (v4)
    {
      v5 = *(v4 - 4);
      if (v5)
      {
        v6 = (v4 + 16);
        do
        {
          if (*(v6 - 2) ^ 1 | *(v6 - 1))
          {
            v7 = *v6;
            *v6 = 0;
            if (v7)
            {
            }
          }

          v6 += 4;
          --v5;
        }

        while (v5);
      }

      WTF::fastFree((v4 - 16), a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return this;
}

void WebNotificationClient::~WebNotificationClient(WebNotificationClient *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 16);
      do
      {
        if (*(v6 - 2) ^ 1 | *(v6 - 1))
        {
          v7 = *v6;
          *v6 = 0;
          if (v7)
          {
          }
        }

        v6 += 4;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }
}

{
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 16);
      do
      {
        if (*(v6 - 2) ^ 1 | *(v6 - 1))
        {
          v7 = *v6;
          *v6 = 0;
          if (v7)
          {
          }
        }

        v6 += 4;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WebNotificationClient::requestPermission(uint64_t a1, WebCore::SecurityContext *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = [[WebNotificationPolicyListener alloc] initWithPermissionHandler:a3];
  [*(a1 + 8) UIDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_69;
  }

  *(a1 + 32) = 1;
  v5 = [[WebSecurityOrigin alloc] _initWithWebCoreSecurityOrigin:WebCore::SecurityContext::securityOrigin(a2)];
  v6 = WebCore::SecurityContext::securityOrigin(a2);
  v7 = v6;
  if (*(v6 + 32))
  {
    if (*(v6 + 32) != 1)
    {
LABEL_4:
      mpark::throw_bad_variant_access(v6);
    }
  }

  else
  {
    v8 = *(v6 + 8);
    if (!v8 && !*(v6 + 16) && (*(v6 + 26) & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AEBE70);
    }

    if (v8 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AEBE90);
    }
  }

  v9 = *(a1 + 24);
  if (v9 || (WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash((a1 + 24), 8u), (v9 = *(a1 + 24)) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::computeHash<WebCore::SecurityOriginData>(v7 + 8);
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v11 & v10;
    v6 = v9 + 32 * v15;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    v16 = !*v6 && *(v6 + 8) == 0;
    if (v16 && (*(v6 + 18) & 1) == 0)
    {
      break;
    }

    if (*v6 == -1)
    {
      v13 = (v9 + 32 * v15);
      goto LABEL_14;
    }

LABEL_25:
    if (WebCore::operator==())
    {
      goto LABEL_67;
    }

LABEL_14:
    v11 = i + v15;
  }

  if (v13)
  {
    *v13 = 0u;
    v13[1] = 0u;
    --*(*(a1 + 24) - 16);
    v6 = v13;
  }

  LOBYTE(v35[0]) = 0;
  v37 = -1;
  v17 = *(v7 + 32);
  if (v17 != 255)
  {
    if (*(v7 + 32))
    {
      *v35 = *(v7 + 8);
    }

    else
    {
      v18 = *(v7 + 8);
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v35[0] = v18;
      v19 = *(v7 + 16);
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v35[1] = v19;
      v36 = *(v7 + 24);
      v17 = *(v7 + 32);
    }

    v37 = v17;
  }

  if (*(v6 + 24) == 255)
  {
    if (v17 == 255)
    {
      goto LABEL_58;
    }

LABEL_51:
    v34 = v6;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRSI_SM_EEEDcmSO_DpOT0_(v17, &v34, v6, v35);
    if (!v37)
    {
      v25 = v35[1];
      v35[1] = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v24);
      }

      v26 = v35[0];
      v35[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v24);
      }
    }
  }

  else
  {
    if (v17 != 255)
    {
      goto LABEL_51;
    }

    if (!*(v6 + 24))
    {
      v20 = *(v6 + 8);
      *(v6 + 8) = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v21 = v6;
        WTF::StringImpl::destroy(v20, v12);
        v6 = v21;
      }

      v22 = *v6;
      *v6 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v23 = v6;
        WTF::StringImpl::destroy(v22, v12);
        v6 = v23;
      }
    }

    *(v6 + 24) = -1;
  }

LABEL_58:
  v27 = *(a1 + 24);
  if (v27)
  {
    v28 = *(v27 - 16);
    v29 = *(v27 - 12) + 1;
    *(v27 - 12) = v29;
    v30 = (v28 + v29);
    v31 = *(v27 - 4);
    if (v31 <= 0x400)
    {
      goto LABEL_60;
    }

LABEL_64:
    if (v31 <= 2 * v30)
    {
LABEL_65:
      v32 = v31 << (6 * v29 >= (2 * v31));
      goto LABEL_66;
    }
  }

  else
  {
    v29 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v30 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v31 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_64;
    }

LABEL_60:
    if (3 * v31 <= 4 * v30)
    {
      if (v31)
      {
        goto LABEL_65;
      }

      v32 = 8;
LABEL_66:
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash((a1 + 24), v32);
    }
  }

LABEL_67:
  CallUIDelegate(*(a1 + 8), sel_webView_decidePolicyForNotificationRequestFromOrigin_listener_, v5, v33);
  if (v5)
  {
  }

LABEL_69:
  if (v33)
  {
  }
}

uint64_t WebNotificationClient::checkPermission(id *this, WebCore::ScriptExecutionContext *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*(a2 + 282))
  {
    return 1;
  }

  if (![objc_msgSend(this[1] "preferences")])
  {
    return 1;
  }

  v5 = [[WebSecurityOrigin alloc] _initWithWebCoreSecurityOrigin:WebCore::SecurityContext::securityOrigin(a2)];
  v6 = [objc_msgSend(this[1] "_notificationProvider")];
  if (!v6)
  {
    result = 2;
    if (!v5)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v6 == 2)
  {
    v7 = WebCore::SecurityContext::securityOrigin(a2);
    if (this[3])
    {
      result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>((this + 3), v7 + 8) != 0;
      if (!v5)
      {
        return result;
      }

LABEL_15:
      v8 = result;

      return v8;
    }
  }

  result = 0;
  if (v5)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_1C7AEC064(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(mpark *a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*(v4 + 24))
      {
        if (*(v4 + 24) != 1)
        {
          mpark::throw_bad_variant_access(a1);
        }
      }

      else
      {
        if (*v4 == -1)
        {
          goto LABEL_5;
        }

        v5 = *(v4 + 1);
        *(v4 + 1) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        a1 = *v4;
        *v4 = 0;
        if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          a1 = WTF::StringImpl::destroy(a1, a2);
        }
      }

      *(v4 + 24) = -1;
LABEL_5:
      v4 = (v4 + 32);
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((v2 - 16), a2);
}

_DWORD *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RetainPtr<WebNotification>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RetainPtr<WebNotification>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RetainPtr<WebNotification>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    v7 = a2;
    result = WTF::fastMalloc(((32 * a2) | 0x10));
    v10 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    result = WTF::fastMalloc(((32 * a2) | 0x10));
    v10 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v11 = v10;
  do
  {
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    v11 += 4;
    --v7;
  }

  while (v7);
LABEL_7:
  *a1 = v10;
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v12 = 0;
    while (1)
    {
      v13 = (v4 + 32 * v12);
      v14 = *v13;
      v15 = v13[1];
      if (*v13 ^ 1 | v15)
      {
        if (v14 | v15)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = 0;
          v20 = (v15 >> 5) & 0x7FFF800 ^ ((v15 - 1640531527) << 16) ^ (v15 - 1640531527);
          v21 = (v15 >> 37) & 0x7FFF800 ^ ((v20 + WORD2(v15) + (v20 >> 11)) << 16) ^ (v20 + WORD2(v15) + (v20 >> 11));
          v22 = (v14 >> 5) & 0x7FFF800 ^ ((v21 + v14 + (v21 >> 11)) << 16) ^ (v21 + v14 + (v21 >> 11));
          v23 = (v14 >> 37) & 0x7FFF800 ^ ((v22 + WORD2(v14) + (v22 >> 11)) << 16) ^ (v22 + WORD2(v14) + (v22 >> 11));
          v24 = (v23 + (v23 >> 11)) ^ (8 * (v23 + (v23 >> 11)));
          v25 = (v24 + (v24 >> 5)) ^ (4 * (v24 + (v24 >> 5)));
          v26 = v25 + (v25 >> 15);
          if (v26 == v26 << 10)
          {
            v27 = 0x800000;
          }

          else
          {
            v27 = (v26 << 10) ^ v26;
          }

          do
          {
            v28 = v27 & v18;
            v29 = v17 + 32 * v28;
            v27 = ++v19 + v28;
          }

          while (*v29 != 0);
          v30 = *(v29 + 16);
          *(v29 + 16) = 0;
          if (v30)
          {
          }

          *v29 = *v13;
          v31 = v13[2];
          v13[2] = 0;
          *(v29 + 16) = v31;
          v16 = v13[2];
          v13[2] = 0;
          if (!v16)
          {
            goto LABEL_9;
          }

LABEL_13:

          goto LABEL_9;
        }

        v16 = v13[2];
        v13[2] = 0;
        if (v16)
        {
          goto LABEL_13;
        }
      }

LABEL_9:
      if (++v12 == v5)
      {
        goto LABEL_26;
      }
    }
  }

  if (v4)
  {
LABEL_26:

    return WTF::fastFree((v4 - 16), v9);
  }

  return result;
}

void WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc(((32 * a2) | 0x10));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 32 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = v4 + 32 * v11;
      if (*(v13 + 24))
      {
        if (*(v13 + 24) != 1)
        {
LABEL_49:
          mpark::throw_bad_variant_access(v7);
        }
      }

      else
      {
        if (*v13 == -1)
        {
          goto LABEL_9;
        }

        if (*v13)
        {
          v16 = 0;
        }

        else
        {
          v16 = *(v13 + 8) == 0;
        }

        if (v16 && (*(v13 + 18) & 1) == 0)
        {
          *v13 = 0;
          *(v13 + 8) = 0;
          *(v13 + 24) = -1;
          goto LABEL_9;
        }
      }

      v14 = *a1;
      if (*a1)
      {
        v15 = *(v14 - 8);
      }

      else
      {
        v15 = 0;
      }

      v7 = WTF::computeHash<WebCore::SecurityOriginData>(v4 + 32 * v11);
      for (i = 0; ; v7 = (i + v18))
      {
        v18 = v7 & v15;
        v19 = v14 + 32 * v18;
        if (!*(v19 + 24))
        {
          break;
        }

        if (*(v19 + 24) != 1)
        {
          goto LABEL_49;
        }

LABEL_25:
        ++i;
      }

      if (*v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v19 + 8) == 0;
      }

      if (!v20 || (*(v19 + 18) & 1) != 0)
      {
        goto LABEL_25;
      }

      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 24) = -1;
      if (*(v13 + 24) != 255)
      {
        if (*(v13 + 24))
        {
          *v19 = *v13;
          v23 = *(v13 + 24);
          *(v19 + 24) = v23;
          if (!v23)
          {
LABEL_38:
            v24 = *(v13 + 8);
            *(v13 + 8) = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v8);
            }

            v7 = *v13;
            *v13 = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v7 = WTF::StringImpl::destroy(v7, v8);
            }
          }
        }

        else
        {
          v21 = *v13;
          *v13 = 0;
          *v19 = v21;
          v22 = *(v13 + 8);
          *(v13 + 8) = 0;
          *(v19 + 8) = v22;
          *(v19 + 16) = *(v13 + 16);
          LODWORD(v22) = *(v13 + 24);
          *(v19 + 24) = v22;
          if (!v22)
          {
            goto LABEL_38;
          }
        }
      }

      *(v13 + 24) = -1;
LABEL_9:
      if (++v11 == v12)
      {
        goto LABEL_45;
      }
    }
  }

  if (v4)
  {
LABEL_45:

    WTF::fastFree((v4 - 16), v8);
  }
}

WTF::StringImpl *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS0_15move_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRSI_SM_EEEDcmSO_DpOT0_(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  if (result)
  {
    if (*(*a2 + 24))
    {
      if (*(*a2 + 24) == 1)
      {
        *a3 = *a4;
        return result;
      }
    }

    else
    {
      v7 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v8 = a4;
        WTF::StringImpl::destroy(v7, a2);
        a4 = v8;
      }

      result = *v4;
      *v4 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v9 = a4;
          result = WTF::StringImpl::destroy(result, a2);
          a4 = v9;
        }
      }
    }

    *(v4 + 24) = -1;
    *v4 = *a4;
    *(v4 + 24) = 1;
  }

  else if (*(*a2 + 24))
  {
    *(v4 + 24) = -1;
    v5 = *a4;
    *a4 = 0;
    *v4 = v5;
    v6 = a4[1];
    a4[1] = 0;
    *(v4 + 8) = v6;
    *(v4 + 16) = *(a4 + 4);
    *(v4 + 24) = 0;
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    v11 = *a3;
    *a3 = v10;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v12 = a4;
      v13 = a3;
      WTF::StringImpl::destroy(v11, a2);
      a3 = v13;
      a4 = v12;
    }

    v14 = a4[1];
    a4[1] = 0;
    result = *(a3 + 8);
    *(a3 + 8) = v14;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v15 = a4;
      v16 = a3;
      result = WTF::StringImpl::destroy(result, a2);
      a3 = v16;
      a4 = v15;
    }

    v17 = *(a4 + 8);
    *(a3 + 18) = *(a4 + 18);
    *(a3 + 16) = v17;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
LABEL_3:
      mpark::throw_bad_variant_access(a1);
    }
  }

  else
  {
    if (*a2)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(a2 + 8) == 0;
    }

    if (v2 && (*(a2 + 18) & 1) == 0 || *a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AECB54);
    }
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    a1 = WTF::computeHash<WebCore::SecurityOriginData>(a2);
    for (i = 0; ; a1 = (i + v6))
    {
      v6 = a1 & v4;
      v7 = v3 + 32 * v6;
      if (*(v7 + 24))
      {
        break;
      }

      if (*v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v7 + 8) == 0;
      }

      if (v8 && (*(v7 + 18) & 1) == 0)
      {
        return 0;
      }

      if (*v7 != -1)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++i;
    }

    if (*(v7 + 24) != 1)
    {
      goto LABEL_3;
    }

LABEL_14:
    if (WebCore::operator==())
    {
      return v7;
    }

    goto LABEL_15;
  }

  return 0;
}

void sub_1C7AEE3B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF::StringImpl *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEE5A8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEE7B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEEB94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEEEE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AEF078(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7AEF2C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, char a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, a2);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v16);
      _Unwind_Resume(a1);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t WebPaymentCoordinatorClient::create@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  if (WebPaymentCoordinatorClient::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebPaymentCoordinatorClient::s_heapRef, a1);
  }

  else
  {
    result = WebPaymentCoordinatorClient::operatorNewSlow(0x10);
  }

  *(result + 8) = 1;
  *result = &unk_1F472E1E0;
  *a2 = result;
  return result;
}

void WebPaymentCoordinatorClient::~WebPaymentCoordinatorClient(WebPaymentCoordinatorClient *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebPaymentCoordinatorClient::~WebPaymentCoordinatorClient(WebPaymentCoordinatorClient *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    bmalloc::api::tzoneFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebPaymentCoordinatorClient::canMakePaymentsWithActiveCard(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F472E2A0;
  v5[1] = v4;
  v7 = v5;
  WTF::callOnMainThread();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_1C7AEF4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPaymentCoordinatorClient::openPaymentSetup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F472E2C8;
  v5[1] = v4;
  v7 = v5;
  WTF::callOnMainThread();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_1C7AEF600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

bmalloc::api *WebPaymentCoordinatorClient::deref(bmalloc::api *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    return bmalloc::api::tzoneFree(this, a2);
  }

  --*(this + 2);
  return this;
}

_DWORD *WebCore::PaymentCoordinatorClient::getSetupFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, &v9);
  result = (*(*v4 + 8))(v4);
  v7 = v9;
  if (HIDWORD(v10))
  {
    v8 = 8 * HIDWORD(v10);
    do
    {
      result = *v7;
      *v7 = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      v7 = (v7 + 8);
      v8 -= 8;
    }

    while (v8);
    v7 = v9;
  }

  if (v7)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    return WTF::fastFree(v7, v6);
  }

  return result;
}

void sub_1C7AEF7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v11);
  _Unwind_Resume(a1);
}

uint64_t WebCore::PaymentCoordinatorClient::beginApplePaySetup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  *a5 = 0;
  (*(*v5 + 16))(v5, 0);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        if (v6[2] == 1)
        {
          (*(*v6 + 8))(v6);
        }

        else
        {
          --v6[2];
        }
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebPaymentCoordinatorClient::canMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472E2A0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebPaymentCoordinatorClient::canMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472E2A0;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebPaymentCoordinatorClient::canMakePaymentsWithActiveCard(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebPaymentCoordinatorClient::openPaymentSetup(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472E2C8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebPaymentCoordinatorClient::openPaymentSetup(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472E2C8;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebPaymentCoordinatorClient::openPaymentSetup(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *allScriptsInPDFDocument(CGPDFDocument *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if (a1)
  {
    Catalog = CGPDFDocumentGetCatalog(a1);
    if (Catalog)
    {
      value = 0;
      if (CGPDFDictionaryGetDictionary(Catalog, "Names", &value))
      {
        v23 = 0;
        if (CGPDFDictionaryGetDictionary(value, "JavaScript", &v23))
        {
          v21 = 0;
          v22 = 0;
          appendValuesInPDFNameSubtreeToVector(v23, &v21);
          v5 = HIDWORD(v22);
          v6 = v21;
          v17 = v21;
          if (HIDWORD(v22))
          {
            while (1)
            {
              dict = 0;
              if (!CGPDFObjectGetValue(*v6, kCGPDFObjectTypeDictionary, &dict))
              {
                goto LABEL_7;
              }

              __s = 0;
              CGPDFDictionaryGetName(dict, "S", &__s);
              if (__s)
              {
                strlen(__s);
                WTF::String::fromUTF8();
                v7 = string;
              }

              else
              {
                v7 = 0;
                string = 0;
              }

              v8 = MEMORY[0x1CCA639B0](v7, "JavaScript", 10);
              v9 = string;
              string = 0;
              if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v9, v4);
              }

              if ((v8 & 1) == 0)
              {
                goto LABEL_7;
              }

              __s = 0;
              string = 0;
              if (CGPDFDictionaryGetStream(dict, "JS", &__s))
              {
                format = CGPDFDataFormatRaw;
                v10 = CGPDFStreamCopyData(__s, &format);
                v11 = v10;
                if (v10)
                {
                  BytePtr = CFDataGetBytePtr(v10);
                  Length = CFDataGetLength(v11);
                  if (BytePtr)
                  {
LABEL_22:
                    if (Length)
                    {
                      if (Length >= 2 && *BytePtr == 254)
                      {
                        if (BytePtr[1] == 255)
                        {
                          v14 = 10;
                        }

                        else
                        {
                          v14 = 4;
                        }
                      }

                      else
                      {
                        v14 = 4;
                      }

                      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:BytePtr length:Length encoding:v14];
                      if (v15)
                      {
                        [v2 addObject:v15];
                      }
                    }
                  }

LABEL_31:
                  if (v11)
                  {
                    CFRelease(v11);
                  }
                }
              }

              else if (CGPDFDictionaryGetString(dict, "JS", &string))
              {
                BytePtr = CGPDFStringGetBytePtr(string);
                Length = CGPDFStringGetLength(string);
                v11 = 0;
                if (BytePtr)
                {
                  goto LABEL_22;
                }

                goto LABEL_31;
              }

LABEL_7:
              ++v6;
              if (!--v5)
              {
                goto LABEL_34;
              }
            }
          }

          if (v21)
          {
LABEL_34:
            WTF::fastFree(v17, v4);
          }
        }
      }
    }
  }

  return v2;
}

void sub_1C7AEFF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF *a14)
{
  if (v14)
  {
    CFRelease(v14);
  }

  if (a14)
  {
    WTF::fastFree(a14, v17);
  }

  _Unwind_Resume(a1);
}

unint64_t appendValuesInPDFNameSubtreeToVector(CGPDFDictionary *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFDictionaryGetArray(a1, "Names", &value))
  {
    result = CGPDFArrayGetCount(value);
    if (result >= 2)
    {
      v5 = result >> 1;
      v6 = 1;
      do
      {
        while (1)
        {
          array = 0;
          result = CGPDFArrayGetObject(value, v6, &array);
          v8 = *(a2 + 12);
          if (v8 != *(a2 + 8))
          {
            break;
          }

          result = WTF::Vector<WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v8 + 1, &array);
          v7 = *(a2 + 12);
          *(*a2 + 8 * v7) = *result;
          *(a2 + 12) = v7 + 1;
          v6 += 2;
          if (!--v5)
          {
            return result;
          }
        }

        *(*a2 + 8 * v8) = array;
        *(a2 + 12) = v8 + 1;
        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    array = 0;
    result = CGPDFDictionaryGetArray(a1, "Kids", &array);
    if (result)
    {
      result = CGPDFArrayGetCount(array);
      if (result)
      {
        v9 = result;
        for (i = 0; i != v9; ++i)
        {
          v11 = 0;
          result = CGPDFArrayGetDictionary(array, i, &v11);
          if (result)
          {
            result = appendValuesInPDFNameSubtreeToVector(v11, a2);
          }
        }
      }
    }
  }

  return result;
}

CGColorRef createCGColorWithDeviceWhite(CGFloat a1, CGFloat a2, CGColorRef *a3)
{
  components[2] = *MEMORY[0x1E69E9840];
  if (byte_1EC26151A == 1)
  {
    DeviceGray = qword_1EC261530;
  }

  else
  {
    v6 = a1;
    v7 = a2;
    DeviceGray = CGColorSpaceCreateDeviceGray();
    a1 = v6;
    a2 = v7;
    qword_1EC261530 = DeviceGray;
    byte_1EC26151A = 1;
  }

  components[0] = a1;
  components[1] = a2;
  result = CGColorCreate(DeviceGray, components);
  *a3 = result;
  return result;
}

void sub_1C7AF0578(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if ((a16 & 0x8000000000000) != 0)
  {
    v17 = (a16 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t comparePageRects(CGRect *a1, CGRect *a2)
{
  if (CGRectIntersectsRect(*a2, *a1))
  {
    return 0;
  }

  MinY = CGRectGetMinY(*a1);
  if (MinY > CGRectGetMaxY(*a2))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1C7AF0D2C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      CFRelease(v10);
      _Unwind_Resume(a1);
    }
  }

  CFRelease(v10);
  _Unwind_Resume(a1);
}

void sub_1C7AF105C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  CFRelease(v10);
  _Unwind_Resume(a1);
}

atomic_uint *WTF::ThreadSafeRefCounted<OpaqueJSString,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    OpaqueJSString::~OpaqueJSString(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

void sub_1C7AF1A68(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7AF2590(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, WTF::StringImpl *a56, WTF::StringImpl *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a55 == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&a16, a2);
  }

  v64 = a57;
  a57 = 0;
  if (v64)
  {
    if (*(v64 + 6) == 1)
    {
      (*(*v64 + 24))(v64);
    }

    else
    {
      --*(v64 + 6);
    }
  }

  MEMORY[0x1CCA65730](&a62);
  v65 = *(v62 - 56);
  *(v62 - 56) = 0;
  if (v65)
  {
    if (v65[6] != 1)
    {
      --v65[6];
      _Unwind_Resume(a1);
    }

    (*(*v65 + 8))(v65);
  }

  _Unwind_Resume(a1);
}

void sub_1C7AF26F4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, WebCore::WindowProxy *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  WTF::Vector<WTF::Ref<WebCore::MouseEvent,WTF::RawPtrTraits<WebCore::MouseEvent>,WTF::DefaultRefDerefTraits<WebCore::MouseEvent>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, a2);
  WTF::Vector<WTF::Ref<WebCore::MouseEvent,WTF::RawPtrTraits<WebCore::MouseEvent>,WTF::DefaultRefDerefTraits<WebCore::MouseEvent>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a62, v63);
  v64 = a57;
  a57 = 0;
  if (v64)
  {
    WTF::RefCounted<WebCore::WindowProxy>::deref(v64);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C7AF26E0);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::MouseEvent,WTF::RawPtrTraits<WebCore::MouseEvent>,WTF::DefaultRefDerefTraits<WebCore::MouseEvent>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        if (v6[6] == 1)
        {
          (*(*v6 + 8))(v6);
        }

        else
        {
          --v6[6];
        }
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(WebCore::PrivateClickMeasurement *this, WTF::StringImpl *a2)
{
  v3 = *(this + 38);
  *(this + 38) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 296) == 1)
  {
    v4 = *(this + 36);
    *(this + 36) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(this + 35);
    *(this + 35) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 34);
    *(this + 34) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  v7 = *(this + 33);
  *(this + 33) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 32);
  *(this + 32) = 0;
  if (v8)
  {
  }

  v9 = *(this + 31);
  *(this + 31) = 0;
  if (v9)
  {
  }

  v10 = *(this + 30);
  *(this + 30) = 0;
  if (v10)
  {
  }

  if (*(this + 232) == 1)
  {
    v11 = *(this + 28);
    *(this + 28) = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }
    }
  }

  if (*(this + 184) == 1)
  {
    if (*(this + 176) == 1)
    {
      v12 = *(this + 21);
      *(this + 21) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      v13 = *(this + 20);
      *(this + 20) = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }

      v14 = *(this + 19);
      *(this + 19) = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }
    }

    if (*(this + 144) == 1)
    {
      v15 = *(this + 17);
      *(this + 17) = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, a2);
      }

      v16 = *(this + 16);
      *(this + 16) = 0;
      if (v16)
      {
      }

      v17 = *(this + 15);
      *(this + 15) = 0;
      if (v17)
      {
      }

      v18 = *(this + 14);
      *(this + 14) = 0;
      if (v18)
      {
      }
    }

    if (*(this + 104) == 1)
    {
      v19 = *(this + 12);
      *(this + 12) = 0;
      if (v19)
      {
        if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, a2);
        }
      }
    }

    if (*(this + 88) == 1)
    {
      v20 = *(this + 10);
      *(this + 10) = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, a2);
        }
      }
    }

    if (*(this + 72) == 1)
    {
      v21 = *(this + 8);
      *(this + 8) = 0;
      if (v21)
      {
        if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, a2);
        }
      }
    }
  }

  v22 = *(this + 2);
  *(this + 2) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  v23 = *(this + 1);
  *(this + 1) = 0;
  if (v23)
  {
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, a2);
    }
  }
}

unint64_t WTF::Vector<CGRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 32 * v6 <= a3)
  {
    v8 = *(a1 + 8);
    if (v8 + (v8 >> 1) <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 + (v8 >> 1);
    }

    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (!(v9 >> 27))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((32 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = 32 * v6;
        v14 = v5;
        do
        {
          v15 = *v14;
          v16 = *(v14 + 1);
          v14 = (v14 + 32);
          *v11 = v15;
          v11[1] = v16;
          v11 += 2;
          v13 -= 32;
        }

        while (v13);
      }

      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v12);
      }

      return a3;
    }

LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x1C7AF2D5CLL);
  }

  v18 = *(a1 + 8);
  if (v18 + (v18 >> 1) <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18 + (v18 >> 1);
  }

  if (v19 <= a2)
  {
    v19 = a2;
  }

  if (v19 >> 27)
  {
    goto LABEL_38;
  }

  v20 = a3 - v5;
  if (v19 <= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = v19;
  }

  v22 = WTF::fastMalloc((32 * v21));
  v24 = 0;
  *(a1 + 8) = v21;
  *a1 = v22;
  do
  {
    v25 = (v22 + v24);
    v26 = *(v5 + v24 + 16);
    *v25 = *(v5 + v24);
    v25[1] = v26;
    v24 += 32;
  }

  while (32 * v6 != v24);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v23);
  }

  return *a1 + v20;
}

void sub_1C7AF2E04(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::initializeIfNecessary(WebPlatformStrategies *this)
{
  if (!WebPlatformStrategies::initializeIfNecessary(void)::platformStrategies)
  {
    operator new();
  }
}

void WebPlatformStrategies::createLoaderStrategy(WebPlatformStrategies *this, void *a2)
{
  if (WebResourceLoadScheduler::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebResourceLoadScheduler::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebResourceLoadScheduler::operatorNewSlow(0x60);
  }

  WebResourceLoadScheduler::WebResourceLoadScheduler(NonCompact, v3);
}

void WebPlatformStrategies::getTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::getTypes();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF30D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::getTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::getTypes();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF3140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebPlatformStrategies::bufferForType@<X0>(const WTF::String *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  MEMORY[0x1CCA661B0](&v11, a2);
  WebCore::PlatformPasteboard::bufferForType(&v12, &v11, a1);
  v6 = v11;
  v11 = 0;
  if (v6)
  {
  }

  v7 = v14;
  if (v14)
  {
    atomic_fetch_add((v14 + 8), 1u);
    v8 = v14;
    *a3 = v7;
    v14 = 0;
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8 + 2);
      (*(*v8 + 8))(v8);
    }
  }

  else
  {
    *a3 = 0;
  }

  v9 = v13;
  v13 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

void sub_1C7AF3260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::getPathnamesForType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v5, a4);
  WebCore::PlatformPasteboard::getPathnamesForType();
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF32D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::getPathnamesForType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v5, a4);
  WebCore::PlatformPasteboard::getPathnamesForType();
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF334C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::allStringsForType(uint64_t a1, const WTF::String *a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v5, a3);
  WebCore::PlatformPasteboard::allStringsForType(&v5, a2);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF33C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::allStringsForType(uint64_t a1, const WTF::String *a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v5, a3);
  WebCore::PlatformPasteboard::allStringsForType(&v5, a2);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF3434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::stringForType(uint64_t a1, const WTF::String *a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v5, a3);
  WebCore::PlatformPasteboard::stringForType(&v5, a2);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF34A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::stringForType(uint64_t a1, const WTF::String *a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v5, a3);
  WebCore::PlatformPasteboard::stringForType(&v5, a2);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::changeCount()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::changeCount(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF3584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::changeCount()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::changeCount(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF35EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::color()
{
  MEMORY[0x1CCA661B0](&v1);
  WebCore::PlatformPasteboard::color(&v1);
  v0 = v1;
  v1 = 0;
  if (v0)
  {
  }
}

void sub_1C7AF3654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::color()
{
  MEMORY[0x1CCA661B0](&v1);
  WebCore::PlatformPasteboard::color(&v1);
  v0 = v1;
  v1 = 0;
  if (v0)
  {
  }
}

void sub_1C7AF36BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::url()
{
  MEMORY[0x1CCA661B0](&v1);
  WebCore::PlatformPasteboard::url(&v1);
  v0 = v1;
  v1 = 0;
  if (v0)
  {
  }
}

void sub_1C7AF3724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::url()
{
  MEMORY[0x1CCA661B0](&v1);
  WebCore::PlatformPasteboard::url(&v1);
  v0 = v1;
  v1 = 0;
  if (v0)
  {
  }
}

void sub_1C7AF378C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::addTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::addTypes();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::addTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::addTypes();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::setTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::setTypes();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF38EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::setTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::setTypes();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::setBufferForType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v7, a4);
  result = WebCore::PlatformPasteboard::setBufferForType();
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    v6 = result;

    return v6;
  }

  return result;
}

void sub_1C7AF39E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::setBufferForType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v7, a4);
  result = WebCore::PlatformPasteboard::setBufferForType();
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    v6 = result;

    return v6;
  }

  return result;
}

void sub_1C7AF3A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::setURL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::setURL();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::setURL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::setURL();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::setColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::setColor();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::setColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::setColor();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::setStringForType(uint64_t a1, const WTF::String *a2, const WTF::String *a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v9, a4);
  result = WebCore::PlatformPasteboard::setStringForType(&v9, a2, a3);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    v8 = result;

    return v8;
  }

  return result;
}

void sub_1C7AF3CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::setStringForType(uint64_t a1, const WTF::String *a2, const WTF::String *a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v9, a4);
  result = WebCore::PlatformPasteboard::setStringForType(&v9, a2, a3);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    v8 = result;

    return v8;
  }

  return result;
}

void sub_1C7AF3D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::getNumberOfFiles()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::numberOfFiles(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF3D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::getNumberOfFiles()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::numberOfFiles(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF3DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::typesSafeForDOMToReadAndWrite(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  MEMORY[0x1CCA661B0](&v5);
  WebCore::PlatformPasteboard::typesSafeForDOMToReadAndWrite(&v5, a3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF3E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::typesSafeForDOMToReadAndWrite(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  MEMORY[0x1CCA661B0](&v5);
  WebCore::PlatformPasteboard::typesSafeForDOMToReadAndWrite(&v5, a3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF3ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::writeCustomData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::write();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::writeCustomData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v6, a3);
  result = WebCore::PlatformPasteboard::write();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7AF3FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::containsStringSafeForDOMToReadForType(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  MEMORY[0x1CCA661B0](&v7);
  result = WebCore::PlatformPasteboard::containsStringSafeForDOMToReadForType(&v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    v6 = result;

    return v6;
  }

  return result;
}

void sub_1C7AF4034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::containsStringSafeForDOMToReadForType(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  MEMORY[0x1CCA661B0](&v7);
  result = WebCore::PlatformPasteboard::containsStringSafeForDOMToReadForType(&v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    v6 = result;

    return v6;
  }

  return result;
}

void sub_1C7AF40A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::informationForItemAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::informationForItemAtIndex(&v4);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF4128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::informationForItemAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::informationForItemAtIndex(&v4);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF41AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::allPasteboardItemInfo()
{
  MEMORY[0x1CCA661B0](&v1);
  WebCore::PlatformPasteboard::allPasteboardItemInfo(&v1);
  v0 = v1;
  v1 = 0;
  if (v0)
  {
  }
}

void sub_1C7AF421C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::allPasteboardItemInfo()
{
  MEMORY[0x1CCA661B0](&v1);
  WebCore::PlatformPasteboard::allPasteboardItemInfo(&v1);
  v0 = v1;
  v1 = 0;
  if (v0)
  {
  }
}

void sub_1C7AF428C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::getPasteboardItemsCount()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::count(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF42F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::getPasteboardItemsCount()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::count(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF435C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::readBufferFromPasteboard(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1CCA661B0](&v6, a5);
  WebCore::PlatformPasteboard::readBuffer();
  v5 = v6;
  v6 = 0;
  if (v5)
  {
  }
}

void sub_1C7AF43E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::readBufferFromPasteboard(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1CCA661B0](&v6, a5);
  WebCore::PlatformPasteboard::readBuffer();
  v5 = v6;
  v6 = 0;
  if (v5)
  {
  }
}

void sub_1C7AF4474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::readURLFromPasteboard(uint64_t a1, uint64_t a2, uint64_t a3, WTF::String *a4)
{
  MEMORY[0x1CCA661B0](&v7, a3);
  WebCore::PlatformPasteboard::readURL(&v7, a2, a4);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_1C7AF44F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::readURLFromPasteboard(uint64_t a1, uint64_t a2, uint64_t a3, WTF::String *a4)
{
  MEMORY[0x1CCA661B0](&v7, a3);
  WebCore::PlatformPasteboard::readURL(&v7, a2, a4);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_1C7AF457C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::readStringFromPasteboard(uint64_t a1, uint64_t a2, const WTF::String *a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v7, a4);
  WebCore::PlatformPasteboard::readString(&v7, a2, a3);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_1C7AF4600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::readStringFromPasteboard(uint64_t a1, uint64_t a2, const WTF::String *a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v7, a4);
  WebCore::PlatformPasteboard::readString(&v7, a2, a3);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_1C7AF4684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPlatformStrategies::containsURLStringSuitableForLoading()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::containsURLStringSuitableForLoading(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF46EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toWebPlatformStrategies::containsURLStringSuitableForLoading()
{
  MEMORY[0x1CCA661B0](&v3);
  result = WebCore::PlatformPasteboard::containsURLStringSuitableForLoading(&v3);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_1C7AF4754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::urlStringSuitableForLoading(uint64_t a1, uint64_t a2, WTF::String *a3)
{
  MEMORY[0x1CCA661B0](&v5);
  WebCore::PlatformPasteboard::urlStringSuitableForLoading(&v5, a3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF47C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::urlStringSuitableForLoading(uint64_t a1, uint64_t a2, WTF::String *a3)
{
  MEMORY[0x1CCA661B0](&v5);
  WebCore::PlatformPasteboard::urlStringSuitableForLoading(&v5, a3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7AF4834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::writeToPasteboard(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::write();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::write();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::write();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF48A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::writeToPasteboard(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::write();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::write();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::write();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF490C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AF4978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AF49E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AF4A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AF4ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::writeToPasteboard(uint64_t a1, const WTF::String *a2, const WTF::String *a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v7, a4);
  WebCore::PlatformPasteboard::write(&v7, a2, a3);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_1C7AF4B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::writeToPasteboard(uint64_t a1, const WTF::String *a2, const WTF::String *a3, uint64_t a4)
{
  MEMORY[0x1CCA661B0](&v7, a4);
  WebCore::PlatformPasteboard::write(&v7, a2, a3);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

void sub_1C7AF4BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebPlatformStrategies::updateSupportedTypeIdentifiers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::updateSupportedTypeIdentifiers();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF4C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWebPlatformStrategies::updateSupportedTypeIdentifiers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA661B0](&v4, a3);
  WebCore::PlatformPasteboard::updateSupportedTypeIdentifiers();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_1C7AF4C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebCore::MediaStrategy::nativeImageFromVideoFrame(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  LOBYTE(v8) = 0;
  v9 = 0;
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, &v8);
  result = (*(*v3 + 8))(v3);
  if (v9 == 1)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      do
      {
        v6 = result[1];
        if ((v6 & 1) == 0)
        {
          return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(result[1], v5);
        }

        v7 = result[1];
        atomic_compare_exchange_strong_explicit(result + 1, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v7 != v6);
      if (v6 == 3)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void sub_1C7AF4DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  std::optional<WTF::RefPtr<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>::~optional(&a9, v11);
  _Unwind_Resume(a1);
}

void WebMediaStrategy::~WebMediaStrategy(WebMediaStrategy *this)
{
  WebCore::MediaStrategy::~MediaStrategy(this);

  JUMPOUT(0x1CCA6A890);
}

uint64_t std::optional<WTF::RefPtr<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>::~optional(uint64_t result, void *a2)
{
  if (*(result + 8) == 1)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      do
      {
        v3 = v2[1];
        if ((v3 & 1) == 0)
        {
          v5 = result;
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v2[1], a2);
          return v5;
        }

        v4 = v2[1];
        atomic_compare_exchange_strong_explicit(v2 + 1, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v4 != v3);
      if (v3 != 3)
      {
        return result;
      }

      v5 = result;
      (*(*v2 + 8))(v2);
      return v5;
    }
  }

  return result;
}

void WebBlobRegistry::registerInternalBlobURLOptionallyFileBacked()
{
  memset(v1, 0, sizeof(v1));
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 7;
  WebCore::BlobRegistryImpl::registerInternalBlobURLOptionallyFileBacked();
  WebCore::PolicyContainer::~PolicyContainer(v1, v0);
}

void WebBlobRegistry::~WebBlobRegistry(WebBlobRegistry *this)
{
  MEMORY[0x1CCA65670](this + 8);

  WebCore::BlobRegistry::~BlobRegistry(this);
}

{
  MEMORY[0x1CCA65670](this + 8);
  WebCore::BlobRegistry::~BlobRegistry(this);

  JUMPOUT(0x1CCA6A890);
}

void WebCore::PolicyContainer::~PolicyContainer(WebCore::PolicyContainer *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 3);
  v8 = *this;
  if (v7)
  {
    v9 = 16 * v7;
    do
    {
      v10 = *v8;
      *v8 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v8 = (v8 + 16);
      v9 -= 16;
    }

    while (v9);
    v8 = *this;
  }

  if (v8)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v8, a2);
  }
}

void WebPluginInfoProvider::~WebPluginInfoProvider(WebPluginInfoProvider *this)
{
  WebCore::PluginInfoProvider::~PluginInfoProvider(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebPluginInfoProvider::refreshPlugins(WebPluginInfoProvider *this)
{
  v1 = +[WebPluginDatabase sharedDatabaseIfExists];

  return [v1 refresh];
}

void sub_1C7AF5308(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C7AF5A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  objc_begin_catch(exception_object);

  objc_end_catch();
  return 0;
}

void sub_1C7AF97C0(uint64_t a1, WTF::StringImpl *a2)
{
  *(v7 - 232) = a1;
  v8 = *(v7 - 176);
  *(v7 - 176) = 0;
  if (v8)
  {
  }

  if (*(v7 - 224) && atomic_fetch_add_explicit(*(v7 - 224), 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(*(v7 - 224), a2);
  }

  v9 = *(v7 - 168);
  *(v7 - 168) = 0;
  if (v9)
  {
  }

  if (*(v7 - 216) && atomic_fetch_add_explicit(*(v7 - 216), 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(*(v7 - 216), a2);
  }

  v10 = *(v7 - 160);
  *(v7 - 160) = 0;
  if (v10)
  {
  }

  if (*(v7 - 192) && atomic_fetch_add_explicit(*(v7 - 192), 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(*(v7 - 192), a2);
  }

  v11 = *(v7 - 152);
  *(v7 - 152) = 0;
  if (v11)
  {
  }

  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(MEMORY[0x1E696EB88], a2);
    v12 = *(v7 - 144);
    *(v7 - 144) = 0;
    if (!v12)
    {
LABEL_20:
      if (!*(v7 - 208))
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v12 = *(v7 - 144);
    *(v7 - 144) = 0;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!*(v7 - 208))
  {
    goto LABEL_26;
  }

LABEL_24:
  if (atomic_fetch_add_explicit(*(v7 - 208), 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(*(v7 - 208), a2);
  }

LABEL_26:
  v13 = *(v7 - 136);
  *(v7 - 136) = 0;
  if (v13)
  {
  }

  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v14 = *(v7 - 128);
  *(v7 - 128) = 0;
  if (v14)
  {
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v15 = *(v7 - 120);
  *(v7 - 120) = 0;
  if (v15)
  {
  }

  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(MEMORY[0x1E696EB88], a2);
    v16 = *(v7 - 112);
    *(v7 - 112) = 0;
    if (!v16)
    {
LABEL_40:
      if (!v6)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v16 = *(v7 - 112);
    *(v7 - 112) = 0;
    if (!v16)
    {
      goto LABEL_40;
    }
  }

  if (!v6)
  {
    goto LABEL_46;
  }

LABEL_44:
  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

LABEL_46:
  v17 = *(v7 - 104);
  *(v7 - 104) = 0;
  if (v17)
  {
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }

  _Unwind_Resume(*(v7 - 232));
}

void sub_1C7AF9F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7AFBB90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AFCB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AFCBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

uint64_t WebKit::defaultMutationEventsEnabled(WebKit *this)
{
  if (WTF::CocoaApplication::isAppleApplication(this))
  {
    return 1;
  }

  else
  {
    return WTF::linkedOnOrAfterSDKWithBehavior() ^ 1;
  }
}

void sub_1C7B00D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, void *a51, void *a52, void *a53, void *a54, void *a55, void *a56, void *a57, void *a58, void *a59, void *a60, void *a61, void *a62, void *a63)
{
  if (v79)
  {

    if (!v78)
    {
LABEL_3:
      if (!v77)
      {
        goto LABEL_4;
      }

      goto LABEL_184;
    }
  }

  else if (!v78)
  {
    goto LABEL_3;
  }

  if (!v77)
  {
LABEL_4:
    if (!v76)
    {
      goto LABEL_5;
    }

    goto LABEL_185;
  }

LABEL_184:

  if (!v76)
  {
LABEL_5:
    if (!v75)
    {
      goto LABEL_6;
    }

    goto LABEL_186;
  }

LABEL_185:

  if (!v75)
  {
LABEL_6:
    if (!v74)
    {
      goto LABEL_7;
    }

    goto LABEL_187;
  }

LABEL_186:

  if (!v74)
  {
LABEL_7:
    if (!v73)
    {
      goto LABEL_8;
    }

    goto LABEL_188;
  }

LABEL_187:

  if (!v73)
  {
LABEL_8:
    if (!v72)
    {
      goto LABEL_9;
    }

    goto LABEL_189;
  }

LABEL_188:

  if (!v72)
  {
LABEL_9:
    if (!a12)
    {
      goto LABEL_10;
    }

    goto LABEL_190;
  }

LABEL_189:

  if (!a12)
  {
LABEL_10:
    if (!a13)
    {
      goto LABEL_11;
    }

    goto LABEL_191;
  }

LABEL_190:

  if (!a13)
  {
LABEL_11:
    if (!a14)
    {
      goto LABEL_12;
    }

    goto LABEL_192;
  }

LABEL_191:

  if (!a14)
  {
LABEL_12:
    if (!a15)
    {
      goto LABEL_13;
    }

    goto LABEL_193;
  }

LABEL_192:

  if (!a15)
  {
LABEL_13:
    if (!a16)
    {
      goto LABEL_14;
    }

    goto LABEL_194;
  }

LABEL_193:

  if (!a16)
  {
LABEL_14:
    if (!a17)
    {
      goto LABEL_15;
    }

    goto LABEL_195;
  }

LABEL_194:

  if (!a17)
  {
LABEL_15:
    if (!a18)
    {
      goto LABEL_16;
    }

    goto LABEL_196;
  }

LABEL_195:

  if (!a18)
  {
LABEL_16:
    if (!a19)
    {
      goto LABEL_17;
    }

    goto LABEL_197;
  }

LABEL_196:

  if (!a19)
  {
LABEL_17:
    if (!a20)
    {
      goto LABEL_18;
    }

    goto LABEL_198;
  }

LABEL_197:

  if (!a20)
  {
LABEL_18:
    if (!a21)
    {
      goto LABEL_19;
    }

    goto LABEL_199;
  }

LABEL_198:

  if (!a21)
  {
LABEL_19:
    if (!a22)
    {
      goto LABEL_20;
    }

    goto LABEL_200;
  }

LABEL_199:

  if (!a22)
  {
LABEL_20:
    if (!a23)
    {
      goto LABEL_21;
    }

    goto LABEL_201;
  }

LABEL_200:

  if (!a23)
  {
LABEL_21:
    if (!a24)
    {
      goto LABEL_22;
    }

    goto LABEL_202;
  }

LABEL_201:

  if (!a24)
  {
LABEL_22:
    if (!a25)
    {
      goto LABEL_23;
    }

    goto LABEL_203;
  }

LABEL_202:

  if (!a25)
  {
LABEL_23:
    if (!a26)
    {
      goto LABEL_24;
    }

    goto LABEL_204;
  }

LABEL_203:

  if (!a26)
  {
LABEL_24:
    if (!a27)
    {
      goto LABEL_25;
    }

    goto LABEL_205;
  }

LABEL_204:

  if (!a27)
  {
LABEL_25:
    if (!a28)
    {
      goto LABEL_26;
    }

    goto LABEL_206;
  }

LABEL_205:

  if (!a28)
  {
LABEL_26:
    if (!a29)
    {
      goto LABEL_27;
    }

    goto LABEL_207;
  }

LABEL_206:

  if (!a29)
  {
LABEL_27:
    if (!a30)
    {
      goto LABEL_28;
    }

    goto LABEL_208;
  }

LABEL_207:

  if (!a30)
  {
LABEL_28:
    if (!a31)
    {
      goto LABEL_29;
    }

    goto LABEL_209;
  }

LABEL_208:

  if (!a31)
  {
LABEL_29:
    if (!a32)
    {
      goto LABEL_30;
    }

    goto LABEL_210;
  }

LABEL_209:

  if (!a32)
  {
LABEL_30:
    if (!a33)
    {
      goto LABEL_31;
    }

    goto LABEL_211;
  }

LABEL_210:

  if (!a33)
  {
LABEL_31:
    if (!a34)
    {
      goto LABEL_32;
    }

    goto LABEL_212;
  }

LABEL_211:

  if (!a34)
  {
LABEL_32:
    if (!a35)
    {
      goto LABEL_33;
    }

    goto LABEL_213;
  }

LABEL_212:

  if (!a35)
  {
LABEL_33:
    if (!a36)
    {
      goto LABEL_34;
    }

    goto LABEL_214;
  }

LABEL_213:

  if (!a36)
  {
LABEL_34:
    if (!a37)
    {
      goto LABEL_35;
    }

    goto LABEL_215;
  }

LABEL_214:

  if (!a37)
  {
LABEL_35:
    if (!a38)
    {
      goto LABEL_36;
    }

    goto LABEL_216;
  }

LABEL_215:

  if (!a38)
  {
LABEL_36:
    if (!a39)
    {
      goto LABEL_37;
    }

    goto LABEL_217;
  }

LABEL_216:

  if (!a39)
  {
LABEL_37:
    if (!a40)
    {
      goto LABEL_38;
    }

    goto LABEL_218;
  }

LABEL_217:

  if (!a40)
  {
LABEL_38:
    if (!a41)
    {
      goto LABEL_39;
    }

    goto LABEL_219;
  }

LABEL_218:

  if (!a41)
  {
LABEL_39:
    if (!a42)
    {
      goto LABEL_40;
    }

    goto LABEL_220;
  }

LABEL_219:

  if (!a42)
  {
LABEL_40:
    if (!a43)
    {
      goto LABEL_41;
    }

    goto LABEL_221;
  }

LABEL_220:

  if (!a43)
  {
LABEL_41:
    if (!a44)
    {
      goto LABEL_42;
    }

    goto LABEL_222;
  }

LABEL_221:

  if (!a44)
  {
LABEL_42:
    if (!a45)
    {
      goto LABEL_43;
    }

    goto LABEL_223;
  }

LABEL_222:

  if (!a45)
  {
LABEL_43:
    if (!a46)
    {
      goto LABEL_44;
    }

    goto LABEL_224;
  }

LABEL_223:

  if (!a46)
  {
LABEL_44:
    if (!a47)
    {
      goto LABEL_45;
    }

    goto LABEL_225;
  }

LABEL_224:

  if (!a47)
  {
LABEL_45:
    if (!a48)
    {
      goto LABEL_46;
    }

    goto LABEL_226;
  }

LABEL_225:

  if (!a48)
  {
LABEL_46:
    if (!a49)
    {
      goto LABEL_47;
    }

    goto LABEL_227;
  }

LABEL_226:

  if (!a49)
  {
LABEL_47:
    if (!a50)
    {
      goto LABEL_48;
    }

    goto LABEL_228;
  }

LABEL_227:

  if (!a50)
  {
LABEL_48:
    if (!a51)
    {
      goto LABEL_49;
    }

    goto LABEL_229;
  }

LABEL_228:

  if (!a51)
  {
LABEL_49:
    if (!a52)
    {
      goto LABEL_50;
    }

    goto LABEL_230;
  }

LABEL_229:

  if (!a52)
  {
LABEL_50:
    if (!a53)
    {
      goto LABEL_51;
    }

    goto LABEL_231;
  }

LABEL_230:

  if (!a53)
  {
LABEL_51:
    if (!a54)
    {
      goto LABEL_52;
    }

    goto LABEL_232;
  }

LABEL_231:

  if (!a54)
  {
LABEL_52:
    if (!a55)
    {
      goto LABEL_53;
    }

    goto LABEL_233;
  }

LABEL_232:

  if (!a55)
  {
LABEL_53:
    if (!a56)
    {
      goto LABEL_54;
    }

    goto LABEL_234;
  }

LABEL_233:

  if (!a56)
  {
LABEL_54:
    if (!a57)
    {
      goto LABEL_55;
    }

    goto LABEL_235;
  }

LABEL_234:

  if (!a57)
  {
LABEL_55:
    if (!a58)
    {
      goto LABEL_56;
    }

    goto LABEL_236;
  }

LABEL_235:

  if (!a58)
  {
LABEL_56:
    if (!a59)
    {
      goto LABEL_57;
    }

    goto LABEL_237;
  }

LABEL_236:

  if (!a59)
  {
LABEL_57:
    if (!a60)
    {
      goto LABEL_58;
    }

    goto LABEL_238;
  }

LABEL_237:

  if (!a60)
  {
LABEL_58:
    if (!a61)
    {
      goto LABEL_59;
    }

    goto LABEL_239;
  }

LABEL_238:

  if (!a61)
  {
LABEL_59:
    if (!a62)
    {
      goto LABEL_60;
    }

    goto LABEL_240;
  }

LABEL_239:

  if (!a62)
  {
LABEL_60:
    if (!a63)
    {
      goto LABEL_61;
    }

    goto LABEL_241;
  }

LABEL_240:

  if (!a63)
  {
LABEL_61:
    if (!a64)
    {
      goto LABEL_62;
    }

    goto LABEL_242;
  }

LABEL_241:

  if (!a64)
  {
LABEL_62:
    if (!a65)
    {
      goto LABEL_63;
    }

    goto LABEL_243;
  }

LABEL_242:

  if (!a65)
  {
LABEL_63:
    if (!a66)
    {
      goto LABEL_64;
    }

    goto LABEL_244;
  }

LABEL_243:

  if (!a66)
  {
LABEL_64:
    if (!a67)
    {
      goto LABEL_65;
    }

    goto LABEL_245;
  }

LABEL_244:

  if (!a67)
  {
LABEL_65:
    if (!a68)
    {
      goto LABEL_66;
    }

    goto LABEL_246;
  }

LABEL_245:

  if (!a68)
  {
LABEL_66:
    if (!a69)
    {
      goto LABEL_67;
    }

    goto LABEL_247;
  }

LABEL_246:

  if (!a69)
  {
LABEL_67:
    if (!a70)
    {
      goto LABEL_68;
    }

    goto LABEL_248;
  }

LABEL_247:

  if (!a70)
  {
LABEL_68:
    if (!a71)
    {
      goto LABEL_69;
    }

    goto LABEL_249;
  }

LABEL_248:

  if (!a71)
  {
LABEL_69:
    if (!a72)
    {
      goto LABEL_70;
    }

    goto LABEL_250;
  }

LABEL_249:

  if (!a72)
  {
LABEL_70:
    if (!STACK[0x200])
    {
      goto LABEL_71;
    }

    goto LABEL_251;
  }

LABEL_250:

  if (!STACK[0x200])
  {
LABEL_71:
    if (!STACK[0x208])
    {
      goto LABEL_72;
    }

    goto LABEL_252;
  }

LABEL_251:

  if (!STACK[0x208])
  {
LABEL_72:
    if (!STACK[0x210])
    {
      goto LABEL_73;
    }

    goto LABEL_253;
  }

LABEL_252:

  if (!STACK[0x210])
  {
LABEL_73:
    if (!STACK[0x218])
    {
      goto LABEL_74;
    }

    goto LABEL_254;
  }

LABEL_253:

  if (!STACK[0x218])
  {
LABEL_74:
    if (!STACK[0x220])
    {
      goto LABEL_75;
    }

    goto LABEL_255;
  }

LABEL_254:

  if (!STACK[0x220])
  {
LABEL_75:
    if (!STACK[0x228])
    {
      goto LABEL_76;
    }

    goto LABEL_256;
  }

LABEL_255:

  if (!STACK[0x228])
  {
LABEL_76:
    if (!STACK[0x230])
    {
      goto LABEL_77;
    }

    goto LABEL_257;
  }

LABEL_256:

  if (!STACK[0x230])
  {
LABEL_77:
    if (!STACK[0x238])
    {
      goto LABEL_78;
    }

    goto LABEL_258;
  }

LABEL_257:

  if (!STACK[0x238])
  {
LABEL_78:
    if (!STACK[0x240])
    {
      goto LABEL_79;
    }

    goto LABEL_259;
  }

LABEL_258:

  if (!STACK[0x240])
  {
LABEL_79:
    if (!STACK[0x248])
    {
      goto LABEL_80;
    }

    goto LABEL_260;
  }

LABEL_259:

  if (!STACK[0x248])
  {
LABEL_80:
    if (!STACK[0x250])
    {
      goto LABEL_81;
    }

    goto LABEL_261;
  }

LABEL_260:

  if (!STACK[0x250])
  {
LABEL_81:
    if (!STACK[0x258])
    {
      goto LABEL_82;
    }

    goto LABEL_262;
  }

LABEL_261:

  if (!STACK[0x258])
  {
LABEL_82:
    if (!STACK[0x260])
    {
      goto LABEL_83;
    }

    goto LABEL_263;
  }

LABEL_262:

  if (!STACK[0x260])
  {
LABEL_83:
    if (!STACK[0x268])
    {
      goto LABEL_84;
    }

    goto LABEL_264;
  }

LABEL_263:

  if (!STACK[0x268])
  {
LABEL_84:
    if (!STACK[0x270])
    {
      goto LABEL_85;
    }

    goto LABEL_265;
  }

LABEL_264:

  if (!STACK[0x270])
  {
LABEL_85:
    if (!STACK[0x278])
    {
      goto LABEL_86;
    }

    goto LABEL_266;
  }

LABEL_265:

  if (!STACK[0x278])
  {
LABEL_86:
    if (!STACK[0x280])
    {
      goto LABEL_87;
    }

    goto LABEL_267;
  }

LABEL_266:

  if (!STACK[0x280])
  {
LABEL_87:
    if (!STACK[0x288])
    {
      goto LABEL_88;
    }

    goto LABEL_268;
  }

LABEL_267:

  if (!STACK[0x288])
  {
LABEL_88:
    if (!STACK[0x290])
    {
      goto LABEL_89;
    }

    goto LABEL_269;
  }

LABEL_268:

  if (!STACK[0x290])
  {
LABEL_89:
    if (!STACK[0x298])
    {
      goto LABEL_90;
    }

    goto LABEL_270;
  }

LABEL_269:

  if (!STACK[0x298])
  {
LABEL_90:
    if (!STACK[0x2A0])
    {
      goto LABEL_91;
    }

    goto LABEL_271;
  }

LABEL_270:

  if (!STACK[0x2A0])
  {
LABEL_91:
    if (!STACK[0x2A8])
    {
      goto LABEL_92;
    }

    goto LABEL_272;
  }

LABEL_271:

  if (!STACK[0x2A8])
  {
LABEL_92:
    if (!STACK[0x2B0])
    {
      goto LABEL_93;
    }

    goto LABEL_273;
  }

LABEL_272:

  if (!STACK[0x2B0])
  {
LABEL_93:
    if (!STACK[0x2B8])
    {
      goto LABEL_94;
    }

    goto LABEL_274;
  }

LABEL_273:

  if (!STACK[0x2B8])
  {
LABEL_94:
    if (!STACK[0x2C0])
    {
      goto LABEL_95;
    }

    goto LABEL_275;
  }

LABEL_274:

  if (!STACK[0x2C0])
  {
LABEL_95:
    if (!STACK[0x2C8])
    {
      goto LABEL_96;
    }

    goto LABEL_276;
  }

LABEL_275:

  if (!STACK[0x2C8])
  {
LABEL_96:
    if (!STACK[0x2D0])
    {
      goto LABEL_97;
    }

    goto LABEL_277;
  }

LABEL_276:

  if (!STACK[0x2D0])
  {
LABEL_97:
    if (!STACK[0x2D8])
    {
      goto LABEL_98;
    }

    goto LABEL_278;
  }

LABEL_277:

  if (!STACK[0x2D8])
  {
LABEL_98:
    if (!STACK[0x2E0])
    {
      goto LABEL_99;
    }

    goto LABEL_279;
  }

LABEL_278:

  if (!STACK[0x2E0])
  {
LABEL_99:
    if (!STACK[0x2E8])
    {
      goto LABEL_100;
    }

    goto LABEL_280;
  }

LABEL_279:

  if (!STACK[0x2E8])
  {
LABEL_100:
    if (!STACK[0x2F0])
    {
      goto LABEL_101;
    }

    goto LABEL_281;
  }

LABEL_280:

  if (!STACK[0x2F0])
  {
LABEL_101:
    if (!STACK[0x2F8])
    {
      goto LABEL_102;
    }

    goto LABEL_282;
  }

LABEL_281:

  if (!STACK[0x2F8])
  {
LABEL_102:
    if (!STACK[0x300])
    {
      goto LABEL_103;
    }

    goto LABEL_283;
  }

LABEL_282:

  if (!STACK[0x300])
  {
LABEL_103:
    if (!STACK[0x308])
    {
      goto LABEL_104;
    }

    goto LABEL_284;
  }

LABEL_283:

  if (!STACK[0x308])
  {
LABEL_104:
    if (!STACK[0x310])
    {
      goto LABEL_105;
    }

    goto LABEL_285;
  }

LABEL_284:

  if (!STACK[0x310])
  {
LABEL_105:
    if (!STACK[0x318])
    {
      goto LABEL_106;
    }

    goto LABEL_286;
  }

LABEL_285:

  if (!STACK[0x318])
  {
LABEL_106:
    if (!STACK[0x320])
    {
      goto LABEL_107;
    }

    goto LABEL_287;
  }

LABEL_286:

  if (!STACK[0x320])
  {
LABEL_107:
    if (!STACK[0x328])
    {
      goto LABEL_108;
    }

    goto LABEL_288;
  }

LABEL_287:

  if (!STACK[0x328])
  {
LABEL_108:
    if (!STACK[0x330])
    {
      goto LABEL_109;
    }

    goto LABEL_289;
  }

LABEL_288:

  if (!STACK[0x330])
  {
LABEL_109:
    if (!STACK[0x338])
    {
      goto LABEL_110;
    }

    goto LABEL_290;
  }

LABEL_289:

  if (!STACK[0x338])
  {
LABEL_110:
    if (!STACK[0x340])
    {
      goto LABEL_111;
    }

    goto LABEL_291;
  }

LABEL_290:

  if (!STACK[0x340])
  {
LABEL_111:
    if (!STACK[0x348])
    {
      goto LABEL_112;
    }

    goto LABEL_292;
  }

LABEL_291:

  if (!STACK[0x348])
  {
LABEL_112:
    if (!STACK[0x350])
    {
      goto LABEL_113;
    }

    goto LABEL_293;
  }

LABEL_292:

  if (!STACK[0x350])
  {
LABEL_113:
    if (!STACK[0x358])
    {
      goto LABEL_114;
    }

    goto LABEL_294;
  }

LABEL_293:

  if (!STACK[0x358])
  {
LABEL_114:
    if (!STACK[0x360])
    {
      goto LABEL_115;
    }

    goto LABEL_295;
  }

LABEL_294:

  if (!STACK[0x360])
  {
LABEL_115:
    if (!STACK[0x368])
    {
      goto LABEL_116;
    }

    goto LABEL_296;
  }

LABEL_295:

  if (!STACK[0x368])
  {
LABEL_116:
    if (!STACK[0x370])
    {
      goto LABEL_117;
    }

    goto LABEL_297;
  }

LABEL_296:

  if (!STACK[0x370])
  {
LABEL_117:
    if (!STACK[0x378])
    {
      goto LABEL_118;
    }

    goto LABEL_298;
  }

LABEL_297:

  if (!STACK[0x378])
  {
LABEL_118:
    if (!STACK[0x380])
    {
      goto LABEL_119;
    }

    goto LABEL_299;
  }

LABEL_298:

  if (!STACK[0x380])
  {
LABEL_119:
    if (!STACK[0x388])
    {
      goto LABEL_120;
    }

    goto LABEL_300;
  }

LABEL_299:

  if (!STACK[0x388])
  {
LABEL_120:
    if (!STACK[0x390])
    {
      goto LABEL_121;
    }

    goto LABEL_301;
  }

LABEL_300:

  if (!STACK[0x390])
  {
LABEL_121:
    if (!STACK[0x398])
    {
      goto LABEL_122;
    }

    goto LABEL_302;
  }

LABEL_301:

  if (!STACK[0x398])
  {
LABEL_122:
    if (!STACK[0x3A0])
    {
      goto LABEL_123;
    }

    goto LABEL_303;
  }

LABEL_302:

  if (!STACK[0x3A0])
  {
LABEL_123:
    if (!STACK[0x3A8])
    {
      goto LABEL_124;
    }

    goto LABEL_304;
  }

LABEL_303:

  if (!STACK[0x3A8])
  {
LABEL_124:
    if (!STACK[0x3B0])
    {
      goto LABEL_125;
    }

    goto LABEL_305;
  }

LABEL_304:

  if (!STACK[0x3B0])
  {
LABEL_125:
    if (!STACK[0x3B8])
    {
      goto LABEL_126;
    }

    goto LABEL_306;
  }

LABEL_305:

  if (!STACK[0x3B8])
  {
LABEL_126:
    if (!STACK[0x3C0])
    {
      goto LABEL_127;
    }

    goto LABEL_307;
  }

LABEL_306:

  if (!STACK[0x3C0])
  {
LABEL_127:
    if (!STACK[0x3C8])
    {
      goto LABEL_128;
    }

    goto LABEL_308;
  }

LABEL_307:

  if (!STACK[0x3C8])
  {
LABEL_128:
    if (!STACK[0x3D0])
    {
      goto LABEL_129;
    }

    goto LABEL_309;
  }

LABEL_308:

  if (!STACK[0x3D0])
  {
LABEL_129:
    if (!STACK[0x3D8])
    {
      goto LABEL_130;
    }

    goto LABEL_310;
  }

LABEL_309:

  if (!STACK[0x3D8])
  {
LABEL_130:
    if (!STACK[0x3E0])
    {
      goto LABEL_131;
    }

    goto LABEL_311;
  }

LABEL_310:

  if (!STACK[0x3E0])
  {
LABEL_131:
    if (!STACK[0x3E8])
    {
      goto LABEL_132;
    }

    goto LABEL_312;
  }

LABEL_311:

  if (!STACK[0x3E8])
  {
LABEL_132:
    if (!STACK[0x3F0])
    {
      goto LABEL_133;
    }

    goto LABEL_313;
  }

LABEL_312:

  if (!STACK[0x3F0])
  {
LABEL_133:
    if (!STACK[0x3F8])
    {
      goto LABEL_134;
    }

    goto LABEL_314;
  }

LABEL_313:

  if (!STACK[0x3F8])
  {
LABEL_134:
    if (!STACK[0x400])
    {
      goto LABEL_135;
    }

    goto LABEL_315;
  }

LABEL_314:

  if (!STACK[0x400])
  {
LABEL_135:
    if (!STACK[0x408])
    {
      goto LABEL_136;
    }

    goto LABEL_316;
  }

LABEL_315:

  if (!STACK[0x408])
  {
LABEL_136:
    if (!STACK[0x410])
    {
      goto LABEL_137;
    }

    goto LABEL_317;
  }

LABEL_316:

  if (!STACK[0x410])
  {
LABEL_137:
    if (!STACK[0x418])
    {
      goto LABEL_138;
    }

    goto LABEL_318;
  }

LABEL_317:

  if (!STACK[0x418])
  {
LABEL_138:
    if (!STACK[0x420])
    {
      goto LABEL_139;
    }

    goto LABEL_319;
  }

LABEL_318:

  if (!STACK[0x420])
  {
LABEL_139:
    if (!STACK[0x428])
    {
      goto LABEL_140;
    }

    goto LABEL_320;
  }

LABEL_319:

  if (!STACK[0x428])
  {
LABEL_140:
    if (!STACK[0x430])
    {
      goto LABEL_141;
    }

    goto LABEL_321;
  }

LABEL_320:

  if (!STACK[0x430])
  {
LABEL_141:
    if (!STACK[0x438])
    {
      goto LABEL_142;
    }

    goto LABEL_322;
  }

LABEL_321:

  if (!STACK[0x438])
  {
LABEL_142:
    if (!STACK[0x440])
    {
      goto LABEL_143;
    }

    goto LABEL_323;
  }

LABEL_322:

  if (!STACK[0x440])
  {
LABEL_143:
    if (!STACK[0x448])
    {
      goto LABEL_144;
    }

    goto LABEL_324;
  }

LABEL_323:

  if (!STACK[0x448])
  {
LABEL_144:
    if (!STACK[0x450])
    {
      goto LABEL_145;
    }

    goto LABEL_325;
  }

LABEL_324:

  if (!STACK[0x450])
  {
LABEL_145:
    if (!STACK[0x458])
    {
      goto LABEL_146;
    }

    goto LABEL_326;
  }

LABEL_325:

  if (!STACK[0x458])
  {
LABEL_146:
    if (!STACK[0x460])
    {
      goto LABEL_147;
    }

    goto LABEL_327;
  }

LABEL_326:

  if (!STACK[0x460])
  {
LABEL_147:
    if (!STACK[0x468])
    {
      goto LABEL_148;
    }

    goto LABEL_328;
  }

LABEL_327:

  if (!STACK[0x468])
  {
LABEL_148:
    if (!STACK[0x470])
    {
      goto LABEL_149;
    }

    goto LABEL_329;
  }

LABEL_328:

  if (!STACK[0x470])
  {
LABEL_149:
    if (!STACK[0x478])
    {
      goto LABEL_150;
    }

    goto LABEL_330;
  }

LABEL_329:

  if (!STACK[0x478])
  {
LABEL_150:
    if (!STACK[0x480])
    {
      goto LABEL_151;
    }

    goto LABEL_331;
  }

LABEL_330:

  if (!STACK[0x480])
  {
LABEL_151:
    if (!STACK[0x488])
    {
      goto LABEL_152;
    }

    goto LABEL_332;
  }

LABEL_331:

  if (!STACK[0x488])
  {
LABEL_152:
    if (!STACK[0x490])
    {
      goto LABEL_153;
    }

    goto LABEL_333;
  }

LABEL_332:

  if (!STACK[0x490])
  {
LABEL_153:
    if (!STACK[0x498])
    {
      goto LABEL_154;
    }

    goto LABEL_334;
  }

LABEL_333:

  if (!STACK[0x498])
  {
LABEL_154:
    if (!STACK[0x4A0])
    {
      goto LABEL_155;
    }

    goto LABEL_335;
  }

LABEL_334:

  if (!STACK[0x4A0])
  {
LABEL_155:
    if (!STACK[0x4A8])
    {
      goto LABEL_156;
    }

    goto LABEL_336;
  }

LABEL_335:

  if (!STACK[0x4A8])
  {
LABEL_156:
    if (!STACK[0x4B0])
    {
      goto LABEL_157;
    }

    goto LABEL_337;
  }

LABEL_336:

  if (!STACK[0x4B0])
  {
LABEL_157:
    if (!STACK[0x4B8])
    {
      goto LABEL_158;
    }

    goto LABEL_338;
  }

LABEL_337:

  if (!STACK[0x4B8])
  {
LABEL_158:
    if (!STACK[0x4C0])
    {
      goto LABEL_159;
    }

    goto LABEL_339;
  }

LABEL_338:

  if (!STACK[0x4C0])
  {
LABEL_159:
    if (!STACK[0x4C8])
    {
      goto LABEL_160;
    }

    goto LABEL_340;
  }

LABEL_339:

  if (!STACK[0x4C8])
  {
LABEL_160:
    if (!STACK[0x4D0])
    {
      goto LABEL_161;
    }

    goto LABEL_341;
  }

LABEL_340:

  if (!STACK[0x4D0])
  {
LABEL_161:
    if (!STACK[0x4D8])
    {
      goto LABEL_162;
    }

    goto LABEL_342;
  }

LABEL_341:

  if (!STACK[0x4D8])
  {
LABEL_162:
    if (!STACK[0x4E0])
    {
      goto LABEL_163;
    }

    goto LABEL_343;
  }

LABEL_342:

  if (!STACK[0x4E0])
  {
LABEL_163:
    if (!STACK[0x4E8])
    {
      goto LABEL_164;
    }

    goto LABEL_344;
  }

LABEL_343:

  if (!STACK[0x4E8])
  {
LABEL_164:
    if (!STACK[0x4F0])
    {
      goto LABEL_165;
    }

    goto LABEL_345;
  }

LABEL_344:

  if (!STACK[0x4F0])
  {
LABEL_165:
    if (!STACK[0x4F8])
    {
      goto LABEL_166;
    }

    goto LABEL_346;
  }

LABEL_345:

  if (!STACK[0x4F8])
  {
LABEL_166:
    if (!STACK[0x500])
    {
      goto LABEL_167;
    }

    goto LABEL_347;
  }

LABEL_346:

  if (!STACK[0x500])
  {
LABEL_167:
    if (!STACK[0x508])
    {
      goto LABEL_168;
    }

    goto LABEL_348;
  }

LABEL_347:

  if (!STACK[0x508])
  {
LABEL_168:
    if (!STACK[0x510])
    {
      goto LABEL_169;
    }

    goto LABEL_349;
  }

LABEL_348:

  if (!STACK[0x510])
  {
LABEL_169:
    if (!STACK[0x518])
    {
      goto LABEL_170;
    }

    goto LABEL_350;
  }

LABEL_349:

  if (!STACK[0x518])
  {
LABEL_170:
    if (!STACK[0x520])
    {
      goto LABEL_171;
    }

    goto LABEL_351;
  }

LABEL_350:

  if (!STACK[0x520])
  {
LABEL_171:
    if (!STACK[0x528])
    {
      goto LABEL_172;
    }

    goto LABEL_352;
  }

LABEL_351:

  if (!STACK[0x528])
  {
LABEL_172:
    if (!STACK[0x530])
    {
      goto LABEL_173;
    }

    goto LABEL_353;
  }

LABEL_352:

  if (!STACK[0x530])
  {
LABEL_173:
    if (!STACK[0x538])
    {
      goto LABEL_174;
    }

    goto LABEL_354;
  }

LABEL_353:

  if (!STACK[0x538])
  {
LABEL_174:
    if (!STACK[0x540])
    {
      goto LABEL_175;
    }

    goto LABEL_355;
  }

LABEL_354:

  if (!STACK[0x540])
  {
LABEL_175:
    if (!STACK[0x548])
    {
      goto LABEL_176;
    }

    goto LABEL_356;
  }

LABEL_355:

  if (!STACK[0x548])
  {
LABEL_176:
    if (!STACK[0x550])
    {
      goto LABEL_177;
    }

    goto LABEL_357;
  }

LABEL_356:

  if (!STACK[0x550])
  {
LABEL_177:
    if (!STACK[0x558])
    {
      goto LABEL_178;
    }

    goto LABEL_358;
  }

LABEL_357:

  if (!STACK[0x558])
  {
LABEL_178:
    if (!STACK[0x560])
    {
      goto LABEL_179;
    }

    goto LABEL_359;
  }

LABEL_358:

  if (!STACK[0x560])
  {
LABEL_179:
    if (!STACK[0x568])
    {
      goto LABEL_180;
    }

    goto LABEL_360;
  }

LABEL_359:

  if (!STACK[0x568])
  {
LABEL_180:
    if (!a11)
    {
      goto LABEL_181;
    }

    goto LABEL_361;
  }

LABEL_360:

  if (!a11)
  {
LABEL_181:
    _Unwind_Resume(a1);
  }

LABEL_361:

  _Unwind_Resume(a1);
}