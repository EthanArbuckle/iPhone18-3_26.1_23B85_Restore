void sub_2214968AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2214968CC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1[5] + 8) + 40);
  if (v7)
  {
    v8 = objc_msgSend_internalOwnerID(v7, a2, a3, a4, a5);
    v9 = *(a3 + 8);
    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(a3 + 8);
  }

  v10 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(a1[4] + 8), a2, v9, a4, a5);
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_6:
  result = *(*(a1[5] + 8) + 40);
  if (result)
  {
    result = objc_msgSend_isCellInACycle_(result, a2, a3, a4, a5);
    if (result)
    {
      v14 = a1[6];

      return sub_2212DFCE8(v14, a3);
    }
  }

  return result;
}

void sub_221496A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221496A38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

TSCEReferenceSet *sub_221496AC0(uint64_t a1, const TSUCellRect *a2, unsigned __int16 a3, TSCERangeCoordinate *this)
{
  v14[0] = TSCERangeCoordinate::rangeCoordFromCellRect(this, a2);
  v14[1] = v6;
  v15 = a3;
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 8);
  if (v11)
  {
    objc_msgSend_rangeRefForInternalRangeReference_(v11, v6, v14, v8, v9);
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  return TSCEReferenceSet::insertRef(v10, &v13, v7, v8, v9);
}

void sub_221496BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221496BEC(uint64_t a1, uint64_t a2, int a3, const TSUCellRect *a4, _BYTE *a5)
{
  result = *(a1 + 40);
  if (*(result + 16) == a3)
  {
    TSCERangeCoordinate::asCellRect(result);
    v11.origin = v9;
    v11.size = v10;
    result = TSUCellRect::intersects(&v11, a4);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      *a5 = 1;
    }
  }

  return result;
}

void sub_221496DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_22107C800(va, v6);
  _Block_object_dispose(va1, 8);
  sub_221122744(v2 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_221496EE0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221496F60;
  v8[3] = &unk_278465D28;
  v5 = a1[4];
  v6 = a1[6];
  v8[4] = a1[5];
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = v6;
  return objc_msgSend_enumerateRangesUsingBlock_(v5, a2, v8, a4, a5);
}

uint64_t sub_221496F60(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = (((*(a1 + 48) + *(a1 + 40)) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (a3 + a2 - 1);
  v8[0] = a2 | (*(a1 + 40) << 32);
  v8[1] = v6;
  return objc_msgSend_formulaCellsReferencingRange_outFormulaCells_(v5, a2, v8, *(a1 + 56), a5);
}

id sub_2214972D4(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
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

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_2214973B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void **sub_2214973C8(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v18[4] = a1;
    if (v15)
    {
      sub_22107C1F0(a1, v15);
    }

    v18[0] = 0;
    v18[1] = (8 * v16);
    v18[2] = (8 * v16);
    v18[3] = 0;
    sub_221122E8C(v18, a3);
    v4 = sub_221122FD0(a1, v18, v4);
    sub_22107C26C(v18);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    *(a1 + 8) = v7 + 1;
  }

  else
  {
    sub_221122E10(a1, a2, *(a1 + 8), (a2 + 8));
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    objc_storeStrong(v4, a3[v9]);
  }

  return v4;
}

void sub_2214974F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_221497620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22149764C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_2214977B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214977E4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

int *sub_2214978B0(uint64_t a1, const TSUCellRect *a2, unsigned __int16 a3, TSCERangeCoordinate *this)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v7 + 24);
  v10 = *v8;
  if (v9 < *v8)
  {
    *(v7 + 24) = v9 + 1;
    v11 = *&v8[2 * v9 + 2];
    goto LABEL_8;
  }

  if (v10 == *(v7 + 28))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 16));
    v8 = *(v7 + 32);
    v10 = *v8;
  }

  *v8 = v10 + 1;
  v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeBackDependencyArchive>(*(v7 + 16));
  v12 = *(v7 + 24);
  v13 = *(v7 + 32) + 8 * v12;
  *(v7 + 24) = v12 + 1;
  *(v13 + 8) = v11;
LABEL_8:
  row = a2->origin.row;
  column = a2->origin.column;
  *(v11 + 16) |= 0xCu;
  *(v11 + 40) = row;
  *(v11 + 44) = column;
  v20[0] = TSCERangeCoordinate::rangeCoordFromCellRect(this, a2);
  v20[1] = v16;
  v21 = a3;
  *(v11 + 16) |= 2u;
  v17 = *(v11 + 32);
  if (!v17)
  {
    v18 = *(v11 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalRangeReferenceArchive>(v18);
    *(v11 + 32) = v17;
  }

  return sub_2212F4DA8(v20, v17);
}

void sub_221497FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(va);
  _Unwind_Resume(a1);
}

void sub_2214981B4(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = objc_msgSend_rangeDependencies(v4, v5, v6, v7, v8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v16, v21, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v20 = *(*(&v16 + 1) + 8 * v14);
        sub_2214972D4(v9 + 6, &v20);
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, &v16, v21, 16);
    }

    while (v12);
  }
}

uint64_t sub_22149859C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 40);
  v7 = *a2 & 0xFFFFFFFFFFFFLL;
  v8 = v5;
  return objc_msgSend_RTreeInsert_fromCellRef_(*(a1 + 32), a2, a3, &v7, a5);
}

uint64_t sub_2214986CC(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int **a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v13 = sub_221498804(a1, a2, a3, *a4, a6, a7, a8, a9, a10, a11, a12, a13, v15, a5);
  if (v13)
  {
    operator new();
  }

  return v13;
}

uint64_t sub_221498804(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v18 = a4[1];
  if (v18 <= a14)
  {
    if (v18 != a14)
    {
      return 0;
    }

    v23 = *a2;
    v38 = *a2;
    *&v39 = *a3;
    DWORD2(v39) = *(a3 + 8);
    v28 = *a4;
    if (v28 <= 15)
    {
      result = 0;
      v35 = &a4[8 * v28];
      v36 = v38;
      *(v35 + 6) = v39;
      *(v35 + 2) = v36;
      goto LABEL_17;
    }

LABEL_8:
    sub_221498C40(a1, a4, &v38, *&v23, a6, a7, a8);
  }

  v20 = &a4[8 * sub_221498AB4(a1, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12) + 2];
  if (sub_221498804(a1, a2, a3, *(v20 + 16), &v37, a14))
  {
    *v20 = sub_2214989EC(a1, *(v20 + 16));
    *(v20 + 8) = v21;
    *&v39 = v37;
    *&v38 = sub_2214989EC(a1, v37);
    *(&v38 + 1) = v22;
    v24 = *a4;
    if (v24 <= 15)
    {
      result = 0;
      v26 = &a4[8 * v24 + 2];
      v27 = v39;
      *v26 = v38;
      *(v26 + 1) = v27;
LABEL_17:
      ++*a4;
      return result;
    }

    goto LABEL_8;
  }

  v29 = 0;
  v30 = &v38;
  v31 = 1;
  do
  {
    v32 = v31;
    v33 = *(a2 + v29);
    if (v33 >= *(v20 + 4 * v29))
    {
      v33 = *(v20 + 4 * v29);
    }

    v34 = *(a2 + v29 + 2);
    if (v34 <= *(v20 + 8 + 4 * v29))
    {
      v34 = *(v20 + 8 + 4 * v29);
    }

    *v30 = v33;
    *(&v38 + v29 + 2) = v34;
    v30 = &v38 + 1;
    v29 = 1;
    v31 = 0;
  }

  while ((v32 & 1) != 0);
  result = 0;
  *v20 = v38;
  return result;
}

uint64_t sub_2214989EC(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 + 2;
  do
  {
    v6 = &v5[8 * v3];
    if (v4)
    {
      v7 = 0;
      v8 = &v17;
      v9 = &v16;
      v10 = 1;
      do
      {
        v11 = *v9;
        if (v11 >= v6[v7])
        {
          v11 = v6[v7];
        }

        v12 = *(&v16 + v7 + 2);
        if (v12 <= v6[v7 + 2])
        {
          v12 = v6[v7 + 2];
        }

        *(&v17 + v7 + 2) = v12;
        v13 = v10;
        *v8 = v11;
        v9 = &v16 + 1;
        v8 = &v17 + 1;
        v7 = 1;
        v10 = 0;
      }

      while ((v13 & 1) != 0);
      v14 = v17;
    }

    else
    {
      v14 = *v6;
    }

    v16 = v14;
    ++v3;
    v4 = 1;
  }

  while (v3 != v2);
  return v16;
}

uint64_t sub_221498AB4(uint64_t a1, uint64_t a2, unsigned int *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *a3;
  if (v11 < 1)
  {
    return 0;
  }

  v13 = 0;
  result = 0;
  v15 = a3 + 2;
  v16 = *(a1 + 16);
  v17 = 0.0;
  v18 = -1.0;
  v19 = 1;
  do
  {
    v20 = 0;
    v21 = &v15[8 * v13];
    v22 = v21 + 2;
    v23 = 1;
    v24 = 0.0;
    do
    {
      v25 = v23;
      LODWORD(a9) = v22[v20];
      LODWORD(a10) = v21[v20];
      a10 = *&a10;
      a9 = (*&a9 - a10) * 0.5;
      v24 = v24 + a9 * a9;
      v20 = 1;
      v23 = 0;
    }

    while ((v25 & 1) != 0);
    v26 = 0;
    v27 = sqrt(v24);
    v28 = v27 * v27;
    v29 = &v43;
    v30 = 1;
    do
    {
      v31 = v30;
      v32 = *(a2 + 4 * v26);
      if (v32 >= v21[v26])
      {
        v32 = v21[v26];
      }

      v33 = *(a2 + 8 + 4 * v26);
      if (v33 <= v22[v26])
      {
        v33 = v22[v26];
      }

      *v29 = v32;
      *(&v43 + v26 + 2) = v33;
      v29 = &v43 + 1;
      v26 = 1;
      v30 = 0;
    }

    while ((v31 & 1) != 0);
    v34 = 0;
    v42 = v43;
    v35 = 0.0;
    v36 = &v42;
    v37 = 1;
    do
    {
      v38 = v37;
      LODWORD(a10) = *(&v42 + v34 + 2);
      LODWORD(a11) = *v36;
      a11 = *&a11;
      a10 = (*&a10 - a11) * 0.5;
      v35 = v35 + a10 * a10;
      v36 = (&v42 + 4);
      v34 = 1;
      v37 = 0;
    }

    while ((v38 & 1) != 0);
    v39 = v28 * v16;
    v40 = sqrt(v35);
    a9 = v16 * (v40 * v40) - v39;
    if ((a9 < v18) | v19 & 1 || (a9 == v18 ? (v41 = v39 < v17) : (v41 = 0), v41))
    {
      v17 = v39;
      result = v13;
      v18 = a9;
    }

    v19 = 0;
    ++v13;
  }

  while (v13 != v11);
  return result;
}

void sub_221498C40(uint64_t a1, void *a2, _OWORD *a3, double a4, double a5, double a6, double a7)
{
  v8 = sub_221498CD4(a1, a2, a3, v15, a4, a5, a6, a7);
  sub_221498DF8(a1, v15, 8, v8, v9, v10, v11, v12, v13, v14);
  operator new();
}

double sub_221498CD4(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v8 = 0;
  v9 = (a4 + 200);
  do
  {
    v10 = &v9[v8 / 2];
    v11 = *&a2[v8 + 3];
    *v10 = *&a2[v8 + 1];
    v10[1] = v11;
    v8 += 4;
  }

  while (v8 != 64);
  v12 = a3[1];
  *(a4 + 712) = *a3;
  *(a4 + 728) = v12;
  *(a4 + 744) = 17;
  v13 = (a4 + 748);
  *(a4 + 748) = *v9;
  v14 = a4 + 756;
  for (i = 1; i != 17; ++i)
  {
    v16 = 0;
    v17 = &v9[2 * i];
    v18 = &v29;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = *(v13 + v16);
      if (v21 >= *(v17 + v16))
      {
        v21 = *(v17 + v16);
      }

      v22 = *(v14 + 4 * v16);
      if (v22 <= *(v17 + v16 + 2))
      {
        v22 = *(v17 + v16 + 2);
      }

      *v18 = v21;
      *(&v29 + v16 + 2) = v22;
      v18 = &v29 + 1;
      v16 = 1;
      v19 = 0;
    }

    while ((v20 & 1) != 0);
    *v13 = v29;
  }

  v23 = 0;
  v24 = 0.0;
  v25 = 1;
  do
  {
    v26 = v25;
    LODWORD(a7) = *(v14 + 4 * v23);
    LODWORD(a8) = *(v13 + v23);
    a8 = *&a8;
    a7 = (*&a7 - a8) * 0.5;
    v24 = v24 + a7 * a7;
    v23 = 1;
    v25 = 0;
  }

  while ((v26 & 1) != 0);
  v27 = sqrt(v24);
  *(a4 + 768) = v27 * v27 * *(a1 + 16);
  result = NAN;
  *a2 = 0xFFFFFFFF00000000;
  return result;
}

void sub_221498DF8(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *(a2 + 144) = 0;
  v10 = *(a2 + 744);
  *(a2 + 148) = 0;
  *(a2 + 184) = 0;
  v61 = (a2 + 184);
  v62 = a2 + 144;
  *(a2 + 192) = 0;
  *(a2 + 68) = v10;
  *(a2 + 72) = a3;
  if (v10 >= 1)
  {
    v11 = a2;
    do
    {
      v11[19] = 0;
      *v11++ = -1;
      --v10;
    }

    while (v10);
  }

  v12 = sub_221499260(a1, a2, a4, a5, a6, a7, a8, a9, a10);
  v18 = a2;
  v19 = *(a2 + 144);
  v20 = *(a2 + 148);
  v21 = *(a2 + 68);
  if (v20 + v19 < v21)
  {
    v64 = 0;
    v22 = a2 + 76;
    v23 = a2 + 200;
    while (1)
    {
      v24 = v21 - *(v18 + 72);
      if (v19 >= v24 || v20 >= v24)
      {
        break;
      }

      if (v21 < 1)
      {
        v27 = a1;
        v29 = v64;
        v28 = HIDWORD(v64);
      }

      else
      {
        v26 = 0;
        v12 = -1.0;
        v27 = a1;
        v29 = v64;
        v28 = HIDWORD(v64);
        do
        {
          if (!*(v22 + 4 * v26))
          {
            v30 = 0;
            v31 = v23 + 32 * v26;
            v32 = v31 + 8;
            v33 = &v68;
            v34 = 1;
            do
            {
              v35 = v34;
              v36 = *(v31 + 4 * v30);
              if (v36 >= *(a2 + 152 + 4 * v30))
              {
                v36 = *(a2 + 152 + 4 * v30);
              }

              v37 = *(v32 + 4 * v30);
              if (v37 <= *(a2 + 160 + 4 * v30))
              {
                v37 = *(a2 + 160 + 4 * v30);
              }

              *v33 = v36;
              *(&v68 + v30 + 2) = v37;
              v33 = &v68 + 1;
              v30 = 1;
              v34 = 0;
            }

            while ((v35 & 1) != 0);
            v38 = 0;
            v67 = v68;
            v39 = &v68;
            v40 = 1;
            do
            {
              v41 = v40;
              v42 = *(v31 + 4 * v38);
              if (v42 >= *(a2 + 168 + 4 * v38))
              {
                v42 = *(a2 + 168 + 4 * v38);
              }

              v43 = *(v32 + 4 * v38);
              if (v43 <= *(a2 + 176 + 4 * v38))
              {
                v43 = *(a2 + 176 + 4 * v38);
              }

              *v39 = v42;
              *(&v68 + v38 + 2) = v43;
              v39 = &v68 + 1;
              v38 = 1;
              v40 = 0;
            }

            while ((v41 & 1) != 0);
            v44 = 0;
            v66 = v68;
            v45 = 0.0;
            v46 = &v67;
            v47 = 1;
            do
            {
              v48 = v47;
              LODWORD(v14) = *(&v67 + v44 + 2);
              LODWORD(v15) = *v46;
              v15 = *&v15;
              v14 = (*&v14 - v15) * 0.5;
              v45 = v45 + v14 * v14;
              v46 = (&v67 + 4);
              v44 = 1;
              v47 = 0;
            }

            while ((v48 & 1) != 0);
            v49 = 0;
            v50 = *(a1 + 16);
            v51 = 0.0;
            v52 = &v66;
            v53 = 1;
            v54 = sqrt(v45);
            do
            {
              v55 = v53;
              LODWORD(v16) = *(&v66 + v49 + 2);
              LODWORD(v17) = *v52;
              v17 = *&v17;
              v16 = (*&v16 - v17) * 0.5;
              v51 = v51 + v16 * v16;
              v52 = (&v66 + 4);
              v49 = 1;
              v53 = 0;
            }

            while ((v55 & 1) != 0);
            v56 = v54 * v54 * v50 - *v61;
            v57 = sqrt(v51);
            v58 = v50 * (v57 * v57);
            v15 = *(v18 + 192);
            v13 = v58 - v15 - v56;
            v14 = -v13;
            if (v13 >= 0.0)
            {
              v14 = v13;
            }

            if (v14 <= v12)
            {
              if (v14 == v12 && *(v62 + 4 * (v13 < 0.0)) < *(v62 + 4 * v29))
              {
                v29 = v13 < 0.0;
                v28 = v26;
              }
            }

            else
            {
              v29 = v13 < 0.0;
              v28 = v26;
              v12 = v14;
            }
          }

          ++v26;
        }

        while (v26 != v21);
      }

      v64 = __PAIR64__(v28, v29);
      v12 = sub_2214994D4(v27, v28, v29, a2, v12, v13, v14, v15);
      v23 = a2 + 200;
      v22 = a2 + 76;
      v18 = a2;
      v19 = *(a2 + 144);
      v20 = *(a2 + 148);
      v21 = *(a2 + 68);
      if (v20 + v19 >= v21)
      {
        return;
      }
    }

    v59 = v19 >= v24;
    if (v21 >= 1)
    {
      for (i = 0; i < v21; ++i)
      {
        if (!*(v18 + 4 * i + 76))
        {
          v12 = sub_2214994D4(a1, i, v59, a2, v12, v13, v14, v15);
          v18 = a2;
          v21 = *(a2 + 68);
        }
      }
    }
  }
}

uint64_t sub_221499168(uint64_t result, int *a2, int *a3, uint64_t a4)
{
  if (*(a4 + 68) >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = (a4 + 200);
    v10 = a3 + 2;
    v11 = a2 + 2;
    while (1)
    {
      v12 = *(a4 + 4 * v8);
      if (v12 == 1)
      {
        break;
      }

      if (!v12)
      {
        v13 = *a2;
        if (v13 <= 15)
        {
          v17 = &v11[8 * v13];
          v18 = v9[1];
          *v17 = *v9;
          *(v17 + 1) = v18;
          ++*a2;
          goto LABEL_12;
        }

        v14 = v7;
        v15 = a2;
        goto LABEL_9;
      }

LABEL_12:
      ++v8;
      v9 += 2;
      if (v8 >= *(a4 + 68))
      {
        return result;
      }
    }

    v16 = *a3;
    if (v16 <= 15)
    {
      v19 = &v10[8 * v16];
      v20 = v9[1];
      *v19 = *v9;
      *(v19 + 1) = v20;
      ++*a3;
      goto LABEL_12;
    }

    v14 = v7;
    v15 = a3;
LABEL_9:
    result = sub_221498C40(v14, v15, v9, 0);
    goto LABEL_12;
  }

  return result;
}

double sub_221499260(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 68);
  if (v11 < 1)
  {
    goto LABEL_7;
  }

  v12 = 0;
  v13 = a2 + 200;
  a3 = *(a1 + 16);
  a4 = 0.5;
  do
  {
    v14 = 0;
    v15 = v13 + 32 * v12;
    v16 = 0.0;
    v17 = 1;
    do
    {
      v18 = v17;
      LODWORD(a6) = *(v15 + 8 + 4 * v14);
      LODWORD(a7) = *(v15 + 4 * v14);
      a7 = *&a7;
      a6 = (*&a6 - a7) * 0.5;
      v16 = v16 + a6 * a6;
      v14 = 1;
      v17 = 0;
    }

    while ((v18 & 1) != 0);
    v19 = sqrt(v16);
    a5 = v19 * v19 * a3;
    *(&v47[1] + v12++) = a5;
  }

  while (v12 != v11);
  if (v11 == 1)
  {
LABEL_7:
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    a3 = -1.0 - *(a2 + 768);
    a4 = *(a1 + 16);
    v23 = 1;
    a5 = 0.5;
    do
    {
      v24 = v22++;
      v25 = v13 + 32 * v24;
      a6 = *(&v47[1] + v24);
      v26 = v23;
      do
      {
        v27 = 0;
        v28 = v13 + 32 * v26;
        v29 = v47;
        v30 = 1;
        do
        {
          v31 = v30;
          v32 = *(v25 + 4 * v27);
          if (v32 >= *(v28 + 4 * v27))
          {
            v32 = *(v28 + 4 * v27);
          }

          v33 = *(v25 + 8 + 4 * v27);
          if (v33 <= *(v28 + 8 + 4 * v27))
          {
            v33 = *(v28 + 8 + 4 * v27);
          }

          *v29 = v32;
          *(v47 + v27 + 2) = v33;
          v29 = v47 + 1;
          v27 = 1;
          v30 = 0;
        }

        while ((v31 & 1) != 0);
        v34 = 0;
        v46 = v47[0];
        v35 = 0.0;
        v36 = &v46;
        v37 = 1;
        do
        {
          v38 = v37;
          LODWORD(a8) = *(&v46 + v34 + 2);
          LODWORD(a9) = *v36;
          a9 = *&a9;
          a8 = (*&a8 - a9) * 0.5;
          v35 = v35 + a8 * a8;
          v36 = (&v46 + 4);
          v34 = 1;
          v37 = 0;
        }

        while ((v38 & 1) != 0);
        v39 = sqrt(v35);
        a8 = *(&v47[1] + v26);
        v40 = v39 * v39 * a4 - a6 - a8;
        if (v40 > a3)
        {
          v20 = v24;
          v21 = v26;
          a3 = v40;
        }

        ++v26;
      }

      while (v26 != v11);
      ++v23;
    }

    while (v22 != v11 - 1);
  }

  v41 = sub_2214994D4(a1, v20, 0, a2, a3, a4, a5, a6);

  return sub_2214994D4(a1, v21, 1, a2, v41, v42, v43, v44);
}

