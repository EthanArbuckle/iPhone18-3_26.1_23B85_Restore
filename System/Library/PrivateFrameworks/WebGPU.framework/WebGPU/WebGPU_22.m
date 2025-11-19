void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, int *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v13 = *a4;
  v14 = *a6;
  v15 = *(a1 + 1);
  if ((v15 || (v15 = *a1) != 0) && (*(v15 + 16) & 4) == 0 || v13 && (*(v13 + 16) & 4) == 0 || v14 && (*(v14 + 16) & 4) == 0)
  {
    v16 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!v16)
    {
      return;
    }

    v18 = v16;
    v19 = *a2;
    v21 = *a3;
    v20 = a3[1];
    v22 = *a4;
    v23 = *a5;
    v24 = a5[1];
    v25 = *a6;
    v26 = *a7;
    v27 = a7[1];
    v28 = (4 * v19);
    if (v28)
    {
      __srca = v22;
      v29 = v17;
      v30 = *a5;
      v31 = v24;
      v32 = *a7;
      memset_pattern16(v16, aIneStateTLTAne, 2 * (4 * v19));
      v17 = v29;
      v26 = v32;
      v24 = v31;
      v23 = v30;
      v22 = __srca;
      if (v29 < v28)
      {
        goto LABEL_55;
      }

      v33 = &v18[2 * v28];
      v34 = &v33[2 * v20];
      if (v20 >= 0x40)
      {
LABEL_12:
        v35 = &v33[2 * (v20 & 0x7FFFFFFFFFFFFFC0)];
        v36 = 0uLL;
        v37 = v33;
        do
        {
          v84.val[0] = *v21;
          v38 = *(v21 + 16);
          v85.val[0] = *(v21 + 32);
          v39 = *(v21 + 48);
          v21 += 64;
          v40 = v39;
          v85.val[1] = 0uLL;
          v86.val[0] = v38;
          v84.val[1] = 0uLL;
          v41 = v37;
          vst2q_s8(v41, v84);
          v41 += 32;
          v86.val[1] = 0uLL;
          vst2q_s8(v41, v86);
          v42 = v37 + 64;
          vst2q_s8(v42, v85);
          v43 = v37 + 96;
          vst2q_s8(v43, *(&v36 - 1));
          v37 += 128;
        }

        while (v37 != v35);
        v44 = v17 - v28;
        if (v35 == v34)
        {
LABEL_34:
          if (v44 >= v20)
          {

            WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v33[2 * v20], v44 - v20, v22, v23, v24, v25, v26, v27);
            return;
          }

LABEL_55:
          __break(1u);
          return;
        }

LABEL_24:
        v63 = &v18[2 * v20 + 2 * v28 - v35 - 2];
        if (v63 < 0xE || (v35 < v21 + (v63 >> 1) + 1 ? (v64 = v21 >= (v63 & 0xFFFFFFFFFFFFFFFELL) + v35 + 2) : (v64 = 1), !v64))
        {
          v67 = v21;
          v68 = v35;
          goto LABEL_33;
        }

        v65 = (v63 >> 1) + 1;
        if (v63 >= 0x3E)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFE0;
          v71 = (v35 + 32);
          v72 = (v21 + 16);
          v73 = v65 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v74 = *v72[-2].i8;
            v75 = vmovl_u8(*v72);
            v76 = vmovl_high_u8(*v72->i8);
            v71[-2] = vmovl_u8(*v74.i8);
            v71[-1] = vmovl_high_u8(v74);
            *v71 = v75;
            v71[1] = v76;
            v71 += 4;
            v72 += 4;
            v73 -= 32;
          }

          while (v73);
          if (v65 == v66)
          {
            goto LABEL_34;
          }

          if ((v65 & 0x18) == 0)
          {
            v68 = (v35 + 2 * v66);
            v67 = (v21 + v66);
            goto LABEL_33;
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = (v21 + (v65 & 0xFFFFFFFFFFFFFFF8));
        v68 = (v35 + 2 * (v65 & 0xFFFFFFFFFFFFFFF8));
        v77 = (v35 + 2 * v66);
        v78 = (v21 + v66);
        v79 = v66 - (v65 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v80 = *v78++;
          *v77++ = vmovl_u8(v80);
          v79 += 8;
        }

        while (v79);
        if (v65 == (v65 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_34;
        }

        do
        {
LABEL_33:
          v69 = *v67++;
          *v68 = v69;
          v68 += 2;
        }

        while (v68 != v34);
        goto LABEL_34;
      }
    }

    else
    {
      v28 = 0;
      v33 = v16;
      v34 = &v16[2 * v20];
      if (v20 >= 0x40)
      {
        goto LABEL_12;
      }
    }

    v35 = v33;
    v44 = v17 - v28;
    if (v33 == v34)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v45 = MEMORY[0x22AA68210]();
  if (!v45)
  {
    return;
  }

  v47 = v45;
  v48 = v46;
  v49 = *a2;
  v50 = a3[1];
  __src = *a3;
  v51 = *a4;
  v52 = *a5;
  v53 = a5[1];
  v54 = *a6;
  v55 = *a7;
  v56 = a7[1];
  v57 = (4 * v49);
  if (!v57)
  {
    if (!v50)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v58 = *a7;
  v59 = v54;
  v60 = v53;
  v61 = v52;
  v62 = v51;
  memset(v45, 32, (4 * v49));
  v51 = v62;
  v52 = v61;
  v53 = v60;
  v54 = v59;
  v55 = v58;
  if (v48 < v57)
  {
    goto LABEL_55;
  }

  v48 -= v57;
  v47 += v57;
  if (v50)
  {
LABEL_39:
    if (v50 == 1)
    {
      *v47 = *__src;
    }

    else
    {
      v70 = v51;
      memcpy(v47, __src, v50);
      v51 = v70;
    }
  }

LABEL_42:
  if (v48 < v50)
  {
    goto LABEL_55;
  }

  WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v47[v50], v48 - v50, v51, v52, v53, v54, v55, v56);
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(WTF::StringBuilder *a1, unint64_t *a2, unsigned __int8 *a3)
{
  v5 = 0;
  v6 = *a3;
  v7 = -1;
  do
  {
    ++v5;
    --v7;
    v8 = v6 > 9;
    v6 /= 0xAu;
  }

  while (v8);
  v9 = *(a1 + 1);
  if (!v9 && (v9 = *a1) == 0 || (*(v9 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v26 = a2[1];
    v27 = *a3;
    if (v26)
    {
      v28 = *a2;
      if (v26 == 1)
      {
        *result = *v28;
      }

      else
      {
        v40 = result;
        v41 = v25;
        memcpy(result, v28, v26);
        v25 = v41;
        result = v40;
      }
    }

    v42 = v25 - v26;
    if (v25 >= v26)
    {
      v57[3] = (v27 % 0xAu) | 0x30;
      if (v27 >= 0xA)
      {
        v57[2] = (v27 / 0xAu - 10 * ((26 * (v27 / 0xAu)) >> 8)) | 0x30;
        if (v27 >= 0x64)
        {
          v43 = 0;
          v57[1] = ((41 * v27) >> 12) | 0x30;
          v44 = 1;
        }

        else
        {
          v43 = 1;
          v44 = 2;
        }
      }

      else
      {
        v43 = 0;
        v44 = 3;
      }

      if (v25 != v26)
      {
        v45 = &result[v26];
        *v45 = v57[v44];
        if (v27 < 0xA)
        {
          return result;
        }

        if (v42 != 1)
        {
          v45[1] = v57[v44 + 1];
          if (v43)
          {
            return result;
          }

          if (v42 != 2)
          {
            v45[2] = v57[v44 + 2];
            return result;
          }
        }
      }
    }

    goto LABEL_63;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v13 = *a2;
  v12 = a2[1];
  v14 = *a3;
  v15 = &result[2 * v12];
  if (v12 < 0x40)
  {
    v16 = result;
    if (result == v15)
    {
      goto LABEL_27;
    }

LABEL_17:
    v29 = &v15[-v16 - 2];
    if (v29 < 0xE || (v16 < v13 + (v29 >> 1) + 1 ? (v30 = v13 >= (v29 & 0xFFFFFFFFFFFFFFFELL) + v16 + 2) : (v30 = 1), !v30))
    {
      v33 = v13;
      v34 = v16;
      goto LABEL_26;
    }

    v31 = (v29 >> 1) + 1;
    if (v29 >= 0x3E)
    {
      v32 = v31 & 0xFFFFFFFFFFFFFFE0;
      v47 = (v16 + 32);
      v48 = (v13 + 16);
      v49 = v31 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v50 = *v48[-2].i8;
        v51 = vmovl_u8(*v48);
        v52 = vmovl_high_u8(*v48->i8);
        v47[-2] = vmovl_u8(*v50.i8);
        v47[-1] = vmovl_high_u8(v50);
        *v47 = v51;
        v47[1] = v52;
        v47 += 4;
        v48 += 4;
        v49 -= 32;
      }

      while (v49);
      if (v31 == v32)
      {
        goto LABEL_27;
      }

      if ((v31 & 0x18) == 0)
      {
        v34 = (v16 + 2 * v32);
        v33 = (v13 + v32);
        goto LABEL_26;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = (v13 + (v31 & 0xFFFFFFFFFFFFFFF8));
    v34 = (v16 + 2 * (v31 & 0xFFFFFFFFFFFFFFF8));
    v53 = (v16 + 2 * v32);
    v54 = (v13 + v32);
    v55 = v32 - (v31 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v56 = *v54++;
      *v53++ = vmovl_u8(v56);
      v55 += 8;
    }

    while (v55);
    if (v31 == (v31 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      v35 = *v33++;
      *v34++ = v35;
    }

    while (v34 != v15);
    goto LABEL_27;
  }

  v16 = &result[2 * (v12 & 0x7FFFFFFFFFFFFFC0)];
  v17 = 0uLL;
  v18 = result;
  do
  {
    v58.val[0] = *v13;
    v19 = *(v13 + 16);
    v59.val[0] = *(v13 + 32);
    v20 = *(v13 + 48);
    v13 += 64;
    v21 = v20;
    v59.val[1] = 0uLL;
    v60.val[0] = v19;
    v58.val[1] = 0uLL;
    v22 = v18;
    vst2q_s8(v22, v58);
    v22 += 32;
    v60.val[1] = 0uLL;
    vst2q_s8(v22, v60);
    v23 = v18 + 64;
    vst2q_s8(v23, v59);
    v24 = v18 + 96;
    vst2q_s8(v24, *(&v17 - 1));
    v18 += 128;
  }

  while (v18 != v16);
  if (v16 != v15)
  {
    goto LABEL_17;
  }

LABEL_27:
  v36 = v12;
  v30 = v11 >= v12;
  v37 = v11 - v12;
  if (!v30)
  {
    goto LABEL_63;
  }

  v57[7] = (v14 % 0xAu) | 0x30;
  if (v14 >= 0xA)
  {
    v57[6] = (v14 / 0xAu - 10 * ((26 * (v14 / 0xAu)) >> 8)) | 0x30;
    if (v14 >= 0x64)
    {
      v38 = 0;
      v57[5] = ((41 * v14) >> 12) | 0x30;
      v39 = 1;
    }

    else
    {
      v38 = 1;
      v39 = 2;
    }
  }

  else
  {
    v38 = 0;
    v39 = 3;
  }

  if (v11 == v36)
  {
    goto LABEL_63;
  }

  v46 = &result[2 * v36];
  *v46 = v57[v39 + 4];
  if (v14 < 0xA)
  {
    return result;
  }

  if (v37 == 1)
  {
LABEL_63:
    __break(1u);
    return result;
  }

  v46[1] = v57[v39 + 5];
  if ((v38 & 1) == 0)
  {
    if (v37 != 2)
    {
      v46[2] = v57[v39 + 6];
      return result;
    }

    goto LABEL_63;
  }

  return result;
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a3;
  v8 = *(a1 + 1);
  if ((!v8 && (v8 = *a1) == 0 || (*(v8 + 16) & 4) != 0) && (!v7 || (*(v7 + 16) & 4) != 0))
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v27 = a2[1];
    v28 = *a3;
    v29 = *a4;
    v30 = a4[1];
    if (v27)
    {
      v31 = *a2;
      if (v27 == 1)
      {
        *result = *v31;
      }

      else
      {
        v55 = result;
        v56 = v26;
        memcpy(result, v31, v27);
        v26 = v56;
        result = v55;
      }
    }

    v57 = v27;
    v33 = v26 >= v27;
    v58 = v26 - v27;
    if (!v33)
    {
LABEL_139:
      __break(1u);
      return result;
    }

    v59 = &result[v57];
    if (!v28)
    {
      v65 = 0;
      goto LABEL_113;
    }

    v60 = *(v28 + 8);
    v61 = *(v28 + 4);
    if ((*(v28 + 16) & 4) != 0)
    {
      if (v61)
      {
        if (v61 == 1)
        {
          *v59 = v60->i8[0];
        }

        else
        {
          result = memcpy(&result[v57], v60, v61);
        }
      }
    }

    else
    {
      v62 = &v59[v61];
      if (v61 < 0x10)
      {
        v63 = &result[v57];
      }

      else
      {
        v63 = &result[v57];
        do
        {
          v64 = vld2q_s8(v60->i8);
          v60 += 2;
          *v63++ = v64;
        }

        while (v63 != &v59[v61 & 0xFFFFFFF0]);
      }

      if (v63 != v62)
      {
        v91 = &result[v61 + v57];
        v92 = v91 - v63;
        if ((v91 - v63) < 4 || (v63 < (v60 + 2 * v92) ? (v93 = v60 >= v91) : (v93 = 1), !v93))
        {
          v95 = v63;
          v96 = v60;
          goto LABEL_93;
        }

        if (v92 >= 0x20)
        {
          v94 = v92 & 0xFFFFFFFFFFFFFFE0;
          v128 = v60 + 2;
          v129 = (v63 + 1);
          v130 = v92 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v132 = v128[-2];
            v131 = v128[-1];
            v134 = *v128;
            v133 = v128[1];
            v128 += 4;
            v129[-1] = vuzp1q_s8(v132, v131);
            *v129 = vuzp1q_s8(v134, v133);
            v129 += 2;
            v130 -= 32;
          }

          while (v130);
          if (v92 == v94)
          {
            goto LABEL_112;
          }

          if ((v92 & 0x1C) == 0)
          {
            v96 = (v60 + 2 * v94);
            v95 = (v63 + v94);
            do
            {
LABEL_93:
              v97 = v96->i8[0];
              v96 = (v96 + 2);
              *v95 = v97;
              v95 = (v95 + 1);
            }

            while (v95 != v62);
            goto LABEL_112;
          }
        }

        else
        {
          v94 = 0;
        }

        v95 = (v63 + (v92 & 0xFFFFFFFFFFFFFFFCLL));
        v96 = (v60 + 2 * (v92 & 0xFFFFFFFFFFFFFFFCLL));
        v135 = (v60 + 2 * v94);
        v136 = (v63 + v94);
        v137 = v94 - (v92 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v138 = *v135++;
          *v136++ = vuzp1_s8(v138, v138).u32[0];
          v137 += 4;
        }

        while (v137);
        if (v92 != (v92 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_93;
        }
      }
    }

LABEL_112:
    v65 = *(v28 + 4);
    if (v58 < v65)
    {
      goto LABEL_139;
    }

LABEL_113:
    if (v30)
    {
      if (v30 == 1)
      {
        v59[v65] = *v29;
      }

      else
      {

        return memcpy(&v59[v65], v29, v30);
      }
    }

    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v12 = *a2;
  v11 = a2[1];
  v13 = *a3;
  v15 = *a4;
  v14 = a4[1];
  v16 = &result[2 * v11];
  if (v11 < 0x40)
  {
    v17 = result;
    if (result == v16)
    {
      goto LABEL_27;
    }

LABEL_17:
    v32 = &v16[-v17 - 2];
    if (v32 < 0xE || (v17 < v12 + (v32 >> 1) + 1 ? (v33 = v12 >= (v32 & 0xFFFFFFFFFFFFFFFELL) + v17 + 2) : (v33 = 1), !v33))
    {
      v36 = v12;
      v37 = v17;
      goto LABEL_26;
    }

    v34 = (v32 >> 1) + 1;
    if (v32 >= 0x3E)
    {
      v35 = v34 & 0xFFFFFFFFFFFFFFE0;
      v98 = (v17 + 32);
      v99 = (v12 + 16);
      v100 = v34 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v101 = *v99[-2].i8;
        v102 = vmovl_u8(*v99);
        v103 = vmovl_high_u8(*v99->i8);
        v98[-2] = vmovl_u8(*v101.i8);
        v98[-1] = vmovl_high_u8(v101);
        *v98 = v102;
        v98[1] = v103;
        v98 += 4;
        v99 += 4;
        v100 -= 32;
      }

      while (v100);
      if (v34 == v35)
      {
        goto LABEL_27;
      }

      if ((v34 & 0x18) == 0)
      {
        v37 = (v17 + 2 * v35);
        v36 = (v12 + v35);
        goto LABEL_26;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = (v12 + (v34 & 0xFFFFFFFFFFFFFFF8));
    v37 = (v17 + 2 * (v34 & 0xFFFFFFFFFFFFFFF8));
    v104 = (v17 + 2 * v35);
    v105 = (v12 + v35);
    v106 = v35 - (v34 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v107 = *v105++;
      *v104++ = vmovl_u8(v107);
      v106 += 8;
    }

    while (v106);
    if (v34 == (v34 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      v38 = *v36++;
      *v37++ = v38;
    }

    while (v37 != v16);
    goto LABEL_27;
  }

  v17 = &result[2 * (v11 & 0x7FFFFFFFFFFFFFC0)];
  v18 = 0uLL;
  v19 = result;
  do
  {
    v140.val[0] = *v12;
    v20 = *(v12 + 16);
    v143.val[0] = *(v12 + 32);
    v21 = *(v12 + 48);
    v12 += 64;
    v22 = v21;
    v143.val[1] = 0uLL;
    v146.val[0] = v20;
    v140.val[1] = 0uLL;
    v23 = v19;
    vst2q_s8(v23, v140);
    v23 += 32;
    v146.val[1] = 0uLL;
    vst2q_s8(v23, v146);
    v24 = v19 + 64;
    vst2q_s8(v24, v143);
    v25 = v19 + 96;
    vst2q_s8(v25, *(&v18 - 1));
    v19 += 128;
  }

  while (v19 != v17);
  if (v17 != v16)
  {
    goto LABEL_17;
  }

LABEL_27:
  v39 = v11;
  v40 = v10 - v11;
  if (v10 < v11)
  {
    goto LABEL_139;
  }

  v41 = &result[2 * v11];
  if (!v13)
  {
    v44 = 0;
    goto LABEL_66;
  }

  v42 = *(v13 + 8);
  v43 = *(v13 + 4);
  if ((*(v13 + 16) & 4) != 0)
  {
    v45 = &v41[v43];
    if (v43 < 0x40)
    {
      v46 = &result[2 * v39];
      if (v41 == v45)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v46 = &v41[v43 & 0xFFFFFFC0];
      v47 = 0uLL;
      v48 = &result[2 * v39];
      do
      {
        v141.val[0] = *v42;
        v49 = v42[1];
        v144.val[0] = v42[2];
        v50 = v42[3];
        v42 += 4;
        v51 = v50;
        v144.val[1] = 0uLL;
        v147.val[0] = v49;
        v141.val[1] = 0uLL;
        v52 = v48;
        vst2q_s8(v52, v141);
        v52 += 32;
        v147.val[1] = 0uLL;
        vst2q_s8(v52, v147);
        v53 = v48 + 64;
        vst2q_s8(v53, v144);
        v54 = v48 + 96;
        vst2q_s8(v54, *(&v47 - 1));
        v48 += 128;
      }

      while (v48 != v46);
      if (v46 == v45)
      {
        goto LABEL_65;
      }
    }

    v66 = &result[2 * v43 + 2 * v39 - v46 - 2];
    if (v66 < 0xE || (v46 < v42->u64 + (v66 >> 1) + 1 ? (v67 = v42 >= (v66 & 0xFFFFFFFFFFFFFFFELL) + v46 + 2) : (v67 = 1), !v67))
    {
      v70 = v42;
      v71 = v46;
      goto LABEL_62;
    }

    v68 = (v66 >> 1) + 1;
    if (v66 >= 0x3E)
    {
      v69 = v68 & 0xFFFFFFFFFFFFFFE0;
      v118 = (v46 + 32);
      v119 = &v42[1];
      v120 = v68 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v121 = *v119[-2].i8;
        v122 = vmovl_u8(*v119);
        v123 = vmovl_high_u8(*v119->i8);
        v118[-2] = vmovl_u8(*v121.i8);
        v118[-1] = vmovl_high_u8(v121);
        *v118 = v122;
        v118[1] = v123;
        v118 += 4;
        v119 += 4;
        v120 -= 32;
      }

      while (v120);
      if (v68 == v69)
      {
        goto LABEL_65;
      }

      if ((v68 & 0x18) == 0)
      {
        v71 = (v46 + 2 * v69);
        v70 = (v42 + v69);
        goto LABEL_62;
      }
    }

    else
    {
      v69 = 0;
    }

    v70 = (v42 + (v68 & 0xFFFFFFFFFFFFFFF8));
    v71 = (v46 + 2 * (v68 & 0xFFFFFFFFFFFFFFF8));
    v124 = (v46 + 2 * v69);
    v125 = &v42->i8[v69];
    v126 = v69 - (v68 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v127 = *v125++;
      *v124++ = vmovl_u8(v127);
      v126 += 8;
    }

    while (v126);
    if (v68 == (v68 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_65;
    }

    do
    {
LABEL_62:
      v72 = v70->u8[0];
      v70 = (v70 + 1);
      *v71++ = v72;
    }

    while (v71 != v45);
    goto LABEL_65;
  }

  if (v43)
  {
    if (v43 == 1)
    {
      *v41 = v42->i16[0];
    }

    else
    {
      v73 = result;
      memcpy(&result[2 * v11], v42, 2 * v43);
      result = v73;
    }
  }

LABEL_65:
  v44 = *(v13 + 4);
  if (v40 < v44)
  {
    goto LABEL_139;
  }

LABEL_66:
  v74 = &v41[v44];
  v75 = (v74 + 2 * v14);
  if (v14 >= 0x40)
  {
    v76 = v74 + 2 * (v14 & 0x7FFFFFFFFFFFFFC0);
    v77 = 0uLL;
    do
    {
      v142.val[0] = *v15;
      v78 = *(v15 + 16);
      v145.val[0] = *(v15 + 32);
      v79 = *(v15 + 48);
      v15 += 64;
      v80 = v79;
      v145.val[1] = 0uLL;
      v148.val[0] = v78;
      v142.val[1] = 0uLL;
      v81 = v74;
      vst2q_s8(v81, v142);
      v81 += 32;
      v148.val[1] = 0uLL;
      vst2q_s8(v81, v148);
      v82 = (v74 + 64);
      vst2q_s8(v82, v145);
      v83 = (v74 + 96);
      vst2q_s8(v83, *(&v77 - 1));
      v74 += 128;
    }

    while (v74 != v76);
    v74 = v76;
  }

  if (v74 != v75)
  {
    v84 = &result[2 * v44 + 2 * v14 + 2 * v39 - v74 - 2];
    if (v84 < 0xE || (v74 < v15 + (v84 >> 1) + 1 ? (v85 = v15 >= (v84 & 0xFFFFFFFFFFFFFFFELL) + v74 + 2) : (v85 = 1), !v85))
    {
      v88 = v15;
      v89 = v74;
      goto LABEL_80;
    }

    v86 = (v84 >> 1) + 1;
    if (v84 >= 0x3E)
    {
      v87 = v86 & 0xFFFFFFFFFFFFFFE0;
      v108 = (v74 + 32);
      v109 = (v15 + 16);
      v110 = v86 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v111 = *v109[-2].i8;
        v112 = vmovl_u8(*v109);
        v113 = vmovl_high_u8(*v109->i8);
        v108[-2] = vmovl_u8(*v111.i8);
        v108[-1] = vmovl_high_u8(v111);
        *v108 = v112;
        v108[1] = v113;
        v108 += 4;
        v109 += 4;
        v110 -= 32;
      }

      while (v110);
      if (v86 == v87)
      {
        return result;
      }

      if ((v86 & 0x18) == 0)
      {
        v89 = (v74 + 2 * v87);
        v88 = (v15 + v87);
        do
        {
LABEL_80:
          v90 = *v88++;
          *v89++ = v90;
        }

        while (v89 != v75);
        return result;
      }
    }

    else
    {
      v87 = 0;
    }

    v88 = (v15 + (v86 & 0xFFFFFFFFFFFFFFF8));
    v89 = (v74 + 2 * (v86 & 0xFFFFFFFFFFFFFFF8));
    v114 = (v74 + 2 * v87);
    v115 = (v15 + v87);
    v116 = v87 - (v86 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v117 = *v115++;
      *v114++ = vmovl_u8(v117);
      v116 += 8;
    }

    while (v116);
    if (v86 != (v86 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_80;
    }
  }

  return result;
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v7 = *a3;
  if ((*a3 & 0x8000000000000000) != 0)
  {
    v10 = -v7;
    v11 = 1;
    do
    {
      ++v11;
      v38 = v10 >= 0xA;
      v10 /= 0xAuLL;
    }

    while (v38);
  }

  else
  {
    v8 = 0;
    do
    {
      ++v8;
      v9 = v7 > 9;
      v7 /= 0xAuLL;
    }

    while (v9);
  }

  v12 = *(a1 + 1);
  if ((v12 || (v12 = *a1) != 0) && (*(v12 + 16) & 4) == 0)
  {
    v13 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!v13)
    {
      return;
    }

    v16 = *a2;
    v15 = a2[1];
    v17 = *a3;
    v18 = *a4;
    v19 = a4[1];
    v20 = (v13 + 2 * v15);
    if (v15 < 0x40)
    {
      v21 = v13;
      if (v13 == v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = v13 + 2 * (v15 & 0x7FFFFFFFFFFFFFC0);
      v22 = 0uLL;
      v23 = v13;
      do
      {
        v57.val[0] = *v16;
        v24 = *(v16 + 16);
        v58.val[0] = *(v16 + 32);
        v25 = *(v16 + 48);
        v16 += 64;
        v26 = v25;
        v58.val[1] = 0uLL;
        v59.val[0] = v24;
        v57.val[1] = 0uLL;
        v27 = v23;
        vst2q_s8(v27, v57);
        v27 += 32;
        v59.val[1] = 0uLL;
        vst2q_s8(v27, v59);
        v28 = v23 + 64;
        vst2q_s8(v28, v58);
        v29 = v23 + 96;
        vst2q_s8(v29, *(&v22 - 1));
        v23 += 128;
      }

      while (v23 != v21);
      if (v21 == v20)
      {
LABEL_32:
        v38 = v14 >= v15;
        v44 = v14 - v15;
        if (v38)
        {
          v45 = (v13 + 2 * v15);

          WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v45, v44, v17, v18, v19);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v37 = v20 - v21 - 2;
    if (v37 < 0xE || (v21 < v16 + (v37 >> 1) + 1 ? (v38 = v16 >= (v37 & 0xFFFFFFFFFFFFFFFELL) + v21 + 2) : (v38 = 1), !v38))
    {
      v41 = v16;
      v42 = v21;
      goto LABEL_31;
    }

    v39 = (v37 >> 1) + 1;
    if (v37 >= 0x3E)
    {
      v40 = v39 & 0xFFFFFFFFFFFFFFE0;
      v46 = (v21 + 32);
      v47 = (v16 + 16);
      v48 = v39 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v49 = *v47[-2].i8;
        v50 = vmovl_u8(*v47);
        v51 = vmovl_high_u8(*v47->i8);
        v46[-2] = vmovl_u8(*v49.i8);
        v46[-1] = vmovl_high_u8(v49);
        *v46 = v50;
        v46[1] = v51;
        v46 += 4;
        v47 += 4;
        v48 -= 32;
      }

      while (v48);
      if (v39 == v40)
      {
        goto LABEL_32;
      }

      if ((v39 & 0x18) == 0)
      {
        v42 = (v21 + 2 * v40);
        v41 = (v16 + v40);
        goto LABEL_31;
      }
    }

    else
    {
      v40 = 0;
    }

    v41 = (v16 + (v39 & 0xFFFFFFFFFFFFFFF8));
    v42 = (v21 + 2 * (v39 & 0xFFFFFFFFFFFFFFF8));
    v52 = (v21 + 2 * v40);
    v53 = (v16 + v40);
    v54 = v40 - (v39 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v55 = *v53++;
      *v52++ = vmovl_u8(v55);
      v54 += 8;
    }

    while (v54);
    if (v39 == (v39 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_32;
    }

    do
    {
LABEL_31:
      v43 = *v41++;
      *v42++ = v43;
    }

    while (v42 != v20);
    goto LABEL_32;
  }

  v30 = MEMORY[0x22AA68210]();
  if (v30)
  {
    v32 = *a2;
    v33 = a2[1];
    v34 = *a3;
    v35 = *a4;
    v36 = a4[1];

    WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v30, v31, v32, v33, v34, v35, v36);
  }
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v7 = *(a1 + 1);
  if (!v7 && (v7 = *a1) == 0 || (*(v7 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v27 = a2[1];
    v29 = *a3;
    v28 = a3[1];
    v30 = *a4;
    v31 = a4[1];
    if (v27)
    {
      v32 = *a2;
      if (v27 == 1)
      {
        *result = *v32;
      }

      else
      {
        v77 = result;
        v78 = v26;
        memcpy(result, v32, v27);
        v26 = v78;
        result = v77;
      }
    }

    v79 = v27;
    v34 = v26 >= v27;
    v80 = v26 - v27;
    if (v34)
    {
      v81 = &result[v79];
      if (v28)
      {
        if (v28 == 1)
        {
          *v81 = *v29;
        }

        else
        {
          result = memcpy(&result[v79], v29, v28);
        }
      }

      if (v80 >= v28)
      {
        if (v31)
        {
          if (v31 == 1)
          {
            v81[v28] = *v30;
          }

          else
          {

            return memcpy(&v81[v28], v30, v31);
          }
        }

        return result;
      }
    }

LABEL_100:
    __break(1u);
    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v11 = *a2;
  v10 = a2[1];
  v13 = *a3;
  v12 = a3[1];
  v14 = *a4;
  v15 = a4[1];
  v16 = &result[2 * v10];
  if (v10 < 0x40)
  {
    v17 = result;
    if (result == v16)
    {
      goto LABEL_25;
    }

LABEL_15:
    v33 = &v16[-v17 - 2];
    if (v33 < 0xE || (v17 < v11 + (v33 >> 1) + 1 ? (v34 = v11 >= (v33 & 0xFFFFFFFFFFFFFFFELL) + v17 + 2) : (v34 = 1), !v34))
    {
      v37 = v11;
      v38 = v17;
      goto LABEL_24;
    }

    v35 = (v33 >> 1) + 1;
    if (v33 >= 0x3E)
    {
      v36 = v35 & 0xFFFFFFFFFFFFFFE0;
      v82 = (v17 + 32);
      v83 = (v11 + 16);
      v84 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v85 = *v83[-2].i8;
        v86 = vmovl_u8(*v83);
        v87 = vmovl_high_u8(*v83->i8);
        v82[-2] = vmovl_u8(*v85.i8);
        v82[-1] = vmovl_high_u8(v85);
        *v82 = v86;
        v82[1] = v87;
        v82 += 4;
        v83 += 4;
        v84 -= 32;
      }

      while (v84);
      if (v35 == v36)
      {
        goto LABEL_25;
      }

      if ((v35 & 0x18) == 0)
      {
        v38 = (v17 + 2 * v36);
        v37 = (v11 + v36);
        goto LABEL_24;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = (v11 + (v35 & 0xFFFFFFFFFFFFFFF8));
    v38 = (v17 + 2 * (v35 & 0xFFFFFFFFFFFFFFF8));
    v88 = (v17 + 2 * v36);
    v89 = (v11 + v36);
    v90 = v36 - (v35 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v91 = *v89++;
      *v88++ = vmovl_u8(v91);
      v90 += 8;
    }

    while (v90);
    if (v35 == (v35 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v39 = *v37++;
      *v38++ = v39;
    }

    while (v38 != v16);
    goto LABEL_25;
  }

  v17 = &result[2 * (v10 & 0x7FFFFFFFFFFFFFC0)];
  v18 = 0uLL;
  v19 = result;
  do
  {
    v113.val[0] = *v11;
    v20 = *(v11 + 16);
    v116.val[0] = *(v11 + 32);
    v21 = *(v11 + 48);
    v11 += 64;
    v22 = v21;
    v116.val[1] = 0uLL;
    v119.val[0] = v20;
    v113.val[1] = 0uLL;
    v23 = v19;
    vst2q_s8(v23, v113);
    v23 += 32;
    v119.val[1] = 0uLL;
    vst2q_s8(v23, v119);
    v24 = v19 + 64;
    vst2q_s8(v24, v116);
    v25 = v19 + 96;
    vst2q_s8(v25, *(&v18 - 1));
    v19 += 128;
  }

  while (v19 != v17);
  if (v17 != v16)
  {
    goto LABEL_15;
  }

LABEL_25:
  v40 = v9 - v10;
  if (v9 < v10)
  {
    goto LABEL_100;
  }

  v41 = &result[2 * v10];
  v42 = &v41[2 * v12];
  if (v12 < 0x40)
  {
    v43 = &result[2 * v10];
    if (v41 == v42)
    {
      goto LABEL_42;
    }

LABEL_32:
    v52 = &result[2 * v12 + 2 * v10 - v43 - 2];
    if (v52 < 0xE || (v43 < v13 + (v52 >> 1) + 1 ? (v53 = v13 >= (v52 & 0xFFFFFFFFFFFFFFFELL) + v43 + 2) : (v53 = 1), !v53))
    {
      v56 = v13;
      v57 = v43;
      goto LABEL_41;
    }

    v54 = (v52 >> 1) + 1;
    if (v52 >= 0x3E)
    {
      v55 = v54 & 0xFFFFFFFFFFFFFFE0;
      v92 = (v43 + 32);
      v93 = (v13 + 16);
      v94 = v54 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v95 = *v93[-2].i8;
        v96 = vmovl_u8(*v93);
        v97 = vmovl_high_u8(*v93->i8);
        v92[-2] = vmovl_u8(*v95.i8);
        v92[-1] = vmovl_high_u8(v95);
        *v92 = v96;
        v92[1] = v97;
        v92 += 4;
        v93 += 4;
        v94 -= 32;
      }

      while (v94);
      if (v54 == v55)
      {
        goto LABEL_42;
      }

      if ((v54 & 0x18) == 0)
      {
        v57 = (v43 + 2 * v55);
        v56 = (v13 + v55);
        goto LABEL_41;
      }
    }

    else
    {
      v55 = 0;
    }

    v56 = (v13 + (v54 & 0xFFFFFFFFFFFFFFF8));
    v57 = (v43 + 2 * (v54 & 0xFFFFFFFFFFFFFFF8));
    v98 = (v43 + 2 * v55);
    v99 = (v13 + v55);
    v100 = v55 - (v54 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v101 = *v99++;
      *v98++ = vmovl_u8(v101);
      v100 += 8;
    }

    while (v100);
    if (v54 == (v54 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v58 = *v56++;
      *v57++ = v58;
    }

    while (v57 != v42);
    goto LABEL_42;
  }

  v43 = &v41[2 * (v12 & 0x7FFFFFFFFFFFFFC0)];
  v44 = 0uLL;
  v45 = &result[2 * v10];
  do
  {
    v114.val[0] = *v13;
    v46 = *(v13 + 16);
    v117.val[0] = *(v13 + 32);
    v47 = *(v13 + 48);
    v13 += 64;
    v48 = v47;
    v117.val[1] = 0uLL;
    v120.val[0] = v46;
    v114.val[1] = 0uLL;
    v49 = v45;
    vst2q_s8(v49, v114);
    v49 += 32;
    v120.val[1] = 0uLL;
    vst2q_s8(v49, v120);
    v50 = v45 + 64;
    vst2q_s8(v50, v117);
    v51 = v45 + 96;
    vst2q_s8(v51, *(&v44 - 1));
    v45 += 128;
  }

  while (v45 != v43);
  if (v43 != v42)
  {
    goto LABEL_32;
  }

LABEL_42:
  v59 = v12;
  if (v40 < v12)
  {
    goto LABEL_100;
  }

  v60 = &v41[2 * v12];
  v61 = (v60 + 2 * v15);
  if (v15 >= 0x40)
  {
    v62 = v60 + 2 * (v15 & 0x7FFFFFFFFFFFFFC0);
    v63 = 0uLL;
    do
    {
      v115.val[0] = *v14;
      v64 = *(v14 + 16);
      v118.val[0] = *(v14 + 32);
      v65 = *(v14 + 48);
      v14 += 64;
      v66 = v65;
      v118.val[1] = 0uLL;
      v121.val[0] = v64;
      v115.val[1] = 0uLL;
      v67 = v60;
      vst2q_s8(v67, v115);
      v67 += 32;
      v121.val[1] = 0uLL;
      vst2q_s8(v67, v121);
      v68 = (v60 + 64);
      vst2q_s8(v68, v118);
      v69 = (v60 + 96);
      vst2q_s8(v69, *(&v63 - 1));
      v60 += 128;
    }

    while (v60 != v62);
    v60 = v62;
  }

  if (v60 != v61)
  {
    v70 = &result[2 * v15 + 2 * v10 + 2 * v59 - v60 - 2];
    if (v70 < 0xE || (v60 < v14 + (v70 >> 1) + 1 ? (v71 = v14 >= (v70 & 0xFFFFFFFFFFFFFFFELL) + v60 + 2) : (v71 = 1), !v71))
    {
      v74 = v14;
      v75 = v60;
      goto LABEL_57;
    }

    v72 = (v70 >> 1) + 1;
    if (v70 >= 0x3E)
    {
      v73 = v72 & 0xFFFFFFFFFFFFFFE0;
      v102 = (v60 + 32);
      v103 = (v14 + 16);
      v104 = v72 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v105 = *v103[-2].i8;
        v106 = vmovl_u8(*v103);
        v107 = vmovl_high_u8(*v103->i8);
        v102[-2] = vmovl_u8(*v105.i8);
        v102[-1] = vmovl_high_u8(v105);
        *v102 = v106;
        v102[1] = v107;
        v102 += 4;
        v103 += 4;
        v104 -= 32;
      }

      while (v104);
      if (v72 == v73)
      {
        return result;
      }

      if ((v72 & 0x18) == 0)
      {
        v75 = (v60 + 2 * v73);
        v74 = (v14 + v73);
        do
        {
LABEL_57:
          v76 = *v74++;
          *v75++ = v76;
        }

        while (v75 != v61);
        return result;
      }
    }

    else
    {
      v73 = 0;
    }

    v74 = (v14 + (v72 & 0xFFFFFFFFFFFFFFF8));
    v75 = (v60 + 2 * (v72 & 0xFFFFFFFFFFFFFFF8));
    v108 = (v60 + 2 * v73);
    v109 = (v14 + v73);
    v110 = v73 - (v72 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v111 = *v109++;
      *v108++ = vmovl_u8(v111);
      v110 += 8;
    }

    while (v110);
    if (v72 != (v72 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_57;
    }
  }

  return result;
}

uint64_t WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<int,void>>(WTF::StringBuilder *a1, unsigned int *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if ((*a2 & 0x80000000) != 0)
  {
    v6 = -v3;
    v7 = 1;
    do
    {
      ++v7;
      v8 = v6 >= 0xA;
      v6 /= 0xAu;
    }

    while (v8);
  }

  else
  {
    v4 = 0;
    do
    {
      ++v4;
      v5 = v3 > 9;
      v3 /= 0xAu;
    }

    while (v5);
  }

  v9 = *(a1 + 1);
  if ((v9 || (v9 = *a1) != 0) && (*(v9 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (result)
    {
      v12 = result;
      v13 = v11;
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        v17 = -result;
        v21[12] = (-result % 0xAu) | 0x30;
        if (-result >= 0xA)
        {
          v21[11] = (-result / 0xAu - 10 * ((429496730 * (-result / 0xAu)) >> 32)) | 0x30;
          if (v17 >= 0x64)
          {
            v18 = 10;
            v21[10] = (v17 / 0x64 - 10 * ((429496730 * (v17 / 0x64)) >> 32)) | 0x30;
            if (v17 >= 0x3E8)
            {
              v21[9] = (v17 / 0x3E8 - 10 * ((429496730 * (v17 / 0x3E8)) >> 32)) | 0x30;
              if (v17 >> 4 >= 0x271)
              {
                v21[8] = (v17 / 0x2710 - 10 * ((429496730 * (v17 / 0x2710)) >> 32)) | 0x30;
                if (v17 >> 5 >= 0xC35)
                {
                  v21[7] = (v17 / 0x186A0 - 10 * ((52429 * (v17 / 0x186A0)) >> 19)) | 0x30;
                  if (v17 >= 0xF4240)
                  {
                    v21[6] = (v17 / 0xF4240 - 10 * ((6554 * (v17 / 0xF4240)) >> 16)) | 0x30;
                    if (v17 >= 0x989680)
                    {
                      v21[5] = ((v17 / 0x989680) % 0xAu) | 0x30;
                      if (v17 >= 0x5F5E100)
                      {
                        v21[4] = (v17 / 0x5F5E100 - 10 * ((26 * (v17 / 0x5F5E100)) >> 8)) | 0x30;
                        if (v17 >= 0x3B9ACA00)
                        {
                          v21[3] = (v17 / 0x3B9ACA00) | 0x30;
                          v18 = 4;
                        }

                        else
                        {
                          v18 = 5;
                        }
                      }

                      else
                      {
                        v18 = 6;
                      }
                    }

                    else
                    {
                      v18 = 7;
                    }
                  }

                  else
                  {
                    v18 = 8;
                  }
                }

                else
                {
                  v18 = 9;
                }
              }
            }

            else
            {
              v18 = 11;
            }
          }

          else
          {
            v18 = 12;
          }
        }

        else
        {
          v18 = 13;
        }

        v19 = v18 - 2;
        v21[v18 - 2] = 45;
        v20 = v18 ^ 0xF;
        do
        {
          if (!v20 || !v13)
          {
            __break(1u);
          }

          *v12++ = v21[v19];
          --v13;
          ++v19;
          --v20;
        }

        while (v20);
      }

      else
      {

        return WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(result, v12, v11);
      }
    }
  }

  else
  {
    result = MEMORY[0x22AA68210]();
    if (result)
    {
      v15 = result;
      v16 = *a2;

      return WTF::writeIntegerToBuffer<unsigned char,int>(v16, v15, v14);
    }
  }

  return result;
}

uint64_t WTF::writeIntegerToBuffer<unsigned char,int>(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((result & 0x80000000) != 0)
  {
    v3 = -result;
    v18[12] = (-result % 0xAu) | 0x30;
    if (-result >= 0xA)
    {
      v18[11] = (-result / 0xAu - 10 * ((429496730 * (-result / 0xAu)) >> 32)) | 0x30;
      if (v3 >= 0x64)
      {
        v4 = 10;
        v18[10] = (v3 / 0x64 - 10 * ((429496730 * (v3 / 0x64)) >> 32)) | 0x30;
        if (v3 >= 0x3E8)
        {
          v18[9] = (v3 / 0x3E8 - 10 * ((429496730 * (v3 / 0x3E8)) >> 32)) | 0x30;
          if (v3 >> 4 >= 0x271)
          {
            v18[8] = (v3 / 0x2710 - 10 * ((429496730 * (v3 / 0x2710)) >> 32)) | 0x30;
            if (v3 >> 5 >= 0xC35)
            {
              v18[7] = (v3 / 0x186A0 - 10 * ((52429 * (v3 / 0x186A0)) >> 19)) | 0x30;
              if (v3 >= 0xF4240)
              {
                v18[6] = (v3 / 0xF4240 - 10 * ((6554 * (v3 / 0xF4240)) >> 16)) | 0x30;
                if (v3 >= 0x989680)
                {
                  v18[5] = ((v3 / 0x989680) % 0xAu) | 0x30;
                  if (v3 >= 0x5F5E100)
                  {
                    v18[4] = (v3 / 0x5F5E100 - 10 * ((26 * (v3 / 0x5F5E100)) >> 8)) | 0x30;
                    if (v3 >= 0x3B9ACA00)
                    {
                      v18[3] = (v3 / 0x3B9ACA00) | 0x30;
                      v4 = 4;
                    }

                    else
                    {
                      v4 = 5;
                    }
                  }

                  else
                  {
                    v4 = 6;
                  }
                }

                else
                {
                  v4 = 7;
                }
              }

              else
              {
                v4 = 8;
              }
            }

            else
            {
              v4 = 9;
            }
          }
        }

        else
        {
          v4 = 11;
        }
      }

      else
      {
        v4 = 12;
      }
    }

    else
    {
      v4 = 13;
    }

    v18[v4 - 2] = 45;
    v5 = v4 ^ 0xF;
    v6 = 14 - v4;
    if (a3 < (14 - v4))
    {
      v6 = a3;
    }

    if (v6 >= v5)
    {
      v6 = v4 ^ 0xF;
    }

    if (v6 >= 8)
    {
      v8 = v6 + 1;
      v9 = v8 & 7;
      if ((v8 & 7) == 0)
      {
        v9 = 8;
      }

      v7 = v8 - v9;
      v10 = &v18[v4 - 2];
      v11 = v7;
      v12 = a2;
      do
      {
        v13 = *v10++;
        *v12 = v13;
        v12 += 8;
        v11 -= 8;
      }

      while (v11);
    }

    else
    {
      v7 = 0;
    }

    v14 = &a2[v7];
    v15 = v5 - v7;
    v16 = a3 - v7;
    v17 = v4 + v7 - 2;
    do
    {
      if (!v15 || !v16)
      {
        __break(1u);
      }

      *v14++ = v18[v17];
      --v16;
      ++v17;
      --v15;
    }

    while (v15);
  }

  else
  {

    return WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(result, a2, a3);
  }

  return result;
}

char *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>(WTF::StringBuilder *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a1 + 1);
    if (!v4)
    {
LABEL_5:
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = *(a1 + 1);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((*(v4 + 16) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v3 || (*(v3 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v9 = *a2;
    if (!*a2)
    {
      return result;
    }

    v7 = *(v9 + 8);
    v10 = *(v9 + 4);
    if ((*(v9 + 16) & 4) != 0)
    {
      if (!v10)
      {
        return result;
      }

      if (v10 == 1)
      {
        *result = *v7;
        return result;
      }

      goto LABEL_42;
    }

    v11 = &result[v10];
    if (v10 < 0x10)
    {
      v12 = result;
    }

    else
    {
      v12 = result;
      do
      {
        v13 = vld2q_s8(v7);
        v7 += 32;
        *v12++ = v13;
      }

      while (v12 != &result[v10 & 0xFFFFFFF0]);
    }

    if (v12 == v11)
    {
      return result;
    }

    v30 = &result[v10] - v12;
    if (v30 < 4 || (v12 < v7 + 2 * v30 ? (v31 = v7 >= &result[v10]) : (v31 = 1), !v31))
    {
      v33 = v12;
      v34 = v7;
      goto LABEL_56;
    }

    if (v30 >= 0x20)
    {
      v32 = v30 & 0xFFFFFFFFFFFFFFE0;
      v46 = (v7 + 32);
      v47 = (v12 + 1);
      v48 = v30 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v50 = v46[-2];
        v49 = v46[-1];
        v52 = *v46;
        v51 = v46[1];
        v46 += 4;
        v47[-1] = vuzp1q_s8(v50, v49);
        *v47 = vuzp1q_s8(v52, v51);
        v47 += 2;
        v48 -= 32;
      }

      while (v48);
      if (v30 == v32)
      {
        return result;
      }

      if ((v30 & 0x1C) == 0)
      {
        v34 = (v7 + 2 * v32);
        v33 = (v12 + v32);
        goto LABEL_56;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = (v12 + (v30 & 0xFFFFFFFFFFFFFFFCLL));
    v34 = (v7 + 2 * (v30 & 0xFFFFFFFFFFFFFFFCLL));
    v53 = (v7 + 2 * v32);
    v54 = (v12 + v32);
    v55 = v32 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v56 = *v53++;
      *v54++ = vuzp1_s8(v56, v56).u32[0];
      v55 += 4;
    }

    while (v55);
    if (v30 == (v30 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

    do
    {
LABEL_56:
      v35 = *v34;
      v34 += 2;
      *v33 = v35;
      v33 = (v33 + 1);
    }

    while (v33 != v11);
    return result;
  }

LABEL_9:
  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v6 = *a2;
  if (!*a2)
  {
    return result;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 4);
  if ((*(v6 + 16) & 4) == 0)
  {
    if (!v8)
    {
      return result;
    }

    if (v8 == 1)
    {
      *result = *v7;
      return result;
    }

    v10 = 2 * v8;
LABEL_42:

    return memcpy(result, v7, v10);
  }

  v14 = &result[2 * v8];
  if (v8 >= 0x40)
  {
    v15 = result;
    result += 2 * (v8 & 0xFFFFFFC0);
    v16 = 0uLL;
    do
    {
      v58.val[0] = *v7;
      v17 = *(v7 + 16);
      v59.val[0] = *(v7 + 32);
      v18 = *(v7 + 48);
      v7 += 64;
      v19 = v18;
      v59.val[1] = 0uLL;
      v60.val[0] = v17;
      v58.val[1] = 0uLL;
      v20 = v15;
      vst2q_s8(v20, v58);
      v20 += 32;
      v60.val[1] = 0uLL;
      vst2q_s8(v20, v60);
      v21 = v15 + 64;
      vst2q_s8(v21, v59);
      v22 = v15 + 96;
      vst2q_s8(v22, *(&v16 - 1));
      v15 += 128;
    }

    while (v15 != result);
  }

  if (result != v14)
  {
    v23 = v14 - result - 2;
    if (v23 < 0xE || (result < v7 + (v23 >> 1) + 1 ? (v24 = v7 >= &result[(v23 & 0xFFFFFFFFFFFFFFFELL) + 2]) : (v24 = 1), !v24))
    {
      v27 = v7;
      v28 = result;
      goto LABEL_39;
    }

    v25 = (v23 >> 1) + 1;
    if (v23 >= 0x3E)
    {
      v26 = v25 & 0xFFFFFFFFFFFFFFE0;
      v36 = (result + 32);
      v37 = (v7 + 16);
      v38 = v25 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v39 = *v37[-2].i8;
        v40 = vmovl_u8(*v37);
        v41 = vmovl_high_u8(*v37->i8);
        v36[-2] = vmovl_u8(*v39.i8);
        v36[-1] = vmovl_high_u8(v39);
        *v36 = v40;
        v36[1] = v41;
        v36 += 4;
        v37 += 4;
        v38 -= 32;
      }

      while (v38);
      if (v25 == v26)
      {
        return result;
      }

      if ((v25 & 0x18) == 0)
      {
        v28 = &result[2 * v26];
        v27 = (v7 + v26);
        goto LABEL_39;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = (v7 + (v25 & 0xFFFFFFFFFFFFFFF8));
    v28 = &result[2 * (v25 & 0xFFFFFFFFFFFFFFF8)];
    v42 = &result[2 * v26];
    v43 = (v7 + v26);
    v44 = v26 - (v25 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v45 = *v43++;
      *v42++ = vmovl_u8(v45);
      v44 += 8;
    }

    while (v44);
    if (v25 == (v25 & 0xFFFFFFFFFFFFFFF8))
    {
      return result;
    }

    do
    {
LABEL_39:
      v29 = *v27++;
      *v28 = v29;
      v28 += 2;
    }

    while (v28 != v14);
  }

  return result;
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>(WTF::StringBuilder *a1, unint64_t *a2, char *a3)
{
  v5 = *(a1 + 1);
  if (!v5 && (v5 = *a1) == 0 || (*(v5 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v22 = a2[1];
    v23 = *a3;
    if (v22)
    {
      v24 = *a2;
      if (v22 == 1)
      {
        *result = *v24;
      }

      else
      {
        v32 = result;
        v33 = v21;
        memcpy(result, v24, v22);
        v21 = v33;
        result = v32;
      }
    }

    if (v21 > v22)
    {
      result[v22] = v23;
      return result;
    }

LABEL_40:
    __break(1u);
    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *a3;
  v11 = &result[2 * v8];
  if (v8 < 0x40)
  {
    v12 = result;
    if (result == v11)
    {
      goto LABEL_25;
    }

LABEL_15:
    v25 = &v11[-v12 - 2];
    if (v25 < 0xE || (v12 < v9 + (v25 >> 1) + 1 ? (v26 = v9 >= (v25 & 0xFFFFFFFFFFFFFFFELL) + v12 + 2) : (v26 = 1), !v26))
    {
      v29 = v9;
      v30 = v12;
      goto LABEL_24;
    }

    v27 = (v25 >> 1) + 1;
    if (v25 >= 0x3E)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFE0;
      v34 = (v12 + 32);
      v35 = (v9 + 16);
      v36 = v27 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v37 = *v35[-2].i8;
        v38 = vmovl_u8(*v35);
        v39 = vmovl_high_u8(*v35->i8);
        v34[-2] = vmovl_u8(*v37.i8);
        v34[-1] = vmovl_high_u8(v37);
        *v34 = v38;
        v34[1] = v39;
        v34 += 4;
        v35 += 4;
        v36 -= 32;
      }

      while (v36);
      if (v27 == v28)
      {
        goto LABEL_25;
      }

      if ((v27 & 0x18) == 0)
      {
        v30 = (v12 + 2 * v28);
        v29 = (v9 + v28);
        goto LABEL_24;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = (v9 + (v27 & 0xFFFFFFFFFFFFFFF8));
    v30 = (v12 + 2 * (v27 & 0xFFFFFFFFFFFFFFF8));
    v40 = (v12 + 2 * v28);
    v41 = (v9 + v28);
    v42 = v28 - (v27 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v43 = *v41++;
      *v40++ = vmovl_u8(v43);
      v42 += 8;
    }

    while (v42);
    if (v27 == (v27 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v31 = *v29++;
      *v30++ = v31;
    }

    while (v30 != v11);
    goto LABEL_25;
  }

  v12 = &result[2 * (v8 & 0x7FFFFFFFFFFFFFC0)];
  v13 = 0uLL;
  v14 = result;
  do
  {
    v44.val[0] = *v9;
    v15 = *(v9 + 16);
    v45.val[0] = *(v9 + 32);
    v16 = *(v9 + 48);
    v9 += 64;
    v17 = v16;
    v45.val[1] = 0uLL;
    v46.val[0] = v15;
    v44.val[1] = 0uLL;
    v18 = v14;
    vst2q_s8(v18, v44);
    v18 += 32;
    v46.val[1] = 0uLL;
    vst2q_s8(v18, v46);
    v19 = v14 + 64;
    vst2q_s8(v19, v45);
    v20 = v14 + 96;
    vst2q_s8(v20, *(&v13 - 1));
    v14 += 128;
  }

  while (v14 != v12);
  if (v12 != v11)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v7 <= v8)
  {
    goto LABEL_40;
  }

  *&result[2 * v8] = v10;
  return result;
}

int8x16_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(WTF::StringBuilder *a1, uint64_t *a2, char *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a1 + 1);
    if (!v6)
    {
LABEL_5:
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v6 = *(a1 + 1);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if ((*(v6 + 16) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v5 || (*(v5 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v14 = *a2;
    v15 = *a3;
    if (!v14)
    {
      v32 = 0;
      goto LABEL_64;
    }

    v16 = *(v14 + 8);
    v17 = *(v14 + 4);
    if ((*(v14 + 16) & 4) != 0)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          result->i8[0] = *v16;
        }

        else
        {
          v48 = result;
          v49 = v13;
          memcpy(result, *(v14 + 8), v17);
          v13 = v49;
          result = v48;
        }
      }
    }

    else
    {
      v18 = (result + v17);
      if (v17 < 0x10)
      {
        v19 = result;
      }

      else
      {
        v19 = result;
        do
        {
          v20 = vld2q_s8(v16);
          v16 += 32;
          *v19++ = v20;
        }

        while (v19 != &result->i8[v17 & 0xFFFFFFF0]);
      }

      if (v19 != v18)
      {
        v42 = &result->i8[v17] - v19;
        if (v42 < 4 || (v19 < &v16[2 * v42] ? (v43 = v16 >= &result->i8[v17]) : (v43 = 1), !v43))
        {
          v45 = v19;
          v46 = v16;
          goto LABEL_60;
        }

        if (v42 >= 0x20)
        {
          v44 = v42 & 0xFFFFFFFFFFFFFFE0;
          v60 = (v16 + 32);
          v61 = v19 + 1;
          v62 = v42 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v64 = v60[-2];
            v63 = v60[-1];
            v66 = *v60;
            v65 = v60[1];
            v60 += 4;
            v61[-1] = vuzp1q_s8(v64, v63);
            *v61 = vuzp1q_s8(v66, v65);
            v61 += 2;
            v62 -= 32;
          }

          while (v62);
          if (v42 == v44)
          {
            goto LABEL_63;
          }

          if ((v42 & 0x1C) == 0)
          {
            v46 = &v16[2 * v44];
            v45 = (v19 + v44);
            do
            {
LABEL_60:
              v47 = *v46;
              v46 += 2;
              v45->i8[0] = v47;
              v45 = (v45 + 1);
            }

            while (v45 != v18);
            goto LABEL_63;
          }
        }

        else
        {
          v44 = 0;
        }

        v45 = (v19 + (v42 & 0xFFFFFFFFFFFFFFFCLL));
        v46 = &v16[2 * (v42 & 0xFFFFFFFFFFFFFFFCLL)];
        v67 = &v16[2 * v44];
        v68 = (v19->i32 + v44);
        v69 = v44 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v70 = *v67++;
          *v68++ = vuzp1_s8(v70, v70).u32[0];
          v69 += 4;
        }

        while (v69);
        if (v42 != (v42 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_60;
        }
      }
    }

LABEL_63:
    v32 = *(v14 + 4);
    if (v13 < v32)
    {
      goto LABEL_84;
    }

LABEL_64:
    if (v13 != v32)
    {
      result->i8[v32] = v15;
      return result;
    }

    goto LABEL_84;
  }

LABEL_9:
  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v9 = *a2;
  v10 = *a3;
  if (!v9)
  {
    v21 = 0;
    goto LABEL_46;
  }

  v11 = *(v9 + 8);
  v12 = *(v9 + 4);
  if ((*(v9 + 16) & 4) != 0)
  {
    v22 = (result + 2 * v12);
    if (v12 < 0x40)
    {
      v23 = result;
      if (result == v22)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v23 = result + 2 * (v12 & 0xFFFFFFC0);
      v24 = 0uLL;
      v25 = result;
      do
      {
        v71.val[0] = *v11;
        v26 = *(v11 + 16);
        v72.val[0] = *(v11 + 32);
        v27 = *(v11 + 48);
        v11 += 64;
        v28 = v27;
        v72.val[1] = 0uLL;
        v73.val[0] = v26;
        v71.val[1] = 0uLL;
        v29 = v25;
        vst2q_s8(v29, v71);
        v29 += 32;
        v73.val[1] = 0uLL;
        vst2q_s8(v29, v73);
        v30 = v25 + 64;
        vst2q_s8(v30, v72);
        v31 = v25 + 96;
        vst2q_s8(v31, *(&v24 - 1));
        v25 += 128;
      }

      while (v25 != v23);
      if (v23 == v22)
      {
        goto LABEL_45;
      }
    }

    v33 = v22 - v23 - 2;
    if (v33 < 0xE || (v23 < v11 + (v33 >> 1) + 1 ? (v34 = v11 >= (v33 & 0xFFFFFFFFFFFFFFFELL) + v23 + 2) : (v34 = 1), !v34))
    {
      v37 = v11;
      v38 = v23;
      goto LABEL_42;
    }

    v35 = (v33 >> 1) + 1;
    if (v33 >= 0x3E)
    {
      v36 = v35 & 0xFFFFFFFFFFFFFFE0;
      v50 = (v23 + 32);
      v51 = (v11 + 16);
      v52 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v53 = *v51[-2].i8;
        v54 = vmovl_u8(*v51);
        v55 = vmovl_high_u8(*v51->i8);
        v50[-2] = vmovl_u8(*v53.i8);
        v50[-1] = vmovl_high_u8(v53);
        *v50 = v54;
        v50[1] = v55;
        v50 += 4;
        v51 += 4;
        v52 -= 32;
      }

      while (v52);
      if (v35 == v36)
      {
        goto LABEL_45;
      }

      if ((v35 & 0x18) == 0)
      {
        v38 = (v23 + 2 * v36);
        v37 = (v11 + v36);
        goto LABEL_42;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = (v11 + (v35 & 0xFFFFFFFFFFFFFFF8));
    v38 = (v23 + 2 * (v35 & 0xFFFFFFFFFFFFFFF8));
    v56 = (v23 + 2 * v36);
    v57 = (v11 + v36);
    v58 = v36 - (v35 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v59 = *v57++;
      *v56++ = vmovl_u8(v59);
      v58 += 8;
    }

    while (v58);
    if (v35 == (v35 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_45;
    }

    do
    {
LABEL_42:
      v39 = *v37++;
      v38->i16[0] = v39;
      v38 = (v38 + 2);
    }

    while (v38 != v22);
    goto LABEL_45;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      result->i16[0] = *v11;
    }

    else
    {
      v40 = result;
      v41 = v8;
      memcpy(result, *(v9 + 8), 2 * v12);
      v8 = v41;
      result = v40;
    }
  }

LABEL_45:
  v21 = *(v9 + 4);
  if (v8 < v21)
  {
LABEL_84:
    __break(1u);
    return result;
  }

LABEL_46:
  if (v8 == v21)
  {
    goto LABEL_84;
  }

  result->i16[v21] = v10;
  return result;
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>>(WTF::StringBuilder *a1, unint64_t *a2, int *a3)
{
  v5 = *(a1 + 1);
  if ((v5 || (v5 = *a1) != 0) && (*(v5 + 16) & 4) == 0)
  {
    v6 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!v6)
    {
      return;
    }

    v9 = *a2;
    v8 = a2[1];
    v10 = *a3;
    v11 = (v6 + 2 * v8);
    if (v8 < 0x40)
    {
      v12 = v6;
      if (v6 == v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = v6 + 2 * (v8 & 0x7FFFFFFFFFFFFFC0);
      v13 = 0uLL;
      v14 = v6;
      do
      {
        v50.val[0] = *v9;
        v15 = *(v9 + 16);
        v51.val[0] = *(v9 + 32);
        v16 = *(v9 + 48);
        v9 += 64;
        v17 = v16;
        v51.val[1] = 0uLL;
        v52.val[0] = v15;
        v50.val[1] = 0uLL;
        v18 = v14;
        vst2q_s8(v18, v50);
        v18 += 32;
        v52.val[1] = 0uLL;
        vst2q_s8(v18, v52);
        v19 = v14 + 64;
        vst2q_s8(v19, v51);
        v20 = v14 + 96;
        vst2q_s8(v20, *(&v13 - 1));
        v14 += 128;
      }

      while (v14 != v12);
      if (v12 == v11)
      {
LABEL_25:
        if (v7 >= v8)
        {
          v33 = 4 * v10;
          if (v33)
          {
            v34 = (v6 + 2 * v8);

            memset_pattern16(v34, aIneStateTLTAne, 2 * v33);
          }

          return;
        }

LABEL_46:
        __break(1u);
        return;
      }
    }

    v26 = v11 - v12 - 2;
    if (v26 < 0xE || (v12 < v9 + (v26 >> 1) + 1 ? (v27 = v9 >= (v26 & 0xFFFFFFFFFFFFFFFELL) + v12 + 2) : (v27 = 1), !v27))
    {
      v30 = v9;
      v31 = v12;
      goto LABEL_24;
    }

    v28 = (v26 >> 1) + 1;
    if (v26 >= 0x3E)
    {
      v29 = v28 & 0xFFFFFFFFFFFFFFE0;
      v39 = (v12 + 32);
      v40 = (v9 + 16);
      v41 = v28 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v42 = *v40[-2].i8;
        v43 = vmovl_u8(*v40);
        v44 = vmovl_high_u8(*v40->i8);
        v39[-2] = vmovl_u8(*v42.i8);
        v39[-1] = vmovl_high_u8(v42);
        *v39 = v43;
        v39[1] = v44;
        v39 += 4;
        v40 += 4;
        v41 -= 32;
      }

      while (v41);
      if (v28 == v29)
      {
        goto LABEL_25;
      }

      if ((v28 & 0x18) == 0)
      {
        v31 = (v12 + 2 * v29);
        v30 = (v9 + v29);
        goto LABEL_24;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = (v9 + (v28 & 0xFFFFFFFFFFFFFFF8));
    v31 = (v12 + 2 * (v28 & 0xFFFFFFFFFFFFFFF8));
    v45 = (v12 + 2 * v29);
    v46 = (v9 + v29);
    v47 = v29 - (v28 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v48 = *v46++;
      *v45++ = vmovl_u8(v48);
      v47 += 8;
    }

    while (v47);
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v32 = *v30++;
      *v31++ = v32;
    }

    while (v31 != v11);
    goto LABEL_25;
  }

  v21 = MEMORY[0x22AA68210]();
  if (!v21)
  {
    return;
  }

  v23 = a2[1];
  v24 = *a3;
  if (v23)
  {
    v25 = *a2;
    if (v23 == 1)
    {
      *v21 = *v25;
    }

    else
    {
      v35 = v21;
      v36 = v22;
      memcpy(v21, v25, v23);
      v22 = v36;
      v21 = v35;
    }
  }

  if (v22 < v23)
  {
    goto LABEL_46;
  }

  v37 = (4 * v24);
  if (v37)
  {
    v38 = &v21[v23];

    memset(v38, 32, v37);
  }
}

uint64_t WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<long long,void>>(WTF::StringBuilder *a1, unint64_t *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    v6 = -v3;
    v7 = 1;
    do
    {
      ++v7;
      v8 = v6 >= 0xA;
      v6 /= 0xAuLL;
    }

    while (v8);
  }

  else
  {
    v4 = 0;
    do
    {
      ++v4;
      v5 = v3 > 9;
      v3 /= 0xAuLL;
    }

    while (v5);
  }

  v9 = *(a1 + 1);
  if ((v9 || (v9 = *a1) != 0) && (*(v9 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (result)
    {
      v12 = *a2;
      if ((*a2 & 0x8000000000000000) != 0)
      {
        v51 = 0;
        v52 = -v12;
        do
        {
          if (v51 == -25)
          {
            goto LABEL_90;
          }

          v75[v51-- + 24] = (v52 % 0xA) | 0x30;
          v5 = v52 > 9;
          v52 /= 0xAuLL;
        }

        while (v5);
        if ((v51 + 24) < 0x19)
        {
          v53 = 0;
          v75[v51 + 24] = 45;
          if (v11 >= -v51)
          {
            v54 = -v51;
          }

          else
          {
            v54 = v11;
          }

          if (v54 >= 8)
          {
            v55 = &v75[v51 + 24];
            v56 = (v54 + 1) & 7;
            if (!v56)
            {
              v56 = 8;
            }

            v53 = v54 + 1 - v56;
            if (v11 >= -v51)
            {
              v57 = -v51;
            }

            else
            {
              v57 = v11;
            }

            v58 = v57 - v56 + 1;
            v59 = result;
            do
            {
              v60 = *v55++;
              *v59++ = vmovl_u8(v60);
              v58 -= 8;
            }

            while (v58);
          }

          v61 = v53 + v51;
          v62 = (result + 2 * v53);
          v63 = v61 + 1;
          for (i = v11 - v53; i; --i)
          {
            *v62++ = v75[v61 + 24];
            ++v61;
            if (++v63 == 2)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v13 = 0;
        v14 = 25;
        v15 = 1;
        do
        {
          if (v15 == 26)
          {
            goto LABEL_90;
          }

          v16 = v13;
          v75[--v14] = (v12 % 0xA) | 0x30;
          ++v15;
          ++v13;
          v5 = v12 > 9;
          v12 /= 0xAuLL;
        }

        while (v5);
        if (v11 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v11;
        }

        if (v17 >= 8)
        {
          v65 = v17 + 1;
          v66 = v65 & 7;
          if ((v65 & 7) == 0)
          {
            v66 = 8;
          }

          v18 = v65 - v66;
          if (v11 >= v16)
          {
            v67 = v16;
          }

          else
          {
            v67 = v11;
          }

          v68 = v67 - v66 + 1;
          v69 = v75;
          v70 = result;
          do
          {
            *v70++ = vmovl_u8(*&v69[v14]);
            v69 += 8;
            v68 -= 8;
          }

          while (v68);
        }

        else
        {
          v18 = 0;
        }

        v71 = v18 - v16;
        v72 = v18 - v16 - 1;
        v73 = (result + 2 * v18);
        for (j = v11 - v18; j; --j)
        {
          *v73++ = v75[v72 + 25];
          ++v72;
          if (++v71 == 1)
          {
            return result;
          }
        }
      }

      goto LABEL_90;
    }
  }

  else
  {
    result = MEMORY[0x22AA68210]();
    if (result)
    {
      v20 = *a2;
      if ((*a2 & 0x8000000000000000) != 0)
      {
        v27 = 0;
        v28 = -v20;
        do
        {
          if (v27 == -25)
          {
            goto LABEL_90;
          }

          v75[v27-- + 24] = (v28 % 0xA) | 0x30;
          v5 = v28 > 9;
          v28 /= 0xAuLL;
        }

        while (v5);
        if ((v27 + 24) < 0x19)
        {
          v29 = 0;
          v75[v27 + 24] = 45;
          if (v19 >= -v27)
          {
            v30 = -v27;
          }

          else
          {
            v30 = v19;
          }

          if (v30 >= 8)
          {
            v31 = &v75[v27 + 24];
            v32 = (v30 + 1) & 7;
            if (!v32)
            {
              v32 = 8;
            }

            v29 = v30 + 1 - v32;
            if (v19 >= -v27)
            {
              v33 = -v27;
            }

            else
            {
              v33 = v19;
            }

            v34 = v33 - v32 + 1;
            v35 = result;
            do
            {
              v36 = *v31++;
              *v35++ = v36;
              v34 -= 8;
            }

            while (v34);
          }

          v37 = v29 + v27;
          v38 = (result + v29);
          v39 = v37 + 1;
          for (k = v19 - v29; k; --k)
          {
            *v38++ = v75[v37++ + 24];
            if (++v39 == 2)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v21 = 0;
        v22 = 25;
        v23 = 1;
        do
        {
          if (v23 == 26)
          {
            goto LABEL_90;
          }

          v24 = v21;
          v75[--v22] = (v20 % 0xA) | 0x30;
          ++v23;
          ++v21;
          v5 = v20 > 9;
          v20 /= 0xAuLL;
        }

        while (v5);
        if (v19 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v19;
        }

        if (v25 >= 8)
        {
          v41 = v25 + 1;
          v42 = v41 & 7;
          if ((v41 & 7) == 0)
          {
            v42 = 8;
          }

          v26 = v41 - v42;
          if (v19 >= v24)
          {
            v43 = v24;
          }

          else
          {
            v43 = v19;
          }

          v44 = v43 - v42 + 1;
          v45 = v75;
          v46 = result;
          do
          {
            *v46++ = *&v45[v22];
            v45 += 8;
            v44 -= 8;
          }

          while (v44);
        }

        else
        {
          v26 = 0;
        }

        v47 = v26 - v24;
        v48 = v47 - 1;
        v49 = (result + v26);
        for (m = v19 - v26; m; --m)
        {
          *v49++ = *(&v76 + v48++);
          if (++v47 == 1)
          {
            return result;
          }
        }
      }

LABEL_90:
      __break(1u);
    }
  }

  return result;
}

_WORD *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<char,void>>(WTF::StringBuilder *a1, unsigned int *a2, char *a3)
{
  v5 = 0;
  v6 = *a2;
  do
  {
    ++v5;
    v7 = v6 > 9;
    v6 /= 0xAu;
  }

  while (v7);
  v8 = *(a1 + 1);
  if ((v8 || (v8 = *a1) != 0) && (*(v8 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!result)
    {
      return result;
    }

    v11 = result;
    v12 = v10;
    v13 = *a2;
    v14 = *a3;
    result = WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v13, result, v10);
    LODWORD(v15) = 0;
    do
    {
      v15 = (v15 + 1);
      v7 = v13 > 9;
      LODWORD(v13) = v13 / 0xA;
    }

    while (v7);
    if (v12 > v15)
    {
      v11[v15] = v14;
      return result;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  result = MEMORY[0x22AA68210]();
  if (result)
  {
    v17 = result;
    v18 = v16;
    v19 = *a2;
    v20 = *a3;
    result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v19, result, v16);
    LODWORD(v21) = 0;
    do
    {
      v21 = (v21 + 1);
      v7 = v19 > 9;
      LODWORD(v19) = v19 / 0xA;
    }

    while (v7);
    if (v18 > v21)
    {
      *(v17 + v21) = v20;
      return result;
    }

    goto LABEL_17;
  }

  return result;
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>>(WTF::StringBuilder *a1, int *a2, char *a3)
{
  v5 = *(a1 + 1);
  if ((v5 || (v5 = *a1) != 0) && (*(v5 + 16) & 4) == 0)
  {
    v6 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (v6)
    {
      v8 = v6;
      v9 = v7;
      v10 = *a3;
      v11 = (4 * *a2);
      if (v11)
      {
        memset_pattern16(v6, aIneStateTLTAne, 2 * v11);
        if (v9 < v11 || v9 == v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v8[v11] = v10;
        return;
      }

      v11 = 0;
      if (v7)
      {
        goto LABEL_18;
      }

LABEL_19:
      __break(1u);
    }
  }

  else
  {
    v12 = MEMORY[0x22AA68210]();
    if (v12)
    {
      v14 = v12;
      v15 = v13;
      v16 = *a2;
      v17 = *a3;
      v18 = (4 * v16);
      if (v18)
      {
        memset(v12, 32, (4 * v16));
        if (v15 < v18 || v15 == v18)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = 0;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      v14[v18] = v17;
    }
  }
}

int8x16_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, uint64_t *a2, unint64_t *a3)
{
  v5 = *a2;
  v6 = *(a1 + 1);
  if ((!v6 && (v6 = *a1) == 0 || (*(v6 + 16) & 4) != 0) && (!v5 || (*(v5 + 16) & 4) != 0))
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v15 = v14;
    v16 = *a2;
    v17 = *a3;
    v18 = a3[1];
    if (!v16)
    {
      v35 = 0;
      goto LABEL_82;
    }

    v19 = *(v16 + 8);
    v20 = *(v16 + 4);
    if ((*(v16 + 16) & 4) != 0)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          result->i8[0] = *v19;
        }

        else
        {
          v79 = result;
          v80 = v17;
          v81 = v18;
          memcpy(result, *(v16 + 8), *(v16 + 4));
          v18 = v81;
          v17 = v80;
          result = v79;
        }
      }
    }

    else
    {
      v21 = (result + v20);
      if (v20 < 0x10)
      {
        v22 = result;
      }

      else
      {
        v22 = result;
        do
        {
          v23 = vld2q_s8(v19);
          v19 += 32;
          *v22++ = v23;
        }

        while (v22 != &result->i8[v20 & 0xFFFFFFF0]);
      }

      if (v22 != v21)
      {
        v62 = &result->i8[v20];
        v63 = &result->i8[v20] - v22;
        if (v63 < 4 || (v22 < &v19[2 * v63] ? (v64 = v19 >= v62) : (v64 = 1), !v64))
        {
          v66 = v22;
          v67 = v19;
          goto LABEL_70;
        }

        if (v63 >= 0x20)
        {
          v65 = v63 & 0xFFFFFFFFFFFFFFE0;
          v93 = (v19 + 32);
          v94 = v22 + 1;
          v95 = v63 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v97 = v93[-2];
            v96 = v93[-1];
            v99 = *v93;
            v98 = v93[1];
            v93 += 4;
            v94[-1] = vuzp1q_s8(v97, v96);
            *v94 = vuzp1q_s8(v99, v98);
            v94 += 2;
            v95 -= 32;
          }

          while (v95);
          if (v63 == v65)
          {
            goto LABEL_81;
          }

          if ((v63 & 0x1C) == 0)
          {
            v67 = &v19[2 * v65];
            v66 = (v22 + v65);
            do
            {
LABEL_70:
              v68 = *v67;
              v67 += 2;
              v66->i8[0] = v68;
              v66 = (v66 + 1);
            }

            while (v66 != v21);
            goto LABEL_81;
          }
        }

        else
        {
          v65 = 0;
        }

        v66 = (v22 + (v63 & 0xFFFFFFFFFFFFFFFCLL));
        v67 = &v19[2 * (v63 & 0xFFFFFFFFFFFFFFFCLL)];
        v100 = &v19[2 * v65];
        v101 = (v22->i32 + v65);
        v102 = v65 - (v63 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v103 = *v100++;
          *v101++ = vuzp1_s8(v103, v103).u32[0];
          v102 += 4;
        }

        while (v102);
        if (v63 != (v63 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_70;
        }
      }
    }

LABEL_81:
    v35 = *(v16 + 4);
    if (v15 < v35)
    {
      goto LABEL_107;
    }

LABEL_82:
    if (v18)
    {
      if (v18 == 1)
      {
        result->i8[v35] = *v17;
      }

      else
      {
        v82 = &result->i8[v35];

        return memcpy(v82, v17, v18);
      }
    }

    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v9 = *a2;
  v11 = *a3;
  v10 = a3[1];
  if (!v9)
  {
    v24 = 0;
    goto LABEL_43;
  }

  v12 = *(v9 + 8);
  v13 = *(v9 + 4);
  if ((*(v9 + 16) & 4) != 0)
  {
    v25 = (result + 2 * v13);
    if (v13 < 0x40)
    {
      v26 = result;
      if (result == v25)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = result + 2 * (v13 & 0xFFFFFFC0);
      v27 = 0uLL;
      v28 = result;
      do
      {
        v105.val[0] = *v12;
        v29 = *(v12 + 16);
        v107.val[0] = *(v12 + 32);
        v30 = *(v12 + 48);
        v12 += 64;
        v31 = v30;
        v107.val[1] = 0uLL;
        v109.val[0] = v29;
        v105.val[1] = 0uLL;
        v32 = v28;
        vst2q_s8(v32, v105);
        v32 += 32;
        v109.val[1] = 0uLL;
        vst2q_s8(v32, v109);
        v33 = v28 + 64;
        vst2q_s8(v33, v107);
        v34 = v28 + 96;
        vst2q_s8(v34, *(&v27 - 1));
        v28 += 128;
      }

      while (v28 != v26);
      if (v26 == v25)
      {
        goto LABEL_42;
      }
    }

    v36 = v25 - v26 - 2;
    if (v36 < 0xE || (v26 < v12 + (v36 >> 1) + 1 ? (v37 = v12 >= (v36 & 0xFFFFFFFFFFFFFFFELL) + v26 + 2) : (v37 = 1), !v37))
    {
      v40 = v12;
      v41 = v26;
      goto LABEL_39;
    }

    v38 = (v36 >> 1) + 1;
    if (v36 >= 0x3E)
    {
      v39 = v38 & 0xFFFFFFFFFFFFFFE0;
      v83 = (v26 + 32);
      v84 = (v12 + 16);
      v85 = v38 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v86 = *v84[-2].i8;
        v87 = vmovl_u8(*v84);
        v88 = vmovl_high_u8(*v84->i8);
        v83[-2] = vmovl_u8(*v86.i8);
        v83[-1] = vmovl_high_u8(v86);
        *v83 = v87;
        v83[1] = v88;
        v83 += 4;
        v84 += 4;
        v85 -= 32;
      }

      while (v85);
      if (v38 == v39)
      {
        goto LABEL_42;
      }

      if ((v38 & 0x18) == 0)
      {
        v41 = (v26 + 2 * v39);
        v40 = (v12 + v39);
        goto LABEL_39;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = (v12 + (v38 & 0xFFFFFFFFFFFFFFF8));
    v41 = (v26 + 2 * (v38 & 0xFFFFFFFFFFFFFFF8));
    v89 = (v26 + 2 * v39);
    v90 = (v12 + v39);
    v91 = v39 - (v38 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v92 = *v90++;
      *v89++ = vmovl_u8(v92);
      v91 += 8;
    }

    while (v91);
    if (v38 == (v38 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_39:
      v42 = *v40++;
      v41->i16[0] = v42;
      v41 = (v41 + 2);
    }

    while (v41 != v25);
    goto LABEL_42;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      result->i16[0] = *v12;
    }

    else
    {
      v43 = result;
      v44 = v8;
      memcpy(result, *(v9 + 8), 2 * v13);
      v8 = v44;
      result = v43;
    }
  }

LABEL_42:
  v24 = *(v9 + 4);
  if (v8 < v24)
  {
LABEL_107:
    __break(1u);
    return result;
  }

LABEL_43:
  v45 = result + 2 * v24;
  v46 = (v45 + 2 * v10);
  if (v10 >= 0x40)
  {
    v47 = v45 + 2 * (v10 & 0x7FFFFFFFFFFFFFC0);
    v48 = 0uLL;
    do
    {
      v106.val[0] = *v11;
      v49 = *(v11 + 16);
      v108.val[0] = *(v11 + 32);
      v50 = *(v11 + 48);
      v11 += 64;
      v51 = v50;
      v108.val[1] = 0uLL;
      v110.val[0] = v49;
      v106.val[1] = 0uLL;
      v52 = v45;
      vst2q_s8(v52, v106);
      v52 += 32;
      v110.val[1] = 0uLL;
      vst2q_s8(v52, v110);
      v53 = (v45 + 64);
      vst2q_s8(v53, v108);
      v54 = (v45 + 96);
      vst2q_s8(v54, *(&v48 - 1));
      v45 += 128;
    }

    while (v45 != v47);
    v45 = v47;
  }

  if (v45 != v46)
  {
    v55 = v46 - v45 - 2;
    if (v55 < 0xE || (v45 < v11 + (v55 >> 1) + 1 ? (v56 = v11 >= (v55 & 0xFFFFFFFFFFFFFFFELL) + v45 + 2) : (v56 = 1), !v56))
    {
      v59 = v11;
      v60 = v45;
      goto LABEL_57;
    }

    v57 = (v55 >> 1) + 1;
    if (v55 >= 0x3E)
    {
      v58 = v57 & 0xFFFFFFFFFFFFFFE0;
      v69 = (v45 + 32);
      v70 = (v11 + 16);
      v71 = v57 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v72 = *v70[-2].i8;
        v73 = vmovl_u8(*v70);
        v74 = vmovl_high_u8(*v70->i8);
        v69[-2] = vmovl_u8(*v72.i8);
        v69[-1] = vmovl_high_u8(v72);
        *v69 = v73;
        v69[1] = v74;
        v69 += 4;
        v70 += 4;
        v71 -= 32;
      }

      while (v71);
      if (v57 == v58)
      {
        return result;
      }

      if ((v57 & 0x18) == 0)
      {
        v60 = (v45 + 2 * v58);
        v59 = (v11 + v58);
        do
        {
LABEL_57:
          v61 = *v59++;
          *v60++ = v61;
        }

        while (v60 != v46);
        return result;
      }
    }

    else
    {
      v58 = 0;
    }

    v59 = (v11 + (v57 & 0xFFFFFFFFFFFFFFF8));
    v60 = (v45 + 2 * (v57 & 0xFFFFFFFFFFFFFFF8));
    v75 = (v45 + 2 * v58);
    v76 = (v11 + v58);
    v77 = v58 - (v57 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v78 = *v76++;
      *v75++ = vmovl_u8(v78);
      v77 += 8;
    }

    while (v77);
    if (v57 != (v57 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_57;
    }
  }

  return result;
}

int8x16_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v11 = *a3;
  v12 = *a5;
  v13 = *(a1 + 1);
  if ((!v13 && (v13 = *a1) == 0 || (*(v13 + 16) & 4) != 0) && (!v11 || (*(v11 + 16) & 4) != 0) && (!v12 || (*(v12 + 16) & 4) != 0))
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v35 = a2[1];
    v36 = *a3;
    v37 = *a4;
    v38 = a4[1];
    v39 = *a5;
    v40 = *a6;
    v41 = *(a6 + 8);
    if (v35)
    {
      v42 = *a2;
      if (v35 == 1)
      {
        result->i8[0] = *v42;
      }

      else
      {
        v73 = result;
        v74 = v34;
        v75 = *a3;
        v76 = *a4;
        v77 = v38;
        v78 = v39;
        v79 = v40;
        v80 = v41;
        memcpy(result, v42, v35);
        v34 = v74;
        v41 = v80;
        v40 = v79;
        v39 = v78;
        v38 = v77;
        v37 = v76;
        v36 = v75;
        result = v73;
      }
    }

    v44 = v34 >= v35;
    v81 = v34 - v35;
    if (v44)
    {
      v82 = (result + v35);

      return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v82, v81, v36, v37, v38, v39, v40, v41);
    }

LABEL_164:
    __break(1u);
    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v17 = *a2;
  v16 = a2[1];
  v18 = *a3;
  v20 = *a4;
  v19 = a4[1];
  v21 = *a5;
  v22 = *a6;
  v23 = *(a6 + 8);
  v24 = (result + 2 * v16);
  if (v16 < 0x40)
  {
    v25 = result;
    if (result == v24)
    {
      goto LABEL_29;
    }

LABEL_19:
    v43 = v24 - v25 - 2;
    if (v43 < 0xE || (v25 < v17 + (v43 >> 1) + 1 ? (v44 = v17 >= (v43 & 0xFFFFFFFFFFFFFFFELL) + v25 + 2) : (v44 = 1), !v44))
    {
      v47 = v17;
      v48 = v25;
      goto LABEL_28;
    }

    v45 = (v43 >> 1) + 1;
    if (v43 >= 0x3E)
    {
      v46 = v45 & 0xFFFFFFFFFFFFFFE0;
      v143 = (v25 + 32);
      v144 = (v17 + 16);
      v145 = v45 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v146 = *v144[-2].i8;
        v147 = vmovl_u8(*v144);
        v148 = vmovl_high_u8(*v144->i8);
        v143[-2] = vmovl_u8(*v146.i8);
        v143[-1] = vmovl_high_u8(v146);
        *v143 = v147;
        v143[1] = v148;
        v143 += 4;
        v144 += 4;
        v145 -= 32;
      }

      while (v145);
      if (v45 == v46)
      {
        goto LABEL_29;
      }

      if ((v45 & 0x18) == 0)
      {
        v48 = (v25 + 2 * v46);
        v47 = (v17 + v46);
        goto LABEL_28;
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = (v17 + (v45 & 0xFFFFFFFFFFFFFFF8));
    v48 = (v25 + 2 * (v45 & 0xFFFFFFFFFFFFFFF8));
    v149 = (v25 + 2 * v46);
    v150 = (v17 + v46);
    v151 = v46 - (v45 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v152 = *v150++;
      *v149++ = vmovl_u8(v152);
      v151 += 8;
    }

    while (v151);
    if (v45 == (v45 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    do
    {
LABEL_28:
      v49 = *v47++;
      v48->i16[0] = v49;
      v48 = (v48 + 2);
    }

    while (v48 != v24);
    goto LABEL_29;
  }

  v25 = result + 2 * (v16 & 0x7FFFFFFFFFFFFFC0);
  v26 = 0uLL;
  v27 = result;
  do
  {
    v194.val[0] = *v17;
    v28 = *(v17 + 16);
    v199.val[0] = *(v17 + 32);
    v29 = *(v17 + 48);
    v17 += 64;
    v30 = v29;
    v199.val[1] = 0uLL;
    v204.val[0] = v28;
    v194.val[1] = 0uLL;
    v31 = v27;
    vst2q_s8(v31, v194);
    v31 += 32;
    v204.val[1] = 0uLL;
    vst2q_s8(v31, v204);
    i8 = v27[4].i8;
    vst2q_s8(i8, v199);
    v33 = v27[6].i8;
    vst2q_s8(v33, *(&v26 - 1));
    v27 += 8;
  }

  while (v27 != v25);
  if (v25 != v24)
  {
    goto LABEL_19;
  }

LABEL_29:
  v50 = v16;
  v51 = v15 - v16;
  if (v15 < v16)
  {
    goto LABEL_164;
  }

  v52 = &result->i16[v16];
  if (!v18)
  {
    v55 = 0;
    goto LABEL_61;
  }

  v53 = *(v18 + 8);
  v54 = *(v18 + 4);
  if ((*(v18 + 16) & 4) != 0)
  {
    v56 = &v52[v54];
    if (v54 < 0x40)
    {
      v57 = result + 2 * v50;
      if (v52 == v56)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v57 = &v52[v54 & 0xFFFFFFC0];
      v58 = 0uLL;
      v59 = &result->i8[2 * v50];
      do
      {
        v195.val[0] = *v53;
        v60 = v53[1];
        v200.val[0] = v53[2];
        v61 = v53[3];
        v53 += 4;
        v62 = v61;
        v200.val[1] = 0uLL;
        v205.val[0] = v60;
        v195.val[1] = 0uLL;
        v63 = v59;
        vst2q_s8(v63, v195);
        v63 += 32;
        v205.val[1] = 0uLL;
        vst2q_s8(v63, v205);
        v64 = v59 + 64;
        vst2q_s8(v64, v200);
        v65 = v59 + 96;
        vst2q_s8(v65, *(&v58 - 1));
        v59 += 128;
      }

      while (v59 != v57);
      if (v57 == v56)
      {
        goto LABEL_60;
      }
    }

    v66 = result->u64 + 2 * v54 + 2 * v50 - v57 - 2;
    if (v66 < 0xE || (v57 < v53->u64 + (v66 >> 1) + 1 ? (v67 = v53 >= (v66 & 0xFFFFFFFFFFFFFFFELL) + v57 + 2) : (v67 = 1), !v67))
    {
      v70 = v53;
      v71 = v57;
      goto LABEL_51;
    }

    v68 = (v66 >> 1) + 1;
    if (v66 >= 0x3E)
    {
      v69 = v68 & 0xFFFFFFFFFFFFFFE0;
      v173 = (v57 + 32);
      v174 = &v53[1];
      v175 = v68 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v176 = *v174[-2].i8;
        v177 = vmovl_u8(*v174);
        v178 = vmovl_high_u8(*v174->i8);
        v173[-2] = vmovl_u8(*v176.i8);
        v173[-1] = vmovl_high_u8(v176);
        *v173 = v177;
        v173[1] = v178;
        v173 += 4;
        v174 += 4;
        v175 -= 32;
      }

      while (v175);
      if (v68 == v69)
      {
        goto LABEL_60;
      }

      if ((v68 & 0x18) == 0)
      {
        v71 = (v57 + 2 * v69);
        v70 = (v53 + v69);
        goto LABEL_51;
      }
    }

    else
    {
      v69 = 0;
    }

    v70 = (v53 + (v68 & 0xFFFFFFFFFFFFFFF8));
    v71 = (v57 + 2 * (v68 & 0xFFFFFFFFFFFFFFF8));
    v179 = (v57 + 2 * v69);
    v180 = &v53->i8[v69];
    v181 = v69 - (v68 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v182 = *v180++;
      *v179++ = vmovl_u8(v182);
      v181 += 8;
    }

    while (v181);
    if (v68 == (v68 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_60;
    }

    do
    {
LABEL_51:
      v72 = v70->u8[0];
      v70 = (v70 + 1);
      *v71++ = v72;
    }

    while (v71 != v56);
    goto LABEL_60;
  }

  if (v54)
  {
    if (v54 == 1)
    {
      *v52 = v53->i16[0];
    }

    else
    {
      v83 = result;
      memcpy(result + 2 * v16, v53, 2 * v54);
      result = v83;
    }
  }

LABEL_60:
  v55 = *(v18 + 4);
  if (v51 < v55)
  {
    goto LABEL_164;
  }

LABEL_61:
  v84 = &v52[v55];
  v85 = &v84[v19];
  if (v19 < 0x40)
  {
    v86 = &v52[v55];
    v95 = v51 - v55;
    v96 = &result->i8[2 * v55];
    if (v84 == v85)
    {
      goto LABEL_77;
    }

LABEL_67:
    v97 = &v96[2 * v19 + 2 * v50 - v86 - 2];
    if (v97 < 0xE || (v86 < v20 + (v97 >> 1) + 1 ? (v98 = v20 >= (v97 & 0xFFFFFFFFFFFFFFFELL) + v86 + 2) : (v98 = 1), !v98))
    {
      v101 = v20;
      v102 = v86;
      goto LABEL_76;
    }

    v99 = (v97 >> 1) + 1;
    if (v97 >= 0x3E)
    {
      v100 = v99 & 0xFFFFFFFFFFFFFFE0;
      v153 = (v86 + 32);
      v154 = (v20 + 16);
      v155 = v99 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v156 = *v154[-2].i8;
        v157 = vmovl_u8(*v154);
        v158 = vmovl_high_u8(*v154->i8);
        v153[-2] = vmovl_u8(*v156.i8);
        v153[-1] = vmovl_high_u8(v156);
        *v153 = v157;
        v153[1] = v158;
        v153 += 4;
        v154 += 4;
        v155 -= 32;
      }

      while (v155);
      if (v99 == v100)
      {
        goto LABEL_77;
      }

      if ((v99 & 0x18) == 0)
      {
        v102 = (v86 + 2 * v100);
        v101 = (v20 + v100);
        goto LABEL_76;
      }
    }

    else
    {
      v100 = 0;
    }

    v101 = (v20 + (v99 & 0xFFFFFFFFFFFFFFF8));
    v102 = (v86 + 2 * (v99 & 0xFFFFFFFFFFFFFFF8));
    v159 = (v86 + 2 * v100);
    v160 = (v20 + v100);
    v161 = v100 - (v99 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v162 = *v160++;
      *v159++ = vmovl_u8(v162);
      v161 += 8;
    }

    while (v161);
    if (v99 == (v99 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_77;
    }

    do
    {
LABEL_76:
      v103 = *v101++;
      *v102++ = v103;
    }

    while (v102 != v85);
    goto LABEL_77;
  }

  v86 = &v84[v19 & 0x7FFFFFFFFFFFFFC0];
  v87 = 0uLL;
  v88 = &v52[v55];
  do
  {
    v196.val[0] = *v20;
    v89 = *(v20 + 16);
    v201.val[0] = *(v20 + 32);
    v90 = *(v20 + 48);
    v20 += 64;
    v91 = v90;
    v201.val[1] = 0uLL;
    v206.val[0] = v89;
    v196.val[1] = 0uLL;
    v92 = v88;
    vst2q_s8(v92, v196);
    v92 += 32;
    v206.val[1] = 0uLL;
    vst2q_s8(v92, v206);
    v93 = v88 + 64;
    vst2q_s8(v93, v201);
    v94 = v88 + 96;
    vst2q_s8(v94, *(&v87 - 1));
    v88 += 128;
  }

  while (v88 != v86);
  v95 = v51 - v55;
  v96 = &result->i8[2 * v55];
  if (v86 != v85)
  {
    goto LABEL_67;
  }

LABEL_77:
  v104 = v95 - v19;
  if (v95 < v19)
  {
    goto LABEL_164;
  }

  v105 = &v84[v19];
  if (!v21)
  {
    v108 = 0;
    goto LABEL_103;
  }

  v106 = *(v21 + 8);
  v107 = *(v21 + 4);
  if ((*(v21 + 16) & 4) != 0)
  {
    v109 = &v105[2 * v107];
    if (v107 < 0x40)
    {
      v110 = v105;
      if (v105 == v109)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v110 = &v105[2 * (v107 & 0xFFFFFFC0)];
      v111 = 0uLL;
      v112 = v105;
      do
      {
        v197.val[0] = *v106;
        v113 = v106[1];
        v202.val[0] = v106[2];
        v114 = v106[3];
        v106 += 4;
        v115 = v114;
        v202.val[1] = 0uLL;
        v207.val[0] = v113;
        v197.val[1] = 0uLL;
        v116 = v112;
        vst2q_s8(v116, v197);
        v116 += 32;
        v207.val[1] = 0uLL;
        vst2q_s8(v116, v207);
        v117 = v112 + 64;
        vst2q_s8(v117, v202);
        v118 = v112 + 96;
        vst2q_s8(v118, *(&v111 - 1));
        v112 += 128;
      }

      while (v112 != v110);
      if (v110 == v109)
      {
        goto LABEL_102;
      }
    }

    v119 = &v96[2 * v107 + 2 * v50 + 2 * v19 - v110 - 2];
    if (v119 < 0xE || (v110 < v106->u64 + (v119 >> 1) + 1 ? (v120 = v106 >= (v119 & 0xFFFFFFFFFFFFFFFELL) + v110 + 2) : (v120 = 1), !v120))
    {
      v123 = v106;
      v124 = v110;
      goto LABEL_99;
    }

    v121 = (v119 >> 1) + 1;
    if (v119 >= 0x3E)
    {
      v122 = v121 & 0xFFFFFFFFFFFFFFE0;
      v183 = (v110 + 32);
      v184 = &v106[1];
      v185 = v121 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v186 = *v184[-2].i8;
        v187 = vmovl_u8(*v184);
        v188 = vmovl_high_u8(*v184->i8);
        v183[-2] = vmovl_u8(*v186.i8);
        v183[-1] = vmovl_high_u8(v186);
        *v183 = v187;
        v183[1] = v188;
        v183 += 4;
        v184 += 4;
        v185 -= 32;
      }

      while (v185);
      if (v121 == v122)
      {
        goto LABEL_102;
      }

      if ((v121 & 0x18) == 0)
      {
        v124 = (v110 + 2 * v122);
        v123 = (v106 + v122);
        goto LABEL_99;
      }
    }

    else
    {
      v122 = 0;
    }

    v123 = (v106 + (v121 & 0xFFFFFFFFFFFFFFF8));
    v124 = (v110 + 2 * (v121 & 0xFFFFFFFFFFFFFFF8));
    v189 = (v110 + 2 * v122);
    v190 = &v106->i8[v122];
    v191 = v122 - (v121 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v192 = *v190++;
      *v189++ = vmovl_u8(v192);
      v191 += 8;
    }

    while (v191);
    if (v121 == (v121 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_102;
    }

    do
    {
LABEL_99:
      v125 = v123->u8[0];
      v123 = (v123 + 1);
      *v124 = v125;
      v124 += 2;
    }

    while (v124 != v109);
    goto LABEL_102;
  }

  if (v107)
  {
    if (v107 == 1)
    {
      *v105 = v106->i16[0];
    }

    else
    {
      result = memcpy(v105, v106, 2 * v107);
    }
  }

LABEL_102:
  v108 = *(v21 + 4);
  if (v104 < v108)
  {
    goto LABEL_164;
  }

LABEL_103:
  v126 = &v105[2 * v108];
  v127 = (v126 + 2 * v23);
  if (v23 >= 0x40)
  {
    v128 = v126 + 2 * (v23 & 0x7FFFFFFFFFFFFFC0);
    v129 = 0uLL;
    do
    {
      v198.val[0] = *v22;
      v130 = *(v22 + 16);
      v203.val[0] = *(v22 + 32);
      v131 = *(v22 + 48);
      v22 += 64;
      v132 = v131;
      v203.val[1] = 0uLL;
      v208.val[0] = v130;
      v198.val[1] = 0uLL;
      v133 = v126;
      vst2q_s8(v133, v198);
      v133 += 32;
      v208.val[1] = 0uLL;
      vst2q_s8(v133, v208);
      v134 = (v126 + 64);
      vst2q_s8(v134, v203);
      v135 = (v126 + 96);
      vst2q_s8(v135, *(&v129 - 1));
      v126 += 128;
    }

    while (v126 != v128);
    v126 = v128;
  }

  if (v126 != v127)
  {
    v136 = &v96[2 * v108 + 2 * v23 + 2 * v50 + 2 * v19 - v126 - 2];
    if (v136 < 0xE || (v126 < v22 + (v136 >> 1) + 1 ? (v137 = v22 >= (v136 & 0xFFFFFFFFFFFFFFFELL) + v126 + 2) : (v137 = 1), !v137))
    {
      v140 = v22;
      v141 = v126;
      goto LABEL_117;
    }

    v138 = (v136 >> 1) + 1;
    if (v136 >= 0x3E)
    {
      v139 = v138 & 0xFFFFFFFFFFFFFFE0;
      v163 = (v126 + 32);
      v164 = (v22 + 16);
      v165 = v138 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v166 = *v164[-2].i8;
        v167 = vmovl_u8(*v164);
        v168 = vmovl_high_u8(*v164->i8);
        v163[-2] = vmovl_u8(*v166.i8);
        v163[-1] = vmovl_high_u8(v166);
        *v163 = v167;
        v163[1] = v168;
        v163 += 4;
        v164 += 4;
        v165 -= 32;
      }

      while (v165);
      if (v138 == v139)
      {
        return result;
      }

      if ((v138 & 0x18) == 0)
      {
        v141 = (v126 + 2 * v139);
        v140 = (v22 + v139);
        do
        {
LABEL_117:
          v142 = *v140++;
          *v141++ = v142;
        }

        while (v141 != v127);
        return result;
      }
    }

    else
    {
      v139 = 0;
    }

    v140 = (v22 + (v138 & 0xFFFFFFFFFFFFFFF8));
    v141 = (v126 + 2 * (v138 & 0xFFFFFFFFFFFFFFF8));
    v169 = (v126 + 2 * v139);
    v170 = (v22 + v139);
    v171 = v139 - (v138 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v172 = *v170++;
      *v169++ = vmovl_u8(v172);
      v171 += 8;
    }

    while (v171);
    if (v138 != (v138 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_117;
    }
  }

  return result;
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, _BYTE *a2, int *a3, unint64_t *a4)
{
  v7 = *(a1 + 1);
  if (!v7 && (v7 = *a1) == 0 || (*(v7 + 16) & 4) != 0)
  {
    v19 = MEMORY[0x22AA68210]();
    if (!v19)
    {
      return;
    }

    if (v20)
    {
      v22 = *a4;
      v21 = a4[1];
      v23 = *a3;
      *v19 = *a2;
      v24 = v19 + 1;
      v25 = (4 * v23);
      if (v25)
      {
        v26 = v20 - 1;
        memset(v19 + 1, 32, (4 * v23));
        if (v26 < v25)
        {
          goto LABEL_44;
        }

        if (!v21)
        {
          return;
        }
      }

      else
      {
        v25 = 0;
        if (!v21)
        {
          return;
        }
      }

      if (v21 == 1)
      {
        v24[v25] = *v22;
      }

      else
      {

        memcpy(&v24[v25], v22, v21);
      }

      return;
    }

LABEL_44:
    __break(1u);
    return;
  }

  v8 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!v8)
  {
    return;
  }

  if (!v9)
  {
    goto LABEL_44;
  }

  v10 = v8;
  v12 = *a4;
  v11 = a4[1];
  v13 = *a3;
  *v8 = *a2;
  v14 = v8 + 1;
  v15 = (4 * v13);
  if (v15)
  {
    v16 = v9 - 1;
    memset_pattern16(v8 + 1, aIneStateTLTAne, 2 * (4 * v13));
    if (v16 >= v15)
    {
      v17 = &v14[v15];
      v18 = (v17 + 2 * v11);
      if (v11 < 0x40)
      {
        goto LABEL_9;
      }

LABEL_24:
      v27 = v17 + 2 * (v11 & 0x7FFFFFFFFFFFFFC0);
      v28 = 0uLL;
      do
      {
        v52.val[0] = *v12;
        v29 = *(v12 + 16);
        v53.val[0] = *(v12 + 32);
        v30 = *(v12 + 48);
        v12 += 64;
        v31 = v30;
        v53.val[1] = 0uLL;
        v54.val[0] = v29;
        v52.val[1] = 0uLL;
        v32 = v17;
        vst2q_s8(v32, v52);
        v32 += 32;
        v54.val[1] = 0uLL;
        vst2q_s8(v32, v54);
        v33 = (v17 + 64);
        vst2q_s8(v33, v53);
        v34 = (v17 + 96);
        vst2q_s8(v34, *(&v28 - 1));
        v17 += 128;
      }

      while (v17 != v27);
      v17 = v27;
      if (v27 == v18)
      {
        return;
      }

      goto LABEL_27;
    }

    goto LABEL_44;
  }

  v15 = 0;
  v17 = (v8 + 1);
  v18 = &v14[v11];
  if (v11 >= 0x40)
  {
    goto LABEL_24;
  }

LABEL_9:
  if (v17 == v18)
  {
    return;
  }

LABEL_27:
  v35 = &v10[v11 + v15] - v17;
  if (v35 < 0xE || v17 < v12 + (v35 >> 1) + 1 && v12 < (v35 & 0xFFFFFFFFFFFFFFFELL) + v17 + 2)
  {
    v36 = v12;
    v37 = v17;
    goto LABEL_31;
  }

  v39 = (v35 >> 1) + 1;
  if (v35 >= 0x3E)
  {
    v40 = v39 & 0xFFFFFFFFFFFFFFE0;
    v41 = (v17 + 32);
    v42 = (v12 + 16);
    v43 = v39 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v44 = *v42[-2].i8;
      v45 = vmovl_u8(*v42);
      v46 = vmovl_high_u8(*v42->i8);
      v41[-2] = vmovl_u8(*v44.i8);
      v41[-1] = vmovl_high_u8(v44);
      *v41 = v45;
      v41[1] = v46;
      v41 += 4;
      v42 += 4;
      v43 -= 32;
    }

    while (v43);
    if (v39 == v40)
    {
      return;
    }

    if ((v39 & 0x18) == 0)
    {
      v37 = (v17 + 2 * v40);
      v36 = (v12 + v40);
      do
      {
LABEL_31:
        v38 = *v36++;
        *v37++ = v38;
      }

      while (v37 != v18);
      return;
    }
  }

  else
  {
    v40 = 0;
  }

  v36 = (v12 + (v39 & 0xFFFFFFFFFFFFFFF8));
  v37 = (v17 + 2 * (v39 & 0xFFFFFFFFFFFFFFF8));
  v47 = (v17 + 2 * v40);
  v48 = (v12 + v40);
  v49 = v40 - (v39 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v50 = *v48++;
    *v47++ = vmovl_u8(v50);
    v49 += 8;
  }

  while (v49);
  if (v39 != (v39 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_31;
  }
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>>(WTF::StringBuilder *a1, _BYTE *a2, int *a3, char *a4)
{
  v7 = *(a1 + 1);
  if ((v7 || (v7 = *a1) != 0) && (*(v7 + 16) & 4) == 0)
  {
    v8 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (v8)
    {
      if (v9)
      {
        v10 = *a4;
        v11 = *a3;
        *v8 = *a2;
        v12 = v8 + 1;
        v13 = v9 - 1;
        v14 = (4 * v11);
        if (v14)
        {
          memset_pattern16(v8 + 1, aIneStateTLTAne, 2 * (4 * v11));
          if (v13 < v14 || v13 == v14)
          {
            goto LABEL_21;
          }

LABEL_20:
          v12[v14] = v10;
          return;
        }

        v14 = 0;
        if (v9 != 1)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      __break(1u);
    }
  }

  else
  {
    v15 = MEMORY[0x22AA68210]();
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = *a4;
      v18 = *a3;
      *v15 = *a2;
      v19 = v15 + 1;
      v20 = v16 - 1;
      v21 = (4 * v18);
      if (v21)
      {
        memset(v15 + 1, 32, (4 * v18));
        if (v20 < v21 || v20 == v21)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v21 = 0;
        if (v16 == 1)
        {
          goto LABEL_21;
        }
      }

      v19[v21] = v17;
    }
  }
}

void WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(uint64_t *a1@<X0>, const WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  if (*a2 == -1 || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x225766588);
  }

  v21 = v4;
  v22 = v5;
  v9 = *a1;
  if (*a1)
  {
    v11 = *(v9 - 8);
    v12 = *(v7 + 4);
    if (v12 < 0x100)
    {
      v13 = WTF::StringImpl::hashSlowCase(v7);
    }

    else
    {
      v13 = v12 >> 8;
    }

    for (i = 0; ; v13 = i + v15)
    {
      v15 = v13 & v11;
      v16 = *(v9 + 32 * v15);
      if (v16 != -1)
      {
        if (!v16)
        {
          goto LABEL_15;
        }

        if (WTF::equal(v16, *a2, a3))
        {
          break;
        }
      }

      ++i;
    }

    v17 = v9 + 32 * v15;
    *a4 = 0;
    *(a4 + 16) = -1;
    v18 = *(v17 + 24);
    if (v18 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v18, v19, a4, (v17 + 8));
      *(a4 + 16) = *(v17 + 24);
    }
  }

  else
  {
LABEL_15:
    memset(v19, 0, sizeof(v19));
    *a4 = 0;
    *(a4 + 16) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v20, v19);
  }
}

uint64_t WGSL::OverloadResolver::resolve@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*(this + 8) + 12);
  if (!v4)
  {
    *a2 = 0;
    a2[16] = 0;
    return this;
  }

  v5 = this;
  v6 = 40 * v4;
  v7 = WTF::fastMalloc((40 * v4 + 8));
  v9 = v7;
  *v7 = v4;
  v10 = v7 + 2;
  v11 = v7 + 2;
  if ((40 * v4 - 40) < 0x28)
  {
    goto LABEL_210;
  }

  v12 = (v6 - 40) / 0x28uLL + 1;
  v11 = &v10[10 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v13 = v7 + 10;
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v13 - 32) = 0;
    v13[8] = 0;
    *v13 = 0;
    v13[40] = 0;
    v13 += 80;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
LABEL_210:
    do
    {
      *v11 = 0;
      v11[32] = 0;
      v11 += 40;
    }

    while (v11 != v10 + v6);
  }

  v15 = *(v5 + 1);
  if (*(v15 + 3))
  {
    for (i = 0; i < *(v15 + 3); ++i)
    {
      v17 = *v15 + 88 * i;
      if (*(v17 + 60) != *(*(v5 + 2) + 12) || (v18 = *(v5 + 3), v19 = *(v18 + 3), v19 > *(v17 + 12)))
      {
LABEL_12:
        v20 = 0;
        v6 &= 0xFFFFFFFFFFFFFF00;
        goto LABEL_13;
      }

      v26 = *(v5 + 4);
      if (v26)
      {
        v27 = *v26;
        if (v27)
        {
          bzero(v26 + 2, 8 * v27);
        }
      }

      v28 = *(v5 + 5);
      if (!v28)
      {
        goto LABEL_48;
      }

      v29 = *v28;
      if (!v29)
      {
        goto LABEL_48;
      }

      v30 = v28 + 1;
      if (v29 == 1)
      {
        v31 = *v28;
      }

      else
      {
        v30 += 8 * (v29 & 0xFFFFFFFE);
        v31 = v29 & 1;
        v32 = v28 + 4;
        v33 = v29 & 0xFFFFFFFE;
        do
        {
          *(v32 - 12) = 0;
          *(v32 - 4) = 0;
          *(v32 - 8) = 0;
          *v32 = 0;
          v32 += 16;
          v33 -= 2;
        }

        while (v33);
        if ((v29 & 0xFFFFFFFE) == v29)
        {
          goto LABEL_47;
        }
      }

      v34 = v31 + 1;
      do
      {
        *v30 = 0;
        v30[4] = 0;
        v30 += 8;
        --v34;
      }

      while (v34 > 1);
LABEL_47:
      v18 = *(v5 + 3);
      v19 = *(v18 + 3);
LABEL_48:
      if (v19)
      {
        v35 = 0;
        v36 = *(v17 + 12);
        v37 = *v17;
        do
        {
          if (v35 == v36)
          {
            __break(0xC471u);
            JUMPOUT(0x225766EF0);
          }

          v38 = *(v37 + 8 * v35);
          v39 = *(*v18 + 8 * v35);
          if (BYTE4(v38))
          {
            if (!v39)
            {
              goto LABEL_12;
            }

            v40 = *(*v18 + 8 * v35);
            while (v40[48] == 10)
            {
              v40 = *(v40 + 1);
              if (!v40)
              {
                goto LABEL_12;
              }
            }

            if (v40[48])
            {
              goto LABEL_12;
            }

            v41 = *v40;
            if (v41 <= 2)
            {
              if (v41)
              {
                if (v41 == 1)
                {
                  if ((v38 & 0x400000000) == 0)
                  {
                    goto LABEL_12;
                  }
                }

                else if ((v38 & 0x800000000) == 0)
                {
                  goto LABEL_12;
                }
              }

              else if (BYTE4(v38) == 1)
              {
                goto LABEL_12;
              }
            }

            else if (v41 > 4)
            {
              if (v41 == 5)
              {
                if ((v38 & 0x2000000000) == 0)
                {
                  goto LABEL_12;
                }
              }

              else if (v41 != 7 || (v38 & 0x100000000) == 0)
              {
                goto LABEL_12;
              }
            }

            else if (v41 == 3)
            {
              if ((v38 & 0x7000000000) == 0)
              {
                goto LABEL_12;
              }
            }

            else if ((v38 & 0x4000000000) == 0)
            {
              goto LABEL_12;
            }
          }

          v42 = *(v5 + 4);
          if (*v42 <= v38)
          {
            __break(0xC471u);
            JUMPOUT(0x225766F58);
          }

          *&v42[2 * v38 + 2] = v39;
          ++v35;
        }

        while (v35 != v19);
      }

      v43 = *(*(v5 + 2) + 12);
      if (!v43)
      {
        v44 = 0;
LABEL_143:
        v47 = 0;
LABEL_144:
        v74 = WGSL::OverloadResolver::materialize(v5, (v17 + 80));
        if (!v74)
        {
          goto LABEL_148;
        }

LABEL_145:
        v2 = v47;
        v20 = 1;
        v96 = v74;
        v3 = v44;
        v6 = v17;
        goto LABEL_13;
      }

      v44 = WTF::fastMalloc((4 * v43 + 4));
      *v44 = v43;
      v45 = *(*(v5 + 2) + 12);
      if (!v45)
      {
        goto LABEL_143;
      }

      v46 = WTF::fastMalloc((8 * v45 + 8));
      *v46 = v45;
      v47 = v46;
      v48 = *(v5 + 2);
      if (!*(v48 + 3))
      {
        goto LABEL_144;
      }

      v94 = v9;
      v95 = v46;
      v49 = 0;
      v50 = 0;
      do
      {
        if (v50 >= *(v17 + 60))
        {
          __break(0xC471u);
          JUMPOUT(0x225766EE8);
        }

        if ((WGSL::OverloadResolver::unify(v5, (*(v17 + 48) + v49), *(*v48 + 8 * v50)) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFF00;
          v9 = v94;
          v47 = v95;
          goto LABEL_149;
        }

        ++v50;
        v48 = *(v5 + 2);
        v52 = *(v48 + 3);
        v49 += 8;
      }

      while (v50 < v52);
      if (!v52)
      {
        v9 = v94;
        v47 = v95;
        v74 = WGSL::OverloadResolver::materialize(v5, (v17 + 80));
        if (!v74)
        {
          goto LABEL_148;
        }

        goto LABEL_145;
      }

      v53 = 0;
      v93 = v44 + 4;
      v91 = v6;
      do
      {
        if (v53 >= *(v17 + 60))
        {
          __break(0xC471u);
          JUMPOUT(0x225766EF8);
        }

        v54 = (*(v17 + 48) + 8 * v53);
        v55 = (*v48 + 8 * v53);
        v56 = v54;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v55 = *v55;
              v57 = *v56;
              if (!*v56)
              {
                goto LABEL_97;
              }

              v58 = *(v57 + 24);
              if (v58 != 5)
              {
                break;
              }

              if (*(v55 + 48) != 10)
              {
                goto LABEL_185;
              }

LABEL_92:
              v56 = (v57 + 2);
              v55 = (v55 + 8);
            }

            if (v58 == 6)
            {
              if (*(v55 + 48) != 11)
              {
                goto LABEL_185;
              }

              goto LABEL_92;
            }

            if (v58 == 9)
            {
              v65 = *v57;
              v66 = *(v5 + 4);
              if (*v66 <= v65)
              {
                goto LABEL_197;
              }

              v67 = *&v66[2 * v65 + 2];
              if (!BYTE4(v65))
              {
                goto LABEL_136;
              }

              v68 = *(v17 + 48) + 8 * v53;
              v69 = v3;
              v70 = v2;
              v71 = v44;
              v72 = v55;
              v67 = WGSL::satisfyOrPromote(v67, BYTE4(v65), *v5);
              v55 = v72;
              v44 = v71;
              v2 = v70;
              v3 = v69;
              v54 = v68;
              v6 = v91;
              if (v67)
              {
                goto LABEL_136;
              }

              __break(0xC471u);
LABEL_198:
              JUMPOUT(0x225766EC0);
            }

LABEL_97:
            if (!v55 || *(v55 + 48) != 10)
            {
              break;
            }

            v55 = (v55 + 8);
          }

          if (!v57)
          {
            break;
          }

          v59 = *(v57 + 24);
          if (v59 <= 1)
          {
            if (*(v57 + 24))
            {
              if (v59 != 1)
              {
                goto LABEL_120;
              }

              if (*(v55 + 48) != 2)
              {
                goto LABEL_185;
              }

              v56 = (v57 + 4);
            }

            else
            {
              if (*(v55 + 48) != 1)
              {
                goto LABEL_185;
              }

              v56 = (v57 + 2);
            }
          }

          else
          {
            switch(v59)
            {
              case 2u:
                if (*(v55 + 48) != 7)
                {
                  goto LABEL_185;
                }

                v56 = (v57 + 2);
                break;
              case 7u:
                v56 = v57;
                if (*(v55 + 48) != 3)
                {
                  goto LABEL_185;
                }

                break;
              case 8u:
                v56 = v57;
                if (*(v55 + 48) != 12)
                {
                  goto LABEL_185;
                }

                break;
              default:
                goto LABEL_120;
            }
          }
        }

        v59 = MEMORY[0x18];
LABEL_120:
        if (v59 == 3)
        {
          v60 = 0;
          goto LABEL_137;
        }

        if (!v57 || v59 != 4)
        {
          if (v59 == 10)
          {
            goto LABEL_135;
          }

LABEL_185:
          mpark::throw_bad_variant_access(v55);
        }

        v61 = *v57;
        v62 = *(v57 + 4);
        if (v62 == 1)
        {
          goto LABEL_129;
        }

        if (v62)
        {
          goto LABEL_185;
        }

        v63 = *(v5 + 5);
        if (*v63 <= v61)
        {
          __break(0xC471u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(0xC471u);
          JUMPOUT(0x225766FB8);
        }

        v64 = *&v63[2 * v61 + 1];
        if ((v64 & 0x100000000) == 0)
        {
          goto LABEL_196;
        }

        LOBYTE(v61) = v64;
LABEL_129:
        v57 = (*v5 + qword_2258826A0[v61]);
LABEL_135:
        v67 = *v57;
LABEL_136:
        v60 = WGSL::conversionRank(v55, v67, v51);
        if (v60 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x225766F78);
        }

LABEL_137:
        if (v53 >= *v44)
        {
          __break(0xC471u);
          JUMPOUT(0x225766F18);
        }

        *&v93[4 * v53] = v60;
        v73 = WGSL::OverloadResolver::materialize(v5, v54);
        if (v53 >= *v95)
        {
          __break(0xC471u);
          JUMPOUT(0x225766F38);
        }

        *(v95 + ++v53) = v73;
        v48 = *(v5 + 2);
        v9 = v94;
      }

      while (v53 < *(v48 + 3));
      v47 = v95;
      v74 = WGSL::OverloadResolver::materialize(v5, (v17 + 80));
      if (v74)
      {
        goto LABEL_145;
      }

LABEL_148:
      v6 &= 0xFFFFFFFFFFFFFF00;
      if (v47)
      {
LABEL_149:
        WTF::fastFree(v47, v8);
      }

      if (v44)
      {
        WTF::fastFree(v44, v8);
      }

      v20 = 0;
LABEL_13:
      if (i >= *v9)
      {
        __break(0xC471u);
        JUMPOUT(0x225766EE0);
      }

      v21 = &v10[10 * i];
      if (*(v21 + 32) != v20)
      {
        if (!*(v21 + 32))
        {
          *v21 = v6;
          *(v21 + 1) = v3;
          *(v21 + 2) = v2;
          *(v21 + 3) = v96;
          *(v21 + 32) = 1;
          v2 = 0;
          v3 = 0;
          if (v20)
          {
            goto LABEL_29;
          }

          goto LABEL_9;
        }

        v24 = *(v21 + 2);
        *(v21 + 2) = 0;
        if (v24)
        {
          WTF::fastFree(v24, v8);
        }

        v25 = *(v21 + 1);
        *(v21 + 1) = 0;
        if (v25)
        {
          WTF::fastFree(v25, v8);
        }

        *(v21 + 32) = 0;
LABEL_28:
        if (v20)
        {
          goto LABEL_29;
        }

        goto LABEL_9;
      }

      if (!*(v21 + 32))
      {
        goto LABEL_28;
      }

      v22 = *(v21 + 1);
      *v21 = v6;
      *(v21 + 1) = v3;
      if (v22)
      {
        WTF::fastFree(v22, v8);
      }

      v23 = *(v21 + 2);
      *(v21 + 2) = v2;
      if (v23)
      {
        WTF::fastFree(v23, v8);
      }

      v2 = 0;
      v3 = 0;
      *(v21 + 3) = v96;
      if (v20)
      {
LABEL_29:
        if (v2)
        {
          WTF::fastFree(v2, v8);
        }

        if (v3)
        {
          WTF::fastFree(v3, v8);
        }
      }

LABEL_9:
      v15 = *(v5 + 1);
    }
  }

  v97[0] = 0;
  v100 = 0;
  if (!*v9)
  {
    goto LABEL_172;
  }

  v75 = v9 + 40 * *v9 + 8;
  do
  {
    if (*(v10 + 32) == 1)
    {
      if (v100 != 1)
      {
        std::__optional_storage_base<WGSL::ViableOverload,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WGSL::ViableOverload,false> const&>(v97, v10);
        goto LABEL_156;
      }

      v76 = *(v10 + 1);
      if (v76)
      {
        v77 = *v76;
        if (v77)
        {
          v78 = 0;
          v79 = v98;
          v80 = *v98;
          v81 = 1;
          while (v80)
          {
            v82 = v76[v81];
            v83 = *(v98 + v81 * 4);
            if (v82 > v83)
            {
              goto LABEL_156;
            }

            v78 |= v82 < v83;
            --v80;
            ++v81;
            if (!--v77)
            {
              if (v78)
              {
                v84 = v99;
                v98 = 0;
                *&v99 = 0;
                std::__optional_storage_base<WGSL::ViableOverload,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WGSL::ViableOverload,false> const&>(v97, v10);
                if (v84)
                {
                  WTF::fastFree(v84, v85);
                }

                WTF::fastFree(v79, v85);
              }

              goto LABEL_156;
            }
          }

          __break(0xC471u);
          goto LABEL_198;
        }
      }
    }

LABEL_156:
    v10 += 10;
  }

  while (v10 != v75);
  if ((v100 & 1) == 0)
  {
LABEL_172:
    *a2 = 0;
    a2[16] = 0;
    goto LABEL_173;
  }

  *a2 = v99;
  a2[16] = 1;
  if (v98)
  {
    WTF::fastFree(v98, v8);
  }

LABEL_173:
  v86 = *v9;
  if (v86)
  {
    v87 = 40 * v86;
    v88 = v9 + 24;
    do
    {
      if (v88[16] == 1)
      {
        v89 = *v88;
        *v88 = 0;
        if (v89)
        {
          WTF::fastFree(v89, v8);
        }

        v90 = *(v88 - 1);
        *(v88 - 1) = 0;
        if (v90)
        {
          WTF::fastFree(v90, v8);
        }
      }

      v88 += 40;
      v87 -= 40;
    }

    while (v87);
  }

  return WTF::fastFree(v9, v8);
}

unsigned __int8 *WGSL::OverloadResolver::materialize(unsigned __int8 *result, void *a2)
{
  v2 = result;
  v3 = *a2;
  LODWORD(v4) = *(*a2 + 24);
  if (v4 == 255)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 + 24);
  }

  if (v5 <= 4)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          goto LABEL_123;
        }

        result = WGSL::OverloadResolver::materialize(result, v3 + 8);
        if (result)
        {
          v26 = result;
          v27 = *v2;
          v28 = *v3;

          return WGSL::TypeStore::textureType(v27, v28, v26);
        }

        return result;
      }

      if (v5 != 3)
      {
        if (v4 != 4)
        {
          goto LABEL_123;
        }

        v4 = *v3;
        if (v3[4] != 1)
        {
          if (v3[4])
          {
            goto LABEL_123;
          }

          v37 = *(result + 5);
          if (*v37 <= v4)
          {
            __break(0xC471u);
            JUMPOUT(0x225767608);
          }

          v4 = *&v37[2 * v4 + 1];
          if ((v4 & 0x100000000) == 0)
          {
            goto LABEL_89;
          }
        }

        v38 = v4;
        if (v4 <= 0x10u)
        {
          v39 = *result;
          v40 = 1 << v38;
          if ((v40 & 0x14493) != 0)
          {
            return v39[9];
          }

          else if ((v40 & 0x2924) != 0)
          {
            return v39[7];
          }

          else
          {
            return v39[8];
          }
        }

        return result;
      }

      if (v4 != 3)
      {
        goto LABEL_123;
      }

      if (v3[8] == 1)
      {
        LODWORD(v4) = *(v3 + 1);
        v15 = v3[16];
        if (v15 != 1)
        {
LABEL_28:
          if (v15)
          {
            goto LABEL_123;
          }

          v16 = *(v3 + 3);
          v17 = *(result + 5);
          if (*v17 <= v16)
          {
            __break(0xC471u);
            JUMPOUT(0x225767628);
          }

          v18 = *&v17[2 * v16 + 1];
          if ((v18 & 0x100000000) == 0)
          {
            goto LABEL_89;
          }

          goto LABEL_99;
        }
      }

      else
      {
        if (v3[8])
        {
          goto LABEL_123;
        }

        v13 = *(v3 + 1);
        v14 = *(result + 5);
        if (*v14 <= v13)
        {
          __break(0xC471u);
          JUMPOUT(0x2257675E8);
        }

        v4 = *&v14[2 * v13 + 1];
        if ((v4 & 0x100000000) == 0)
        {
          goto LABEL_89;
        }

        v15 = v3[16];
        if (v15 != 1)
        {
          goto LABEL_28;
        }
      }

      LODWORD(v18) = *(v3 + 3);
LABEL_99:
      v51 = *result;
      v52 = *v3;

      return WGSL::TypeStore::textureStorageType(v51, v52, v4, v18);
    }

    if (!v5)
    {
      if (*(*a2 + 24))
      {
        goto LABEL_123;
      }

      result = WGSL::OverloadResolver::materialize(result, v3 + 8);
      if (!result)
      {
        return result;
      }

      v21 = result;
      if (v3[4] == 1)
      {
        v24 = *v2;
        v25 = *v3;
      }

      else
      {
        if (v3[4])
        {
          goto LABEL_123;
        }

        v22 = *v3;
        v23 = v2[5];
        if (*v23 <= v22)
        {
          __break(0xC471u);
          JUMPOUT(0x225767668);
        }

        v4 = *&v23[2 * v22 + 1];
        if ((v4 & 0x100000000) == 0)
        {
          goto LABEL_89;
        }

        v24 = *v2;
        v25 = v4;
      }

      return WGSL::TypeStore::vectorType(v24, v25, v21);
    }

    if (v4 != 1)
    {
      goto LABEL_123;
    }

    result = WGSL::OverloadResolver::materialize(result, v3 + 16);
    if (!result)
    {
      return result;
    }

    v41 = result;
    if (v3[4] == 1)
    {
      LODWORD(v4) = *v3;
      v44 = v3[12];
      if (v44 != 1)
      {
LABEL_86:
        if (v44)
        {
          goto LABEL_123;
        }

        v45 = *(v3 + 2);
        v46 = v2[5];
        if (*v46 <= v45)
        {
          goto LABEL_135;
        }

        v47 = *&v46[2 * v45 + 1];
        if ((v47 & 0x100000000) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_113;
      }
    }

    else
    {
      if (v3[4])
      {
        goto LABEL_123;
      }

      v42 = *v3;
      v43 = v2[5];
      if (*v43 <= v42)
      {
        __break(0xC471u);
        JUMPOUT(0x2257676A8);
      }

      v4 = *&v43[2 * v42 + 1];
      if ((v4 & 0x100000000) == 0)
      {
        goto LABEL_89;
      }

      v44 = v3[12];
      if (v44 != 1)
      {
        goto LABEL_86;
      }
    }

    LODWORD(v47) = *(v3 + 2);
LABEL_113:
    v54 = *v2;

    return WGSL::TypeStore::matrixType(v54, v4, v47, v41);
  }

  if (v5 <= 7)
  {
    if (v5 != 5)
    {
      if (v5 != 6)
      {
        goto LABEL_90;
      }

      if (v4 != 6)
      {
        goto LABEL_123;
      }

      result = WGSL::OverloadResolver::materialize(result, v3 + 8);
      if (!result)
      {
        return result;
      }

      v6 = result;
      if (v3[4] == 1)
      {
        LODWORD(v4) = *v3;
        v9 = v3[20];
        if (v9 != 1)
        {
LABEL_15:
          if (v9)
          {
            goto LABEL_123;
          }

          v10 = *(v3 + 4);
          v11 = v2[5];
          if (*v11 <= v10)
          {
            __break(0xC471u);
            JUMPOUT(0x2257676C8);
          }

          v12 = *&v11[2 * v10 + 1];
          if ((v12 & 0x100000000) == 0)
          {
            goto LABEL_89;
          }

          goto LABEL_118;
        }

LABEL_117:
        LODWORD(v12) = *(v3 + 4);
LABEL_118:
        v55 = *v2;

        return WGSL::TypeStore::pointerType(v55, v4, v6, v12);
      }

      if (v3[4])
      {
        goto LABEL_123;
      }

      v7 = *v3;
      v8 = v2[5];
      if (*v8 <= v7)
      {
        __break(0xC471u);
        JUMPOUT(0x225767648);
      }

      v4 = *&v8[2 * v7 + 1];
      if ((v4 & 0x100000000) != 0)
      {
        v9 = v3[20];
        if (v9 != 1)
        {
          goto LABEL_15;
        }

        goto LABEL_117;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      if (v4 == 7)
      {
        result = WGSL::OverloadResolver::materialize(v2, v3);
        if (result)
        {
          v49 = result;
          v50 = *v2;

          return WGSL::TypeStore::arrayType(v50, v49, v48, 0);
        }

        return result;
      }

LABEL_123:
      mpark::throw_bad_variant_access(result);
    }

    if (v4 != 5)
    {
      goto LABEL_123;
    }

    result = WGSL::OverloadResolver::materialize(result, v3 + 8);
    if (!result)
    {
      return result;
    }

    v29 = result;
    if (v3[4] == 1)
    {
      LODWORD(v4) = *v3;
      v32 = v3[20];
      if (v32 != 1)
      {
LABEL_61:
        if (v32)
        {
          goto LABEL_123;
        }

        v33 = *(v3 + 4);
        v34 = v2[5];
        if (*v34 <= v33)
        {
          __break(0xC471u);
          JUMPOUT(0x2257676E8);
        }

        v35 = *&v34[2 * v33 + 1];
        if ((v35 & 0x100000000) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (v3[4])
      {
        goto LABEL_123;
      }

      v30 = *v3;
      v31 = v2[5];
      if (*v31 <= v30)
      {
        __break(0xC471u);
        JUMPOUT(0x225767688);
      }

      v4 = *&v31[2 * v30 + 1];
      if ((v4 & 0x100000000) == 0)
      {
        goto LABEL_89;
      }

      v32 = v3[20];
      if (v32 != 1)
      {
        goto LABEL_61;
      }
    }

    LODWORD(v35) = *(v3 + 4);
LABEL_105:
    v53 = *v2;

    return WGSL::TypeStore::referenceType(v53, v4, v29, v35, 0);
  }

  if (v5 != 8)
  {
    if (v5 != 9)
    {
      if (v4 == 10)
      {
        return *v3;
      }

      goto LABEL_123;
    }

    if (v4 != 9)
    {
      goto LABEL_123;
    }

    v19 = *v3;
    v20 = *(result + 4);
    if (*v20 > *v3)
    {
      result = *&v20[2 * v19 + 2];
      if (result)
      {
        result = WGSL::satisfyOrPromote(result, BYTE4(v19), *v2);
        if (!result)
        {
          __break(0xC471u);
          JUMPOUT(0x2257675C8);
        }
      }

      return result;
    }

LABEL_135:
    __break(0xC471u);
    JUMPOUT(0x2257675A8);
  }

  if (v4 != 8)
  {
    goto LABEL_123;
  }

  result = WGSL::OverloadResolver::materialize(result, *a2);
  if (result)
  {
    v36 = 184;
    if (*(*v2 + 56) == result)
    {
      v36 = 176;
    }

    return *(*v2 + v36);
  }

  return result;
}

uint64_t WGSL::OverloadResolver::materialize(uint64_t result, unint64_t this, char a3)
{
  if (a3 == 1)
  {
    return this;
  }

  if (a3)
  {
    mpark::throw_bad_variant_access(result);
  }

  v3 = *(result + 40);
  if (*v3 <= this)
  {
    result = 186;
    __break(0xC471u);
  }

  else
  {
    this = *&v3[2 * this + 1];
    if ((this & 0x100000000) != 0)
    {
      return this;
    }
  }

  __break(1u);
  return result;
}

uint64_t WGSL::OverloadResolver::unify(mpark *a1, unsigned int *a2, void *a3)
{
  while (1)
  {
    while (1)
    {
      a2 = *a2;
      if (!a2)
      {
        if (!a3)
        {
LABEL_72:
          v3 = MEMORY[0x18];
          goto LABEL_73;
        }

        while (1)
        {
          v4 = *(a3 + 48) == 10;
          if (*(a3 + 48) != 10)
          {
            goto LABEL_14;
          }

          if (*(a3 + 1) == 2)
          {
            return 0;
          }

          a3 = a3[1];
          if (!a3)
          {
            goto LABEL_14;
          }
        }
      }

      v3 = *(a2 + 24);
      switch(v3)
      {
        case 5u:
          if (!a3 || *(a3 + 48) != 10)
          {
            return 0;
          }

          v8 = *a3;
          if (*(a2 + 4))
          {
            if (*(a2 + 4) != 1)
            {
              goto LABEL_156;
            }

            if (*a2 != v8)
            {
              return 0;
            }
          }

          else
          {
            v22 = *a2;
            v23 = *(a1 + 5);
            if (*v23 <= v22)
            {
              __break(0xC471u);
              JUMPOUT(0x225767E70);
            }

            v24 = &v23[2 * v22];
            v27 = *(v24 + 1);
            v25 = v24 + 1;
            v26 = v27;
            if ((v27 & 0x100000000) == 0)
            {
              *v25 = v8;
              *(v25 + 4) = 1;
              v6 = *(a3 + 1);
              v9 = *(a2 + 20);
              if (*(a2 + 20))
              {
LABEL_35:
                if (v9 != 1)
                {
                  goto LABEL_156;
                }

LABEL_36:
                if (a2[4] != v6)
                {
                  return 0;
                }

                goto LABEL_50;
              }

LABEL_47:
              v28 = a2[4];
              v29 = *(a1 + 5);
              if (*v29 <= v28)
              {
                __break(0xC471u);
                JUMPOUT(0x225767E90);
              }

              v30 = &v29[2 * v28];
              v31 = *(v30 + 1);
              v19 = v30 + 1;
              v20 = v31;
              if ((v31 & 0x100000000) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_49;
            }

            if (v26 != v8)
            {
              return 0;
            }
          }

          v6 = *(a3 + 1);
          v9 = *(a2 + 20);
          if (*(a2 + 20))
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        case 6u:
          if (!a3 || *(a3 + 48) != 11)
          {
            return 0;
          }

          v5 = *a3;
          if (*(a2 + 4))
          {
            if (*(a2 + 4) != 1)
            {
              goto LABEL_156;
            }

            if (*a2 != v5)
            {
              return 0;
            }
          }

          else
          {
            v10 = *a2;
            v11 = *(a1 + 5);
            if (*v11 <= v10)
            {
              __break(0xC471u);
              JUMPOUT(0x225767E30);
            }

            v12 = &v11[2 * v10];
            v15 = *(v12 + 1);
            v13 = v12 + 1;
            v14 = v15;
            if ((v15 & 0x100000000) == 0)
            {
              *v13 = v5;
              *(v13 + 4) = 1;
              v6 = *(a3 + 1);
              v7 = *(a2 + 20);
              if (*(a2 + 20))
              {
LABEL_27:
                if (v7 != 1)
                {
                  goto LABEL_156;
                }

                goto LABEL_36;
              }

LABEL_41:
              v16 = a2[4];
              v17 = *(a1 + 5);
              if (*v17 <= v16)
              {
                __break(0xC471u);
                JUMPOUT(0x225767E50);
              }

              v18 = &v17[2 * v16];
              v21 = *(v18 + 1);
              v19 = v18 + 1;
              v20 = v21;
              if ((v21 & 0x100000000) == 0)
              {
LABEL_43:
                *v19 = v6;
                *(v19 + 4) = 1;
LABEL_50:
                a2 += 2;
                ++a3;
                goto LABEL_65;
              }

LABEL_49:
              if (v20 != v6)
              {
                return 0;
              }

              goto LABEL_50;
            }

            if (v14 != v5)
            {
              return 0;
            }
          }

          v6 = *(a3 + 1);
          v7 = *(a2 + 20);
          if (*(a2 + 20))
          {
            goto LABEL_27;
          }

          goto LABEL_41;
        case 9u:
          v37 = *a2;
          v38 = *(a1 + 4);
          if (*v38 <= *a2)
          {
            __break(0xC471u);
            JUMPOUT(0x225767EB0);
          }

          v39 = v38 + 2;
          v40 = *&v39[2 * v37];
          if (!v40)
          {
            if (BYTE4(v37))
            {
              if (!a3)
              {
                return 0;
              }

              v58 = a3;
              while (v58[48] == 10)
              {
                result = 0;
                v58 = *(v58 + 1);
                if (!v58)
                {
                  return result;
                }
              }

              result = 0;
              if (v58[48])
              {
                return result;
              }

              v59 = *v58;
              if (v59 <= 2)
              {
                if (v59)
                {
                  if (v59 == 1)
                  {
                    if ((v37 & 0x400000000) == 0)
                    {
                      return 0;
                    }
                  }

                  else if ((v37 & 0x800000000) == 0)
                  {
                    return 0;
                  }
                }

                else if (BYTE4(v37) == 1)
                {
                  return 0;
                }
              }

              else if (v59 > 4)
              {
                if (v59 == 5)
                {
                  if ((v37 & 0x2000000000) == 0)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (v59 != 7)
                  {
                    return result;
                  }

                  if ((v37 & 0x100000000) == 0)
                  {
                    return 0;
                  }
                }
              }

              else if (v59 == 3)
              {
                if ((v37 & 0x7000000000) == 0)
                {
                  return 0;
                }
              }

              else if ((v37 & 0x4000000000) == 0)
              {
                return 0;
              }
            }

            *&v39[2 * v37] = a3;
            return 1;
          }

          v41 = a2;
          v43 = a3;
          v44 = WGSL::conversionRank(*&v39[2 * v37], a3, a3);
          v35 = WGSL::conversionRank(v43, v40, v45);
          if (v44 >= v35)
          {
            return v35 != -1;
          }

          v46 = *v41;
          if (BYTE4(*v41))
          {
            if (!v43)
            {
              return 0;
            }

            v47 = v43;
            while (*(v47 + 48) == 10)
            {
              result = 0;
              v47 = *(v47 + 1);
              if (!v47)
              {
                return result;
              }
            }

            result = 0;
            if (*(v47 + 48))
            {
              return result;
            }

            v60 = *v47;
            if (v60 <= 2)
            {
              if (v60)
              {
                if (v60 == 1)
                {
                  if ((v46 & 0x400000000) == 0)
                  {
                    return 0;
                  }
                }

                else if ((v46 & 0x800000000) == 0)
                {
                  return 0;
                }
              }

              else if (BYTE4(*v41) == 1)
              {
                return 0;
              }
            }

            else if (v60 > 4)
            {
              if (v60 == 5)
              {
                if ((v46 & 0x2000000000) == 0)
                {
                  return 0;
                }
              }

              else
              {
                if (v60 != 7)
                {
                  return result;
                }

                if ((v46 & 0x100000000) == 0)
                {
                  return 0;
                }
              }
            }

            else if (v60 == 3)
            {
              if ((v46 & 0x7000000000) == 0)
              {
                return 0;
              }
            }

            else if ((v46 & 0x4000000000) == 0)
            {
              return 0;
            }
          }

          v61 = *(a1 + 4);
          if (*v61 <= v46)
          {
            __break(0xC471u);
            JUMPOUT(0x225767ED0);
          }

          *&v61[2 * v46 + 2] = v43;
          return 1;
      }

      if (a3)
      {
        break;
      }

      if (v3 < 4)
      {
        return 0;
      }

      a3 = 0;
      v4 = 1;
      if (v3 == 7)
      {
LABEL_62:
        if (v4 || *(a3 + 48) != 3 || *(a3 + 16))
        {
          return 0;
        }

        goto LABEL_65;
      }

LABEL_56:
      if (v3 != 8)
      {
        if (v3 == 4)
        {
          v36 = a3;
          v33 = *(*a1 + qword_2258826A0[WGSL::OverloadResolver::materialize(a1, *a2, *(a2 + 4))]);
          v34 = v36;
          goto LABEL_75;
        }

LABEL_73:
        if (v3 != 10)
        {
LABEL_156:
          mpark::throw_bad_variant_access(a1);
        }

        v33 = *a2;
        v34 = a3;
LABEL_75:
        v35 = WGSL::conversionRank(v34, v33, a3);
        return v35 != -1;
      }

      if (v4 || *(a3 + 48) != 12)
      {
        return 0;
      }

LABEL_65:
      a3 = *a3;
    }

    do
    {
      v4 = *(a3 + 48) == 10;
      if (*(a3 + 48) != 10)
      {
        break;
      }

      if (*(a3 + 1) == 2)
      {
        return 0;
      }

      a3 = a3[1];
    }

    while (a3);
LABEL_14:
    if (!a2)
    {
      goto LABEL_72;
    }

    v3 = *(a2 + 24);
    if (v3 <= 1)
    {
      if (!*(a2 + 24))
      {
        if (!v4 && *(a3 + 48) == 1)
        {
          v48 = a3;
          v49 = a2;
          v50 = a1;
          result = WGSL::OverloadResolver::unify(a1, a2 + 2, *a3);
          if (!result)
          {
            return result;
          }

          v51 = *(v48 + 8);
          v52 = *v49;
          v53 = *(v49 + 4);
          goto LABEL_102;
        }

        return 0;
      }

      if (v3 == 1)
      {
        if (!v4 && *(a3 + 48) == 2)
        {
          v54 = a3;
          v55 = a2;
          v50 = a1;
          result = WGSL::OverloadResolver::unify(a1, a2 + 4, *a3);
          if (result)
          {
            result = WGSL::OverloadResolver::unify(v50, *v55, *(v55 + 4), *(v54 + 8));
            if (result)
            {
              v51 = *(v54 + 9);
              v52 = v55[2];
              v53 = *(v55 + 12);
              goto LABEL_102;
            }
          }

          return result;
        }

        return 0;
      }

LABEL_55:
      if (v3 == 7)
      {
        goto LABEL_62;
      }

      goto LABEL_56;
    }

    if (v3 != 2)
    {
      break;
    }

    if (v4 || *(a3 + 48) != 7 || *a2 != *(a3 + 8))
    {
      return 0;
    }

    a2 += 2;
    a3 = *a3;
  }

  if (v3 != 3)
  {
    goto LABEL_55;
  }

  if (v4 || *(a3 + 48) != 8 || *a2 != *a3)
  {
    return 0;
  }

  v56 = a3;
  v57 = a2;
  v50 = a1;
  result = WGSL::OverloadResolver::unify(a1, a2[1], *(a2 + 8), *(a3 + 1));
  if (!result)
  {
    return result;
  }

  v51 = *(v56 + 2);
  v52 = v57[3];
  v53 = *(v57 + 16);
LABEL_102:

  return WGSL::OverloadResolver::unify(v50, v52, v53, v51);
}

uint64_t WGSL::OverloadResolver::unify(mpark *a1, unsigned int a2, char a3, int a4)
{
  if (a3)
  {
    if (a3 != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return a2 == a4;
  }

  else
  {
    v5 = *(a1 + 5);
    if (*v5 <= a2)
    {
      result = 186;
      __break(0xC471u);
    }

    else
    {
      v6 = &v5[2 * a2];
      v9 = *(v6 + 1);
      v7 = v6 + 1;
      v8 = v9;
      if ((v9 & 0x100000000) != 0)
      {
        return v8 == a4;
      }

      else
      {
        *v7 = a4;
        result = 1;
        *(v7 + 4) = 1;
      }
    }
  }

  return result;
}

WTF *WGSL::resolveOverloads@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = *(a2 + 3);
  if (!v6)
  {
    v12 = 0;
    v31 = a1;
    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = 0;
    goto LABEL_38;
  }

  v7 = *a2;
  v8 = 88 * v6 - 88;
  if (v8 <= 0x57)
  {
    v9 = 0;
    v10 = 0;
    v11 = *a2;
LABEL_22:
    v20 = v7 + 88 * v6;
    do
    {
      if (v9 <= *(v11 + 12))
      {
        v9 = *(v11 + 12);
      }

      if (v10 <= *(v11 + 36))
      {
        v10 = *(v11 + 36);
      }

      v11 += 88;
    }

    while (v11 != v20);
    goto LABEL_28;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v8 / 0x58 + 1;
  v11 = v7 + 88 * (v17 & 0x7FFFFFFFFFFFFFELL);
  v18 = (v7 + 100);
  v19 = v17 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    if (v13 <= *(v18 - 22))
    {
      v13 = *(v18 - 22);
    }

    if (v14 <= *v18)
    {
      v14 = *v18;
    }

    if (v15 <= *(v18 - 16))
    {
      v15 = *(v18 - 16);
    }

    if (v16 <= v18[6])
    {
      v16 = v18[6];
    }

    v18 += 44;
    v19 -= 2;
  }

  while (v19);
  if (v13 <= v14)
  {
    v9 = v14;
  }

  else
  {
    v9 = v13;
  }

  if (v15 <= v16)
  {
    v10 = v16;
  }

  else
  {
    v10 = v15;
  }

  if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_22;
  }

LABEL_28:
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  if (!v9)
  {
    v35 = 0;
    if (v10)
    {
      goto LABEL_30;
    }

LABEL_37:
    v12 = 0;
    goto LABEL_38;
  }

  v21 = WTF::fastMalloc((8 * v9 + 8));
  *v21 = v9;
  v35 = v21;
  if (!v10)
  {
    goto LABEL_37;
  }

LABEL_30:
  v22 = 8 * v10;
  v23 = WTF::fastMalloc((v22 | 4));
  v12 = v23;
  *v23 = v10;
  v24 = v23 + 1;
  if (v22 == 8)
  {
    goto LABEL_44;
  }

  v25 = ((v22 - 8) >> 3) + 1;
  v24 += 8 * (v25 & 0x3FFFFFFFFFFFFFFELL);
  v26 = v23 + 4;
  v27 = v25 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    *(v26 - 12) = 0;
    *(v26 - 4) = 0;
    *(v26 - 8) = 0;
    *v26 = 0;
    v26 += 16;
    v27 -= 2;
  }

  while (v27);
  if (v25 != (v25 & 0x3FFFFFFFFFFFFFFELL))
  {
LABEL_44:
    do
    {
      *v24 = 0;
      v24[4] = 0;
      v24 += 8;
    }

    while (v24 != v23 + ((8 * v10) | 4));
  }

LABEL_38:
  v36 = v12;
  WGSL::OverloadResolver::resolve(&v31, a5);
  v29 = v36;
  v36 = 0;
  if (v29)
  {
    WTF::fastFree(v29, v28);
  }

  result = v35;
  v35 = 0;
  if (result)
  {
    return WTF::fastFree(result, v28);
  }

  return result;
}

uint64_t std::__optional_storage_base<WGSL::ViableOverload,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WGSL::ViableOverload,false> const&>(uint64_t result, void *a2)
{
  v3 = result;
  if (*(result + 32) == *(a2 + 32))
  {
    if (!*(result + 32))
    {
      return result;
    }

    v4 = a2[1];
    *result = *a2;
    if (!v4)
    {
      v7 = 0;
      goto LABEL_31;
    }

    v5 = *v4;
    v6 = 4 * v5;
    v7 = WTF::fastMalloc((4 * v5 + 4));
    *v7 = v5;
    if (!v5)
    {
      goto LABEL_31;
    }

    if ((v6 - 4) < 0x1C)
    {
      v8 = v7;
      v9 = v4;
    }

    else
    {
      v8 = v7;
      v9 = v4;
      if ((v7 - v4) >= 0x20)
      {
        v10 = ((v6 - 4) >> 2) + 1;
        v11 = v10 & 0x7FFFFFFFFFFFFFF8;
        v8 = &v7[v11];
        v9 = &v4[v11];
        v12 = (v4 + 5);
        v13 = v7 + 5;
        v14 = v10 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v15 = *v12;
          *(v13 - 1) = *(v12 - 1);
          *v13 = v15;
          v12 += 2;
          v13 += 2;
          v14 -= 8;
        }

        while (v14);
        if (v10 == (v10 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_31:
          v31 = *(v3 + 8);
          *(v3 + 8) = v7;
          if (v31)
          {
            WTF::fastFree(v31, a2);
          }

          v32 = a2[2];
          if (!v32)
          {
            result = 0;
            goto LABEL_57;
          }

          v33 = *v32;
          v34 = 8 * v33;
          result = WTF::fastMalloc((8 * v33 + 8));
          *result = v33;
          if (v33)
          {
            if ((v34 - 8) < 0x18)
            {
              v35 = result;
              v36 = v32;
            }

            else
            {
              v35 = result;
              v36 = v32;
              if ((result - v32) >= 0x20)
              {
                v37 = ((v34 - 8) >> 3) + 1;
                v38 = 2 * (v37 & 0x3FFFFFFFFFFFFFFCLL);
                v35 = result + v38 * 4;
                v36 = &v32[v38];
                v39 = (v32 + 6);
                v40 = (result + 24);
                v41 = v37 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v42 = *v39;
                  *(v40 - 1) = *(v39 - 1);
                  *v40 = v42;
                  v39 += 2;
                  v40 += 2;
                  v41 -= 4;
                }

                while (v41);
                if (v37 == (v37 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_57;
                }
              }
            }

            v56 = (v35 + 8);
            do
            {
              v57 = *(v36 + 1);
              v36 += 2;
              *v56++ = v57;
            }

            while (v36 != &v32[v34 / 4]);
          }

LABEL_57:
          v58 = *(v3 + 16);
          *(v3 + 16) = result;
          if (v58)
          {
            result = WTF::fastFree(v58, a2);
          }

          *(v3 + 24) = a2[3];
          return result;
        }
      }
    }

    v29 = v8 + 1;
    do
    {
      v30 = v9[1];
      ++v9;
      *v29++ = v30;
    }

    while (v9 != &v4[v6 / 4]);
    goto LABEL_31;
  }

  if (!*(result + 32))
  {
    v17 = a2[1];
    *result = *a2;
    if (!v17)
    {
      v20 = 0;
      goto LABEL_45;
    }

    v18 = *v17;
    v19 = 4 * v18;
    v20 = WTF::fastMalloc((4 * v18 + 4));
    *v20 = v18;
    if (!v18)
    {
      goto LABEL_45;
    }

    if ((v19 - 4) < 0x1C)
    {
      v21 = v20;
      v22 = v17;
    }

    else
    {
      v21 = v20;
      v22 = v17;
      if ((v20 - v17) >= 0x20)
      {
        v23 = ((v19 - 4) >> 2) + 1;
        v24 = v23 & 0x7FFFFFFFFFFFFFF8;
        v21 = &v20[v24];
        v22 = &v17[v24];
        v25 = (v17 + 5);
        v26 = v20 + 5;
        v27 = v23 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = *v25;
          *(v26 - 1) = *(v25 - 1);
          *v26 = v28;
          v25 += 2;
          v26 += 2;
          v27 -= 8;
        }

        while (v27);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_45:
          *(v3 + 8) = v20;
          v45 = a2[2];
          if (v45)
          {
            v46 = *v45;
            v47 = 8 * v46;
            result = WTF::fastMalloc((8 * v46 + 8));
            *result = v46;
            if (v46)
            {
              if ((v47 - 8) < 0x18)
              {
                v48 = result;
                v49 = v45;
              }

              else
              {
                v48 = result;
                v49 = v45;
                if ((result - v45) >= 0x20)
                {
                  v50 = ((v47 - 8) >> 3) + 1;
                  v51 = 2 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
                  v48 = result + v51 * 4;
                  v49 = &v45[v51];
                  v52 = (v45 + 6);
                  v53 = (result + 24);
                  v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v55 = *v52;
                    *(v53 - 1) = *(v52 - 1);
                    *v53 = v55;
                    v52 += 2;
                    v53 += 2;
                    v54 -= 4;
                  }

                  while (v54);
                  if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_63;
                  }
                }
              }

              v59 = (v48 + 8);
              do
              {
                v60 = *(v49 + 1);
                v49 += 2;
                *v59++ = v60;
              }

              while (v49 != &v45[v47 / 4]);
            }
          }

          else
          {
            result = 0;
          }

LABEL_63:
          v61 = a2[3];
          *(v3 + 16) = result;
          *(v3 + 24) = v61;
          *(v3 + 32) = 1;
          return result;
        }
      }
    }

    v43 = v21 + 1;
    do
    {
      v44 = v22[1];
      ++v22;
      *v43++ = v44;
    }

    while (v22 != &v17[v19 / 4]);
    goto LABEL_45;
  }

  v16 = *(result + 16);
  *(v3 + 16) = 0;
  if (v16)
  {
    WTF::fastFree(v16, a2);
  }

  result = *(v3 + 8);
  *(v3 + 8) = 0;
  if (result)
  {
    result = WTF::fastFree(result, a2);
  }

  *(v3 + 32) = 0;
  return result;
}

WTF *WGSL::parse<WGSL::Lexer<unsigned char>>@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v259 = 0;
  v258 = 0u;
  v257 = 0u;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 4);
    *&v257 = v6;
    *(&v257 + 1) = v7;
    if (v7)
    {
      v8 = *v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v257 = 0uLL;
  }

  v256[0] = v8;
  *&v258 = 1;
  DWORD2(v258) = 0;
  v245[0] = a1;
  v245[1] = a1 + 38;
  v245[2] = v256;
  WGSL::Lexer<unsigned char>::lex(v256, a2, &v246);
  v249 = 0;
  v250 = 0;
  if (!v248)
  {
    __break(0xC471u);
    JUMPOUT(0x22576A0ACLL);
  }

  v251 = *v246;
  v252 = *(v246 + 4);
  v12 = *v246;
  if (*v246 <= 8u)
  {
    if (((1 << v12) & 0x38) != 0)
    {
      v253 = *(v246 + 3);
    }

    else if (((1 << v12) & 0xC4) != 0)
    {
      v253 = *(v246 + 3);
    }

    else if (v12 == 8)
    {
      v253 = 0;
      v192 = *(v246 + 3);
      if (v192)
      {
        atomic_fetch_add_explicit(v192, 2u, memory_order_relaxed);
        v193 = v253;
        v253 = v192;
        if (v193)
        {
          if (atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v193, v9);
          }
        }
      }
    }
  }

  v238 = a3;
  v254 = v252;
  v231 = DWORD2(v252);
  v255 = DWORD2(v252);
  v13 = v252;
  *v265 = 0u;
  *&v265[16] = v267;
  v266 = 16;
  v14 = 16;
  v15 = v248 - 1;
  if (v248 == 1)
  {
    v68 = 0;
    v67 = 0;
  }

  else
  {
    v3 = 0;
    v16 = 0;
    while (2)
    {
      v17 = v248;
      if (v16 >= v248)
      {
        __break(0xC471u);
        JUMPOUT(0x22576A05CLL);
      }

      v18 = v246;
      v19 = (v246 + 32 * v16);
      switch(*v19)
      {
        case 8:
        case 0x22:
          v28 = v16 + 1;
          if (v16 + 1 >= v248)
          {
            __break(0xC471u);
            JUMPOUT(0x22576A08CLL);
          }

          v29 = (v246 + 32 * v28);
          if (*v29 != 55)
          {
            goto LABEL_15;
          }

          v30 = *v265;
          v31 = *&v265[8];
          if (*v265)
          {
            v32 = v266;
            if (*&v265[8] + 1 != *v265)
            {
              v33 = v266;
              v34 = *&v265[8];
              goto LABEL_115;
            }
          }

          else
          {
            v33 = v266;
            if (*&v265[8])
            {
              v32 = v266;
              if (*&v265[8] != v266 - 1)
              {
                v34 = *&v265[8];
                goto LABEL_115;
              }
            }

            else
            {
              v32 = 0;
              v34 = 0;
              if (v266)
              {
                goto LABEL_115;
              }
            }
          }

          v43 = *&v265[16];
          v44 = v32 + (v32 >> 2);
          if (v44 < 0x10)
          {
            *&v265[16] = v267;
            LODWORD(v266) = 16;
            v47 = v267;
            v48 = 16;
            v49 = *&v265[8] - *v265;
            if (*&v265[8] >= *v265)
            {
              goto LABEL_88;
            }
          }

          else
          {
            if (v44 >= 0xFFFFFFF)
            {
              __break(0xC471u);
              JUMPOUT(0x22576A0A4);
            }

            v45 = v13;
            v46 = v44 + 1;
            v47 = WTF::fastMalloc((16 * (v44 + 1)));
            v48 = v46;
            LODWORD(v266) = v46;
            *&v265[16] = v47;
            v30 = *v265;
            v31 = *&v265[8];
            v13 = v45;
            v49 = *&v265[8] - *v265;
            if (*&v265[8] >= *v265)
            {
LABEL_88:
              v21 = __OFSUB__(v32, v30);
              v50 = v32 - v30;
              if (v32 < v30)
              {
                goto LABEL_474;
              }

              if (v49 == -1)
              {
                v49 = v32 - v30;
                v21 = __OFSUB__(v30, v48);
                if (v30 > v48)
                {
                  goto LABEL_474;
                }
              }

              else
              {
                v21 = __OFSUB__(v50, v49);
                if (v50 < v49)
                {
                  goto LABEL_474;
                }

                v21 = __OFSUB__(v30, v48);
                if (v30 > v48)
                {
                  goto LABEL_474;
                }
              }

              if (v49)
              {
                v61 = (v43 + 16 * v30);
                v62 = 16 * v49;
                v63 = &v47[v30];
                do
                {
                  v64 = *v61++;
                  *v63++ = v64;
                  v62 -= 16;
                }

                while (v62);
              }

              goto LABEL_109;
            }
          }

          v21 = __OFSUB__(v31, v32);
          if (v31 > v32)
          {
            goto LABEL_474;
          }

          if (v31)
          {
            v51 = 16 * v31;
            v52 = v43;
            do
            {
              v53 = *v52;
              v52 = (v52 + 16);
              *v47++ = v53;
              v51 -= 16;
            }

            while (v51);
            v48 = v266;
            v30 = *v265;
          }

          v54 = v32 - v30;
          v21 = __OFSUB__(v32, v30);
          v55 = v32 - v30;
          if (v32 < v30)
          {
            goto LABEL_474;
          }

          v21 = __OFSUB__(v48, v55);
          if (v48 < v55)
          {
            goto LABEL_474;
          }

          if (v32 != v30)
          {
            v56 = 16 * v30;
            v57 = (v43 + 16 * v30);
            v58 = *&v265[16] + 16 * v48;
            v59 = v56 - 16 * v32;
            do
            {
              v60 = *v57++;
              *(v58 + v59) = v60;
              v59 += 16;
            }

            while (v59);
          }

          *v265 = v48 - v54;
LABEL_109:
          if (v267 != v43 && v43)
          {
            if (*&v265[16] == v43)
            {
              *&v265[16] = 0;
              LODWORD(v266) = 0;
            }

            WTF::fastFree(v43, v9);
          }

          v34 = *&v265[8];
          v33 = v266;
LABEL_115:
          v21 = __OFSUB__(v34, v33);
          if (v34 >= v33)
          {
            goto LABEL_474;
          }

          v65 = *&v265[16] + 16 * v34;
          *v65 = v29;
          *(v65 + 8) = v3;
          if (v34 == v266 - 1)
          {
            v66 = 0;
          }

          else
          {
            v66 = v34 + 1;
          }

          *&v265[8] = v66;
          v16 = v28;
LABEL_15:
          if (++v16 < v15)
          {
            continue;
          }

          v14 = v266;
          v67 = *v265;
          v68 = *&v265[8];
          if (*v265 > *&v265[8])
          {
            v21 = __OFSUB__(*&v265[8], v266);
            if (*&v265[8] > v266)
            {
              goto LABEL_474;
            }

            v21 = __OFSUB__(*v265, v266);
            if (*v265 > v266)
            {
              goto LABEL_474;
            }

            goto LABEL_133;
          }

          v21 = __OFSUB__(*v265, v266);
          if (*v265 > v266)
          {
LABEL_474:
            __break(1u);
            goto LABEL_475;
          }

          break;
        case 0x25:
        case 0x41:
          v26 = *&v265[8];
          if (v266)
          {
            while (*v265 != v26)
            {
              v27 = *&v265[16] + 16 * v266 - 16;
              if (v26)
              {
                v21 = __OFSUB__(v26 - 1, v266);
                if (v26 - 1 >= v266)
                {
                  goto LABEL_474;
                }

                v27 = *&v265[16] + 16 * (v26 - 1);
              }

              if (*(v27 + 8) != v3)
              {
                break;
              }

              if (!v26)
              {
                v26 = v266;
              }

              *&v265[8] = --v26;
              v21 = __OFSUB__(v26, v266);
              if (v26 > v266 || v26 == v266)
              {
                goto LABEL_474;
              }
            }
          }

          else
          {
            v21 = __OFSUB__(*v265, *&v265[8]);
            if (*v265 != *&v265[8])
            {
              goto LABEL_474;
            }
          }

          goto LABEL_15;
        case 0x2B:
        case 0x2F:
        case 0x31:
        case 0x49:
          v20 = *&v265[8] - *v265;
          if (*&v265[8] >= *v265)
          {
            v21 = __OFSUB__(v266, *v265);
            v35 = v266 - *v265;
            if (v266 < *v265)
            {
              goto LABEL_474;
            }

            if (v20 == -1)
            {
              v21 = 0;
              v36 = 1;
            }

            else
            {
              v21 = __OFSUB__(v35, v20);
              v36 = v35 >= v20;
            }

            if (!v36)
            {
              goto LABEL_474;
            }
          }

          else
          {
            v21 = __OFSUB__(*&v265[8], v266);
            if (*&v265[8] > v266)
            {
              goto LABEL_474;
            }

            v21 = __OFSUB__(v266, *v265);
            if (v266 < *v265)
            {
              goto LABEL_474;
            }
          }

          v3 = 0;
          *v265 = 0;
          *&v265[8] = 0;
          v37 = *&v265[16];
          if (v267 != *&v265[16] && *&v265[16])
          {
            *&v265[16] = 0;
            LODWORD(v266) = 0;
            WTF::fastFree(v37, v9);
            v3 = 0;
          }

          goto LABEL_15;
        case 0x2D:
        case 0x43:
          v3 = (v3 + 1);
          goto LABEL_15;
        case 0x2E:
        case 0x44:
          v24 = *&v265[8];
          while (1)
          {
            v21 = __OFSUB__(*v265, v24);
            if (*v265 == v24)
            {
              break;
            }

            if (v24)
            {
              v21 = __OFSUB__(v24 - 1, v266);
              if (v24 - 1 >= v266)
              {
                goto LABEL_474;
              }

              v25 = *&v265[16] + 16 * (v24 - 1);
            }

            else
            {
              v25 = *&v265[16] + 16 * v266 - 16;
              if (!v266)
              {
                goto LABEL_474;
              }
            }

            if (*(v25 + 8) != v3)
            {
              break;
            }

            if (!v24)
            {
              v24 = v266;
            }

            *&v265[8] = --v24;
            v21 = __OFSUB__(v24, v266);
            if (v24 > v266 || v24 == v266)
            {
              goto LABEL_474;
            }
          }

          if (v3)
          {
            v3 = (v3 - 1);
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_15;
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
          v22 = *&v265[8];
          v21 = __OFSUB__(*v265, *&v265[8]);
          if (*v265 == *&v265[8])
          {
            goto LABEL_15;
          }

          v23 = v266;
          if (*&v265[8])
          {
            v21 = __OFSUB__(*&v265[8] - 1, v266);
            if (*&v265[8] - 1 >= v266)
            {
              goto LABEL_474;
            }

            if (*(*&v265[16] + 16 * (*&v265[8] - 1) + 8) != v3)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (!v266)
            {
              goto LABEL_474;
            }

            if (*(*&v265[16] + 16 * v266 - 8) != v3)
            {
              goto LABEL_15;
            }
          }

          if (v248 <= v16)
          {
            __break(0xC471u);
            JUMPOUT(0x22576A094);
          }

          v38 = *v19 - 52;
          v21 = __OFSUB__(v38, 2);
          if (v38 <= 2)
          {
            v39 = dword_225882770[v38];
            *v19 = 51;
            v21 = __OFSUB__(v17, v16 + 1);
            if (v17 <= v16 + 1)
            {
              __break(0xC471u);
              JUMPOUT(0x22576A09CLL);
            }

            *(v18 + 8 * (v16 + 1)) = v39;
          }

          if (v22)
          {
            v40 = v22 - 1;
            v21 = __OFSUB__(v22 - 1, v23);
            if (v22 - 1 >= v23)
            {
              goto LABEL_474;
            }

            v41 = *(*&v265[16] + 16 * v40);
            *&v265[8] = v22 - 1;
            v21 = __OFSUB__(v40, v23);
            v42 = v40 == v23;
            if (v40 > v23)
            {
              goto LABEL_474;
            }
          }

          else
          {
            if (!v23)
            {
              goto LABEL_474;
            }

            v41 = *(*&v265[16] + 16 * v23 - 16);
            *&v265[8] = v23 - 1;
            v21 = (v23 - 1) >= v23;
            v42 = 0;
          }

          if (v42)
          {
            goto LABEL_474;
          }

          *v41 = 83;
          *v19 = 84;
          goto LABEL_15;
        default:
          goto LABEL_15;
      }

      break;
    }
  }

  v69 = v68 - v67;
  v70 = v14 - v67;
  if (v69 == -1)
  {
    v21 = 0;
    v71 = 1;
  }

  else
  {
    v21 = __OFSUB__(v70, v69);
    v71 = v70 >= v69;
  }

  if (!v71)
  {
    goto LABEL_474;
  }

LABEL_133:
  v72 = *&v265[16];
  if (v267 != *&v265[16] && *&v265[16])
  {
    *&v265[16] = 0;
    LODWORD(v266) = 0;
    WTF::fastFree(v72, v9);
  }

  while (1)
  {
LABEL_138:
    v73 = v251;
    if (v251 == 29)
    {
      v3 = v254;
      v15 = v255;
      while (1)
      {
        v75 = (v249 + 1);
        LODWORD(v249) = v75;
        if (v248 <= v75)
        {
          __break(0xC471u);
          JUMPOUT(0x22576A034);
        }

        v76 = v246 + 32 * v75;
        v74 = *v76;
        v251 = *v76;
        v252 = *(v76 + 4);
        v77 = *v76;
        if (*v76 > 8u)
        {
          goto LABEL_142;
        }

        if (((1 << v77) & 0x38) != 0)
        {
          v253 = *(v76 + 3);
        }

        else if (((1 << v77) & 0xC4) != 0)
        {
          v253 = *(v76 + 3);
        }

        else
        {
          if (v77 != 8)
          {
            goto LABEL_142;
          }

          v253 = 0;
          v78 = *(v76 + 3);
          if (v78)
          {
            atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
            v79 = v253;
            v253 = v78;
            if (v79)
            {
              if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v79, v9);
              }
            }
          }
        }

        v74 = v251;
LABEL_142:
        v254 = v252;
        v255 = DWORD2(v252);
        if (v74 != 82)
        {
          v80 = 0;
          while (1)
          {
            if (v74 != 8)
            {
              *v265 = v74;
              LOBYTE(v267[0]) = 1;
              goto LABEL_173;
            }

            *v265 = 8;
            *&v265[4] = v252;
            v266 = 0;
            v81 = v253;
            if (v253)
            {
              atomic_fetch_add_explicit(v253, 2u, memory_order_relaxed);
              v266 = v81;
            }

            LOBYTE(v267[0]) = 0;
            do
            {
              v83 = (v249 + 1);
              LODWORD(v249) = v83;
              if (v248 <= v83)
              {
                __break(0xC471u);
                JUMPOUT(0x22576A024);
              }

              v84 = v246 + 32 * v83;
              v82 = *v84;
              v251 = *v84;
              v252 = *(v84 + 4);
              v85 = *v84;
              if (*v84 <= 8u)
              {
                if (((1 << v85) & 0x38) != 0)
                {
                  v253 = *(v84 + 3);
LABEL_159:
                  v82 = v251;
                  goto LABEL_160;
                }

                if (((1 << v85) & 0xC4) != 0)
                {
                  v253 = *(v84 + 3);
                  goto LABEL_159;
                }

                if (v85 == 8)
                {
                  v253 = 0;
                  v86 = *(v84 + 3);
                  if (v86)
                  {
                    atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                    v87 = v253;
                    v253 = v86;
                    if (v87)
                    {
                      if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v87, v9);
                      }
                    }
                  }

                  goto LABEL_159;
                }
              }

LABEL_160:
              v254 = v252;
              v255 = DWORD2(v252);
            }

            while (v82 == 82);
            if (!LOBYTE(v267[0]))
            {
              if (!WGSL::parseLanguageFeature(&v266))
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v14 = v260;
                goto LABEL_221;
              }

              if (v251 != 48)
              {
                v99 = 4;
                v100 = LOBYTE(v267[0]);
                if (LOBYTE(v267[0]) == 255)
                {
                  goto LABEL_227;
                }

                goto LABEL_222;
              }

              while (2)
              {
                v102 = (v249 + 1);
                LODWORD(v249) = v102;
                if (v248 <= v102)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576A03CLL);
                }

                v103 = v246 + 32 * v102;
                v101 = *v103;
                v251 = *v103;
                v252 = *(v103 + 4);
                v104 = *v103;
                if (*v103 <= 8u)
                {
                  if (((1 << v104) & 0x38) != 0)
                  {
                    v253 = *(v103 + 3);
                    goto LABEL_201;
                  }

                  if (((1 << v104) & 0xC4) != 0)
                  {
                    v253 = *(v103 + 3);
                    goto LABEL_201;
                  }

                  if (v104 == 8)
                  {
                    v253 = 0;
                    v105 = *(v103 + 3);
                    if (v105)
                    {
                      atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
                      v106 = v253;
                      v253 = v105;
                      if (v106)
                      {
                        if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v106, v9);
                        }
                      }
                    }

LABEL_201:
                    v101 = v251;
                  }
                }

                v254 = v252;
                v255 = DWORD2(v252);
                if (v101 != 82)
                {
                  v99 = 0;
                  v100 = LOBYTE(v267[0]);
                  if (LOBYTE(v267[0]) == 255)
                  {
                    goto LABEL_227;
                  }

                  goto LABEL_222;
                }

                continue;
              }
            }

LABEL_173:
            v88 = WGSL::toString();
            if (LOBYTE(v267[0]) != 1)
            {
              goto LABEL_578;
            }

            WGSL::toString();
            if (v274)
            {
              v90 = *(v274 + 1);
              v91 = v273;
              if (v273)
              {
LABEL_176:
                v92 = *(v91 + 4);
                if (v92 < 0)
                {
                  goto LABEL_581;
                }

                v21 = __OFADD__(v92, 12);
                v93 = v92 + 12;
                v94 = v21;
                if (v90 < 0)
                {
                  goto LABEL_581;
                }

                goto LABEL_187;
              }
            }

            else
            {
              v90 = 0;
              v91 = v273;
              if (v273)
              {
                goto LABEL_176;
              }
            }

            v93 = 12;
            if (v89)
            {
              v94 = 1;
            }

            else
            {
              v94 = 0;
            }

            if (v90 < 0)
            {
LABEL_581:
              __break(0xC471u);
              JUMPOUT(0x22576A02CLL);
            }

LABEL_187:
            if (v94)
            {
              goto LABEL_581;
            }

            v21 = __OFADD__(v90, v93);
            v95 = v90 + v93;
            if (v21)
            {
              goto LABEL_581;
            }

            v96 = (v95 + 11);
            if (__OFADD__(v95, 11))
            {
              goto LABEL_581;
            }

            if (!v274)
            {
              if (!v91)
              {
                v98 = 1;
                goto LABEL_214;
              }

LABEL_195:
              v98 = (*(v91 + 16) >> 2) & 1;
              goto LABEL_214;
            }

            v97 = *(v274 + 4);
            v98 = (v97 >> 2) & 1;
            if (v91 && (v97 & 4) != 0)
            {
              goto LABEL_195;
            }

LABEL_214:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v96, v98, "Expected a ", 0xBuLL, v274, ", but got a ", 0xCuLL, v91, &v260);
            v14 = v260;
            if (!v260)
            {
              goto LABEL_581;
            }

            v107 = v273;
            v273 = 0;
            if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v107, v9);
            }

            v108 = v274;
            v274 = 0;
            if (v108 && atomic_fetch_add_explicit(v108, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v108, v9);
            }

LABEL_221:
            v243 = v3;
            v244 = v15 | ((v255 - v15) << 32);
            v80 = 1;
            v99 = 1;
            v100 = LOBYTE(v267[0]);
            if (LOBYTE(v267[0]) == 255)
            {
              goto LABEL_227;
            }

LABEL_222:
            if (!v100 && *v265 == 8)
            {
              v109 = v266;
              v266 = 0;
              if (v109)
              {
                if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v109, v9);
                }
              }
            }

LABEL_227:
            if (v99)
            {
              if (v99 == 4)
              {
                if (v251 == 73)
                {
                  goto LABEL_239;
                }

                WGSL::toString();
                WGSL::toString();
                v11 = v271;
                v10 = v272;
                if (v272)
                {
                  v194 = *(v272 + 4);
                  if (!v271)
                  {
                    goto LABEL_476;
                  }

                  goto LABEL_458;
                }

LABEL_475:
                v194 = 0;
                if (!v11)
                {
LABEL_476:
                  v196 = 12;
                  v197 = v21;
                  if (v194 < 0)
                  {
                    goto LABEL_599;
                  }

                  goto LABEL_480;
                }

LABEL_458:
                v195 = *(v11 + 4);
                if (v195 < 0)
                {
                  goto LABEL_599;
                }

                v21 = __OFADD__(v195, 12);
                v196 = v195 + 12;
                v197 = v21;
                if (v194 < 0)
                {
                  goto LABEL_599;
                }

LABEL_480:
                if (v197)
                {
                  goto LABEL_599;
                }

                v21 = __OFADD__(v194, v196);
                v203 = v194 + v196;
                if (v21)
                {
                  goto LABEL_599;
                }

                v204 = (v203 + 11);
                if (__OFADD__(v203, 11))
                {
                  goto LABEL_599;
                }

                if (v10)
                {
                  v205 = *(v10 + 16);
                  v206 = (v205 >> 2) & 1;
                  if (!v11 || (v205 & 4) == 0)
                  {
LABEL_504:
                    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v204, v206, "Expected a ", 0xBuLL, v10, ", but got a ", 0xCuLL, v11, v265);
                    v14 = *v265;
                    if (*v265)
                    {
                      v211 = v271;
                      v271 = 0;
                      if (v211 && atomic_fetch_add_explicit(v211, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v211, v9);
                      }

                      v212 = v272;
                      v272 = 0;
                      if (v212 && atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v212, v9);
                      }

                      v213 = v15 | ((v255 - v15) << 32);
LABEL_512:
                      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
                      v242 = v213;
                      v191 = v3;
                      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
                      {
                        goto LABEL_525;
                      }

                      goto LABEL_524;
                    }

LABEL_599:
                    __break(0xC471u);
                    JUMPOUT(0x22576A0C4);
                  }
                }

                else if (!v11)
                {
                  v206 = 1;
                  goto LABEL_504;
                }

                v206 = (*(v11 + 16) >> 2) & 1;
                goto LABEL_504;
              }

              if ((v80 & 1) == 0)
              {
                goto LABEL_138;
              }

              if (v14)
              {
                v3 = v243;
                v213 = v244;
                goto LABEL_512;
              }

              v191 = v243;
              v242 = v244;
LABEL_525:
              v190 = v242;
              goto LABEL_526;
            }

            v74 = v251;
            if (v251 == 73)
            {
              while (1)
              {
LABEL_239:
                v111 = (v249 + 1);
                LODWORD(v249) = v111;
                if (v248 <= v111)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22576A044);
                }

                v112 = v246 + 32 * v111;
                v110 = *v112;
                v251 = *v112;
                v252 = *(v112 + 4);
                v113 = *v112;
                if (*v112 > 8u)
                {
                  goto LABEL_238;
                }

                if (((1 << v113) & 0x38) != 0)
                {
                  v253 = *(v112 + 3);
                }

                else if (((1 << v113) & 0xC4) != 0)
                {
                  v253 = *(v112 + 3);
                }

                else
                {
                  if (v113 != 8)
                  {
                    goto LABEL_238;
                  }

                  v253 = 0;
                  v114 = *(v112 + 3);
                  if (v114)
                  {
                    atomic_fetch_add_explicit(v114, 2u, memory_order_relaxed);
                    v115 = v253;
                    v253 = v114;
                    if (v115)
                    {
                      if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v115, v9);
                      }
                    }
                  }
                }

                v110 = v251;
LABEL_238:
                v254 = v252;
                v255 = DWORD2(v252);
                if (v110 != 82)
                {
                  v14 &= 0xFFFFFFFFFFFFFF00;
                  goto LABEL_138;
                }
              }
            }
          }
        }
      }
    }

    if (v251 == 18)
    {
      break;
    }

    if (v251 != 21)
    {
      v175 = v234;
      v174 = v236;
      v176 = v232;
LABEL_417:
      while (v73 != 73)
      {
        if (v73 == 1)
        {
          *v238 = 0;
          *(v238 + 32) = 0;
          goto LABEL_533;
        }

        WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDeclaration(v265, v245);
        v177 = v266;
        if (!v266)
        {
          v184 = v245[0];
          v185 = *(v245[0] + 76);
          if (v185 == *(v245[0] + 72))
          {
            v186 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v245[0] + 64, v185 + 1, v265);
            v185 = *(v184 + 76);
            v187 = *(v184 + 64);
            v188 = *v186;
          }

          else
          {
            v187 = *(v245[0] + 64);
            v188 = *v265;
          }

          *(v187 + 8 * v185) = v188;
          ++*(v184 + 76);
          v178 = v266;
          if (!v266)
          {
            goto LABEL_446;
          }

LABEL_442:
          if (v178 != 255)
          {
            v189 = *v265;
            *v265 = 0;
            if (v189)
            {
              if (atomic_fetch_add_explicit(v189, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v189, v9);
              }
            }
          }

          goto LABEL_446;
        }

        if (v266 != 1)
        {
          goto LABEL_578;
        }

        v174 = *v265;
        if (*v265)
        {
          atomic_fetch_add_explicit(*v265, 2u, memory_order_relaxed);
        }

        v176 = *&v265[8];
        v175 = *&v265[16];
        v178 = v266;
        if (v266)
        {
          goto LABEL_442;
        }

LABEL_446:
        if (v177)
        {
          v233 = v176;
          v235 = v175;
          v237 = v174;
          goto LABEL_450;
        }

        v73 = v251;
      }

      while (1)
      {
        v179 = (v249 + 1);
        LODWORD(v249) = v179;
        if (v248 <= v179)
        {
          __break(0xC471u);
          JUMPOUT(0x22576A04CLL);
        }

        v180 = v246 + 32 * v179;
        v73 = *v180;
        v251 = *v180;
        v252 = *(v180 + 4);
        v181 = *v180;
        if (*v180 > 8u)
        {
          goto LABEL_427;
        }

        if (((1 << v181) & 0x38) != 0)
        {
          v253 = *(v180 + 3);
        }

        else if (((1 << v181) & 0xC4) != 0)
        {
          v253 = *(v180 + 3);
        }

        else
        {
          if (v181 != 8)
          {
            goto LABEL_427;
          }

          v253 = 0;
          v182 = *(v180 + 3);
          if (v182)
          {
            atomic_fetch_add_explicit(v182, 2u, memory_order_relaxed);
            v183 = v253;
            v253 = v182;
            if (v183)
            {
              if (atomic_fetch_add_explicit(v183, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v183, v9);
              }
            }
          }
        }

        v73 = v251;
LABEL_427:
        v254 = v252;
        v255 = DWORD2(v252);
        if (v73 != 82)
        {
          goto LABEL_417;
        }
      }
    }

    v3 = v254;
    v116 = v255;
    do
    {
      v118 = (v249 + 1);
      LODWORD(v249) = v118;
      if (v248 <= v118)
      {
        __break(0xC471u);
        JUMPOUT(0x22576A074);
      }

      v119 = v246 + 32 * v118;
      v117 = *v119;
      v251 = *v119;
      v252 = *(v119 + 4);
      v120 = *v119;
      if (*v119 <= 8u)
      {
        if (((1 << v120) & 0x38) != 0)
        {
          v253 = *(v119 + 3);
LABEL_255:
          v117 = v251;
          goto LABEL_256;
        }

        if (((1 << v120) & 0xC4) != 0)
        {
          v253 = *(v119 + 3);
          goto LABEL_255;
        }

        if (v120 == 8)
        {
          v253 = 0;
          v121 = *(v119 + 3);
          if (v121)
          {
            atomic_fetch_add_explicit(v121, 2u, memory_order_relaxed);
            v122 = v253;
            v253 = v121;
            if (v122)
            {
              if (atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v122, v9);
              }
            }
          }

          goto LABEL_255;
        }
      }

