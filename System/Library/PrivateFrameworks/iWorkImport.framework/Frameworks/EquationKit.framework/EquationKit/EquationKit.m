double sub_275C8B298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_275C8B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = objc_msgSend_mutableCopy(*(a2 + 40), a2, a3, a4);
  *(a1 + 48) = objc_msgSend_mutableCopy(*(a2 + 48), v6, v7, v8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

uint64_t sub_275C8B34C(uint64_t a1)
{
  sub_275C8D2AC((a1 + 120));
  sub_275C8D2AC((a1 + 72));
  return a1;
}

void *sub_275C8B3AC@<X0>(void **a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  sub_275C8B830(a1, a2, a3, a4);
  if (objc_msgSend_count(a1[5], v7, v8, v9))
  {
    if (!a1[6])
    {
      a1[6] = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    sub_275C8D6C8(&__p, a1[7] + a1[8]);
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v10 = a1[5];
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v98, v105, 16);
    if (v15)
    {
      v16 = *v99;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v99 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v98 + 1) + 8 * i);
          v19 = a1[7];
          v20 = objc_msgSend_alignmentShift(v18, v12, v13, v14);
          objc_msgSend_setFirstColumnIndex_(v18, v21, v19 + v20, v22);
          v23 = __p;
          ColumnIndex = objc_msgSend_firstColumnIndex(v18, v24, v25, v26);
          objc_msgSend_populateMaxColumnWidths_(v18, v28, v23 + 8 * ColumnIndex, v29);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v98, v105, 16);
      }

      while (v15);
    }

    v30 = __p;
    if (__p == v103)
    {
      v33 = 0.0;
    }

    else
    {
      v31 = 0.0;
      do
      {
        v32 = *v30++;
        v31 = v32 + v31;
      }

      while (v30 != v103);
      v33 = v31;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v35 = a1[5];
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v12, &v94, v104, 16);
    v89 = a5;
    v40 = 0;
    if (v39)
    {
      v41 = 0;
      v42 = 0;
      v43 = *v95;
      do
      {
        v44 = 0;
        v90 = (v41 + v39);
        v45 = v42;
        do
        {
          if (*v95 != v43)
          {
            objc_enumerationMutation(v35);
          }

          v42 = *(*(&v94 + 1) + 8 * v44);
          if (v41 == a1[2])
          {
            v40 = objc_msgSend_count(a1[6], v36, v37, v38);
          }

          sub_275C8B930(a1, v42, v45, &__p, &v92, v33);
          if (v41 == a1[3])
          {
            v48 = [EQKitHVSpace alloc];
            objc_msgSend_width(v92, v49, v50, v51);
            v53 = v52;
            objc_msgSend_height(v92, v54, v55, v56);
            v58 = v57;
            objc_msgSend_depth(v92, v59, v60, v61);
            v66 = objc_msgSend_initWithWidth_height_depth_(v48, v62, v63, v64, v53, v58, v65);
            sub_275C93F10(v91, v66);
            sub_275C93FE8(&v92, v91);
            sub_275C93FE4(v91);
          }

          objc_msgSend_addObject_(a1[6], v46, v92, v47, v89);
          v41 = (v41 + 1);
          if (v41 < objc_msgSend_count(a1[5], v67, v68, v69))
          {
            v70 = [EQKitVSpace alloc];
            objc_msgSend_followingSpace(v42, v71, v72, v73);
            v77 = objc_msgSend_initWithHeight_depth_(v70, v74, v75, v76);
            objc_msgSend_addObject_(a1[6], v78, v77, v79);
          }

          sub_275C93FE4(&v92);
          ++v44;
          v45 = v42;
        }

        while (v39 != v44);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v94, v104, 16);
        v41 = v90;
      }

      while (v39);
    }

    if (a1[2] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v80 = [EQKitVBox alloc];
      a5 = v89;
      v83 = objc_msgSend_initWithChildBoxes_(v80, v81, a1[6], v82);
      LODWORD(v91[0]) = 0;
      v84 = (*a1)[77];
      v92 = sub_275CA632C(*a1);
      v93 = 2;
      sub_275C8D3A8(v84, v84 + 152, &v92, v91);
      v34 = sub_275CAE060(*a1, v83, LODWORD(v91[0]), v85);
    }

    else
    {
      v86 = [EQKitVBox alloc];
      a5 = v89;
      v34 = objc_msgSend_initWithChildBoxes_pivotIndex_(v86, v87, a1[6], v40);
    }

    if (__p)
    {
      v103 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v34 = 0;
  }

  return sub_275C93F10(a5, v34);
}

void sub_275C8B7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C8B830(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = objc_msgSend_schemataChildren(*(a1 + 8), a2, a3, a4);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (result)
  {
    v8 = result;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        sub_275CA3EF0(*a1, *(*(&v13 + 1) + 8 * v10), 0, v12);
        sub_275C93FE4(v12);
        ++v10;
      }

      while (v8 != v10);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v13, v17, 16);
      v8 = result;
    }

    while (result);
  }

  return result;
}

void sub_275C8B930(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((objc_msgSend_spansStack(a2, v13, v14, v15) & 1) == 0)
  {
    v19 = *a4;
    ColumnIndex = objc_msgSend_firstColumnIndex(a2, v16, v17, v18);
    if (ColumnIndex)
    {
      v21 = &v19[ColumnIndex];
      v22 = 0.0;
      do
      {
        v23 = *v19++;
        v22 = v23 + v22;
      }

      while (v19 != v21);
      v24 = v22;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = [EQKitHSpace alloc];
    v29 = objc_msgSend_initWithWidth_(v25, v26, v27, v28, v24);
    objc_msgSend_addObject_(v12, v30, v29, v31);
  }

  v32 = *a4;
  v33 = objc_msgSend_firstColumnIndex(a2, v16, v17, v18);
  v35 = objc_msgSend_newBoxWithStackWidth_columnWidthIter_iterMax_previousRow_layoutManager_(a2, v34, &v32[v33], *(a4 + 8), a3, *a1, a6);
  objc_msgSend_addObject_(v12, v36, v35, v37);

  v38 = [EQKitHBox alloc];
  v41 = objc_msgSend_initWithChildBoxes_(v38, v39, v12, v40);

  sub_275C93F10(a5, v41);
}

void *sub_275C8BA80@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v7 = a1 + 9;
  v6 = *a1;
  v8 = *(v6 + 616);
  v29 = sub_275CA632C(v6);
  v30 = 21;
  sub_275C8D504(v8, v8 + 392, &v29, &v28);
  v9 = sub_275C8BC68(a1);
  v29 = v28 + v9;
  sub_275C8D8A0(v7, &v29);
  v27 = 0;
  v10 = *(*a1 + 616);
  v29 = sub_275CA632C(*a1);
  v30 = 22;
  sub_275C8D504(v10, v10 + 392, &v29, &v27);
  sub_275C8D8A0(a1 + 15, &v27);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = objc_msgSend_schemataChildren(a2, v11, v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v23, v31, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v14);
        }

        sub_275CA3EF0(*a1, *(*(&v23 + 1) + 8 * v19), 0, v22);
        sub_275C93FE4(v22);
        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, &v23, v31, 16);
    }

    while (v17);
  }

  --a1[14];
  sub_275C8DF70(v7, 1);
  --a1[20];
  sub_275C8DF70(a1 + 15, 1);
  return sub_275C93F10(a3, 0);
}

uint64_t sub_275C8BC68(void *a1)
{
  v1 = a1[14];
  if (!v1)
  {
    return 0;
  }

  v3 = a1[20];
  if (!v3)
  {
    return 0;
  }

  v4 = v1 - 1;
  v5 = *(*(a1[10] + (((a1[13] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[13] + v4) & 0x1FF));
  v7 = *(*(a1[16] + (((v3 + a1[19] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + a1[19] - 1) & 0x1FF)) + v5;
  a1[14] = v4;
  sub_275C8DF70(a1 + 9, 1);
  sub_275C8D8A0(a1 + 9, &v7);
  return v5;
}

void *sub_275C8BD18@<X0>(uint64_t **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = objc_msgSend_schemataChildren(a2, v6, v7, v8);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v46, v50, 16);
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = *v47;
  v16 = 0x7FFFFFFFLL;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v47 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v18 = *(*(&v46 + 1) + 8 * i);
      if (objc_msgSend_isNumber(v18, v11, v12, v13))
      {
        v45 = 0;
        v22 = *a1;
        if (v18)
        {
          objc_msgSend_layoutSchemata(v18, v19, v20, v21);
        }

        else
        {
          memset(v44, 0, 32);
        }

        v25 = sub_275CABA44(v22, v44, &v45, v21);
        sub_275CC6C4C(v44);
        if (v16 == 0x7FFFFFFF)
        {
          v29 = objc_msgSend_count(v5, v26, v27, v28);
          v16 = v45 + v29;
        }

        objc_msgSend_addObjectsFromArray_(v5, v26, v25, v28);
      }

      else
      {
        sub_275CA3EF0(*a1, v18, 0, v44);
        objc_msgSend_addObject_(v5, v23, *&v44[0], v24);
        sub_275C93FE4(v44);
      }
    }

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v46, v50, 16);
  }

  while (v14);
  if (v16 == 0x7FFFFFFF)
  {
LABEL_17:
    v16 = objc_msgSend_count(v5, v11, v12, v13);
  }

  v45 = 0;
  v30 = (*a1)[77];
  *&v44[0] = sub_275CA632C(*a1);
  DWORD2(v44[0]) = 21;
  sub_275C8D504(v30, v30 + 392, v44, &v45);
  v31 = [EQKitLayoutElementaryStackDigitRow alloc];
  v32 = sub_275C8BC68(a1);
  v33 = v45;
  v34 = sub_275CA3150(*a1);
  v36 = v34;
  v37 = *(v34 + 88);
  if (*(v34 + 120))
  {
    v35.n128_u64[0] = *(v34 + 128);
  }

  else
  {
    v35.n128_f64[0] = sub_275CB80C0(v34);
  }

  (*(*v37 + 40))(v37, 16, v36 + 8, v35);
  v39 = objc_msgSend_initWithChildren_decimalPoint_position_followingSpace_(v31, v38, v5, v16, v33 + v32);
  sub_275C8BFF0(a1, v39, v40, v41);

  return sub_275C93F10(a3, 0);
}

void sub_275C8BFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C8BFF0(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[5];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    a1[5] = v6;
  }

  objc_msgSend_addObject_(v6, a2, a2, a4);
  v10 = objc_msgSend_alignmentShift(a2, v7, v8, v9);
  if (a1[7] <= -v10)
  {
    v14 = -v10;
  }

  else
  {
    v14 = a1[7];
  }

  a1[7] = v14;
  v15 = objc_msgSend_alignmentShift(a2, v11, v12, v13);
  result = objc_msgSend_columnCount(a2, v16, v17, v18);
  v20 = result + v15;
  if (a1[8] > result + v15)
  {
    v20 = a1[8];
  }

  a1[8] = v20;
  return result;
}

void *sub_275C8C080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 4);
  if (v4 <= 0.0)
  {
    v5 = sub_275CA3150(*a1);
    if (*(v5 + 120))
    {
      v4 = *(v5 + 128);
    }

    else
    {
      v4 = sub_275CB80C0(v5);
    }
  }

  v23 = 0;
  v6 = *(*a1 + 616);
  v24 = sub_275CA632C(*a1);
  v25 = 21;
  sub_275C8D504(v6, v6 + 392, &v24, &v23);
  v22 = 0;
  v7 = *(*a1 + 616);
  v24 = sub_275CA632C(*a1);
  v25 = 23;
  sub_275C8D504(v7, v7 + 416, &v24, &v22);
  v8 = [EQKitLayoutElementaryStackLineRow alloc];
  v9 = v22;
  v10 = sub_275C8BC68(a1);
  v11 = v23;
  v12 = sub_275CA3150(*a1);
  v14 = v12;
  v15 = *(v12 + 88);
  if (*(v12 + 120))
  {
    v13.n128_u64[0] = *(v12 + 128);
  }

  else
  {
    v13.n128_f64[0] = sub_275CB80C0(v12);
  }

  v16 = (*(*v15 + 40))(v15, 16, v14 + 8, v13);
  v18 = objc_msgSend_initWithLength_thickness_position_followingSpace_(v8, v17, v9, v11 + v10, v4, v16);
  sub_275C8BFF0(a1, v18, v19, v20);

  return sub_275C93F10(a2, 0);
}