double sub_2214994D4(uint64_t a1, int a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v8 = (a4 + 4 * a2);
  *v8 = a3;
  v8[19] = 1;
  v9 = a3;
  v10 = (a4 + 32 * a2 + 200);
  v11 = (a4 + 16 * a3 + 152);
  if (*(a4 + 144 + 4 * a3))
  {
    v12 = 0;
    v13 = &v24;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *(v10 + v12);
      if (v16 >= *(v11 + v12))
      {
        v16 = *(v11 + v12);
      }

      v17 = *(v10 + v12 + 2);
      if (v17 <= *(v11 + v12 + 2))
      {
        v17 = *(v11 + v12 + 2);
      }

      *v13 = v16;
      *(&v24 + v12 + 2) = v17;
      v13 = &v24 + 1;
      v12 = 1;
      v14 = 0;
    }

    while ((v15 & 1) != 0);
    *v11 = v24;
  }

  else
  {
    *v11 = *v10;
  }

  v18 = 0;
  v19 = 0.0;
  v20 = 1;
  do
  {
    v21 = v20;
    LODWORD(a7) = *(v11 + v18 + 2);
    LODWORD(a8) = *(v11 + v18);
    a8 = *&a8;
    a7 = (*&a7 - a8) * 0.5;
    v19 = v19 + a7 * a7;
    v18 = 1;
    v20 = 0;
  }

  while ((v21 & 1) != 0);
  v22 = sqrt(v19);
  result = v22 * v22 * *(a1 + 16);
  *(a4 + 8 * v9 + 184) = result;
  ++*(a4 + 144 + 4 * v9);
  return result;
}

uint64_t sub_2214995E4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int **a4)
{
  v22 = 0;
  v6 = sub_221499724(a1, a2, a3, *a4, &v22);
  if ((v6 & 1) == 0)
  {
    for (i = v22; v22; i = v22)
    {
      v16 = i[1];
      if (*v16 <= 0)
      {
        v22 = *i;
      }

      else
      {
        v17 = 0;
        v18 = (v16 + 6);
        do
        {
          sub_2214986CC(a1, (v18 - 16), v18, a4, v16[1], v7, v8, v9, v10, v11, v12, v13, v14);
          ++v17;
          v18 += 32;
        }

        while (v17 < *v16);
        i = v22;
        v16 = v22[1];
        v22 = *v22;
        if (!v16)
        {
          goto LABEL_10;
        }
      }

      MEMORY[0x223DA1450](v16, 0x1022C404B60D9C5);
LABEL_10:
      MEMORY[0x223DA1450](i, 0x20C40A4A59CD2);
    }

    v19 = *a4;
    if (**a4 == 1 && v19[1] >= 1)
    {
      v20 = *(v19 + 3);
      MEMORY[0x223DA1450]();
      *a4 = v20;
    }
  }

  return v6;
}

uint64_t sub_221499724(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, uint64_t a5)
{
  v8 = *a4;
  if (a4[1] <= 0)
  {
    if (v8 >= 1)
    {
      v17 = 0;
      v18 = a4 + 2;
      v19 = *a3;
      v20 = *(a3 + 4);
      while (2)
      {
        v21 = 0;
        v22 = &v18[8 * v17];
        v23 = 1;
        while (1)
        {
          v24 = v23;
          if (*(a2 + 4 * v21) != v22[v21] || *(a2 + 8 + 4 * v21) != v22[v21 + 2])
          {
            break;
          }

          v23 = 0;
          v21 = 1;
          if ((v24 & 1) == 0)
          {
            v25 = *(v22 + 2);
            if (v19 == v25 && ((v25 ^ v19) & 0x101FFFF00000000) == 0 && v20 == *(v22 + 12))
            {
              result = 0;
              v29 = &v18[8 * v8 - 8];
              v30 = *(v29 + 1);
              v31 = &v18[8 * v17];
              *v31 = *v29;
              *(v31 + 1) = v30;
              *a4 = v8 - 1;
              return result;
            }

            break;
          }
        }

        if (++v17 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v8 >= 1)
  {
    v11 = 0;
    v12 = a4 + 2;
    while (2)
    {
      v13 = 0;
      v14 = &v12[8 * v11];
      v15 = 1;
      while (1)
      {
        v16 = v15;
        if (*(a2 + 4 * v13) > v14[v13 + 2] || v14[v13] > *(a2 + 8 + 4 * v13))
        {
          break;
        }

        v15 = 0;
        v13 = 1;
        if ((v16 & 1) == 0)
        {
          if (!sub_221499724(a1, a2, a3, *(v14 + 2), a5))
          {
            if (**(v14 + 2) < 8)
            {
              operator new();
            }

            v27 = sub_2214989EC(a1, *(v14 + 2));
            result = 0;
            *v14 = v27;
            *(v14 + 1) = v28;
            return result;
          }

          LODWORD(v8) = *a4;
          break;
        }
      }

      if (++v11 < v8)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t sub_22149993C(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *a2;
  if (a2[1] <= 0)
  {
    if (v8 >= 1)
    {
      v14 = 0;
      while (2)
      {
        v15 = 0;
        v16 = &a2[8 * v14 + 2];
        v17 = 1;
        while (1)
        {
          v18 = v17;
          if (*(a3 + 4 * v15) > v16->i32[v15 + 2] || v16->i32[v15] > *(a3 + 8 + 4 * v15))
          {
            break;
          }

          v17 = 0;
          v15 = 1;
          if ((v18 & 1) == 0)
          {
            v19.i64[0] = 0xFFFFFFFFFFFFLL;
            v19.i64[1] = 0xFFFFFFFFFFFFLL;
            v27 = vandq_s8(vsraq_n_u64(vshlq_n_s64(*v16, 0x20uLL), *v16, 0x20uLL), v19);
            v25 = 0;
            v26 = 0;
            TSCERangeCoordinate::asCellRect(&v27);
            v25 = v20;
            v26 = v21;
            v24 = 0;
            v7[2](v7, &v25, v16 + 1, &v24);
            if (v24)
            {
LABEL_23:
              v22 = 0;
              goto LABEL_22;
            }

            v8 = *a2;
            break;
          }
        }

        if (++v14 < v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = 0;
      v11 = &a2[8 * i + 2];
      v12 = 1;
      while (1)
      {
        v13 = v12;
        if (*(a3 + 4 * v10) > *(v11 + 8 + 4 * v10) || *(v11 + 4 * v10) > *(a3 + 8 + 4 * v10))
        {
          break;
        }

        v12 = 0;
        v10 = 1;
        if ((v13 & 1) == 0)
        {
          if (!sub_22149993C(a1, *(v11 + 16), a3, v7))
          {
            goto LABEL_23;
          }

          v8 = *a2;
          break;
        }
      }
    }
  }

  v22 = 1;
LABEL_22:

  return v22;
}

void sub_221499AF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221499B54(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (a2[1] < 1)
  {
    return v2 == 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 6;
  do
  {
    result = sub_221499B54(a1, *&a2[v6]);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v5;
    v6 += 8;
  }

  while (v5 < *a2);
  return result;
}

void sub_221499BD8(uint64_t a1)
{
  sub_221499C10(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_221499C10(uint64_t a1)
{
  *a1 = &unk_2834A8D28;
  sub_22113EBD4(a1, *(a1 + 8));
  return a1;
}

void sub_221499D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221499E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221499F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22149A124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2210BDEC0(v11 + 32);
  sub_2210BDEC0(va);
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_22149A444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  v30 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v30;
    operator delete(v30);
  }

  sub_22149A5FC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_22149A510(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = sub_2211A8DC8(a2, a3);

  return objc_msgSend_addUUID_(v3, v4, v5, v4, v6);
}

void sub_22149A558(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v13 = a2;
  v7 = a3;
  v12 = objc_msgSend_numberOfLevels(*(a1 + 96), v8, v9, v10, v11);
  sub_22149C92C(a1, *(a1 + 96), 1, 0, v12, v13, v7, a4);
}

uint64_t sub_22149A5FC(uint64_t a1)
{
  *a1 = &unk_2834A7E10;
  sub_2210BDEC0(a1 + 48);
  v3 = (a1 + 24);
  sub_2213FB81C(&v3);
  return a1;
}

void sub_22149AC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_22149AC80(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v7 = objc_msgSend_rowUIDForRowIndex_(WeakRetained, v4, a2, v5, v6);
  v9 = v8;

  v10 = objc_loadWeakRetained((*(a1 + 32) + 72));
  v15 = objc_msgSend_groupBy(v10, v11, v12, v13, v14);
  v27 = objc_msgSend_groupNodeForGroupUid_(v15, v16, v7, v9, v17);

  if (objc_msgSend_groupLevel(v27, v18, v19, v20, v21) < *(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_groupLevel(v27, v22, v23, v24, v25);
  }
}

void sub_22149B004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  sub_2210BDEC0(&a21);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22149BC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_22149A5FC(&a14);
  v19 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void *sub_22149BD7C(void *a1, void *a2)
{
  v3 = a2;
  sub_22149C4FC(a1, v3);
  *a1 = &unk_2834A8D58;
  a1[12] = v3;
  return a1;
}

uint64_t sub_22149BDE4(uint64_t a1)
{
  *a1 = &unk_2834A7E10;
  sub_2210BDEC0(a1 + 48);
  v3 = (a1 + 24);
  sub_2213FB81C(&v3);
  return MEMORY[0x223DA1450](a1, 0x10A1C40F703162ALL);
}

uint64_t *sub_22149BECC(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      v5 = sub_2210875C4(a1 + 6, v3);
      if (v5)
      {
        a1 = (a1[3] + 96 * v5[4]);
      }

      else
      {
        v11 = &unk_2834A7E10;
        v12 = *v3;
        memset(v13, 0, sizeof(v13));
        v14 = 0;
        v15 = 1065353216;
        v16 = 0x7FFFFFFF;
        v17 = 0;
        v7 = a1[3];
        v6 = a1[4];
        v18 = &v12;
        sub_22149D5C0(a1 + 6, &v12)[4] = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
        v8 = a1[4];
        if (v8 >= a1[5])
        {
          v9 = sub_22149CD60(a1 + 3, &v11);
        }

        else
        {
          sub_22149CE94((a1 + 3), a1[4], &v11);
          v9 = v8 + 96;
          a1[4] = v8 + 96;
        }

        a1[4] = v9;
        v11 = &unk_2834A7E10;
        sub_2210BDEC0(&v13[1] + 8);
        v18 = v13;
        sub_2213FB81C(&v18);
        a1 = (a1[4] - 96);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  return a1;
}

void sub_22149C044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 32) = v10;
  sub_2213FB748(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_22149C064(uint64_t a1)
{
  if (*(a1 + 92))
  {
    return 1;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = 1;
  do
  {
    v5 &= sub_22149C064(v3);
    v3 += 96;
  }

  while (v3 != v4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  result = 1;
  *(a1 + 92) = 1;
  return result;
}

void sub_22149C0DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (*(a1 + 92) == 1)
    {

      sub_221083454(a4, (a1 + 8));
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v5 != v6)
    {
      v8 = a2 + 1;
      do
      {
        sub_22149C0DC(v5, v8, a3, a4);
        v5 += 96;
      }

      while (v5 != v6);
    }
  }
}

void sub_22149C180(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5));
  v9 = &unk_2834A8D80;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_22149D7FC(v2, v3, &v9, v5, 1);

  v6 = a1[3];
  v7 = a1[4];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = (v6 + 8);
      sub_22149D5C0(a1 + 6, (v6 + 8))[4] = v8++;
      v6 += 96;
    }

    while (v6 != v7);
  }
}

uint64_t sub_22149C264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v3 = *(a2 + 88);
  v4 = *(a3 + 88);
  v5 = v3 >= v4;
  if (v3 != v4)
  {
    return !v5;
  }

  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 != v7)
  {
    return 0;
  }

  v5 = *(a2 + 8) >= *(a3 + 8);
  return !v5;
}

uint64_t sub_22149C2B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    v5 = *(a1 + 88);
    if (v5 != 0x7FFFFFFF)
    {
      break;
    }

    v6 = a1 + 24;
    a1 = *(a1 + 24);
    if (*(v6 + 8) == a1)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSTUidOrderNode::firstIndex()", a4, a5);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUidOrderNode.mm", v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 159, 0, "Sorting category/pivot order: Never should a group be empty");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
      return v5;
    }
  }

  return v5;
}

void sub_22149C388(uint64_t *a1, uint64_t a2, __int128 **a3)
{
  v4 = sub_22149BECC(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v7 = v4;
    do
    {
      v12 = &unk_2834A7E10;
      v13 = *v5;
      memset(v14, 0, sizeof(v14));
      v15 = 0;
      v16 = 1065353216;
      v17 = 0x7FFFFFFF;
      v18 = 0;
      v9 = v7[3];
      v8 = v7[4];
      v19 = &v13;
      sub_22149D5C0(v7 + 6, &v13)[4] = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 5);
      v10 = v7[4];
      if (v10 >= v7[5])
      {
        v11 = sub_22149CD60(v7 + 3, &v12);
      }

      else
      {
        sub_22149CE94((v7 + 3), v7[4], &v12);
        v11 = v10 + 96;
        v7[4] = v10 + 96;
      }

      v7[4] = v11;
      v12 = &unk_2834A7E10;
      sub_2210BDEC0(&v14[1] + 8);
      v19 = v14;
      sub_2213FB81C(&v19);
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_22149C4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 32) = v10;
  sub_2213FB748(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_22149C4FC(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_2834A7E10;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0x7FFFFFFF;
  *(a1 + 92) = 0;
  v8 = objc_msgSend_numberOfLevels(v3, v4, v5, v6, v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22149C614;
  v17[3] = &unk_278465DB8;
  v17[4] = a1;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v3, v9, v8, v17, v10);
  *(a1 + 8) = objc_msgSend_topLevelGroupUid(v3, v11, v12, v13, v14);
  *(a1 + 16) = v15;

  return a1;
}

void sub_22149C5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2210BDEC0(v7 + 48);
  sub_2213FB81C(va);

  _Unwind_Resume(a1);
}

void sub_22149C614(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  v9 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_nodePath(v3, v4, v5, v6, v7);
    objc_msgSend_unfilteredRowUidsAsVector(v8, v10, v11, v12, v13);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __p = 0;
    v15 = 0;
    v16 = 0;
  }

  sub_22149C388(v9, &v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_22149C6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22149C6EC(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  HIDWORD(v37) = a9;
  if (a5 < a7)
  {
    if (a9)
    {
      v16 = *(a1 + 24);
      for (i = *(a1 + 32); v16 != i; v16 += 96)
      {
        LOBYTE(v37) = 1;
        sub_22149C6EC(v16, a2, a3, a4, (a5 + 1), a6, a7, a8, v37);
      }
    }
  }

  v18 = a1;
  if (a5 >= a6)
  {
    sub_221083454(a2, (a1 + 8));
    if (a3 && a5 == a7)
    {
      sub_221083454(a3, (a1 + 8));
    }

    if (a4 && a5 < a7)
    {
      sub_221083454(a4, (a1 + 8));
    }
  }

  if (a8)
  {
    if (*(a1 + 92) == 1 && a6 - 1 <= a5)
    {
      v20 = sub_2211A8DF4(*(a1 + 8), *(a1 + 16));
      v22 = v21;
      v24 = a2[1];
      v23 = a2[2];
      if (v24 >= v23)
      {
        v26 = *a2;
        v27 = v24 - *a2;
        v28 = v27 >> 4;
        v29 = (v27 >> 4) + 1;
        if (v29 >> 60)
        {
          sub_22107C148();
        }

        v30 = v23 - v26;
        if (v30 >> 3 > v29)
        {
          v29 = v30 >> 3;
        }

        v31 = v30 >= 0x7FFFFFFFFFFFFFF0;
        v32 = 0xFFFFFFFFFFFFFFFLL;
        if (!v31)
        {
          v32 = v29;
        }

        if (v32)
        {
          sub_221086F74(a2, v32);
        }

        v33 = (16 * v28);
        *v33 = v20;
        v33[1] = v22;
        v25 = 16 * v28 + 16;
        memcpy(0, v26, v27);
        v34 = *a2;
        *a2 = 0;
        a2[1] = v25;
        a2[2] = 0;
        if (v34)
        {
          operator delete(v34);
        }

        v18 = a1;
      }

      else
      {
        *v24 = v20;
        v24[1] = v21;
        v25 = (v24 + 2);
      }

      a2[1] = v25;
    }
  }

  if (a5 < a7 && !HIDWORD(v37))
  {
    v36 = *(v18 + 24);
    v35 = *(v18 + 32);
    while (v36 != v35)
    {
      LOBYTE(v37) = 0;
      sub_22149C6EC(v36, a2, a3, a4, (a5 + 1), a6, a7, a8, v37);
      v36 += 96;
    }
  }
}

void sub_22149C92C(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, void *a6, void *a7, unsigned int a8)
{
  v12 = a2;
  v13 = a6;
  v63 = a7;
  if (a5 >= 6)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTUidOrderNode::_orderUsingGroupByAndMaps(TSTGroupBy *__strong, BOOL, int, int, TSTColumnRowUIDMap *__strong, TSTColumnRowUIDMap *__strong, BOOL)", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUidOrderNode.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 226, 0, "Too many number of levels for this order algorithm.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = v63;
  v29 = a1[3];
  v64 = a1[4];
  if (v29 != v64)
  {
    v30 = (a4 + 1);
    while (1)
    {
      sub_22149C92C(v29, v12, a3, v30, a5, v13, v28, a8);
      v67 = 0;
      isError = objc_msgSend_groupLevelForGroupUid_isBlank_isError_(v12, v31, v29 + 8, &v67 + 1, &v67);
      v37 = isError;
      if (a4 < a5 && v30 != isError)
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "void TSTUidOrderNode::_orderUsingGroupByAndMaps(TSTGroupBy *__strong, BOOL, int, int, TSTColumnRowUIDMap *__strong, TSTColumnRowUIDMap *__strong, BOOL)", v35, v36);
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUidOrderNode.mm", v41, v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 237, 0, "Level mismatch between the groupBy and the order node tree");

        v28 = v63;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
      }

      if (v37 > a5)
      {
        break;
      }

      v55 = *(v29 + 8);
      v56 = *(v29 + 16);
      if (a3)
      {
        v51 = objc_msgSend_rowIndexForRowUID_(v13, v33, v55, v56, v36);
        v57 = 0x7FFFFFFF;
      }

      else
      {
        v51 = objc_msgSend_columnIndexForColumnUID_(v13, v33, v55, v56, v36);
        v57 = 0x7FFF;
      }

      if (v51 != v57)
      {
        goto LABEL_28;
      }

      if (!a8)
      {
        goto LABEL_27;
      }

      if (v67 == 1)
      {
        v58 = sub_22149C2B4(v29, v33, v34, v35, v36);
        v59 = 5 - v37;
        v60 = 22000002;
      }

      else
      {
        if (HIBYTE(v67) != 1)
        {
          goto LABEL_27;
        }

        v58 = sub_22149C2B4(v29, v33, v34, v35, v36);
        v59 = 5 - v37;
        v60 = 33000003;
      }

      v51 = v58 + (v60 << v59);
LABEL_28:
      *(v29 + 88) = v51;
      v29 += 96;
      if (v29 == v64)
      {
        goto LABEL_29;
      }
    }

    if (v37 == 255)
    {
      v49 = *(v29 + 8);
      v50 = *(v29 + 16);
      if (a3)
      {
        v51 = objc_msgSend_rowIndexForRowUID_(v13, v33, v49, v50, v36);
        v54 = 0x7FFFFFFF;
      }

      else
      {
        v51 = objc_msgSend_columnIndexForColumnUID_(v13, v33, v49, v50, v36);
        v54 = 0x7FFF;
      }

      if (v51 == v54)
      {
        v61 = objc_msgSend_rowIndexForRowUID_(v28, v52, *(v29 + 8), *(v29 + 16), v53);
        if (v61 == 0x7FFFFFFF)
        {
          v51 = 0x7FFFFFFF;
        }

        else
        {
          v51 = v61 + 11000001;
        }
      }

      goto LABEL_28;
    }

LABEL_27:
    v51 = sub_22149C2B4(v29, v33, v34, v35, v36);
    goto LABEL_28;
  }

LABEL_29:
  sub_22149C180(a1);
}

void sub_22149CC78(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_msgSend_containsUuid_(v7, v3, *(a1 + 8), *(a1 + 16), v4))
  {
    *(a1 + 92) = 1;
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  while (v6 != v5)
  {
    sub_22149CC78(v6, v7);
    v6 += 96;
  }
}

void sub_22149CD0C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_22149C0DC(a1, 0, a2, a3);
}

void sub_22149CD44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22149CD60(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_22149D020(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  sub_22149CE94(a1, 96 * v2, a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = 96 * v2 + *a1 - v7;
  sub_22149D484(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_22149D554(&v13);
  return v12;
}

void sub_22149CE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22149D554(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22149CE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = &unk_2834A7E10;
  v5 = *(a3 + 8);
  *(a2 + 24) = 0;
  v6 = a2 + 24;
  *(a2 + 8) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_22149CF4C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 32) - *(a3 + 24)) >> 5));
  result = sub_22149D1D0(v6 + 24, a3 + 48);
  v8 = *(a3 + 88);
  *(a2 + 92) = *(a3 + 92);
  *(a2 + 88) = v8;
  return result;
}

void sub_22149CF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2213FB81C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22149CF4C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22149CFD4(result, a4);
  }

  return result;
}

void sub_22149CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2213FB81C(&a9);
  _Unwind_Resume(a1);
}

void sub_22149CFD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_22149D020(a1, a2);
  }

  sub_22107C148();
}