LABEL_256:
      v254 = v252;
      v255 = DWORD2(v252);
    }

    while (v117 == 82);
    v241 = 0;
    while (1)
    {
      if (v117 != 8)
      {
        WGSL::toString();
        WGSL::toString();
        if (v260)
        {
          v199 = *(v260 + 1);
          if (v274)
          {
LABEL_468:
            v200 = *(v274 + 1);
            if (v200 < 0)
            {
              goto LABEL_600;
            }

            v21 = __OFADD__(v200, 12);
            v201 = v200 + 12;
            v202 = v21;
            if (v199 < 0)
            {
              goto LABEL_600;
            }

            goto LABEL_494;
          }
        }

        else
        {
          v199 = 0;
          if (v274)
          {
            goto LABEL_468;
          }
        }

        v201 = 12;
        if (v198)
        {
          v202 = 1;
        }

        else
        {
          v202 = 0;
        }

        if (v199 < 0)
        {
          goto LABEL_600;
        }

LABEL_494:
        if (v202)
        {
          goto LABEL_600;
        }

        v21 = __OFADD__(v199, v201);
        v207 = v199 + v201;
        if (v21)
        {
          goto LABEL_600;
        }

        v208 = (v207 + 11);
        if (__OFADD__(v207, 11))
        {
          goto LABEL_600;
        }

        if (v260)
        {
          v209 = *(v260 + 4);
          v210 = (v209 >> 2) & 1;
          if (!v274 || (v209 & 4) == 0)
          {
LABEL_515:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v208, v210, "Expected a ", 0xBuLL, v260, ", but got a ", 0xCuLL, v274, v265);
            v14 = *v265;
            if (*v265)
            {
              v214 = v274;
              v274 = 0;
              if (v214 && atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v214, v9);
              }

              v215 = v260;
              v260 = 0;
              if (!v215)
              {
                goto LABEL_522;
              }

LABEL_520:
              if (atomic_fetch_add_explicit(v215, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v215, v9);
              }

LABEL_522:
              v242 = v116 | ((v255 - v116) << 32);
              v191 = v3;
              goto LABEL_523;
            }

LABEL_600:
            __break(0xC471u);
            JUMPOUT(0x22576A0CCLL);
          }
        }

        else if (!v274)
        {
          v210 = 1;
          goto LABEL_515;
        }

        v210 = (*(v274 + 16) >> 2) & 1;
        goto LABEL_515;
      }

      v129 = v253;
      if (v253)
      {
        atomic_fetch_add_explicit(v253, 2u, memory_order_relaxed);
      }

      do
      {
        v131 = (v249 + 1);
        LODWORD(v249) = v131;
        if (v248 <= v131)
        {
          __break(0xC471u);
          JUMPOUT(0x22576A054);
        }

        v132 = v246 + 32 * v131;
        v130 = *v132;
        v251 = *v132;
        v252 = *(v132 + 4);
        v133 = *v132;
        if (*v132 <= 8u)
        {
          if (((1 << v133) & 0x38) != 0)
          {
            v253 = *(v132 + 3);
LABEL_285:
            v130 = v251;
            goto LABEL_286;
          }

          if (((1 << v133) & 0xC4) != 0)
          {
            v253 = *(v132 + 3);
            goto LABEL_285;
          }

          if (v133 == 8)
          {
            v253 = 0;
            v134 = *(v132 + 3);
            if (v134)
            {
              atomic_fetch_add_explicit(v134, 2u, memory_order_relaxed);
              v135 = v253;
              v253 = v134;
              if (v135)
              {
                if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v135, v9);
                }
              }
            }

            goto LABEL_285;
          }
        }