void sub_275C8C20C(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0;
  v51 = &v50;
  v52 = 0x4812000000;
  v53 = sub_275C8C5DC;
  v54 = sub_275C8C600;
  v55 = "";
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v5 = *(*a1 + 616);
  v37 = sub_275CA632C(*a1);
  v38 = 34;
  sub_275C8D5D4(v5, v5 + 200, &v37, &v43);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = objc_msgSend_schemataChildren(a2, v6, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v39, v59, 16);
  if (v11)
  {
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = *a1;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3321888768;
        v33[2] = sub_275C8C618;
        v33[3] = &unk_2884CB290;
        v33[7] = a1;
        v33[4] = v14;
        v33[5] = &v50;
        v35 = 0;
        v36 = 0;
        __p = 0;
        sub_275C8E028(&__p, v43, v44, (v44 - v43) >> 2);
        v33[6] = &v46;
        sub_275CA3F54(v15, v14, 1, 0, 0, 0, v33, &v37);
        objc_msgSend_addObject_(v31, v16, v37, v17);
        sub_275C93FE4(&v37);
        if (__p)
        {
          v35 = __p;
          operator delete(__p);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v39, v59, 16);
    }

    while (v11);
  }

  v32 = 0;
  v19 = *(*a1 + 616);
  v37 = sub_275CA632C(*a1);
  v38 = 21;
  sub_275C8D504(v19, v19 + 392, &v37, &v32);
  v20 = [EQKitLayoutElementaryStackCarryRow alloc];
  v24 = objc_msgSend_count(v31, v21, v22, v23);
  v25 = sub_275C8BC68(a1);
  v27 = objc_msgSend_initWithChildren_decimalPoint_position_followingSpace_crossouts_(v20, v26, v31, v24, v32 + v25, v51 + 6, v47[3]);
  sub_275C8BFF0(a1, v27, v28, v29);

  sub_275C93F10(a3, 0);
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

void sub_275C8C558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

__n128 sub_275C8C5DC(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_275C8C600(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_275C8C618(void *a1, uint64_t a2)
{
  if (a1[4] != a2)
  {
    return;
  }

  v3 = a1[7];
  __p = 0;
  v26 = 0;
  v27 = 0;
  v4 = (*v3)[77];
  v28 = a2;
  v29 = 34;
  sub_275C8D5D4(v4, v4 + 200, &v28, &__p);
  v5 = __p;
  if (__p == v26)
  {
    v5 = a1[8];
    v7 = *(a1[5] + 8);
    v6 = (v7 + 6);
    if (v5 == a1[9])
    {
      v15 = v7[7];
      v14 = v7[8];
      if (v15 >= v14)
      {
        v17 = *v6;
        v18 = v15 - *v6;
        v19 = v18 >> 2;
        v20 = (v18 >> 2) + 1;
        if (v20 >> 62)
        {
          sub_275C8D77C();
        }

        v21 = v14 - v17;
        if (v21 >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
        v23 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        if (v23)
        {
          sub_275C8DFE0(v6, v23);
        }

        *(4 * v19) = 0;
        v16 = 4 * v19 + 4;
        memcpy(0, v17, v18);
        v24 = v7[6];
        v7[6] = 0;
        v7[7] = v16;
        v7[8] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v15 = 0;
        v16 = (v15 + 4);
      }

      v7[7] = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = (*(a1[5] + 8) + 48);
  }

  sub_275C8C820(v6, v5);
LABEL_6:
  v8 = *(a1[6] + 8);
  v9 = sub_275CA3150(*v3);
  v11 = v9;
  v12 = *(v9 + 88);
  if (*(v9 + 120))
  {
    v10.n128_u64[0] = *(v9 + 128);
  }

  else
  {
    v10.n128_f64[0] = sub_275CB80C0(v9);
  }

  v13 = (*(*v12 + 40))(v12, 16, v11 + 8, v10);
  if (*(v8 + 24) >= v13)
  {
    v13 = *(v8 + 24);
  }

  *(*(a1[6] + 8) + 24) = v13;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_275C8C7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C8C820(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_275C8D77C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_275C8DFE0(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_275C8C900(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = a1 + 64;
  *(v2 + 16) = 0;
  return sub_275C8E028(v2, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
}

void sub_275C8C91C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void *sub_275C8C934@<X0>(uint64_t **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_275CA3B14(*a1, 0, 1);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = objc_msgSend_schemataChildren(a2, v6, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v9);
        }

        sub_275CA43AC(*a1, *(*(&v17 + 1) + 8 * v14++), 0);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v17, v21, 16);
    }

    while (v12);
  }

  return sub_275CA3D74(*a1, a3);
}

double sub_275C8CA54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!objc_msgSend_count(*(a1 + 48), a2, a3, a4))
  {
    return 0.0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  do
  {
    v11 = objc_msgSend_objectAtIndex_(*(a1 + 48), v6, v8, v7);
    if (v9 >= a2)
    {
      objc_msgSend_height(v11, v12, v13, v14);
    }

    else
    {
      objc_msgSend_vsize(v11, v12, v13, v14);
    }

    v10 = v10 + v18;
    if ((v8 & 1) == 0 && v9 == a2)
    {
      break;
    }

    if ((v8 & 1) == 0 && v9 != a2)
    {
      ++v9;
    }

    ++v8;
  }

  while (v8 < objc_msgSend_count(*(a1 + 48), v15, v16, v17));
  return v10;
}

uint64_t sub_275C8D2AC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275C8D358(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_275C8D3A8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = *(v7 + 12);
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

      v11 = *(v24 + 12);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t *sub_275C8D478(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 10) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 10) < v6;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = v7[4];
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 10))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_275C8D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = v7[6];
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

      v11 = v24[6];
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275C8D5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
    sub_275C8E0E0(a4, v11, v12, (v12 - v11) >> 2);
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

void *sub_275C8D6C8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_275C8D740(result, a2);
  }

  return result;
}

void sub_275C8D724(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C8D740(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_275C8D794(a1, a2);
  }

  sub_275C8D77C();
}

void sub_275C8D794(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275C8D86C();
}

void sub_275C8D7DC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_275C8D838(exception, a1);
  __cxa_throw(exception, off_27A675A50, MEMORY[0x277D825F0]);
}

std::logic_error *sub_275C8D838(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_275C8D86C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_275C8D8A0(void *result, void *a2)
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
    result = sub_275C8D92C(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_275C8D92C(void *a1)
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

void sub_275C8DAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_275C8DB00(void *result, void *a2)
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

      sub_275C8DF28(result, v11);
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

const void **sub_275C8DC08(const void **result, void *a2)
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

      sub_275C8DF28(result, v9);
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

void *sub_275C8DD14(void *result, void *a2)
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

      sub_275C8DF28(result[4], v11);
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

const void **sub_275C8DE1C(const void **result, void *a2)
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

      sub_275C8DF28(result[4], v9);
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

void sub_275C8DF28(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275C8DF70(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

void sub_275C8DFE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275C8E028(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275C8E0A4(result, a4);
  }

  return result;
}

void sub_275C8E088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C8E0A4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_275C8DFE0(a1, a2);
  }

  sub_275C8D77C();
}

void *sub_275C8E0E0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_275C8E0A4(v6, v10);
    }

    sub_275C8D77C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_275C8E754(void *a1, int *a2, int *a3)
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
      sub_275C8E7D8(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_275C8E7D8(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_275C8E870(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_275C8E870(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t *sub_275C8EA18(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_275C8EA70(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_275C8EA70(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_275C8EC0C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275C8EC0C(a1, *a2);
    sub_275C8EC0C(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_275C8EDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C8EE18(void *a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v7 = objc_msgSend_objectForKey_(a1, v5, a2, v6);
  v8 = sub_275C950F4(v4, v7);

  return objc_msgSend_BOOLValue(v8, v9, v10, v11);
}

uint64_t sub_275C8FAB8(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = *(result + 16) & 0xF0 | 1;
  return result;
}

uint64_t sub_275C8FAD4(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __p = 0uLL;
    v24 = 0;
    v6 = sub_275C8FE10(a1, @"analyzeMethod", &__p, v4);
    if (!v6)
    {
      goto LABEL_27;
    }

    if (SHIBYTE(v24) < 0)
    {
      if (*(&__p + 1) != 11 || (*__p == 0x7543726F7272694DLL ? (v8 = *(__p + 3) == 0x6576727543726F72) : (v8 = 0), !v8))
      {
        if (*(&__p + 1) != 13)
        {
          goto LABEL_25;
        }

        p_p = __p;
        goto LABEL_15;
      }
    }

    else
    {
      if (HIBYTE(v24) != 11)
      {
        if (HIBYTE(v24) != 13)
        {
          goto LABEL_25;
        }

        p_p = &__p;
LABEL_15:
        v9 = *p_p;
        v10 = *(p_p + 5);
        if (v9 == 0x6C656C6C61726150 && v10 == 0x736D6574536C656CLL)
        {
          v12 = *(a2 + 16) & 0xFC | 1;
LABEL_26:
          *(a2 + 16) = v12;
LABEL_27:
          if (sub_275C8FE10(a1, @"minStemLength", &__p, v5))
          {
            sub_275CBB09C(&v22, &__p, 0);
            *a2 = v22;
            v6 = 1;
          }

          v15 = sub_275C8FE10(a1, @"axis", &__p, v14);
          v16 = HIBYTE(v24);
          if (!v15)
          {
LABEL_59:
            if ((v16 & 0x80) == 0)
            {
              return v6;
            }

LABEL_60:
            operator delete(__p);
            return v6;
          }

          if (v24 < 0)
          {
            if (*(&__p + 1) == 10 && *__p == 0x746E6F7A69726F68 && *(__p + 8) == 27745)
            {
LABEL_56:
              v20 = *(a2 + 16) & 0xF3 | 4;
              goto LABEL_57;
            }

            if (*(&__p + 1) == 8 && *__p == 0x6C61636974726576)
            {
              goto LABEL_50;
            }

            if (*(&__p + 1) != 4)
            {
              v6 = 1;
              goto LABEL_60;
            }

            v19 = __p;
          }

          else
          {
            if (HIBYTE(v24) != 4)
            {
              if (HIBYTE(v24) != 8)
              {
                if (HIBYTE(v24) != 10)
                {
                  return 1;
                }

                if (__p != 0x746E6F7A69726F68 || WORD4(__p) != 27745)
                {
                  return 1;
                }

                goto LABEL_56;
              }

              if (__p != 0x6C61636974726576)
              {
                return 1;
              }

LABEL_50:
              v20 = *(a2 + 16) & 0xF3 | 8;
              goto LABEL_57;
            }

            v19 = &__p;
          }

          if (*v19 != 1701736302)
          {
LABEL_58:
            v6 = 1;
            goto LABEL_59;
          }

          v20 = *(a2 + 16) | 0xC;
LABEL_57:
          *(a2 + 16) = v20;
          goto LABEL_58;
        }

LABEL_25:
        v12 = *(a2 + 16) & 0xFC;
        goto LABEL_26;
      }

      if (__p != 0x7543726F7272694DLL || *(&__p + 3) != 0x6576727543726F72)
      {
        goto LABEL_25;
      }
    }

    v12 = *(a2 + 16) & 0xFC | 2;
    goto LABEL_26;
  }

  return 0;
}

void sub_275C8FDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C8FE10(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKey_(a1, a2, a2, a4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = objc_msgSend_UTF8String(v5, v6, v7, v8);
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_275C8EE7C();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v15) = v11;
    if (v11)
    {
      memmove(&__dst, v10, v11);
    }

    *(&__dst + v12) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = __dst;
    *(a3 + 16) = v15;
  }

  else
  {
    MEMORY[0x277C8CD20](a3, "");
  }

  return isKindOfClass & 1;
}

uint64_t sub_275C8FF34(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = -1;
  *(result + 20) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_275C8FF4C(uint64_t a1, CTFontRef font, __int16 a3, int a4, double a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  if (font)
  {
    *a1 = CTFontCopyPostScriptName(font);
    *(a1 + 8) = CTFontGetSize(font);
  }

  return a1;
}

uint64_t sub_275C8FFA0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_275C8FFF8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

const void **sub_275C90064(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL sub_275C9009C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2 && v3)
  {
    return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
  }

  return result;
}

uint64_t sub_275C90134@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  characters = a2;
  glyphs = -1;
  if (result)
  {
    v7 = result;
    result = CTFontGetGlyphsForCharacters(result, &characters, &glyphs, 1);
    if (result)
    {
      return sub_275C8FF4C(a3, v7, glyphs, a2, a4);
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_275C901C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 24);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  if (*a2)
  {
    v6 = CTFontCreateWithName(*a2, *(a2 + 8), 0);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = sub_275C98C14(*(a2 + 16), v6);
  if (!a3)
  {
    goto LABEL_9;
  }

  if (*a3)
  {
    Size = CTFontGetSize(v6);
    *(a1 + 16) = sub_275CBB140(a3, Size, *(a2 + 24));
  }

  v8 = *(a3 + 16) & 3;
  if (v8 == 2)
  {
    v9 = sub_275C9061C(a1, a3);
LABEL_11:
    if (v9)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v8 == 1)
  {
LABEL_9:
    v9 = sub_275C9031C(a1);
    goto LABEL_11;
  }

LABEL_12:
  *a1 = 0;
  if (*(a1 + 8))
  {
    v10 = sub_275C98A80();
    MEMORY[0x277C8CFC0](v10, 0x1070C40036CD406);
  }

  *(a1 + 8) = 0;
LABEL_15:
  if (v6)
  {
    CFRelease(v6);
  }

  return a1;
}

void sub_275C902F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 48);
  if (v4)
  {
    *(v2 + 56) = v4;
    operator delete(v4);
  }

  sub_275C93344(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9031C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    sub_275C91520(v3, v1, 1);
  }

  return 0;
}

void sub_275C905F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_275C911DC(va);
  _Unwind_Resume(a1);
}

BOOL sub_275C9061C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(a2 + 16) >> 2) & 3;
  }

  else
  {
    v3 = 0;
  }

  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0;
  }

  v32 = 0.0;
  v6 = sub_275C99D48(v5, v4, &v32);
  v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = sub_275C98FD4(*(a1 + 8), v6);
    v10 = sub_275C99F2C(*(a1 + 8), v8);
    v11 = *(a1 + 8);
    sub_275C98CD0(v11);
    v12 = (*(v11 + 8) + 16 * v9);
    v13 = *v12;
    v14 = v12[1];
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    sub_275C91230((a1 + 24), &v29);
    sub_275C8EC0C(&v29, v30);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    sub_275C91230((a1 + 24), &v29);
    sub_275C8EC0C(&v29, v30);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v29 = 0;
    v17 = *(a1 + 56);
    if (v17 >= *(a1 + 64))
    {
      v18 = sub_275C9371C(a1 + 48, &v29);
    }

    else
    {
      *v17 = 0;
      v18 = (v17 + 1);
    }

    *(a1 + 56) = v18;
    v19 = *(a1 + 8);
    sub_275C98CD0(v19);
    *a1 = v4;
    v20 = *(v19 + 16) - *(v19 + 8);
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v23 = v16 - 24;
      v24 = v20 >> 4;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      do
      {
        if (v9 == v22)
        {
          if (v32 <= 0.0)
          {
            v29 = v9;
            goto LABEL_31;
          }

          v29 = v9;
        }

        else if (v10 == v22)
        {
          if (v32 > 0.0)
          {
            v29 = v10;
LABEL_31:
            v27 = v23;
            goto LABEL_32;
          }

          v29 = v10;
        }

        else
        {
          v26 = *(v19 + 8);
          if (v3 > 1)
          {
            if (*(v26 + v21 + 8) > v14)
            {
LABEL_30:
              v29 = v22;
              goto LABEL_31;
            }
          }

          else if (*(v26 + v21) > v13)
          {
            goto LABEL_30;
          }

          v29 = v22;
        }

        v27 = v15;
LABEL_32:
        sub_275C93CC4(v27, &v29);
        ++v22;
        v21 += 16;
      }

      while (v25 != v22);
    }
  }

  return v7;
}

