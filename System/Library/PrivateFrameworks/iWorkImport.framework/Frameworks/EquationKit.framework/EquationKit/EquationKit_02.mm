void sub_275CA4A50(void *a1, void *a2, double *a3, double *a4)
{
  v8 = a1[37];
  if (v8)
  {
    v9 = *(a1[33] + 8 * ((v8 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v8 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v9 = (a1 + 7);
  }

  v10 = objc_msgSend_operatorUnicharOrNul(a2, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    v12 = sub_275CAB718(a1, a2);
    if ((*(v9 + 120) & 2) != 0)
    {
      v13 = *(v9 + 136);
    }

    else
    {
      v13 = sub_275CB80E8(v9);
    }

    v17 = (*(**(v9 + 88) + 136))(*(v9 + 88), v11, v9 + 8);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = *a3 + *a4;
    if (v21 == 0.0)
    {
      v22 = v17;
      *a3 = -CGRectGetMinY(*(&v14 - 1));
      v38.origin.x = v17;
      v38.origin.y = v18;
      v38.size.width = v19;
      v38.size.height = v20;
      MaxY = CGRectGetMaxY(v38);
      *a4 = MaxY;
      v21 = MaxY + *a3;
    }

    LODWORD(v35) = 1;
    *(&v35 + 1) = 0;
    v36 = a2;
    v24 = a1[77];
    v37 = 41;
    if (sub_275CAF228(v24, v24 + 32, &v36, &v35))
    {
      v39.origin.x = v17;
      v39.origin.y = v18;
      v39.size.width = v19;
      v39.size.height = v20;
      Height = CGRectGetHeight(v39);
      v26 = sub_275CBB0A0(&v35, v9, Height);
      if (v26 < v21)
      {
        if (v12)
        {
          *a3 = v13 + v26 * 0.5;
          v27 = v26 * 0.5 - v13;
        }

        else if (v21 == 0.0)
        {
          v27 = v26 * 0.5;
          *a3 = v26 * 0.5;
        }

        else
        {
          *a3 = v26 / v21 * *a3;
          v27 = v26 / v21 * *a4;
        }

        *a4 = v27;
        v21 = v26;
      }
    }

    LODWORD(v34) = 1;
    *(&v34 + 1) = 0;
    v28 = a1[77];
    v36 = a2;
    v37 = 40;
    if (sub_275CAF228(v28, v28 + 32, &v36, &v34))
    {
      v40.origin.x = v17;
      v40.origin.y = v18;
      v40.size.width = v19;
      v40.size.height = v20;
      v29 = CGRectGetHeight(v40);
      v30 = sub_275CBB0A0(&v34, v9, v29);
      if (v30 > v21)
      {
        if (v12)
        {
          v31 = v30 * 0.5;
          *a3 = v13 + v31;
          v32 = v31 - v13;
        }

        else if (v21 == 0.0)
        {
          v32 = v30 * 0.5;
          *a3 = v32;
        }

        else
        {
          v33 = v30 / v21;
          *a3 = v33 * *a3;
          v32 = v33 * *a4;
        }

        *a4 = v32;
      }
    }
  }
}

void *sub_275CA4D18(void *a1, void *a2, char a3, double a4)
{
  v20 = a2;
  v7 = sub_275CAFE50(a1 + 59, &v20);
  if ((a3 & 1) != 0 || !v7 || (v10 = v7 + 2, *(v7 + 8) == 1) && *(v7 + 7) < a4)
  {
    v11 = v20;
    v12 = sub_275CA4DE8(a1, v20, v8, v9, a4);
    sub_275CB6328(v18, v11, 1, 0.0, 0.0, v12);
    v13 = sub_275CAFF3C(a1 + 59, &v20);
    if ((v14 & 1) == 0)
    {
      v15 = v19;
      v16 = v18[1];
      *(v13 + 3) = v18[0];
      *(v13 + 5) = v16;
      v13[7] = v15;
    }

    v10 = v13 + 2;
  }

  return v10 + 1;
}

double sub_275CA4DE8(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a1[37];
  if (v8)
  {
    v9 = *(a1[33] + 8 * ((v8 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v8 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v9 = (a1 + 7);
  }

  v10 = objc_msgSend_operatorUnicharOrNul(a2, a2, a3, a4);
  if (v10)
  {
    v11 = a1[37];
    if (v11)
    {
      v12 = *(a1[33] + 8 * ((v11 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v11 + a1[36] - 1) % 0x1AuLL);
    }

    else
    {
      v12 = (a1 + 7);
    }

    v13 = (*(**(v9 + 88) + 136))(*(v9 + 88), v10, v12 + 8);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    LODWORD(v28) = 1;
    *(&v28 + 1) = 0;
    v29 = a2;
    v20 = a1[77];
    v30 = 41;
    if (sub_275CAF228(v20, v20 + 32, &v29, &v28))
    {
      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      Width = CGRectGetWidth(v31);
      v22 = sub_275CBB0A0(&v28, v9, Width);
      if (v22 < a5)
      {
        a5 = v22;
      }
    }

    LODWORD(v27) = 1;
    *(&v27 + 1) = 0;
    v23 = a1[77];
    v29 = a2;
    v30 = 40;
    if (sub_275CAF228(v23, v23 + 32, &v29, &v27))
    {
      v32.origin.x = v13;
      v32.origin.y = v15;
      v32.size.width = v17;
      v32.size.height = v19;
      v24 = CGRectGetWidth(v32);
      v25 = sub_275CBB0A0(&v27, v9, v24);
      if (v25 > a5)
      {
        return v25;
      }
    }
  }

  return a5;
}

void sub_275CA4FB8(void **a1@<X1>, int a2@<W2>, int a3@<W3>, id *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_275C93F58(a4, a1);
  if (a2 == 2)
  {
    v17 = *a1;
    if (a3)
    {
      objc_msgSend_erasableBounds(v17, v12, v13, v14);
      v15 = 0.0 - CGRectGetMidX(v48) + a6;
    }

    else
    {
      objc_msgSend_width(v17, v12, v13, v14);
      v15 = (a5 - v18) * 0.5;
    }
  }

  else
  {
    v15 = 0.0;
    if (a2 == 3)
    {
      objc_msgSend_width(*a1, v12, v13, v14);
      v15 = a5 - v16;
    }
  }

  objc_msgSend_width(*a1, v12, v13, v14);
  v20 = a5 - (v15 + v19);
  if (v15 != 0.0 || v20 != 0.0)
  {
    if (*a1)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v15 != 0.0)
      {
        v24 = [EQKitHSpace alloc];
        v28 = objc_msgSend_initWithWidth_(v24, v25, v26, v27, v15);
        objc_msgSend_addObject_(v23, v29, v28, v30);
      }

      objc_msgSend_addObject_(v23, v21, *a1, v22);
      if (v20 != 0.0)
      {
        v31 = [EQKitHSpace alloc];
        v35 = objc_msgSend_initWithWidth_(v31, v32, v33, v34, v20);
        objc_msgSend_addObject_(v23, v36, v35, v37);
      }

      v38 = [EQKitHBox alloc];
      v41 = objc_msgSend_initWithChildBoxes_(v38, v39, v23, v40);
      sub_275C9404C(a4, v41);
    }

    else
    {
      v42 = [EQKitHSpace alloc];
      v46 = objc_msgSend_initWithWidth_(v42, v43, v44, v45, v15 + v20);
      sub_275C93F10(v47, v46);
      sub_275C93FE8(a4, v47);
      sub_275C93FE4(v47);
    }
  }
}

void sub_275CA5174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

BOOL sub_275CA51B0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[49] + a1[48] - 1;
  if (*(*(a1[45] + 8 * (v4 / 0x19)) + 160 * (v4 % 0x19) + 152) != 1)
  {
    for (i = a1[51]; i != a1[50]; i -= 8)
    {
      v8 = *(i - 8);
      isOperatorPaddingRequired = objc_msgSend_isOperatorPaddingRequired(v8, a2, a3, a4);
      if (isOperatorPaddingRequired)
      {
        return isOperatorPaddingRequired == 2;
      }
    }
  }

  return 0;
}

uint64_t sub_275CA524C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isEmbellishedOperator(a2, a2, a3, a4);
  if (result)
  {
    v10 = a1[58];
    if (v10)
    {
      v11 = objc_msgSend_operatorCore(*(*(a1[54] + (((v10 + a1[57] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v10 + a1[57] - 1) & 0x1FF)), v7, v8, v9);
      return v11 != objc_msgSend_operatorCore(a2, v12, v13, v14);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_275CA52C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_275CC6C88(a3);
  v10 = *a2;
  v11 = *(a2 + 8);
  if (v11 == 1)
  {
    result = sub_275CA5B38(a1, *a2, 1, v9);
    if (result)
    {
      if (v10)
      {
        objc_msgSend_stretchyLayoutSchemata(v10, v12, v13, v14);
      }

      else
      {
        memset(v15, 0, sizeof(v15));
      }

      sub_275CC6CB0(a3, v15);
    }

    else
    {
      if (!v10)
      {
        return result;
      }

      objc_msgSend_layoutSchemata(v10, v12, v13, v14);
      sub_275CC6CB0(a3, v15);
    }

    return sub_275CC6C4C(v15);
  }

  if (v11 == 2)
  {
    return sub_275CA5C1C(a1, *a2, a3, v9);
  }

  if (v10)
  {
    objc_msgSend_layoutSchemata(*a2, v7, v8, v9);
    sub_275CC6CB0(a3, v15);
    return sub_275CC6C4C(v15);
  }

  return result;
}

void sub_275CA53B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275CC6C4C(&a9);
  sub_275CC6C4C(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA53F0(uint64_t *a1, uint64_t a2, int a3, void *a4)
{
  sub_275C93F10(v62, 0);
  v11 = *(a2 + 8);
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  if (((v11 - 5) & 0xFFFFFFFD) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    v14 = objc_msgSend_operatorCore(a4, v8, v9, v10);
    v17 = sub_275CA31A0(a1, v14, v15, v16);
    sub_275CA471C(a1, v17);
    v11 = *(a2 + 8);
  }

  switch(v11)
  {
    case 1:
      v18 = sub_275CC7700(a2);
      sub_275CA43AC(a1, v18, 0);
      break;
    case 2:
      sub_275CA6348(a1, a2, v9, v10, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 3:
      v19 = sub_275CC75EC(a2);
      v23 = objc_msgSend_schemataChild(v19, v20, v21, v22);
      sub_275CA3EF0(a1, v23, 0, v61);
      v24 = [EQKitHVSpace alloc];
      objc_msgSend_width(v61[0], v25, v26, v27);
      v29 = v28;
      objc_msgSend_height(v61[0], v30, v31, v32);
      v34 = v33;
      objc_msgSend_depth(v61[0], v35, v36, v37);
      v42 = objc_msgSend_initWithWidth_height_depth_(v24, v38, v39, v40, v29, v34, v41);
      sub_275C93F10(v60, v42);
      sub_275C93FE8(v62, v60);
      sub_275C93FE4(v60);

      goto LABEL_39;
    case 4:
      sub_275CA70C8(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 5:
      sub_275CA76F8(a1, a2, a3, a4, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 6:
      sub_275CA9794(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 7:
      sub_275CA66F4(a1, a2, a3, a4, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 8:
      sub_275CA7470(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 9:
      sub_275CA75A4(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 10:
      sub_275CA7148(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 11:
      v43 = sub_275CC7608(a2);
      v60[0] = objc_msgSend_schemataOperator(v43, v44, v45, v46);
      v47 = sub_275CAFE50(a1 + 59, v60);
      v48 = v47;
      if (v47)
      {
        sub_275CAB1F8(a1, (v47 + 3), v61);
        sub_275C93FE8(v62, v61);
        sub_275C93FE4(v61);
        sub_275CB0BDC(a1 + 59, v48);
      }

      break;
    case 12:
      sub_275CA8E90(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 13:
      sub_275CA8F60(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 14:
      sub_275CA9034(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 15:
      sub_275CA9108(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 16:
      sub_275CA91DC(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 17:
      sub_275CA92B0(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 18:
      sub_275CA9384(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 19:
      sub_275CA8C74(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 20:
      sub_275CA8DB0(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 21:
      sub_275CAA2BC(v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 22:
      sub_275CA5CD8(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 23:
      sub_275CAA314(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 24:
      sub_275CAA6DC(a1, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 25:
      sub_275CAA7FC(a1, a2, v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 26:
      sub_275CAB0A4(a1);
      break;
    case 27:
      sub_275CAB160(v61);
      sub_275C93FE8(v62, v61);
      goto LABEL_39;
    case 28:
      sub_275CAAE38(a1, a2, v61);
      sub_275C93FE8(v62, v61);
LABEL_39:
      sub_275C93FE4(v61);
      break;
    default:
      break;
  }

  if (v62[0])
  {
    sub_275CA3B14(a1, 0, 1);
    sub_275C93F58(v59, v62);
    v50 = a1[51];
    if (a1[50] == v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = *(v50 - 8);
    }

    sub_275CA45F8(a1, v59, v51, v49);
    sub_275C93FE4(v59);
    sub_275CA3D74(a1, v58);
    sub_275C93FE4(v58);
  }

  if (v13)
  {
    v52 = objc_msgSend_operatorCore(a4, v8, v9, v10);
    v55 = sub_275CA3514(a1, v52, v53, v54);
    sub_275CA4850(a1, v55);
  }

  else if (!a4)
  {
    if (a3)
    {
      v56 = a1[49];
      if (v56)
      {
        *(*(a1[45] + 8 * ((v56 + a1[48] - 1) / 0x19uLL)) + 160 * ((v56 + a1[48] - 1) % 0x19uLL) + 144) = 0;
      }
    }
  }

  return sub_275C93FE4(v62);
}

uint64_t sub_275CA5B38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!objc_msgSend_operatorUnicharOrNul(a2, a2, a3, a4))
  {
    return 0;
  }

  v8 = objc_msgSend_fontManager(*(a1 + 608), v5, v6, v7);
  v10 = *(*sub_275C9B058(v8) + 104);

  return v10();
}

uint64_t sub_275CA5C1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_275CA5B38(a1, a2, 2, a4);
  if (v9)
  {
    if (a2)
    {
      objc_msgSend_stretchyLayoutSchemata(a2, v6, v7, v8);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else if (a2)
  {
    objc_msgSend_layoutSchemata(a2, v6, v7, v8);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  sub_275CC6CB0(a3, &v11);
  sub_275CC6C4C(&v11);
  return v9;
}

void *sub_275CA5CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = sub_275CC7548(a2);
  if (v4)
  {
    v5 = v4;
    sub_275CA3B14(a1, 0, 1);
    v6 = *(a1 + 296);
    if (v6)
    {
      v7 = *(*(a1 + 264) + 8 * ((v6 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v6 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v7 = a1 + 56;
    }

    v71 = sub_275CB7F0C(v7);
    IsQuoted = objc_msgSend_schemataIsQuoted(v5, v8, v9, v10);
    if (IsQuoted)
    {
      sub_275CA6274(__p, "");
      v14 = *(a1 + 616);
      v15 = *(a1 + 408);
      if (*(a1 + 400) == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v15 - 8);
      }

      v81 = v16;
      v82 = 12;
      sub_275CAE8C8(v14, v14 + 80, &v81, __p);
      v18 = objc_alloc(MEMORY[0x277CCAB68]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = objc_msgSend_initWithUTF8String_(v18, v19, __p, v20);
      }

      else
      {
        v21 = objc_msgSend_initWithUTF8String_(v18, v19, __p[0].__r_.__value_.__l.__data_, v20);
      }

      v17 = v21;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v17 = 0;
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = objc_msgSend_schemataChildren(v5, v11, v12, v13);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v77, v83, 16);
    if (v26)
    {
      v27 = *v78;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v78 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v77 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v17)
            {
              objc_msgSend_appendString_(v17, v30, v29, v32);
            }

            else
            {
              v17 = objc_msgSend_mutableCopy(v29, v30, v31, v32);
            }
          }

          else if (objc_opt_respondsToSelector())
          {
            if (v17)
            {
              v36 = objc_msgSend_fontManager(*(a1 + 608), v33, v34, v35);
              v37 = sub_275C9B058(v36);
              v38 = (*(*v37 + 144))(v37, v17, v71);
              v39 = [EQKitStringBox alloc];
              v41 = *(a1 + 296);
              v42 = a1 + 56;
              if (v41)
              {
                v42 = *(*(a1 + 264) + 8 * ((v41 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v41 + *(a1 + 288) - 1) % 0x1AuLL);
              }

              v43 = objc_msgSend_initWithAttributedString_cgColor_(v39, v40, v38, *(v42 + 112));
              sub_275C93F10(__p, v43);
              sub_275C940CC(__p, 5);
              sub_275C93F58(v75, __p);
              v45 = *(a1 + 408);
              if (*(a1 + 400) == v45)
              {
                v46 = 0;
              }

              else
              {
                v46 = *(v45 - 8);
              }

              sub_275CA45F8(a1, v75, v46, v44);
              sub_275C93FE4(v75);

              sub_275C93FE4(__p);
            }

            sub_275CA43AC(a1, v29, 0);
            v17 = 0;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v77, v83, 16);
      }

      while (v26);
    }

    if (!IsQuoted)
    {
      goto LABEL_45;
    }

    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
    }

    sub_275CA6274(__p, "");
    v47 = *(a1 + 616);
    v48 = *(a1 + 408);
    v49 = *(a1 + 400) == v48 ? 0 : *(v48 - 8);
    v81 = v49;
    v82 = 13;
    sub_275CAE8C8(v47, v47 + 80, &v81, __p);
    v50 = objc_alloc(MEMORY[0x277CCAB68]);
    v53 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? objc_msgSend_initWithUTF8String_(v50, v51, __p, v52) : objc_msgSend_initWithUTF8String_(v50, v51, __p[0].__r_.__value_.__l.__data_, v52);
    v56 = v53;
    objc_msgSend_appendString_(v17, v54, v53, v55);

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v17)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_45:
      if (v17)
      {
LABEL_46:
        v57 = objc_msgSend_fontManager(*(a1 + 608), v23, v24, v25);
        v58 = sub_275C9B058(v57);
        v59 = (*(*v58 + 144))(v58, v17, v71);
        v60 = [EQKitStringBox alloc];
        v62 = *(a1 + 296);
        if (v62)
        {
          v63 = *(*(a1 + 264) + 8 * ((v62 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v62 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v63 = a1 + 56;
        }

        v64 = objc_msgSend_initWithAttributedString_cgColor_(v60, v61, v59, *(v63 + 112));
        sub_275C93F10(v74, v64);
        v66 = *(a1 + 408);
        if (*(a1 + 400) == v66)
        {
          v67 = 0;
        }

        else
        {
          v67 = *(v66 - 8);
        }

        sub_275CA45F8(a1, v74, v67, v65);
        sub_275C93FE4(v74);
      }
    }

    sub_275CA3D74(a1, v73);
    sub_275C93FE4(v73);
  }

  return sub_275C93F10(a3, 0);
}

void sub_275CA621C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_275CA6274(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
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

uint64_t sub_275CA632C(uint64_t a1)
{
  v1 = *(a1 + 408);
  if (*(a1 + 400) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 8);
  }
}

void sub_275CA6348(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = sub_275CC776C(a2, a2, a3, a4);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v53, v58, 16);
  if (v11)
  {
    v12 = *v54;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        if (objc_msgSend_isEmbellishedOperator(v14, v8, v9, v10))
        {
          v15 = objc_msgSend_operatorCore(v14, v8, v9, v10);
          if (sub_275CABF64(a1, v15))
          {
            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v53, v58, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:
  v17 = sub_275CC5BA0(v6, v8, v9, v10);
  v29 = objc_msgSend_count(v17, v18, v19, v20) == 1 && (Object = objc_msgSend_firstObject(v17, v21, v22, v23), (v46[0] = objc_msgSend_operatorCore(Object, v25, v26, v27)) != 0) && (v28 = sub_275CB01C0(a1 + 59, v46)) != 0 && *(v28 + 8) == 1;
  if (((v16 | v29) & 1) != 0 && (v30 = a1[49] + a1[48] - 1, sub_275CD2A44((*(a1[45] + 8 * (v30 / 0x19)) + 160 * (v30 % 0x19)))))
  {
    sub_275CA3B14(a1, 1, 1);
    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v21, &v49, v57, 16);
  if (v34)
  {
    v35 = *v50;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v6);
        }

        v37 = *(*(&v49 + 1) + 8 * j);
        if (v16)
        {
          if (objc_msgSend_isEmbellishedOperator(*(*(&v49 + 1) + 8 * j), v31, v32, v33))
          {
            v38 = objc_msgSend_operatorCore(v37, v31, v32, v33);
            if (sub_275CABF64(a1, v38))
            {
              sub_275C93F10(v48, 0);
              sub_275CA45F8(a1, v48, v37, v39);
              v40 = v48;
LABEL_33:
              sub_275C93FE4(v40);
              continue;
            }
          }
        }

        if (v29 && objc_msgSend_isEmbellishedOperator(v37, v31, v32, v33))
        {
          sub_275C93F10(v47, 0);
          sub_275CA45F8(a1, v47, v37, v41);
          v40 = v47;
          goto LABEL_33;
        }

        sub_275CAC0B0(a1, v37, v17, v33);
        sub_275CA43AC(a1, v37, 0);
        sub_275CAC148(a1, v37, v42, v43);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v31, &v49, v57, 16);
    }

    while (v34);
  }

  sub_275C93F10(a5, 0);
  if ((v16 | v29))
  {
    sub_275CAC1A4(a1, v17);
    if (v44)
    {
      sub_275CA3D74(a1, v46);
      sub_275C93FE8(a5, v46);
      sub_275C93FE4(v46);
    }
  }
}

void sub_275CA66AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275C93FE4(va);
  sub_275C93FE4(a4);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA66F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 296);
  if (v9)
  {
    v10 = *(*(a1 + 264) + 8 * ((v9 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v10 = a1 + 56;
  }

  v11 = sub_275CC7628(a2);
  v15 = objc_msgSend_schemataNumerator(v11, v12, v13, v14);
  sub_275CA3F54(a1, v15, *(v10 + 16) ^ 1, 0, 0, 0, 0, v155);
  v19 = objc_msgSend_schemataDenominator(v11, v16, v17, v18);
  sub_275CA3F54(a1, v19, *(v10 + 16) ^ 1, 0, 0, 1, 0, v153);
  if (*(v10 + 120))
  {
    v20 = *(v10 + 128);
  }

  else
  {
    v20 = sub_275CB80C0(v10);
  }

  v21 = *(a1 + 408);
  if (*(a1 + 400) == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v21 - 8);
  }

  v26 = sub_275CA3458(a1, 36, v22, v20);
  v27 = 0.0;
  if (v26 >= 0.0)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0.0;
  }

  if (v28 > 0.0)
  {
    v29 = objc_msgSend_fontManager(*(a1 + 608), v23, v24, v25);
    v30 = sub_275C9B058(v29);
    v31 = *(a1 + 296);
    if (v31)
    {
      v32 = *(*(a1 + 264) + 8 * ((v31 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v31 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v32 = a1 + 56;
    }

    v27 = (*(*v30 + 40))(v30, 25, v32 + 8, v20);
  }

  v33 = v155[0];
  v34 = v153[0];
  objc_msgSend_width(v155[0], v23, v24, v25);
  v36 = v35;
  objc_msgSend_width(v34, v37, v38, v39);
  v41 = v40.n128_f64[0];
  if (v36 > v40.n128_f64[0])
  {
    v40.n128_f64[0] = v36;
  }

  v144 = v40.n128_f64[0];
  v42 = *(v10 + 88);
  if (*(v10 + 120))
  {
    v40.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v40.n128_f64[0] = sub_275CB80C0(v10);
  }

  v44 = (*(*v42 + 40))(v42, 3, v10 + 8, v40);
  v45 = *(v10 + 88);
  if (*(v10 + 120))
  {
    v43.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v43.n128_f64[0] = sub_275CB80C0(v10);
  }

  v47 = (*(*v45 + 40))(v45, 4, v10 + 8, v43);
  v48 = *(v10 + 120);
  if ((v48 & 2) != 0)
  {
    v145 = *(v10 + 136);
  }

  else
  {
    v145 = sub_275CB80E8(v10);
    v48 = *(v10 + 120);
  }

  v49 = *(v10 + 88);
  if (v48)
  {
    v46.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v46.n128_f64[0] = sub_275CB80C0(v10);
  }

  v50 = (*(*v49 + 40))(v49, 2, v10 + 8, v46);
  objc_msgSend_depth(v33, v51, v52, v53);
  v57 = v44 - v145;
  v58 = v28 * 0.5;
  v59 = v57 - v28 * 0.5;
  v61 = v50;
  if (v50 <= v59 - v60)
  {
    objc_msgSend_depth(v33, v54, v55, v56);
    v61 = v59 - v62;
  }

  objc_msgSend_height(v34, v54, v55, v56);
  v66 = v47 + v145 - v58;
  if (v50 <= v66 - v67)
  {
    objc_msgSend_height(v34, v63, v64, v65);
    v50 = v66 - v68;
  }

  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v152 = 2;
  v70 = *(a1 + 616);
  v71 = *(a1 + 408);
  if (*(a1 + 400) == v71)
  {
    v72 = 0;
  }

  else
  {
    v72 = *(v71 - 8);
  }

  v148 = v72;
  v149 = 24;
  sub_275C8D3A8(v70, v70 + 128, &v148, &v152);
  v151 = 2;
  v73 = *(a1 + 616);
  v74 = *(a1 + 408);
  if (*(a1 + 400) == v74)
  {
    v75 = 0;
  }

  else
  {
    v75 = *(v74 - 8);
  }

  v148 = v75;
  v149 = 25;
  sub_275C8D3A8(v73, v73 + 128, &v148, &v151);
  v78 = v144 + v27 * 2.0;
  if (v152 == 3)
  {
    v79 = v78 - v36;
  }

  else
  {
    v79 = 0.0;
    if (v152 == 2)
    {
      v79 = (v78 - v36) * 0.5;
    }
  }

  if (v151 == 3)
  {
    v80 = v78 - v41;
  }

  else
  {
    v80 = 0.0;
    if (v151 == 2)
    {
      v80 = (v78 - v41) * 0.5;
    }
  }

  if (v79 == 0.0)
  {
    objc_msgSend_addObject_(v69, v76, v33, v77);
  }

  else
  {
    sub_275CA3B14(a1, 1, 0);
    sub_275CA452C(a1, v79);
    sub_275C93F10(v150, v33);
    sub_275CA45F8(a1, v150, 0, v81);
    sub_275C93FE4(v150);
    sub_275CA3D74(a1, &v148);
    if (v148)
    {
      objc_msgSend_addObject_(v69, v82, v148, v83);
    }

    sub_275C93FE4(&v148);
  }

  v84 = [EQKitVSpace alloc];
  v88 = objc_msgSend_initWithHeight_depth_(v84, v85, v86, v87, v61, 0.0);
  objc_msgSend_addObject_(v69, v89, v88, v90);

  v91 = [EQKitRule alloc];
  v94 = *(a1 + 296);
  if (v94)
  {
    v95 = *(*(a1 + 264) + 8 * ((v94 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v94 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v95 = a1 + 56;
  }

  v96 = objc_msgSend_initWithHeight_depth_width_cgColor_(v91, v92, *(v95 + 112), v93, v58, v58, v78);
  objc_msgSend_addObject_(v69, v97, v96, v98);

  v99 = [EQKitVSpace alloc];
  v103 = objc_msgSend_initWithHeight_depth_(v99, v100, v101, v102, v50, 0.0);
  objc_msgSend_addObject_(v69, v104, v103, v105);

  if (v80 == 0.0)
  {
    objc_msgSend_addObject_(v69, v106, v34, v107);
  }

  else
  {
    sub_275CA3B14(a1, 1, 0);
    sub_275CA452C(a1, v80);
    sub_275C93F10(v147, v34);
    sub_275CA45F8(a1, v147, 0, v108);
    sub_275C93FE4(v147);
    sub_275CA3D74(a1, &v148);
    if (v148)
    {
      objc_msgSend_addObject_(v69, v109, v148, v110);
    }

    sub_275C93FE4(&v148);
  }

  v111 = [EQKitOffsetVBox alloc];
  v113 = objc_msgSend_initWithChildBoxes_pivotIndex_offset_(v111, v112, v69, 2, v145);
  sub_275C93F10(a5, v113);

  *(a5 + 32) = *(a5 + 32) & 0xFFF0 | 0xA;
  sub_275C9422C(a5, v155);
  sub_275C9422C(a5, v153);
  sub_275C941E0(a5, 1);

  v114 = *(a1 + 296);
  if (v114)
  {
    v115 = *(*(a1 + 264) + 8 * ((v114 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v114 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v115 = a1 + 56;
  }

  if (*(v115 + 16))
  {
    goto LABEL_72;
  }

  if ((v156 & 0x1C00u) <= 0x1000 || (v154 & 0x1C00u) <= 0x1000)
  {
    if ((v156 & 0x1000) != 0)
    {
      if ((v154 & 0x1000) != 0)
      {
        v117 = 3;
      }

      else
      {
        v117 = 1;
      }

      goto LABEL_80;
    }

LABEL_72:
    v117 = 1;
    goto LABEL_80;
  }

  if (v114)
  {
    v116 = *(*(a1 + 264) + 8 * ((v114 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v114 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v116 = a1 + 56;
  }

  if (*(v116 + 8) <= 0)
  {
    v117 = 3;
  }

  else
  {
    v117 = 4;
  }

LABEL_80:
  sub_275C940CC(a5, v117);
  if (a3)
  {
    v121 = objc_msgSend_fontManager(*(a1 + 608), v118, v119, v120);
    v122 = sub_275C9B058(v121);
    v124 = *(a1 + 296);
    if (v124)
    {
      v125 = *(*(a1 + 264) + 8 * ((v124 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v124 + *(a1 + 288) - 1) % 0x1AuLL);
      v126 = v125 + 8;
    }

    else
    {
      v126 = a1 + 64;
      v125 = a1 + 56;
    }

    if (*(v125 + 120))
    {
      v123.n128_u64[0] = *(v125 + 128);
    }

    else
    {
      v123.n128_f64[0] = sub_275CB80C0(v125);
    }

    v127 = (*(*v122 + 40))(v122, 26, v126, v123);
    v133 = objc_msgSend_operatorCore(a4, v128, v129, v130);
    if (v133)
    {
      v134 = sub_275CA31A0(a1, v133, v131, v132);
      v137 = sub_275CA3514(a1, v133, v135, v136);
      if (v127 <= v134)
      {
        v138 = v134;
      }

      else
      {
        v138 = v127;
      }

      if (v127 <= v137)
      {
        v139 = v137;
      }

      else
      {
        v139 = v127;
      }

      v127 = v138;
    }

    else
    {
      v139 = v127;
    }

    sub_275CA471C(a1, v127);
    sub_275C93F58(v146, a5);
    v141 = *(a1 + 408);
    if (*(a1 + 400) == v141)
    {
      v142 = 0;
    }

    else
    {
      v142 = *(v141 - 8);
    }

    sub_275CA45F8(a1, v146, v142, v140);
    sub_275C93FE4(v146);
    sub_275CA4850(a1, v139);
    sub_275C93F10(&v148, 0);
    sub_275C93FE8(a5, &v148);
    sub_275C93FE4(&v148);
  }

  sub_275C93FE4(v153);
  return sub_275C93FE4(v155);
}

void sub_275CA6FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_275C93FE4(v41);
  sub_275C93FE4(&a41);
  sub_275C93FE4(v42 - 200);
  _Unwind_Resume(a1);
}

void sub_275CA70C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_275CC7468(a2);
  v9 = objc_msgSend_schemataKernel(v5, v6, v7, v8);
  v13 = objc_msgSend_schemataSubscript(v5, v10, v11, v12);
  v17 = objc_msgSend_schemataSuperscript(v5, v14, v15, v16);

  sub_275CAC5E0(a1, v9, v13, v17, a3);
}

uint64_t sub_275CA7148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 296);
  if (v5)
  {
    v6 = *(*(a1 + 264) + 8 * ((v5 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v5 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v6 = a1 + 56;
  }

  v7 = sub_275CC75B8(a2);
  v8 = *(v6 + 88);
  v12 = objc_msgSend_schemataTokenString(v7, v9, v10, v11);
  v13 = (*(*v8 + 72))(v8, v12, v6 + 8);
  v14 = [EQKitStringBox alloc];
  v16 = objc_msgSend_initWithAttributedString_cgColor_(v14, v15, v13, *(v6 + 112));
  v23 = objc_msgSend_schemataUnicharOrNul(v7, v17, v18, v19);
  v24 = 0.0;
  if (v23)
  {
    v25 = *(a1 + 408);
    v26 = (*(a1 + 400) == v25 ? objc_msgSend_operatorCore(0, v20, v21, v22) : objc_msgSend_operatorCore(*(v25 - 8), v20, v21, v22));
    if (sub_275CAB718(a1, v26) && ((*(**(v6 + 88) + 128))(*(v6 + 88), v23, v6 + 8) & 1) == 0)
    {
      objc_msgSend_depth(v16, v27, v28, v22);
      v30 = v29;
      objc_msgSend_height(v16, v31, v32, v33);
      v35 = v34;
      objc_msgSend_depth(v16, v36, v37, v38);
      v40 = v30 + (v35 + v39) * -0.5;
      if ((*(v6 + 120) & 2) != 0)
      {
        v41 = *(v6 + 136);
      }

      else
      {
        v41 = sub_275CB80E8(v6);
      }

      v24 = v40 + v41;
    }
  }

  v42 = v24 + sub_275CAB7D4(a1, 3, v23, v22, 0.0);
  if (v42 == 0.0)
  {
    v46 = v16;
  }

  else
  {
    v43 = [EQKitVShift alloc];
    v46 = objc_msgSend_initWithBox_offset_(v43, v44, v16, v45, v42);
  }

  sub_275C93F10(a3, v46);
  v50 = *(a1 + 408);
  if (*(a1 + 400) == v50)
  {
    v51 = objc_msgSend_operatorCore(0, v47, v48, v49);
  }

  else
  {
    v51 = objc_msgSend_operatorCore(*(v50 - 8), v47, v48, v49);
  }

  v55 = v51;
  v56 = objc_msgSend_operatorDictionary(*(a1 + 608), v52, v53, v54);
  v60 = objc_msgSend_operatorId(v55, v57, v58, v59);
  v61 = sub_275CA3338(a1, v55);
  v62 = sub_275CC8220(v56, v60, v61);
  if (v62 && (v62[6] & 0x40) != 0)
  {
    objc_msgSend_width(v46, v63, v64, v65);
    sub_275C93D90(v69, v46, v66 * 0.5);
    sub_275C94168(a3, 1, v69);
    sub_275C93E08(v69);
  }

  if ((*(**(v6 + 88) + 112))(*(v6 + 88), v23, v6 + 8))
  {
    v67 = 5;
  }

  else
  {
    v67 = 2;
  }

  return sub_275C940CC(a3, v67);
}

void sub_275CA7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_275C93E08(&a9);
  sub_275C93FE4(v9);
  _Unwind_Resume(a1);
}

void sub_275CA7470(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[37];
  if (v4)
  {
    v5 = *(a1[33] + 8 * ((v4 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v4 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v5 = (a1 + 7);
  }

  v6 = *(v5 + 88);
  v7 = sub_275CC75B8(a2);
  v11 = objc_msgSend_schemataTokenString(v7, v8, v9, v10);
  v12 = (*(*v6 + 72))(v6, v11, v5 + 8);
  v13 = [EQKitStringBox alloc];
  v15 = objc_msgSend_initWithAttributedString_cgColor_(v13, v14, v12, *(v5 + 112));
  v16 = sub_275C93F10(a3, v15);
  sub_275C940CC(v16, 5);
  v17 = *(v5 + 20);
  v18 = v17 > 0xD;
  v19 = (1 << v17) & 0x3018;
  if (!v18 && v19 != 0)
  {
    *(a3 + 32) = *(a3 + 32) & 0xFF3F | 0x80;
  }
}

void sub_275CA75A4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[37];
  if (v5)
  {
    v6 = *(a1[33] + 8 * ((v5 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v5 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v6 = (a1 + 7);
  }

  v7 = *(v6 + 88);
  v8 = sub_275CC75B8(a2);
  v12 = objc_msgSend_schemataTokenString(v8, v9, v10, v11);
  v13 = (*(*v7 + 72))(v7, v12, v6 + 8);
  v14 = [EQKitStringBox alloc];
  v16 = objc_msgSend_initWithAttributedString_cgColor_(v14, v15, v13, *(v6 + 112));
  v17 = sub_275C93F10(a3, v16);
  sub_275C940CC(v17, 5);
  sub_275CAB9AC(a1, v16);
  sub_275C93D90(v19, v16, v18);
  sub_275C94168(a3, 2, v19);
  sub_275C93E08(v19);
}

void sub_275CA76D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_275C93E08(&a9);
  sub_275C93FE4(v9);
  _Unwind_Resume(a1);
}

void sub_275CA76F8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, id *a5@<X8>)
{
  v7 = sub_275CC7484(a2);
  v11 = objc_msgSend_schemataBase(v7, v8, v9, v10);
  v15 = objc_msgSend_schemataUnder(v7, v12, v13, v14);
  v19 = objc_msgSend_schemataOver(v7, v16, v17, v18);
  v20 = *(a1 + 296);
  if (v20)
  {
    v21 = *(*(a1 + 264) + 8 * ((v20 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v20 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v21 = a1 + 56;
  }

  sub_275C93F10(a5, 0);
  if ((*(v21 + 16) & 1) == 0 && sub_275CABD5C(a1, v11, v22, v23))
  {
    sub_275CAC5E0(a1, v11, v15, v19, &v261);
    sub_275C93FE8(a5, &v261);
    sub_275C93FE4(&v261);
    v27 = 0.0;
    goto LABEL_186;
  }

  LODWORD(v259[0]) = 0;
  LODWORD(v258[0]) = 0;
  if (v15)
  {
    v28 = *(a1 + 616);
    v261 = v15;
    LODWORD(v262) = 5;
    if ((sub_275C8D3A8(v28, v28 + 8, &v261, v259) & 1) == 0)
    {
      v29 = *(a1 + 616);
      v30 = *(a1 + 408);
      if (*(a1 + 400) == v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(v30 - 8);
      }

      v261 = v31;
      LODWORD(v262) = 6;
      sub_275C8D3A8(v29, v29 + 8, &v261, v259);
    }
  }

  if (v19)
  {
    v32 = *(a1 + 616);
    v261 = v19;
    LODWORD(v262) = 5;
    if ((sub_275C8D3A8(v32, v32 + 8, &v261, v258) & 1) == 0)
    {
      v33 = *(a1 + 616);
      v34 = *(a1 + 408);
      if (*(a1 + 400) == v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(v34 - 8);
      }

      v261 = v35;
      LODWORD(v262) = 5;
      sub_275C8D3A8(v33, v33 + 8, &v261, v258);
    }
  }

  if (LODWORD(v259[0]))
  {
    v229 = LODWORD(v259[0]) == 2;
  }

  else
  {
    v229 = sub_275CABE24(a1, v15, v22, v23);
  }

  if (LODWORD(v258[0]))
  {
    v36 = LODWORD(v258[0]) == 2;
  }

  else
  {
    v36 = sub_275CABE24(a1, v19, v22, v23);
  }

  v282[0] = 2;
  v37 = *(a1 + 616);
  v38 = *(a1 + 408);
  if (*(a1 + 400) == v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(v38 - 8);
  }

  v261 = v39;
  LODWORD(v262) = 1;
  sub_275C8D3A8(v37, v37 + 128, &v261, v282);
  if (objc_msgSend_isEmbellishedOperator(v11, v40, v41, v42))
  {
    v46 = objc_msgSend_operatorCore(v11, v43, v44, v45);
    v47 = sub_275CABEA8(a1, v46);
  }

  else
  {
    v47 = 0;
  }

  if (objc_msgSend_isEmbellishedOperator(v15, v43, v44, v45))
  {
    v51 = objc_msgSend_operatorCore(v15, v48, v49, v50);
    v52 = sub_275CABEA8(a1, v51);
  }

  else
  {
    v52 = 0;
  }

  if (objc_msgSend_isEmbellishedOperator(v19, v48, v49, v50))
  {
    v56 = objc_msgSend_operatorCore(v19, v53, v54, v55);
    v57 = sub_275CABEA8(a1, v56);
    if (!v47)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v57 = 0;
    if (!v47)
    {
      goto LABEL_42;
    }
  }

  v261 = v11;
  v47 = !v11 || (v58 = sub_275CB01C0((a1 + 472), &v261)) == 0 || *(v58 + 8) != 2;
LABEL_42:
  v278 = 0;
  v279 = &v278;
  v280 = 0x2020000000;
  v281 = 0;
  v274 = 0;
  v275 = &v274;
  v276 = 0x2020000000;
  v277 = 0;
  v261 = 0;
  v262 = &v261;
  v263 = 0x5812000000;
  v264 = sub_275CADBF8;
  v265 = sub_275CADC04;
  v266 = "";
  v267 = 0;
  v268 = 1;
  v269 = 0;
  v270 = 1;
  v271 = 0x4028000000000000;
  v272 = 0;
  v273 = 0;
  sub_275C93F10(v259, 0);
  if (v11)
  {
    v59 = v47;
  }

  else
  {
    v59 = 1;
  }

  v60 = 0.0;
  if ((v59 & 1) == 0)
  {
    v257[0] = MEMORY[0x277D85DD0];
    v257[1] = 3221225472;
    v257[2] = sub_275CADC0C;
    v257[3] = &unk_27A677438;
    v257[8] = a1;
    v257[4] = v11;
    v257[5] = &v278;
    v257[6] = &v261;
    v257[7] = &v274;
    sub_275CA3EF0(a1, v11, v257, v258);
    sub_275C93FE8(v259, v258);
    sub_275C93FE4(v258);
    objc_msgSend_width(v259[0], v61, v62, v63);
    if (v67 >= 0.0)
    {
      objc_msgSend_width(v259[0], v64, v65, v66);
      v60 = v68;
    }
  }

  v253 = 0;
  v254 = &v253;
  v255 = 0x2020000000;
  v256 = 0;
  sub_275C93F10(v258, 0);
  if (!((v15 == 0) | v52 & 1))
  {
    v250[0] = MEMORY[0x277D85DD0];
    v250[1] = 3221225472;
    v250[2] = sub_275CADD60;
    v250[3] = &unk_27A677460;
    v251 = v229;
    v250[4] = v15;
    v250[5] = &v253;
    sub_275CA3F54(a1, v15, v229 ^ 1u, 0, 2, 0, v250, v252);
    sub_275C93FE8(v258, v252);
    sub_275C93FE4(v252);
    objc_msgSend_width(v258[0], v69, v70, v71);
    if (v60 <= v75)
    {
      objc_msgSend_width(v258[0], v72, v73, v74);
      v60 = v76;
    }
  }

  v246 = 0;
  v247 = &v246;
  v248 = 0x2020000000;
  v249 = 0;
  v242 = 0;
  v243 = &v242;
  v244 = 0x2020000000;
  v245 = 0;
  sub_275C93F10(v252, 0);
  if (!((v19 == 0) | v57 & 1))
  {
    v239[0] = MEMORY[0x277D85DD0];
    v239[1] = 3221225472;
    v239[2] = sub_275CADDB8;
    v239[3] = &unk_27A677488;
    v240 = v36;
    v239[4] = v19;
    v239[5] = &v246;
    v239[6] = &v242;
    v239[7] = a1;
    sub_275CA3F54(a1, v19, v36 ^ 1u, 0, 2, 0, v239, v241);
    sub_275C93FE8(v252, v241);
    sub_275C93FE4(v241);
    objc_msgSend_width(v252[0], v80, v81, v82);
    if (v60 <= v83)
    {
      objc_msgSend_width(v252[0], v77, v78, v79);
      v60 = v84;
    }
  }

  if (v47)
  {
    v85 = objc_msgSend_operatorCore(v11, v77, v78, v79);
    sub_275CA4D18(a1, v85, 0, v60);
    v238[0] = MEMORY[0x277D85DD0];
    v238[1] = 3221225472;
    v238[2] = sub_275CADE74;
    v238[3] = &unk_27A677438;
    v238[4] = v11;
    v238[5] = &v278;
    v238[6] = &v261;
    v238[7] = &v274;
    v238[8] = a1;
    sub_275CA3EF0(a1, v11, v238, v241);
    sub_275C93FE8(v259, v241);
    sub_275C93FE4(v241);
  }

  if (v52)
  {
    v86 = objc_msgSend_operatorCore(v15, v77, v78, v79);
    sub_275CA4D18(a1, v86, 0, v60);
    v236[0] = MEMORY[0x277D85DD0];
    v236[1] = 3221225472;
    v236[2] = sub_275CADF4C;
    v236[3] = &unk_27A677460;
    v237 = v229;
    v236[4] = v15;
    v236[5] = &v253;
    sub_275CA3F54(a1, v15, v229 ^ 1u, 0, 2, 0, v236, v241);
    sub_275C93FE8(v258, v241);
    sub_275C93FE4(v241);
  }

  if (v57)
  {
    v87 = objc_msgSend_operatorCore(v19, v77, v78, v79);
    if (!objc_msgSend_operatorId(v87, v88, v89, v90))
    {
      v60 = v60 + *(a1 + 8) / -12.0;
    }

    v94 = objc_msgSend_operatorCore(v19, v91, v92, v93);
    sub_275CA4D18(a1, v94, 0, v60);
    v234[0] = MEMORY[0x277D85DD0];
    v234[1] = 3221225472;
    v234[2] = sub_275CADFA4;
    v234[3] = &unk_27A677488;
    v235 = v36;
    v234[4] = v19;
    v234[5] = &v246;
    v234[6] = &v242;
    v234[7] = a1;
    sub_275CA3F54(a1, v19, v36 ^ 1u, 0, 2, 0, v234, v241);
    sub_275C93FE8(v252, v241);
    sub_275C93FE4(v241);
  }

  objc_msgSend_width(v259[0], v77, v78, v79);
  v99 = v98;
  if (v252[0])
  {
    objc_msgSend_width(v252[0], v95, v96, v97);
    if (v100 <= v99)
    {
      v101 = v99;
    }

    else
    {
      v101 = v100;
    }

    if (v36)
    {
      v102 = v99;
    }

    else
    {
      v102 = v101;
    }
  }

  else
  {
    v102 = v98;
    v101 = v98;
  }

  if (v258[0])
  {
    objc_msgSend_width(v258[0], v95, v96, v97);
    if (v103 > v101)
    {
      v101 = v103;
    }

    if (v103 <= v102)
    {
      v103 = v102;
    }

    if (!v229)
    {
      v102 = v103;
    }
  }

  v27 = 0.0;
  if (v99 < v102)
  {
    v104 = objc_msgSend_fontManager(*(a1 + 608), v95, v96, v97);
    v105 = sub_275C9B058(v104);
    v107 = *(a1 + 296);
    if (v107)
    {
      v108 = *(*(a1 + 264) + 8 * ((v107 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v107 + *(a1 + 288) - 1) % 0x1AuLL);
      v109 = v108 + 8;
    }

    else
    {
      v109 = a1 + 64;
      v108 = a1 + 56;
    }

    if (*(v108 + 120))
    {
      v106.n128_u64[0] = *(v108 + 128);
    }

    else
    {
      v106.n128_f64[0] = sub_275CB80C0(v108);
    }

    v27 = (*(*v105 + 40))(v105, 27, v109, v106);
  }

  v110 = v252[0];
  v111 = v258[0];
  objc_msgSend_erasableBounds(v259[0], v95, v96, v97);
  MidX = CGRectGetMidX(v283);
  sub_275C93F58(v233, v259);
  sub_275CA4FB8(v233, v282[0], 0, v241, v101, 0.0);
  sub_275C93FE8(v259, v241);
  v113 = (v101 - v99) * 0.5 + MidX;
  sub_275C93FE4(v241);
  sub_275C93FE4(v233);
  v118 = 0.0;
  v119 = 0.0;
  if (v110)
  {
    if (v36)
    {
      if (*(v247 + 24) == 1)
      {
        objc_msgSend_depth(v110, v114, v115, v116);
        if (v123.n128_f64[0] >= 0.0)
        {
          v142 = *(v21 + 88);
          if (*(v21 + 120))
          {
            v123.n128_u64[0] = *(v21 + 128);
          }

          else
          {
            v123.n128_f64[0] = sub_275CB80C0(v21);
          }

          v152 = -(*(*v142 + 40))(v142, 11, v21 + 8, v123);
        }

        else
        {
          v124 = v243[3];
          objc_msgSend_depth(v110, v120, v121, v122);
          v126 = v125.n128_f64[0];
          v127 = *(v21 + 88);
          if (*(v21 + 120))
          {
            v125.n128_u64[0] = *(v21 + 128);
          }

          else
          {
            v125.n128_f64[0] = sub_275CB80C0(v21);
          }

          if (v124 >= -v126 - (*(*v127 + 40))(v127, 11, v21 + 8, v125))
          {
            objc_msgSend_depth(v110, v149, v150, v151);
            v154 = v153.n128_f64[0];
            v155 = *(v21 + 88);
            if (*(v21 + 120))
            {
              v153.n128_u64[0] = *(v21 + 128);
            }

            else
            {
              v153.n128_f64[0] = sub_275CB80C0(v21);
            }

            v152 = -v154 - (*(*v155 + 40))(v155, 11, v21 + 8, v153);
          }

          else
          {
            v152 = v243[3];
          }
        }

        objc_msgSend_height(v259[0], v149, v150, v151);
        if (v152 >= v156)
        {
          objc_msgSend_height(v259[0], v139, v140, v141);
          v152 = v157;
        }

        v119 = -v152;
      }

      else
      {
        v129 = *(v21 + 88);
        if (*(v21 + 120))
        {
          v117.n128_u64[0] = *(v21 + 128);
        }

        else
        {
          v117.n128_f64[0] = sub_275CB80C0(v21);
        }

        v119 = (*(*v129 + 40))(v129, 11, v21 + 8, v117);
      }

      if (*(v275 + 24) == 1)
      {
        v158 = objc_msgSend_fontManager(*(a1 + 608), v139, v140, v141);
        v159 = sub_275C9B058(v158);
        v160 = v113 + (*(*v159 + 176))(v159, *(v279 + 6), v262 + 6);
        v147 = 1;
LABEL_128:
        sub_275C93F58(v232, v252);
        sub_275CA4FB8(v232, v282[0], v147, v241, v101, v160);
        sub_275C93FE8(v252, v241);
        sub_275C93FE4(v241);
        sub_275C93FE4(v232);
        goto LABEL_129;
      }
    }

    else
    {
      v128 = *(v21 + 88);
      if (*(v21 + 120))
      {
        v117.n128_u64[0] = *(v21 + 128);
      }

      else
      {
        v117.n128_f64[0] = sub_275CB80C0(v21);
      }

      v131 = (*(*v128 + 40))(v128, 11, v21 + 8, v117);
      v132 = *(v21 + 88);
      if (*(v21 + 120))
      {
        v130.n128_u64[0] = *(v21 + 128);
      }

      else
      {
        v130.n128_f64[0] = sub_275CB80C0(v21);
      }

      v133 = (*(*v132 + 40))(v132, 12, v21 + 8, v130);
      objc_msgSend_layoutDepth(v110, v134, v135, v136);
      v138 = *(v21 + 88);
      if (v131 <= v133 - v137.n128_f64[0])
      {
        if (*(v21 + 120))
        {
          v137.n128_u64[0] = *(v21 + 128);
        }

        else
        {
          v137.n128_f64[0] = sub_275CB80C0(v21);
        }

        v143 = (*(*v138 + 40))(v138, 12, v21 + 8, v137);
        objc_msgSend_layoutDepth(v110, v144, v145, v146);
        v147 = 0;
        v119 = v143 - v148;
        goto LABEL_127;
      }

      if (*(v21 + 120))
      {
        v137.n128_u64[0] = *(v21 + 128);
      }

      else
      {
        v137.n128_f64[0] = sub_275CB80C0(v21);
      }

      v119 = (*(*v138 + 40))(v138, 11, v21 + 8, v137);
    }

    v147 = 0;
LABEL_127:
    v160 = v113;
    goto LABEL_128;
  }

LABEL_129:
  if (v111)
  {
    if (!v229)
    {
      v165 = *(v21 + 88);
      if (*(v21 + 120))
      {
        v117.n128_u64[0] = *(v21 + 128);
      }

      else
      {
        v117.n128_f64[0] = sub_275CB80C0(v21);
      }

      v167 = (*(*v165 + 40))(v165, 13, v21 + 8, v117);
      v168 = *(v21 + 88);
      if (*(v21 + 120))
      {
        v166.n128_u64[0] = *(v21 + 128);
      }

      else
      {
        v166.n128_f64[0] = sub_275CB80C0(v21);
      }

      v169 = (*(*v168 + 40))(v168, 14, v21 + 8, v166);
      objc_msgSend_layoutHeight(v111, v170, v171, v172);
      v174 = *(v21 + 88);
      if (v167 <= v169 - v173.n128_f64[0])
      {
        if (*(v21 + 120))
        {
          v173.n128_u64[0] = *(v21 + 128);
        }

        else
        {
          v173.n128_f64[0] = sub_275CB80C0(v21);
        }

        v181 = (*(*v174 + 40))(v174, 14, v21 + 8, v173);
        objc_msgSend_layoutHeight(v111, v182, v183, v184);
        v185 = 0;
        v118 = v181 - v186;
        goto LABEL_161;
      }

      if (*(v21 + 120))
      {
        v173.n128_u64[0] = *(v21 + 128);
      }

      else
      {
        v173.n128_f64[0] = sub_275CB80C0(v21);
      }

      v118 = (*(*v174 + 40))(v174, 13, v21 + 8, v173);
      goto LABEL_160;
    }

    if (*(v254 + 24) == 1)
    {
      objc_msgSend_height(v111, v114, v115, v116);
      if (v117.n128_f64[0] <= 0.0)
      {
        objc_msgSend_height(v111, v161, v162, v163);
        v179 = v178.n128_f64[0];
        v180 = *(v21 + 88);
        if (*(v21 + 120))
        {
          v178.n128_u64[0] = *(v21 + 128);
        }

        else
        {
          v178.n128_f64[0] = sub_275CB80C0(v21);
        }

        v118 = v179 + (*(*v180 + 40))(v180, 13, v21 + 8, v178);
LABEL_158:
        if (*(v275 + 24) == 1)
        {
          v187 = objc_msgSend_fontManager(*(a1 + 608), v175, v176, v177);
          v188 = sub_275C9B058(v187);
          v113 = v113 + (*(*v188 + 184))(v188, *(v279 + 6), v262 + 6);
          v185 = 1;
LABEL_161:
          sub_275C93F58(v231, v258);
          sub_275CA4FB8(v231, v282[0], v185, v241, v101, v113);
          sub_275C93FE8(v258, v241);
          sub_275C93FE4(v241);
          sub_275C93FE4(v231);
          goto LABEL_162;
        }

LABEL_160:
        v185 = 0;
        goto LABEL_161;
      }

      v164 = *(v21 + 88);
      if ((*(v21 + 120) & 1) == 0)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v164 = *(v21 + 88);
      if ((*(v21 + 120) & 1) == 0)
      {
LABEL_148:
        v117.n128_f64[0] = sub_275CB80C0(v21);
        goto LABEL_149;
      }
    }

    v117.n128_u64[0] = *(v21 + 128);
LABEL_149:
    v118 = (*(*v164 + 40))(v164, 13, v21 + 8, v117);
    goto LABEL_158;
  }

LABEL_162:
  v189 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v192 = v189;
  v193 = v252[0];
  if (v252[0])
  {
    objc_msgSend_addObject_(v189, v190, v252[0], v191);
    if (v119 != 0.0)
    {
      v194 = [EQKitVSpace alloc];
      v198 = objc_msgSend_initWithHeight_depth_(v194, v195, v196, v197, v119, 0.0);
      objc_msgSend_addObject_(v192, v199, v198, v200);
    }
  }

  v203 = objc_msgSend_count(v192, v190, v193, v191);
  if (v259[0])
  {
    objc_msgSend_addObject_(v192, v201, v259[0], v202);
  }

  v204 = v258[0];
  if (v258[0])
  {
    if (v118 != 0.0)
    {
      v205 = [EQKitVSpace alloc];
      v209 = objc_msgSend_initWithHeight_depth_(v205, v206, v207, v208, v118, 0.0);
      objc_msgSend_addObject_(v192, v210, v209, v211);

      v204 = v258[0];
    }

    objc_msgSend_addObject_(v192, v201, v204, v202);
  }

  v212 = [EQKitVBox alloc];
  v214 = objc_msgSend_initWithChildBoxes_pivotIndex_(v212, v213, v192, v203);
  sub_275C93FE8(a5, v259);
  if (v11)
  {
    v215 = 1;
    if ((v260 & 0x1C00u) <= 0x1000 || !((v15 == 0) | v229 & 1))
    {
      goto LABEL_181;
    }

    goto LABEL_178;
  }

  if (!v15 || v229)
  {
LABEL_178:
    if ((v19 == 0) | v36 & 1)
    {
      v215 = 4;
    }

    else
    {
      v215 = 1;
    }

    goto LABEL_181;
  }

  v215 = 1;
LABEL_181:
  sub_275C940CC(a5, v215);
  sub_275C9404C(a5, v214);

  if (v19 && (v275[3] & 1) != 0 && v36)
  {
    sub_275C9408C(a5, 1);
  }

  sub_275C93FE4(v252);
  _Block_object_dispose(&v242, 8);
  _Block_object_dispose(&v246, 8);
  sub_275C93FE4(v258);
  _Block_object_dispose(&v253, 8);
  sub_275C93FE4(v259);
  _Block_object_dispose(&v261, 8);
  sub_275CAEAD0(&v267);
  _Block_object_dispose(&v274, 8);
  _Block_object_dispose(&v278, 8);
LABEL_186:
  if (a3)
  {
    v218 = objc_msgSend_operatorCore(a4, v24, v25, v26);
    if (v218)
    {
      v219 = sub_275CA31A0(a1, v218, v216, v217);
      v222 = sub_275CA3514(a1, v218, v220, v221);
      if (v27 <= v219)
      {
        v223 = v219;
      }

      else
      {
        v223 = v27;
      }

      if (v27 <= v222)
      {
        v27 = v222;
      }
    }

    else
    {
      v223 = v27;
    }

    sub_275CA471C(a1, v223);
    sub_275C93F58(v230, a5);
    v225 = *(a1 + 408);
    if (*(a1 + 400) == v225)
    {
      v226 = 0;
    }

    else
    {
      v226 = *(v225 - 8);
    }

    sub_275CA45F8(a1, v230, v226, v224);
    sub_275C93FE4(v230);
    sub_275CA4850(a1, v27);
    sub_275C93F10(&v261, 0);
    sub_275C93FE8(a5, &v261);
    sub_275C93FE4(&v261);
  }
}

uint64_t sub_275CA8C74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_275C93F10(a3, 0);
  v9[0] = &unk_2884CB630;
  v9[1] = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_275CB0F98(a1 + 70, v9);
  sub_275CAE2C8(v9);
  v6 = sub_275CC74A0(a2);
  if (v6)
  {
    v7 = a1[75];
    if (v7)
    {
      sub_275CD00F0(*(a1[71] + 8 * ((v7 + a1[74] - 1) / 0x2AuLL)) + 96 * ((v7 + a1[74] - 1) % 0x2AuLL), v6, v9);
      sub_275C93FE8(a3, v9);
      sub_275C93FE4(v9);
    }
  }

  return sub_275CB1258(a1 + 70);
}

void sub_275CA8D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275C93FE4(&a9);
  sub_275C93FE4(v9);
  _Unwind_Resume(a1);
}

void *sub_275CA8DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_275C93F10(a3, 0);
  result = sub_275CC74BC(a2);
  if (result)
  {
    v7 = a1[75];
    if (v7)
    {
      sub_275CCED4C(*(a1[71] + 8 * ((v7 + a1[74] - 1) / 0x2AuLL)) + 96 * ((v7 + a1[74] - 1) % 0x2AuLL), result, v8);
      sub_275C93FE8(a3, v8);
      return sub_275C93FE4(v8);
    }
  }

  return result;
}

void sub_275CA8E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA8E90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_275CC74D8(a2);
  sub_275C8B298(v13, a1, v5, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0.0);
  sub_275CB0C20(a1 + 64, v13, v6, v7);
  sub_275C8B3A8(v13);
  v8 = a1[69] + a1[68] - 1;
  sub_275C8B3AC((*(a1[65] + 8 * (v8 / 0x18)) + 168 * (v8 % 0x18)), v9, v10, v11, a3);
  return sub_275CB0EA4(a1 + 64);
}

void *sub_275CA8F60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC74F4(a2);
    sub_275C8BA80((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA9010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

void *sub_275CA9034@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC7510(a2);
    sub_275C8BD18((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA90E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

void *sub_275CA9108@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    sub_275CC7564(a2);
    sub_275C8C080((v9 + 168 * (v8 % 0x18)), v10);
    sub_275C93FE8(a3, v10);
    return sub_275C93FE4(v10);
  }

  return result;
}

void sub_275CA91B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

void *sub_275CA91DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC7580(a2);
    sub_275C8C20C((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA928C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

void *sub_275CA92B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC759C(a2);
    sub_275C8C934((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA9360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

void *sub_275CA9384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_275CC7644(a2);
  v6 = a1[37];
  if (v6)
  {
    v7 = *(a1[33] + 8 * ((v6 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v6 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v7 = (a1 + 7);
  }

  v8 = CTFontCreateWithName(@"STIXGeneral-Regular", *(v7 + 24), 0);
  if (v8)
  {
    v12 = v8;
    v13 = objc_msgSend_schemataDivisor(v5, v9, v10, v11);
    sub_275CA3F54(a1, v13, 0, 0, 0, 0, 0, v78);
    sub_275C98A1C(&v75, v12, 10188);
    sub_275C9A36C(&v75, 2u, v74);
    v14 = v74[6];
    v73 = 0.0;
    v18 = objc_msgSend_schemataStack(v5, v15, v16, v17);
    if (v18)
    {
      objc_msgSend_layoutSchemata(v18, v19, v20, v21);
    }

    else
    {
      memset(v72, 0, sizeof(v72));
    }

    sub_275CAE1A8(a1, v72, 2, 1, &v73, v74, *&v14);
    sub_275CC6C4C(v72);
    *&v72[0] = 0;
    v26 = a1[37];
    if (v26)
    {
      v27 = *(a1[33] + 8 * ((v26 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v26 + a1[36] - 1) % 0x1AuLL);
      v28 = (v27 + 88);
    }

    else
    {
      v28 = a1 + 18;
      v27 = (a1 + 7);
    }

    v29 = *v28;
    v30 = v73;
    objc_msgSend_width(v74[0], v23, v24, v25);
    v35 = (*(*v29 + 168))(v29, v27 + 8, v72, v30, v31);
    if (v35)
    {
      v36 = [EQKitPathBox alloc];
      v38 = a1[37];
      if (v38)
      {
        v39 = *(a1[33] + 8 * ((v38 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v38 + a1[36] - 1) % 0x1AuLL);
      }

      else
      {
        v39 = (a1 + 7);
      }

      v40 = objc_msgSend_initWithCGPath_height_cgColor_(v36, v37, v35, *(v39 + 112), *&v14);
      CGPathRelease(v35);
    }

    else
    {
      v40 = 0;
    }

    v41 = v73;
    objc_msgSend_height(v40, v32, v33, v34);
    v43 = v42;
    v44 = [EQKitPaddedBox alloc];
    objc_msgSend_height(v40, v45, v46, v47);
    v49 = v48;
    if (v77[32] == 1)
    {
      v50 = v77;
    }

    else
    {
      v50 = sub_275C98D24(&v75);
    }

    Width = CGRectGetWidth(*v50);
    objc_msgSend_depth(v40, v52, v53, v54);
    v58 = objc_msgSend_initWithBox_height_width_depth_lspace_voffset_(v44, v55, v40, v56, v49, Width, v57, 0.0, v41 - v43);
    v59 = objc_alloc(MEMORY[0x277CBEB18]);
    v62 = objc_msgSend_initWithObjects_(v59, v60, v78[0], v61, v58, v74[0], 0);
    v63 = [EQKitHBox alloc];
    v22 = objc_msgSend_initWithChildBoxes_(v63, v64, v62, v65);

    CFRelease(v12);
    sub_275C93FE4(v74);
    sub_275C98A80(&v75);
    sub_275C93FE4(v78);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v74[0]) = 0;
  v66 = a1[77];
  v67 = a1[51];
  if (a1[50] == v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = *(v67 - 8);
  }

  v75 = v68;
  v76 = 2;
  sub_275C8D3A8(v66, v66 + 152, &v75, v74);
  v70 = sub_275CAE060(a1, v22, LODWORD(v74[0]), v69);
  return sub_275C93F10(a3, v70);
}

void sub_275CA9740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_275C93FE4(&a18);
  sub_275C98A80(&a26);
  sub_275C93FE4(v26 - 152);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA9794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v5 = *(a1 + 296);
  if (v5)
  {
    v6 = *(*(a1 + 264) + 8 * ((v5 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v5 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v6 = a1 + 56;
  }

  v7 = sub_275CC752C(a2);
  if (*(v6 + 120))
  {
    v8 = *(v6 + 128);
  }

  else
  {
    v8 = sub_275CB80C0(v6);
  }

  sub_275C93F10(v302, 0);
  if (objc_msgSend_schemataIndex(v7, v9, v10, v11))
  {
    v15 = objc_msgSend_schemataIndex(v7, v12, v13, v14);
    sub_275CA3F54(a1, v15, 2, 0, 0, 0, 0, v300);
    sub_275C93FE8(v302, v300);
    sub_275C93FE4(v300);
  }

  v16 = v302[0];
  v17 = objc_msgSend_schemataRadicand(v7, v12, v13, v14);
  sub_275CA3F54(a1, v17, 0, *(v6 + 16), 0, 0, 0, v300);
  v19 = v300[0];
  v20 = *(v6 + 88);
  if (*(v6 + 120))
  {
    v18.n128_u64[0] = *(v6 + 128);
  }

  else
  {
    v18.n128_f64[0] = sub_275CB80C0(v6);
  }

  v22 = (*(*v20 + 40))(v20, 17, v6 + 8, v18);
  v23 = *(v6 + 88);
  if (*(v6 + 120))
  {
    v21.n128_u64[0] = *(v6 + 128);
  }

  else
  {
    v21.n128_f64[0] = sub_275CB80C0(v6);
  }

  v24 = (*(*v23 + 40))(v23, 18, v6 + 8, v21);
  objc_msgSend_layoutVSize(v19, v25, v26, v27);
  v29 = v28;
  objc_msgSend_width(v19, v30, v31, v32);
  v34 = v33;
  v38 = objc_msgSend_fontManager(*(a1 + 608), v35, v36, v37);
  v39 = sub_275C9B058(v38);
  v40 = *(a1 + 296);
  if (v40)
  {
    v41 = *(*(a1 + 264) + 8 * ((v40 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v40 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v41 = a1 + 56;
  }

  v45 = (*(*v39 + 40))(v39, 22, v41 + 8, v8);
  if (v34 < v45)
  {
    v34 = v45;
  }

  v299 = 0.0;
  v297 = 0u;
  v298 = 0u;
  v294 = *MEMORY[0x277CBF3A8];
  v295 = 0;
  v296 = 0;
  v46 = objc_msgSend_fontManager(*(a1 + 608), v42, v43, v44);
  v47 = sub_275C9B058(v46);
  v49 = *(a1 + 296);
  if (v49)
  {
    v50 = *(*(a1 + 264) + 8 * ((v49 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v49 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v50 = a1 + 56;
  }

  v48.n128_f64[0] = v24 + v8 + v29 + v8 * 2.0;
  v51 = (*(*v47 + 160))(v47, v50 + 8, &v297, &v294, v48, v34, v8);
  if (v51)
  {
    v53 = [EQKitPathBox alloc];
    v55 = *(a1 + 296);
    if (v55)
    {
      v56 = *(*(a1 + 264) + 8 * ((v55 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v55 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v56 = a1 + 56;
    }

    v58 = objc_msgSend_initWithCGPath_height_cgColor_(v53, v54, v51, *(v56 + 112), *(&v294 + 1));
    v59 = [EQKitPaddedBox alloc];
    objc_msgSend_height(v58, v60, v61, v62);
    v64 = v63;
    objc_msgSend_width(v58, v65, v66, v67);
    v69 = v68;
    v70 = v299;
    objc_msgSend_depth(v58, v71, v72, v73);
    v57 = objc_msgSend_initWithBox_height_width_depth_lspace_voffset_(v59, v74, v58, v75, v64, v69 - v34 - v70, v76, 0.0, 0.0);

    CFRelease(v51);
  }

  else
  {
    v57 = 0;
  }

  v77 = *(v6 + 88);
  if (*(v6 + 120))
  {
    v52.n128_u64[0] = *(v6 + 128);
  }

  else
  {
    v52.n128_f64[0] = sub_275CB80C0(v6);
  }

  v78 = (*(*v77 + 40))(v77, 19, v6 + 8, v52);
  objc_msgSend_layoutHeight(v57, v79, v80, v81);
  v83 = v82;
  objc_msgSend_layoutVSize(v19, v84, v85, v86);
  v91 = v83 - v8 - v24;
  if (v91 >= v78)
  {
    v91 = v78;
  }

  if (v90 >= v91)
  {
    v92 = v90;
  }

  else
  {
    v92 = v91;
  }

  objc_msgSend_layoutHeight(v57, v87, v88, v89);
  v94 = v93;
  objc_msgSend_layoutVSize(v19, v95, v96, v97);
  v99 = v98;
  v100 = v94 - v8 - (v24 + v92);
  if (v100 > 0.0)
  {
    v24 = v24 + v100 * 0.5;
  }

  v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v102 = [EQKitVSpace alloc];
  v106 = objc_msgSend_initWithHeight_depth_(v102, v103, v104, v105, v8, 0.0);
  objc_msgSend_addObject_(v101, v107, v106, v108);

  v109 = [EQKitVSpace alloc];
  v113 = objc_msgSend_initWithHeight_depth_(v109, v110, v111, v112, v24 + v92 - v99, 0.0);
  objc_msgSend_addObject_(v101, v114, v113, v115);

  objc_msgSend_width(v19, v116, v117, v118);
  v120 = v119;
  v121 = MEMORY[0x277CBEA60];
  v122 = [EQKitHSpace alloc];
  v123 = v22 + (v34 - v120) * 0.5;
  v127 = objc_msgSend_initWithWidth_(v122, v124, v125, v126, v123);
  v128 = [EQKitHSpace alloc];
  v132 = objc_msgSend_initWithWidth_(v128, v129, v130, v131, v123);
  v135 = objc_msgSend_arrayWithObjects_(v121, v133, v127, v134, v19, v132, 0);
  v136 = [EQKitHBox alloc];
  v139 = objc_msgSend_initWithChildBoxes_(v136, v137, v135, v138);
  objc_msgSend_addObject_(v101, v140, v139, v141);
  v142 = [EQKitVBox alloc];
  v146 = objc_msgSend_count(v101, v143, v144, v145);
  v148 = objc_msgSend_initWithChildBoxes_pivotIndex_(v142, v147, v101, v146 - 1);
  v149 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_width(v57, v150, v151, v152);
  v157 = v156;
  if (v16)
  {
    if (**(a1 + 48) == 3 || (v158 = *(&v297 + 1), objc_msgSend_width(v16, v153, v154, v155), v160 = v159, v161 = *&v298, objc_msgSend_width(v16, v162, v163, v164), v165 = v158 + v160 * -0.5, v165 >= v161 - v166))
    {
      v167 = *&v298;
      objc_msgSend_width(v16, v153, v154, v155);
      v165 = v167 - v168;
    }

    v169 = *&v297;
    v170 = objc_msgSend_fontManager(*(a1 + 608), v153, v154, v155);
    v171 = sub_275C9B058(v170);
    v172 = *(a1 + 296);
    if (v172)
    {
      v173 = *(*(a1 + 264) + 8 * ((v172 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v172 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v173 = a1 + 56;
    }

    v174 = (*(*v171 + 40))(v171, 20, v173 + 8, v8);
    v178 = objc_msgSend_fontManager(*(a1 + 608), v175, v176, v177);
    v179 = sub_275C9B058(v178);
    v180 = *(a1 + 296);
    if (v180)
    {
      v181 = *(*(a1 + 264) + 8 * ((v180 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v180 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v181 = a1 + 56;
    }

    v182 = (*(*v179 + 40))(v179, 21, v181 + 8, v8);
    objc_msgSend_layoutDepth(v16, v183, v184, v185);
    if (v174 <= v182 + v189)
    {
      objc_msgSend_layoutDepth(v16, v186, v187, v188);
      v174 = v182 + v190;
    }

    v191 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_width(v16, v192, v193, v194);
    if (v157 <= v165 + v198)
    {
      objc_msgSend_width(v16, v195, v196, v197);
      v157 = v165 + v199;
    }

    if (v165 < 0.0)
    {
      v157 = v157 - v165;
    }

    if (v165 > 0.0)
    {
      v200 = [EQKitHSpace alloc];
      v204 = objc_msgSend_initWithWidth_(v200, v201, v202, v203, v165);
      objc_msgSend_addObject_(v191, v205, v204, v206);
    }

    objc_msgSend_addObject_(v191, v195, v16, v197);
    v207 = [EQKitHBox alloc];
    v210 = objc_msgSend_initWithChildBoxes_(v207, v208, v191, v209);
    objc_msgSend_addObject_(v149, v211, v210, v212);
    v213 = [EQKitVSpace alloc];
    objc_msgSend_layoutDepth(v16, v214, v215, v216);
    v218 = v217;
    objc_msgSend_layoutHeight(v57, v219, v220, v221);
    v226 = objc_msgSend_initWithHeight_depth_(v213, v223, v224, v225, v169 + v174 - v218 - v222, 0.0);
    objc_msgSend_addObject_(v149, v227, v226, v228);
  }

  objc_msgSend_width(v57, v153, v154, v155);
  if (v232 >= v157)
  {
    if (v57)
    {
      objc_msgSend_addObject_(v149, v229, v57, v231);
    }
  }

  else
  {
    v233 = MEMORY[0x277CBEA60];
    v234 = [EQKitHSpace alloc];
    objc_msgSend_width(v57, v235, v236, v237);
    v242 = objc_msgSend_initWithWidth_(v234, v239, v240, v241, v157 - v238);
    v245 = objc_msgSend_arrayWithObjects_(v233, v243, v242, v244, v57, 0);
    v246 = [EQKitHBox alloc];
    v249 = objc_msgSend_initWithChildBoxes_(v246, v247, v245, v248);
    objc_msgSend_addObject_(v149, v250, v249, v251);
  }

  objc_msgSend_height(v148, v229, v230, v231);
  v253 = v252;
  objc_msgSend_height(v57, v254, v255, v256);
  v258 = v257;
  v259 = [EQKitOffsetVBox alloc];
  v263 = objc_msgSend_count(v149, v260, v261, v262);
  v265 = objc_msgSend_initWithChildBoxes_pivotIndex_offset_(v259, v264, v149, v263 - 1, v253 - v8 - v258);
  v266 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v266, v267, v265, v268);
  v269 = [EQKitHSpace alloc];
  v273 = objc_msgSend_initWithWidth_(v269, v270, v271, v272, -v22);
  objc_msgSend_addObject_(v266, v274, v273, v275);
  objc_msgSend_addObject_(v266, v276, v148, v277);
  if (v299 != 0.0)
  {
    v278 = [EQKitHSpace alloc];
    v282 = objc_msgSend_initWithWidth_(v278, v279, v280, v281, v299);
    objc_msgSend_addObject_(v266, v283, v282, v284);
  }

  sub_275C93F58(a3, v300);
  v285 = [EQKitHBox alloc];
  v288 = objc_msgSend_initWithChildBoxes_(v285, v286, v266, v287);
  sub_275C9404C(a3, v288);

  sub_275C941E0(a3, 1);
  if (!objc_msgSend_schemataIndex(v7, v289, v290, v291) || (v303 & 0x1000) != 0)
  {
    if ((v301 & 0x1C00u) <= 0x1000)
    {
      v292 = 0;
    }

    else
    {
      v292 = 3;
    }
  }

  else
  {
    v292 = 0;
  }

  sub_275C940CC(a3, v292);
  sub_275C93FE4(v300);
  return sub_275C93FE4(v302);
}

void sub_275CAA208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_275C93FE4(&a24);
  sub_275C93FE4(&a31);
  _Unwind_Resume(a1);
}

void *sub_275CAA2BC@<X0>(void *a1@<X8>)
{
  v2 = [EQKitHVSpace alloc];
  v6 = objc_msgSend_initWithWidth_height_depth_(v2, v3, v4, v5, 0.0, 0.0, 0.0);

  return sub_275C93F10(a1, v6);
}

uint64_t sub_275CAA314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v5 = sub_275CC7660(a2);
  v9 = objc_msgSend_schemataNode(v5, v6, v7, v8);
  sub_275CA3EF0(a1, v9, 0, v70);
  objc_msgSend_layoutHeight(v70[0], v10, v11, v12);
  v14 = v13;
  objc_msgSend_layoutDepth(v70[0], v15, v16, v17);
  v19 = v18;
  objc_msgSend_width(v70[0], v20, v21, v22);
  v24 = v23;
  v25 = a1[37];
  if (v25)
  {
    v26 = *(a1[33] + 8 * ((v25 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v25 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v26 = (a1 + 7);
  }

  LODWORD(v67) = 1;
  v68 = 0;
  v69 = 0;
  v27 = a1[77];
  v28 = a1[51];
  if (a1[50] == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v28 - 8);
  }

  v64 = v29;
  LODWORD(v65) = 29;
  sub_275CAEB04(v27, v27 + 464, &v64, &v67);
  v30 = sub_275CB70EC(&v67, v26, v14, v14, v19, v24);
  LODWORD(v64) = 1;
  v65 = 0;
  v66 = 0;
  v31 = a1[77];
  v32 = a1[51];
  if (a1[50] == v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v32 - 8);
  }

  v61 = v33;
  LODWORD(v62) = 30;
  sub_275CAEB04(v31, v31 + 464, &v61, &v64);
  v34 = sub_275CB70EC(&v64, v26, v19, v14, v19, v24);
  LODWORD(v61) = 1;
  v62 = 0;
  v63 = 0;
  v35 = a1[77];
  v36 = a1[51];
  if (a1[50] == v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v36 - 8);
  }

  v58 = v37;
  LODWORD(v59) = 31;
  sub_275CAEB04(v35, v35 + 464, &v58, &v61);
  v38 = sub_275CB70EC(&v61, v26, v24, v14, v19, v24);
  LODWORD(v58) = 1;
  v59 = 0;
  v60 = 0;
  v39 = a1[77];
  v40 = a1[51];
  if (a1[50] == v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v40 - 8);
  }

  v55 = v41;
  LODWORD(v56) = 32;
  sub_275CAEB04(v39, v39 + 464, &v55, &v58);
  v42 = sub_275CB70EC(&v58, v26, 0.0, v14, v19, v24);
  LODWORD(v55) = 1;
  v56 = 0;
  v57 = 0;
  v43 = a1[77];
  v44 = a1[51];
  if (a1[50] == v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = *(v44 - 8);
  }

  v72 = v45;
  v73 = 33;
  sub_275CAEB04(v43, v43 + 464, &v72, &v55);
  v46 = sub_275CB70EC(&v55, v26, 0.0, v14, v19, v24);
  v47 = [EQKitPaddedBox alloc];
  v48 = fmax(v30, 0.0);
  v49 = fmax(v34, 0.0);
  v52 = objc_msgSend_initWithBox_height_width_depth_lspace_voffset_(v47, v50, v70[0], v51, v48, fmax(v38, 0.0), v49, v42, v46, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  sub_275C93F58(a3, v70);
  sub_275C9404C(a3, v52);
  if (v48 == v14 && v49 == v19 && v46 == 0.0)
  {
    v53 = (v71 >> 10) & 7;
  }

  else
  {
    LOBYTE(v53) = 0;
  }

  sub_275C940CC(a3, v53);

  return sub_275C93FE4(v70);
}

void sub_275CAA680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_275C93FE4(v16);
  sub_275C93FE4(va);
  _Unwind_Resume(a1);
}

void sub_275CAA6DC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[51];
  if (a1[50] == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 - 8);
  }

  v6 = sub_275CA3458(a1, 26, v5, 0.0);
  v7 = a1[51];
  if (a1[50] == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 - 8);
  }

  v9 = sub_275CA3458(a1, 27, v8, 0.0);
  v10 = a1[51];
  if (a1[50] == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 - 8);
  }

  v12 = sub_275CA3458(a1, 28, v11, 0.0);
  v13 = [EQKitHVSpace alloc];
  v17 = objc_msgSend_initWithWidth_height_depth_(v13, v14, v15, v16, v12, v6, v9);
  v18 = sub_275C93F10(a2, v17);
  sub_275C940AC(v18, 1);
  if (v9 == 0.0 && v6 == 0.0)
  {
    v20 = 6;
  }

  else
  {
    v20 = 0;
  }

  sub_275C940CC(a2, v20);
}

void sub_275CAA7FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v112 = *MEMORY[0x277D85DE8];
  v3 = sub_275CC767C(a2);
  obj = objc_msgSend_schemataChildren(v3, v4, v5, v6);
  v10 = objc_msgSend_count(obj, v7, v8, v9);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sub_275CA6274(&v105, "(");
  sub_275CA6274(&v104, ")");
  v101 = 0;
  v102 = 0;
  v103 = 0;
  sub_275CA6274(__p, ",");
  v12 = v102;
  if (v102 >= v103)
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v102 - v101) >> 3);
    v15 = v14 + 1;
    if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_275C8D77C();
    }

    if (0x5555555555555556 * ((v103 - v101) >> 3) > v15)
    {
      v15 = 0x5555555555555556 * ((v103 - v101) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v103 - v101) >> 3) >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v110 = &v101;
    if (v16)
    {
      sub_275C97C94(&v101, v16);
    }

    v17 = 8 * ((v102 - v101) >> 3);
    v18 = *__p;
    *(v17 + 16) = v100;
    *v17 = v18;
    __p[1] = 0;
    v100 = 0;
    __p[0] = 0;
    v19 = (24 * v14 - (v102 - v101));
    memcpy(v19, v101, v102 - v101);
    v20 = v101;
    v21 = v103;
    v101 = v19;
    v102 = (24 * v14 + 24);
    v103 = 0;
    v108 = v20;
    v109 = v21;
    v106 = v20;
    v107 = v20;
    sub_275C97CEC(&v106);
    v102 = (24 * v14 + 24);
    if (SHIBYTE(v100) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v13 = *__p;
    v102->__r_.__value_.__r.__words[2] = v100;
    *&v12->__r_.__value_.__l.__data_ = v13;
    v102 = v12 + 1;
  }

  v22 = a1[77];
  v23 = a1[51];
  if (a1[50] == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v23 - 8);
  }

  v106 = v24;
  LODWORD(v107) = 18;
  sub_275CAE8C8(v22, v22 + 80, &v106, &v105);
  v25 = a1[77];
  v26 = a1[51];
  if (a1[50] == v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(v26 - 8);
  }

  v106 = v27;
  LODWORD(v107) = 19;
  sub_275CAE8C8(v25, v25 + 80, &v106, &v104);
  v28 = a1[77];
  v29 = a1[51];
  if (a1[50] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 - 8);
  }

  v106 = v30;
  LODWORD(v107) = 20;
  sub_275CAEBE0(v28, v28 + 104, &v106, &v101);
  v33 = v101;
  v32 = v102;
  size = HIBYTE(v105.__r_.__value_.__r.__words[2]);
  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v105.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = objc_msgSend_initWithUTF8String_(v35, v36, &v105, v37, v90);
    }

    else
    {
      v38 = objc_msgSend_initWithUTF8String_(v35, v36, v105.__r_.__value_.__l.__data_, v37, v90);
    }

    v39 = v38;
    v40 = [EQKitMathMLMOperator alloc];
    v42 = objc_msgSend_initWithString_environment_(v40, v41, v39, a1[76]);
    v45 = v42;
    v46 = a1[51];
    if (a1[50] == v46)
    {
      objc_msgSend_setParent_(v42, v43, 0, v44);
    }

    else
    {
      objc_msgSend_setParent_(v42, v43, *(v46 - 8), v44);
    }

    objc_msgSend_addObject_(v11, v47, v45, v48);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v95, v111, 16, v90);
  if (v52)
  {
    v53 = 0;
    v92 = v32 - v33;
    v54 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 3);
    v55 = *v96;
    do
    {
      v56 = 0;
      v57 = v53;
      do
      {
        v58 = v53;
        if (*v96 != v55)
        {
          objc_enumerationMutation(obj);
        }

        objc_msgSend_addObject_(v11, v49, *(*(&v95 + 1) + 8 * v56), v51);
        ++v53;
        if (v58 + 1 < v10 && v102 != v101)
        {
          if (v58 >= v54)
          {
            v59 = (v101 + v92 - 24);
          }

          else
          {
            v59 = &v101[v57];
          }

          if ((SHIBYTE(v59->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (!v59->__r_.__value_.__l.__size_)
            {
              goto LABEL_52;
            }
          }

          else if (!*(&v59->__r_.__value_.__s + 23))
          {
            goto LABEL_52;
          }

          v60 = objc_alloc(MEMORY[0x277CCACA8]);
          if (SHIBYTE(v59->__r_.__value_.__r.__words[2]) < 0)
          {
            v59 = v59->__r_.__value_.__r.__words[0];
          }

          v63 = objc_msgSend_initWithUTF8String_(v60, v61, v59, v62);
          v64 = [EQKitMathMLMOperator alloc];
          v66 = objc_msgSend_initWithString_environment_(v64, v65, v63, a1[76]);
          v69 = v66;
          v70 = a1[51];
          if (a1[50] == v70)
          {
            objc_msgSend_setParent_(v66, v67, 0, v68);
          }

          else
          {
            objc_msgSend_setParent_(v66, v67, *(v70 - 8), v68);
          }

          objc_msgSend_addObject_(v11, v71, v69, v72);
        }

LABEL_52:
        ++v56;
        ++v57;
      }

      while (v52 != v56);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v95, v111, 16);
    }

    while (v52);
  }

  v73 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v73 = v104.__r_.__value_.__l.__size_;
  }

  if (v73)
  {
    v74 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = objc_msgSend_initWithUTF8String_(v74, v75, &v104, v76);
    }

    else
    {
      v77 = objc_msgSend_initWithUTF8String_(v74, v75, v104.__r_.__value_.__l.__data_, v76);
    }

    v78 = v77;
    v79 = [EQKitMathMLMOperator alloc];
    v81 = objc_msgSend_initWithString_environment_(v79, v80, v78, a1[76]);
    v84 = v81;
    v85 = a1[51];
    if (a1[50] == v85)
    {
      objc_msgSend_setParent_(v81, v82, 0, v83);
    }

    else
    {
      objc_msgSend_setParent_(v81, v82, *(v85 - 8), v83);
    }

    objc_msgSend_addObject_(v11, v86, v84, v87);
  }

  sub_275CC771C(v11, v49, v50, v51, &v106);

  sub_275CA6348(a1, &v106, v88, v89, v91);
  sub_275CC6C4C(&v106);
  v106 = &v101;
  sub_275C97BF0(&v106);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }
}

void sub_275CAAD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_275C97BF0(&__p);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CAAE38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v5 = sub_275CC7698(a2);
  v9 = objc_msgSend_schemataRow(v5, v6, v7, v8);
  sub_275CA3EF0(a1, v9, 0, v38);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v10 = a1[77];
  v11 = a1[51];
  if (a1[50] == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 - 8);
  }

  v39 = v12;
  v40 = 47;
  sub_275C8D5D4(v10, v10 + 224, &v39, &__p);
  Mutable = CGPathCreateMutable();
  v14 = __p;
  v15 = v36;
  while (v14 != v15)
  {
    v16 = sub_275CA36B0(a1, v38[0], *v14);
    CGPathAddPath(Mutable, 0, v16);
    CGPathRelease(v16);
    ++v14;
  }

  v17 = [EQKitPathBox alloc];
  objc_msgSend_height(v38[0], v18, v19, v20);
  v22 = v21.n128_f64[0];
  v23 = a1[37];
  if (v23)
  {
    v24 = *(a1[33] + 8 * ((v23 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v23 + a1[36] - 1) % 0x1AuLL);
    v25 = (v24 + 112);
  }

  else
  {
    v25 = a1 + 21;
    v24 = (a1 + 7);
  }

  v26 = *v25;
  v27 = *(v24 + 88);
  if (*(v24 + 120))
  {
    v21.n128_u64[0] = *(v24 + 128);
  }

  else
  {
    v21.n128_f64[0] = sub_275CB80C0(v24);
  }

  v28 = (*(*v27 + 40))(v27, 23, v24 + 8, v21);
  v30 = objc_msgSend_initWithCGPath_height_cgColor_drawingMode_lineWidth_(v17, v29, Mutable, v26, 2, v22, v28);
  v31 = [EQKitOverlayBox alloc];
  v33 = objc_msgSend_initWithBox_overlayBox_(v31, v32, v38[0], v30);
  sub_275C93F58(a3, v38);
  sub_275C9404C(a3, v33);

  CGPathRelease(Mutable);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  return sub_275C93FE4(v38);
}

void sub_275CAB060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_275C93FE4(&a12);
  _Unwind_Resume(a1);
}

void sub_275CAB0A4(void *a1)
{
  if (a1[49])
  {
    v6 = 0;
    v2 = a1[77];
    v3 = a1[51];
    if (a1[50] == v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v3 - 8);
    }

    v7 = v4;
    v8 = 37;
    sub_275C8D3A8(v2, v2 + 176, &v7, &v6);
    v5 = a1[49] + a1[48] - 1;
    sub_275CD2CF0(*(a1[45] + 8 * (v5 / 0x19)) + 160 * (v5 % 0x19), v6);
  }
}

void sub_275CAB160(void *a1@<X8>)
{
  v2 = objc_alloc_init(EQKitHSpace);
  sub_275C93F10(a1, v2);
  sub_275C93D90(v3, v2, 0.0);
  sub_275C94168(a1, 3, v3);
  sub_275C93E08(v3);
}

uint64_t sub_275CAB1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_275C93F10(a3, 0);
  v12 = objc_msgSend_operatorUnicharOrNul(*a2, v6, v7, v8);
  v66 = v12;
  if (*(a2 + 8) == 2)
  {
    v13 = *(a2 + 24) + *(a2 + 16);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  v14 = objc_msgSend_fontManager(*(a1 + 608), v9, v10, v11);
  v15 = sub_275C9B058(v14);
  v16 = *(a1 + 296);
  if (v16)
  {
    v17 = *(*(a1 + 264) + 8 * ((v16 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v16 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v17 = a1 + 56;
  }

  v21 = (*(*v15 + 80))(v15, &v66, *(a2 + 8), v17 + 8, v13);
  if (v21)
  {
    v22 = objc_msgSend_fontManager(*(a1 + 608), v18, v19, v20);
    v23 = sub_275C9B058(v22);
    v24 = (*(*v23 + 152))(v23, v66, v21);
    if (!v24)
    {
LABEL_24:
      CFRelease(v21);
      goto LABEL_25;
    }

    v25 = [EQKitStringBox alloc];
    v27 = *(a1 + 296);
    if (v27)
    {
      v28 = *(*(a1 + 264) + 8 * ((v27 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v27 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v28 = a1 + 56;
    }

    v29 = objc_msgSend_initWithAttributedString_cgColor_(v25, v26, v24, *(v28 + 112));
    v33 = v29;
    v34 = *(a2 + 8);
    if (v29)
    {
      v35 = v34 == 2;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      objc_msgSend_height(v29, v30, v31, v32);
      v37 = v36;
      objc_msgSend_depth(v33, v38, v39, v40);
      v42 = (v13 - (v37 + v41)) * 0.5 + v41 - *(a2 + 24);
      if (v42 == 0.0)
      {
        sub_275C93F10(v65, v33);
      }

      else
      {
        v43 = [EQKitVShift alloc];
        v46 = objc_msgSend_initWithBox_offset_(v43, v44, v33, v45, v42);
        sub_275C93F10(v65, v46);
      }

      sub_275C93FE8(a3, v65);
    }

    else
    {
      if (v34 != 1)
      {
LABEL_23:

        goto LABEL_24;
      }

      sub_275C93F10(v65, v29);
      sub_275C93FE8(a3, v65);
    }

    sub_275C93FE4(v65);
    goto LABEL_23;
  }

LABEL_25:
  if (!*a3)
  {
    v64 = *MEMORY[0x277CBF3A8];
    v47 = objc_msgSend_fontManager(*(a1 + 608), v18, v19, v20, *MEMORY[0x277CBF3A8]);
    v48 = sub_275C9B058(v47);
    v49.n128_f64[0] = *(a2 + 24) + *(a2 + 16);
    if (*(a2 + 8) != 2)
    {
      v49.n128_u64[0] = *(a2 + 32);
    }

    v50 = (*(*v48 + 88))(v48, v12, v49);
    if (v50)
    {
      if (*(a2 + 8) == 2)
      {
        v51 = *(a2 + 16);
        v52 = *(a2 + 24);
        v53 = [EQKitPathBox alloc];
        v55 = *(a1 + 296);
        if (v55)
        {
          v56 = *(*(a1 + 264) + 8 * ((v55 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v55 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v56 = a1 + 56;
        }

        v61 = objc_msgSend_initWithCGPath_height_paddingLeft_paddingRight_cgColor_(v53, v54, v50, *(v56 + 112), v51 + (*(&v64 + 1) - (v51 + v52)) * 0.5, 0.0, 0.0);
        sub_275C93F10(v65, v61);
        sub_275C93FE8(a3, v65);
      }

      else
      {
        v57 = [EQKitPathBox alloc];
        v59 = *(a1 + 296);
        if (v59)
        {
          v60 = *(*(a1 + 264) + 8 * ((v59 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v59 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v60 = a1 + 56;
        }

        v62 = objc_msgSend_initWithCGPath_height_cgColor_(v57, v58, v50, *(v60 + 112), *(&v64 + 1));
        sub_275C93F10(v65, v62);
        sub_275C93FE8(a3, v65);
      }

      sub_275C93FE4(v65);
      CGPathRelease(v50);
    }
  }

  return sub_275C940CC(a3, 5);
}

void sub_275CAB6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275C93FE4(va);
  sub_275C93FE4(v7);
  _Unwind_Resume(a1);
}

uint64_t *sub_275CAB718(uint64_t a1, void *a2)
{
  v15 = 0;
  v4 = *(a1 + 616);
  v16 = a2;
  v17 = 14;
  sub_275C8D3A8(v4, v4 + 8, &v16, &v15);
  if (v15 == 1)
  {
    return 0;
  }

  if (v15 == 2)
  {
    return 1;
  }

  v9 = objc_msgSend_operatorDictionary(*(a1 + 608), v5, v6, v7);
  v13 = objc_msgSend_operatorId(a2, v10, v11, v12);
  v14 = sub_275CA3338(a1, a2);
  result = sub_275CC8220(v9, v13, v14);
  if (result)
  {
    return ((*(result + 48) >> 1) & 1);
  }

  return result;
}

double sub_275CAB7D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = objc_msgSend_fontManager(*(a1 + 608), a2, a3, a4);
  v10 = sub_275C9B058(v9);
  v11 = *(a1 + 296);
  if (v11)
  {
    v12 = *(*(a1 + 264) + 8 * ((v11 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v11 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v12 = a1 + 56;
  }

  v13 = (*(*v10 + 64))(v10, a3, v12 + 8);
  if (v13)
  {
    v17 = v13;
    v18 = objc_msgSend_fontManager(*(a1 + 608), v14, v15, v16);
    v19 = sub_275C9B058(v18);
    if (*(v17 + 23) < 0)
    {
      sub_275CAF534(__p, *v17, *(v17 + 8));
    }

    else
    {
      v20 = *v17;
      v26 = *(v17 + 16);
      *__p = v20;
    }

    v21 = (*(*v19 + 24))(v19, a2, __p, a3);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (v21)
    {
      v22 = *(a1 + 296);
      if (v22)
      {
        v23 = *(*(a1 + 264) + 8 * ((v22 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v22 + *(a1 + 288) - 1) % 0x1AuLL);
      }

      else
      {
        v23 = a1 + 56;
      }

      return sub_275CBB138(v21, *(v23 + 24));
    }
  }

  return a5;
}

void sub_275CAB990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CAB9AC(void *a1, void *a2)
{
  v27 = sub_275CABC3C(a1);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = objc_msgSend_initWithCharacters_length_(v3, v4, &v27, 1);
  v9 = objc_msgSend_attributedString(a2, v6, v7, v8);
  v13 = objc_msgSend_string(v9, v10, v11, v12);
  v19 = objc_msgSend_rangeOfString_(v13, v14, v5, v15);
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = objc_msgSend_attributedString(a2, v16, v17, v18);
    v19 = objc_msgSend_length(v20, v21, v22, v23);
  }

  return objc_msgSend_positionOfCharacterAtIndex_(a2, v24, v19, v25);
}

void *sub_275CABA44(void *a1, const char *a2, uint64_t *a3, uint64_t a4)
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4);
  v8 = a1[37];
  if (v8)
  {
    v9 = *(a1[33] + 8 * ((v8 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v8 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v9 = (a1 + 7);
  }

  v10 = *(v9 + 88);
  v11 = sub_275CC75B8(a2);
  v15 = objc_msgSend_schemataTokenString(v11, v12, v13, v14);
  v16 = (*(*v10 + 72))(v10, v15, v9 + 8);
  v40 = sub_275CABC3C(a1);
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v19 = objc_msgSend_initWithCharacters_length_(v17, v18, &v40, 1);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  v23 = objc_msgSend_string(v16, v20, v21, v22);
  v27 = objc_msgSend_length(v16, v24, v25, v26);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_275CABCA0;
  v35[3] = &unk_27A6773C0;
  v35[4] = v16;
  v35[5] = v19;
  v35[6] = v7;
  v35[7] = &v36;
  v35[8] = v9;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v23, v28, 0, v27, 2, v35);

  v32 = objc_msgSend_count(v7, v29, v30, v31);
  *a3 = v32;
  v33 = v37[3];
  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = v32;
  }

  *a3 = v33;

  _Block_object_dispose(&v36, 8);
  return v7;
}

void sub_275CABC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275CABC3C(void *a1)
{
  v7 = 46;
  v2 = a1[77];
  v4 = a1[50];
  v3 = a1[51];
  if (v4 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 - 8);
  }

  v8 = v5;
  v9 = 35;
  sub_275CAE99C(v2, v2 + 488, &v8, &v7);
  return v7;
}

void sub_275CABCA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_attributedSubstringFromRange_(*(a1 + 32), a2, a3, a4);
  if (*(*(*(a1 + 56) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_isEqualToString_(a2, v6, *(a1 + 40), v7))
  {
    *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_count(*(a1 + 48), v9, v10, v11);
  }

  v12 = [EQKitStringBox alloc];
  v16 = objc_msgSend_initWithAttributedString_cgColor_(v12, v13, v8, *(*(a1 + 64) + 112));
  objc_msgSend_addObject_(*(a1 + 48), v14, v16, v15);
}

uint64_t sub_275CABD5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isEmbellishedOperator(a2, a2, a3, a4);
  if (result)
  {
    v10 = objc_msgSend_operatorCore(a2, v7, v8, v9);
    v21 = 0;
    v11 = *(a1 + 616);
    v22 = v10;
    v23 = 45;
    sub_275C8D3A8(v11, v11 + 8, &v22, &v21);
    if (v21)
    {
      return v21 == 2;
    }

    else
    {
      v15 = objc_msgSend_operatorDictionary(*(a1 + 608), v12, v13, v14);
      v19 = objc_msgSend_operatorId(v10, v16, v17, v18);
      v20 = sub_275CA3338(a1, v10);
      result = sub_275CC8220(v15, v19, v20);
      if (result)
      {
        return (*(result + 48) >> 5) & 1;
      }
    }
  }

  return result;
}

uint64_t sub_275CABE24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isEmbellishedOperator(a2, a2, a3, a4);
  if (result)
  {
    v10 = objc_msgSend_operatorCore(a2, v7, v8, v9);
    v14 = objc_msgSend_operatorDictionary(*(a1 + 608), v11, v12, v13);
    v18 = objc_msgSend_operatorId(v10, v15, v16, v17);
    v19 = sub_275CA3338(a1, v10);
    result = sub_275CC8220(v14, v18, v19);
    if (result)
    {
      return (*(result + 48) >> 3) & 1;
    }
  }

  return result;
}

uint64_t sub_275CABEA8(uint64_t a1, void *a2)
{
  v17 = 0;
  v4 = *(a1 + 616);
  v18 = a2;
  v19 = 16;
  sub_275C8D3A8(v4, v4 + 8, &v18, &v17);
  if (v17 == 1)
  {
    goto LABEL_6;
  }

  if (v17 != 2)
  {
    v9 = objc_msgSend_operatorDictionary(*(a1 + 608), v5, v6, v7);
    v13 = objc_msgSend_operatorId(a2, v10, v11, v12);
    v14 = sub_275CA3338(a1, a2);
    v15 = sub_275CC8220(v9, v13, v14);
    if (v15)
    {
      v8 = *(v15 + 48);
      return v8 & 1;
    }

LABEL_6:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_275CABF64(uint64_t a1, void *a2)
{
  v7 = a2;
  if (sub_275CB01C0((a1 + 472), &v7) || !sub_275CABEA8(a1, v7))
  {
    return 0;
  }

  sub_275CC6C88(v6);
  v4 = sub_275CA5C1C(a1, v7, v6, v3);
  sub_275CC6C4C(v6);
  return v4;
}

void sub_275CABFE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CC6C4C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_275CABFF4(uint64_t a1, void *a2)
{
  v15 = 0;
  v4 = *(a1 + 616);
  v16 = a2;
  v17 = 39;
  sub_275C8D3A8(v4, v4 + 8, &v16, &v15);
  if (v15 == 1)
  {
    return 0;
  }

  if (v15 == 2)
  {
    return 1;
  }

  v9 = objc_msgSend_operatorDictionary(*(a1 + 608), v5, v6, v7);
  v13 = objc_msgSend_operatorId(a2, v10, v11, v12);
  v14 = sub_275CA3338(a1, a2);
  result = sub_275CC8220(v9, v13, v14);
  if (result)
  {
    return ((*(result + 48) >> 2) & 1);
  }

  return result;
}

void *sub_275CAC0B0(void *a1, void *a2, void *a3, uint64_t a4)
{
  result = sub_275CA524C(a1, a2, a3, a4);
  if (result)
  {
    Object = objc_msgSend_firstObject(a3, v8, v9, v10);
    v16 = 2 * (Object == a2);
    if (objc_msgSend_lastObject(a3, v12, v13, v14) == a2)
    {
      v15 = (2 * (Object == a2)) | 8;
    }

    else
    {
      if (Object == a2)
      {
        return sub_275CB138C(a1 + 26, &v16);
      }

      v15 = 4;
    }

    v16 = v15;
    return sub_275CB138C(a1 + 26, &v16);
  }

  return result;
}

uint64_t sub_275CAC148(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_275CA524C(a1, a2, a3, a4);
  if (result)
  {
    v6 = a1[31];
    if (v6)
    {
      a1[31] = v6 - 1;

      return sub_275C8DF70(a1 + 26, 1);
    }
  }

  return result;
}

void sub_275CAC1A4(uint64_t *a1, void *a2)
{
  v2 = a1[49];
  if (v2)
  {
    v4 = (*(a1[45] + 8 * ((v2 + a1[48] - 1) / 0x19uLL)) + 160 * ((v2 + a1[48] - 1) % 0x19uLL));
    if (!v4[8])
    {
      memset(v41, 0, sizeof(v41));
      sub_275CAF2F8(v41, v4[1], v4[2], 0x6DB6DB6DB6DB6DB7 * ((v4[2] - v4[1]) >> 3));
      v6 = v4[7];
      v39 = 0.0;
      v40 = 0.0;
      sub_275CD2A68(v4, &v40, &v39);
      v10 = a1[37];
      if (v10)
      {
        v11 = *(a1[33] + 8 * ((v10 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v10 + a1[36] - 1) % 0x1AuLL);
      }

      else
      {
        v11 = (a1 + 7);
      }

      if ((*(v11 + 120) & 2) != 0)
      {
        v12 = *(v11 + 136);
      }

      else
      {
        v12 = sub_275CB80E8(v11);
      }

      for (i = objc_msgSend_firstIndex(v6, v7, v8, v9); i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_indexGreaterThanIndex_(v6, v17, i, v19))
      {
        v16 = sub_275CD27A8(v4, i, v13, v14);
        v20 = v16;
        if (v16)
        {
          v38 = objc_msgSend_operatorCore(v16, v17, v18, v19);
          v21 = sub_275CAFE50(a1 + 59, &v38);
          v23 = v21;
          if (v21 && *(v21 + 8) == 1)
          {
            v24 = sub_275CD2AC4(v4);
            sub_275CA4D18(a1, v38, 1, v23[7] - v24);
            sub_275CA3EF0(a1, v20, 0, v37);
            sub_275C93FE8(v41[0] + 56 * i, v37);
          }

          else
          {
            sub_275CAC0B0(a1, v20, a2, v22);
            v25 = sub_275CAB718(a1, v38);
            v26 = v40;
            if (v25)
            {
              v27 = v40 - v12;
              if (v40 - v12 < v12 + v39)
              {
                v27 = v12 + v39;
              }

              v26 = v12 + v27;
              v28 = v27 - v12;
            }

            else
            {
              v28 = v39;
            }

            v29 = sub_275CA496C(a1, v38, v26, v28);
            v30 = *(v29 + 2);
            v32 = *(v29 + 2);
            v31 = *(v29 + 3);
            v33 = *(v29 + 4);
            sub_275CA3EF0(a1, v20, 0, v37);
            v34 = v31 + v32;
            if (v30 != 2)
            {
              v34 = v33;
            }

            if (v26 + v28 < v34)
            {
              sub_275C940CC(v37, 0);
            }

            sub_275C93FE8(v41[0] + 56 * i, v37);
            sub_275CAC148(a1, v20, v35, v36);
          }

          sub_275C93FE4(v37);
        }
      }

      sub_275CD2C90(v4, v41);
      v37[0] = v41;
      sub_275CAF4B0(v37);
    }
  }
}

void sub_275CAC4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a10 = &a20;
  sub_275CAF4B0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_275CAC500(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_fontManager(*(a1 + 608), a2, a3, a4);
  v7 = sub_275C9B058(v6);
  v9 = *(a1 + 296);
  if (v9)
  {
    v10 = *(*(a1 + 264) + 8 * ((v9 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 288) - 1) % 0x1AuLL);
    v11 = v10 + 8;
  }

  else
  {
    v11 = a1 + 64;
    v10 = a1 + 56;
  }

  if (*(v10 + 120))
  {
    v8.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v8.n128_f64[0] = sub_275CB80C0(v10);
  }

  v12 = *(*v7 + 40);

  return v12(v7, a2, v11, v8);
}

void sub_275CAC5E0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 296);
  if (v8)
  {
    v9 = *(*(a1 + 264) + 8 * ((v8 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v8 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v9 = a1 + 56;
  }

  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v261 = 0;
  v254 = 0;
  v255 = &v254;
  v256 = 0x2020000000;
  v257 = 0;
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v253 = 0;
  v246 = 0;
  v247 = &v246;
  v248 = 0x2020000000;
  v249 = 0;
  if (a2)
  {
    v10 = a2;
    while (1)
    {
      v11 = v10;
      objc_msgSend_layoutSchemata(v10, a2, a3, a4);
      if (v242 != 2)
      {
        break;
      }

      v15 = sub_275CC776C(&v241, v12, v13, v14);
      if (objc_msgSend_count(v15, v16, v17, v18) != 1)
      {
        break;
      }

      v10 = objc_msgSend_objectAtIndex_(v15, v19, 0, v20);
      sub_275CC6C4C(&v241);
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    sub_275CC6C4C(&v241);
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  v240[0] = MEMORY[0x277D85DD0];
  v240[1] = 3221225472;
  v240[2] = sub_275CAD5B4;
  v240[3] = &unk_27A6773E8;
  v240[10] = a1;
  v240[6] = &v258;
  v240[7] = &v254;
  v240[8] = &v250;
  v240[9] = &v246;
  v240[4] = v11;
  v240[5] = a2;
  sub_275CA3EF0(a1, a2, v240, &v241);
  if ((v243 & 0x100) != 0)
  {
    *(v255 + 24) = 1;
  }

  v236 = 0;
  v237 = &v236;
  v238 = 0x2020000000;
  v239 = 0;
  if (a3)
  {
    v231[0] = MEMORY[0x277D85DD0];
    v231[1] = 3221225472;
    v231[2] = sub_275CAD788;
    v231[3] = &unk_27A677410;
    v231[4] = a3;
    v231[5] = &v254;
    v231[6] = &v236;
    v231[7] = a1;
    sub_275CA3F54(a1, a3, 1, 0, 2, 1, v231, v232);
  }

  else
  {
    sub_275C93F10(v232, 0);
  }

  v227 = 0;
  v228 = &v227;
  v229 = 0x2020000000;
  v230 = 0;
  if (v259[3] != 0.0)
  {
    v24 = objc_msgSend_fontManager(*(a1 + 608), v21, v22, v23);
    v25 = sub_275C9B058(v24);
    v26 = (*(*v25 + 48))(v25, 0);
    v259[3] = v26 * v259[3];
  }

  if (a4)
  {
    objc_msgSend_layoutSchemata(a4, v21, v22, v23);
    v27 = (*(*(a1 + 48) + 6) != 1 || *(v255 + 24) == 1) && sub_275CAD87C(v223);
    sub_275CC6C4C(v223);
    v222[0] = MEMORY[0x277D85DD0];
    v222[1] = 3221225472;
    v222[2] = sub_275CADA24;
    v222[3] = &unk_27A677410;
    v222[4] = a4;
    v222[5] = &v254;
    v222[6] = &v227;
    v222[7] = a1;
    sub_275CA3F54(a1, a4, !v27, 0, 2, 0, v222, v223);
  }

  else
  {
    sub_275C93F10(v223, 0);
    v27 = 0;
  }

  v32 = v232[0];
  v33 = v223[0];
  if (*(v255 + 24) == 1)
  {
    v34 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v31.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v31.n128_f64[0] = sub_275CB80C0(v9);
    }

    v43 = (*(*v34 + 40))(v34, 0, v9 + 8, v31);
    v46 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v45.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v45.n128_f64[0] = sub_275CB80C0(v9);
    }

    v44 = (*(*v46 + 40))(v46, 1, v9 + 8, v45);
  }

  else
  {
    v35 = v241;
    objc_msgSend_depth(v241, v28, v29, v30);
    v37 = v36;
    v38 = v237[3];
    objc_msgSend_height(v35, v39, v40, v41);
    v43 = v37 + v38;
    v44 = v42.n128_f64[0] - v228[3];
  }

  v47 = *(v9 + 88);
  if (*(v9 + 120))
  {
    v42.n128_u64[0] = *(v9 + 128);
  }

  else
  {
    v42.n128_f64[0] = sub_275CB80C0(v9);
  }

  v49 = (*(*v47 + 40))(v47, 8, v9 + 8, v42);
  v50 = *(v9 + 88);
  if (*(v9 + 120))
  {
    v48.n128_u64[0] = *(v9 + 128);
  }

  else
  {
    v48.n128_f64[0] = sub_275CB80C0(v9);
  }

  v51 = (*(*v50 + 40))(v50, 7, v9 + 8, v48);
  objc_msgSend_height(v32, v52, v53, v54);
  if (v43 <= v58 - v49)
  {
    objc_msgSend_height(v32, v55, v56, v57);
    v43 = v59 - v49;
  }

  objc_msgSend_depth(v33, v55, v56, v57);
  if (v44 <= v51 + v63.n128_f64[0])
  {
    objc_msgSend_depth(v33, v60, v61, v62);
    v44 = v51 + v63.n128_f64[0];
  }

  if (v33)
  {
    v64 = v27;
  }

  else
  {
    v64 = 0;
  }

  if (v64)
  {
    v44 = 0.0;
    if ((*(*(a1 + 40) + 16) & 1) == 0)
    {
      sub_275CAC500(a1, 0x1D, v61, v62);
      v247[3] = v63.n128_f64[0] + v247[3];
    }
  }

  if (v32)
  {
    v65 = v33 == 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = !v65;
  v214 = v66;
  if (!v65)
  {
    v67 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v63.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v63.n128_f64[0] = sub_275CB80C0(v9);
    }

    v68 = (*(*v67 + 40))(v67, 9, v9 + 8, v63);
    objc_msgSend_depth(v33, v69, v70, v71);
    v73 = v72;
    objc_msgSend_height(v32, v74, v75, v76);
    v78 = v44 - v73;
    v79 = v78 - (v77.n128_f64[0] - v43);
    if (v79 < v68)
    {
      v80 = *(v9 + 88);
      if (*(v9 + 120))
      {
        v77.n128_u64[0] = *(v9 + 128);
      }

      else
      {
        v77.n128_f64[0] = sub_275CB80C0(v9);
      }

      v81 = (*(*v80 + 40))(v80, 10, v9 + 8, v77);
      v82 = v68 - v79;
      if (v78 < v81)
      {
        v83 = v81 - v78;
        v84 = v82 - v83;
        v85 = v83 <= v82;
        v82 = 0.0;
        if (v85)
        {
          v82 = v84;
        }

        v44 = v44 + v83;
      }

      v43 = v43 + v82;
    }
  }

  v86 = v243;
  v87 = v243 & 0x3F | 0x40;
  v243 = v243 & 0xFF3F | 0x40;
  v233 = v233 & 0xFFCF | 0x10;
  v224 = v224 & 0xFFCF | 0x10;
  v88 = (v86 >> 4) & 3;
  if (v88 <= 1)
  {
    if (v88)
    {
      v89 = 31;
    }

    else
    {
      v89 = 30;
    }

    goto LABEL_77;
  }

  if (v88 == 2)
  {
    v89 = 32;
LABEL_77:
    sub_275CAC500(a1, v89, v61, v62);
    v91 = v90;
    v87 = v243;
    goto LABEL_79;
  }

  v91 = 0;
LABEL_79:
  v92 = v87 >> 6;
  if (v92 > 1)
  {
    v94 = 0.0;
    if (v92 != 2)
    {
      goto LABEL_86;
    }

    v93 = 32;
  }

  else if (v92)
  {
    v93 = 31;
  }

  else
  {
    v93 = 30;
  }

  sub_275CAC500(a1, v93, v61, v62);
LABEL_86:
  v244 = v91;
  v245 = v94;
  v95 = v233;
  v96 = (v233 >> 4) & 3;
  if (v96 <= 1)
  {
    if (v96)
    {
      v97 = 31;
    }

    else
    {
      v97 = 30;
    }

    goto LABEL_92;
  }

  if (v96 == 2)
  {
    v97 = 32;
LABEL_92:
    sub_275CAC500(a1, v97, v61, v62);
    v99 = v98;
    v95 = v233;
    goto LABEL_94;
  }

  v99 = 0.0;
LABEL_94:
  v100 = v95 >> 6;
  if (v100 > 1)
  {
    v102 = 0;
    if (v100 != 2)
    {
      goto LABEL_101;
    }

    v101 = 32;
  }

  else if (v100)
  {
    v101 = 31;
  }

  else
  {
    v101 = 30;
  }

  sub_275CAC500(a1, v101, v61, v62);
LABEL_101:
  v234 = v99;
  v235 = v102;
  v103 = v224;
  v104 = (v224 >> 4) & 3;
  if (v104 <= 1)
  {
    if (v104)
    {
      v105 = 31;
    }

    else
    {
      v105 = 30;
    }

    goto LABEL_107;
  }

  if (v104 == 2)
  {
    v105 = 32;
LABEL_107:
    sub_275CAC500(a1, v105, v61, v62);
    v107 = v106;
    v103 = v224;
    goto LABEL_109;
  }

  v107 = 0.0;
LABEL_109:
  v108 = v103 >> 6;
  if (v108 > 1)
  {
    v110 = 0;
    if (v108 != 2)
    {
      goto LABEL_116;
    }

    v109 = 32;
  }

  else if (v108)
  {
    v109 = 31;
  }

  else
  {
    v109 = 30;
  }

  sub_275CAC500(a1, v109, v61, v62);
LABEL_116:
  v225 = v107;
  v226 = v110;
  v111 = 0.0;
  v112 = 0.0;
  v113 = 0.0;
  v114 = MEMORY[0x277CBF348];
  if (v32)
  {
    if (v259[3] != 0.0 && v43 != 0.0 || v251[3] != 0.0)
    {
      v115 = sub_275CADB18(a3, *(a1 + 48), v61, v62);
      v116 = 0.0;
      if (v115)
      {
        v116 = v43 * tan(v259[3]);
      }

      v113 = v116 - v251[3];
    }

    v117 = v245;
    v118 = v234;
    v119 = *(a1 + 40);
    v120 = v243;
    v121 = *v114;
    v122 = v114[1];
    v123 = v241;
    v124 = v233;
    objc_msgSend_opticalAlignWidth(v241, v60, v61, v62);
    if (v117 >= v118)
    {
      v126 = v117;
    }

    else
    {
      v126 = v118;
    }

    v112 = sub_275C9B51C(v119, ((v120 >> 2) & 3), v123, v124 & 3, v232[0], v121, v122, v113 + v125, v43, v126);
  }

  v127 = 0.0;
  if (v33)
  {
    v213 = v113;
    if ((v259[3] == 0.0 || v44 == 0.0) && v247[3] == 0.0)
    {
      v130 = v43;
    }

    else
    {
      v128 = sub_275CADB18(a4, *(a1 + 48), v61, v62);
      v129 = 0.0;
      if (v128)
      {
        v129 = v44 * tan(v259[3]);
      }

      v130 = v43;
      v127 = v247[3] - v129;
    }

    v131 = v245;
    v132 = v225;
    v133 = *(a1 + 40);
    v134 = v243;
    v135 = *v114;
    v136 = v114[1];
    v137 = v241;
    v138 = v224;
    objc_msgSend_opticalAlignWidth(v241, v60, v61, v62);
    if (v131 >= v132)
    {
      v140 = v131;
    }

    else
    {
      v140 = v132;
    }

    v111 = sub_275C9B51C(v133, ((v134 >> 2) & 3), v137, v138 & 3, v223[0], v135, v136, v127 + v139, -v44, v140);
    v43 = v130;
    v113 = v213;
  }

  v141 = 0;
  if (v112 < v111)
  {
    v112 = v111;
  }

  if (v32 && v113 + v112 != 0.0)
  {
    v142 = [EQKitHSpace alloc];
    v146 = objc_msgSend_initWithWidth_(v142, v143, v144, v145, v113 + v112);
    v147 = objc_alloc(MEMORY[0x277CBEA60]);
    v141 = objc_msgSend_initWithObjects_(v147, v148, v146, v149, v32, 0);
  }

  if (v33 && v127 + v112 != 0.0 && (v150 = [EQKitHSpace alloc], v154 = objc_msgSend_initWithWidth_(v150, v151, v152, v153, v127 + v112), v155 = objc_alloc(MEMORY[0x277CBEA60]), v158 = objc_msgSend_initWithObjects_(v155, v156, v154, v157, v33, 0), v154, v158))
  {
    v159 = [EQKitHBox alloc];
    v162 = objc_msgSend_initWithChildBoxes_(v159, v160, v158, v161);
    if (!v141)
    {
LABEL_147:
      v163 = v32;
      goto LABEL_150;
    }
  }

  else
  {
    v162 = v33;
    v158 = 0;
    if (!v141)
    {
      goto LABEL_147;
    }
  }

  v164 = [EQKitHBox alloc];
  v163 = objc_msgSend_initWithChildBoxes_(v164, v165, v141, v166);
LABEL_150:
  v167 = v163;
  sub_275C93F10(v220, 0);
  if (v214)
  {
    objc_msgSend_layoutDepth(v33, v168, v169, v170);
    v172 = v171;
    objc_msgSend_layoutHeight(v32, v173, v174, v175);
    v177 = v176;
    v178 = [EQKitVSpace alloc];
    v182 = objc_msgSend_initWithHeight_depth_(v178, v179, v180, v181, v44 - v172, v43 - v177);
    v183 = objc_alloc(MEMORY[0x277CBEA60]);
    v186 = objc_msgSend_initWithObjects_(v183, v184, v162, v185, v182, v167, 0);
    v187 = [EQKitVBox alloc];
    v189 = objc_msgSend_initWithChildBoxes_pivotIndex_(v187, v188, v186, 1);
    sub_275C93F10(v219, v189);
    sub_275C93FE8(v220, v219);
    sub_275C93FE4(v219);
  }

  else if (v32)
  {
    v190 = [EQKitVShift alloc];
    v193 = objc_msgSend_initWithBox_offset_(v190, v191, v167, v192, -v43);
    sub_275C93F10(v219, v193);
    sub_275C93FE8(v220, v219);
    sub_275C93FE4(v219);
  }

  else if (v33)
  {
    v194 = [EQKitVShift alloc];
    v197 = objc_msgSend_initWithBox_offset_(v194, v195, v162, v196, v44);
    sub_275C93F10(v219, v197);
    sub_275C93FE8(v220, v219);
    sub_275C93FE4(v219);
  }

  sub_275CA3B14(a1, 1, 0);
  v243 = v243 & 0xFFF3 | 4;
  v221 = v221 & 0xFFFC | 1;
  sub_275C93F58(v218, &v241);
  sub_275CA45F8(a1, v218, a2, v198);
  sub_275C93FE4(v218);
  sub_275C93F58(v217, v220);
  v200 = *(a1 + 408);
  if (*(a1 + 400) == v200)
  {
    v201 = 0;
  }

  else
  {
    v201 = *(v200 - 8);
  }

  sub_275CA45F8(a1, v217, v201, v199);
  sub_275C93FE4(v217);
  sub_275CA3D74(a1, a5);
  v202 = *(a1 + 296);
  if (v202)
  {
    v203 = *(*(a1 + 264) + 8 * ((v202 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v202 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v203 = a1 + 56;
  }

  if ((*(v203 + 16) & 1) == 0 && (v243 & 0x1000) != 0)
  {
    if (a4)
    {
      v205 = (v224 >> 12) & 1;
    }

    else
    {
      v205 = 0;
    }

    v206 = v233 & 0x1C00;
    if (a3)
    {
      v207 = (v233 >> 12) & 1;
    }

    else
    {
      v207 = 0;
    }

    v208 = v206 > 0x1000 && a3 != 0;
    v209 = (v224 & 0x1C00u) > 0x1000 && a4 != 0;
    v210 = v207 + v205;
    if ((a3 != 0) != (a4 != 0) && v210 == 1 || (a3 ? (v211 = a4 == 0) : (v211 = 1), v211 ? (v212 = 0) : (v212 = 1), !v211 && (v224 & 0x1C00u) > 0x1000 && v206 > 0x1000 || (v204 = 0, (v212 & (v208 ^ v209)) == 1) && v210 == 2))
    {
      v204 = 3;
    }
  }

  else
  {
    v204 = 0;
  }

  sub_275C940CC(a5, v204);
  *(a5 + 32) = *(a5 + 32) & 0xFFF3 | 8;
  sub_275C93FE4(v220);
  sub_275C93FE4(v223);
  _Block_object_dispose(&v227, 8);
  sub_275C93FE4(v232);
  _Block_object_dispose(&v236, 8);
  sub_275C93FE4(&v241);
  _Block_object_dispose(&v246, 8);
  _Block_object_dispose(&v250, 8);
  _Block_object_dispose(&v254, 8);
  _Block_object_dispose(&v258, 8);
}

void sub_275CAD450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_275C93FE4(&a30);
  sub_275C93FE4(&a37);
  sub_275C93FE4(&a52);
  _Block_object_dispose(&a59, 8);
  sub_275C93FE4(&a71);
  _Block_object_dispose(&STACK[0x228], 8);
  sub_275C93FE4(&STACK[0x2A0]);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose((v71 - 248), 8);
  _Block_object_dispose((v71 - 216), 8);
  _Block_object_dispose((v71 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_275CAD5B4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1[4] == a2 && (v7 = a1[10], sub_275CC75D8(a3)))
  {
    v8 = v7[37];
    if (v8)
    {
      v9 = *(v7[33] + 8 * ((v8 + v7[36] - 1) / 0x1AuLL)) + 152 * ((v8 + v7[36] - 1) % 0x1AuLL);
    }

    else
    {
      v9 = (v7 + 7);
    }

    if ((*(v9 + 120) & 4) != 0)
    {
      v15 = *(v9 + 144);
    }

    else
    {
      v15 = sub_275CB8228(v9);
    }

    *(*(a1[6] + 8) + 24) = v15;
    v16 = sub_275CC75B8(a3);
    if (v16)
    {
      v20 = objc_msgSend_schemataUnicharOrNul(v16, v17, v18, v19);
      v21 = v7[37];
      if (v21)
      {
        v22 = *(v7[33] + 8 * ((v21 + v7[36] - 1) / 0x1AuLL)) + 152 * ((v21 + v7[36] - 1) % 0x1AuLL);
        v23 = (v22 + 88);
      }

      else
      {
        v23 = v7 + 18;
        v22 = (v7 + 7);
      }

      v24 = v20;
      if ((*(**v23 + 120))(*v23, v20, v22 + 8))
      {
        *(*(a1[7] + 8) + 24) = 1;
      }

      if (v24)
      {
        *(*(a1[8] + 8) + 24) = sub_275CAB7D4(v7, 0xA, v24, v25, 0.0);
        *(*(a1[9] + 8) + 24) = sub_275CAB7D4(v7, 9, v24, v26, 0.0);
      }
    }
  }

  else if (a1[5] == a2 && *(a3 + 8) == 2)
  {
    v11 = sub_275CC776C(a3, a2, a3, a4);
    if (!objc_msgSend_count(v11, v12, v13, v14))
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }
}

void sub_275CAD788(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = sub_275CB80C0(v6);
    }

    *(*(a1[6] + 8) + 24) = (*(*v7 + 40))(v7, 6, v6 + 8, a3);
  }
}

BOOL sub_275CAD87C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!sub_275CC75D8(a1))
  {
    if (*(a1 + 8) == 2)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = sub_275CC776C(a1, v2, v3, v4);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
      if (!v16)
      {
        return 1;
      }

      v17 = *v23;
LABEL_8:
      v18 = 0;
      while (1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        if (v19)
        {
          objc_msgSend_layoutSchemata(v19, v13, v14, v15);
        }

        else
        {
          memset(v21, 0, sizeof(v21));
        }

        v20 = sub_275CAD87C(v21);
        sub_275CC6C4C(v21);
        if ((v20 & 1) == 0)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v22, v26, 16);
          result = 1;
          if (v16)
          {
            goto LABEL_8;
          }

          return result;
        }
      }
    }

    return 0;
  }

  v5 = sub_275CC75B8(a1);
  v9 = objc_msgSend_schemataUnicharOrNul(v5, v6, v7, v8);

  return sub_275CB1984(v9);
}

void sub_275CADA24(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = sub_275CB80C0(v6);
    }

    *(*(a1[6] + 8) + 24) = (*(*v7 + 40))(v7, 5, v6 + 8, a3);
  }
}

uint64_t sub_275CADB18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    while (1)
    {
      objc_msgSend_layoutSchemata(v5, a2, a3, a4);
      if (sub_275CC75D8(&v20))
      {
        break;
      }

      if (v21 == 4)
      {
        if (*(a2 + 7) != 1)
        {
          goto LABEL_12;
        }

        v16 = sub_275CC7468(&v20);
        v15 = objc_msgSend_schemataKernel(v16, v17, v18, v19);
      }

      else
      {
        if (v21 != 2 || (v9 = sub_275CC776C(&v20, v6, v7, v8), !objc_msgSend_count(v9, v10, v11, v12)))
        {
LABEL_12:
          sub_275CC6C4C(&v20);
          return 0;
        }

        v15 = objc_msgSend_objectAtIndex_(v9, v13, 0, v14);
      }

      v5 = v15;
      sub_275CC6C4C(&v20);
      if (!v5)
      {
        return 0;
      }
    }

    sub_275CC6C4C(&v20);
    return 1;
  }

  return result;
}

uint64_t sub_275CADC0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a2)
  {
    v4 = result;
    v5 = *(result + 64);
    result = sub_275CC75D8(a3);
    if (result)
    {
      v6 = sub_275CC75B8(a3);
      *(*(v4[5] + 8) + 24) = objc_msgSend_schemataUnicharOrNul(v6, v7, v8, v9);
      v10 = v5[37];
      if (v10)
      {
        v11 = *(v5[33] + 8 * ((v10 + v5[36] - 1) / 0x1AuLL)) + 152 * ((v10 + v5[36] - 1) % 0x1AuLL);
      }

      else
      {
        v11 = (v5 + 7);
      }

      result = sub_275CADCE4(*(v4[6] + 8) + 48, v11 + 8);
      *(*(v4[7] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_275CADCE4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  return a1;
}

uint64_t sub_275CADD60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    if (*(result + 32) == a2)
    {
      result = sub_275CC75D8(a3);
      if (result)
      {
        *(*(*(v3 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void sub_275CADDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1 && *(a1 + 32) == a2)
  {
    v4 = *(a1 + 56);
    if (sub_275CC75D8(a3))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v5 = v4[37];
      if (v5)
      {
        v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
      }

      else
      {
        v6 = (v4 + 7);
      }

      v7 = sub_275CB7E84(v6);
      *(*(*(a1 + 48) + 8) + 24) = CTFontGetXHeight(v7);
    }
  }
}

uint64_t sub_275CADE74(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a2)
  {
    v4 = result;
    v5 = *(result + 64);
    result = sub_275CC75D8(a3);
    if (result)
    {
      v6 = sub_275CC75B8(a3);
      *(*(v4[5] + 8) + 24) = objc_msgSend_schemataUnicharOrNul(v6, v7, v8, v9);
      v10 = v5[37];
      if (v10)
      {
        v11 = *(v5[33] + 8 * ((v10 + v5[36] - 1) / 0x1AuLL)) + 152 * ((v10 + v5[36] - 1) % 0x1AuLL);
      }

      else
      {
        v11 = (v5 + 7);
      }

      result = sub_275CADCE4(*(v4[6] + 8) + 48, v11 + 8);
      *(*(v4[7] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_275CADF4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    if (*(result + 32) == a2)
    {
      result = sub_275CC75D8(a3);
      if (result)
      {
        *(*(*(v3 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void sub_275CADFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1 && *(a1 + 32) == a2)
  {
    v4 = *(a1 + 56);
    if (sub_275CC75D8(a3))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v5 = v4[37];
      if (v5)
      {
        v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
      }

      else
      {
        v6 = (v4 + 7);
      }

      v7 = sub_275CB7E84(v6);
      *(*(*(a1 + 48) + 8) + 24) = CTFontGetXHeight(v7);
    }
  }
}

id sub_275CAE060(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0.0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        objc_msgSend_height(a2, a2, a3, a4);
        v5 = -v22;
      }

      else if (a3 == 2)
      {
        objc_msgSend_vsize(a2, a2, a3, a4);
        v8 = v7 * 0.5;
        objc_msgSend_height(a2, v9, v10, v11);
        v13 = a1[37];
        if (v13)
        {
          v14 = *(a1[33] + 8 * ((v13 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v13 + a1[36] - 1) % 0x1AuLL);
        }

        else
        {
          v14 = (a1 + 7);
        }

        v23 = v8 - v12;
        if ((*(v14 + 120) & 2) != 0)
        {
          v24 = *(v14 + 136);
        }

        else
        {
          v24 = sub_275CB80E8(v14);
        }

        v5 = v23 + v24;
      }

      goto LABEL_17;
    }

LABEL_8:
    objc_msgSend_vsize(a2, a2, a3, a4);
    v16 = v15 * 0.5;
    objc_msgSend_height(a2, v17, v18, v19);
    v5 = v16 - v20;
    goto LABEL_17;
  }

  if ((a3 - 3) < 2)
  {
    goto LABEL_8;
  }

  if (a3 == 5)
  {
    objc_msgSend_depth(a2, a2, a3, a4);
    v5 = v21;
  }

LABEL_17:
  v25 = [EQKitVShift alloc];
  v28 = objc_msgSend_initWithBox_offset_(v25, v26, a2, v27, v5);

  return v28;
}

uint64_t sub_275CAE1A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v13 = sub_275CC74D8(a2);
  sub_275C8B298(v27, a1, v13, a3, a4, a7);
  sub_275CB0C20(a1 + 64, v27, v14, v15);
  sub_275C8B3A8(v27);
  v16 = a1[69] + a1[68] - 1;
  v17 = (*(a1[65] + 8 * (v16 / 0x18)) + 168 * (v16 % 0x18));
  sub_275C8B3AC(v17, v18, v19, v20, a6);
  v23 = sub_275C8CA54(v17, 2, v21, v22);
  *a5 = v23 - sub_275C8CA54(v17, 1, v24, v25);
  return sub_275CB0EA4(a1 + 64);
}

void sub_275CAE2A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C8B3A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CAE2C8(uint64_t a1)
{
  *a1 = &unk_2884CB630;
  v5 = (a1 + 64);
  sub_275CAF084(&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_275CAE340(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (*v6 + 96 * (v5 % 0x2A) != v7)
    {
      v8 = (*v6 + 96 * (v5 % 0x2A));
      do
      {
        v9 = *v8;
        v8 += 12;
        (*v9)();
        if (v8 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE4B8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x18];
    v7 = *v6 + 168 * (v5 % 0x18);
    v8 = v2[(a1[5] + v5) / 0x18] + 168 * ((a1[5] + v5) % 0x18);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_275C8B3A8(v7) + 168;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 12;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 24;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE5FC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x19];
    v7 = v2[(a1[5] + v5) / 0x19] + 160 * ((a1[5] + v5) % 0x19);
    if (*v6 + 160 * (v5 % 0x19) != v7)
    {
      do
      {
        v8 = sub_275CD23FC() + 160;
        if (v8 - *v6 == 4000)
        {
          v9 = v6[1];
          ++v6;
          v8 = v9;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 12;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 25;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE758(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1A];
    v7 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (*v6 + 152 * (v5 % 0x1A) != v7)
    {
      v8 = (*v6 + 152 * (v5 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v6 == 3952)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 26;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE8C8(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = (v7 + 6);
LABEL_3:
    std::string::operator=(a4, v11);
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v13, v14, v15);
    if (result)
    {
      v19 = result;
      while (1)
      {
        v20 = objc_msgSend_layoutStyleNode(v19, v16, v17, v18);
        if (v20)
        {
          v25 = v20;
          v26 = *(a3 + 8);
          v24 = sub_275C8D478(a2, &v25);
          if (v10 != v24)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v19, v21, v22, v23);
        v19 = result;
        if (!result)
        {
          return result;
        }
      }

      v11 = (v24 + 6);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CAE99C(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = *(v7 + 24);
LABEL_3:
    *a4 = v11;
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v13, v14, v15);
    if (result)
    {
      v19 = result;
      while (1)
      {
        v20 = objc_msgSend_layoutStyleNode(v19, v16, v17, v18);
        if (v20)
        {
          v25 = v20;
          v26 = *(a3 + 8);
          v24 = sub_275C8D478(a2, &v25);
          if (v10 != v24)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v19, v21, v22, v23);
        v19 = result;
        if (!result)
        {
          return result;
        }
      }

      v11 = *(v24 + 24);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CAEA6C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_275CAEAD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_275CAEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = *(v7 + 3);
    v12 = v7[8];
LABEL_3:
    *(a4 + 16) = v12;
    *a4 = v11;
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v14, v15, v16);
    if (result)
    {
      v20 = result;
      while (1)
      {
        v21 = objc_msgSend_layoutStyleNode(v20, v17, v18, v19);
        if (v21)
        {
          v26 = v21;
          v27 = *(a3 + 8);
          v25 = sub_275C8D478(a2, &v26);
          if (v10 != v25)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v20, v22, v23, v24);
        v20 = result;
        if (!result)
        {
          return result;
        }
      }

      v11 = *(v25 + 3);
      v12 = v25[8];
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CAEBE0(uint64_t a1, uint64_t a2, uint64_t a3, std::string **a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    if (v7 + 6 == a4)
    {
      return 1;
    }

    v11 = v7[6];
    v12 = v7[7];
LABEL_4:
    sub_275CAECE0(a4, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v14, v15, v16);
    if (result)
    {
      v20 = result;
      while (1)
      {
        v21 = objc_msgSend_layoutStyleNode(v20, v17, v18, v19);
        if (v21)
        {
          v26 = v21;
          v27 = *(a3 + 8);
          v25 = sub_275C8D478(a2, &v26);
          if (v10 != v25)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v20, v22, v23, v24);
        v20 = result;
        if (!result)
        {
          return result;
        }
      }

      if (v25 + 6 == a4)
      {
        return 1;
      }

      v11 = v25[6];
      v12 = v25[7];
      goto LABEL_4;
    }
  }

  return result;
}

void sub_275CAECE0(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_275CAEE80(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_275CAEEC0(a1, v10);
    }

    sub_275C8D77C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_275CAEF0C(a1, (v6 + v12), a3, v11);
  }
}

void sub_275CAEE80(uint64_t a1)
{
  if (*a1)
  {
    sub_275C97C44(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_275CAEEC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_275C97C94(a1, a2);
  }

  sub_275C8D77C();
}

char *sub_275CAEF0C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_275CAF534(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_275CAEFCC(v9);
  return v4;
}

uint64_t sub_275CAEFCC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_275CAF004(a1);
  }

  return a1;
}

void sub_275CAF004(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_275CAF04C(uint64_t a1)
{
  sub_275CAE2C8(a1);

  JUMPOUT(0x277C8CFC0);
}

void sub_275CAF084(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_275CAF0D8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_275CAF0D8(void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v8 = v4;
      sub_275CAF158(&v8);
      v5 = *(v4 - 4);
      if (v5)
      {
        *(v4 - 3) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 7);
      if (v6)
      {
        *(v4 - 6) = v6;
        operator delete(v6);
      }

      v7 = v4 - 7;
      v4 -= 10;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

void sub_275CAF158(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_275CAF1AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_275CAF1AC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 56;
    do
    {
      sub_275C93FE4(v4);
      sub_275CD23FC(v4 - 160);
      v5 = *(v4 - 200);
      if (v5)
      {
        *(v4 - 192) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 224);
      if (v6)
      {
        *(v4 - 216) = v6;
        operator delete(v6);
      }

      v7 = v4 - 224;
      v4 -= 280;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_275CAF228(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = *(v7 + 3);
LABEL_3:
    *a4 = v11;
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v13, v14, v15);
    if (result)
    {
      v19 = result;
      while (1)
      {
        v20 = objc_msgSend_layoutStyleNode(v19, v16, v17, v18);
        if (v20)
        {
          v25 = v20;
          v26 = *(a3 + 8);
          v24 = sub_275C8D478(a2, &v25);
          if (v10 != v24)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v19, v21, v22, v23);
        v19 = result;
        if (!result)
        {
          return result;
        }
      }

      v11 = *(v24 + 3);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CAF2F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275CAF380(result, a4);
  }

  return result;
}

void sub_275CAF360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_275CAF4B0(&a9);
  _Unwind_Resume(a1);
}

void sub_275CAF380(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_275CAF3D0(a1, a2);
  }

  sub_275C8D77C();
}

void sub_275CAF3D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CAF42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_275C93F58(a4, v6);
      v6 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_275CAF48C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      v4 = sub_275C93FE4(v4) - 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CAF4B0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_275C93FE4(v4 - 56);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_275CAF534(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_275C8EE7C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_275CAF5D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_275CAF624(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 26 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_275CAF6DC(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A);
  }

  result = sub_275CB7A14(v8, a2);
  ++a1[5];
  return result;
}

void *sub_275CAF6DC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_275CAFCD8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275CAF8B0(a1, &v10);
}

void sub_275CAF864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_275CAF8B0(void *result, void *a2)
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
        v11 = &v4[-*result] >> 2;
      }

      sub_275CAFCD8(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_275CAF9B8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CAFCD8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_275CAFAC4(void *result, void *a2)
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
        v11 = &v4[-*result] >> 2;
      }

      sub_275CAFCD8(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_275CAFBCC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CAFCD8(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_275CAFCD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CAFD20(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x1A)) + 152 * (v2 % 0x1A)))();
  --a1[5];

  return sub_275CAFDD8(a1, 1);
}

uint64_t sub_275CAFDD8(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1A)
  {
    a2 = 1;
  }

  if (v5 < 0x34)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_275CAFE50(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_275CAFF3C(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_275CB01C0(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_275CB02AC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = sub_275CB0338(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_275CB0338(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_275CB0934(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275CB050C(a1, &v10);
}

void sub_275CB04C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_275CB050C(void *result, void *a2)
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
        v11 = &v4[-*result] >> 2;
      }

      sub_275CB0934(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_275CB0614(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CB0934(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_275CB0720(void *result, void *a2)
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
        v11 = &v4[-*result] >> 2;
      }

      sub_275CB0934(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_275CB0828(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CB0934(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_275CB0934(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275C8D86C();
}

void *sub_275CB097C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = sub_275CB0A08(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_275CB0A08(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_275CB0934(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275CB050C(a1, &v10);
}

void sub_275CB0B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB0BDC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_275C9D8AC(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t sub_275CB0C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 24 * ((v7 - v6) >> 3) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    sub_275CB0CD0(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v9 = a1[5] + a1[4];
    v10 = *(v6 + 8 * (v9 / 0x18)) + 168 * (v9 % 0x18);
  }

  result = sub_275C8B348(v10, a2, a3, a4);
  ++a1[5];
  return result;
}

void *sub_275CB0CD0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x18;
  v3 = v1 - 24;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_275CAFCD8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275CAF8B0(a1, &v10);
}

void sub_275CB0E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB0EA4(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_275C8B3A8(*(a1[1] + 8 * (v2 / 0x18)) + 168 * (v2 % 0x18));
  --a1[5];

  return sub_275CB0F20(a1, 1);
}

uint64_t sub_275CB0F20(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 24 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x18)
  {
    a2 = 1;
  }

  if (v5 < 0x30)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

double sub_275CB0F98(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 42 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_275CB1084(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  }

  v9 = *(a2 + 8);
  *v8 = &unk_2884CB630;
  *(v8 + 8) = v9;
  *(v8 + 80) = 0;
  result = 0.0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 88) = *(a2 + 88);
  ++a1[5];
  return result;
}

void *sub_275CB1084(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_275CAFCD8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275CAF8B0(a1, &v10);
}

void sub_275CB120C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB1258(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)))();
  --a1[5];

  return sub_275CB1314(a1, 1);
}

uint64_t sub_275CB1314(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_275CB138C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = sub_275CB1418(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_275CB1418(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_275C8DF28(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275C8DB00(a1, &v10);
}

void sub_275CB15A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB15EC(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 25 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_275CB16AC(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19);
  }

  result = sub_275CD236C(v8, a2);
  ++a1[5];
  return result;
}

void *sub_275CB16AC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x19;
  v3 = v1 - 25;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_275CAFCD8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275CAF8B0(a1, &v10);
}

void sub_275CB1834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB1880(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_275CD23FC(*(a1[1] + 8 * (v2 / 0x19)) + 160 * (v2 % 0x19));
  --a1[5];

  return sub_275CB190C(a1, 1);
}

uint64_t sub_275CB190C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 25 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x19)
  {
    a2 = 1;
  }

  if (v5 < 0x32)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

BOOL sub_275CB1984(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_280A388C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A388C0))
  {
    sub_275CB1A8C(&qword_280A388A8, "", dword_275D0BEA4);
    __cxa_guard_release(&qword_280A388C0);
  }

  v2 = qword_280A388B0;
  if (!qword_280A388B0)
  {
    return 0;
  }

  v3 = &qword_280A388B0;
  do
  {
    v4 = *(v2 + 28);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  return v3 != &qword_280A388B0 && *(v3 + 7) <= a1;
}

uint64_t sub_275CB1A60(unsigned int a1)
{
  if (a1 - 917760 >= 0xF0)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1 - 917743;
  }

  if (a1 >> 4 == 4064)
  {
    return a1 - 65023;
  }

  else
  {
    return v1;
  }
}

void *sub_275CB1A8C(void *a1, unsigned int *a2, unsigned int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_275CB1B10(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_275CB1B10(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *sub_275CB1BA8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_275CB1BA8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_275CB1E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = &unk_2884CB660;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  bzero((a1 + 32), 0x50uLL);
  *(a1 + 20) = *(a4 + 8);
  v7 = *a4;
  if (*a4)
  {
    v7 = CTFontCreateWithName(v7, *(a2 + 16), 0);
  }

  *(a1 + 8) = v7;
  return a1;
}

void *sub_275CB1EF0(void *a1)
{
  *a1 = &unk_2884CB660;
  sub_275CB1F44(a1);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_275CB1F44(void *a1)
{
  if (a1[4])
  {
    v2 = sub_275C98A80();
    MEMORY[0x277C8CFC0](v2, 0x1070C40036CD406);
    a1[4] = 0;
  }

  if (a1[5])
  {
    v3 = sub_275C98A80();
    MEMORY[0x277C8CFC0](v3, 0x1070C40036CD406);
    a1[5] = 0;
  }

  if (a1[6])
  {
    v4 = sub_275C98A80();
    MEMORY[0x277C8CFC0](v4, 0x1070C40036CD406);
    a1[6] = 0;
  }

  if (a1[7])
  {
    v5 = sub_275C98A80();
    MEMORY[0x277C8CFC0](v5, 0x1070C40036CD406);
    a1[7] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    MEMORY[0x277C8CFC0](v6, 0x1000C401B087D88);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    MEMORY[0x277C8CFC0](v7, 0x1000C401B087D88);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    MEMORY[0x277C8CFC0](v8, 0x1000C401B087D88);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    MEMORY[0x277C8CFC0](v9, 0x1000C401B087D88);
    a1[11] = 0;
  }

  result = a1[12];
  if (result)
  {
    result = MEMORY[0x277C8CFC0](result, 0x1000C401B087D88);
    a1[12] = 0;
  }

  return result;
}

void sub_275CB204C(void *a1)
{
  sub_275CB1EF0(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CB2084(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 32);
  v4 = *(a1 + 20);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB2154(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 40);
  v4 = *(a1 + 22);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB2224(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 48);
  v4 = *(a1 + 24);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB22F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 56);
  v4 = *(a1 + 26);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB23C4(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return *(a1 + 64);
  }

  v3 = sub_275CB2084(a1);
  if (*(a1 + 16) == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  result = sub_275CB2420(v3, v4);
  *(a1 + 64) = result;
  *(a1 + 104) |= 1u;
  return result;
}

uint64_t sub_275CB2420(void *a1, unsigned int a2)
{
  if (a1)
  {
    sub_275C9A36C(a1, a2, v3);
    if (v3[0] == 1)
    {
      operator new();
    }
  }

  return 0;
}

uint64_t sub_275CB24B0(uint64_t a1)
{
  if ((*(a1 + 104) & 2) != 0)
  {
    return *(a1 + 72);
  }

  v2 = sub_275CB2154(a1);
  result = sub_275CB2420(v2, *(a1 + 16) == 2);
  *(a1 + 72) = result;
  *(a1 + 104) |= 2u;
  return result;
}

uint64_t sub_275CB2508(uint64_t a1)
{
  if ((*(a1 + 104) & 4) != 0)
  {
    return *(a1 + 80);
  }

  v2 = sub_275CB2224(a1);
  result = sub_275CB2420(v2, *(a1 + 16) == 2);
  *(a1 + 80) = result;
  *(a1 + 104) |= 4u;
  return result;
}

uint64_t sub_275CB2560(uint64_t a1)
{
  if ((*(a1 + 104) & 8) != 0)
  {
    return *(a1 + 88);
  }

  v2 = sub_275CB2224(a1);
  if (*(a1 + 16) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = sub_275CB2420(v2, v3);
  *(a1 + 88) = result;
  *(a1 + 104) |= 8u;
  return result;
}

uint64_t sub_275CB25BC(uint64_t a1)
{
  if ((*(a1 + 104) & 0x10) != 0)
  {
    return *(a1 + 96);
  }

  v2 = sub_275CB22F4(a1);
  if (*(a1 + 16) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = sub_275CB2420(v2, v3);
  *(a1 + 96) = result;
  *(a1 + 104) |= 0x10u;
  return result;
}

CGPath *sub_275CB2618(uint64_t a1, _OWORD *a2, double a3)
{
  Mutable = CGPathCreateMutable();
  sub_275CB271C(a1, Mutable, a3);
  sub_275C98870(v12, Mutable);
  if (v13[32] == 1)
  {
    v7 = v13;
  }

  else
  {
    v7 = sub_275C98D24(v12);
  }

  v8 = *v7;
  v9 = v7[1];
  *a2 = *(v7 + 1);
  if (v8 != 0.0 || v9 != 0.0)
  {
    CGPathRelease(Mutable);
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeTranslation(&v11, -v8, -v9);
    Mutable = CGPathCreateMutable();
    sub_275C99C28(v12, Mutable, &v11, 0);
  }

  sub_275C98A80(v12);
  return Mutable;
}

void sub_275CB2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275C98A80(va);
  _Unwind_Resume(a1);
}

double sub_275CB271C(uint64_t a1, CGPath *a2, double a3)
{
  v6 = sub_275CB2084(a1);
  v7 = sub_275CB2154(a1);
  v8 = sub_275CB2224(a1);
  v9 = sub_275CB22F4(a1);
  v10 = sub_275CB23C4(a1);
  v75 = sub_275CB24B0(a1);
  v11 = sub_275CB2508(a1);
  v12 = sub_275CB2560(a1);
  v13 = sub_275CB25BC(a1);
  v14 = a3;
  if (!(v6 | v7))
  {
    return a3 - v14;
  }

  v15 = v13;
  v16 = 0.0;
  v17 = 0.0;
  if (v6)
  {
    if (*(a1 + 16) == 2)
    {
      if (*(v6 + 120))
      {
        v18 = (v6 + 88);
      }

      else
      {
        v18 = sub_275C98D24(v6);
      }

      Height = CGRectGetHeight(*v18);
    }

    else
    {
      if (*(v6 + 120))
      {
        v19 = (v6 + 88);
      }

      else
      {
        v19 = sub_275C98D24(v6);
      }

      Height = CGRectGetWidth(*v19);
    }

    v17 = Height;
  }

  if (v7)
  {
    if (*(a1 + 16) == 2)
    {
      if (*(v7 + 120))
      {
        v21 = (v7 + 88);
      }

      else
      {
        v21 = sub_275C98D24(v7);
      }

      Width = CGRectGetHeight(*v21);
    }

    else
    {
      if (*(v7 + 120))
      {
        v22 = (v7 + 88);
      }

      else
      {
        v22 = sub_275C98D24(v7);
      }

      Width = CGRectGetWidth(*v22);
    }

    v16 = Width;
  }

  v14 = a3 - (v17 + v16);
  if (v8)
  {
    if (*(a1 + 16) == 2)
    {
      if (*(v8 + 120))
      {
        v24 = (v8 + 88);
      }

      else
      {
        v24 = sub_275C98D24(v8);
      }

      v26 = CGRectGetHeight(*v24);
    }

    else
    {
      if (*(v8 + 120))
      {
        v25 = (v8 + 88);
      }

      else
      {
        v25 = sub_275C98D24(v8);
      }

      v26 = CGRectGetWidth(*v25);
    }

    v14 = v14 - v26;
  }

  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if (v14 >= 0.0)
  {
    goto LABEL_79;
  }

  v31 = 0.0;
  if (v10)
  {
    v31 = *(v10 + 40);
  }

  if (v11)
  {
    v30 = *(v11 + 40);
  }

  v32 = 0.0;
  v33 = 0.0;
  if (v75)
  {
    v33 = *(v75 + 40);
  }

  v34 = v31 + v30;
  if (v12)
  {
    v32 = *(v12 + 40);
  }

  v35 = v33 + v32;
  v36 = fabs(v14);
  if (v36 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v36;
  }

  v38 = v36 - v37;
  if (v38 >= v35)
  {
    v38 = v35;
  }

  if (v34 >= v35)
  {
    v34 = v35;
  }

  v39 = fabs(v14 * 0.5);
  if (v39 < v34)
  {
    v34 = v39;
  }

  if (v8)
  {
    v40 = v34;
  }

  else
  {
    v40 = v38;
  }

  if (v8)
  {
    v41 = v34;
  }

  else
  {
    v41 = v37;
  }

  if (v10)
  {
    v30 = v41;
    if (*(v10 + 40) < v41)
    {
      v30 = *(v10 + 40);
    }

    if (v75)
    {
LABEL_63:
      v29 = v40;
      if (*(v75 + 40) < v40)
      {
        v29 = *(v75 + 40);
      }

      goto LABEL_71;
    }
  }

  else
  {
    v30 = 0.0;
    if (v41 <= 0.0)
    {
      v30 = v41;
    }

    if (v75)
    {
      goto LABEL_63;
    }
  }

  if (v40 <= 0.0)
  {
    v29 = v40;
  }

  else
  {
    v29 = 0.0;
  }

LABEL_71:
  v28 = v41 - v30;
  if (v11)
  {
    if (*(v11 + 40) < v28)
    {
      v28 = *(v11 + 40);
    }
  }

  else if (v28 > 0.0)
  {
    v28 = 0.0;
  }

  v42 = v40 - v29;
  if (v12)
  {
    v27 = *(v12 + 40);
    if (v27 < v42)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v42 <= 0.0)
  {
LABEL_78:
    v27 = v42;
  }

LABEL_79:
  if (v9)
  {
    if (v14 >= 0.0)
    {
      v43 = v14;
    }

    else
    {
      v43 = 0.0;
    }
  }

  else
  {
    v43 = 0.0;
    if (v14 > 0.0)
    {
      if (v10 && v75)
      {
        v30 = v30 - v14 * 0.5;
        v29 = v29 - v14 * 0.5;
      }

      else
      {
        v44 = v29 - v14;
        if (!v75)
        {
          v44 = v29;
        }

        if (v10)
        {
          v30 = v30 - v14;
        }

        else
        {
          v29 = v44;
        }
      }
    }
  }

  v81 = *MEMORY[0x277CBF348];
  if (v6)
  {
    v14 = v14 + v30;
    if (a2)
    {
      sub_275C9A6A0(v6, a2, v81.f64, *(a1 + 16) == 2, v10, -v30);
    }
  }

  if (v9)
  {
    v45 = v15 == 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;
  if (v43 > 0.0)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v8)
  {
    if (v47)
    {
      if (*(a1 + 16) == 2)
      {
        if (*(v9 + 120))
        {
          v48 = (v9 + 88);
        }

        else
        {
          v48 = sub_275C98D24(v9);
        }

        v53 = CGRectGetHeight(*v48);
      }

      else
      {
        if (*(v9 + 120))
        {
          v51 = (v9 + 88);
        }

        else
        {
          v51 = sub_275C98D24(v9);
        }

        v53 = CGRectGetWidth(*v51);
      }

      v54 = *(v15 + 40);
      if (v53 - v43 * 0.5 < v54)
      {
        if (*(a1 + 16) == 2)
        {
          if (*(v9 + 120))
          {
            v55 = (v9 + 88);
          }

          else
          {
            v55 = sub_275C98D24(v9);
          }

          v61 = CGRectGetHeight(*v55);
        }

        else
        {
          if (*(v9 + 120))
          {
            v56 = (v9 + 88);
          }

          else
          {
            v56 = sub_275C98D24(v9);
          }

          v61 = CGRectGetWidth(*v56);
        }

        v54 = v61 - v43 * 0.5;
      }

      if (*(a1 + 16) == 2)
      {
        if (*(v9 + 120))
        {
          v62 = (v9 + 88);
        }

        else
        {
          v62 = sub_275C98D24(v9);
        }

        v64 = CGRectGetHeight(*v62);
      }

      else
      {
        if (*(v9 + 120))
        {
          v63 = (v9 + 88);
        }

        else
        {
          v63 = sub_275C98D24(v9);
        }

        v64 = CGRectGetWidth(*v63);
      }

      v14 = v54 + v14 - v64;
      if (a2)
      {
        sub_275C9A6A0(v9, a2, v81.f64, *(a1 + 16) == 2, v15, -v54);
      }
    }

    if ((v28 == 0.0 || !v11) && (v27 == 0.0 || !v12))
    {
      if (a2)
      {
        sub_275C9A6A0(v8, a2, v81.f64, *(a1 + 16) == 2, 0, 0.0);
      }
    }

    else
    {
      if (a2)
      {
        sub_275C98CD0(v8);
        v79 = 0;
        v80 = 0;
        __p = 0;
        sub_275C938A4(&__p, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 4);
        sub_275C9A8D4(v8, v11, &__p, -v28);
        sub_275C9A8D4(v8, v12, &__p, -v27);
        *v77 = *MEMORY[0x277CBF348];
        sub_275C99A68(v8, *(a1 + 16) == 2, v77, &__p);
        memset(&v76, 0, sizeof(v76));
        CGAffineTransformMakeTranslation(&v76, v81.f64[0] - v77[0], v81.f64[1] - v77[1]);
        sub_275C99C28(v8, a2, &v76, &__p);
        v65 = *(a1 + 16) == 2 ? 3 : 2;
        sub_275C99A68(v8, v65, &v81, &__p);
        v81 = vaddq_f64(*&v76.tx, vmlaq_n_f64(vmulq_n_f64(*&v76.c, v81.f64[1]), *&v76.a, v81.f64[0]));
        if (__p)
        {
          v79 = __p;
          operator delete(__p);
        }
      }

      v14 = v27 + v28 + v14;
    }

    if (!v47)
    {
      goto LABEL_197;
    }

    v49 = (a1 + 16);
    if (*(a1 + 16) == 2)
    {
      if (*(v9 + 120))
      {
        v66 = (v9 + 88);
      }

      else
      {
        v66 = sub_275C98D24(v9);
      }

      v68 = CGRectGetHeight(*v66);
    }

    else
    {
      if (*(v9 + 120))
      {
        v67 = (v9 + 88);
      }

      else
      {
        v67 = sub_275C98D24(v9);
      }

      v68 = CGRectGetWidth(*v67);
    }

    v43 = v43 * 0.5;
    v58 = *(v15 + 40);
    if (v68 - v43 >= v58)
    {
      goto LABEL_186;
    }

    v59 = *(v9 + 120);
    if (*v49 == 2)
    {
      if (*(v9 + 120))
      {
        goto LABEL_179;
      }

      goto LABEL_136;
    }

    goto LABEL_181;
  }

  if (v47)
  {
    v49 = (a1 + 16);
    if (*(a1 + 16) == 2)
    {
      if (*(v9 + 120))
      {
        v50 = (v9 + 88);
      }

      else
      {
        v50 = sub_275C98D24(v9);
      }

      v57 = CGRectGetHeight(*v50);
    }

    else
    {
      if (*(v9 + 120))
      {
        v52 = (v9 + 88);
      }

      else
      {
        v52 = sub_275C98D24(v9);
      }

      v57 = CGRectGetWidth(*v52);
    }

    v58 = *(v15 + 40);
    if (v57 - v43 >= v58)
    {
      goto LABEL_186;
    }

    v59 = *(v9 + 120);
    if (*v49 == 2)
    {
      if (*(v9 + 120))
      {
LABEL_179:
        v60 = (v9 + 88);
        goto LABEL_180;
      }

LABEL_136:
      v60 = sub_275C98D24(v9);
LABEL_180:
      v69 = CGRectGetHeight(*v60);
LABEL_185:
      v58 = v69 - v43;
LABEL_186:
      if (*v49 == 2)
      {
        if (*(v9 + 120))
        {
          v71 = (v9 + 88);
        }

        else
        {
          v71 = sub_275C98D24(v9);
        }

        v73 = CGRectGetHeight(*v71);
      }

      else
      {
        if (*(v9 + 120))
        {
          v72 = (v9 + 88);
        }

        else
        {
          v72 = sub_275C98D24(v9);
        }

        v73 = CGRectGetWidth(*v72);
      }

      v14 = v58 + v14 - v73;
      if (a2)
      {
        sub_275C9A6A0(v9, a2, v81.f64, *v49 == 2, v15, -v58);
      }

      goto LABEL_197;
    }

LABEL_181:
    if (v59)
    {
      v70 = (v9 + 88);
    }

    else
    {
      v70 = sub_275C98D24(v9);
    }

    v69 = CGRectGetWidth(*v70);
    goto LABEL_185;
  }

LABEL_197:
  if (v7)
  {
    v14 = v29 + v14;
    if (a2)
    {
      sub_275C9A6A0(v7, a2, v81.f64, *(a1 + 16) == 2, v75, -v29);
    }
  }

  return a3 - v14;
}

void sub_275CB2FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CB3680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_275CB373C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_275C97498(a1, v4, v6);
      v6 += 24;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_275CB37C0(uint64_t a1, uint64_t a2)
{
  result = *sub_275CB3858(a1, &v3, a2);
  if (!result)
  {
    sub_275CB38E0();
  }

  return result;
}

void *sub_275CB3858(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_275CB397C(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_275CB397C((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_275CB3960(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_275CB3A80(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_275CB397C(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 != v4)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  v8 = *(v5 + 23);
  v11 = *(a1 + 8);
  v9 = a1 + 8;
  v10 = v11;
  v12 = *(v9 + 23);
  if (v12 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  if (v12 < 0)
  {
    v9 = v10;
  }

  if (v8 >= 0)
  {
    v14 = *(v5 + 23);
  }

  else
  {
    v14 = *(v5 + 8);
  }

  if (v8 < 0)
  {
    v5 = v6;
  }

  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = memcmp(v9, v5, v15);
  if (v16)
  {
    return v16 < 0;
  }

  else
  {
    return v13 < v14;
  }
}

void *sub_275CB3A2C(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_275CAF534(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  return a1;
}

void sub_275CB3A80(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_275CB3AE4(uint64_t a1, uint64_t a2)
{
  result = *sub_275CB3858(a1, &v3, a2);
  if (!result)
  {
    sub_275CB3B7C();
  }

  return result;
}

void sub_275CB3C08(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_275CB3A80(v3, v2);
  _Unwind_Resume(a1);
}