void sub_22149D020(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_22149D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = &unk_2834A7E10;
      v8 = *(a2 + v7 + 8);
      *(a4 + v7 + 24) = 0;
      v9 = a4 + v7 + 24;
      *(v9 - 16) = v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      sub_22149CF4C();
      sub_22149D1D0(a4 + v7 + 48, a2 + v7 + 48);
      v10 = a4 + v7;
      v11 = *(a2 + v7 + 88);
      *(v10 + 92) = *(a2 + v7 + 92);
      *(v10 + 88) = v11;
      v7 += 96;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_22149D15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    v13 = v10 + v11 - 96;
    v14 = -v11;
    v15 = v13;
    v16 = v13;
    do
    {
      v17 = *v16;
      v16 -= 12;
      (*v17)(v15);
      v13 -= 96;
      v15 = v16;
      v14 += 96;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22149D1D0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22149D248(a1, i + 2);
  }

  return a1;
}

void *sub_22149D248(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t sub_22149D484(uint64_t result, uint64_t a2, uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    v8 = 0;
    v9 = a2;
    do
    {
      result = sub_22149CE94(v7, a4 + v8, v9);
      v9 += 96;
      v8 += 96;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 12;
        result = (*v12)(v6);
        v10 += 12;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_22149D538(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2216F7EF4(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22149D554(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 96);
    *(a1 + 16) = i - 96;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_22149D5C0(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_22149D7FC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 96;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 5);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if ((*(*a3 + 16))())
        {
LABEL_82:
          v45 = v10;
LABEL_83:
          v48 = v9;
LABEL_84:

          sub_22149F050(v45, v48);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_22149DFA4(v10, v10 + 96, v10 + 192, a2 - 96, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_22149DFA4(v10, v10 + 96, v10 + 192, v10 + 288, a3);
      if (!(*(*a3 + 16))())
      {
        return;
      }

      sub_22149F050(v10 + 288, a2 - 96);
      if (!(*(*a3 + 16))())
      {
        return;
      }

      sub_22149F050(v10 + 192, v10 + 288);
      if (!(*(*a3 + 16))())
      {
        return;
      }

      v46 = v10 + 96;
      v47 = v10 + 192;
LABEL_100:
      sub_22149F050(v46, v47);
      if ((*(*a3 + 16))())
      {
        v48 = v10 + 96;
        v45 = v10;
        goto LABEL_84;
      }

      return;
    }

LABEL_10:
    if (v13 <= 2303)
    {
      if (a5)
      {

        sub_22149E128(v10, a2, a3);
      }

      else
      {

        sub_22149E360(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_22149F6D0(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 96 * (v14 >> 1);
    v17 = *(*a3 + 16);
    if (v13 > 0x3000)
    {
      v18 = v17();
      v19 = (*(*a3 + 16))();
      if (v18)
      {
        if (v19)
        {
          v20 = a1;
          goto LABEL_27;
        }

        sub_22149F050(a1, v16);
        if ((*(*a3 + 16))())
        {
          v20 = v16;
LABEL_27:
          v24 = a2 - 96;
LABEL_28:
          sub_22149F050(v20, v24);
        }
      }

      else if (v19)
      {
        sub_22149F050(v16, a2 - 96);
        if ((*(*a3 + 16))())
        {
          v20 = a1;
          v24 = v16;
          goto LABEL_28;
        }
      }

      v26 = a1 + 96 * v15 - 96;
      v27 = (*(*a3 + 16))();
      v28 = (*(*a3 + 16))();
      if (v27)
      {
        if (v28)
        {
          v29 = a1 + 96;
          goto LABEL_40;
        }

        sub_22149F050(a1 + 96, a1 + 96 * v15 - 96);
        if ((*(*a3 + 16))())
        {
          v29 = a1 + 96 * v15 - 96;
LABEL_40:
          v30 = a2 - 192;
LABEL_41:
          sub_22149F050(v29, v30);
        }
      }

      else if (v28)
      {
        sub_22149F050(a1 + 96 * v15 - 96, a2 - 192);
        if ((*(*a3 + 16))())
        {
          v29 = a1 + 96;
          v30 = a1 + 96 * v15 - 96;
          goto LABEL_41;
        }
      }

      v31 = a1 + 96 * v15;
      v32 = (*(*a3 + 16))();
      v33 = (*(*a3 + 16))();
      if (v32)
      {
        if (v33)
        {
          v34 = a1 + 192;
          goto LABEL_50;
        }

        sub_22149F050(a1 + 192, v31 + 96);
        if ((*(*a3 + 16))())
        {
          v34 = v31 + 96;
LABEL_50:
          v35 = a2 - 288;
LABEL_51:
          sub_22149F050(v34, v35);
        }
      }

      else if (v33)
      {
        sub_22149F050(v31 + 96, a2 - 288);
        if ((*(*a3 + 16))())
        {
          v34 = a1 + 192;
          v35 = v31 + 96;
          goto LABEL_51;
        }
      }

      v36 = (*(*a3 + 16))();
      v37 = (*(*a3 + 16))();
      if (v36)
      {
        if (v37)
        {
          v38 = v31 + 96;
          v39 = v26;
          goto LABEL_60;
        }

        sub_22149F050(v26, v16);
        if ((*(*a3 + 16))())
        {
          v38 = v31 + 96;
          v39 = v16;
LABEL_60:
          sub_22149F050(v39, v38);
        }
      }

      else if (v37)
      {
        sub_22149F050(v16, v31 + 96);
        if ((*(*a3 + 16))())
        {
          v39 = v26;
          v38 = v16;
          goto LABEL_60;
        }
      }

      v23 = a1;
      v25 = v16;
LABEL_62:
      sub_22149F050(v23, v25);
      goto LABEL_63;
    }

    v21 = v17();
    v22 = (*(*a3 + 16))();
    if (v21)
    {
      if (v22)
      {
        v23 = v16;
LABEL_37:
        v25 = a2 - 96;
        goto LABEL_62;
      }

      sub_22149F050(v16, a1);
      if ((*(*a3 + 16))())
      {
        v23 = a1;
        goto LABEL_37;
      }
    }

    else if (v22)
    {
      sub_22149F050(a1, a2 - 96);
      if ((*(*a3 + 16))())
      {
        v23 = v16;
        v25 = a1;
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && ((*(*a3 + 16))() & 1) == 0)
    {
      v10 = sub_22149E578(a1, a2, a3);
      goto LABEL_70;
    }

    v40 = sub_22149E858(a1, a2, a3);
    if ((v41 & 1) == 0)
    {
      goto LABEL_68;
    }

    v42 = sub_22149EB3C(a1, v40, a3);
    v10 = v40 + 96;
    if (sub_22149EB3C(v40 + 96, a2, a3))
    {
      a4 = -v12;
      a2 = v40;
      if (v42)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v42)
    {
LABEL_68:
      sub_22149D7FC(a1, v40, a3, -v12, a5 & 1);
      v10 = v40 + 96;
LABEL_70:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v43 = (*(*a3 + 16))();
  v44 = (*(*a3 + 16))();
  if ((v43 & 1) == 0)
  {
    if (!v44)
    {
      return;
    }

    v46 = v10 + 96;
    v47 = v9;
    goto LABEL_100;
  }

  if (v44)
  {
    goto LABEL_82;
  }

  sub_22149F050(v10, v10 + 96);
  if ((*(*a3 + 16))())
  {
    v45 = v10 + 96;
    goto LABEL_83;
  }
}

void sub_22149DFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    sub_22149F050(a1, a2);
    if ((*(*a5 + 16))())
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_22149F050(a2, a3);
    if ((*(*a5 + 16))())
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      sub_22149F050(v12, v13);
    }
  }

  if ((*(*a5 + 16))())
  {
    sub_22149F050(a3, a4);
    if ((*(*a5 + 16))())
    {
      sub_22149F050(a2, a3);
      if ((*(*a5 + 16))())
      {

        sub_22149F050(a1, a2);
      }
    }
  }
}

void sub_22149E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v3 = a2;
    v5 = a1 + 96;
    if (a1 + 96 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*(*a3 + 16))())
        {
          v15 = &unk_2834A7E10;
          v16 = *(v8 + 104);
          v18 = 0;
          v19 = 0;
          v17 = 0;
          sub_22149CF4C(&v17, *(v8 + 120), *(v8 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 128) - *(v8 + 120)) >> 5));
          sub_22149D1D0(v20, v8 + 144);
          v22 = *(v8 + 184);
          v23 = *(v8 + 188);
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            *(a1 + v10 + 104) = *(a1 + v10 + 8);
            sub_22149F210(a1 + v10 + 120, *(a1 + v10 + 24), *(a1 + v10 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + v10 + 32) - *(a1 + v10 + 24)) >> 5));
            *(v11 + 176) = *(v11 + 80);
            sub_22149F51C((v11 + 144), *(v11 + 64), 0);
            v12 = a1 + v10;
            *(v12 + 184) = *(a1 + v10 + 88);
            *(v12 + 188) = *(a1 + v10 + 92);
            if (!v10)
            {
              break;
            }

            v10 -= 96;
            if (((*(*a3 + 16))() & 1) == 0)
            {
              v13 = a1 + v10 + 96;
              goto LABEL_10;
            }
          }

          v13 = a1;
LABEL_10:
          *(v12 + 8) = v16;
          if (v13 != &v15)
          {
            sub_22149F210(v13 + 24, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 5));
            *(v13 + 80) = v21;
            sub_22149F51C((v13 + 48), v20[2], 0);
          }

          *(v12 + 88) = v22;
          *(v12 + 92) = v23;
          v15 = &unk_2834A7E10;
          sub_2210BDEC0(v20);
          v24 = &v17;
          sub_2213FB81C(&v24);
          v3 = a2;
        }

        v5 = v9 + 96;
        v7 += 96;
        v8 = v9;
      }

      while (v9 + 96 != v3);
    }
  }
}

void sub_22149E334(_Unwind_Exception *a1)
{
  *(v2 - 88) = v1;
  sub_2213FB81C((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_22149E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 96;
    if (a1 + 96 != a2)
    {
      v7 = a1 - 96;
      do
      {
        v8 = v5;
        if ((*(*a3 + 16))())
        {
          v10 = &unk_2834A7E10;
          v11 = *(v4 + 104);
          v13 = 0;
          v14 = 0;
          v12 = 0;
          sub_22149CF4C(&v12, *(v4 + 120), *(v4 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 128) - *(v4 + 120)) >> 5));
          sub_22149D1D0(v15, v4 + 144);
          v17 = *(v4 + 184);
          v18 = *(v4 + 188);
          v9 = v7;
          do
          {
            *(v9 + 200) = *(v9 + 104);
            sub_22149F210(v9 + 216, *(v9 + 120), *(v9 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 128) - *(v9 + 120)) >> 5));
            *(v9 + 272) = *(v9 + 176);
            sub_22149F51C((v9 + 240), *(v9 + 160), 0);
            *(v9 + 280) = *(v9 + 184);
            *(v9 + 284) = *(v9 + 188);
            v9 -= 96;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          *(v9 + 200) = v11;
          if ((v9 + 192) != &v10)
          {
            sub_22149F210(v9 + 216, v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 5));
            *(v9 + 272) = v16;
            sub_22149F51C((v9 + 240), v15[2], 0);
          }

          *(v9 + 280) = v17;
          *(v9 + 284) = v18;
          v10 = &unk_2834A7E10;
          sub_2210BDEC0(v15);
          v19 = &v12;
          sub_2213FB81C(&v19);
        }

        v5 = v8 + 96;
        v7 += 96;
        v4 = v8;
      }

      while (v8 + 96 != a2);
    }
  }
}

void sub_22149E54C(_Unwind_Exception *a1)
{
  *(v2 - 88) = v1;
  sub_2213FB81C((v2 - 88));
  _Unwind_Resume(a1);
}

unint64_t sub_22149E578(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v14 = &unk_2834A7E10;
  v15 = *(a1 + 8);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_22149CF4C(&v16, v6, *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v6) >> 5));
  sub_22149D1D0(v19, v7 + 24);
  v21 = *(a1 + 88);
  v22 = *(a1 + 92);
  if ((*(*a3 + 16))())
  {
    v8 = a1;
    do
    {
      v8 += 96;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    v9 = a1 + 96;
    do
    {
      v8 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v10 = (*(*a3 + 16))();
      v9 = v8 + 96;
    }

    while (!v10);
  }

  if (v8 < a2)
  {
    do
    {
      a2 -= 96;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  while (v8 < a2)
  {
    sub_22149F050(v8, a2);
    do
    {
      v8 += 96;
    }

    while (!(*(*a3 + 16))());
    do
    {
      a2 -= 96;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  if (v8 - 96 != a1)
  {
    *(v7 - 16) = *(v8 - 88);
    sub_22149F210(v7, *(v8 - 72), *(v8 - 64), 0xAAAAAAAAAAAAAAABLL * ((*(v8 - 64) - *(v8 - 72)) >> 5));
    *(a1 + 80) = *(v8 - 16);
    sub_22149F51C((v7 + 24), *(v8 - 32), 0);
    v11 = *(v8 - 8);
    *(a1 + 92) = *(v8 - 4);
    *(a1 + 88) = v11;
  }

  *(v8 - 88) = v15;
  if ((v8 - 96) != &v14)
  {
    sub_22149F210(v8 - 72, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 5));
    *(v8 - 16) = v20;
    sub_22149F51C((v8 - 48), v19[2], 0);
  }

  v12 = v21;
  *(v8 - 4) = v22;
  *(v8 - 8) = v12;
  v14 = &unk_2834A7E10;
  sub_2210BDEC0(v19);
  v23 = &v16;
  sub_2213FB81C(&v23);
  return v8;
}

void sub_22149E814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2213FB748(va);
  _Unwind_Resume(a1);
}

unint64_t sub_22149E858(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v15 = &unk_2834A7E10;
  v16 = *(a1 + 8);
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_22149CF4C(&v17, v6, *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v6) >> 5));
  sub_22149D1D0(v20, v7 + 24);
  v8 = 0;
  v22 = *(a1 + 88);
  v23 = *(a1 + 92);
  do
  {
    v8 += 96;
  }

  while (((*(*a3 + 16))() & 1) != 0);
  v9 = a1 + v8;
  if (v8 == 96)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 96;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 96;
    }

    while (!(*(*a3 + 16))());
  }

  v10 = a1 + v8;
  if (v9 < a2)
  {
    v11 = a2;
    do
    {
      sub_22149F050(v10, v11);
      do
      {
        v10 += 96;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      do
      {
        v11 -= 96;
      }

      while (!(*(*a3 + 16))());
    }

    while (v10 < v11);
  }

  if (v10 - 96 != a1)
  {
    *(v7 - 16) = *(v10 - 88);
    sub_22149F210(v7, *(v10 - 72), *(v10 - 64), 0xAAAAAAAAAAAAAAABLL * ((*(v10 - 64) - *(v10 - 72)) >> 5));
    *(a1 + 80) = *(v10 - 16);
    sub_22149F51C((v7 + 24), *(v10 - 32), 0);
    v12 = *(v10 - 8);
    *(a1 + 92) = *(v10 - 4);
    *(a1 + 88) = v12;
  }

  *(v10 - 88) = v16;
  if ((v10 - 96) != &v15)
  {
    sub_22149F210(v10 - 72, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 5));
    *(v10 - 16) = v21;
    sub_22149F51C((v10 - 48), v20[2], 0);
  }

  v13 = v22;
  *(v10 - 4) = v23;
  *(v10 - 8) = v13;
  v15 = &unk_2834A7E10;
  sub_2210BDEC0(v20);
  v24 = &v17;
  sub_2213FB81C(&v24);
  return v10 - 96;
}

void sub_22149EAFC(_Unwind_Exception *a1)
{
  *(v2 - 88) = v1;
  sub_2213FB81C((v2 - 88));
  _Unwind_Resume(a1);
}

BOOL sub_22149EB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = a2 - 96;
        v13 = (*(*a3 + 16))();
        v14 = (*(*a3 + 16))();
        if (v13)
        {
          if (v14)
          {
            v7 = a1;
          }

          else
          {
            sub_22149F050(a1, a1 + 96);
            if (!(*(*a3 + 16))())
            {
              return 1;
            }

            v7 = a1 + 96;
          }

          v8 = v12;
          goto LABEL_30;
        }

        if (!v14)
        {
          return 1;
        }

        v10 = a1 + 96;
        v11 = v12;
        break;
      case 4:
        sub_22149DFA4(a1, a1 + 96, a1 + 192, a2 - 96, a3);
        return 1;
      case 5:
        v9 = a2 - 96;
        sub_22149DFA4(a1, a1 + 96, a1 + 192, a1 + 288, a3);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        sub_22149F050(a1 + 288, v9);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        sub_22149F050(a1 + 192, a1 + 288);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v10 = a1 + 96;
        v11 = a1 + 192;
        break;
      default:
        goto LABEL_16;
    }

    sub_22149F050(v10, v11);
    if ((*(*a3 + 16))())
    {
      v8 = a1 + 96;
      v7 = a1;
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
    if ((*(*a3 + 16))())
    {
      v7 = a1;
      v8 = v4 - 96;
LABEL_30:
      sub_22149F050(v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v15 = (*(*a3 + 16))();
  v16 = (*(*a3 + 16))();
  if (v15)
  {
    if (v16)
    {
      v17 = a1;
    }

    else
    {
      sub_22149F050(a1, a1 + 96);
      if (!(*(*a3 + 16))())
      {
        goto LABEL_35;
      }

      v17 = a1 + 96;
    }

    v18 = a1 + 192;
    goto LABEL_34;
  }

  if (v16)
  {
    sub_22149F050(a1 + 96, a1 + 192);
    if ((*(*a3 + 16))())
    {
      v18 = a1 + 96;
      v17 = a1;
LABEL_34:
      sub_22149F050(v17, v18);
    }
  }

LABEL_35:
  v19 = a1 + 288;
  if (a1 + 288 == v4)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  v22 = &v34;
  v31 = v4;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v32 = &unk_2834A7E10;
      v33 = *(v19 + 8);
      v22[1] = 0;
      v22[2] = 0;
      *v22 = 0;
      v23 = v22;
      sub_22149CF4C(v22, *(v19 + 24), *(v19 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 32) - *(v19 + 24)) >> 5));
      sub_22149D1D0(v36, v19 + 48);
      v38 = *(v19 + 88);
      v39 = *(v19 + 92);
      v24 = v20;
      while (1)
      {
        v25 = v24;
        v26 = a1 + v24;
        *(a1 + v24 + 296) = *(a1 + v24 + 200);
        if (a1 + v24 + 192 != a1 + v24 + 288)
        {
          sub_22149F210(v26 + 312, *(v26 + 216), *(v26 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 224) - *(v26 + 216)) >> 5));
          *(a1 + v25 + 368) = *(a1 + v25 + 272);
          sub_22149F51C((a1 + v25 + 336), *(a1 + v25 + 256), 0);
        }

        *(v26 + 376) = *(v26 + 280);
        *(v26 + 380) = *(v26 + 284);
        if (v25 == -192)
        {
          break;
        }

        v27 = (*(*a3 + 16))();
        v24 = v25 - 96;
        if ((v27 & 1) == 0)
        {
          v28 = a1 + v24 + 288;
          goto LABEL_45;
        }
      }

      v28 = a1;
LABEL_45:
      v29 = a1 + v25;
      *(v29 + 200) = v33;
      if (v28 != &v32)
      {
        sub_22149F210(v28 + 24, v34, v35, 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 5));
        *(v28 + 80) = v37;
        sub_22149F51C((v28 + 48), v36[2], 0);
      }

      *(v29 + 280) = v38;
      *(v29 + 284) = v39;
      ++v21;
      v32 = &unk_2834A7E10;
      sub_2210BDEC0(v36);
      v22 = v23;
      v40 = v23;
      sub_2213FB81C(&v40);
      v4 = v31;
      if (v21 == 8)
      {
        return v19 + 96 == v31;
      }
    }

    v20 += 96;
    v19 += 96;
    if (v19 == v4)
    {
      return 1;
    }
  }
}

void sub_22149F024(_Unwind_Exception *a1)
{
  *(v2 - 88) = v1;
  sub_2213FB81C((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_22149F050(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v7 = &unk_2834A7E10;
  v8 = *(a1 + 8);
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_22149CF4C(&v9, v4, *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v4) >> 5));
  sub_22149D1D0(v12, v5 + 24);
  v14 = *(a1 + 88);
  v15 = *(a1 + 92);
  *(v5 - 16) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_22149F210(v5, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 5));
    *(a1 + 80) = *(a2 + 80);
    sub_22149F51C((v5 + 24), *(a2 + 64), 0);
  }

  v6 = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v6;
  *(a2 + 8) = v8;
  if (&v7 != a2)
  {
    sub_22149F210(a2 + 24, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 5));
    *(a2 + 80) = v13;
    sub_22149F51C((a2 + 48), v12[2], 0);
  }

  *(a2 + 88) = v14;
  *(a2 + 92) = v15;
  v7 = &unk_2834A7E10;
  sub_2210BDEC0(v12);
  v16 = &v9;
  sub_2213FB81C(&v16);
}