uint64_t sub_275C90870(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = sub_275C98A80();
    MEMORY[0x277C8CFC0](v2, 0x1070C40036CD406);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 24);
  sub_275C93344(&v5);
  return a1;
}

BOOL sub_275C908E0(void **a1, double a2)
{
  v4 = 0;
  v96 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 2);
  __p = 0;
  v90 = 0;
  v91 = 0;
  v6 = (a1 + 2);
  v7 = MEMORY[0x277CBF348];
  v80 = v5;
  while (1)
  {
    v8 = *a1;
    sub_275C98CD0(*a1);
    if (v4 >= (*(v8 + 40) - *(v8 + 32)) >> 4)
    {
      break;
    }

    v87 = *v7;
    v88 = v87;
    if (sub_275C98D60(*a1, v4, &v88, &v87))
    {
      v10 = &v88.f64[1];
      if (v5 == 1)
      {
        v10 = &v88;
      }

      v11 = v10->f64[0];
      v12 = &v87.f64[1];
      if (v5 == 1)
      {
        v12 = &v87;
      }

      v13 = v12->f64[0];
      v85 = 0;
      v86 = 0;
      if (sub_275C9920C(*a1, v4, &v86, &v85, 0))
      {
        v14 = sub_275C98204(*a1, v86, v85);
        if (v5 == 1)
        {
          v14 = v15;
        }

        v16 = v14 == 0.0;
      }

      else
      {
        v16 = 0;
      }

      v17 = a1[3];
      if (v17 != v6)
      {
        v18 = 0;
        v19 = a1[3];
        do
        {
          ++v18;
          v19 = v19[1];
        }

        while (v19 != v6);
        v20 = a1[3];
        do
        {
          v21 = v18 >> 1;
          v22 = v20;
          if (v18 != 1)
          {
            v23 = v21 + 1;
            v22 = v20;
            do
            {
              v22 = v22[1];
              --v23;
            }

            while (v23 > 1);
          }

          if (*(v22 + 3) < v11)
          {
            v20 = v22[1];
            v21 = v18 + ~v21;
          }

          v18 = v21;
        }

        while (v21);
        if (v11 >= v13 || v20 == v6)
        {
          v33 = v11 != v13 || v20 == v6;
          if (!v33 && !v16)
          {
            v34 = 0;
            v81 = v11;
            v82 = v13;
            v83 = 1;
            v84 = 0uLL;
            do
            {
              v35 = &v92 + v34;
              *v35 = xmmword_275D0B7E0;
              *(v35 + 4) = 0;
              *(v35 + 3) = 0;
              *(v35 + 4) = 0;
              v34 += 40;
            }

            while (v34 != 120);
            v36 = sub_275C916A4((v20 + 2), &v81, &v92);
            if (v36)
            {
              if (v36 != 1)
              {
                sub_275C917DC();
              }

              v37 = v20;
              if (v20 + 2 != &v92)
              {
                *(v20 + 1) = v92;
                *(v20 + 8) = v93;
                v20[5] = v94;
                v37 = v20;
                v20[6] = v95;
              }

              sub_275C9185C(a1, v37, v20);
            }

            v5 = v80;
          }
        }

        else
        {
          if (v11 < *(v20 + 2) && v20 != v17)
          {
            v20 = *v20;
          }

          if (v16)
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          v81 = v11;
          v82 = v13;
          v83 = v25;
          v84 = 0uLL;
          if (v16)
          {
            v26 = &v88.f64[1];
            if (v5 != 1)
            {
              v26 = &v88;
            }

            *&v84 = v26->f64[0];
            sub_275C9164C(&__p, &v81);
          }

          if (v20 != v6)
          {
            v27 = 0;
            v28 = v20;
            while (*(v28 + 2) < v13)
            {
              for (i = 0; i != 120; i += 40)
              {
                v30 = &v92 + i;
                *v30 = xmmword_275D0B7E0;
                *(v30 + 4) = 0;
                *(v30 + 3) = 0;
                *(v30 + 4) = 0;
              }

              v31 = sub_275C916A4((v28 + 2), &v81, &v92);
              if (v31)
              {
                if (v31 != 1)
                {
                  sub_275C917DC();
                }

                if (v28 + 2 != &v92)
                {
                  *(v28 + 1) = v92;
                  *(v28 + 8) = v93;
                  v28[5] = v94;
                  v28[6] = v95;
                }

                v27 = 1;
              }

              v28 = v28[1];
              if (v28 == v6)
              {
                v28 = v6;
                break;
              }
            }

            v5 = v80;
            if (v27)
            {
              sub_275C9185C(a1, v20, v28);
            }
          }

          v7 = MEMORY[0x277CBF348];
        }
      }
    }

    ++v4;
  }

  v38 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v90 - __p) >> 3));
  *&v92 = sub_275C918FC;
  if (v90 == __p)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  sub_275C91D48(__p, v90, &v92, v39, 1, v9);
  sub_275C91934(a1, &__p);
  v40 = a1[3];
  if (v40 != v6)
  {
    v41 = 0;
    while (1)
    {
      if (*(v40 + 8) != 2)
      {
        goto LABEL_110;
      }

      v43 = __p;
      v42 = v90;
      if (__p == v90)
      {
        goto LABEL_109;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0.0;
      v48 = 0.0;
      v49 = 0.0;
      v50 = __p;
      do
      {
        v51 = *v50;
        if (*(v40 + 3) > *v50)
        {
          v52 = v50[1];
          if (*(v40 + 2) < v52)
          {
            if (v44)
            {
              v53 = vabdd_f64(v50[3], v44[3]);
              if (v47 <= v53)
              {
                v47 = v53;
              }

              v45 = 1;
              v44 = 0;
              if (!v46)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v44 = v50;
              if (!v46)
              {
LABEL_90:
                ++v46;
                v49 = v51;
                v48 = v52;
                goto LABEL_91;
              }
            }

            if (v49 > v51)
            {
              v51 = v49;
            }

            if (v48 < v52)
            {
              v52 = v48;
            }

            goto LABEL_90;
          }
        }

LABEL_91:
        v50 += 5;
      }

      while (v50 != v90);
      if (!v46)
      {
        goto LABEL_109;
      }

      v81 = v49;
      v82 = v48;
      v83 = 0;
      v84 = 0uLL;
      do
      {
        if (*(v40 + 3) <= *v43 || *(v40 + 2) >= v43[1])
        {
          for (j = 0; j != 120; j += 40)
          {
            v55 = &v92 + j;
            *v55 = xmmword_275D0B7E0;
            *(v55 + 4) = 0;
            *(v55 + 3) = 0;
            *(v55 + 4) = 0;
          }

          v56 = sub_275C916A4(&v81, v43, &v92);
          if (v56)
          {
            v57 = &v92;
            while (1)
            {
              if (*(v40 + 3) > *v57)
              {
                v58 = v57[1];
                if (*(v40 + 2) < v58)
                {
                  break;
                }
              }

              v57 += 5;
              if (!--v56)
              {
                goto LABEL_106;
              }
            }

            if (v57 != &v81)
            {
              v81 = *v57;
              v82 = v58;
              v83 = *(v57 + 4);
              v84 = *(v57 + 3);
            }
          }

LABEL_106:
          v42 = v90;
        }

        v43 += 5;
      }

      while (v43 != v42);
      if (v82 >= v81)
      {
        v59 = vabdd_f64(v82, v81);
        if (((v59 >= a2) & v45) == 1)
        {
          if (v47 / (v82 - v81) >= 2.0)
          {
            goto LABEL_109;
          }
        }

        else if (v59 < a2)
        {
          goto LABEL_109;
        }

        *(v40 + 6) = v59;
      }

      else
      {
LABEL_109:
        v41 = 1;
        *(v40 + 8) = 1;
      }

LABEL_110:
      v40 = v40[1];
      if (v40 == v6)
      {
        if (v41)
        {
          sub_275C9185C(a1, a1[3], v6);
        }

        break;
      }
    }
  }

  v60 = a1[4];
  if (v60)
  {
    v61 = a1[3];
    if (v61[8] || (v63 = *v61, v62 = *(v61 + 1), *(v63 + 8) = v62, *v62 = v63, a1[4] = (v60 - 1), operator delete(v61), (v60 = a1[4]) != 0))
    {
      v64 = *v6;
      if (*(*v6 + 8) || (v66 = *v64, v65 = v64[1], *(v66 + 8) = v65, *v65 = v66, a1[4] = (v60 - 1), operator delete(v64), a1[4]))
      {
        if (*(a1[3] + 8) == 2)
        {
          operator new();
        }

        if (*(*v6 + 8) == 2)
        {
          operator new();
        }
      }
    }
  }

  for (k = a1[3]; k != v6; k = k[1])
  {
    v68 = *(k + 8);
    if (v68 == 1)
    {
      sub_275C919EC(a1, *(k + 2), *(k + 3));
    }

    else if (v68 == 2)
    {
      v69 = k[6];
      *&v92 = v69;
      v70 = a1[9];
      if (v70 >= a1[10])
      {
        v71 = sub_275C9371C((a1 + 8), &v92);
      }

      else
      {
        *v70 = v69;
        v71 = (v70 + 1);
      }

      a1[9] = v71;
    }
  }

  v73 = a1[5];
  v72 = a1[6];
  v76 = a1 + 8;
  v74 = a1[8];
  v75 = v76[1];
  if (__p)
  {
    v90 = __p;
    operator delete(__p);
  }

  v77 = 0xAAAAAAAAAAAAAAABLL * (v72 - v73);
  return v77 > 1 && v77 == v75 - v74 + 1;
}