LABEL_286:
        v254 = v252;
        v255 = DWORD2(v252);
      }

      while (v130 == 82);
      if (!v129)
      {
        goto LABEL_326;
      }

      v136 = *(v129 + 1);
      v137 = *(v129 + 1);
      if (v136 == "f16" || v137 != 3)
      {
        if (v137 == 3 && v136 == "f16")
        {
          goto LABEL_309;
        }

LABEL_326:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v239 = v3;
        v240 = *v265;
        v242 = v116 | ((v255 - v116) << 32);
        v241 = 1;
        v139 = 1;
        if (v129)
        {
          goto LABEL_327;
        }

        goto LABEL_330;
      }

      if ((*(v129 + 16) & 4) != 0)
      {
        if (*v136 == 102 && *(v136 + 1) == 13873)
        {
          goto LABEL_309;
        }

        goto LABEL_326;
      }

      if (*v136 != 102 || *(v136 + 2) != 3538993)
      {
        goto LABEL_326;
      }

LABEL_309:
      *(v245[0] + 34) |= 1u;
      if (v130 == 48)
      {
        while (1)
        {
          v141 = (v249 + 1);
          LODWORD(v249) = v141;
          if (v248 <= v141)
          {
            __break(0xC471u);
            JUMPOUT(0x22576A064);
          }

          v142 = v246 + 32 * v141;
          v140 = *v142;
          v251 = *v142;
          v252 = *(v142 + 4);
          v143 = *v142;
          if (*v142 > 8u)
          {
            goto LABEL_313;
          }

          if (((1 << v143) & 0x38) != 0)
          {
            v253 = *(v142 + 3);
          }

          else if (((1 << v143) & 0xC4) != 0)
          {
            v253 = *(v142 + 3);
          }

          else
          {
            if (v143 != 8)
            {
              goto LABEL_313;
            }

            v253 = 0;
            v144 = *(v142 + 3);
            if (v144)
            {
              atomic_fetch_add_explicit(v144, 2u, memory_order_relaxed);
              v145 = v253;
              v253 = v144;
              if (v145)
              {
                if (atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v145, v9);
                }
              }
            }
          }

          v140 = v251;
LABEL_313:
          v254 = v252;
          v255 = DWORD2(v252);
          if (v140 != 82)
          {
            v139 = 0;
            goto LABEL_327;
          }
        }
      }

      v139 = 4;