void sub_22149F1E8(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1;
  sub_2213FB81C((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_22149F210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    sub_22149F3AC(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_22149CFD4(a1, v10);
    }

    sub_22107C148();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    result = sub_22149F44C(&v21, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      v16 = v15 - 12;
      v17 = v15 - 12;
      v18 = v15 - 12;
      do
      {
        v19 = *v18;
        v18 -= 12;
        result = (*v19)(v17);
        v16 -= 12;
        v20 = v17 == v14;
        v17 = v18;
      }

      while (!v20);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_22149F44C(&v22, a2, a2 + v11, v8);
    result = sub_22149D078(a1, a2 + v11, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void sub_22149F3AC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 96;
      v6 = v3 - 96;
      v7 = v3 - 96;
      do
      {
        v8 = *v7;
        v7 -= 96;
        (*v8)(v6);
        v5 -= 96;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_22149F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    *(a4 + v7 + 8) = *(a2 + v7 + 8);
    if (a2 != a4)
    {
      sub_22149F210(v8 + 24);
      *(v8 + 80) = *(v9 + 80);
      sub_22149F51C((v8 + 48), *(v9 + 64), 0);
    }

    v10 = *(v9 + 88);
    *(v8 + 92) = *(v9 + 92);
    *(v8 + 88) = v10;
    v7 += 96;
  }

  while (a2 + v7 != v6);
  return v6;
}

void sub_22149F51C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        *(v8 + 1) = *(a2 + 1);
        v8[4] = a2[4];
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_22149F638();
  }
}

void sub_22149F604(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_22149F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 97)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 96 * v10;
      do
      {
        sub_22149F80C(a1, a4, v9, v12);
        v12 -= 96;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if ((*(*a4 + 16))())
        {
          sub_22149F050(v13, a1);
          sub_22149F80C(a1, a4, v9, a1);
        }

        v13 += 96;
      }

      while (v13 != a3);
    }

    if (v8 >= 97)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 5);
      do
      {
        sub_22149FAE4(a1, v6, a4, v14);
        v6 -= 96;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_22149F80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 5)))
    {
      v10 = (0x5555555555555556 * ((a4 - a1) >> 5)) | 1;
      v11 = a1 + 96 * v10;
      v12 = 0x5555555555555556 * ((a4 - a1) >> 5) + 2;
      if (v12 < a3 && (*(*a2 + 16))())
      {
        v11 += 96;
        v10 = v12;
      }

      if (((*(*a2 + 16))() & 1) == 0)
      {
        v17 = &unk_2834A7E10;
        v18 = *(v5 + 8);
        v20 = 0;
        v21 = 0;
        v19 = 0;
        sub_22149CF4C(&v19, *(v5 + 24), *(v5 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 32) - *(v5 + 24)) >> 5));
        sub_22149D1D0(v22, v5 + 48);
        v24 = *(v5 + 88);
        v25 = *(v5 + 92);
        do
        {
          v13 = v11;
          *(v5 + 8) = *(v11 + 8);
          if (v5 != v11)
          {
            sub_22149F210(v5 + 24, *(v11 + 24), *(v11 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 32) - *(v11 + 24)) >> 5));
            *(v5 + 80) = *(v11 + 80);
            sub_22149F51C((v5 + 48), *(v11 + 64), 0);
          }

          v14 = *(v11 + 88);
          *(v5 + 92) = *(v11 + 92);
          *(v5 + 88) = v14;
          if (v7 < v10)
          {
            break;
          }

          v15 = (2 * v10) | 1;
          v11 = a1 + 96 * v15;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v15;
          }

          else if ((*(*a2 + 16))())
          {
            v11 += 96;
          }

          else
          {
            v10 = v15;
          }

          v5 = v13;
        }

        while (!(*(*a2 + 16))());
        *(v13 + 8) = v18;
        if (v13 != &v17)
        {
          sub_22149F210(v13 + 24, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 5));
          *(v13 + 80) = v23;
          sub_22149F51C((v13 + 48), v22[2], 0);
        }

        v16 = v24;
        *(v13 + 92) = v25;
        *(v13 + 88) = v16;
        v17 = &unk_2834A7E10;
        sub_2210BDEC0(v22);
        v26 = &v19;
        sub_2213FB81C(&v26);
      }
    }
  }
}

void sub_22149FAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 88) = a11;
  sub_2213FB81C((v11 - 88));
  _Unwind_Resume(a1);
}

void sub_22149FAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v12 = &unk_2834A7E10;
    v13 = *(a1 + 8);
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_22149CF4C(&v14, *(a1 + 24), *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 5));
    sub_22149D1D0(v17, a1 + 48);
    v20 = *(a1 + 88);
    v21 = *(a1 + 92);
    v8 = sub_22149FD50(a1, a3, a4);
    v9 = v8;
    if (v8 == a2 - 96)
    {
      *(v8 + 8) = v13;
      if (v8 != &v12)
      {
        sub_22149F210(v8 + 24, v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 5));
        *(v9 + 80) = v19;
        sub_22149F51C((v9 + 48), v18, 0);
      }

      v11 = v20;
      *(v9 + 92) = v21;
      *(v9 + 88) = v11;
    }

    else
    {
      *(v8 + 8) = *(a2 - 88);
      sub_22149F210(v8 + 24, *(a2 - 72), *(a2 - 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 64) - *(a2 - 72)) >> 5));
      *(v9 + 80) = *(a2 - 16);
      sub_22149F51C((v9 + 48), *(a2 - 32), 0);
      v10 = *(a2 - 8);
      *(v9 + 92) = *(a2 - 4);
      *(v9 + 88) = v10;
      *(a2 - 88) = v13;
      if ((a2 - 96) != &v12)
      {
        sub_22149F210(a2 - 72, v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 5));
        *(a2 - 16) = v19;
        sub_22149F51C((a2 - 48), v18, 0);
      }

      *(a2 - 8) = v20;
      *(a2 - 4) = v21;
      sub_22149FE60(a1, v9 + 96, a3, 0xAAAAAAAAAAAAAAABLL * ((v9 + 96 - a1) >> 5));
    }

    v12 = &unk_2834A7E10;
    sub_2210BDEC0(v17);
    v22 = &v14;
    sub_2213FB81C(&v22);
  }
}

void sub_22149FD28(_Unwind_Exception *a1)
{
  *(v2 - 88) = v1;
  sub_2213FB81C((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_22149FD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 96 * v6;
    v9 = v8 + 96;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 192;
      if ((*(*a2 + 16))())
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *(a1 + 8) = *(v9 + 8);
    if (a1 != v9)
    {
      sub_22149F210(a1 + 24, *(v9 + 24), *(v9 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 32) - *(v9 + 24)) >> 5));
      *(a1 + 80) = *(v9 + 80);
      sub_22149F51C((a1 + 48), *(v9 + 64), 0);
    }

    v13 = *(v9 + 88);
    *(a1 + 92) = *(v9 + 92);
    *(a1 + 88) = v13;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_22149FE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 96 * (v4 >> 1);
    v10 = a2 - 96;
    if ((*(*a3 + 16))())
    {
      v14 = &unk_2834A7E10;
      v15 = *(a2 - 88);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      sub_22149CF4C(&v16, *(a2 - 72), *(a2 - 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 64) - *(a2 - 72)) >> 5));
      sub_22149D1D0(v19, a2 - 48);
      v21 = *(a2 - 8);
      v22 = *(a2 - 4);
      do
      {
        v11 = v9;
        *(v10 + 8) = *(v9 + 8);
        if (v10 != v9)
        {
          sub_22149F210(v10 + 24, *(v9 + 24), *(v9 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 32) - *(v9 + 24)) >> 5));
          *(v10 + 80) = *(v9 + 80);
          sub_22149F51C((v10 + 48), *(v9 + 64), 0);
        }

        v13 = (v9 + 88);
        v12 = *(v9 + 88);
        *(v10 + 92) = *(v9 + 92);
        *(v10 + 88) = v12;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 96 * v8;
        v10 = v11;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      *(v11 + 8) = v15;
      if (v11 != &v14)
      {
        sub_22149F210(v11 + 24, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 5));
        *(v11 + 80) = v20;
        sub_22149F51C((v11 + 48), v19[2], 0);
      }

      *v13 = v21;
      *(v11 + 92) = v22;
      v14 = &unk_2834A7E10;
      sub_2210BDEC0(v19);
      v23 = &v16;
      sub_2213FB81C(&v23);
    }
  }
}

void sub_2214A005C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 88) = a11;
  sub_2213FB81C((v11 - 88));
  _Unwind_Resume(a1);
}

void sub_2214A0FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  sub_2210BC9F8(v30 + 72, a20);
  sub_2210BC9F8(v30 + 48, a17);
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  sub_2210BC9F8(v31 - 96, *(v31 - 88));
  sub_2210BC9F8(v31 - 72, *(v31 - 64));

  _Unwind_Resume(a1);
}

__n128 sub_2214A105C(__n128 *a1, __n128 *a2)
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

void sub_2214A1080(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2214A1098(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *&v22 = objc_msgSend_p_tgtRangeForPbRange_givenColumnMaps_rowMaps_(*(a1 + 32), a2, a2, a3, a1 + 48, a1 + 72);
  *(&v22 + 1) = v6;
  if (v22 == 0x7FFFFFFF || (v22 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v6) == 0 || v6 == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v16 = sub_2214A12D0;
    v17 = &unk_2834A8DA8;
    v18 = *(a1 + 32);
    sub_2214A274C(v20, (a1 + 48));
    sub_2214A274C(v21, (a1 + 72));
    v19 = *(a1 + 40);
    v10 = v15;
    if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(a3) && a3)
    {
      v11 = a2;
      if (WORD2(a2) == 0x7FFF || a3 == 0)
      {
        v13 = 0x7FFF;
      }

      else
      {
        v13 = a3 + WORD2(a2) - 1;
      }

      v23 = 0;
      while (v11 <= a2 + HIDWORD(a3) - 1)
      {
        if (v13 >= WORD2(a2))
        {
          v14 = WORD2(a2);
          do
          {
            (v16)(v10, v11 | (v14 << 32), &v23);
            if (v23)
            {
              goto LABEL_29;
            }
          }

          while (++v14 <= v13);
        }

        ++v11;
      }
    }

LABEL_29:

    sub_2210BC9F8(v21, v10[10]);
    sub_2210BC9F8(v20, v10[7]);
  }

  else
  {
    sub_221083454(*(*(a1 + 40) + 8) + 48, &v22);
  }
}

void sub_2214A12D0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_p_tgtCellIDForPbCellID_givenColumnMaps_rowMaps_(*(a1 + 32), a2, a2, a1 + 48, a1 + 72);
  if (v3 != 0x7FFFFFFF && (v3 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v5 = *(*(a1 + 40) + 8);
    *&v6 = v3;
    *(&v6 + 1) = 0x100000001;
    sub_221083454(v5 + 48, &v6);
  }
}

void sub_2214A1394(uint64_t a1)
{
  sub_2210BC9F8(a1 + 72, *(a1 + 80));
  v2 = *(a1 + 56);

  sub_2210BC9F8(a1 + 48, v2);
}

void sub_2214A158C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_2214A15D8(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_pbRangeForTgtRange_(a1[4], a2, a2, a3, a5);
  v11 = v8;
  v12 = v10 == 0x7FFFFFFF || (v10 & 0xFFFF00000000) == 0x7FFF00000000;
  v13 = HIDWORD(v8);
  if (v12 || v13 == 0 || v8 == 0)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v34 = sub_2214A19E8;
    v35 = &unk_278465918;
    v16 = a1[5];
    v36 = a1[4];
    v37 = v16;
    v38 = a1[6];
    v17 = v33;
    if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(a3) && a3)
    {
      v18 = a2;
      if (WORD2(a2) == 0x7FFF || a3 == 0)
      {
        v20 = 0x7FFF;
      }

      else
      {
        v20 = a3 + WORD2(a2) - 1;
      }

      v48 = 0;
      while (v18 <= a2 + HIDWORD(a3) - 1)
      {
        if (v20 >= WORD2(a2))
        {
          v21 = WORD2(a2);
          do
          {
            (v34)(v17, v18 | (v21 << 32), &v48);
            if (v48)
            {
              goto LABEL_29;
            }
          }

          while (++v21 <= v20);
        }

        ++v18;
      }
    }

LABEL_29:

    v22 = v37;
    goto LABEL_30;
  }

  if (!objc_msgSend_containsCellRange_(a1[5], v8, v10, v8, v9))
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v40 = sub_2214A1928;
    v41 = &unk_278465DE0;
    v42 = a1[5];
    v44 = v10;
    v45 = v11;
    v43 = a1[6];
    v46 = a2;
    v47 = a3;
    v27 = v39;
    if (v10 == 0x7FFFFFFF)
    {
      v28 = 0;
    }

    else
    {
      v28 = v10;
    }

    if (v10 == 0x7FFFFFFF)
    {
      v29 = 0x7FFFFFFF;
    }

    else
    {
      v29 = v10 + v13 - 1;
    }

    if (WORD2(v10) == 0x7FFF || v11 == 0)
    {
      v31 = 0x7FFF;
    }

    else
    {
      v31 = v11 + WORD2(v10) - 1;
    }

    v48 = 0;
    while (v28 <= v29)
    {
      if (v31 >= WORD2(v10))
      {
        v32 = WORD2(v10);
        do
        {
          (v40)(v27, v28 | (v32 << 32), &v48);
          if (v48)
          {
            goto LABEL_54;
          }
        }

        while (++v32 <= v31);
      }

      ++v28;
    }

LABEL_54:

    v22 = v42;
LABEL_30:

    return;
  }

  v26 = a1[6];

  objc_msgSend_addRange_(v26, v24, a2, a3, v25);
}

uint64_t sub_2214A1928(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_containsCellID_(*(a1 + 32), a2, a2, a4, a5);
  if (result)
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 64);
    if (WORD2(a2) - WORD2(v10) + WORD2(v12) > 0x3E7 || a2 - v10 + v12 > 0xF423F)
    {
      v14 = 0x7FFF7FFFFFFFLL;
    }

    else
    {
      v14 = TSUOffsetColumnRowCoordinate();
    }

    return objc_msgSend_addRange_(v11, v8, v14, 0x100000001, v9);
  }

  return result;
}

uint64_t sub_2214A19E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_pbCellIDForTgtCellID_(*(a1 + 32), a2, a2, a4, a5);
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000)
  {
    result = objc_msgSend_containsCellID_(*(a1 + 40), v8, result, v9, v10);
    if (result)
    {
      v14 = *(a1 + 48);

      return objc_msgSend_addRange_(v14, v12, a2, 0x100000001, v13);
    }
  }

  return result;
}

void sub_2214A1E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_2213C6F4C(&a19);
  _Unwind_Resume(a1);
}

void sub_2214A1EEC(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_22107C148();
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
      sub_2214A2B10(a1, v10);
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

BOOL sub_2214A1FC4(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIDWORD(a4);
  v5 = HIDWORD(a2);
  if (!HIDWORD(a4) || !a4 || !v5 || !a2)
  {
    goto LABEL_45;
  }

  v6 = a3 & 0xFFFF00000000;
  if (a3 == 0x7FFFFFFFLL && v6 != 0x7FFF00000000)
  {
    goto LABEL_7;
  }

  v13 = a3 == 0x7FFFFFFF && v6 != 0x7FFF00000000;
  if (a3 > a1 && !v13)
  {
    goto LABEL_45;
  }

  v14 = a3 + HIDWORD(a4) - 1;
  if (a3 == 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (v14 < a1)
  {
    goto LABEL_45;
  }

  if (a3 == 0x7FFFFFFFLL || v6 != 0x7FFF00000000)
  {
LABEL_7:
    v7 = HIDWORD(a1);
    v8 = WORD2(a3);
    if (WORD2(a3) > WORD2(a1))
    {
      goto LABEL_45;
    }

    v9 = WORD2(a3) == 0x7FFF || a4 == 0;
    v10 = a4 + WORD2(a3) - 1;
    v11 = v9 ? 0x7FFF : a4 + WORD2(a3) - 1;
    if (v11 < WORD2(a1))
    {
      goto LABEL_45;
    }
  }

  else
  {
    v10 = a4 + 32766;
    v7 = HIDWORD(a1);
    v8 = 0x7FFF;
  }

  if (v8 == 0x7FFF)
  {
    v15 = 0x7FFF;
  }

  else
  {
    v15 = v10;
  }

  v16 = v7;
  v17 = a2 + v7 - 1;
  if (v16 == 0x7FFF || a2 == 0)
  {
    v17 = 0x7FFF;
  }

  if (v15 >= v17)
  {
    v19 = a3 + HIDWORD(a4) - 1;
    if (a3 == 0x7FFFFFFF)
    {
      v19 = 0x7FFFFFFF;
    }

    v20 = a1 == 0x7FFFFFFF ? 0x7FFFFFFF : a1 + HIDWORD(a2) - 1;
    if (v19 >= v20)
    {
      return 0;
    }
  }

LABEL_45:
  if (v5)
  {
    v21 = a1 == 0x7FFFFFFF;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = a1 + HIDWORD(a2) - 1;
  }

  v23 = (a3 & 0xFFFF00000000) != 0x7FFF00000000 && a3 == 0x7FFFFFFF;
  if (!v23 && v22 < a3)
  {
    return 0;
  }

  v24 = a3 == 0x7FFFFFFF || v4 == 0;
  v25 = v24 ? 0x7FFFFFFF : a3 + HIDWORD(a4) - 1;
  v26 = (a1 & 0xFFFF00000000) != 0x7FFF00000000 && a1 == 0x7FFFFFFF;
  if (!v26 && v25 < a1)
  {
    return 0;
  }

  v27 = 1;
  if (v4)
  {
    if ((a3 & 0xFFFF00000000) != 0)
    {
      if (v5)
      {
        if (a2)
        {
          if (a3 == 0x7FFFFFFF || (v27 = 1, a3 <= a1) && a3 + HIDWORD(a4) - 1 >= a1)
          {
            v29 = (WORD2(a3) - 1);
            if (v29 < WORD2(a1))
            {
              return 1;
            }

            v30 = a2 + WORD2(a1) - 1;
            if (WORD2(a1) == 0x7FFF || a2 == 0)
            {
              v30 = 0x7FFF;
            }

            if (v29 >= v30)
            {
              if (a3 == 0x7FFFFFFF)
              {
                v32 = 0x7FFFFFFF;
              }

              else
              {
                v32 = a3 + HIDWORD(a4) - 1;
              }

              if (a1 == 0x7FFFFFFF)
              {
                v33 = 0x7FFFFFFF;
              }

              else
              {
                v33 = a1 + HIDWORD(a2) - 1;
              }

              return v32 < v33;
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return v27;
}

uint64_t *sub_2214A2428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *(a2 + 4);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 <= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 <= v3)
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

void *sub_2214A24F4(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_2214A2544(a1, a2, a3);
  return a1;
}

void sub_2214A2544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    sub_2214A25C8();
  }
}

void *sub_2214A2664(void *a1, void *a2, void *a3, _DWORD *a4)
{
  v4 = a1 + 1;
  if (a1 + 1 != a2 && *(a2 + 7) > *a4)
  {
    while (1)
    {
      v5 = *v4;
      a2 = v4;
      if (!*v4)
      {
        break;
      }

      while (1)
      {
        v4 = v5;
        if (*(v5 + 28) <= *a4)
        {
          break;
        }

        v5 = *(v5 + 8);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    *a3 = v4;
    return a2;
  }

  v6 = *a2;
  if (*a1 == a2)
  {
    v8 = a2;
  }

  else
  {
    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v9 = a2;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }

    if (*a4 > *(v8 + 7))
    {
      while (1)
      {
        v11 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v11;
          if (*a4 > *(v11 + 28))
          {
            break;
          }

          v11 = *(v11 + 8);
          if (!v11)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v6)
  {
    *a3 = v8;
    return v8 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

void *sub_2214A274C(void *a1, uint64_t *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_2214A2544(a1, *a2, (a2 + 1));
  return a1;
}

__n128 sub_2214A27A4(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_2214A2830(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void *sub_2214A2830(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    sub_221122DC8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_2213C6DD4(a1, &v10);
}

void sub_2214A29B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_2214A2A04(const void **result, void *a2)
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

      sub_221122DC8(result[4], v9);
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

void sub_2214A2B10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_2214A2E2C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_2214A3CE8(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = objc_msgSend_gregorianCalendar(TSCECalendar, v4, v5, v6, v7);
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setMonth_(v9, v10, a2, v11, v12);
  v14 = objc_msgSend_dateByAddingComponents_toDate_options_(v8, v13, v9, v3, 0);

  return v14;
}

void sub_2214A4348(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2214A4428(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

double sub_2214A452C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v13 = objc_msgSend_gregorianCalendar(TSCECalendar, v9, v10, v11, v12);
  objc_msgSend_dayCountFromStartDate_endDate_basis_outError_(v13, v14, v7, v8, a3, a4);
  v16 = v15;

  return v16;
}

double sub_2214A45C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v13 = objc_msgSend_gregorianCalendar(TSCECalendar, v9, v10, v11, v12);
  objc_msgSend_numDaysInYearWithStartDate_endDate_basis_outError_(v13, v14, v7, v8, a3, a4);
  v16 = v15;

  return v16;
}

void TSCECellTractRefCore::TSCECellTractRefCore(TSCECellTractRefCore *this, const TSUIndexSet *a2, const TSUIndexSet *a3, const TSKUIDStruct *a4)
{
  *&this->_columns |= 3u;
  *&v6.f64[0] = 0x8000000080000000;
  *&v6.f64[1] = 0x8000000080000000;
  v8 = vnegq_f64(v6);
  this->_columns._singleRange = v8;
  this->_columns._multipleRanges = 0;
  TSUIndexSet::operator=();
  *&this->_rows |= 3u;
  this->_rows._singleRange = v8;
  this->_rows._multipleRanges = 0;
  TSUIndexSet::operator=();
  this->_tableUID = *a4;
  *&this->_spanType = 0;
  this->_mixedRowStartedWithPreserve = 0;
  if (TSUIndexSet::count(&this->_columns) == 1 && TSUIndexSet::firstIndex(&this->_columns) == 0x7FFF)
  {
    v7 = 1;
LABEL_7:
    this->_spanType = v7;
    goto LABEL_8;
  }

  if (TSUIndexSet::count(&this->_rows) == 1 && TSUIndexSet::firstIndex(&this->_rows) == 0x7FFFFFFF)
  {
    v7 = 2;
    goto LABEL_7;
  }

LABEL_8:
  this->_preserveRectangular = TSCECellTractRefCore::isRectangularRange(this);
}

BOOL TSCECellTractRefCore::isRectangularRange(TSCECellTractRefCore *this)
{
  spanType = this->_spanType;
  if (spanType == 1)
  {
    goto LABEL_7;
  }

  if ((*&this->_columns & 2) == 0 && (*&this->_columns & 1) == 0 && *(this->_columns._multipleRanges + 1) > 1uLL)
  {
    return 0;
  }

  if (spanType == 2)
  {
    return 1;
  }

LABEL_7:
  v2 = 1;
  if ((*&this->_rows & 2) == 0 && (*&this->_rows & 1) == 0)
  {
    return *(this->_rows._multipleRanges + 1) < 2uLL;
  }

  return v2;
}

void TSCECellTractRefCore::TSCECellTractRefCore(TSCECellTractRefCore *this, const TSUCellCoord *a2, const TSUCellCoord *a3)
{
  TSUIndexSet::TSUIndexSet(&this->_columns);
  TSUIndexSet::TSUIndexSet(v6 + 1);
  this->_tableUID._lower = 0;
  this->_tableUID._upper = 0;
  *&this->_spanType = 0x10000;
  this->_mixedRowStartedWithPreserve = 0;
  v11 = *a2;
  if ((*a2 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v12 = *a3;
    if ((*a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
    {
      v13 = (v11 & 0xFFFF00000000) != 0x7FFF00000000 || v11 == 0x7FFFFFFFLL;
      v14 = !v13;
      v15 = (v12 & 0xFFFF00000000) != 0x7FFF00000000 || v12 == 0x7FFFFFFFLL;
      v16 = !v15;
      if (v14 == v16)
      {
        v17 = v11 != 0x7FFFFFFFLL || (v11 & 0xFFFF00000000) == 0x7FFF00000000;
        v18 = !v17;
        v19 = v12 != 0x7FFFFFFFLL || (v12 & 0xFFFF00000000) == 0x7FFF00000000;
        v20 = v19;
        if (v18 != v20)
        {
          if (v14)
          {
            this->_spanType = 1;
            TSUIndexSet::removeAllIndexes(&this->_columns);
            TSUIndexSet::addIndex(&this->_columns);
            if ((*a3 & 0xFFFF00000000) != 0x7FFF00000000 || a3->row == 0x7FFFFFFFLL)
            {
              v25 = MEMORY[0x277D81150];
              v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &)", v23, v24);
              v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v28, v29);
              v31 = NSStringFromTSUCellCoord();
              v32 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v26, v30, 46, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v31, v32);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
            }
          }

          else
          {
            if (v16)
            {
              v38 = MEMORY[0x277D81150];
              v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &)", v9, v10);
              v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v41, v42);
              v44 = NSStringFromTSUCellCoord();
              v45 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v46, v39, v43, 48, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v44, v45);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
              column = a2->column;
              LOWORD(v52) = a3->column;
            }

            else
            {
              v53 = HIDWORD(v11);
              v52 = HIDWORD(v12);
              column = v53;
            }

            v85._begin = column;
            v85._end = v52;
            TSCECellTractRefCore::addColumnRange(this, &v85, v8, v9, v10);
          }

          v54 = *a2;
          if (a2->row != 0x7FFFFFFF || (v54 & 0xFFFF00000000) == 0x7FFF00000000)
          {
            v71 = *a3;
            if (a3->row == 0x7FFFFFFF && (v71 & 0xFFFF00000000) != 0x7FFF00000000)
            {
              v72 = MEMORY[0x277D81150];
              v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &)", v23, v24);
              v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v75, v76);
              v78 = NSStringFromTSUCellCoord();
              v79 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v80, v73, v77, 56, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v78, v79);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
              LODWORD(v54) = a2->row;
              LODWORD(v71) = a3->row;
            }

            v85._begin = v54;
            v85._end = v71;
            TSCECellTractRefCore::addRowRange(this, &v85, v22, v23, v24);
          }

          else
          {
            this->_spanType = 2;
            TSUIndexSet::removeAllIndexes(&this->_rows);
            TSUIndexSet::addIndex(&this->_rows);
            if (a3->row != 0x7FFFFFFF || (*a3 & 0xFFFF00000000) == 0x7FFF00000000)
            {
              v58 = MEMORY[0x277D81150];
              v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &)", v56, v57);
              v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v61, v62);
              v64 = NSStringFromTSUCellCoord();
              v65 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v66, v59, v63, 54, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v64, v65);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
            }
          }

          this->_preserveRectangular = 1;
        }
      }
    }
  }
}

void sub_2214A4C58(_Unwind_Exception *a1)
{
  TSUIndexSet::~TSUIndexSet(v1 + 1);
  TSUIndexSet::~TSUIndexSet(v1);
  _Unwind_Resume(a1);
}

TSCECellTractRefCore *TSCECellTractRefCore::setSpansAllColumns(TSCECellTractRefCore *this, int a2)
{
  v2 = this;
  if (a2)
  {
    this->_spanType = 1;
    TSUIndexSet::removeAllIndexes(&this->_columns);

    return TSUIndexSet::addIndex(&v2->_columns);
  }

  else if (this->_spanType == 1)
  {
    this->_spanType = 0;

    return TSUIndexSet::removeIndex(&this->_columns);
  }

  return this;
}

TSCECellTractRefCore *TSCECellTractRefCore::addColumnRange(TSCECellTractRefCore *this, TSUIndexRange *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = this;
  begin = a2->_begin;
  if (begin < 0 || a2->_end < 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], begin, "void TSCECellTractRefCore::addColumnRange(const TSUIndexRange &)", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v11, v12);
    v14 = TSUIndexRange::description(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v13, 210, 0, "addColumnRange: should only be used with absolute indexes: %@", v14);

    this = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    begin = a2->_begin;
  }

  if (begin <= 0x7FFFFFFF)
  {
    end = a2->_end;
    if (end == begin)
    {
      if (begin == 0x7FFF)
      {
        v6->_spanType = 1;
        TSUIndexSet::removeAllIndexes(&v6->_columns);
      }

      return TSUIndexSet::addIndex(&v6->_columns);
    }

    else if (end <= 0x7FFFFFFF)
    {

      return TSUIndexSet::addIndexesInRange(&v6->_columns, a2);
    }
  }

  return this;
}

TSCECellTractRefCore *TSCECellTractRefCore::setSpansAllRows(TSCECellTractRefCore *this, int a2)
{
  v2 = this;
  if (a2)
  {
    this->_spanType = 2;
    TSUIndexSet::removeAllIndexes(&this->_rows);

    return TSUIndexSet::addIndex(&v2->_rows);
  }

  else if (this->_spanType == 2)
  {
    this->_spanType = 0;
    p_rows = &this->_rows;

    return TSUIndexSet::removeIndex(p_rows);
  }

  return this;
}

TSCECellTractRefCore *TSCECellTractRefCore::addRowRange(TSCECellTractRefCore *this, TSUIndexRange *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = this;
  begin = a2->_begin;
  if (begin < 0 || a2->_end < 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], begin, "void TSCECellTractRefCore::addRowRange(const TSUIndexRange &)", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v11, v12);
    v14 = TSUIndexRange::description(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v13, 229, 0, "addRowRange: should only be used with absolute indexes: %@", v14);

    this = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    begin = a2->_begin;
  }

  if (begin <= 0x7FFFFFFF)
  {
    end = a2->_end;
    if (end == begin)
    {
      if (begin == 0x7FFFFFFF)
      {
        v6->_spanType = 2;
        TSUIndexSet::removeAllIndexes(&v6->_rows);
      }

      return TSUIndexSet::addIndex(&v6->_rows);
    }

    else if (end <= 0x7FFFFFFF)
    {

      return TSUIndexSet::addIndexesInRange(&v6->_rows, a2);
    }
  }

  return this;
}