void sub_275C91180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C911DC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 40);
  sub_275C93344(&v4);
  sub_275C915E8((a1 + 16));
  return a1;
}

uint64_t sub_275C91230(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_275C933D0(a1, a2);
  }

  else
  {
    sub_275C939A4(a1[1], a2);
    result = v3 + 24;
    a1[1] = v3 + 24;
  }

  a1[1] = result;
  return result;
}

CGPath *sub_275C91284(int *a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 1);
  if (!v4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  if (*(v4 + 120) == 1)
  {
    v9 = (v4 + 88);
  }

  else
  {
    v9 = sub_275C98D24(v4);
  }

  v11 = *(v9 + 3);
  v12 = *a1;
  if (*a1 == 1)
  {
    v13 = v9[2];
  }

  else
  {
    v13 = v9[3];
  }

  v14 = a3 - v13;
  if (a3 - v13 <= 0.0)
  {
    v38 = *(a1 + 1);
    if (*(v38 + 120) == 1)
    {
      v39 = (v38 + 88);
    }

    else
    {
      v39 = sub_275C98D24(v38);
    }

    v40 = *v39;
    v41 = v39[1];
    *a2 = *(v39 + 1);
    Mutable = CGPathCreateMutable();
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeTranslation(&v43, -v40, -v41);
    sub_275C99C28(*(a1 + 1), Mutable, &v43, 0);
  }

  else
  {
    v15 = *v9;
    v16 = v9[1];
    v18 = *(a1 + 6);
    v17 = *(a1 + 7);
    *a2 = v9[2];
    *(a2 + 8) = v11;
    *(a2 + 8 * (v12 != 1)) = v13 + v14;
    v19 = *(a1 + 1);
    sub_275C98CD0(v19);
    v45 = 0;
    v46 = 0;
    __p = 0;
    sub_275C938A4(&__p, *(v19 + 8), *(v19 + 16), (*(v19 + 16) - *(v19 + 8)) >> 4);
    v20 = *(a1 + 3);
    v21 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 4) - v20) >> 3);
    v22 = v21 >= 2;
    v23 = v21 - 2;
    if (v22)
    {
      v24 = 0;
      v25 = v14 / ((v17 - v18) >> 3);
      v26 = __p;
      v27 = ((*(a1 + 7) - *(a1 + 6)) >> 3) + 1;
      v28 = 1;
      do
      {
        if (v28 == v27)
        {
          break;
        }

        if (v12 == 1)
        {
          v7 = v25 + v7;
        }

        else
        {
          v8 = v25 + v8;
        }

        v29 = (v20 + 24 * v28);
        v32 = *v29;
        v30 = v29 + 1;
        v31 = v32;
        if (v32 != v30)
        {
          do
          {
            v33 = &v26[16 * v31[4]];
            v34 = v8 + v33[1];
            *v33 = v7 + *v33;
            v33[1] = v34;
            v35 = v31[1];
            if (v35)
            {
              do
              {
                v36 = v35;
                v35 = *v35;
              }

              while (v35);
            }

            else
            {
              do
              {
                v36 = v31[2];
                v37 = *v36 == v31;
                v31 = v36;
              }

              while (!v37);
            }

            v31 = v36;
          }

          while (v36 != v30);
        }

        ++v28;
        v37 = v24++ == v23;
      }

      while (!v37);
    }

    Mutable = CGPathCreateMutable();
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeTranslation(&v43, -v15, -v16);
    sub_275C99C28(*(a1 + 1), Mutable, &v43, &__p);
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }
  }

  return Mutable;
}

void sub_275C91500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C91520(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  operator new();
}

void sub_275C915B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 64);
  if (v13)
  {
    *(v10 + 72) = v13;
    operator delete(v13);
  }

  a10 = (v10 + 40);
  sub_275C93344(&a10);
  sub_275C915E8(v11);
  _Unwind_Resume(a1);
}

void *sub_275C915E8(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_275C9164C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_275C91AEC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_275C916A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = v3 - *a2 == 0.0 && v5 == 1;
  if (!v6 && (v3 <= *a1 || v4 >= *(a1 + 8)))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (v7 == 1 || v7 == v5)
  {
    return 0;
  }

  v11 = *a1;
  if (*a1 == v4)
  {
    v12 = *(a1 + 8);
    if (v12 == v3)
    {
      if (v5 == 1)
      {
        if (a3 != a1)
        {
          *a3 = v11;
          *(a3 + 8) = v12;
          *(a3 + 24) = *(a1 + 24);
        }

        v9 = 1;
        *(a3 + 16) = 1;
        return v9;
      }

      if (!v7)
      {
        if (a3 != a2)
        {
          *a3 = v4;
          *(a3 + 8) = v3;
          *(a3 + 16) = v5;
          *(a3 + 24) = *(a2 + 24);
        }

        return 1;
      }

      return 0;
    }
  }

  if (v11 >= v4)
  {
    v13 = 0;
  }

  else
  {
    *a3 = v11;
    *(a3 + 8) = v4;
    *(a3 + 16) = v7;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v11 = *a1;
    v4 = *a2;
    v3 = *(a2 + 8);
    v13 = 1;
    v5 = *(a2 + 16);
  }

  if (v11 > v4)
  {
    v4 = v11;
  }

  if (v3 >= *(a1 + 8))
  {
    v3 = *(a1 + 8);
  }

  v14 = a3 + 40 * v13;
  *v14 = v4;
  *(v14 + 8) = v3;
  *(v14 + 16) = v5;
  v9 = v13 + 1;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = *(a2 + 8);
  v16 = *(a1 + 8);
  if (v15 < v16)
  {
    v17 = *(a1 + 16);
    v18 = a3 + 40 * v9;
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = v17;
    v9 = v13 | 2;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
  }

  return v9;
}

void sub_275C9185C(uint64_t a1, void **__p, void *a3)
{
  v3 = a3;
  v4 = __p;
  v6 = (a1 + 16);
  if (*(a1 + 24) != __p)
  {
    v4 = *__p;
  }

  if (v6 != a3)
  {
    v3 = a3[1];
  }

  while (v4 != v3)
  {
    v7 = v4;
    v4 = *(v4 + 1);
    if (v4 != v6 && v7[8] == v4[8])
    {
      *(v4 + 2) = *(v7 + 2);
      v8 = *v7;
      *(v8 + 8) = v4;
      *v4 = v8;
      --*(a1 + 32);
      operator delete(v7);
    }
  }
}

BOOL sub_275C918FC(double *a1, double *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *a1 < *a2;
  }

  return 0;
}

void sub_275C91934(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 != v2)
  {
    do
    {
      if (v3 + 40 != v2 && *(v3 + 8) == *(v3 + 40) && *(v3 + 24) == *(v3 + 64) && *(v3 + 16) == *(v3 + 56))
      {
        *(v3 + 8) = *(v3 + 48);
        if (v3 + 80 == v2)
        {
          v2 = v3 + 40;
        }

        else
        {
          v4 = v3 + 56;
          v5 = v3 + 56;
          do
          {
            *(v4 - 16) = *(v4 + 24);
            v6 = *(v5 + 40);
            v5 += 40;
            *v4 = v6;
            *(v4 + 8) = *(v4 + 48);
            v7 = v4 + 64;
            v4 = v5;
          }

          while (v7 != v2);
          v2 = v5 - 16;
        }

        a2[1] = v2;
      }

      else
      {
        v3 += 40;
      }
    }

    while (v3 != v2);
  }
}

void sub_275C919EC(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 8);
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  sub_275C91230((a1 + 40), &v16);
  sub_275C8EC0C(&v16, v17[0]);
  v7 = *(a1 + 48);
  v8 = *a1;
  sub_275C98CD0(v8);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v7 - 24;
    do
    {
      v14 = (v10 + v11);
      if (v6 != 1)
      {
        v14 = (v10 + v11 + 8);
      }

      if (*v14 >= a2 && *v14 <= a3)
      {
        v16 = v12;
        sub_275C93CC4(v13, &v16);
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
      }

      ++v12;
      v11 += 16;
    }

    while (v12 < (v9 - v10) >> 4);
  }
}

uint64_t sub_275C91AEC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_275C8D77C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_275C91CF0(a1, v6);
  }

  v7 = 40 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  v12 = 40 * v2 + 40;
  v13 = 0;
  sub_275C91C6C(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 40) % 0x28uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_275C91C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275C91C6C(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 24) = *(v5 + 24);
      v5 += 40;
      v6 += 40;
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