LABEL_327:
      if (atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v129, v9);
      }

LABEL_330:
      if (v139)
      {
        break;
      }

      v117 = v251;
      if (v251 == 73)
      {
        goto LABEL_359;
      }
    }

    if (v139 == 4)
    {
      if (v251 == 73)
      {
        while (1)
        {
LABEL_359:
          v155 = (v249 + 1);
          LODWORD(v249) = v155;
          if (v248 <= v155)
          {
            __break(0xC471u);
            JUMPOUT(0x22576A07CLL);
          }

          v156 = v246 + 32 * v155;
          v154 = *v156;
          v251 = *v156;
          v252 = *(v156 + 4);
          v157 = *v156;
          if (*v156 > 8u)
          {
            goto LABEL_358;
          }

          if (((1 << v157) & 0x38) != 0)
          {
            v253 = *(v156 + 3);
          }

          else if (((1 << v157) & 0xC4) != 0)
          {
            v253 = *(v156 + 3);
          }

          else
          {
            if (v157 != 8)
            {
              goto LABEL_358;
            }

            v253 = 0;
            v158 = *(v156 + 3);
            if (v158)
            {
              atomic_fetch_add_explicit(v158, 2u, memory_order_relaxed);
              v159 = v253;
              v253 = v158;
              if (v159)
              {
                if (atomic_fetch_add_explicit(v159, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v159, v9);
                }
              }
            }
          }

          v154 = v251;
LABEL_358:
          v254 = v252;
          v255 = DWORD2(v252);
          if (v154 != 82)
          {
            v240 &= 0xFFFFFFFFFFFFFF00;
            goto LABEL_138;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v273)
      {
        v222 = *(v273 + 1);
      }

      else
      {
        v222 = 0;
      }

      if (v272)
      {
        v223 = *(v272 + 4);
        if (v223 < 0)
        {
          goto LABEL_602;
        }
      }

      else
      {
        v223 = 0;
      }

      v21 = __OFADD__(v223, 12);
      v224 = v223 + 12;
      v225 = v21;
      if (v222 < 0)
      {
        goto LABEL_602;
      }

      if (v225)
      {
        goto LABEL_602;
      }

      v21 = __OFADD__(v222, v224);
      v226 = v222 + v224;
      if (v21)
      {
        goto LABEL_602;
      }

      v227 = (v226 + 11);
      if (__OFADD__(v226, 11))
      {
        goto LABEL_602;
      }

      if (v273)
      {
        v228 = *(v273 + 4);
        v229 = (v228 >> 2) & 1;
        if (!v272 || (v228 & 4) == 0)
        {
LABEL_571:
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v227, v229, "Expected a ", 0xBuLL, v273, ", but got a ", 0xCuLL, v272, v265);
          v14 = *v265;
          if (*v265)
          {
            v230 = v272;
            v272 = 0;
            if (v230 && atomic_fetch_add_explicit(v230, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v230, v9);
            }

            v215 = v273;
            v273 = 0;
            if (!v215)
            {
              goto LABEL_522;
            }

            goto LABEL_520;
          }

LABEL_602:
          __break(0xC471u);
          JUMPOUT(0x22576A0DCLL);
        }
      }

      else if (!v272)
      {
        v229 = 1;
        goto LABEL_571;
      }

      v229 = (*(v272 + 16) >> 2) & 1;
      goto LABEL_571;
    }

    if (v241)
    {
      v14 = v240;
      if (!v240)
      {
        v191 = v239;
        goto LABEL_525;
      }

      v191 = v239;
      v3 = v239;
LABEL_523:
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
LABEL_524:
        WTF::StringImpl::destroy(v14, v9);
        v191 = v3;
        goto LABEL_525;
      }

      goto LABEL_525;
    }
  }

  do
  {
    v124 = (v249 + 1);
    LODWORD(v249) = v124;
    if (v248 <= v124)
    {
      __break(0xC471u);
      JUMPOUT(0x22576A06CLL);
    }

    v125 = v246 + 32 * v124;
    v123 = *v125;
    v251 = *v125;
    v252 = *(v125 + 4);
    v126 = *v125;
    if (*v125 <= 8u)
    {
      if (((1 << v126) & 0x38) != 0)
      {
        v253 = *(v125 + 3);
LABEL_268:
        v123 = v251;
        goto LABEL_269;
      }

      if (((1 << v126) & 0xC4) != 0)
      {
        v253 = *(v125 + 3);
        goto LABEL_268;
      }

      if (v126 == 8)
      {
        v253 = 0;
        v127 = *(v125 + 3);
        if (v127)
        {
          atomic_fetch_add_explicit(v127, 2u, memory_order_relaxed);
          v128 = v253;
          v253 = v127;
          if (v128)
          {
            if (atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v128, v9);
            }
          }
        }

        goto LABEL_268;
      }
    }