void TSCECellTractRefCore::TSCECellTractRefCore(TSCECellTractRefCore *this, const TSUCellCoord *a2, const TSUCellCoord *a3, const TSKUIDStruct *a4)
{
  TSUIndexSet::TSUIndexSet(&this->_columns);
  TSUIndexSet::TSUIndexSet(v8 + 1);
  this->_tableUID = *a4;
  *&this->_spanType = 0x10000;
  this->_mixedRowStartedWithPreserve = 0;
  v13 = *a2;
  if ((*a2 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v14 = *a3;
    if ((*a3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
    {
      v15 = (v13 & 0xFFFF00000000) != 0x7FFF00000000 || v13 == 0x7FFFFFFFLL;
      v16 = !v15;
      v17 = (v14 & 0xFFFF00000000) != 0x7FFF00000000 || v14 == 0x7FFFFFFFLL;
      v18 = !v17;
      if (v16 == v18)
      {
        v19 = v13 != 0x7FFFFFFFLL || (v13 & 0xFFFF00000000) == 0x7FFF00000000;
        v20 = !v19;
        v21 = v14 != 0x7FFFFFFFLL || (v14 & 0xFFFF00000000) == 0x7FFF00000000;
        v22 = v21;
        if (v20 != v22)
        {
          if (v16)
          {
            this->_spanType = 1;
            TSUIndexSet::removeAllIndexes(&this->_columns);
            TSUIndexSet::addIndex(&this->_columns);
            if ((*a3 & 0xFFFF00000000) != 0x7FFF00000000 || a3->row == 0x7FFFFFFFLL)
            {
              v27 = MEMORY[0x277D81150];
              v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &, const TSKUIDStruct &)", v25, v26);
              v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v30, v31);
              v33 = NSStringFromTSUCellCoord();
              v34 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v35, v28, v32, 74, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v33, v34);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
            }
          }

          else
          {
            if (v18)
            {
              v40 = MEMORY[0x277D81150];
              v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &, const TSKUIDStruct &)", v11, v12);
              v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v43, v44);
              v46 = NSStringFromTSUCellCoord();
              v47 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v41, v45, 76, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v46, v47);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
              column = a2->column;
              LOWORD(v54) = a3->column;
            }

            else
            {
              v55 = HIDWORD(v13);
              v54 = HIDWORD(v14);
              column = v55;
            }

            v87._begin = column;
            v87._end = v54;
            TSCECellTractRefCore::addColumnRange(this, &v87, v10, v11, v12);
          }

          v56 = *a2;
          if (a2->row != 0x7FFFFFFF || (v56 & 0xFFFF00000000) == 0x7FFF00000000)
          {
            v73 = *a3;
            if (a3->row == 0x7FFFFFFF && (v73 & 0xFFFF00000000) != 0x7FFF00000000)
            {
              v74 = MEMORY[0x277D81150];
              v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &, const TSKUIDStruct &)", v25, v26);
              v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v77, v78);
              v80 = NSStringFromTSUCellCoord();
              v81 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v82, v75, v79, 84, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v80, v81);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
              LODWORD(v56) = a2->row;
              LODWORD(v73) = a3->row;
            }

            v87._begin = v56;
            v87._end = v73;
            TSCECellTractRefCore::addRowRange(this, &v87, v24, v25, v26);
          }

          else
          {
            this->_spanType = 2;
            TSUIndexSet::removeAllIndexes(&this->_rows);
            TSUIndexSet::addIndex(&this->_rows);
            if (a3->row != 0x7FFFFFFF || (*a3 & 0xFFFF00000000) == 0x7FFF00000000)
            {
              v60 = MEMORY[0x277D81150];
              v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "TSCECellTractRefCore::TSCECellTractRefCore(const TSUCellCoord &, const TSUCellCoord &, const TSKUIDStruct &)", v58, v59);
              v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v63, v64);
              v66 = NSStringFromTSUCellCoord();
              v67 = NSStringFromTSUCellCoord();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v68, v61, v65, 82, 0, "Both coords must be spanning in the same direction %{public}@ vs %{public}@", v66, v67);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
            }
          }

          this->_preserveRectangular = 1;
        }
      }
    }
  }
}

void sub_2214A55F4(_Unwind_Exception *a1)
{
  TSUIndexSet::~TSUIndexSet(v1 + 1);
  TSUIndexSet::~TSUIndexSet(v1);
  _Unwind_Resume(a1);
}

uint64_t TSCECellTractRefCore::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 81) != *(a2 + 81) || !TSUIndexSet::operator==())
  {
    return 0;
  }

  return TSUIndexSet::operator==();
}

BOOL TSCECellTractRefCore::isSingleCellOrSpanningRange(TSCECellTractRefCore *this)
{
  if (this->_spanType == 1)
  {
    return TSUIndexSet::count(&this->_rows) == 1;
  }

  if (TSUIndexSet::count(&this->_columns) != 1)
  {
    return 0;
  }

  if (this->_spanType != 2)
  {
    return TSUIndexSet::count(&this->_rows) == 1;
  }

  return 1;
}

BOOL TSCECellTractRefCore::isPreservedColumn(TSCECellTractRefCore *this, int a2, int a3)
{
  LODWORD(v4) = a2;
  v6 = this->_preserveFlags._flags & 5;
  if (v6 > 3)
  {
    if (v6 != 4)
    {
      return 1;
    }

    Index = TSUIndexSet::lastIndex(&this->_columns);
    result = Index == v4;
    if (!a3)
    {
      return result;
    }

    v4 = v4;
    v9 = TSUIndexSet::firstIndex(&this->_columns);
    return v9 != v4 && Index == v4;
  }

  if (!v6)
  {
    return 0;
  }

  Index = TSUIndexSet::firstIndex(&this->_columns);
  result = Index == v4;
  if ((a3 & 1) == 0)
  {
    v4 = v4;
    v9 = TSUIndexSet::lastIndex(&this->_columns);
    return v9 != v4 && Index == v4;
  }

  return result;
}

BOOL TSCECellTractRefCore::isPreservedRow(TSCECellTractRefCore *this, int a2, int a3)
{
  LODWORD(v4) = a2;
  v6 = (this->_preserveFlags._flags >> 1) & 5;
  if (v6 > 3)
  {
    if (v6 != 4)
    {
      return 1;
    }

    Index = TSUIndexSet::lastIndex(&this->_rows);
    result = Index == v4;
    if (!a3)
    {
      return result;
    }

    v4 = v4;
    v9 = TSUIndexSet::firstIndex(&this->_rows);
    return v9 != v4 && Index == v4;
  }

  if (!v6)
  {
    return 0;
  }

  Index = TSUIndexSet::firstIndex(&this->_rows);
  result = Index == v4;
  if ((a3 & 1) == 0)
  {
    v4 = v4;
    v9 = TSUIndexSet::lastIndex(&this->_rows);
    return v9 != v4 && Index == v4;
  }

  return result;
}

uint64_t TSCECellTractRefCore::preserveFlagsForCoord(TSCECellTractRefCore *this, const TSUCellCoord *a2, int a3)
{
  isPreservedColumn = TSCECellTractRefCore::isPreservedColumn(this, a2->column, a3);
  if (TSCECellTractRefCore::isPreservedRow(this, a2->row, a3))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return v7 | isPreservedColumn;
}

uint64_t TSCECellTractRefCore::addColumn(TSCECellTractRefCore *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = this;
  if (a2 == 0x7FFF)
  {
    this->_spanType = 1;
    TSUIndexSet::removeAllIndexes(&this->_columns);
    this = v5;
LABEL_7:

    return TSUIndexSet::addIndex(&this->_columns);
  }

  if (this->_spanType != 1)
  {
    goto LABEL_7;
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCECellTractRefCore::addColumn(TSUColumnIndex)", a4, a5);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 195, 0, "Cannot mix spanning and non-spanning column");

  v17 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v17, v13, v14, v15, v16);
}

uint64_t TSCECellTractRefCore::addRow(TSCECellTractRefCore *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    this->_spanType = 2;
    TSUIndexSet::removeAllIndexes(&this->_rows);
    p_rows = &this->_rows;
LABEL_8:

    return TSUIndexSet::addIndex(p_rows);
  }

  if (this->_spanType != 2)
  {
    p_rows = &this->_rows;
    goto LABEL_8;
  }

  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCECellTractRefCore::addRow(TSURowIndex)", a4, a5);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 205, 0, "Cannot mix spanning and non-spanning row");

  v18 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v18, v14, v15, v16, v17);
}

uint64_t TSCECellTractRefCore::removeColumnRange(TSCECellTractRefCore *this, const TSUIndexRange *a2)
{
  result = TSUIndexSet::removeIndexesInRange(&this->_columns, a2);
  if (this->_spanType == 1)
  {
    result = TSUIndexSet::count(&this->_columns);
    if (!result)
    {
      this->_spanType = 0;
    }
  }

  return result;
}

uint64_t TSCECellTractRefCore::removeRowRange(TSCECellTractRefCore *this, const TSUIndexRange *a2)
{
  result = TSUIndexSet::removeIndexesInRange(&this->_rows, a2);
  if (this->_spanType == 2)
  {
    result = TSUIndexSet::count(&this->_rows);
    if (!result)
    {
      this->_spanType = 0;
    }
  }

  return result;
}

uint64_t TSCECellTractRefCore::containsCoord(TSCECellTractRefCore *this, const TSUCellCoord *a2)
{
  v2 = this;
  spanType = this->_spanType;
  if (spanType == 1)
  {
    TSUIndexSet::containsIndex(&this->_rows);
  }

  else if (spanType == 2)
  {
    goto LABEL_7;
  }

  result = TSUIndexSet::containsIndex(&v2->_columns);
  if (!result)
  {
    return result;
  }

  this = &v2->_rows;
LABEL_7:

  return TSUIndexSet::containsIndex(&this->_columns);
}