void sub_275C91CF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275C91D48(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 a6)
{
  v8 = a2;
  v9 = result;
  v50 = a2;
  v51 = result;
LABEL_2:
  v10 = 1 - a4;
  v49 = a5;
  while (1)
  {
    v11 = v8 - v9;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3);
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v44 = *a3;
        v50 = (v8 - 40);
        result = (v44)();
        if (result)
        {
          v45 = &v51;
          v46 = &v50;
          return sub_275C923EC(v45, v46);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v50 = (v8 - 40);
      return sub_275C92430(v9, (v9 + 40), v9 + 5, (v8 - 40), a3);
    }

    if (v12 == 5)
    {
      v50 = (v8 - 40);
      v55 = (v9 + 40);
      v56 = v9;
      v53 = (v9 + 120);
      v54 = v9 + 5;
      v52 = (v8 - 40);
      sub_275C92430(v9, (v9 + 40), v9 + 5, (v9 + 120), a3);
      result = (*a3)((v8 - 40), (v9 + 120));
      if (result)
      {
        sub_275C923EC(&v53, &v52);
        result = (*a3)(v53, v9 + 5);
        if (result)
        {
          sub_275C923EC(&v54, &v53);
          result = (*a3)(v54, (v9 + 40));
          if (result)
          {
            sub_275C923EC(&v55, &v54);
            result = (*a3)(v55, v9);
            goto LABEL_93;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 959)
    {
      if (a5)
      {
        return sub_275C92570(v9, v8, a3);
      }

      else
      {
        return sub_275C9268C(v9, v8, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != v8)
      {
        return sub_275C92E14(v9, v8, v8, a3, a6);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 40 * (v12 >> 1));
    v15 = (v8 - 40);
    if (v11 < 0x1401)
    {
      v55 = v9;
      v56 = (v9 + 40 * (v12 >> 1));
      v54 = v15;
      v19 = (*a3)(v9, v56);
      v20 = (*a3)(v15, v9);
      if (v19)
      {
        if (v20)
        {
          v21 = &v56;
          goto LABEL_37;
        }

        sub_275C923EC(&v56, &v55);
        if ((*a3)(v54, v55))
        {
          v21 = &v55;
LABEL_37:
          v23 = &v54;
LABEL_38:
          sub_275C923EC(v21, v23);
        }
      }

      else if (v20)
      {
        sub_275C923EC(&v55, &v54);
        if ((*a3)(v55, v56))
        {
          v21 = &v56;
          v23 = &v55;
          goto LABEL_38;
        }
      }

      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_66;
    }

    v55 = (v9 + 40 * (v12 >> 1));
    v56 = v9;
    v54 = v15;
    v16 = (*a3)(v55, v9);
    v17 = (*a3)(v15, v14);
    if (v16)
    {
      if (v17)
      {
        v18 = &v56;
      }

      else
      {
        sub_275C923EC(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_29;
        }

        v18 = &v55;
      }

      v22 = &v54;
      goto LABEL_28;
    }

    if (v17)
    {
      sub_275C923EC(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v18 = &v56;
        v22 = &v55;
LABEL_28:
        sub_275C923EC(v18, v22);
      }
    }

LABEL_29:
    v24 = (v51 + 40 * v13 - 40);
    v55 = v24;
    v56 = (v51 + 40);
    v54 = v50 - 5;
    v25 = (*a3)(v24);
    v26 = (*a3)(v50 - 5, v24);
    if (v25)
    {
      if (v26)
      {
        v27 = &v56;
      }

      else
      {
        sub_275C923EC(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_45;
        }

        v27 = &v55;
      }

      v28 = &v54;
      goto LABEL_44;
    }

    if (v26)
    {
      sub_275C923EC(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v27 = &v56;
        v28 = &v55;
LABEL_44:
        sub_275C923EC(v27, v28);
      }
    }

LABEL_45:
    v29 = (v51 + 40 * v13 + 40);
    v55 = v29;
    v56 = v51 + 5;
    v54 = (v50 - 120);
    v30 = (*a3)(v29);
    v31 = (*a3)((v50 - 120), v29);
    if (v30)
    {
      if (v31)
      {
        v32 = &v56;
      }

      else
      {
        sub_275C923EC(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_55;
        }

        v32 = &v55;
      }

      v33 = &v54;
      goto LABEL_54;
    }

    if (v31)
    {
      sub_275C923EC(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v32 = &v56;
        v33 = &v55;
LABEL_54:
        sub_275C923EC(v32, v33);
      }
    }

LABEL_55:
    v34 = (v51 + 40 * v13);
    v35 = (v51 + 40 * v13 + 40);
    v55 = v34;
    v56 = (v51 + 40 * v13 - 40);
    v54 = v35;
    v36 = (*a3)(v34);
    v37 = (*a3)(v35, v34);
    if (v36)
    {
      a5 = v49;
      if (v37)
      {
        v38 = &v56;
      }

      else
      {
        sub_275C923EC(&v56, &v55);
        if (!(*a3)(v54, v55))
        {
          goto LABEL_65;
        }

        v38 = &v55;
      }

      v39 = &v54;
      goto LABEL_64;
    }

    a5 = v49;
    if (v37)
    {
      sub_275C923EC(&v55, &v54);
      if ((*a3)(v55, v56))
      {
        v38 = &v56;
        v39 = &v55;
LABEL_64:
        sub_275C923EC(v38, v39);
      }
    }

LABEL_65:
    v56 = (v51 + 40 * v13);
    sub_275C923EC(&v51, &v56);
    if (a5)
    {
LABEL_40:
      v8 = v50;
      goto LABEL_67;
    }

LABEL_66:
    v8 = v50;
    if (((*a3)(v51 - 40) & 1) == 0)
    {
      result = sub_275C92788(v51, v50, a3);
      v9 = result;
      goto LABEL_76;
    }

LABEL_67:
    a6.n128_f64[0] = sub_275C92914(v51, v8, a3);
    v41 = v40;
    if ((v42 & 1) == 0)
    {
      goto LABEL_74;
    }

    v43 = sub_275C92A94(v51, v40, a3);
    v9 = (v41 + 40);
    result = sub_275C92A94((v41 + 40), v8, a3);
    if (result)
    {
      if (v43)
      {
        return result;
      }

      v50 = v41;
      v9 = v51;
      v8 = v41;
    }

    else
    {
      if (!v43)
      {
LABEL_74:
        result = sub_275C91D48(v51, v41, a3, -v10, a5 & 1, a6);
        v9 = (v41 + 40);
LABEL_76:
        a5 = 0;
        v51 = v9;
        a4 = -v10;
        goto LABEL_2;
      }

      v51 = (v41 + 40);
    }

    ++v10;
  }

  v47 = (v9 + 40);
  v50 = (v8 - 40);
  v55 = (v9 + 40);
  v56 = v9;
  v54 = (v8 - 40);
  v48 = (*a3)((v9 + 40), v9);
  result = (*a3)((v8 - 40), v47);
  if (v48)
  {
    if (result)
    {
      v45 = &v56;
    }

    else
    {
      sub_275C923EC(&v56, &v55);
      result = (*a3)(v54, v55);
      if (!result)
      {
        return result;
      }

      v45 = &v55;
    }

    v46 = &v54;
    return sub_275C923EC(v45, v46);
  }

  if (result)
  {
    sub_275C923EC(&v55, &v54);
    result = (*a3)(v55, v56);
LABEL_93:
    if (result)
    {
      v45 = &v56;
      v46 = &v55;
      return sub_275C923EC(v45, v46);
    }
  }

  return result;
}

__int128 **sub_275C923EC(__int128 **result, __int128 **a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = **result;
  v5 = *(*result + 4);
  v6 = *(*result + 24);
  if (*result != *a2)
  {
    *v2 = *v3;
    *(v2 + 4) = *(v3 + 4);
    *(v2 + 24) = *(v3 + 24);
  }

  *v3 = v4;
  *(v3 + 4) = v5;
  *(v3 + 24) = v6;
  return result;
}

__int128 **sub_275C92430(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(__int128 *, __int128 *))
{
  v17 = a2;
  v18 = a1;
  v15 = a4;
  v16 = a3;
  v20 = a2;
  v21 = a1;
  v19 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v21;
LABEL_9:
      v13 = &v19;
      goto LABEL_10;
    }

    sub_275C923EC(&v21, &v20);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_275C923EC(&v20, &v19);
    if ((*a5)(v20, v21))
    {
      v12 = &v21;
      v13 = &v20;
LABEL_10:
      sub_275C923EC(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_275C923EC(&v16, &v15);
    result = (*a5)(v16, a2);
    if (result)
    {
      sub_275C923EC(&v17, &v16);
      result = (*a5)(v17, a1);
      if (result)
      {
        return sub_275C923EC(&v18, &v17);
      }
    }
  }

  return result;
}

uint64_t sub_275C92570(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v18 = v3;
    v19 = v4;
    v6 = result;
    v7 = (result + 40);
    if ((result + 40) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v15 = *v11;
          v16 = *(v10 + 14);
          v17 = v10[4];
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 40) = *(v6 + v12);
            *(v13 + 56) = *(v6 + v12 + 16);
            *(v13 + 64) = *(v6 + v12 + 24);
            if (!v12)
            {
              break;
            }

            v12 -= 40;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 40;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          if (v14 != &v15)
          {
            *v14 = v15;
            *(v14 + 16) = v16;
            *(v14 + 24) = v17;
          }
        }

        v7 = (v11 + 40);
        v9 += 40;
        v10 = v11;
      }

      while ((v11 + 40) != a2);
    }
  }

  return result;
}

uint64_t sub_275C9268C(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = result;
    v7 = (result + 40);
    if ((result + 40) != a2)
    {
      v9 = result - 40;
      do
      {
        v10 = v7;
        result = (*a3)(v7, v6);
        if (result)
        {
          v12 = *v10;
          v13 = *(v6 + 14);
          v14 = v6[4];
          v11 = v9;
          do
          {
            *(v11 + 80) = *(v11 + 40);
            *(v11 + 96) = *(v11 + 56);
            *(v11 + 104) = *(v11 + 64);
            result = (*a3)(&v12, v11);
            v11 -= 40;
          }

          while ((result & 1) != 0);
          if ((v11 + 80) != &v12)
          {
            *(v11 + 80) = v12;
            *(v11 + 96) = v13;
            *(v11 + 104) = v14;
          }
        }

        v7 = (v10 + 40);
        v9 += 40;
        v6 = v10;
      }

      while ((v10 + 40) != a2);
    }
  }

  return result;
}

__int128 *sub_275C92788(uint64_t a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v13 = a2;
  v10 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  if ((*a3)(&v10, (a2 - 40)))
  {
    v5 = a1;
    do
    {
      v5 = (v5 + 40);
      v14 = v5;
    }

    while (((*a3)(&v10, v5) & 1) == 0);
  }

  else
  {
    v6 = (a1 + 40);
    do
    {
      v5 = v6;
      v14 = v6;
      if (v6 >= v13)
      {
        break;
      }

      v7 = (*a3)(&v10, v6);
      v6 = (v5 + 40);
    }

    while (!v7);
  }

  v8 = v13;
  if (v5 < v13)
  {
    do
    {
      v8 = (v8 - 40);
      v13 = v8;
    }

    while (((*a3)(&v10, v8) & 1) != 0);
    v5 = v14;
  }

  if (v5 < v8)
  {
    do
    {
      sub_275C923EC(&v14, &v13);
      do
      {
        v14 = (v14 + 40);
      }

      while (!(*a3)(&v10));
      do
      {
        v13 = (v13 - 40);
      }

      while (((*a3)(&v10) & 1) != 0);
      v5 = v14;
    }

    while (v14 < v13);
  }

  if ((v5 - 40) != a1)
  {
    *a1 = *(v5 - 40);
    *(a1 + 16) = *(v5 - 6);
    *(a1 + 24) = *(v5 - 1);
  }

  if ((v5 - 40) != &v10)
  {
    *(v5 - 40) = v10;
    *(v5 - 6) = v11;
    *(v5 - 1) = v12;
  }

  return v5;
}

double sub_275C92914(uint64_t a1, __int128 *a2, uint64_t (**a3)(void))
{
  v5 = 0;
  v17 = a2;
  v14 = *a1;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  do
  {
    v5 += 40;
    v18 = (v5 + a1);
  }

  while (((*a3)() & 1) != 0);
  v7 = v17;
  if (v5 == 40)
  {
    v10 = (a1 + 40);
    do
    {
      if (v10 >= v7)
      {
        break;
      }

      v11 = *a3;
      v7 = (v7 - 40);
      v17 = v7;
    }

    while (((v11)(v7, &v14) & 1) == 0);
  }

  else
  {
    v8 = (v17 - 40);
    do
    {
      v17 = v8;
      v9 = (*a3)(v8, &v14);
      v8 = (v8 - 40);
    }

    while (!v9);
    v10 = v18;
  }

  v12 = v10;
  if (v10 < v17)
  {
    do
    {
      sub_275C923EC(&v18, &v17);
      do
      {
        v18 = (v18 + 40);
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v17 = (v17 - 40);
      }

      while (!(*a3)());
      v12 = v18;
    }

    while (v18 < v17);
  }

  if ((v12 - 40) != a1)
  {
    *a1 = *(v12 - 40);
    *(a1 + 16) = *(v12 - 6);
    v6 = *(v12 - 1);
    *(a1 + 24) = v6;
  }

  if ((v12 - 40) != &v14)
  {
    *(v12 - 40) = v14;
    *(v12 - 6) = v15;
    *&v6 = v16;
    *(v12 - 1) = v16;
  }

  return *&v6;
}