LABEL_269:
    v254 = v252;
    v255 = DWORD2(v252);
  }

  while (v123 == 82);
  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDiagnostic(v265, v245);
  if (!v270)
  {
    if (v251 == 73)
    {
      while (1)
      {
        v149 = (v249 + 1);
        LODWORD(v249) = v149;
        if (v248 <= v149)
        {
          __break(0xC471u);
          JUMPOUT(0x22576A084);
        }

        v150 = v246 + 32 * v149;
        v148 = *v150;
        v251 = *v150;
        v252 = *(v150 + 4);
        v151 = *v150;
        if (*v150 <= 8u)
        {
          if (((1 << v151) & 0x38) != 0)
          {
            v253 = *(v150 + 3);
          }

          else if (((1 << v151) & 0xC4) != 0)
          {
            v253 = *(v150 + 3);
          }

          else
          {
            if (v151 != 8)
            {
              goto LABEL_342;
            }

            v253 = 0;
            v152 = *(v150 + 3);
            if (v152)
            {
              atomic_fetch_add_explicit(v152, 2u, memory_order_relaxed);
              v153 = v253;
              v253 = v152;
              if (v153)
              {
                if (atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v153, v146);
                }
              }
            }
          }

          v148 = v251;
        }

LABEL_342:
        v254 = v252;
        v255 = DWORD2(v252);
        if (v148 != 82)
        {
          v260 = v13;
          v261 = v231;
          v262 = DWORD2(v252) - v231;
          WGSL::AST::Builder::construct<WGSL::AST::DiagnosticDirective,WGSL::SourceSpan,WGSL::AST::Diagnostic,void>();
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v264)
    {
      v161 = *(v264 + 1);
      v162 = v263;
      if (v263)
      {
LABEL_372:
        v163 = *(v162 + 1);
        if (v163 < 0)
        {
          goto LABEL_598;
        }

        v21 = __OFADD__(v163, 12);
        v164 = v163 + 12;
        v165 = v21;
        if (v161 < 0)
        {
          goto LABEL_598;
        }

        goto LABEL_386;
      }
    }

    else
    {
      v161 = 0;
      v162 = v263;
      if (v263)
      {
        goto LABEL_372;
      }
    }

    v164 = 12;
    if (v160)
    {
      v165 = 1;
    }

    else
    {
      v165 = 0;
    }

    if (v161 < 0)
    {
      goto LABEL_598;
    }

LABEL_386:
    if (v165)
    {
      goto LABEL_598;
    }

    v21 = __OFADD__(v161, v164);
    v166 = v161 + v164;
    if (v21)
    {
      goto LABEL_598;
    }

    v167 = (v166 + 11);
    if (__OFADD__(v166, 11))
    {
      goto LABEL_598;
    }

    if (v264)
    {
      v168 = *(v264 + 4);
      v169 = (v168 >> 2) & 1;
      if (!v162 || (v168 & 4) == 0)
      {
LABEL_396:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v167, v169, "Expected a ", 0xBuLL, v264, ", but got a ", 0xCuLL, v162, &v260);
        v147 = v260;
        if (v260)
        {
          v170 = v263;
          v263 = 0;
          if (v170 && atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v170, v146);
          }

          v171 = v264;
          v264 = 0;
          if (v171 && atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v171, v146);
          }

          v233 = v13;
          v235 = v231 | ((v255 - v231) << 32);
          goto LABEL_404;
        }

LABEL_598:
        __break(0xC471u);
        JUMPOUT(0x22576A0BCLL);
      }
    }

    else if (!v162)
    {
      v169 = 1;
      goto LABEL_396;
    }

    v169 = (*(v162 + 16) >> 2) & 1;
    goto LABEL_396;
  }

  if (v270 != 1)
  {
LABEL_578:
    mpark::throw_bad_variant_access(v88);
  }

  v147 = *v265;
  if (*v265)
  {
    atomic_fetch_add_explicit(*v265, 2u, memory_order_relaxed);
  }

  v233 = *&v265[8];
  v235 = *&v265[16];