uint64_t TSCECellTractRefCore::setColumns(TSCECellTractRefCore *this, TSUIndexSet *a2)
{
  spanType = this->_spanType;
  TSUIndexSet::operator=();
  result = TSUIndexSet::count(a2);
  if (spanType == 1)
  {
    if (result)
    {
      result = TSUIndexSet::count(a2);
      if (result != 1 || (result = TSUIndexSet::firstIndex(a2), result != 0x7FFF))
      {
        v6 = 0;
LABEL_9:
        this->_spanType = v6;
      }
    }
  }

  else if (result == 1)
  {
    result = TSUIndexSet::firstIndex(a2);
    if (result == 0x7FFF)
    {
      v6 = 1;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t TSCECellTractRefCore::setRows(TSCECellTractRefCore *this, TSUIndexSet *a2)
{
  spanType = this->_spanType;
  TSUIndexSet::operator=();
  result = TSUIndexSet::count(a2);
  if (spanType == 2)
  {
    if (result)
    {
      result = TSUIndexSet::count(a2);
      if (result != 1 || (result = TSUIndexSet::firstIndex(a2), result != 0x7FFFFFFF))
      {
        v6 = 0;
LABEL_9:
        this->_spanType = v6;
      }
    }
  }

  else if (result == 1)
  {
    result = TSUIndexSet::firstIndex(a2);
    if (result == 0x7FFFFFFF)
    {
      v6 = 2;
      goto LABEL_9;
    }
  }

  return result;
}

TSCECellTractRefCore *TSCECellTractRefCore::adjustIndexesBy(TSCECellTractRefCore *this, const TSUColumnRowOffset *a2)
{
  v3 = this;
  if (a2->var0 && this->_spanType != 1)
  {
    this = TSUIndexSet::shiftAllIndexesBy(&this->_columns);
  }

  if (a2->var1 && v3->_spanType != 2)
  {

    return TSUIndexSet::shiftAllIndexesBy(&v3->_rows);
  }

  return this;
}

unint64_t TSCECellTractRefCore::topLeft(TSCECellTractRefCore *this)
{
  if (this->_spanType == 1)
  {
    Index = 0x7FFF;
  }

  else
  {
    if (TSUIndexSet::count(&this->_columns))
    {
      Index = TSUIndexSet::firstIndex(&this->_columns);
    }

    else
    {
      Index = 0x7FFF;
    }

    if (this->_spanType == 2)
    {
      goto LABEL_9;
    }
  }

  if (!TSUIndexSet::count(&this->_rows))
  {
LABEL_9:
    v3 = 0x7FFFFFFFLL;
    return v3 | (Index << 32);
  }

  v3 = TSUIndexSet::firstIndex(&this->_rows);
  return v3 | (Index << 32);
}

unint64_t TSCECellTractRefCore::bottomRight(TSCECellTractRefCore *this)
{
  if (this->_spanType == 1)
  {
    Index = 0x7FFF;
  }

  else
  {
    if (TSUIndexSet::count(&this->_columns))
    {
      Index = TSUIndexSet::lastIndex(&this->_columns);
    }

    else
    {
      Index = 0x7FFF;
    }

    if (this->_spanType == 2)
    {
      goto LABEL_9;
    }
  }

  if (!TSUIndexSet::count(&this->_rows))
  {
LABEL_9:
    v3 = 0x7FFFFFFFLL;
    return v3 | (Index << 32);
  }

  v3 = TSUIndexSet::lastIndex(&this->_rows);
  return v3 | (Index << 32);
}

unint64_t TSCECellTractRefCore::setTopLeft(TSCECellTractRefCore *this, const TSUCellCoord *a2)
{
  result = TSCECellTractRefCore::topLeft(this);
  v8 = result;
  column = a2->column;
  if (HIDWORD(result) != column && this->_spanType != 1)
  {
    if (HIDWORD(result) <= column)
    {
      v11._begin = HIDWORD(result);
      v11._end = column - 1;
      result = TSCECellTractRefCore::removeColumnRange(this, &v11);
    }

    else
    {
      v11._begin = a2->column;
      v11._end = (HIDWORD(result) - 1);
      result = TSCECellTractRefCore::addColumnRange(this, &v11, v5, v6, v7);
    }
  }

  row = a2->row;
  if (a2->row != v8 && this->_spanType != 2)
  {
    if (row >= v8)
    {
      v11._begin = v8;
      v11._end = row - 1;
      return TSCECellTractRefCore::removeRowRange(this, &v11);
    }

    else
    {
      v11._begin = a2->row;
      v11._end = v8 - 1;
      return TSCECellTractRefCore::addRowRange(this, &v11, v5, v6, v7);
    }
  }

  return result;
}

unint64_t TSCECellTractRefCore::setBottomRight(TSCECellTractRefCore *this, const TSUCellCoord *a2)
{
  result = TSCECellTractRefCore::bottomRight(this);
  v8 = result;
  v9 = HIDWORD(result);
  column = a2->column;
  if (HIDWORD(result) != column && this->_spanType != 1)
  {
    if (v9 >= column)
    {
      v12._begin = column + 1;
      v12._end = HIDWORD(result);
      result = TSCECellTractRefCore::removeColumnRange(this, &v12);
    }

    else
    {
      v12._begin = v9 + 1;
      v12._end = column;
      result = TSCECellTractRefCore::addColumnRange(this, &v12, v5, v6, v7);
    }
  }

  row = a2->row;
  if (row != v8 && this->_spanType != 2)
  {
    if (row <= v8)
    {
      v12._begin = (row + 1);
      v12._end = v8;
      return TSCECellTractRefCore::removeRowRange(this, &v12);
    }

    else
    {
      v12._begin = v8 + 1;
      v12._end = row;
      return TSCECellTractRefCore::addRowRange(this, &v12, v5, v6, v7);
    }
  }

  return result;
}

uint64_t TSCECellTractRefCore::intersectWithCellRect(TSCECellTractRefCore *this, TSUCellRect *a2)
{
  spanType = this->_spanType;
  if (spanType == 1)
  {
    if ((TSUCellRect::spansAllColumns(a2) & 1) == 0)
    {
      TSUIndexSet::removeAllIndexes(&this->_columns);
      this->_spanType = 0;
      v5 = TSUCellRect::columns(a2);
      v7 = v6;
      v19.location = v5;
      v19.length = v7;
      TSUIndexRange::TSUIndexRange(&v18, v19);
      TSUIndexSet::addIndexesInRange(&this->_columns, &v18);
    }

    spanType = this->_spanType;
  }

  if (spanType == 2 && (TSUCellRect::spansAllRows(a2) & 1) == 0)
  {
    TSUIndexSet::removeAllIndexes(&this->_rows);
    this->_spanType = 0;
    v8 = TSUCellRect::rows(a2);
    v10 = v9;
    v20.location = v8;
    v20.length = v10;
    TSUIndexRange::TSUIndexRange(&v18, v20);
    TSUIndexSet::addIndexesInRange(&this->_rows, &v18);
  }

  if ((TSUCellRect::spansAllColumns(a2) & 1) == 0 && TSUIndexSet::count(&this->_columns))
  {
    if (TSUCellRect::firstColumn(a2))
    {
      Index = TSUIndexSet::firstIndex(&this->_columns);
      if (TSUCellRect::firstColumn(a2) > Index)
      {
        Column = TSUCellRect::firstColumn(a2);
        v18._begin = Index;
        v18._end = Column - 1;
        TSUIndexSet::removeIndexesInRange(&this->_columns, &v18);
      }
    }

    v13 = TSUIndexSet::lastIndex(&this->_columns);
    if (TSUCellRect::lastColumn(a2) < v13)
    {
      v18._begin = TSUCellRect::maxColumn(a2);
      v18._end = v13;
      TSUIndexSet::removeIndexesInRange(&this->_columns, &v18);
    }
  }

  result = TSUCellRect::spansAllRows(a2);
  if ((result & 1) == 0)
  {
    result = TSUIndexSet::count(&this->_rows);
    if (result)
    {
      if (TSUCellRect::firstRow(a2))
      {
        v15 = TSUIndexSet::firstIndex(&this->_rows);
        if (TSUCellRect::firstRow(a2) > v15)
        {
          Row = TSUCellRect::firstRow(a2);
          v18._begin = v15;
          v18._end = (Row - 1);
          TSUIndexSet::removeIndexesInRange(&this->_rows, &v18);
        }
      }

      v17 = TSUIndexSet::lastIndex(&this->_rows);
      result = TSUCellRect::lastRow(a2);
      if (result < v17)
      {
        v18._begin = TSUCellRect::maxRow(a2);
        v18._end = v17;
        return TSUIndexSet::removeIndexesInRange(&this->_rows, &v18);
      }
    }
  }

  return result;
}

uint64_t TSCECellTractRefCore::intersectWithCellRectIgnoringSpanning(TSCECellTractRefCore *this, TSUCellRect *a2)
{
  if (this->_spanType == 1)
  {
    goto LABEL_10;
  }

  result = TSUCellRect::spansAllColumns(a2);
  if ((result & 1) == 0)
  {
    result = TSUIndexSet::count(&this->_columns);
    if (result)
    {
      if (TSUCellRect::firstColumn(a2))
      {
        Index = TSUIndexSet::firstIndex(&this->_columns);
        if (TSUCellRect::firstColumn(a2) > Index)
        {
          v10._begin = Index;
          v10._end = TSUCellRect::firstColumn(a2) - 1;
          TSUIndexSet::removeIndexesInRange(&this->_columns, &v10);
        }
      }

      v6 = TSUIndexSet::lastIndex(&this->_columns);
      result = TSUCellRect::lastColumn(a2);
      if (result < v6)
      {
        v10._begin = TSUCellRect::maxColumn(a2);
        v10._end = v6;
        result = TSUIndexSet::removeIndexesInRange(&this->_columns, &v10);
      }
    }
  }

  if (this->_spanType != 2)
  {
LABEL_10:
    result = TSUCellRect::spansAllRows(a2);
    if ((result & 1) == 0)
    {
      result = TSUIndexSet::count(&this->_rows);
      if (result)
      {
        if (TSUCellRect::firstRow(a2))
        {
          v7 = TSUIndexSet::firstIndex(&this->_rows);
          if (TSUCellRect::firstRow(a2) > v7)
          {
            Row = TSUCellRect::firstRow(a2);
            v10._begin = v7;
            v10._end = (Row - 1);
            TSUIndexSet::removeIndexesInRange(&this->_rows, &v10);
          }
        }

        v9 = TSUIndexSet::lastIndex(&this->_rows);
        result = TSUCellRect::lastRow(a2);
        if (result < v9)
        {
          v10._begin = TSUCellRect::maxRow(a2);
          v10._end = v9;
          return TSUIndexSet::removeIndexesInRange(&this->_rows, &v10);
        }
      }
    }
  }

  return result;
}

unint64_t TSCECellTractRefCore::coordAtColumnOffset(TSCECellTractRefCore *this, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (this->_spanType == 1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellCoord TSCECellTractRefCore::coordAtColumnOffset(TSUColumnOrRowIndex, TSUColumnOrRowIndex) const", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 546, 0, "Not really expecting spanning CellTractRef to be used here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v22 = v6;
  }

  else
  {
    v23 = TSUIndexSet::nthIndex(&this->_columns);
    if (v23 == 0x80000000)
    {
      v22 = 0x7FFF;
    }

    else
    {
      v22 = v23;
    }
  }

  if (this->_spanType == 2)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSUCellCoord TSCECellTractRefCore::coordAtColumnOffset(TSUColumnOrRowIndex, TSUColumnOrRowIndex) const", v20, v21);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRefCore.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 554, 0, "Not really expecting spanning CellTractRef to be used here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  else
  {
    v35 = TSUIndexSet::nthIndex(&this->_rows);
    if (v35 == 0x80000000)
    {
      a3 = 0x7FFFFFFF;
    }

    else
    {
      a3 = v35;
    }
  }

  return a3 | (v22 << 32);
}

void TSCECellTractRefCore::foreachCellRect(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 80);
  if (v5 == 2)
  {
    v7[2] = MEMORY[0x277D85DD0];
    v7[3] = 3221225472;
    v7[4] = sub_2214A6AB4;
    v7[5] = &unk_278465E08;
    v6 = v8;
    v8[0] = v3;
    TSUIndexSet::enumerateRangesUsingBlock();
  }

  else if (v5 == 1)
  {
    v8[1] = MEMORY[0x277D85DD0];
    v8[2] = 3221225472;
    v8[3] = sub_2214A6A64;
    v8[4] = &unk_278465E08;
    v6 = &v9;
    v9 = v3;
    TSUIndexSet::enumerateRangesUsingBlock();
  }

  else
  {
    v7[1] = a1;
    v6 = v7;
    v7[0] = v3;
    TSUIndexSet::enumerateRangesUsingBlock();
  }
}

uint64_t sub_2214A6A64(uint64_t a1, uint64_t a2)
{
  v2 = ((*(a2 + 8) - *a2) << 32) + 0x100000001;
  v4[0] = *a2 | 0x7FFF00000000;
  v4[1] = v2;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v4);
}

uint64_t sub_2214A6AB4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[4];
  v5[0] = (v2 << 32) | 0x7FFFFFFF;
  v5[1] = (v3 - v2 + 1) | 0x100000000;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

void sub_2214A6B04(uint64_t a1)
{
  v1 = *(a1 + 32);
  TSUIndexSet::enumerateRangesUsingBlock();
}

uint64_t sub_2214A6BA4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = *v4 | (v2 << 32);
  v7 = ((a2[4] - v2 + 1) | ((*(v4 + 8) - *v4) << 32)) + 0x100000000;
  v9[0] = v6;
  v9[1] = v7;
  return (*(v3 + 16))(v3, v9);
}

uint64_t TSCECellTractRefCore::transpose(TSCECellTractRefCore *this)
{
  if (this->_spanType != 2 && TSUIndexSet::lastIndex(&this->_rows) > 999)
  {
    return 0;
  }

  *&v6 = this->_preserveFlags._flags;
  this->_preserveFlags._flags = TSUPreserveFlags::transpose(&v6);
  spanType = this->_spanType;
  if (spanType == 2)
  {
    this->_spanType = 0;
    TSUIndexSet::removeIndex(&this->_rows);
    TSUIndexSet::operator=();
    TSUIndexSet::TSUIndexSet(&v6);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v6);
    v3 = 1;
    this->_spanType = 1;
    TSUIndexSet::removeAllIndexes(&this->_columns);
    TSUIndexSet::addIndex(&this->_columns);
  }

  else
  {
    if (spanType == 1)
    {
      this->_spanType = 0;
      TSUIndexSet::removeIndex(&this->_columns);
      TSUIndexSet::operator=();
      TSUIndexSet::TSUIndexSet(&v6);
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v6);
      this->_spanType = 2;
      TSUIndexSet::removeAllIndexes(&this->_rows);
      TSUIndexSet::addIndex(&this->_rows);
    }

    else
    {
      *&v6 = -1;
      *&v4.f64[0] = 0x8000000080000000;
      *&v4.f64[1] = 0x8000000080000000;
      v6._singleRange = vnegq_f64(v4);
      v6._multipleRanges = 0;
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v6);
    }

    return 1;
  }

  return v3;
}

BOOL TSCECellTractRefCore::insertColumnGapsAtIndexes(TSCECellTractRefCore *this, NSIndexSet *a2)
{
  v3 = a2;
  Index = TSUIndexSet::lastIndex(&this->_columns);
  v12 = objc_msgSend_firstIndex(v3, v5, v6, v7, v8);
  if (Index >= v12)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2214A6E60;
    v14[3] = &unk_278465E50;
    v14[4] = this;
    objc_msgSend_enumerateIndexesUsingBlock_(v3, v9, v14, v10, v11);
  }

  return Index >= v12;
}

BOOL TSCECellTractRefCore::insertRowGapsAtIndexes(TSCECellTractRefCore *this, NSIndexSet *a2)
{
  v3 = a2;
  Index = TSUIndexSet::lastIndex(&this->_rows);
  v12 = objc_msgSend_firstIndex(v3, v5, v6, v7, v8);
  if (Index >= v12)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2214A6F38;
    v14[3] = &unk_278465E50;
    v14[4] = this;
    objc_msgSend_enumerateIndexesUsingBlock_(v3, v9, v14, v10, v11);
  }

  return Index >= v12;
}

id TSCECellTractRefCore::collapseOutColumnIndexes(TSCECellTractRefCore *this, NSIndexSet *a2)
{
  v3 = a2;
  v4 = MEMORY[0x223D9F7A0](&v12, v3);
  TSUIndexSet::intersectWithIndexes(v4, &this->_columns);
  MEMORY[0x223D9F7A0](&v11, v3);
  TSUIndexSet::removeIndexes(&this->_columns, &v11);
  TSUIndexSet::~TSUIndexSet(&v11);
  *&v11 = 0;
  v11._singleRange._begin = &v11;
  v11._singleRange._end = 0x2020000000;
  v11._multipleRanges = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214A70A4;
  v10[3] = &unk_278465E78;
  v10[4] = &v11;
  v10[5] = this;
  objc_msgSend_enumerateIndexesUsingBlock_(v3, v5, v10, v6, v7);
  v8 = TSUIndexSet::asNSIndexSet(&v12);
  _Block_object_dispose(&v11, 8);
  TSUIndexSet::~TSUIndexSet(&v12);

  return v8;
}

void sub_2214A705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TSUIndexSet::~TSUIndexSet(&a15);
  TSUIndexSet::~TSUIndexSet((v16 - 64));

  _Unwind_Resume(a1);
}

uint64_t sub_2214A70A4(uint64_t a1)
{
  result = TSUIndexSet::shiftIndexesAtAndAfterIndexBy(*(a1 + 40));
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

id TSCECellTractRefCore::collapseOutRowIndexes(TSCECellTractRefCore *this, NSIndexSet *a2)
{
  v3 = a2;
  v4 = MEMORY[0x223D9F7A0](&v12, v3);
  TSUIndexSet::intersectWithIndexes(v4, &this->_rows);
  MEMORY[0x223D9F7A0](&v11, v3);
  TSUIndexSet::removeIndexes(&this->_rows, &v11);
  TSUIndexSet::~TSUIndexSet(&v11);
  *&v11 = 0;
  v11._singleRange._begin = &v11;
  v11._singleRange._end = 0x2020000000;
  v11._multipleRanges = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214A7254;
  v10[3] = &unk_278465E78;
  v10[4] = &v11;
  v10[5] = this;
  objc_msgSend_enumerateIndexesUsingBlock_(v3, v5, v10, v6, v7);
  v8 = TSUIndexSet::asNSIndexSet(&v12);
  _Block_object_dispose(&v11, 8);
  TSUIndexSet::~TSUIndexSet(&v12);

  return v8;
}

void sub_2214A720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TSUIndexSet::~TSUIndexSet(&a15);
  TSUIndexSet::~TSUIndexSet((v16 - 64));

  _Unwind_Resume(a1);
}

uint64_t sub_2214A7254(uint64_t a1)
{
  result = TSUIndexSet::shiftIndexesAtAndAfterIndexBy((*(a1 + 40) + 32));
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

id TSCECellTractRefCore::fillInColumnGapsUsingIndexes(TSCECellTractRefCore *this, NSIndexSet *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_2214A7488;
  v26 = sub_2214A7498;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2214A7488;
  v20 = sub_2214A7498;
  v21 = 0;
  Index = TSUIndexSet::firstIndex(&this->_columns);
  v5 = TSUIndexSet::lastIndex(&this->_columns);
  v6 = TSUIndexSet::firstIndex(&this->_columns);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2214A74A0;
  v15[3] = &unk_278465EA0;
  v15[4] = &v22;
  v15[5] = &v16;
  v15[6] = this;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(v3, v7, Index, v5 - v6 + 1, 0, v15);
  v11 = v23[5];
  if (v11)
  {
    objc_msgSend_removeIndexes_(v11, v8, v17[5], v9, v10);
    v12 = v23[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void sub_2214A7450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2214A7488(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t sub_2214A74A0(void *a1, _NSRange a2)
{
  v3 = a1[6];
  TSUIndexRange::TSUIndexRange(&v15, a2);
  result = TSUIndexSet::countOfIndexesInRange(v3, &v15);
  if (v15._begin <= 0x7FFFFFFF && v15._end <= 0x7FFFFFFF && result < v15._end - v15._begin + 1)
  {
    v5 = *(*(a1[4] + 8) + 40);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(a1[4] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = TSUIndexSet::asNSIndexSet(v3);
      v10 = *(a1[5] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v5 = *(*(a1[4] + 8) + 40);
    }

    v12 = TSUIndexRange::asNSRange(&v15);
    objc_msgSend_addIndexesInRange_(v5, v13, v12, v13, v14);
    return TSUIndexSet::addIndexesInRange(v3, &v15);
  }

  return result;
}

id TSCECellTractRefCore::fillInRowGapsUsingIndexes(TSCECellTractRefCore *this, NSIndexSet *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_2214A7488;
  v26 = sub_2214A7498;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2214A7488;
  v20 = sub_2214A7498;
  v21 = 0;
  Index = TSUIndexSet::firstIndex(&this->_rows);
  v5 = TSUIndexSet::lastIndex(&this->_rows);
  v6 = TSUIndexSet::firstIndex(&this->_rows);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2214A7778;
  v15[3] = &unk_278465EA0;
  v15[4] = &v22;
  v15[5] = &v16;
  v15[6] = this;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(v3, v7, Index, v5 - v6 + 1, 0, v15);
  v11 = v23[5];
  if (v11)
  {
    objc_msgSend_removeIndexes_(v11, v8, v17[5], v9, v10);
    v12 = v23[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void sub_2214A7740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

unint64_t sub_2214A7778(void *a1, _NSRange a2)
{
  v3 = a1[6];
  TSUIndexRange::TSUIndexRange(&v15, a2);
  result = TSUIndexSet::countOfIndexesInRange(v3 + 1, &v15);
  if (v15._begin <= 0x7FFFFFFF && v15._end <= 0x7FFFFFFF && result < v15._end - v15._begin + 1)
  {
    v5 = *(*(a1[4] + 8) + 40);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(a1[4] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = TSUIndexSet::asNSIndexSet(v3 + 1);
      v10 = *(a1[5] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v5 = *(*(a1[4] + 8) + 40);
    }

    v12 = TSUIndexRange::asNSRange(&v15);
    objc_msgSend_addIndexesInRange_(v5, v13, v12, v13, v14);
    return TSUIndexSet::addIndexesInRange(v3 + 1, &v15);
  }

  return result;
}

void sub_2214A7870(double a1)
{
  if (a1 <= 0.0 || a1 >= 1.0)
  {
    sub_22137A674("ndtri", 1);
  }

  else
  {
    v2 = 1.0 - a1;
    if (a1 <= 0.864664717)
    {
      v2 = a1;
    }

    if (v2 <= 0.135335283)
    {
      v4 = sqrt(log(v2) * -2.0);
      log(v4);
      if (v4 >= 8.0)
      {
        v5 = &unk_27CFB4B68;
      }

      else
      {
        v5 = &unk_27CFB4AE0;
      }

      if (v4 >= 8.0)
      {
        v6 = &unk_27CFB4BB0;
      }

      else
      {
        v6 = &unk_27CFB4B28;
      }

      sub_2215C4B34(v5, 8, 1.0 / v4);
      sub_2215C4B50(v6, 8, 1.0 / v4);
    }

    else
    {
      v3 = v2 + -0.5;
      sub_2215C4B34(dbl_27CFB4A78, 4, v3 * v3);
      sub_2215C4B50(dbl_27CFB4AA0, 8, v3 * v3);
    }
  }
}

void sub_2214A7A00(uint64_t a1, _WORD *a2)
{
  *a1 |= *a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5 >= v4)
  {
    v7 = *(a1 + 8);
    v8 = (v5 - v7) >> 2;
    if ((v8 + 1) >> 62)
    {
      sub_22107C148();
    }

    v9 = v4 - v7;
    v10 = v9 >> 1;
    if (v9 >> 1 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_2214AA8C8(a1 + 8, v11);
    }

    v12 = (4 * v8);
    *v12 = *a2;
    v6 = 4 * v8 + 4;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 8);
    *(a1 + 8) = v15;
    *(a1 + 16) = v6;
    *(a1 + 24) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 16) = v6;
}

void sub_2214A7AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); v4 != i; v4 += 4)
  {
    v3[2](v3, v4, &v6);
    if (v6)
    {
      break;
    }
  }
}

void sub_2214A8458(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_2210BDEC0(va);
  sub_2214AA910(v14);

  _Unwind_Resume(a1);
}

void sub_2214A855C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_2214AA910(va);
  _Unwind_Resume(a1);
}

void sub_2214A88D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  sub_2210BDEC0(v17 - 128);

  _Unwind_Resume(a1);
}

void sub_2214A8CBC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2214A9224(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == *(a1 + 64))
  {
    v6 = *(a2 + 2);
    if (v6 <= *(a1 + 66))
    {
      v8 = objc_msgSend_groupValueAtLevel_(*(a1 + 32), a2, v6, a4, a5);
      if (v8)
      {
        objc_msgSend_p_setCell_groupingTypeCombo_groupingCellValue_toBeInGroup_(*(a1 + 40), v7, *(a1 + 48), *(a1 + 64), v8, *(a1 + 56));
      }
    }
  }
}

void sub_2214A947C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2214A9B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

void sub_2214AA590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

void sub_2214AA8C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2214AA910(uint64_t a1)
{
  sub_2214AA94C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2214AA94C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_2214AA998(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_2214AABF8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_2214AAC5C(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

TSCEASTRewriter *sub_2214AAEB4(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A8E20;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_2214AAF38(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6);
  }

  else
  {
    v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v7->var0.var0._tableUID._lower;
    upper = v7->var0.var0._tableUID._upper;
  }

  v45[0] = lower;
  v45[1] = upper;
  v10 = *(a1 + 200);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  LODWORD(v14) = objc_msgSend_isForTable_(v10, v11, &tableUID, v12, v13);
  v18 = objc_msgSend_isForTable_(*(a1 + 200), v15, v45, v16, v17);
  v23 = v18;
  if ((v14 & 1) != 0 || v18)
  {
    v24 = objc_msgSend_mergeOriginMovedInfo(*(a1 + 200), v19, v20, v21, v22);
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    (*(*a2 + 136))(&tableUID, a2, a1, &coordinate);
    v42 = tableUID._lower;
    if (v14)
    {
      v29 = objc_msgSend_mergeOriginsMap(v24, v25, v26, v27, v28);
      v14 = sub_221244A70(v29, &coordinate);
      objc_msgSend_mergeOriginsMap(v24, v30, v31, v32, v33);
      if (v14)
      {
        coordinate = TSUOffsetColumnRowCoordinate();
        LODWORD(v14) = 1;
      }
    }

    if (v23 && (v34 = objc_msgSend_mergeOriginsMap(v24, v25, v26, v27, v28), v35 = sub_221244A70(v34, &v42), objc_msgSend_mergeOriginsMap(v24, v36, v37, v38, v39), v35))
    {
      v42 = v35[3];
    }

    else if (!v14)
    {
LABEL_14:

      return a2;
    }

    v41 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    (*(*a2 + 144))(a2, v42, &v41, a1, &coordinate);
    goto LABEL_14;
  }

  return a2;
}

TSCEASTColonTractElement *sub_2214AB144(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  lower = 0;
  v53 = 0;
  if (objc_msgSend_hasTableUID(v7, v8, v9, v10, v11))
  {
    lower = objc_msgSend_tableUID(v7, v12, v13, v14, v15);
  }

  else
  {
    v17 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    upper = v17->var0.var0._tableUID._upper;
    lower = v17->var0.var0._tableUID._lower;
  }

  v53 = upper;
  v18 = *(a1 + 25);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v22 = objc_msgSend_isForTable_(v18, v19, &tableUID, v20, v21);
  if ((v22 | objc_msgSend_isForTable_(*(a1 + 25), v23, &lower, v24, v25)))
  {
    v30 = objc_msgSend_mergeOriginMovedInfo(*(a1 + 25), v26, v27, v28, v29);
    tableUID._lower = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v38 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v31, &coordinate, v32, v33);
    if (v22)
    {
      v39 = objc_msgSend_mergeOriginsMap(v30, v34, v35, v36, v37);
      coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
      v40 = sub_221244A70(v39, &coordinate);
      objc_msgSend_mergeOriginsMap(v30, v41, v42, v43, v44);
      if (v40)
      {
        tableUID._lower = TSUOffsetColumnRowCoordinate();
        v45 = [TSCERelativeTractRef alloc];
        v48 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v45, v46, v38, &tableUID, v47);
        TSCEASTColonTractElement::setRelativeTractRef(this, v48, v7, a1, 0);
      }
    }
  }

  return this;
}

void sub_2214AB348(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2214AB384(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2214AB81C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A8F88;
  *(v3 + 136) = 0;
  *(v3 + 96) = 1;
}

TSCEASTFunctionElement *sub_2214AB85C(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  v11 = 0;
  if (v7 == 304 || v7 == 306 || v7 == 373)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_hasAnyDateArgumentsToFunction_(TSCEFunctionSpec, v8, v7, v9, v10))
  {
    v11 = 1;
LABEL_6:
    *(a1 + 136) = v11;
  }

  return this;
}

void sub_2214AB8CC(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2214AC930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2214ACAF8(void **a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  v11 = 0;
  while (v11 < objc_msgSend_count(a1[4], v6, v7, v8, v9))
  {
    v16 = objc_msgSend_reorganizeValueAtIndex_(v5, v12, v11, v14, v15);
    v20 = objc_msgSend_reorganizeValueAtIndex_(v10, v17, v11, v18, v19);
    v24 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v21, v11, v22, v23);
    v29 = objc_msgSend_direction(v24, v25, v26, v27, v28);
    v30 = sub_2216AE13C(v16, v20, v29, a1[6]);

    ++v11;
    if (v30)
    {
      goto LABEL_8;
    }
  }

  v31 = objc_msgSend_columnOrRowIndex(v5, v12, v13, v14, v15);
  if (v31 < objc_msgSend_columnOrRowIndex(v10, v32, v33, v34, v35))
  {
    v30 = -1;
  }

  else
  {
    v30 = 1;
  }

LABEL_8:

  return v30;
}

__n128 sub_2214ACC20(__n128 *a1, __n128 *a2)
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

void sub_2214ACC44(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2214ACC5C(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      sub_22107C148();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_2210C836C((v3 + 6), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = v2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v3[6];
    v3[6] = v16;
    v3[7] = v6;
    v3[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 4;
  }

  v3[7] = v6;
}

void sub_2214AD050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a28, 8);
  sub_2210BDEC0(v32 + 48);

  _Unwind_Resume(a1);
}

void sub_2214AD0E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cellID(v3, v4, v5, v6, v7);
  v75[0] = v8;
  v13 = objc_msgSend_cell(v3, v9, v10, v11, v12);
  v74.origin = objc_msgSend_mergeRange(v3, v14, v15, v16, v17);
  v74.size = v18;
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v18, WORD2(v8), v19, v20);
  if (!v21)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v22 = [TSTTableSortTag alloc];
    v26 = objc_msgSend_initWithNumberOfSortRules_(v22, v23, (*(*(a1 + 64) + 8) - **(a1 + 64)) >> 2, v24, v25);
    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v27, v26, WORD2(v8), v28);
    v21 = v26;
    objc_msgSend_setColumnOrRowIndex_(v26, v29, *(*(*(a1 + 48) + 8) + 24), v30, v31);
  }

  if (TSUCellRect::isValid(&v74) && ((origin = v74.origin, v74.origin.row != v8) || ((v8 ^ *&v74.origin) & 0x101FFFF00000000) != 0))
  {
    v36 = objc_msgSend_cellAtCellID_(*(a1 + 40), v32, *&v74.origin, v34, v35);
    v41 = v36;
    if (v36)
    {
      v42 = v36;
    }

    else
    {
      v42 = objc_msgSend_newCell(*(a1 + 40), v37, v38, v39, v40);
    }

    v43 = v42;

    if (v43)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v43 = v13;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  v44 = MEMORY[0x277D81150];
  v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTTableInfo(Reorganize) sortTagsForSortingColumns:byRows:]_block_invoke", v34, v35);
  v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v47, v48);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 203, 0, "invalid nil value for '%{public}s'", "cell");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