BOOL sub_275C92A94(__int128 *a1, char *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v28 = a2;
  v29 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = (a1 + 40);
        v13 = (a2 - 40);
        *&v25 = a1;
        v32 = (a2 - 40);
        v33 = (a1 + 40);
        v14 = (*a3)((a1 + 40), a1);
        v15 = (*a3)(v13, v12);
        if (v14)
        {
          if (v15)
          {
            v8 = &v25;
          }

          else
          {
            sub_275C923EC(&v25, &v33);
            if (!(*a3)(v32, v33))
            {
              return 1;
            }

            v8 = &v33;
          }

          v9 = &v32;
          goto LABEL_30;
        }

        if (!v15)
        {
          return 1;
        }

        sub_275C923EC(&v33, &v32);
        v11 = (*a3)(v33, v25);
        break;
      case 4:
        sub_275C92430(a1, (a1 + 40), a1 + 5, (a2 - 40), a3);
        return 1;
      case 5:
        *&v25 = a1;
        v32 = a1 + 5;
        v33 = (a1 + 40);
        v10 = (a2 - 40);
        v30 = a2 - 40;
        v31 = (a1 + 120);
        sub_275C92430(a1, (a1 + 40), a1 + 5, (a1 + 120), a3);
        if (!(*a3)(v10, (a1 + 120)))
        {
          return 1;
        }

        sub_275C923EC(&v31, &v30);
        if (!(*a3)(v31, a1 + 5))
        {
          return 1;
        }

        sub_275C923EC(&v32, &v31);
        if (!(*a3)(v32, (a1 + 40)))
        {
          return 1;
        }

        sub_275C923EC(&v33, &v32);
        v11 = (*a3)(v33, a1);
        break;
      default:
        goto LABEL_16;
    }

    if (v11)
    {
      v8 = &v25;
      v9 = &v33;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v28 = a2 - 40;
    if ((v7)())
    {
      v8 = &v29;
      v9 = &v28;
LABEL_30:
      sub_275C923EC(v8, v9);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v16 = a1 + 5;
  *&v25 = a1;
  v32 = a1 + 5;
  v33 = (a1 + 40);
  v17 = (*a3)((a1 + 40), a1);
  v18 = (*a3)(a1 + 5, (a1 + 40));
  if (v17)
  {
    if (v18)
    {
      v19 = &v25;
    }

    else
    {
      sub_275C923EC(&v25, &v33);
      if (!(*a3)(v32, v33))
      {
        goto LABEL_35;
      }

      v19 = &v33;
    }

    v20 = &v32;
    goto LABEL_34;
  }

  if (v18)
  {
    sub_275C923EC(&v33, &v32);
    if ((*a3)(v33, v25))
    {
      v19 = &v25;
      v20 = &v33;
LABEL_34:
      sub_275C923EC(v19, v20);
    }
  }

LABEL_35:
  v21 = a1 + 120;
  if (v21 == a2)
  {
    return 1;
  }

  v22 = 0;
  while (1)
  {
    if ((*a3)(v21, v16))
    {
      v25 = *v21;
      v26 = *(v21 + 4);
      v27 = *(v21 + 24);
      do
      {
        v23 = v16;
        *(v16 + 40) = *v16;
        *(v16 + 14) = *(v16 + 4);
        v16[4] = *(v16 + 24);
        if (v16 == v29)
        {
          break;
        }

        v16 = (v16 - 40);
      }

      while (((*a3)(&v25, (v23 - 40)) & 1) != 0);
      if (v23 != &v25)
      {
        *v23 = v25;
        *(v23 + 4) = v26;
        *(v23 + 24) = v27;
      }

      if (++v22 == 8)
      {
        break;
      }
    }

    v16 = v21;
    v21 += 40;
    if (v21 == v28)
    {
      return 1;
    }
  }

  return v21 + 40 == v28;
}

__int128 *sub_275C92E14(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(int64_t, uint64_t), __n128 a5)
{
  v26 = a1;
  if (a1 != a2)
  {
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 40 * v11);
      do
      {
        a5.n128_f64[0] = sub_275C92FD8(v8, a4, v10, v13);
        v13 = (v13 - 40);
        --v12;
      }

      while (v12);
    }

    v25 = a2;
    v14 = a2;
    if (a2 != a3)
    {
      do
      {
        if ((*a4)(v14, v26, a5))
        {
          sub_275C923EC(&v25, &v26);
          a5.n128_f64[0] = sub_275C92FD8(v26, a4, v10, v26);
        }

        v14 = (v25 + 40);
        v25 = v14;
      }

      while (v14 != a3);
      v8 = v26;
      v9 = a2 - v26;
    }

    if (v9 >= 41)
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
      v16 = a2 - 40;
      do
      {
        v18 = *v8;
        v17 = *(v8 + 1);
        v19 = *(v8 + 4);
        v21 = *(v8 + 3);
        v20 = *(v8 + 4);
        v22 = sub_275C93170(v8, a4, v15);
        if (v16 == v22)
        {
          *v22 = v18;
          *(v22 + 8) = v17;
          *(v22 + 16) = v19;
          *(v22 + 24) = v21;
          *(v22 + 32) = v20;
        }

        else
        {
          *v22 = *v16;
          *(v22 + 16) = *(v16 + 4);
          *(v22 + 24) = *(v16 + 24);
          *v16 = v18;
          *(v16 + 1) = v17;
          *(v16 + 4) = v19;
          *(v16 + 3) = v21;
          *(v16 + 4) = v20;
          sub_275C93240(v8, v22 + 40, a4, 0xCCCCCCCCCCCCCCCDLL * ((v22 + 40 - v8) >> 3));
        }

        v16 -= 40;
      }

      while (v15-- > 2);
      return v25;
    }

    return v14;
  }

  return a3;
}

double sub_275C92FD8(uint64_t a1, unsigned int (**a2)(int64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 40 * v12;
      v14 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 40 * v12, v13 + 40))
      {
        v13 += 40;
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = *(v7 + 4);
        v15 = *(v7 + 24);
        v22 = v15;
        do
        {
          v16 = v13;
          if (v7 != v13)
          {
            *v7 = *v13;
            *(v7 + 4) = *(v13 + 16);
            v15 = *(v13 + 24);
            *(v7 + 24) = v15;
          }

          if (v9 < v12)
          {
            break;
          }

          v17 = (2 * v12) | 1;
          v13 = a1 + 40 * v17;
          v18 = 2 * v12 + 2;
          if (v18 < a3 && (*a2)(a1 + 40 * v17, v13 + 40))
          {
            v13 += 40;
            v17 = v18;
          }

          v7 = v16;
          v12 = v17;
        }

        while (!(*a2)(v13, &v20));
        if (v16 != &v20)
        {
          *v16 = v20;
          *(v16 + 4) = v21;
          *&v15 = v22;
          *(v16 + 24) = v22;
        }
      }
    }
  }

  return *&v15;
}