LABEL_404:
  if (v270 != 255)
  {
    if (v270)
    {
      v173 = *v265;
      *v265 = 0;
      if (!v173)
      {
        goto LABEL_415;
      }
    }

    else
    {
      if (v269 == 1)
      {
        v172 = v268;
        v267[1] = off_2838D37C0;
        v268 = 0;
        if (v172)
        {
          if (atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v172, v146);
          }
        }
      }

      v173 = v267[0];
      *&v265[8] = off_2838D37C0;
      v267[0] = 0;
      if (!v173)
      {
        goto LABEL_415;
      }
    }

    if (atomic_fetch_add_explicit(v173, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v173, v146);
    }
  }

LABEL_415:
  v237 = v147;
LABEL_450:
  v190 = v235;
  v14 = v237;
  v191 = v233;
LABEL_526:
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    v216 = WTF::fastMalloc(0x18);
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  else
  {
    v216 = WTF::fastMalloc(0x18);
  }

  *v216 = v14;
  v216[1] = v191;
  v216[2] = v190;
  *v238 = v216;
  *(v238 + 8) = 0x100000001;
  *(v238 + 16) = 0;
  *(v238 + 24) = 0;
  *(v238 + 32) = 1;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }

    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

LABEL_533:
  if (v251 == 8)
  {
    v217 = v253;
    v253 = 0;
    if (v217)
    {
      if (atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v217, v9);
      }
    }
  }

  result = v246;
  if (v248)
  {
    v219 = 32 * v248;
    v220 = (v246 + 24);
    do
    {
      if (*(v220 - 6) == 8)
      {
        v221 = *v220;
        *v220 = 0;
        if (v221)
        {
          if (atomic_fetch_add_explicit(v221, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v221, v9);
          }
        }
      }

      v220 += 4;
      v219 -= 32;
    }

    while (v219);
    result = v246;
  }

  if (result)
  {
    v246 = 0;
    v247 = 0;
    return WTF::fastFree(result, v9);
  }

  return result;
}