LABEL_13:
  v58 = objc_msgSend_reorganizeValueForSorting(v43, v32, origin, v34, v35);
  if (!v58)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSTTableInfo(Reorganize) sortTagsForSortingColumns:byRows:]_block_invoke", v56, v57);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 206, 0, "invalid nil value for '%{public}s'", "reorganizeValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

  v70 = *(*(a1 + 56) + 8);
  v75[2] = v75;
  v71 = sub_2214AE9F4((v70 + 48), v75);
  objc_msgSend_setReorganizeValue_atIndex_(v21, v72, v58, *(v71 + 5), v73);
}

void sub_2214AD710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a31, 8);
  sub_2210BDEC0(v31 + 48);

  _Unwind_Resume(a1);
}

void sub_2214AD7AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cellID(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_cell(v3, v9, v10, v11, v12);
  v81.origin = objc_msgSend_mergeRange(v3, v14, v15, v16, v17);
  v81.size = v18;
  if (*(*(*(a1 + 64) + 8) + 24) == v8)
  {
    v22 = objc_msgSend_lastObject(*(a1 + 32), v18, v19, v20, v21);
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    v23 = [TSTTableSortTag alloc];
    v27 = objc_msgSend_initWithNumberOfSortRules_(v23, v24, (*(*(a1 + 88) + 8) - **(a1 + 88)) >> 2, v25, v26);
    objc_msgSend_addObject_(*(a1 + 32), v28, v27, v29, v30);
    objc_msgSend_setColumnOrRowIndex_(v27, v31, *(*(*(a1 + 72) + 8) + 24), v32, v33);
    *(*(*(a1 + 64) + 8) + 24) = v8;
    v22 = v27;
  }

  if (TSUCellRect::isValid(&v81) && ((origin = v81.origin, v81.origin.row != v8) || ((*&v81.origin ^ v8) & 0x101FFFF00000000) != 0))
  {
    v38 = objc_msgSend_cellAtCellID_(*(a1 + 40), v34, *&v81.origin, v36, v37);
    v43 = v38;
    if (v38)
    {
      v44 = v38;
    }

    else
    {
      v44 = objc_msgSend_newCell(*(a1 + 40), v39, v40, v41, v42);
    }

    v45 = v44;

    if (!v45)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v45 = v13;
    if (!v13)
    {
LABEL_13:
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableInfo(Reorganize) sortTagsForSortingRows:byColumns:]_block_invoke", v36, v37);
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v49, v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 262, 0, "invalid nil value for '%{public}s'", "cell");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }
  }

  if (*(a1 + 96) == 1)
  {
    if (objc_msgSend_isCategoryGroupValueCell_(*(a1 + 40), v34, v8, v36, v37))
    {
      v80[0] = objc_msgSend_rowUIDForRowIndex_(*(a1 + 48), v34, v8, v36, v37);
      v80[1] = v57;
      if ((objc_msgSend_isBlankGroupUid_(*(a1 + 56), v57, v80, v58, v59) & 1) != 0 || objc_msgSend_isErrorGroupUid_(*(a1 + 56), v34, v80, v36, v37))
      {
        objc_msgSend_clearValue(v45, v34, origin, v36, v37);
      }
    }
  }

  v63 = objc_msgSend_reorganizeValueForSorting(v45, v34, origin, v36, v37);
  if (!v63)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSTTableInfo(Reorganize) sortTagsForSortingRows:byColumns:]_block_invoke", v61, v62);
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v67, v68);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v70, v65, v69, 273, 0, "invalid nil value for '%{public}s'", "reorganizeValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  v75 = *(*(a1 + 80) + 8);
  v79 = WORD2(v8);
  v80[0] = &v79;
  v76 = sub_2214AEC28((v75 + 48), &v79);
  objc_msgSend_setReorganizeValue_atIndex_(v22, v77, v63, *(v76 + 5), v78);
}

void sub_2214ADEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  _Block_object_dispose((v30 - 200), 8);
  sub_22107C800(v30 - 152, *(v30 - 144));

  v32 = *(v30 - 128);
  if (v32)
  {
    *(v30 - 120) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_2214ADFB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cellID(v3, v4, v5, v6, v7);
  if (*(**(a1 + 40) + 4 * (v8 - *(a1 + 64))) != v8 - *(a1 + 64))
  {
    v13.coordinate = objc_msgSend_cellID(v3, v9, v10, v11, v12);
    v13._tableUID = *(a1 + 48);
    TSCECellRefSet::addCellRef((*(*(a1 + 32) + 8) + 48), &v13);
  }
}

void sub_2214AE048(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cellID(v3, v4, v5, v6, v7);
  if (*(**(a1 + 48) + 4 * (v8 - *(a1 + 72))) != v8 - *(a1 + 72))
  {
    v17 = objc_msgSend_formulaSpec(v3, v9, v10, v11, v12);
    if (v17)
    {
      v25.coordinate = objc_msgSend_cellID(v3, v13, v14, v15, v16);
      v25._tableUID = *(a1 + 56);
      TSCECellRefSet::removeCellRef((*(*(a1 + 40) + 8) + 48), &v25);
      v18 = *(a1 + 32);
      v24 = objc_msgSend_cellID(v3, v19, v20, v21, v22);
      objc_msgSend_replaceFormula_atCellCoord_inOwner_(v18, v23, v17, &v24, a1 + 56);
    }
  }
}

void sub_2214AE86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2214AE95C(__n128 *a1, __n128 *a2)
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

void sub_2214AE980(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void *sub_2214AE998(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result[4] + 8);
    v4 = *(v3 + 56);
    v5 = (*(v3 + 48) + 16 * a2);
    v6 = &v5[16 * a3];
    v7 = v4 - v6;
    if (v4 != v6)
    {
      result = memmove(v5, v6, v4 - v6);
    }

    *(v3 + 56) = &v5[v7];
  }

  return result;
}

uint64_t *sub_2214AE9F4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_2214AEC28(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_2214AEE5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221287954(result, a4);
  }

  return result;
}

void sub_2214AEEBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2214AEED8(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A90F8;
  *(a1 + 200) = v7;
  *(a1 + 208) = 0;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_2214AEF60(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6);
  }

  else
  {
    v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v7->var0.var0._tableUID._lower;
    upper = v7->var0.var0._tableUID._upper;
  }

  *&v42 = lower;
  *(&v42 + 1) = upper;
  v10 = *(a1 + 200);
  *&v39[0].row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  LOBYTE(v10) = objc_msgSend_isForTable_(v10, v11, v39, v12, v13);
  v17 = objc_msgSend_isForTable_(*(a1 + 200), v14, &v42, v15, v16);
  if (((v10 & 1) != 0 || v17) && !TSCEASTRelativeCoordRefElement::spansAllRows(a2, a1))
  {
    v21 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v18, v19, v20);
    v41._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v28 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, v21, &v41, v23, v24);
    v29 = *(a1 + 200);
    RelativeCellCoordinateFromAbsoluteCoordinates = v28;
    v38 = v42;
    if (v29)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(v29, v25, &RelativeCellCoordinateFromAbsoluteCoordinates, v26, v27);
    }

    else
    {
      v39[0] = 0;
      v39[1] = 0;
      v40 = 0;
    }

    v30 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v31 = v39[0];
    v32 = &v41;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&v30->var0.var1.coordinate, v31, v32, v33);
    TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, &RelativeCellCoordinateFromAbsoluteCoordinates, a1, v34, v35);
  }

  return a2;
}

TSCEASTColonTractElement *sub_2214AF0AC(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  lower = 0;
  v62 = 0;
  if (objc_msgSend_hasTableUID(v7, v8, v9, v10, v11))
  {
    lower = objc_msgSend_tableUID(v7, v12, v13, v14, v15);
  }

  else
  {
    v17 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    upper = v17->var0.var0._tableUID._upper;
    lower = v17->var0.var0._tableUID._lower;
  }

  v62 = upper;
  v18 = *(a1 + 25);
  *&v60 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  LODWORD(v18) = objc_msgSend_isForTable_(v18, v19, &v60, v20, v21);
  v29 = objc_msgSend_isForTable_(*(a1 + 25), v22, &lower, v23, v24);
  if (((v18 | v29) & 1) != 0 && (objc_msgSend_spansAllRows(v7, v25, v26, v27, v28) & 1) == 0)
  {
    *&v60 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v33 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v30, &v60, v31, v32);
    if (objc_msgSend_isValid(v33, v34, v35, v36, v37))
    {
      if (v29)
      {
        v42 = objc_msgSend_rows(v33, v38, v39, v40, v41);
        v43 = TSUIndexSet::asNSIndexSet(v42);
        v48 = objc_msgSend_shuffleMap(*(a1 + 25), v44, v45, v46, v47);
        objc_msgSend_applyMappingToIndexSet_(v48, v49, v43, v50, v51);

        MEMORY[0x223D9F7A0](&v60, v43);
        objc_msgSend_setRows_(v33, v52, &v60, v53, v54);
        TSUIndexSet::~TSUIndexSet(&v60);
      }

      v55 = [TSCERelativeTractRef alloc];
      *&v60 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
      v58 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v55, v56, v33, &v60, v57);
      TSCEASTColonTractElement::setRelativeTractRef(this, v58, v7, a1, 0);
    }
  }

  return this;
}

void sub_2214AF254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSUIndexSet::~TSUIndexSet(&a9);

  _Unwind_Resume(a1);
}

void sub_2214AF2C8(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2214AF304(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2214B074C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2214B160C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_2214B18CC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2214B3730(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_viewMap(*(a1 + 32), a2, a3, a4, a5);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v8, v9, a2, a3, v10);
  }

  else
  {
    *__p = 0u;
    v26 = 0u;
    *v24 = 0u;
  }

  v16 = objc_msgSend_baseMap(*(a1 + 32), v12, v13, v14, v15);
  v20 = objc_msgSend_cellRegionForUIDRange_(v16, v17, v24, v18, v19);

  objc_msgSend_addRegion_(*(a1 + 40), v21, v20, v22, v23);
  if (__p[1])
  {
    *&v26 = __p[1];
    operator delete(__p[1]);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }
}

void sub_2214B3A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214B3AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2214B3AC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_baseMap(*(a1 + 32), a2, a3, a4, a5);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v8, v9, a2, a3, v10);
  }

  else
  {
    *__p = 0u;
    v28 = 0u;
    *v26 = 0u;
  }

  v16 = objc_msgSend_viewMap(*(a1 + 32), v12, v13, v14, v15);
  v20 = objc_msgSend_cellRegionForUIDRange_(v16, v17, v26, v18, v19);

  v23 = objc_msgSend_region_addingRegion_(TSTCellRegion, v21, *(*(*(a1 + 40) + 8) + 40), v20, v22);
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  if (__p[1])
  {
    *&v28 = __p[1];
    operator delete(__p[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

uint64_t sub_2214B3D58(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_baseRowIndexForViewRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  v11 = objc_msgSend_baseRowIndexForViewRowIndex_(*(a1 + 32), v8, a3, v9, v10);
  v13 = *(a1 + 40);

  return MEMORY[0x2821F9670](v13, sel_swapIndex_withIndex_, v7, v11, v12);
}

uint64_t sub_2214B3F44(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 == *"category column" && a3[1] == *" column")
  {
    v8 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4, a5);
    v13 = objc_msgSend_newCell(v8, v9, v10, v11, v12);

    v18 = objc_msgSend_summaryModel(*(a1 + 32), v14, v15, v16, v17);
    v23 = objc_msgSend_summaryCellVendor(v18, v19, v20, v21, v22);
    objc_msgSend_getCell_atCellUID_(v23, v24, v13, a3, v25);

    v30 = objc_msgSend_valueType(v13, v26, v27, v28, v29);
  }

  else
  {
    v13 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
    v30 = objc_msgSend_cellValueTypeAtSummaryModelCoord_(v13, v31, *a2, v32, v33);
  }

  *(*(*(a1 + 40) + 8) + 24) = v30;

  return 0;
}

uint64_t sub_2214B4060(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4, a5);
  v12 = objc_msgSend_newCell(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_summaryModel(*(a1 + 32), v13, v14, v15, v16);
  v22 = objc_msgSend_summaryCellVendor(v17, v18, v19, v20, v21);
  sub_2211A8F64(v5, 1, v30);
  objc_msgSend_getCell_atCellUID_(v22, v23, v12, v30, v24);

  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_valueType(v12, v25, v26, v27, v28);
  return 0;
}

uint64_t sub_2214B4154(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_newCell(v6, v7, v8, v9, v10);

  v30 = 0u;
  v31 = 0u;
  v16 = *(a1 + 32);
  if (v16[1])
  {
    objc_msgSend_cellUIDForCellID_useCategoriesWildcards_(v16[1], v12, *(a1 + 48), 1, v15, v30, v31);
    v16 = *(a1 + 32);
  }

  v17 = objc_msgSend_summaryModel(v16, v12, v13, v14, v15, v30, v31);
  v22 = objc_msgSend_summaryCellVendor(v17, v18, v19, v20, v21);
  objc_msgSend_getCell_atCellUID_(v22, v23, v11, &v30, v24);

  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_valueType(v11, v25, v26, v27, v28);
  return 0;
}

void sub_2214B4814(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_2214B4834(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a2, 0, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_2214B488C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a2, 1, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_2214B48E4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cellStyleOfRowAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B4948(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyCellStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B4B60(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_2214B4B80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultTextStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a2, 0, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_2214B4BD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultTextStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a2, 1, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_2214B4C30(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_textStyleOfRowAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B4C94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyTextStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B5098(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_2214B50B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_headerColumnCellStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B5114(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cellStyleOfColumnAtIndex_isDefault_(*(a1[4] + 16), a2, a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B5178(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyCellStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B5344(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_2214B5364(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_headerColumnTextStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B53C0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_textStyleOfColumnAtIndex_isDefault_(*(a1[4] + 16), a2, a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B5424(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyTextStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2214B5648(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214B5668(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a4, 0, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 3;
  }

  return 0;
}

uint64_t sub_2214B56C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a2, 1, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 3;
  }

  return 0;
}

uint64_t sub_2214B5720(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23.origin = objc_msgSend_headerRowRange(*(a1[4] + 8), a2, a3, a4, a5);
  v23.size = v6;
  if (TSUCellRect::contains(&v23))
  {
    v11 = objc_msgSend_headerRowCellStyle(*(a1[4] + 16), v7, v8, v9, v10);
  }

  else
  {
    v23.origin = objc_msgSend_footerRowRange(*(a1[4] + 8), v7, v8, v9, v10);
    v23.size = v12;
    v17 = TSUCellRect::contains(&v23);
    v18 = *(a1[4] + 16);
    if (v17)
    {
      objc_msgSend_footerRowCellStyle(v18, v13, v14, v15, v16);
    }

    else
    {
      objc_msgSend_headerColumnCellStyle(v18, v13, v14, v15, v16);
    }
    v11 = ;
  }

  v19 = *(a1[5] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v11;

  v21 = a1[6];
  if (v21)
  {
    *v21 = 3;
  }

  return 0;
}

uint64_t sub_2214B5814(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(*(*(a1 + 32) + 16), a2, *a2, *(a1 + 56), *(a1 + 48));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

void sub_2214B5A3C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214B5A5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultTextStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a4, 0, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 3;
  }

  return 0;
}

uint64_t sub_2214B5AB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_p_defaultTextStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), a2, a2, 1, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = 3;
  }

  return 0;
}

uint64_t sub_2214B5B14(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23.origin = objc_msgSend_headerRowRange(*(a1[4] + 8), a2, a3, a4, a5);
  v23.size = v6;
  if (TSUCellRect::contains(&v23))
  {
    v11 = objc_msgSend_headerRowTextStyle(*(a1[4] + 16), v7, v8, v9, v10);
  }

  else
  {
    v23.origin = objc_msgSend_footerRowRange(*(a1[4] + 8), v7, v8, v9, v10);
    v23.size = v12;
    v17 = TSUCellRect::contains(&v23);
    v18 = *(a1[4] + 16);
    if (v17)
    {
      objc_msgSend_footerRowTextStyle(v18, v13, v14, v15, v16);
    }

    else
    {
      objc_msgSend_headerColumnTextStyle(v18, v13, v14, v15, v16);
    }
    v11 = ;
  }

  v19 = *(a1[5] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v11;

  v21 = a1[6];
  if (v21)
  {
    *v21 = 3;
  }

  return 0;
}

uint64_t sub_2214B5C08(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(*(*(a1 + 32) + 16), a2, *a2, *(a1 + 56), *(a1 + 48));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

void sub_2214B6120(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214B6140(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryModel(*(a1[4] + 8), a2, a3, a4, a5);
  v10 = objc_msgSend_cellStyleAtModelCellCoord_isDefault_(v7, v8, *a2, a1[6], v9);
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return 0;
}

uint64_t sub_2214B61C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4, a5);
  sub_2211A8F64(a2, 1, v26);
  v11 = objc_msgSend_cellAtCellUID_(v7, v8, v26, v9, v10);

  v18 = objc_msgSend_cellStyle(v11, v12, v13, v14, v15);
  v19 = v18;
  if (!v18)
  {
    v19 = objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), v16, a2, 1, v17);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v19);
  if (!v18)
  {
  }

  if (*(a1 + 48))
  {
    v24 = objc_msgSend_cellStyle(v11, v20, v21, v22, v23);
    **(a1 + 48) = v24 == 0;
  }

  return 0;
}

uint64_t sub_2214B62E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4, a5);
  v12 = objc_msgSend_viewMap(*(a1 + 32), v8, v9, v10, v11);
  objc_msgSend_rowUIDForRowIndex_(v12, v13, a2, v14, v15);
  TSTMakeCellUID(v28);
  v19 = objc_msgSend_cellAtCellUID_(v7, v16, v28, v17, v18);

  v25 = objc_msgSend_cellStyle(v19, v20, v21, v22, v23);
  v26 = v25;
  if (!v25)
  {
    v26 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(*(a1 + 32), v24, *(a1 + 48), 1, 0);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v26);
  if (!v25)
  {
  }

  return 0;
}

uint64_t sub_2214B6410(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cellStyleAtModelCellCoord_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 0;
}

void sub_2214B6630(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214B6650(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryModel(*(a1[4] + 8), a2, a3, a4, a5);
  v10 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(v7, v8, *a2, a1[6], v9);
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return 3;
}

uint64_t sub_2214B66D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4, a5);
  sub_2211A8F64(a2, 1, v26);
  v11 = objc_msgSend_cellAtCellUID_(v7, v8, v26, v9, v10);

  v18 = objc_msgSend_textStyle(v11, v12, v13, v14, v15);
  v19 = v18;
  if (!v18)
  {
    v19 = objc_msgSend_p_defaultTextStyleOfSummaryOrLabelRowAtLevel_isLabel_(*(a1 + 32), v16, a2, 1, v17);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v19);
  if (!v18)
  {
  }

  if (*(a1 + 48))
  {
    v24 = objc_msgSend_cellStyle(v11, v20, v21, v22, v23);
    **(a1 + 48) = v24 == 0;
  }

  return 0;
}

uint64_t sub_2214B67F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4, a5);
  v12 = objc_msgSend_viewMap(*(a1 + 32), v8, v9, v10, v11);
  objc_msgSend_rowUIDForRowIndex_(v12, v13, a2, v14, v15);
  TSTMakeCellUID(v28);
  v19 = objc_msgSend_cellAtCellUID_(v7, v16, v28, v17, v18);

  v25 = objc_msgSend_textStyle(v19, v20, v21, v22, v23);
  v26 = v25;
  if (!v25)
  {
    v26 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(*(a1 + 32), v24, *(a1 + 48), 1, 0);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v26);
  if (!v25)
  {
  }

  return 0;
}

uint64_t sub_2214B6920(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 0;
}

void sub_2214B6BDC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);

  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2214B6C10(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  v7 = a1[6];
  v6 = a1[7];
  v8 = *(a1[5] + 8);
  v10 = *(v8 + 40);
  obj = v5;
  objc_msgSend_p_defaultStyleHandlesOfSummaryOrLabelRowAtLevel_isLabel_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(v7, a2, a4, 0, v6, &obj, &v10);
  objc_storeStrong((v4 + 40), obj);
  objc_storeStrong((v8 + 40), v10);
  return 0;
}

uint64_t sub_2214B6C84(void *a1, const char *a2)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  v5 = a1[6];
  v4 = a1[7];
  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  obj = v3;
  objc_msgSend_p_defaultStyleHandlesOfSummaryOrLabelRowAtLevel_isLabel_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(v5, a2, a2, 1, v4, &obj, &v8);
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v6 + 40), v8);
  return 0;
}