uint64_t sub_275C93170(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = v8 + 40;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 80;
      if ((*a2)(v8 + 40, v8 + 80))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (a1 != v9)
    {
      *a1 = *v9;
      *(a1 + 16) = *(v9 + 16);
      *(a1 + 24) = *(v9 + 24);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double sub_275C93240(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v19 = v4;
    v20 = v5;
    v10 = v6 >> 1;
    v11 = a1 + 40 * (v6 >> 1);
    v12 = a2 - 40;
    if ((*a3)(v11, (a2 - 40)))
    {
      v16 = *(a2 - 40);
      v17 = *(a2 - 24);
      v13 = *(a2 - 16);
      v18 = v13;
      do
      {
        v14 = v11;
        if (v12 != v11)
        {
          *v12 = *v11;
          *(v12 + 16) = *(v11 + 16);
          v13 = *(v11 + 24);
          *(v12 + 24) = v13;
        }

        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = a1 + 40 * v10;
        v12 = v14;
      }

      while (((*a3)(v11, &v16) & 1) != 0);
      if (v14 != &v16)
      {
        *v14 = v16;
        *(v14 + 16) = v17;
        *&v13 = v18;
        *(v14 + 24) = v18;
      }
    }
  }

  return *&v13;
}

void sub_275C93344(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        sub_275C8EC0C((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_275C933D0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_275C8D77C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_275C93500(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  sub_275C939A4((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = (24 * v2 + *a1 - v7);
  sub_275C93558(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_275C936A0(&v13);
  return v12;
}

void sub_275C934EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275C936A0(va);
  _Unwind_Resume(a1);
}

void sub_275C93500(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275C93558(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_275C939A4(a4, v6);
      v6 += 24;
      a4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
    v9 = 1;
    while (v5 != a3)
    {
      sub_275C8EC0C(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return sub_275C9361C(v8);
}

uint64_t sub_275C9361C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_275C93654(a1);
  }

  return a1;
}

void sub_275C93654(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      sub_275C8EC0C(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_275C936A0(void **a1)
{
  sub_275C936D4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_275C936D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_275C8EC0C(i - 24, *(i - 16));
  }
}

uint64_t sub_275C9371C(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_275C8D77C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_275C8D794(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  sub_275C93838(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_275C93800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_275C93838(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t sub_275C938A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275C93920(result, a4);
  }

  return result;
}

void sub_275C93904(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C93920(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_275C9395C(a1, a2);
  }

  sub_275C8D77C();
}

void sub_275C9395C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275C8D86C();
}

void *sub_275C939A4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_275C939FC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_275C939FC(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_275C93A84(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_275C93A84(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_275C93B1C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_275C93B1C(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

void *sub_275C93CC4(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_275C93D90(uint64_t a1, void *a2, double a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  return a1;
}

void *sub_275C93DCC(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  return a1;
}

uint64_t sub_275C93E38(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {

    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  return a1;
}

double sub_275C93E84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    return 1.79769313e308;
  }

  if (a2)
  {
    objc_msgSend_transformFromDescendant_(a2, a2, *a1, a4);
    v5 = 0.0 * 0.0;
  }

  else
  {
    v5 = 0.0;
  }

  return v5 + 0.0 * *(a1 + 8) + 0.0;
}

void *sub_275C93F10(void *a1, void *a2)
{
  v3 = a2;
  a1[3] = 0;
  a1[2] = 0;
  *a1 = v3;
  a1[1] = a1 + 2;
  bzero(a1 + 4, 4uLL);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

uint64_t sub_275C93F58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_275C947AC((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_275C93FE8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {

    *a1 = *a2;
    sub_275C94330((a1 + 8), *(a2 + 8), (a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

id *sub_275C9404C(id *result, id a2)
{
  if (*result != a2)
  {
    v3 = result;

    result = a2;
    *v3 = result;
  }

  return result;
}

uint64_t sub_275C9408C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFEFF | v2;
  return result;
}

uint64_t sub_275C940AC(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFDFF | v2;
  return result;
}

BOOL sub_275C940E4(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 16);
  v3 = a1 + 16;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v7 == v3 || *(v7 + 32) > a2)
  {
    return 0;
  }

  sub_275C93E38(a3, v7 + 40);
  return *a3 != 0;
}

void sub_275C94168(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  sub_275C94AB8(a1 + 8, &v5);
}

uint64_t *sub_275C941E0(uint64_t *result, int a2)
{
  v2 = result + 2;
  v3 = result[2];
  if (v3)
  {
    ++result;
    v4 = v2;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v4 != v2 && *(v4 + 32) <= a2)
    {
      return sub_275C94C10(result, v4);
    }
  }

  return result;
}

void sub_275C9422C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 + 16);
  if (v2 != (a2 + 16))
  {
    v5 = (a1 + 16);
    do
    {
      v6 = *v5;
      v7 = *(v2 + 8);
      if (!*v5)
      {
        goto LABEL_10;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
LABEL_10:
        v12 = *(v2 + 8);
        v13 = v2[5];
        v14 = v2[6];
        sub_275C94AB8(a1 + 8, &v12);
      }

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

uint64_t **sub_275C94330(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_275C94510(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          sub_275C93E38((v8 + 5), (v9 + 5));
          sub_275C944A0(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_275C94510(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_275C94564(&v12);
  }

  if (a2 != a3)
  {
    sub_275C94624();
  }

  return result;
}

void sub_275C9448C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C94564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C944A0(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_275C8EA18(a1, v3, v5, a2);
  return a2;
}

void *sub_275C94510(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_275C94564(uint64_t a1)
{
  sub_275C945BC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_275C945BC(*a1, v2);
  }

  return a1;
}

void sub_275C945BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275C945BC(a1, *a2);
    sub_275C945BC(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_275C94730(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_275C9474C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_275C9474C(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_275C947AC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_275C94804(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_275C94804(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_275C9488C(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_275C9488C(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_275C94910(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_275C946A8();
  }

  return result;
}

uint64_t *sub_275C94910(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

uint64_t *sub_275C94AB8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_275C94B6C();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_275C94BF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_275C9474C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_275C94C10(uint64_t **a1, uint64_t a2)
{
  v3 = sub_275C94C50(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *sub_275C94C50(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_275C94CC4(v6, a2);
  return v3;
}

uint64_t *sub_275C94CC4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

CGColorSpaceRef sub_275C95044()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_280A38708 = result;
  return result;
}

uint64_t sub_275C95064()
{
  if (qword_280A38720 != -1)
  {
    sub_275D01F20();
  }

  return qword_280A38718;
}

CGContextRef sub_275C9509C()
{
  if (qword_280A38710 != -1)
  {
    sub_275D01F34();
  }

  result = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 4uLL, qword_280A38708, 5u);
  qword_280A38718 = result;
  return result;
}

uint64_t sub_275C950F4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

uint64_t sub_275C95134(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_length(a1, a2, a3, a4);
  if ((v5 - 1) > 1)
  {
    return 0;
  }

  v7 = v5;
  objc_msgSend_getCharacters_range_(a1, v6, &v9, 0, v5);
  result = v9;
  if (v7 == 1)
  {
    return result;
  }

  if ((v9 & 0xFC00) != 0xD800)
  {
    return 0;
  }

  if ((v10 & 0xFC00) == 0xDC00)
  {
    return v10 + (v9 << 10) - 56613888;
  }

  return 0;
}

uint64_t sub_275C951CC(int a1)
{
  if ((a1 - 0x10000) >> 20)
  {
    v2 = 1;
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = ((a1 - 0x10000) >> 10) | 0xFFFFD800;
    v6[1] = a1 & 0x3FF | 0xDC00;
    v2 = 2;
  }

  v6[0] = v1;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  return objc_msgSend_initWithCharacters_length_(v3, v4, v6, v2);
}

BOOL sub_275C9523C(const std::string *a1, uint64_t a2)
{
  sub_275C95420(v9, a1, 8);
  v3 = std::istream::peek() << 24;
  v5 = v3 == 721420288 || v3 == 754974720;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  MEMORY[0x277C8CE50](v9, &v8);
  v6 = *(&v11[1].__locale_ + *(v9[0] - 24)) & 7;
  if (v6 == 2)
  {
    *a2 = v8;
    *(a2 + 8) = v5;
  }

  v9[0] = *MEMORY[0x277D82820];
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::istream::~istream();
  MEMORY[0x277C8CF70](&v13);
  return v6 == 2;
}

void sub_275C953F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_275C955BC(&a11, MEMORY[0x277D82820]);
  MEMORY[0x277C8CF70](&a26);
  _Unwind_Resume(a1);
}

uint64_t *sub_275C95420(uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  sub_275C956D8((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_275C9557C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x277C8CF70](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275C955A4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    a2 = 0;
  }

  return a2 + *a1;
}

uint64_t sub_275C955BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t sub_275C956D8(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x277C8CF20](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_275C957AC(a1);
  return a1;
}

void sub_275C95784(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_275C957AC(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_275C958B4(uint64_t *a1)
{
  if ((atomic_load_explicit(&qword_280A38740, memory_order_acquire) & 1) == 0)
  {
    v5 = a1;
    v6 = __cxa_guard_acquire(&qword_280A38740);
    a1 = v5;
    if (v6)
    {
      sub_275C97414(qword_280A38728, &off_27A675A80, (&off_27A675A80 + 525));
      __cxa_guard_release(&qword_280A38740);
      a1 = v5;
    }
  }

  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = a1[1];
  }

  v7[0] = v2;
  v7[1] = v1;
  v3 = sub_275C977C4(qword_280A38728, v7);
  if (v3 == &qword_280A38728[1])
  {
    return 0;
  }

  else
  {
    return *(v3 + 48);
  }
}

uint64_t sub_275C9599C(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A38760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38760))
  {
    sub_275C97854(qword_280A38748, &off_27A676AE8, &off_27A676B18);
    __cxa_guard_release(&qword_280A38760);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38748, v8);
  if (v6 != &qword_280A38748[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t sub_275C95A70(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A38780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38780))
  {
    sub_275C978D8(qword_280A38768, &off_27A676B18, &off_27A676CC8);
    __cxa_guard_release(&qword_280A38780);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38768, v8);
  if (v6 != &qword_280A38768[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t sub_275C95B44(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A387A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A387A0))
  {
    sub_275C9795C(qword_280A38788, &off_27A676CC8, &off_27A676D10);
    __cxa_guard_release(&qword_280A387A0);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38788, v8);
  if (v6 != &qword_280A38788[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t sub_275C95C18(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A387C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A387C0))
  {
    sub_275C979E0(qword_280A387A8, &off_27A676D10, &off_27A676D58);
    __cxa_guard_release(&qword_280A387C0);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A387A8, v8);
  if (v6 != &qword_280A387A8[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t sub_275C95CEC(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A387E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A387E0))
  {
    sub_275C97A64(qword_280A387C8, &off_27A676D58, &off_27A676DD0);
    __cxa_guard_release(&qword_280A387E0);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A387C8, v8);
  if (v6 != &qword_280A387C8[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t sub_275C95DC0(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A38800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38800))
  {
    sub_275C97AE8(qword_280A387E8, &off_27A676DD0, &off_27A676E00);
    __cxa_guard_release(&qword_280A38800);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A387E8, v8);
  if (v6 != &qword_280A387E8[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t sub_275C95E94(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A38820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38820))
  {
    sub_275C97B6C(qword_280A38808, &off_27A676E00, &off_27A6771F0);
    __cxa_guard_release(&qword_280A38820);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38808, v8);
  if (v6 != &qword_280A38808[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void sub_275C95F68(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_275D3016D[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = sub_275C95C18(&__p, 0);
    if (v11)
    {
      v13 = a2[1];
      v12 = a2[2];
      if (v13 >= v12)
      {
        v15 = *a2;
        v16 = v13 - *a2;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          sub_275C8D77C();
        }

        v19 = v12 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          sub_275C8DFE0(a2, v21);
        }

        *(4 * v17) = v11;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v22 = *a2;
        *a2 = 0;
        a2[1] = v14;
        a2[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 4);
      }

      a2[1] = v14;
    }

    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_41:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_41;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_275C96184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C961BC(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_275D3016D[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = sub_275C95CEC(&__p, 0);
    if (v11)
    {
      v13 = a2[1];
      v12 = a2[2];
      if (v13 >= v12)
      {
        v15 = *a2;
        v16 = v13 - *a2;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          sub_275C8D77C();
        }

        v19 = v12 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          sub_275C8DFE0(a2, v21);
        }

        *(4 * v17) = v11;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v22 = *a2;
        *a2 = 0;
        a2[1] = v14;
        a2[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 4);
      }

      a2[1] = v14;
    }

    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_41:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_41;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_275C963D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C96410(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 23) >= 0)
  {
    v7 = objc_msgSend_initWithUTF8String_(v4, v5, a1, v6);
  }

  else
  {
    v7 = objc_msgSend_initWithUTF8String_(v4, v5, *a1, v6);
  }

  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v8, v9, v10);
    objc_msgSend_rangeOfCharacterFromSet_(v11, v13, v12, v14);
    if (v15)
    {
      v18 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v15, v16, v17);
      v22 = objc_msgSend_componentsSeparatedByCharactersInSet_(v11, v19, v18, v20);
    }

    else
    {
      v22 = 0;
      v24 = objc_msgSend_length(v11, 0, v16, v17);
      if (v24)
      {
        for (i = 0; i < v24; i += v27)
        {
          v26 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v11, v21, i, v23);
          v27 = v21;
          if (v21)
          {
            v30 = objc_msgSend_substringWithRange_(v11, v21, v26, v21);
            if (!v22)
            {
              v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            objc_msgSend_addObject_(v22, v28, v30, v29);
          }

          else
          {
            v27 = 1;
          }
        }
      }
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v21, &v56, v61, 16, v11);
    if (v34)
    {
      v35 = *v57;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(v22);
          }

          v37 = objc_msgSend_UTF8String(*(*(&v56 + 1) + 8 * j), v31, v32, v33);
          v38 = v37;
          if (v37)
          {
            v39 = strlen(v37);
            if (v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_275C8EE7C();
            }

            v40 = v39;
            if (v39 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v55) = v39;
            if (v39)
            {
              memmove(&__dst, v38, v39);
            }

            *(&__dst + v40) = 0;
            v42 = *(a2 + 8);
            v41 = *(a2 + 16);
            if (v42 >= v41)
            {
              v44 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *a2) >> 3);
              v45 = v44 + 1;
              if (v44 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_275C8D77C();
              }

              v46 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *a2) >> 3);
              if (2 * v46 > v45)
              {
                v45 = 2 * v46;
              }

              if (v46 >= 0x555555555555555)
              {
                v47 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v47 = v45;
              }

              v60[4] = a2;
              if (v47)
              {
                sub_275C97C94(a2, v47);
              }

              v48 = 24 * v44;
              *v48 = __dst;
              *(v48 + 16) = v55;
              v43 = 24 * v44 + 24;
              v49 = *(a2 + 8) - *a2;
              v50 = 24 * v44 - v49;
              memcpy((v48 - v49), *a2, v49);
              v51 = *a2;
              *a2 = v50;
              *(a2 + 8) = v43;
              v52 = *(a2 + 16);
              *(a2 + 16) = 0;
              v60[2] = v51;
              v60[3] = v52;
              v60[0] = v51;
              v60[1] = v51;
              sub_275C97CEC(v60);
            }

            else
            {
              *v42 = __dst;
              *(v42 + 16) = v55;
              v43 = v42 + 24;
            }

            *(a2 + 8) = v43;
          }
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v31, &v56, v61, 16);
      }

      while (v34);
    }
  }
}

uint64_t sub_275C967DC(const std::string *a1, BOOL *a2)
{
  v10 = 0;
  sub_275C95420(v5, a1, 8);
  MEMORY[0x277C8CE50](v5, &v10);
  *a2 = (*(&v7[1].__locale_ + *(v5[0] - 24)) & 7) == 2;
  v3 = v10;
  v5[0] = *MEMORY[0x277D82820];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::istream::~istream();
  MEMORY[0x277C8CF70](&v9);
  return v3;
}

void sub_275C9695C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C96970(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C96970(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x277C8CF70](a1 + 120);
  return a1;
}

uint64_t sub_275C96A90(const std::string *a1, BOOL *a2)
{
  v10 = 0;
  sub_275C95420(v5, a1, 8);
  MEMORY[0x277C8CE60](v5, &v10);
  *a2 = (*(&v7[1].__locale_ + *(v5[0] - 24)) & 7) == 2;
  v3 = v10;
  v5[0] = *MEMORY[0x277D82820];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::istream::~istream();
  MEMORY[0x277C8CF70](&v9);
  return v3;
}

void sub_275C96C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C96970(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C96C24(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A38840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38840))
  {
    sub_275C97D80(qword_280A38828, &off_27A6771F0, &off_27A677268);
    __cxa_guard_release(&qword_280A38840);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38828, v8);
  if (v6 != &qword_280A38828[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void sub_275C96CF8(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_275D3016D[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = sub_275C96C24(&__p, 0);
    v13 = a2[1];
    v12 = a2[2];
    if (v13 >= v12)
    {
      v15 = *a2;
      v16 = v13 - *a2;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        sub_275C8D77C();
      }

      v19 = v12 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
      v21 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        sub_275C8DFE0(a2, v21);
      }

      *(4 * v17) = v11;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v14;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v11;
      v14 = (v13 + 4);
    }

    a2[1] = v14;
    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_39:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_39;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_275C96F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C96F48(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A38860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38860))
  {
    sub_275C97E04(qword_280A38848, &off_27A677268, &off_27A6772E0);
    __cxa_guard_release(&qword_280A38860);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38848, v8);
  if (v6 != &qword_280A38848[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void sub_275C9701C(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_275D3016D[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = sub_275C96F48(&__p, 0);
    v13 = a2[1];
    v12 = a2[2];
    if (v13 >= v12)
    {
      v15 = *a2;
      v16 = v13 - *a2;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        sub_275C8D77C();
      }

      v19 = v12 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
      v21 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        sub_275C8DFE0(a2, v21);
      }

      *(4 * v17) = v11;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v14;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v11;
      v14 = (v13 + 4);
    }

    a2[1] = v14;
    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_39:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_39;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_275C97234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C9726C(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A38880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38880))
  {
    sub_275C97E88(qword_280A38868, &off_27A6772E0, &off_27A677340);
    __cxa_guard_release(&qword_280A38880);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38868, v8);
  if (v6 != &qword_280A38868[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t sub_275C97340(uint64_t *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A388A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A388A0))
  {
    sub_275C97F0C(qword_280A38888, &off_27A677340, &unk_27A677370);
    __cxa_guard_release(&qword_280A388A0);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = sub_275C977C4(qword_280A38888, v8);
  if (v6 != &qword_280A38888[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void *sub_275C97414(void *a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_275C97498(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_275C97538(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_275C97538(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_275C97778(a1, a5, (a2 + 4)))
  {
    if (!sub_275C97778(a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_275C97778(a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_275C97778(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_275C976DC(a1, a3, a5);
}

void *sub_275C976DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_275C97778(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_275C97778(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_275C97778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t sub_275C977C4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_275C97778(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_275C97778(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

void *sub_275C97854(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C978D8(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C9795C(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C979E0(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C97A64(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C97AE8(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C97B6C(void *a1, uint64_t a2, uint64_t a3)
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

void sub_275C97BF0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_275C97C44(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_275C97C44(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_275C97C94(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275C97CEC(uint64_t a1)
{
  sub_275C97D24(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_275C97D24(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_275C97D80(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C97E04(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C97E88(void *a1, uint64_t a2, uint64_t a3)
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

void *sub_275C97F0C(void *a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_275C97F90(uint64_t a1, void *a2)
{
  *a1 = 4;
  *(a1 + 8) = xmmword_275D0B7F0;
  *(a1 + 24) = 0x3FD0000000000000;
  v4 = objc_opt_class();
  v7 = objc_msgSend_objectForKey_(a2, v5, @"bucketsPerUnit", v6);
  v8 = sub_275C950F4(v4, v7);
  if (v8)
  {
    v12 = objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    *a1 = v13;
    *(a1 + 8) = 1.0 / v13;
  }

  v14 = objc_opt_class();
  v17 = objc_msgSend_objectForKey_(a2, v15, @"thresholdCurveBoundsMinMax", v16);
  v18 = sub_275C950F4(v14, v17);
  if (v18)
  {
    objc_msgSend_floatValue(v18, v19, v20, v21);
    *(a1 + 16) = v22;
  }

  v23 = objc_opt_class();
  v26 = objc_msgSend_objectForKey_(a2, v24, @"thresholdCurveControlPointDistance", v25);
  v27 = sub_275C950F4(v23, v26);
  if (v27)
  {
    objc_msgSend_floatValue(v27, v28, v29, v30);
    *(a1 + 24) = v31;
  }

  return a1;
}

uint64_t sub_275C980A0(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  *a1 = 0;
  *(a1 + 56) = a2;
  if (a4)
  {
    v6 = *a4;
    *(a1 + 24) = a4[1];
    *(a1 + 8) = v6;
  }

  else
  {
    bzero((a1 + 8), 0x20uLL);
    a2 = *(a1 + 56);
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a3 + 8);
  v10 = (*(a3 + 16) - v9) >> 4;
  if (v10 <= v7)
  {
    v11 = MEMORY[0x277CBF348];
  }

  else
  {
    v11 = (v9 + 16 * v7);
  }

  v12 = *v11;
  v13 = v11[1];
  v14 = (v9 + 16 * v8);
  if (v10 <= v8)
  {
    v14 = MEMORY[0x277CBF348];
  }

  v15 = *v14;
  v16 = v14[1];
  v17 = *v14 - v12;
  v18 = v16 - v13;
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (v10 <= v19)
  {
    v21 = MEMORY[0x277CBF348];
  }

  else
  {
    v21 = (v9 + 16 * v19);
  }

  v22 = *v21;
  v23 = v21[1];
  v24 = (v9 + 16 * v20);
  if (v10 <= v20)
  {
    v24 = MEMORY[0x277CBF348];
  }

  v25 = v24[1];
  v26 = *v24 - v22;
  v27 = v25 - v23;
  if ((a2 | 2) == 3)
  {
    v28 = fabs(v18);
    v29 = fabs(v27);
    if (v28 >= v29)
    {
      v28 = v29;
    }

    v30 = vabdd_f64(*v24, v12);
    v31 = vabdd_f64(v22, v15);
    if (v30 <= v31)
    {
      v30 = v31;
    }

    *(a1 + 40) = v28;
    *(a1 + 48) = v30;
    if (v18 != 0.0 && v27 != 0.0)
    {
      v32 = v17 / v18;
      v33 = v26 / v27;
      goto LABEL_29;
    }
  }

  else
  {
    v34 = fabs(v17);
    v35 = fabs(v26);
    if (v34 >= v35)
    {
      v34 = v35;
    }

    v36 = vabdd_f64(v25, v13);
    v37 = vabdd_f64(v23, v16);
    if (v36 <= v37)
    {
      v36 = v37;
    }

    *(a1 + 40) = v34;
    *(a1 + 48) = v36;
    if (v17 != 0.0 && v26 != 0.0)
    {
      v32 = v18 / v17;
      v33 = v27 / v26;
LABEL_29:
      if (vabdd_f64(v32, v33) < 0.00100000005)
      {
        *a1 = 1;
      }
    }
  }

  return a1;
}

double sub_275C98204(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = (*(a1 + 16) - v3) >> 4;
  v5 = (v3 + 16 * a2);
  if (v4 <= a2)
  {
    v5 = MEMORY[0x277CBF348];
  }

  v6 = (v3 + 16 * a3);
  if (v4 <= a3)
  {
    v7 = MEMORY[0x277CBF348];
  }

  else
  {
    v7 = v6;
  }

  *&result = *&vsubq_f64(*v7, *v5);
  return result;
}

__n128 sub_275C98244(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_275C98270(uint64_t result, uint64_t a2, void *a3, double a4)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  v6 = (*a3 + 16 * v4);
  v8 = *v6;
  v7 = v6[1];
  v9 = (*a3 + 16 * *(result + 24));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(a2 + 8);
  v13 = (*(a2 + 16) - v12) >> 4;
  if (v13 <= v5)
  {
    v14 = MEMORY[0x277CBF348];
  }

  else
  {
    v14 = (v12 + 16 * v5);
  }

  if (v13 <= v4)
  {
    v15 = MEMORY[0x277CBF348];
  }

  else
  {
    v15 = (v12 + 16 * v4);
  }

  v16 = *v15 - *v14;
  v17 = v15[1] - v14[1];
  v18 = *(result + 56);
  if (v18 <= 1)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v7 = v7 - a4;
        v10 = v10 - a4;
LABEL_14:
        v19 = v16 * a4 / v17;
        v8 = v8 + v19;
        v11 = v11 + v19;
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v8 = v8 - a4;
    v11 = v11 - a4;
LABEL_17:
    v20 = v17 * a4 / v16;
    v7 = v7 + v20;
    v10 = v10 + v20;
    goto LABEL_18;
  }

  if (v18 == 2)
  {
    v8 = v8 + a4;
    v11 = v11 + a4;
    goto LABEL_17;
  }

  if (v18 == 3)
  {
    v7 = v7 + a4;
    v10 = v10 + a4;
    goto LABEL_14;
  }

LABEL_18:
  *v6 = v8;
  v6[1] = v7;
  *v9 = v11;
  v9[1] = v10;
  return result;
}

void sub_275C98348(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *a2;
        v6 = 2;
        v7 = 3;
        if (*a2 != 3)
        {
          v7 = 0;
        }

        v8 = v5 == 2 || *a2 == 3;
        if (v5 != 2)
        {
          v6 = v7;
        }

        v9 = v5 < 2 || v8;
        if (v5 >= 2)
        {
          v10 = v6;
        }

        else
        {
          v10 = 1;
        }

        LODWORD(v24) = *a2;
        *(&v24 + 1) = (*(v4 + 16) - *(v4 + 8)) >> 4;
        if (*(a2 + 8) && v9)
        {
          v11 = 0;
          if (v10 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v10;
          }

          v13 = 16 * v12;
          do
          {
            sub_275C98548(v4 + 8, (*(a2 + 8) + v11));
            v11 += 16;
          }

          while (v13 != v11);
        }

        v14 = *(v4 + 32);
        v15 = *(v4 + 40);
        v23 = (v15 - v14) >> 4;
        if (*a2 == 4 && v15 != v14 && ((v15 - v14) >> 4) > *(*(v4 + 64) - 8) && *(v15 - 16) == 1)
        {
          v17 = vmovn_s64(vceqq_f64(*(a1 + 24), *(*(v4 + 8) + 16 * *(v15 - 8))));
          if (v17.i32[0] & v17.i32[1])
          {
            *(v4 + 16) -= 16;
            v18 = v15 - 16;
            *(v4 + 40) = v18;
            v23 = (v18 - v14) >> 4;
          }
        }

        sub_275C98620(v4 + 32, &v24);
        v19 = *(a2 + 8);
        v20 = v19 != 0;
        v21 = (v19 + 16 * v10 - 16);
        if ((v9 & v20) == 0)
        {
          v21 = MEMORY[0x277CBF348];
        }

        v22 = *v21;
        if (*a2)
        {
          if (*a2 == 4)
          {
            *(a1 + 16) = 0;
LABEL_39:
            *a1 += v10;
            return;
          }

          if (*(a1 + 16))
          {
            goto LABEL_39;
          }
        }

        sub_275C986F8((v4 + 56), &v23);
        *(a1 + 16) = 1;
        *(a1 + 24) = v22;
        goto LABEL_39;
      }
    }
  }
}

void sub_275C98530(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x275C9849CLL);
}

void sub_275C9853C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x275C98408);
}

void sub_275C98548(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_275C8D77C();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_275C9395C(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_275C98620(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_275C8D77C();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_275C9A8F4(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_275C986F8(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_275C8D77C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_275C8D794(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_275C987D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 65) = 0u;
  if (a2)
  {
    v3 = MEMORY[0x277C8C900](a2);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(a1 + 128) = v5;
  *(a1 + 144) = v5;
  return a1;
}

void sub_275C98844(_Unwind_Exception *a1)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  sub_275D01F48(v2 + 3, v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275C98874(uint64_t a1, const __CTFont *a2, int a3)
{
  *(a1 + 120) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (a2)
  {
    *glyphs = -1;
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, 1.0, -1.0);
    if ((a3 - 0x10000) >> 20)
    {
      v7 = 1;
      LOWORD(v6) = a3;
    }

    else
    {
      v6 = ((a3 - 0x10000) >> 10) | 0xFFFFD800;
      characters[1] = a3 & 0x3FF | 0xDC00;
      v7 = 2;
    }

    characters[0] = v6;
    if (CTFontGetGlyphsForCharacters(a2, characters, glyphs, v7))
    {
      *a1 = CTFontCreatePathForGlyph(a2, glyphs[0], &v15);
    }

    else
    {
      v8 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], characters, v7);
      v9 = v8;
      if (v8)
      {
        v18.length = CFStringGetLength(v8);
        v18.location = 0;
        v10 = CTFontCreateForString(a2, v9, v18);
        v11 = v10;
        if (v10)
        {
          CTFontGetGlyphsForCharacters(v10, characters, glyphs, v7);
          *a1 = CTFontCreatePathForGlyph(v11, glyphs[0], &v15);
          CFRelease(v11);
        }

        CFRelease(v9);
      }
    }
  }

  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  *(a1 + 128) = v13;
  *(a1 + 144) = v13;
  return a1;
}