uint64_t sub_2214B6CF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34.origin = objc_msgSend_headerRowRange(*(a1 + 56), a2, a3, a4, a5);
  v34.size = v6;
  if (TSUCellRect::contains(&v34))
  {
    v11 = *(a1 + 72);
    if (v11 == 1)
    {
      v12 = objc_msgSend_cellStyleHandleForKey_(*(a1 + 64), v7, 2, v9, v10);
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
    if (v11)
    {
    }

    v23 = *(a1 + 73);
    if (v23 == 1)
    {
      objc_msgSend_textStyleHandleForKey_(*(a1 + 64), v20, 2, v21, v22);
      v28 = LABEL_19:;
      goto LABEL_21;
    }
  }

  else
  {
    v34.origin = objc_msgSend_footerRowRange(*(*(a1 + 32) + 8), v7, v8, v9, v10);
    v34.size = v13;
    v14 = TSUCellRect::contains(&v34);
    v18 = *(a1 + 72);
    if (!v14)
    {
      if (*(a1 + 72))
      {
        v24 = objc_msgSend_cellStyleHandleForKey_(*(a1 + 64), v15, 3, v16, v17);
      }

      else
      {
        v24 = 0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v24);
      if (v18)
      {
      }

      v33 = *(a1 + 73);
      if (v33 == 1)
      {
        v28 = objc_msgSend_textStyleHandleForKey_(*(a1 + 64), v30, 3, v31, v32);
      }

      else
      {
        v28 = 0;
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v28);
      if (v33)
      {
        goto LABEL_22;
      }

      return 0;
    }

    if (*(a1 + 72))
    {
      v19 = objc_msgSend_cellStyleHandleForKey_(*(a1 + 64), v15, 4, v16, v17);
    }

    else
    {
      v19 = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v19);
    if (v18)
    {
    }

    v23 = *(a1 + 73);
    if (v23 == 1)
    {
      objc_msgSend_textStyleHandleForKey_(*(a1 + 64), v25, 4, v26, v27);
      goto LABEL_19;
    }
  }

  v28 = 0;
LABEL_21:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v28);
  if (v23)
  {
LABEL_22:
  }

  return 0;
}

uint64_t sub_2214B6ED8(uint64_t a1, const char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 64);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(a1 + 40) + 8);
  v10 = *(v8 + 40);
  obj = v5;
  objc_msgSend_defaultStyleHandlesAtBaseCellCoord_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(v7, a2, v2, v3, v6, &obj, &v10);
  objc_storeStrong((v4 + 40), obj);
  objc_storeStrong((v8 + 40), v10);
  return 0;
}

void sub_2214B7424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v15 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214B7458(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 == *"category column" && a3[1] == *" column")
  {
    v6 = objc_msgSend_newCell(*(*(a1 + 32) + 8), a2, a3, a4, a5);
    objc_msgSend_getCell_atCellID_suppressCellBorder_(*(a1 + 32), v7, v6, *(a1 + 48), 1);
    v12 = objc_msgSend_formattedValue(v6, v8, v9, v10, v11);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = *(*(a1 + 40) + 8);
    v6 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  return 0;
}

uint64_t sub_2214B751C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_newCell(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  objc_msgSend_getCell_atCellID_suppressCellBorder_(*(a1 + 32), v7, v6, *(a1 + 48), 1);
  v12 = objc_msgSend_formattedValue(v6, v8, v9, v10, v11);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  return 0;
}

uint64_t sub_2214B75A4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  return 0;
}

uint64_t sub_2214B75D0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringAtBaseCellCoord_optionalCell_(*(a1[4] + 16), a2, *a2, a1[5], a5);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 0;
}

uint64_t sub_2214B78C4(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != *"category column" || a3[1] != *" column")
  {
    v21 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
    Cell_atCellCoord = objc_msgSend_getCell_atCellCoord_(v21, v69, *(a1 + 40), *a2, v70);
    goto LABEL_28;
  }

  v8 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
  v13 = objc_msgSend_summaryCellVendor(v8, v9, v10, v11, v12);
  Cell_atCellUID = objc_msgSend_getCell_atCellUID_(v13, v14, *(a1 + 40), a3, v15);

  if (Cell_atCellUID)
  {
    objc_msgSend_clear(*(a1 + 40), v17, v18, v19, v20);
  }

  v21 = objc_msgSend_groupByForRows(*(a1 + 32), v17, v18, v19, v20);
  v24 = objc_msgSend_groupNodeForGroupUid_(v21, v22, a3[2], a3[3], v23);
  v29 = objc_msgSend_groupCellValue(v24, v25, v26, v27, v28);
  v38 = objc_msgSend_valueType(v29, v30, v31, v32, v33);
  if (v38 > 4)
  {
    if (v38 == 5)
    {
      v79 = *(a1 + 40);
      v80 = objc_msgSend_tsceValue(v29, v34, v35, v36, v37);
      objc_msgSend_applyFormulaResult_(v79, v81, v80, v82, v83);

      if (!objc_msgSend_currentFormatUsesAccountingStyle(*(a1 + 40), v84, v85, v86, v87))
      {
        goto LABEL_25;
      }

      v88 = objc_msgSend_currentFormat(*(a1 + 40), v61, v62, v63, v64);
      v66 = objc_msgSend_asCurrencyFormat(v88, v89, v90, v91, v92);

      if (v66)
      {
        v97 = objc_alloc(MEMORY[0x277D80640]);
        v102 = objc_msgSend_decimalPlaces(v66, v98, v99, v100, v101);
        v107 = objc_msgSend_negativeStyle(v66, v103, v104, v105, v106);
        v112 = objc_msgSend_showThousandsSeparator(v66, v108, v109, v110, v111);
        v117 = objc_msgSend_currencyCode(v66, v113, v114, v115, v116);
        v119 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v97, v118, v102, v107, v112, 0, v117);

        objc_msgSend_setCurrentFormat_isExplicit_(*(a1 + 40), v120, v119, 0, v121);
LABEL_22:

        goto LABEL_24;
      }

      v210 = objc_msgSend_formatType(*(a1 + 40), v93, v94, v95, v96);
      v215 = *(a1 + 40);
      if (v210 == 274)
      {
        v216 = objc_msgSend_currentFormat(*(a1 + 40), v211, v212, v213, v214);
        v221 = objc_msgSend_asCustomFormatWrapper(v216, v217, v218, v219, v220);
        v226 = objc_msgSend_locale(*(a1 + 40), v222, v223, v224, v225);
        v119 = objc_msgSend_nonCustomCurrencyFormatSansAccountingStyleForLocale_(v221, v227, v226, v228, v229);

        objc_msgSend_setCurrentFormat_isExplicit_(*(a1 + 40), v230, v119, 0, v231);
        goto LABEL_22;
      }

      v232 = MEMORY[0x277D80680];
      v119 = objc_msgSend_locale(*(a1 + 40), v211, v212, v213, v214);
      v164 = objc_msgSend_defaultFormatWithFormatType_locale_(v232, v233, 257, v119, v234);
      objc_msgSend_setCurrentFormat_isExplicit_(v215, v235, v164, 0, v236);
LABEL_21:

      goto LABEL_22;
    }

    if (v38 == 9)
    {
      objc_msgSend_setStringValue_(*(a1 + 40), v34, &stru_2834BADA0, v36, v37);
      v171 = *(a1 + 40);
      v66 = objc_msgSend_customFormatForErrorGroup(v21, v172, v173, v174, v175);
      objc_msgSend_setCurrentFormat_isExplicit_(v171, v176, v66, 0, v177);
      goto LABEL_24;
    }

    if (v38 != 10)
    {
      goto LABEL_19;
    }

LABEL_15:
    objc_msgSend_setStringValue_(*(a1 + 40), v34, &stru_2834BADA0, v36, v37);
    v72 = *(a1 + 40);
    v66 = objc_msgSend_customFormatForBlankGroup(v21, v73, v74, v75, v76);
    objc_msgSend_setCurrentFormat_isExplicit_(v72, v77, v66, 0, v78);
    goto LABEL_24;
  }

  if (!v38)
  {
    goto LABEL_15;
  }

  if (v38 == 2)
  {
    v126 = *(a1 + 40);
    v127 = objc_msgSend_tsceValue(v29, v34, v35, v36, v37);
    objc_msgSend_applyFormulaResult_(v126, v128, v127, v129, v130);

    v131 = *(*(a1 + 32) + 8);
    v136 = objc_msgSend_groupLevel(v24, v132, v133, v134, v135);
    v66 = objc_msgSend_columnDisplayNameForCategoryLevel_(v131, v137, v136, v138, v139);
    v144 = objc_msgSend_documentRoot(*(*(a1 + 32) + 8), v140, v141, v142, v143);
    v149 = objc_msgSend_documentLocale(v144, v145, v146, v147, v148);
    v119 = objc_msgSend_localizedTrueStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v150, v66, v149, v151);

    v156 = objc_msgSend_documentRoot(*(*(a1 + 32) + 8), v152, v153, v154, v155);
    v161 = objc_msgSend_documentLocale(v156, v157, v158, v159, v160);
    v164 = objc_msgSend_localizedFalseStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v162, v66, v161, v163);

    v165 = objc_alloc(MEMORY[0x277D80628]);
    v168 = objc_msgSend_initWithTrueString_falseString_(v165, v166, v119, v164, v167);
    objc_msgSend_setCurrentFormat_isExplicit_(*(a1 + 40), v169, v168, 0, v170);

    goto LABEL_21;
  }

  if (v38 != 3)
  {
LABEL_19:
    v122 = *(a1 + 40);
    v66 = objc_msgSend_tsceValue(v29, v34, v35, v36, v37);
    objc_msgSend_applyFormulaResult_(v122, v123, v66, v124, v125);
    goto LABEL_24;
  }

  v39 = *(a1 + 40);
  v40 = objc_msgSend_tsceValue(v29, v34, v35, v36, v37);
  objc_msgSend_applyFormulaResult_(v39, v41, v40, v42, v43);

  v48 = objc_msgSend_groupLevel(v24, v44, v45, v46, v47);
  v52 = objc_msgSend_groupingColumnAtCategoryLevel_(v21, v49, v48, v50, v51);
  v57 = objc_msgSend_groupingType(v52, v53, v54, v55, v56);
  LODWORD(v39) = objc_msgSend_groupingTypeIsAnyDateType_(TSTGroupingColumn, v58, v57, v59, v60);

  if (v39)
  {
    v65 = *(a1 + 40);
    v66 = objc_msgSend_format(v29, v61, v62, v63, v64);
    objc_msgSend_setCurrentFormat_isExplicit_(v65, v67, v66, 0, v68);
LABEL_24:
  }

LABEL_25:
  if (objc_msgSend_cellFlags(*(a1 + 40), v61, v62, v63, v64))
  {
    v182 = objc_msgSend_stringValue(*(a1 + 40), v178, v179, v180, v181);
    v185 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v182, v183, @"\n", @" ", v184);
    objc_msgSend_setStringValue_(*(a1 + 40), v186, v185, v187, v188);

    v193 = objc_msgSend_stringValue(*(a1 + 40), v189, v190, v191, v192);
    v196 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v193, v194, @"\u2028", @" ", v195);
    objc_msgSend_setStringValue_(*(a1 + 40), v197, v196, v198, v199);

    v200 = *(a1 + 40);
    v205 = objc_msgSend_cellFlags(v200, v201, v202, v203, v204);
    objc_msgSend_setCellFlags_(v200, v206, v205 & 0xFFFE, v207, v208);
  }

  Cell_atCellCoord = 0;
LABEL_28:

  return Cell_atCellCoord;
}

uint64_t sub_2214B7F98(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
  v13 = objc_msgSend_summaryCellVendor(v8, v9, v10, v11, v12);
  v14 = *(a1 + 40);
  sub_2211A8F64(a2, 1, v84);
  objc_msgSend_getCell_atCellUID_(v13, v15, v14, v84, v16);

  if (*a3 == *"category column" && a3[1] == *" column")
  {
    v21 = objc_msgSend_groupByForRows(*(a1 + 32), v17, v18, v19, v20);
    v25 = objc_msgSend_groupingColumnAtCategoryLevel_(v21, v22, a2, v23, v24);

    if (v25)
    {
      v30 = *(*(a1 + 32) + 8);
      v31 = objc_msgSend_columnUid(v25, v26, v27, v28, v29);
      v34 = objc_msgSend_columnIndexForColumnUID_(v30, v32, v31, v32, v33);
    }

    else
    {
      v34 = 0x7FFFLL;
    }

    v52 = *(a1 + 32);
    v53 = v52[1];
    v47 = objc_msgSend_documentRoot(v52, v26, v27, v28, v29);
    v58 = objc_msgSend_documentLocale(v47, v54, v55, v56, v57);
    v60 = objc_msgSend_localizedStringForKey_value_table_(v58, v59, @"Column %@", &stru_2834BADA0, @"TSTables");
    v63 = objc_msgSend_columnNameForColumnIndex_withFallbackFormat_(v53, v61, v34, v60, v62);

    v42 = v25;
    v51 = v63;
  }

  else
  {
    v35 = objc_msgSend_groupByForRows(*(a1 + 32), v17, v18, v19, v20);
    v37 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v35, v36, *a3, a3[1], a2);

    if (!v37)
    {
      return 0;
    }

    v42 = objc_msgSend_documentRoot(*(a1 + 32), v38, v39, v40, v41);
    v47 = objc_msgSend_documentLocale(v42, v43, v44, v45, v46);
    v51 = objc_msgSend_localizedLabelForAggType_(v47, v48, v37, v49, v50);
  }

  if (v51)
  {
    v68 = objc_msgSend_documentRoot(*(a1 + 32), v64, v65, v66, v67);
    v73 = objc_msgSend_documentLocale(v68, v69, v70, v71, v72);
    v75 = objc_msgSend_localizedStringForKey_value_table_(v73, v74, @"%@:", &stru_2834BADA0, @"TSTables");

    v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v76, v75, v77, v78, v51);
    objc_msgSend_setStringValue_(*(a1 + 40), v80, v79, v81, v82);
  }

  return 0;
}

uint64_t sub_2214B828C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0u;
  v18 = 0u;
  v6 = a1[4];
  if (v6[1])
  {
    objc_msgSend_cellUIDForCellID_useCategoriesWildcards_(v6[1], a2, a1[6], 1, a5, v17, v18);
    v6 = a1[4];
  }

  v7 = objc_msgSend_summaryModel(v6, a2, a3, a4, a5, v17, v18);
  v12 = objc_msgSend_summaryCellVendor(v7, v8, v9, v10, v11);
  Cell_atCellUID = objc_msgSend_getCell_atCellUID_(v12, v13, a1[5], &v17, v14);

  return Cell_atCellUID;
}

void sub_2214B9CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2214B9E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2214BA0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2214BA9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2214BAA1C(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  result = objc_msgSend_hasMergeRangeSpanningRowsForBaseCellRect_(*(a1 + 32), a2, a2, a3, a5);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2214BB50C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = objc_msgSend_viewCellRegionForBaseCellRect_(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_boundingCellRange(v27, v6, v7, v8, v9);
  if (objc_msgSend_isValidMergeRange_(*(a1 + 32), v11, v10, v11, v12))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCategoryTranslator enumerateMergesIntersectingCellRegion:usingBlock:]_block_invoke", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 2177, 0, "Unexpected view source merge region for categorized table: %@", v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }
}

uint64_t sub_2214BB7C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_viewCellRegionForBaseCellRect_(*(a1 + 32), a2, a2, a3, a5);
  if ((objc_msgSend_isRectangle(v5, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator mergeRangesIntersectingRange:]_block_invoke", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2198, 0, "found a disjoint merge range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_boundingViewCellRect(v5, v10, v11, v12, v13);

  return v25;
}

uint64_t sub_2214BBA3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_viewCellRegionForBaseCellRect_(*(a1 + 32), a2, a2, a3, a5);
  if ((objc_msgSend_isRectangle(v5, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator mergeRangesIntersectingCellRegion:]_block_invoke", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2220, 0, "found a disjoint merge range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_boundingViewCellRect(v5, v10, v11, v12, v13);

  return v25;
}

void sub_2214BBD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2214BBD54(__n128 *a1, __n128 *a2)
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

void sub_2214BBD78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2214BBD90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_mergeRangesAndCrumbsIntersectingBaseCellRect_(v6, a2, a2, a3, a5);
  }

  else
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
  }

  v7 = *(*(a1 + 40) + 8);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);
  v8 = (v7 + 48);
  if (v9 == v10)
  {
    if (v8 != &__p)
    {
      sub_2210BD068(v8, __p, v12, (v12 - __p) >> 4);
    }
  }

  else
  {
    sub_22133594C(v8, v9, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_2214BBE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2214BBE50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_viewCellRegionForBaseCellRect_(*(a1 + 32), a2, a2, a3, a5);
  if ((objc_msgSend_isRectangle(v5, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator mergeRangesAndCrumbsIntersectingRange:]_block_invoke_2", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2250, 0, "found a disjoint merge range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_boundingViewCellRect(v5, v10, v11, v12, v13);

  return v25;
}

uint64_t sub_2214BC210(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 == *"category column" && a3[1] == *" column")
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v7 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4, a5);
    v11 = objc_msgSend_cellAtCellUID_(v7, v8, a3, v9, v10);

    if (v11)
    {
      v16 = objc_msgSend_isEmptyForDataStore(v11, v12, v13, v14, v15) ^ 1;
    }

    else
    {
      v16 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v16;
  }

  return 0;
}

uint64_t sub_2214BC2E4(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 == *"category column" && a3[1] == *" column")
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v8 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4, a5);
    sub_2211A8F64(a2, 1, v21);
    v12 = objc_msgSend_cellAtCellUID_(v8, v9, v21, v10, v11);

    if (v12 && (objc_msgSend_isEmptyForDataStore(v12, v13, v14, v15, v16) & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v17 = objc_msgSend_groupByForRows(*(a1 + 32), v13, v14, v15, v16);
      v19 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v17, v18, *a3, a3[1], a2);

      *(*(*(a1 + 40) + 8) + 24) = v19 != 0;
    }
  }

  return 0;
}