pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable *pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::HdMeshEdgeIndexTable(pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable *this, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2)
{
  *this = a2;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18 + 1);
  v19[0] = &unk_2A207C8A8;
  v19[1] = a2;
  sub_29A1E21F4(&v20, &v18);
  sub_29A1E2240(&v21, &v18 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
  sub_29A1DE3A4(&v18);
  pxrInternal__aapl__pxrReserved__::HdMeshUtil::EnumerateEdges(v19, this + 4, v4);
  sub_29AC5CC00(v5, (*(this + 5) - *(this + 4)) >> 3);
  v6 = *(this + 4);
  if (*(this + 5) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v10 = (v6 + 8 * v8);
      LODWORD(v6) = *v10;
      v9 = v10[1];
      if (*v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v6;
      }

      if (v6 <= v9)
      {
        v6 = v9;
      }

      else
      {
        v6 = v6;
      }

      v12 = *(this + 7) + v7;
      *v12 = v11 | (v6 << 32);
      *(v12 + 8) = v8++;
      v6 = *(this + 4);
      v7 += 12;
    }

    while (v8 < (*(this + 5) - v6) >> 3);
  }

  v13 = *(this + 7);
  v14 = *(this + 8);
  v15 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2));
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_29AC5D23C(v13, v14, &v18, v16, 1);
  sub_29AC5D070(v19);
  return this;
}

void sub_29AC5CBCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC5D070(va);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 64) = v6;
    operator delete(v6);
  }

  sub_29B2C6264((v2 + 32), v3, v2);
  _Unwind_Resume(a1);
}

void sub_29AC5CC00(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29AC5D0C0(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::~HdMeshEdgeIndexTable(pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::GetVerticesForEdgeIndex(uint64_t a1, int a2, void *a3)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (((*(a1 + 40) - v3) >> 3) <= a2)
  {
    return 0;
  }

  *a3 = *(v3 + 8 * a2);
  return 1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::GetVerticesForEdgeIndices(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v9 = 0;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  do
  {
    v7 = *v4;
    if ((v7 & 0x80000000) == 0)
    {
      v8 = *(a1 + 32);
      if (v7 < ((*(a1 + 40) - v8) >> 3))
      {
        v14 = *(v8 + 8 * v7);
        sub_29AC5F138(&v15, &v14, &v14);
      }
    }

    ++v4;
  }

  while (v4 != v5);
  v9 = v16;
  if (!v16)
  {
    goto LABEL_11;
  }

  v10 = 0;
  v11 = v16;
  do
  {
    ++v10;
    v11 = *v11;
  }

  while (v11);
LABEL_12:
  sub_29AC5F378(a3, v9, 0, v10);
  v12 = *a3 != *(a3 + 8);
  sub_29A0EB570(&v15);
  return v12;
}

void sub_29AC5CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0EB570(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::GetEdgeIndices(uint64_t a1, unint64_t *a2, void *a3)
{
  v4 = *a2;
  v12 = v4;
  v13 = -1;
  if (v4 > SHIDWORD(v4))
  {
    v12 = __PAIR64__(v4, HIDWORD(v4));
  }

  v5 = sub_29AC5F4DC(*(a1 + 56), *(a1 + 64), &v12);
  if (v6 == v5)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;
  sub_29A0A171C(a3, 0xAAAAAAAAAAAAAAABLL * (v6 - v5));
  v10 = *a3;
  v11 = *a3;
  do
  {
    *v11++ = v8[2];
    v8 += 3;
  }

  while (v8 != v9);
  return v10 != a3[1];
}

double pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::CollectFaceEdgeIndices@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 24);
  if (v6 == (a1[2] - a1[1]) >> 2 || (result = sub_29B2C62A8(v22, a3), (v16 & 1) != 0))
  {
    v21 = 0;
    v7 = 0uLL;
    *__dst = 0u;
    v8 = *a2;
    if (*a2)
    {
      v9 = a2[4];
      v10 = &v9[v8];
      do
      {
        v11 = *v9;
        if ((v11 & 0x80000000) == 0 && v6 > v11)
        {
          v12 = *(*(*a1 + 56) + 4 * v11);
          if (v12 >= 1)
          {
            v13 = 8 * *(a1[1] + 4 * v11);
            do
            {
              v14 = a1[4];
              __p = 0;
              v18 = 0;
              v19 = 0;
              pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::GetEdgeIndices(a1, (v14 + v13), &__p);
              sub_29A3A2998(__dst, __dst[1], __p, v18, (v18 - __p) >> 2);
              if (__p)
              {
                v18 = __p;
                operator delete(__p);
              }

              v13 += 8;
              --v12;
            }

            while (v12);
          }
        }

        ++v9;
      }

      while (v9 != v10);
      v7 = *__dst;
    }

    sub_29AC5CFFC(a3, v7, *(&v7 + 1));
    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }
  }

  return result;
}

void sub_29AC5CFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC5CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A90D704(a1, a2, a3);
  return a1;
}

void sub_29AC5D048(uint64_t a1)
{
  v1 = sub_29AC5D070(a1);

  operator delete(v1);
}

uint64_t sub_29AC5D070(uint64_t a1)
{
  *a1 = &unk_2A207C8A8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

void sub_29AC5D0C0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      memset(*(a1 + 8), 255, v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_29A379A50(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[12 * v6];
    v13 = &v10[12 * v9];
    v14 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    memset(v12, 255, v14);
    v15 = &v12[v14];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    *(a1 + 16) = v13;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

uint64_t *sub_29AC5D23C(uint64_t *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 3);
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v68 = a2 - 3;
        v69 = *(a2 - 3);
        if (v69 >= *v11 && (v69 != *v11 || *(a2 - 2) >= *(v11 + 1)))
        {
          return result;
        }

        v139 = *(v11 + 2);
        v114 = *v11;
        v70 = *v68;
        *(v11 + 2) = *(a2 - 1);
        *v11 = v70;
LABEL_138:
        *v68 = v114;
        v68[2] = v139;
        return result;
      }

      goto LABEL_11;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      return sub_29AC5E074(v11, v11 + 3, v11 + 3, (a2 - 3));
    }

    if (v15 == 5)
    {
      result = sub_29AC5E074(v11, v11 + 3, v11 + 3, (v11 + 36));
      v73 = (a2 - 3);
      v74 = *(a2 - 3);
      v75 = *(v11 + 9);
      if (v74 < v75 || v74 == v75 && *(a2 - 2) < *(v11 + 10))
      {
        v76 = *(v11 + 11);
        v77 = *(v11 + 36);
        v78 = *(a2 - 1);
        *(v11 + 36) = *v73;
        *(v11 + 11) = v78;
        *v73 = v77;
        *(a2 - 1) = v76;
        v79 = *(v11 + 9);
        v80 = *(v11 + 6);
        if (v79 < v80 || v79 == v80 && *(v11 + 10) < *(v11 + 7))
        {
          v81 = *(v11 + 8);
          v82 = v11[3];
          v11[3] = *(v11 + 36);
          *(v11 + 8) = *(v11 + 11);
          *(v11 + 36) = v82;
          *(v11 + 11) = v81;
          v83 = *(v11 + 6);
          v84 = *(v11 + 3);
          if (v83 < v84 || v83 == v84 && *(v11 + 7) < *(v11 + 4))
          {
            v85 = *(v11 + 5);
            v86 = *(v11 + 12);
            *(v11 + 12) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v86;
            *(v11 + 8) = v85;
            v87 = *(v11 + 3);
            if (v87 < *v11 || v87 == *v11 && *(v11 + 4) < *(v11 + 1))
            {
              v141 = *(v11 + 2);
              v116 = *v11;
              *v11 = *(v11 + 12);
              *(v11 + 2) = *(v11 + 5);
              *(v11 + 12) = v116;
              *(v11 + 5) = v141;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v14 <= 287)
    {
      if (a5)
      {

        return sub_29AC5E2B0(v11, a2);
      }

      else
      {

        return sub_29AC5E390(v11, a2);
      }
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return sub_29AC5ECBC(v11, a2, a2, a3);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = v11 + 3 * (v15 >> 1);
    if (v14 >= 0x601)
    {
      v18 = *v17;
      if (*v17 < *v11 || v18 == *v11 && v17[1] < *(v11 + 1))
      {
        if (*v8 < v18 || *v8 == v18 && *(a2 - 2) < v17[1])
        {
          v118 = *(v11 + 2);
          v97 = *v11;
          v19 = *v8;
          *(v11 + 2) = *(a2 - 1);
          *v11 = v19;
        }

        else
        {
          v124 = *(v11 + 2);
          v103 = *v11;
          v26 = *v17;
          *(v11 + 2) = v17[2];
          *v11 = v26;
          v17[2] = v124;
          *v17 = v103;
          if (*v8 >= *v17 && (*v8 != *v17 || *(a2 - 2) >= v17[1]))
          {
            goto LABEL_35;
          }

          v118 = v17[2];
          v97 = *v17;
          v27 = *v8;
          v17[2] = *(a2 - 1);
          *v17 = v27;
        }

        *v8 = v97;
        *(a2 - 1) = v118;
        goto LABEL_35;
      }

      if (*v8 < v18 || *v8 == v18 && *(a2 - 2) < v17[1])
      {
        v120 = v17[2];
        v99 = *v17;
        v22 = *v8;
        v17[2] = *(a2 - 1);
        *v17 = v22;
        *v8 = v99;
        *(a2 - 1) = v120;
        if (*v17 < *v11 || *v17 == *v11 && v17[1] < *(v11 + 1))
        {
          v121 = *(v11 + 2);
          v100 = *v11;
          v23 = *v17;
          *(v11 + 2) = v17[2];
          *v11 = v23;
          v17[2] = v121;
          *v17 = v100;
        }
      }

LABEL_35:
      v28 = (v11 + 12);
      v29 = *(v11 + 3);
      v30 = v11 + 12 * v16;
      v33 = *(v30 - 3);
      v31 = v30 - 12;
      v32 = v33;
      v34 = v33 == v29;
      if (v33 < v29 || v34 && *(v31 + 1) < *(v11 + 4))
      {
        if (*v9 < v32 || *v9 == v32 && *(a2 - 5) < *(v31 + 1))
        {
          v35 = *(v11 + 5);
          v36 = *v28;
          v37 = *(a2 - 4);
          *v28 = *v9;
          *(v11 + 5) = v37;
          *v9 = v36;
          *(a2 - 4) = v35;
        }

        else
        {
          v43 = *v28;
          v128 = *(v11 + 5);
          v44 = *(v31 + 2);
          *v28 = *v31;
          *(v11 + 5) = v44;
          *(v31 + 2) = v128;
          *v31 = v43;
          if (*v9 < v43 || *v9 == v43 && *(a2 - 5) < *(v31 + 1))
          {
            v129 = *(v31 + 2);
            v106 = *v31;
            v45 = *v9;
            *(v31 + 2) = *(a2 - 4);
            *v31 = v45;
            *v9 = v106;
            *(a2 - 4) = v129;
          }
        }
      }

      else if (*v9 < v32 || *v9 == v32 && *(a2 - 5) < *(v31 + 1))
      {
        v125 = *(v31 + 2);
        v104 = *v31;
        v38 = *v9;
        *(v31 + 2) = *(a2 - 4);
        *v31 = v38;
        *v9 = v104;
        *(a2 - 4) = v125;
        if (*v31 < *v28 || *v31 == *v28 && *(v31 + 1) < *(v11 + 4))
        {
          v39 = *v28;
          v126 = *(v11 + 5);
          v40 = *(v31 + 2);
          *v28 = *v31;
          *(v11 + 5) = v40;
          *(v31 + 2) = v126;
          *v31 = v39;
        }
      }

      v46 = v11 + 3;
      v47 = *(v11 + 6);
      v48 = v11 + 12 * v16;
      v51 = *(v48 + 3);
      v49 = v48 + 12;
      v50 = v51;
      v52 = v51 == v47;
      if (v51 < v47 || v52 && *(v49 + 1) < *(v11 + 7))
      {
        if (*v10 < v50 || *v10 == v50 && *(a2 - 8) < *(v49 + 1))
        {
          v53 = *(v11 + 8);
          v54 = *v46;
          v55 = *(a2 - 7);
          *v46 = *v10;
          *(v11 + 8) = v55;
          *v10 = v54;
          *(a2 - 7) = v53;
        }

        else
        {
          v59 = *v46;
          v132 = *(v11 + 8);
          v60 = *(v49 + 2);
          *v46 = *v49;
          *(v11 + 8) = v60;
          *(v49 + 2) = v132;
          *v49 = v59;
          if (*v10 < v59 || *v10 == v59 && *(a2 - 8) < *(v49 + 1))
          {
            v133 = *(v49 + 2);
            v108 = *v49;
            v61 = *v10;
            *(v49 + 2) = *(a2 - 7);
            *v49 = v61;
            *v10 = v108;
            *(a2 - 7) = v133;
          }
        }
      }

      else if (*v10 < v50 || *v10 == v50 && *(a2 - 8) < *(v49 + 1))
      {
        v130 = *(v49 + 2);
        v107 = *v49;
        v56 = *v10;
        *(v49 + 2) = *(a2 - 7);
        *v49 = v56;
        *v10 = v107;
        *(a2 - 7) = v130;
        if (*v49 < *v46 || *v49 == *v46 && *(v49 + 1) < *(v11 + 7))
        {
          v57 = *v46;
          v131 = *(v11 + 8);
          v58 = *(v49 + 2);
          *v46 = *v49;
          *(v11 + 8) = v58;
          *(v49 + 2) = v131;
          *v49 = v57;
        }
      }

      v62 = *v17;
      if (*v17 >= *v31 && (v62 != *v31 || v17[1] >= *(v31 + 1)))
      {
        if (*v49 < v62 || *v49 == v62 && *(v49 + 1) < v17[1])
        {
          v135 = v17[2];
          v110 = *v17;
          *v17 = *v49;
          v17[2] = *(v49 + 2);
          *(v49 + 2) = v135;
          *v49 = v110;
          if (*v17 < *v31 || *v17 == *v31 && v17[1] < *(v31 + 1))
          {
            v136 = *(v31 + 2);
            v111 = *v31;
            *v31 = *v17;
            *(v31 + 2) = v17[2];
            v17[2] = v136;
            *v17 = v111;
          }
        }

        goto LABEL_113;
      }

      if (*v49 < v62 || *v49 == v62 && *(v49 + 1) < v17[1])
      {
        v134 = *(v31 + 2);
        v109 = *v31;
        *v31 = *v49;
        *(v31 + 2) = *(v49 + 2);
      }

      else
      {
        v137 = *(v31 + 2);
        v112 = *v31;
        *v31 = *v17;
        *(v31 + 2) = v17[2];
        v17[2] = v137;
        *v17 = v112;
        if (*v49 >= *v17 && (*v49 != *v17 || *(v49 + 1) >= v17[1]))
        {
          goto LABEL_113;
        }

        v134 = v17[2];
        v109 = *v17;
        *v17 = *v49;
        v17[2] = *(v49 + 2);
      }

      *(v49 + 2) = v134;
      *v49 = v109;
LABEL_113:
      v138 = *(v11 + 2);
      v113 = *v11;
      v63 = *v17;
      *(v11 + 2) = v17[2];
      *v11 = v63;
      v17[2] = v138;
      *v17 = v113;
      goto LABEL_114;
    }

    v20 = *v11;
    if (*v11 < *v17 || v20 == *v17 && *(v11 + 1) < v17[1])
    {
      if (*v8 < v20 || *v8 == v20 && *(a2 - 2) < *(v11 + 1))
      {
        v119 = v17[2];
        v98 = *v17;
        v21 = *v8;
        v17[2] = *(a2 - 1);
        *v17 = v21;
LABEL_48:
        *v8 = v98;
        *(a2 - 1) = v119;
        goto LABEL_114;
      }

      v127 = v17[2];
      v105 = *v17;
      v41 = *v11;
      v17[2] = *(v11 + 2);
      *v17 = v41;
      *(v11 + 2) = v127;
      *v11 = v105;
      if (*v8 < *v11 || *v8 == *v11 && *(a2 - 2) < *(v11 + 1))
      {
        v119 = *(v11 + 2);
        v98 = *v11;
        v42 = *v8;
        *(v11 + 2) = *(a2 - 1);
        *v11 = v42;
        goto LABEL_48;
      }
    }

    else if (*v8 < v20 || *v8 == v20 && *(a2 - 2) < *(v11 + 1))
    {
      v122 = *(v11 + 2);
      v101 = *v11;
      v24 = *v8;
      *(v11 + 2) = *(a2 - 1);
      *v11 = v24;
      *v8 = v101;
      *(a2 - 1) = v122;
      if (*v11 < *v17 || *v11 == *v17 && *(v11 + 1) < v17[1])
      {
        v123 = v17[2];
        v102 = *v17;
        v25 = *v11;
        v17[2] = *(v11 + 2);
        *v17 = v25;
        *(v11 + 2) = v123;
        *v11 = v102;
      }
    }

LABEL_114:
    if ((a5 & 1) == 0)
    {
      v64 = *(v11 - 3);
      if (v64 >= *v11 && (v64 != *v11 || *(v11 - 2) >= *(v11 + 1)))
      {
        result = sub_29AC5E41C(v11, a2);
        v11 = result;
        goto LABEL_133;
      }
    }

    v65 = sub_29AC5E598(v11, a2);
    if ((v66 & 1) == 0)
    {
      goto LABEL_131;
    }

    v67 = sub_29AC5E6F4(v11, v65);
    v11 = (v65 + 12);
    result = sub_29AC5E6F4((v65 + 12), a2);
    if (result)
    {
      a4 = -v13;
      a2 = v65;
      if (v67)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v67)
    {
LABEL_131:
      result = sub_29AC5D23C(v7, v65, a3, -v13, a5 & 1);
      v11 = (v65 + 12);
LABEL_133:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  v68 = v11 + 3;
  v71 = *(v11 + 3);
  if (v71 < *v11 || v71 == *v11 && *(v11 + 4) < *(v11 + 1))
  {
    if (*v8 < v71 || *v8 == v71 && *(a2 - 2) < *(v11 + 4))
    {
      v140 = *(v11 + 2);
      v115 = *v11;
      v72 = *v8;
      *(v11 + 2) = *(a2 - 1);
      *v11 = v72;
      *v8 = v115;
      *(a2 - 1) = v140;
    }

    else
    {
      v142 = *(v11 + 2);
      v117 = *v11;
      *v11 = *v68;
      *(v11 + 2) = *(v11 + 5);
      *v68 = v117;
      *(v11 + 5) = v142;
      v92 = *(v11 + 3);
      if (*v8 < v92 || *v8 == v92 && *(a2 - 2) < *(v11 + 4))
      {
        v93 = *(v11 + 5);
        v94 = *v68;
        v95 = *(a2 - 1);
        *v68 = *v8;
        *(v11 + 5) = v95;
        *v8 = v94;
        *(a2 - 1) = v93;
      }
    }
  }

  else if (*v8 < v71 || *v8 == v71 && *(a2 - 2) < *(v11 + 4))
  {
    v88 = *(v11 + 5);
    v89 = *v68;
    v90 = *(a2 - 1);
    *v68 = *v8;
    *(v11 + 5) = v90;
    *v8 = v89;
    *(a2 - 1) = v88;
    v91 = *(v11 + 3);
    if (v91 < *v11 || v91 == *v11 && *(v11 + 4) < *(v11 + 1))
    {
      v139 = *(v11 + 2);
      v114 = *v11;
      *v11 = *v68;
      *(v11 + 2) = *(v11 + 5);
      goto LABEL_138;
    }
  }

  return result;
}

uint64_t *sub_29AC5E074(uint64_t *result, int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  if (*a2 < *result || v4 == *result && a2[1] < *(result + 1))
  {
    if (*a3 < v4 || *a3 == v4 && *(a3 + 1) < a2[1])
    {
      v5 = *(result + 2);
      v6 = *result;
      v7 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v7;
    }

    else
    {
      v14 = *(result + 2);
      v15 = *result;
      v16 = a2[2];
      *result = *a2;
      *(result + 2) = v16;
      *a2 = v15;
      a2[2] = v14;
      if (*a3 >= v15 && (*a3 != v15 || *(a3 + 1) >= a2[1]))
      {
        goto LABEL_14;
      }

      v5 = a2[2];
      v6 = *a2;
      v17 = *(a3 + 2);
      *a2 = *a3;
      a2[2] = v17;
    }

    *a3 = v6;
    *(a3 + 2) = v5;
  }

  else if (*a3 < v4 || *a3 == v4 && *(a3 + 1) < a2[1])
  {
    v8 = a2[2];
    v9 = *a2;
    v10 = *(a3 + 2);
    *a2 = *a3;
    a2[2] = v10;
    *a3 = v9;
    *(a3 + 2) = v8;
    if (*a2 < *result || *a2 == *result && a2[1] < *(result + 1))
    {
      v11 = *(result + 2);
      v12 = *result;
      v13 = a2[2];
      *result = *a2;
      *(result + 2) = v13;
      *a2 = v12;
      a2[2] = v11;
    }
  }

LABEL_14:
  if (*a4 < *a3 || *a4 == *a3 && *(a4 + 1) < *(a3 + 1))
  {
    v18 = *(a3 + 2);
    v19 = *a3;
    v20 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v20;
    *a4 = v19;
    *(a4 + 2) = v18;
    if (*a3 < *a2 || *a3 == *a2 && *(a3 + 1) < a2[1])
    {
      v21 = a2[2];
      v22 = *a2;
      v23 = *(a3 + 2);
      *a2 = *a3;
      a2[2] = v23;
      *a3 = v22;
      *(a3 + 2) = v21;
      if (*a2 < *result || *a2 == *result && a2[1] < *(result + 1))
      {
        v24 = *(result + 2);
        v25 = *result;
        v26 = a2[2];
        *result = *a2;
        *(result + 2) = v26;
        *a2 = v25;
        a2[2] = v24;
      }
    }
  }

  return result;
}

_DWORD *sub_29AC5E2B0(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[3];
        if (v6 < *v5)
        {
          break;
        }

        if (v6 == *v5)
        {
          v7 = v5[4];
          if (v7 < v5[1])
          {
            goto LABEL_6;
          }
        }

LABEL_18:
        v2 = v4 + 3;
        v3 += 12;
        if (v4 + 3 == a2)
        {
          return result;
        }
      }

      v7 = v5[4];
LABEL_6:
      v8 = v5[5];
      *v4 = *v5;
      v4[2] = v5[2];
      v9 = result;
      if (v5 != result)
      {
        v10 = v3;
        do
        {
          v11 = result + v10;
          v12 = *(result + v10 - 12);
          if (v6 >= v12)
          {
            if (v6 != v12)
            {
              v9 = v5;
              goto LABEL_17;
            }

            v9 = (result + v10);
            if (v7 >= *(result + v10 - 8))
            {
              goto LABEL_17;
            }
          }

          v5 -= 3;
          *v11 = *(result + v10 - 12);
          *(v11 + 2) = *(result + v10 - 4);
          v10 -= 12;
        }

        while (v10);
        v9 = result;
      }

LABEL_17:
      *v9 = v6;
      v9[1] = v7;
      v9[2] = v8;
      goto LABEL_18;
    }
  }

  return result;
}

_DWORD *sub_29AC5E390(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 3 == a2)
      {
        return result;
      }

      v2 = result;
      result += 3;
      v3 = v2[3];
      if (v3 >= *v2)
      {
        if (v3 == *v2)
        {
          v4 = v2[4];
          if (v4 < v2[1])
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v4 = v2[4];
LABEL_5:
        v5 = v2[5];
        do
        {
          do
          {
            v6 = v2;
            *(v2 + 3) = *v2;
            v2[5] = v2[2];
            v7 = *(v2 - 3);
            v2 -= 3;
            v8 = v3 == v7;
          }

          while (v3 < v7);
        }

        while (v8 && v4 < *(v6 - 2));
        *v6 = v3;
        v6[1] = v4;
        v6[2] = v5;
      }
    }
  }

  return result;
}

_DWORD *sub_29AC5E41C(int *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 - 12);
  if (*a1 < v4 || v2 == v4 && v3 < *(a2 - 8))
  {
    i = a1 + 3;
    v6 = a1[3];
    if (v2 >= v6)
    {
      do
      {
        if (v2 == v6 && v3 < i[1])
        {
          break;
        }

        v7 = i[3];
        i += 3;
        v6 = v7;
      }

      while (v2 >= v7);
    }
  }

  else
  {
    for (i = a1 + 3; i < a2; i += 3)
    {
      if (v2 < *i || v2 == *i && v3 < i[1])
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 12; v2 < v4 || v2 == v4 && v3 < *(a2 + 4); a2 -= 12)
    {
      v8 = *(a2 - 12);
      v4 = v8;
    }
  }

  while (i < a2)
  {
    v17 = i[2];
    v16 = *i;
    v9 = *a2;
    i[2] = *(a2 + 8);
    *i = v9;
    *(a2 + 8) = v17;
    *a2 = v16;
    do
    {
      v11 = i[3];
      i += 3;
      v10 = v11;
    }

    while (v2 >= v11 && (v2 != v10 || v3 >= i[1]));
    do
    {
      do
      {
        v12 = *(a2 - 12);
        a2 -= 12;
        v13 = v2 == v12;
      }

      while (v2 < v12);
    }

    while (v13 && v3 < *(a2 + 4));
  }

  if (i - 3 != a1)
  {
    v14 = *(i - 3);
    a1[2] = *(i - 1);
    *a1 = v14;
  }

  *(i - 3) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t sub_29AC5E598(int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  while (1)
  {
    v5 = a1[v2 + 3];
    if (v5 >= v3 && (v5 != v3 || a1[v2 + 4] >= v4))
    {
      break;
    }

    v2 += 3;
  }

  v6 = &a1[v2 + 3];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 12);
      a2 -= 12;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 != v3 || *(a2 + 4) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 12);
        a2 -= 12;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 != v3)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 4) >= v4 && v6 < a2);
    }
  }

  v12 = v6;
  if (v6 < a2)
  {
    v13 = a2;
    do
    {
      v22 = *(v12 + 8);
      v21 = *v12;
      v14 = *v13;
      *(v12 + 8) = *(v13 + 8);
      *v12 = v14;
      *(v13 + 8) = v22;
      *v13 = v21;
      do
      {
        do
        {
          v15 = *(v12 + 12);
          v12 += 12;
          v16 = v15 == v3;
        }

        while (v15 < v3);
      }

      while (v16 && *(v12 + 4) < v4);
      do
      {
        v18 = *(v13 - 12);
        v13 -= 12;
        v17 = v18;
      }

      while (v18 >= v3 && (v17 != v3 || *(v13 + 4) >= v4));
    }

    while (v12 < v13);
  }

  if ((v12 - 12) != a1)
  {
    v19 = *(v12 - 12);
    a1[2] = *(v12 - 4);
    *a1 = v19;
  }

  *(v12 - 12) = v3;
  *(v12 - 8) = v4;
  return v12 - 12;
}

BOOL sub_29AC5E6F4(uint64_t *a1, char *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 12;
        v6 = *(a2 - 3);
        if (v6 >= *a1 && (v6 != *a1 || *(a2 - 2) >= *(a1 + 1)))
        {
          return 1;
        }

        v7 = *(a1 + 2);
        v8 = *a1;
        v9 = *(a2 - 1);
        *a1 = *v5;
        goto LABEL_6;
      }

      goto LABEL_18;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v5 = a1 + 12;
      v27 = *(a1 + 3);
      v28 = (a2 - 12);
      if (v27 < *a1 || v27 == *a1 && *(a1 + 4) < *(a1 + 1))
      {
        if (*v28 < v27 || *v28 == v27 && *(a2 - 2) < *(a1 + 4))
        {
          v29 = *(a1 + 2);
          v30 = *a1;
          v31 = *(a2 - 1);
          *a1 = *v28;
          *(a1 + 2) = v31;
          *v28 = v30;
          *(a2 - 1) = v29;
        }

        else
        {
          v47 = *(a1 + 2);
          v48 = *a1;
          *a1 = *v5;
          *(a1 + 2) = *(a1 + 5);
          *v5 = v48;
          *(a1 + 5) = v47;
          v49 = *(a1 + 3);
          if (*v28 < v49 || *v28 == v49 && *(a2 - 2) < *(a1 + 4))
          {
            v50 = *(a1 + 5);
            v51 = *v5;
            v52 = *(a2 - 1);
            *v5 = *v28;
            *(a1 + 5) = v52;
            *v28 = v51;
            *(a2 - 1) = v50;
          }
        }

        return 1;
      }

      if (*v28 < v27 || *v28 == v27 && *(a2 - 2) < *(a1 + 4))
      {
        v39 = *(a1 + 5);
        v40 = *v5;
        v41 = *(a2 - 1);
        *v5 = *v28;
        *(a1 + 5) = v41;
        *v28 = v40;
        *(a2 - 1) = v39;
        v42 = *(a1 + 3);
        if (v42 < *a1 || v42 == *a1 && *(a1 + 4) < *(a1 + 1))
        {
          v7 = *(a1 + 2);
          v8 = *a1;
          *a1 = *v5;
          v9 = *(a1 + 5);
LABEL_6:
          *(a1 + 2) = v9;
          *v5 = v8;
          *(v5 + 2) = v7;
          return 1;
        }
      }

      return 1;
    case 4:
      sub_29AC5E074(a1, a1 + 3, a1 + 3, (a2 - 12));
      return 1;
    case 5:
      sub_29AC5E074(a1, a1 + 3, a1 + 3, (a1 + 36));
      v10 = (a2 - 12);
      v11 = *(a2 - 3);
      v12 = *(a1 + 9);
      if (v11 < v12 || v11 == v12 && *(a2 - 2) < *(a1 + 10))
      {
        v13 = *(a1 + 11);
        v14 = *(a1 + 36);
        v15 = *(a2 - 1);
        *(a1 + 36) = *v10;
        *(a1 + 11) = v15;
        *v10 = v14;
        *(a2 - 1) = v13;
        v16 = *(a1 + 9);
        v17 = *(a1 + 6);
        if (v16 < v17 || v16 == v17 && *(a1 + 10) < *(a1 + 7))
        {
          v18 = *(a1 + 8);
          v19 = a1[3];
          a1[3] = *(a1 + 36);
          *(a1 + 8) = *(a1 + 11);
          *(a1 + 36) = v19;
          *(a1 + 11) = v18;
          v20 = *(a1 + 6);
          v21 = *(a1 + 3);
          if (v20 < v21 || v20 == v21 && *(a1 + 7) < *(a1 + 4))
          {
            v22 = *(a1 + 5);
            v23 = *(a1 + 12);
            *(a1 + 12) = a1[3];
            *(a1 + 5) = *(a1 + 8);
            a1[3] = v23;
            *(a1 + 8) = v22;
            v24 = *(a1 + 3);
            if (v24 < *a1 || v24 == *a1 && *(a1 + 4) < *(a1 + 1))
            {
              v25 = *(a1 + 2);
              v26 = *a1;
              *a1 = *(a1 + 12);
              *(a1 + 2) = *(a1 + 5);
              *(a1 + 12) = v26;
              *(a1 + 5) = v25;
            }
          }
        }
      }

      return 1;
  }

LABEL_18:
  v32 = (a1 + 3);
  v33 = *a1;
  v34 = (a1 + 12);
  v35 = *(a1 + 3);
  if (v35 < *a1 || v35 == v33 && *(a1 + 4) < *(a1 + 1))
  {
    v36 = *v32;
    if (*v32 < v35 || v36 == v35 && *(a1 + 7) < *(a1 + 4))
    {
      v37 = *(a1 + 2);
      v38 = *a1;
      *a1 = *v32;
      *(a1 + 2) = *(a1 + 8);
      *v32 = v38;
      *(a1 + 8) = v37;
    }

    else
    {
      v53 = *(a1 + 2);
      v54 = *a1;
      *a1 = *v34;
      *(a1 + 2) = *(a1 + 5);
      *v34 = v54;
      *(a1 + 5) = v53;
      v55 = *(a1 + 3);
      if (v36 < v55 || v36 == v55 && *(a1 + 7) < *(a1 + 4))
      {
        v56 = *(a1 + 5);
        v57 = *v34;
        *v34 = *v32;
        *(a1 + 5) = *(a1 + 8);
        *v32 = v57;
        *(a1 + 8) = v56;
      }
    }
  }

  else if (*v32 < v35 || *v32 == v35 && *(a1 + 7) < *(a1 + 4))
  {
    v43 = *(a1 + 5);
    v44 = *v34;
    *v34 = *v32;
    *(a1 + 5) = *(a1 + 8);
    *v32 = v44;
    *(a1 + 8) = v43;
    if (*v34 < v33 || *v34 == v33 && *(a1 + 4) < *(a1 + 1))
    {
      v45 = *(a1 + 2);
      v46 = *a1;
      *a1 = *v34;
      *(a1 + 2) = *(a1 + 5);
      *v34 = v46;
      *(a1 + 5) = v45;
    }
  }

  v58 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v59 = 0;
  v60 = 0;
  while (1)
  {
    v61 = *v58;
    if (*v58 < *v32)
    {
      break;
    }

    if (v61 == *v32)
    {
      v62 = *(v58 + 1);
      if (v62 < v32[1])
      {
        goto LABEL_76;
      }
    }

LABEL_87:
    v32 = v58;
    v59 += 12;
    v58 += 12;
    if (v58 == a2)
    {
      return 1;
    }
  }

  v62 = *(v58 + 1);
LABEL_76:
  v63 = *(v58 + 2);
  *v58 = *v32;
  *(v58 + 2) = v32[2];
  v64 = v59;
  do
  {
    v65 = *(a1 + v64 + 12);
    if (v61 >= v65)
    {
      if (v61 != v65)
      {
        v32 = (a1 + v64 + 24);
        goto LABEL_86;
      }

      if (v62 >= *(a1 + v64 + 16))
      {
        goto LABEL_86;
      }
    }

    v32 -= 3;
    *(a1 + v64 + 24) = *(a1 + v64 + 12);
    *(a1 + v64 + 32) = *(a1 + v64 + 20);
    v64 -= 12;
  }

  while (v64 != -24);
  v32 = a1;
LABEL_86:
  *v32 = v61;
  v32[1] = v62;
  v32[2] = v63;
  if (++v60 != 8)
  {
    goto LABEL_87;
  }

  return v58 + 12 == a2;
}

int *sub_29AC5ECBC(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    if (a2 - a1 >= 13)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[3 * v10];
      do
      {
        sub_29AC5EE88(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (*v13 < *a1 || *v13 == *a1 && v13[1] < a1[1])
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = a1[2];
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          a1[2] = v14;
          sub_29AC5EE88(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 13)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
      v18 = a2 - 3;
      do
      {
        v23 = *a1;
        v24 = a1[2];
        v19 = sub_29AC5EFF0(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v23;
          v19[2] = v24;
        }

        else
        {
          v20 = *v18;
          v19[2] = v18[2];
          *v19 = v20;
          *v18 = v23;
          v18[2] = v24;
          sub_29AC5F07C(a1, (v19 + 3), a4, 0xAAAAAAAAAAAAAAABLL * (v19 + 3 - a1));
        }

        v18 -= 3;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29AC5EE88(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 2)) | 1;
      v6 = (result + 12 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 2) + 2 < a3)
      {
        v7 = v6[3];
        if (*v6 < v7 || *v6 == v7 && v6[1] < v6[4])
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
        }
      }

      v8 = *a4;
      if (*v6 >= *a4)
      {
        if (*v6 == v8)
        {
          v9 = a4[1];
          if (v6[1] < v9)
          {
            return result;
          }
        }

        else
        {
          v9 = a4[1];
        }

        v10 = a4[2];
        v11 = v6[2];
        *a4 = *v6;
        a4[2] = v11;
        if (v4 >= v5)
        {
          while (1)
          {
            v13 = 2 * v5;
            v5 = (2 * v5) | 1;
            v12 = (result + 12 * v5);
            v14 = v13 + 2;
            if (v14 < a3)
            {
              v15 = v12[3];
              if (*v12 < v15 || *v12 == v15 && v12[1] < v12[4])
              {
                v12 += 3;
                v5 = v14;
              }
            }

            if (*v12 < v8 || *v12 == v8 && v12[1] < v9)
            {
              break;
            }

            v16 = *v12;
            v6[2] = v12[2];
            *v6 = v16;
            v6 = v12;
            if (v4 < v5)
            {
              goto LABEL_15;
            }
          }
        }

        v12 = v6;
LABEL_15:
        *v12 = v8;
        v12[1] = v9;
        v12[2] = v10;
      }
    }
  }

  return result;
}

_DWORD *sub_29AC5EFF0(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[3 * v3];
    result = v5 + 3;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[6];
      v9 = v5[3];
      if (v9 < v8 || v9 == v8 && v5[4] < v5[7])
      {
        result = v5 + 6;
        v3 = v7;
      }
    }

    v10 = *result;
    v4[2] = result[2];
    *v4 = v10;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_29AC5F07C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 12 * (v4 >> 1));
    v7 = *(a2 - 12);
    if (*v6 >= v7)
    {
      if (*v6 != v7)
      {
        return result;
      }

      v8 = *(a2 - 8);
      if (v6[1] >= v8)
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 8);
    }

    v9 = *(a2 - 4);
    v10 = v6[2];
    *(a2 - 12) = *v6;
    *(a2 - 4) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = (result + 12 * v5);
        if (*v11 >= v7 && (*v11 != v7 || v11[1] >= v8))
        {
          break;
        }

        v13 = *v11;
        v6[2] = v11[2];
        *v6 = v13;
        v6 = (result + 12 * v5);
        if (v12 <= 1)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = v6;
LABEL_13:
    *v11 = v7;
    v11[1] = v8;
    v11[2] = v9;
  }

  return result;
}

void *sub_29AC5F138(uint64_t a1, int *a2, void *a3)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 >= v7)
  {
    v8 = a2[1];
  }

  else
  {
    v8 = *a2;
  }

  if (v6 <= v7)
  {
    v9 = a2[1];
  }

  else
  {
    v9 = *a2;
  }

  v10 = ((v8 + v9 + (v8 + v9) * (v8 + v9)) >> 1) + v8;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v3 = ((v8 + v9 + (v8 + v9) * (v8 + v9)) >> 1) + v8;
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }
    }

    else
    {
      v3 = v10 & (v11 - 1);
    }

    v13 = *(*a1 + 8 * v3);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v10)
          {
            if (*(v14 + 4) == v6 && *(v14 + 5) == v7)
            {
              return v14;
            }
          }

          else
          {
            if (v12.u32[0] > 1uLL)
            {
              if (v15 >= v11)
              {
                v15 %= v11;
              }
            }

            else
            {
              v15 &= v11 - 1;
            }

            if (v15 != v3)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v14 = operator new(0x18uLL);
  *v14 = 0;
  v14[1] = v10;
  v14[2] = *a3;
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    *v14 = *v24;
LABEL_48:
    *v24 = v14;
    goto LABEL_49;
  }

  *v14 = *(a1 + 16);
  *(a1 + 16) = v14;
  *(v23 + 8 * v3) = a1 + 16;
  if (*v14)
  {
    v25 = *(*v14 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v25 >= v11)
      {
        v25 %= v11;
      }
    }

    else
    {
      v25 &= v11 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_48;
  }

LABEL_49:
  ++*(a1 + 24);
  return v14;
}

char *sub_29AC5F378(char **a1, void *a2, void *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (a4 > (v8 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A00C968(a1, v11);
    v12 = a1[1];
    while (v6 != a3)
    {
      *v12 = v6[2];
      v12 += 8;
      v6 = *v6;
    }

LABEL_28:
    a1[1] = v12;
    return result;
  }

  v13 = a1[1];
  v14 = (v13 - result) >> 3;
  if (v14 < a4)
  {
    if (v14 < 1)
    {
      v16 = a2;
    }

    else
    {
      v15 = v14 + 1;
      v16 = a2;
      do
      {
        v16 = *v16;
        --v15;
      }

      while (v15 > 1);
      if (v16 != a2)
      {
        do
        {
          *result = v6[2];
          result += 8;
          v6 = *v6;
        }

        while (v6 != v16);
        v13 = a1[1];
        v6 = v16;
      }
    }

    v17 = v13;
    if (v6 != a3)
    {
      v17 = v13;
      v18 = v13;
      do
      {
        *v18 = v16[2];
        v18 += 8;
        v16 = *v16;
        v17 += 8;
      }

      while (v16 != a3);
    }

    v12 = v17;
    goto LABEL_28;
  }

  while (v6 != a3)
  {
    *result = v6[2];
    result += 8;
    v6 = *v6;
  }

  a1[1] = result;
  return result;
}

_DWORD *sub_29AC5F4DC(_DWORD *a1, _DWORD *a2, int *a3)
{
  v3 = a1;
  if (a2 == a1)
  {
    return v3;
  }

  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  v5 = *a3;
  v6 = a3[1];
  v7 = a1;
  while (1)
  {
    v8 = v4 >> 1;
    v9 = &v7[3 * (v4 >> 1)];
    v10 = *v9;
    if (*v9 < v5)
    {
      goto LABEL_4;
    }

    if (v10 != v5)
    {
      break;
    }

    v11 = v9[1];
    if (v11 >= v6)
    {
      if (v6 >= v11)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_4:
    v7 = v9 + 3;
    v8 = v4 + ~v8;
LABEL_11:
    v4 = v8;
    if (!v8)
    {
      return v7;
    }
  }

  if (v5 < v10)
  {
LABEL_10:
    a2 = &v7[3 * (v4 >> 1)];
    goto LABEL_11;
  }

LABEL_13:
  v3 = &v7[3 * (v4 >> 1)];
  if (v4 != 1)
  {
    do
    {
      v12 = v8 >> 1;
      v13 = &v7[3 * (v8 >> 1)];
      if (*v13 < v5 || *v13 == v5 && v13[1] < v6)
      {
        v7 = v13 + 3;
        v12 = v8 + ~v12;
      }

      v8 = v12;
    }

    while (v12);
    v3 = v7;
  }

  sub_29AC5F5E8(v9 + 3, a2, a3);
  return v3;
}

_DWORD *sub_29AC5F5E8(_DWORD *result, _DWORD *a2, int *a3)
{
  if (a2 != result)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * (a2 - result);
    v4 = *a3;
    do
    {
      v5 = v3 >> 1;
      v6 = &result[3 * (v3 >> 1)];
      if (v4 >= *v6 && (v4 != *v6 || a3[1] >= v6[1]))
      {
        result = v6 + 3;
        v5 = v3 + ~v5;
      }

      v3 = v5;
    }

    while (v5);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::HdNoticeBatchingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::~HdNoticeBatchingSceneIndex(pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex *this)
{
  *this = &unk_2A207C8D8;
  v2 = (this + 120);
  v4 = (this + 152);
  sub_29AC60538(&v4);
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(v2, v3);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::~HdNoticeBatchingSceneIndex(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 16);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::_PrimsAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 144) == 1)
  {
    v5 = *(a1 + 152);
    v6 = *(a1 + 160);
    {
      v9 = v8;
      v10 = v8 + 8;
      v11 = v10;
      if (*(v9 + 67) >= 0x11u)
      {
        v11 = *v10;
      }

      v12 = &v11[4 * *(v9 + 66)];
      if (*(a3 + 260) >= 0x11u)
      {
        v13 = *a3;
      }

      else
      {
        v13 = a3;
      }

      v14 = v13 + 16 * *(a3 + 256);

      sub_29AC3B510(v10, v12, v13, v14);
    }

    else
    {
      v15 = operator new(0x110uLL);
      v16 = v15;
      *v15 = &unk_2A207C9C8;
      v15[33] = 0x1000000000;
      v17 = *(a1 + 168);
      if (v6 >= v17)
      {
        v19 = v6 - v5;
        v20 = (v6 - v5) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          sub_29A00C9A4();
        }

        v22 = v17 - v5;
        if (v22 >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        v32[4] = a1 + 152;
        if (v23)
        {
          v24 = sub_29A00C9BC(a1 + 152, v23);
          v5 = *(a1 + 152);
          v19 = *(a1 + 160) - v5;
          v25 = v19 >> 3;
        }

        else
        {
          v24 = 0;
          v25 = v20;
        }

        v26 = &v24[8 * v20];
        v27 = &v24[8 * v23];
        v28 = &v26[-8 * v25];
        *v26 = v16;
        v18 = v26 + 8;
        memcpy(v28, v5, v19);
        v29 = *(a1 + 152);
        *(a1 + 152) = v28;
        *(a1 + 160) = v18;
        v30 = *(a1 + 168);
        *(a1 + 168) = v27;
        v32[2] = v29;
        v32[3] = v30;
        v32[0] = v29;
        v32[1] = v29;
        sub_29AC6058C(v32);
      }

      else
      {
        *v6 = v15;
        v18 = v6 + 8;
      }

      *(a1 + 160) = v18;
      if (v16 + 1 != a3)
      {
        if (*(a3 + 260) >= 0x11u)
        {
          v31 = *a3;
        }

        else
        {
          v31 = a3;
        }

        sub_29AC60638(v16 + 2, v31, v31 + 16 * *(a3 + 256));
      }
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, a3);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::_PrimsRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 144) == 1)
  {
    v5 = *(a1 + 152);
    v6 = *(a1 + 160);
    {
      v9 = v8;
      v10 = v8 + 8;
      v11 = v10;
      if (*(v9 + 35) >= 0x11u)
      {
        v11 = *v10;
      }

      v12 = &v11[8 * *(v9 + 34)];
      if (*(a3 + 132) >= 0x11u)
      {
        v13 = *a3;
      }

      else
      {
        v13 = a3;
      }

      v14 = &v13[8 * *(a3 + 128)];

      sub_29AC5FD04(v10, v12, v13, v14);
    }

    else
    {
      v15 = operator new(0x90uLL);
      v16 = v15;
      *v15 = &unk_2A207C9E8;
      v15[17] = 0x1000000000;
      v17 = *(a1 + 168);
      if (v6 >= v17)
      {
        v19 = v6 - v5;
        v20 = (v6 - v5) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          sub_29A00C9A4();
        }

        v22 = v17 - v5;
        if (v22 >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        v32[4] = a1 + 152;
        if (v23)
        {
          v24 = sub_29A00C9BC(a1 + 152, v23);
          v5 = *(a1 + 152);
          v19 = *(a1 + 160) - v5;
          v25 = v19 >> 3;
        }

        else
        {
          v24 = 0;
          v25 = v20;
        }

        v26 = &v24[8 * v20];
        v27 = &v24[8 * v23];
        v28 = &v26[-8 * v25];
        *v26 = v16;
        v18 = v26 + 8;
        memcpy(v28, v5, v19);
        v29 = *(a1 + 152);
        *(a1 + 152) = v28;
        *(a1 + 160) = v18;
        v30 = *(a1 + 168);
        *(a1 + 168) = v27;
        v32[2] = v29;
        v32[3] = v30;
        v32[0] = v29;
        v32[1] = v29;
        sub_29AC6058C(v32);
      }

      else
      {
        *v6 = v15;
        v18 = v6 + 8;
      }

      *(a1 + 160) = v18;
      if (v16 + 1 != a3)
      {
        if (*(a3 + 132) >= 0x11u)
        {
          v31 = *a3;
        }

        else
        {
          v31 = a3;
        }

        sub_29AC60738(v16 + 2, v31, &v31[8 * *(a3 + 128)]);
      }
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
  }
}

void sub_29AC5FD04(char *a1, int *a2, _DWORD *a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 33);
  v9 = a1;
  if (v8 >= 0x11)
  {
    v9 = *a1;
  }

  v10 = *(a1 + 32);
  v11 = &v9[8 * v10];
  v12 = a4 - a3;
  v13 = v10 + ((a4 - a3) >> 3);
  v14 = v8 + (v8 >> 1);
  if (v14 + 1 > v13)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v10 + ((a4 - a3) >> 3);
  }

  if (v11 == a2)
  {
    if (v13 > v8)
    {
      sub_29AC3D990(a1, v15);
      LODWORD(v8) = *(a1 + 33);
    }

    v19 = a1;
    if (v8 >= 0x11)
    {
      v19 = *a1;
    }

    v20 = &v19[8 * *(a1 + 32)];
    goto LABEL_25;
  }

  if (v13 <= v8)
  {
    v21 = v12 >> 3;
    v22 = a1;
    if (v8 >= 0x11)
    {
      v22 = *a1;
    }

    v23 = &v22[8 * v10];
    v24 = (v23 - v6) >> 3;
    if (v24 >= v21)
    {
      v25 = v12 >> 3;
    }

    else
    {
      v25 = (v23 - v6) >> 3;
    }

    v26 = &v23[8 * (v21 - v25)];
    v27 = &v6[2 * (v24 - v25)];
    sub_29A7D8DFC(v27, v23, v26);
    sub_29AC606B4(&v31, v6, v27, v26);
    if (v25 >= 1)
    {
      do
      {
        sub_29A2258F0(v6, v5);
        sub_29A225948(v6 + 1, v5 + 1);
        v5 += 2;
        v6 += 2;
        --v25;
      }

      while (v25);
    }

    v28 = a1;
    if (*(a1 + 33) >= 0x11u)
    {
      v28 = *a1;
    }

    v20 = &v28[8 * *(a1 + 32)];
LABEL_25:
    sub_29A7D8ED8(v5, a4, v20);
    goto LABEL_32;
  }

  if (v8 > 0x10)
  {
    v29 = a2 - *a1;
    v16 = malloc(8 * v15);
    v17 = &v29[v16];
    v18 = *a1;
  }

  else
  {
    v16 = malloc(8 * v15);
    v17 = v16 + v6 - a1;
    v18 = a1;
  }

  sub_29A7D8DFC(v18, v6, v16);
  sub_29A7D8ED8(v5, a4, v17);
  v30 = a1;
  if (*(a1 + 33) >= 0x11u)
  {
    v30 = *a1;
  }

  sub_29A7D8DFC(v6, &v30[8 * *(a1 + 32)], &v17[v12]);
  sub_29AC26388(a1);
  if (*(a1 + 33) >= 0x11u)
  {
    free(*a1);
  }

  *a1 = v16;
  *(a1 + 33) = v15;
LABEL_32:
  *(a1 + 32) += v12 >> 3;
}

void pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 144) == 1)
  {
    v5 = *(a1 + 152);
    v6 = *(a1 + 160);
    {
      v9 = v8;
      v10 = v8 + 8;
      v11 = v10;
      if (*(v9 + 1859) >= 0x11u)
      {
        v11 = *v10;
      }

      v12 = &v11[58 * *(v9 + 1858)];
      if (*(a3 + 7428) >= 0x11u)
      {
        v13 = *a3;
      }

      else
      {
        v13 = a3;
      }

      v14 = &v13[116 * *(a3 + 7424)];

      sub_29AC12278(v10, v12, v13, v14);
    }

    else
    {
      v15 = operator new(0x1D10uLL);
      v16 = v15;
      *v15 = &unk_2A207CA08;
      v15[929] = 0x1000000000;
      v17 = *(a1 + 168);
      if (v6 >= v17)
      {
        v19 = v6 - v5;
        v20 = (v6 - v5) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          sub_29A00C9A4();
        }

        v22 = v17 - v5;
        if (v22 >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        v32[4] = a1 + 152;
        if (v23)
        {
          v24 = sub_29A00C9BC(a1 + 152, v23);
          v5 = *(a1 + 152);
          v19 = *(a1 + 160) - v5;
          v25 = v19 >> 3;
        }

        else
        {
          v24 = 0;
          v25 = v20;
        }

        v26 = &v24[8 * v20];
        v27 = &v24[8 * v23];
        v28 = &v26[-8 * v25];
        *v26 = v16;
        v18 = v26 + 8;
        memcpy(v28, v5, v19);
        v29 = *(a1 + 152);
        *(a1 + 152) = v28;
        *(a1 + 160) = v18;
        v30 = *(a1 + 168);
        *(a1 + 168) = v27;
        v32[2] = v29;
        v32[3] = v30;
        v32[0] = v29;
        v32[1] = v29;
        sub_29AC6058C(v32);
      }

      else
      {
        *v6 = v15;
        v18 = v6 + 8;
      }

      *(a1 + 160) = v18;
      if (v16 + 1 != a3)
      {
        if (*(a3 + 7428) >= 0x11u)
        {
          v31 = *a3;
        }

        else
        {
          v31 = a3;
        }

        sub_29AC607B4((v16 + 1), v31, v31 + 464 * *(a3 + 7424));
      }
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(a1, a3);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::SetBatchingEnabled(void *this, int a2)
{
  if (*(this + 144) != a2)
  {
    *(this + 144) = a2;
    if ((a2 & 1) == 0 && this[19] != this[20])
    {
      return pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::Flush(this);
    }
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::Flush(pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex *this)
{
  v2 = *(this + 19);
  v3 = *(this + 20);
  for (i = (this + 152); v2 != v3; ++v2)
  {
    v5 = *v2;
    if (*v2)
    {
      if (v6)
      {
        pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(this, v6 + 8);
      }

      else
      {
        if (v7)
        {
          pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(this, v7 + 8);
        }

        else
        {
          if (v8)
          {
            pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(this, v8 + 8);
          }
        }
      }
    }
  }

  return sub_29AC60304(i);
}

void *sub_29AC60304(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_29AC60370(uint64_t a1)
{
  *a1 = &unk_2A207C9C8;
  sub_29AC263E4((a1 + 8));
  return a1;
}

void sub_29AC603B4(void **a1)
{
  *a1 = &unk_2A207C9C8;
  sub_29AC263E4(a1 + 1);

  operator delete(a1);
}

uint64_t sub_29AC60408(uint64_t a1)
{
  *a1 = &unk_2A207C9E8;
  sub_29AC26348((a1 + 8));
  return a1;
}

void sub_29AC6044C(void **a1)
{
  *a1 = &unk_2A207C9E8;
  sub_29AC26348(a1 + 1);

  operator delete(a1);
}

void *sub_29AC604A0(void *a1)
{
  *a1 = &unk_2A207CA08;
  sub_29ABD3844((a1 + 1));
  return a1;
}

void sub_29AC604E4(void *a1)
{
  *a1 = &unk_2A207CA08;
  sub_29ABD3844((a1 + 1));

  operator delete(a1);
}

void sub_29AC60538(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AC60304(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29AC6058C(uint64_t a1)
{
  sub_29AC605C4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AC605C4(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29AC60638(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_29AC26424(a1);
  a1[64] = 0;
  v6 = (a3 - a2) >> 4;
  v7 = a1[65];
  if (v6 > v7)
  {
    sub_29AC3D6F0(a1, v6);
    LODWORD(v7) = a1[65];
  }

  v8 = a1;
  if (v7 >= 0x11)
  {
    v8 = *a1;
  }

  result = sub_29AC3D7EC(a2, a3, v8);
  a1[64] = (a3 - a2) >> 4;
  return result;
}

uint64_t sub_29AC606B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      sub_29A2258F0((a4 - 8), (v7 - 8));
      sub_29A225948((a4 - 4), (v7 - 4));
      v7 -= 8;
      a4 -= 8;
    }

    while (v7 != a2);
  }

  return a3;
}

_DWORD *sub_29AC60738(_DWORD *a1, char *a2, char *a3)
{
  sub_29AC26388(a1);
  a1[32] = 0;
  v6 = (a3 - a2) >> 3;
  v7 = a1[33];
  if (v6 > v7)
  {
    sub_29AC3D990(a1, v6);
    LODWORD(v7) = a1[33];
  }

  v8 = a1;
  if (v7 >= 0x11)
  {
    v8 = *a1;
  }

  result = sub_29A7D8ED8(a2, a3, v8);
  a1[32] = (a3 - a2) >> 3;
  return result;
}

uint64_t sub_29AC607B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29ABD3884(a1);
  *(a1 + 7424) = 0;
  v6 = 0x34F72C234F72C235 * ((a3 - a2) >> 4);
  v7 = *(a1 + 7428);
  if (v6 > v7)
  {
    sub_29AC14D54(a1, 0x34F72C234F72C235 * ((a3 - a2) >> 4));
    LODWORD(v7) = *(a1 + 7428);
  }

  v8 = a1;
  if (v7 >= 0x11)
  {
    v8 = *a1;
  }

  result = sub_29ABD3720(a2, a3, v8);
  *(a1 + 7424) = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType::~HdNurbsCurvesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType::HdNurbsCurvesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "nurbsCurves", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "curveVertexCounts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "order", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "knots", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "ranges", 0);
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

void sub_29AC60AB0(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetCurveVertexCounts(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetOrder(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetKnots(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC60D84(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC60D84(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC615C4(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetRanges(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC60EB0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC60EB0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC61654(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    if (!v12)
    {
      v12 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    }

    v9 = v39;
    v10 = v40 + 1;
    sub_29A166F2C(v40, v12 + 1);
    v14 = *a1;
    v13 = a1[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(&v38 + 1);
    *&v38 = v14;
    *(&v38 + 1) = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*a2)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    if (!v17)
    {
      v17 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    }

    sub_29A166F2C(v10, v17 + 2);
    ++v16;
    v19 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v9 + 1);
    *v9 = v19;
    *(v9 + 1) = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  if (*a3)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    if (!v21)
    {
      v21 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    }

    sub_29A166F2C(v40 + v16, v21 + 3);
    v22 = v16 + 1;
    v23 = &v39[v16 - 1];
    v25 = *a3;
    v24 = a3[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v23[1];
    *v23 = v25;
    v23[1] = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  else
  {
    v22 = v16;
  }

  if (*a4)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    }

    sub_29A166F2C(v40 + v22, v27 + 4);
    v28 = v22 + 1;
    v29 = &v39[v22 - 1];
    v31 = *a4;
    v30 = a4[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v28, v40, &v38, &v37);
  *a5 = v37;
  for (i = 56; i != -8; i -= 16)
  {
    v34 = *(&v39[-1] + i);
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
    v36 = *(v40 + j);
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC611C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = 56;
  while (1)
  {
    v21 = *(&a11 + v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      v22 = 24;
      while (1)
      {
        v23 = *(&a19 + v22);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v22 -= 8;
        if (v22 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::Builder::SetCurveVertexCounts(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::Builder::SetOrder(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::Builder::SetKnots(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::Builder::SetRanges(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens))
    {
      sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  if (!result)
  {
    return sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AA90))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC61538(&pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174AA58, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174AA58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174AA90);
  }

  return &unk_2A174AA58;
}

pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType *sub_29AC61538(atomic_ullong *a1)
{
  result = sub_29AC61580();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType::~HdNurbsCurvesSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType *sub_29AC61580()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchemaTokens_StaticTokenType::HdNurbsCurvesSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC615C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207CA18, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_29AC61654@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207CA30, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType::~HdNurbsPatchSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType *this)
{
  v20 = (this + 152);
  sub_29A124AB0(&v20);
  v2 = *(this + 18);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 17);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 15);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 14);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 13);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 12);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 11);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 9);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 8);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 7);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 6);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 5);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 3);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 2);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 1);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType::HdNurbsPatchSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "nurbsPatch", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "uVertexCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "vVertexCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "uOrder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "vOrder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "uKnots", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "vKnots", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "uForm", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "vForm", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "uRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "vRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "trimCurve", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "orientation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "doubleSided", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "open", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "closed", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "periodic", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "leftHanded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "rightHanded", 0);
  v3 = (this + 152);
  v4 = *this;
  v26 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v27 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v28 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v29 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v30 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v31 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v32 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v33 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v34 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v35 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v36 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v37 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v38 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v39 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v40 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v41 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v42 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v43 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v44 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  sub_29A12EF7C(v3, &v26, &v45, 0x13uLL);
  for (i = 144; i != -8; i -= 8)
  {
    v24 = *(&v26 + i);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC61E48(_Unwind_Exception *a1)
{
  v3 = 144;
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
      v5 = v1[18];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[17];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[16];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[15];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[14];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[13];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[12];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[11];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[10];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[9];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[8];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[7];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[6];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[5];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[4];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[3];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[2];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[1];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetUVertexCount(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetVVertexCount(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetUOrder(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetVOrder(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetUKnots(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC60D84(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetVKnots(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 6);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC60D84(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetUForm(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 7);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetVForm(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 8);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetURange(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 9);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC626DC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC626DC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC63C8C(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetVRange(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 10);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC626DC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetTrimCurve(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 11);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetOrientation(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 12);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetDoubleSided(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  v5 = *(v4 + 13);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v109 = *MEMORY[0x29EDCA608];
  v108 = 0;
  v21 = &v105;
  memset(v107, 0, sizeof(v107));
  memset(v106, 0, sizeof(v106));
  v105 = 0u;
  v22 = v107;
  if (*a1)
  {
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v24)
    {
      v24 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    v21 = v106;
    v22 = v107 + 1;
    sub_29A166F2C(v107, v24 + 1);
    v26 = *a1;
    v25 = a1[1];
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *(&v105 + 1);
    *&v105 = v26;
    *(&v105 + 1) = v25;
    if (v27)
    {
      sub_29A014BEC(v27);
    }

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if (*a2)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v29)
    {
      v29 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v22, v29 + 2);
    ++v28;
    v31 = *a2;
    v30 = a2[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = *(v21 + 1);
    *v21 = v31;
    *(v21 + 1) = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  if (*a3)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v33)
    {
      v33 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v28, v33 + 3);
    v34 = v28 + 1;
    v35 = &v106[v28 - 1];
    v37 = *a3;
    v36 = a3[1];
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = v35[1];
    *v35 = v37;
    v35[1] = v36;
    if (v38)
    {
      sub_29A014BEC(v38);
    }
  }

  else
  {
    v34 = v28;
  }

  if (*a4)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v39)
    {
      v39 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v34, v39 + 4);
    v40 = v34 + 1;
    v41 = &v106[v34 - 1];
    v43 = *a4;
    v42 = a4[1];
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = v41[1];
    *v41 = v43;
    v41[1] = v42;
    if (v44)
    {
      sub_29A014BEC(v44);
    }
  }

  else
  {
    v40 = v34;
  }

  if (*a5)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v45)
    {
      v45 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v40, v45 + 5);
    v46 = v40 + 1;
    v47 = &v106[v40 - 1];
    v49 = *a5;
    v48 = a5[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v47[1];
    *v47 = v49;
    v47[1] = v48;
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  else
  {
    v46 = v40;
  }

  if (*a6)
  {
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v51)
    {
      v51 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v46, v51 + 6);
    v52 = v46 + 1;
    v53 = &v106[v46 - 1];
    v55 = *a6;
    v54 = a6[1];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = v53[1];
    *v53 = v55;
    v53[1] = v54;
    if (v56)
    {
      sub_29A014BEC(v56);
    }
  }

  else
  {
    v52 = v46;
  }

  if (*a7)
  {
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v57)
    {
      v57 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v52, v57 + 7);
    v58 = v52 + 1;
    v59 = &v106[v52 - 1];
    v61 = *a7;
    v60 = a7[1];
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v62 = v59[1];
    *v59 = v61;
    v59[1] = v60;
    if (v62)
    {
      sub_29A014BEC(v62);
    }
  }

  else
  {
    v58 = v52;
  }

  if (*a8)
  {
    v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v63)
    {
      v63 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v58, v63 + 8);
    v64 = v58 + 1;
    v65 = &v106[v58 - 1];
    v67 = *a8;
    v66 = a8[1];
    if (v66)
    {
      atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
    }

    v68 = v65[1];
    *v65 = v67;
    v65[1] = v66;
    if (v68)
    {
      sub_29A014BEC(v68);
    }
  }

  else
  {
    v64 = v58;
  }

  if (*a10)
  {
    v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v69)
    {
      v69 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v64, v69 + 9);
    v70 = v64 + 1;
    v71 = &v106[v64 - 1];
    v73 = *a10;
    v72 = a10[1];
    if (v72)
    {
      atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
    }

    v74 = v71[1];
    *v71 = v73;
    v71[1] = v72;
    if (v74)
    {
      sub_29A014BEC(v74);
    }
  }

  else
  {
    v70 = v64;
  }

  if (*a11)
  {
    v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v75)
    {
      v75 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v70, v75 + 10);
    v76 = v70 + 1;
    v77 = &v106[v70 - 1];
    v79 = *a11;
    v78 = a11[1];
    if (v78)
    {
      atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
    }

    v80 = v77[1];
    *v77 = v79;
    v77[1] = v78;
    if (v80)
    {
      sub_29A014BEC(v80);
    }
  }

  else
  {
    v76 = v70;
  }

  if (*a12)
  {
    v81 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v81)
    {
      v81 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v76, v81 + 11);
    v82 = v76 + 1;
    v83 = &v106[v76 - 1];
    v85 = *a12;
    v84 = a12[1];
    if (v84)
    {
      atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
    }

    v86 = v83[1];
    *v83 = v85;
    v83[1] = v84;
    if (v86)
    {
      sub_29A014BEC(v86);
    }
  }

  else
  {
    v82 = v76;
  }

  if (*a13)
  {
    v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v87)
    {
      v87 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v82, v87 + 12);
    v88 = v82 + 1;
    v89 = &v106[v82 - 1];
    v91 = *a13;
    v90 = a13[1];
    if (v90)
    {
      atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
    }

    v92 = v89[1];
    *v89 = v91;
    v89[1] = v90;
    if (v92)
    {
      sub_29A014BEC(v92);
    }
  }

  else
  {
    v88 = v82;
  }

  if (*a14)
  {
    v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v93)
    {
      v93 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    sub_29A166F2C(v107 + v88, v93 + 13);
    v94 = v88 + 1;
    v95 = &v106[v88 - 1];
    v97 = *a14;
    v96 = a14[1];
    if (v96)
    {
      atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
    }

    v98 = v95[1];
    *v95 = v97;
    v95[1] = v96;
    if (v98)
    {
      sub_29A014BEC(v98);
    }
  }

  else
  {
    v94 = v88;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v94, v107, &v105, &v104);
  *a9 = v104;
  for (i = 200; i != -8; i -= 16)
  {
    v100 = *(&v106[-1] + i);
    if (v100)
    {
      sub_29A014BEC(v100);
    }
  }

  for (j = 96; j != -8; j -= 8)
  {
    v102 = *(v107 + j);
    if ((v102 & 7) != 0)
    {
      atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC63178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 200;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 96;
      while (1)
      {
        v18 = *(v13 - 208 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetUVertexCount(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetVVertexCount(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetUOrder(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetVOrder(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetUKnots(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetVKnots(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetUForm(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetVForm(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetURange(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetVRange(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetTrimCurve(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = v4;
  *(a1 + 168) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetOrientation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 184);
  *(a1 + 176) = v4;
  *(a1 + 184) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::Builder::SetDoubleSided(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 200);
  *(a1 + 192) = v4;
  *(a1 + 200) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens))
    {
      sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!result)
  {
    return sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AAD0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174AA98, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174AA98, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174AAD0);
  }

  return &unk_2A174AA98;
}

double pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::BuildFormDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  if ((*(v5 + 14) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    if ((*(v7 + 15) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
      }

      if ((*(v8 + 16) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A174AB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AB18))
      {
        sub_29ABCCFA4(this, &qword_2A174AB08);
        __cxa_atexit(sub_29ABCD02C, &qword_2A174AB08, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174AB18);
      }

      v6 = &qword_2A174AB08;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A174AB00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AB00))
      {
        sub_29ABCCFA4(this, &qword_2A174AAF0);
        __cxa_atexit(sub_29ABCD02C, &qword_2A174AAF0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174AB00);
      }

      v6 = &qword_2A174AAF0;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174AAE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AAE8))
    {
      sub_29ABCCFA4(this, &qword_2A174AAD8);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174AAD8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AAE8);
    }

    v6 = &qword_2A174AAD8;
  }

  v10 = *v6;
  v9 = v6[1];
  *a2 = v10;
  *(a2 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::BuildOrientationDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  if ((*(v5 + 17) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
    }

    if ((*(v7 + 18) ^ *this) > 7)
    {
      sub_29ABCCFA4(this, &v11);
      result = *&v11;
      *a2 = v11;
      return result;
    }

    if ((atomic_load_explicit(&qword_2A174AB48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AB48))
    {
      sub_29ABCCFA4(this, &qword_2A174AB38);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174AB38, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AB48);
    }

    v6 = &qword_2A174AB38;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174AB30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AB30))
    {
      sub_29ABCCFA4(this, &qword_2A174AB20);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174AB20, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AB30);
    }

    v6 = &qword_2A174AB20;
  }

  v9 = *v6;
  v8 = v6[1];
  *a2 = v9;
  *(a2 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType *sub_29AC63C00(atomic_ullong *a1)
{
  result = sub_29AC63C48();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType::~HdNurbsPatchSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType *sub_29AC63C48()
{
  v0 = operator new(0xB0uLL);
  pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens_StaticTokenType::HdNurbsPatchSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC63C8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207CA48, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType::~HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "trimCurve", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "counts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "orders", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "vertexCounts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "knots", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "ranges", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "points", 0);
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

void sub_29AC64028(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetCounts(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetOrders(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetVertexCounts(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetKnots(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC60D84(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetRanges(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC60EB0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetPoints(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  }

  v5 = *(v4 + 6);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC64550(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC64550(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC64DF8(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, _OWORD *a7@<X8>)
{
  v57 = *MEMORY[0x29EDCA608];
  v13 = &v54;
  memset(v56, 0, sizeof(v56));
  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  v14 = v56;
  if (*a1)
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    if (!v16)
    {
      v16 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    }

    v13 = v55;
    v14 = v56 + 1;
    sub_29A166F2C(v56, v16 + 1);
    v18 = *a1;
    v17 = a1[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(&v54 + 1);
    *&v54 = v18;
    *(&v54 + 1) = v17;
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  if (*a2)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    if (!v21)
    {
      v21 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    }

    sub_29A166F2C(v14, v21 + 2);
    ++v20;
    v23 = *a2;
    v22 = a2[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = *(v13 + 1);
    *v13 = v23;
    *(v13 + 1) = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  if (*a3)
  {
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    if (!v25)
    {
      v25 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    }

    sub_29A166F2C(v56 + v20, v25 + 3);
    v26 = v20 + 1;
    v27 = &v55[v20 - 1];
    v29 = *a3;
    v28 = a3[1];
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = v27[1];
    *v27 = v29;
    v27[1] = v28;
    if (v30)
    {
      sub_29A014BEC(v30);
    }
  }

  else
  {
    v26 = v20;
  }

  if (*a4)
  {
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    if (!v31)
    {
      v31 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    }

    sub_29A166F2C(v56 + v26, v31 + 4);
    v32 = v26 + 1;
    v33 = &v55[v26 - 1];
    v35 = *a4;
    v34 = a4[1];
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    v36 = v33[1];
    *v33 = v35;
    v33[1] = v34;
    if (v36)
    {
      sub_29A014BEC(v36);
    }
  }

  else
  {
    v32 = v26;
  }

  if (*a5)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    if (!v37)
    {
      v37 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    }

    sub_29A166F2C(v56 + v32, v37 + 5);
    v38 = v32 + 1;
    v39 = &v55[v32 - 1];
    v41 = *a5;
    v40 = a5[1];
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    v42 = v39[1];
    *v39 = v41;
    v39[1] = v40;
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  else
  {
    v38 = v32;
  }

  if (*a6)
  {
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    if (!v43)
    {
      v43 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    }

    sub_29A166F2C(v56 + v38, v43 + 6);
    v44 = v38 + 1;
    v45 = &v55[v38 - 1];
    v47 = *a6;
    v46 = a6[1];
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = v45[1];
    *v45 = v47;
    v45[1] = v46;
    if (v48)
    {
      sub_29A014BEC(v48);
    }
  }

  else
  {
    v44 = v38;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v44, v56, &v54, &v53);
  *a7 = v53;
  for (i = 88; i != -8; i -= 16)
  {
    v50 = *(&v55[-1] + i);
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  for (j = 40; j != -8; j -= 8)
  {
    v52 = *(v56 + j);
    if ((v52 & 7) != 0)
    {
      atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC64950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v24 = 88;
  while (1)
  {
    v25 = *(&a11 + v24);
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    v24 -= 16;
    if (v24 == -8)
    {
      v26 = 40;
      while (1)
      {
        v27 = *(&a23 + v26);
        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v26 -= 8;
        if (v26 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::Builder::SetCounts(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::Builder::SetOrders(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::Builder::SetVertexCounts(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::Builder::SetKnots(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::Builder::SetRanges(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::Builder::SetPoints(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens))
    {
      sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  if (!result)
  {
    return sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AB88, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174AB88);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
      if (!v4)
      {
        v4 = sub_29AC64D6C(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A174AB50);
      __cxa_atexit(sub_29ABC33B4, dword_2A174AB50, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AB88);
    }
  }

  return dword_2A174AB50;
}

pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType *sub_29AC64D6C(atomic_ullong *a1)
{
  result = sub_29AC64DB4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType::~HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType *sub_29AC64DB4()
{
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType::HdNurbsPatchTrimCurveSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC64DF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207CA60, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(void *a1, char *a2, uint64_t a3)
{
  *a1 = &unk_2A207CA88;
  sub_29AC658A0((a1 + 1), a2, &a2[16 * a3]);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(void *a1, unint64_t a2, __int128 *a3)
{
  v4 = a2;
  *a1 = &unk_2A207CA88;
  a1[17] = 0x800000000;
  if (a2 < 9)
  {
    if (!a2)
    {
      return a1;
    }
  }

  else
  {
    sub_29AC501F8((a1 + 1), a2);
  }

  do
  {
    sub_29AC50178((a1 + 1), a3++);
    --v4;
  }

  while (v4);
  return a1;
}

void sub_29AC64F78(_Unwind_Exception *a1)
{
  sub_29AC50138(v1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A207CA88;
  a1[17] = 0x800000000;
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v9[2] = *a3;
  v9[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AC6594C((a1 + 1), v9, &v10);
  for (i = 3; i != -1; i -= 2)
  {
    v7 = v9[i];
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  return a1;
}

void sub_29AC65084(_Unwind_Exception *a1)
{
  v4 = 24;
  while (1)
  {
    v5 = *(v2 + v4);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    v4 -= 16;
    if (v4 == -8)
    {
      sub_29AC50138(v1 + 8);
      pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(void *a1, void *a2, void *a3, void *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A207CA88;
  a1[17] = 0x800000000;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  v11[2] = *a3;
  v11[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  v11[4] = *a4;
  v11[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AC6594C((a1 + 1), v11, &v12);
  for (i = 5; i != -1; i -= 2)
  {
    v9 = v11[i];
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  return a1;
}

void sub_29AC651C0(_Unwind_Exception *a1)
{
  v4 = 40;
  while (1)
  {
    v5 = *(v2 + v4);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    v4 -= 16;
    if (v4 == -8)
    {
      sub_29AC50138(v1 + 8);
      pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::OverlayedContainerDataSources@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (!*result)
  {
    v5 = a2[1];
    *a3 = v4;
    a3[1] = v5;
    if (!v5)
    {
      return result;
    }

    v6 = (v5 + 8);
    goto LABEL_8;
  }

  if (v4)
  {
    result = sub_29AC65274(result, a2, &v8);
    *a3 = v8;
    return result;
  }

  v7 = result[1];
  *a3 = *result;
  a3[1] = v7;
  if (v7)
  {
    v6 = (v7 + 8);
LABEL_8:
    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29AC65274@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, a1, a2);

  return sub_29ABDE960(a3, v6);
}

void pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::GetNames(pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource *this@<X0>, void *a2@<X8>)
{
  v3 = 0uLL;
  v12 = 0u;
  v13 = 0u;
  v4 = this + 8;
  if (*(this + 35) >= 9u)
  {
    v4 = *v4;
  }

  v5 = *(this + 34);
  if (v5)
  {
    v6 = &v4[16 * v5];
    do
    {
      if (*v4)
      {
        (*(**v4 + 16))(v11);
        v7 = v11[0];
        v8 = v11[1];
        while (v7 != v8)
        {
          sub_29AC6542C(&v12, v7++);
        }

        v14 = v11;
        sub_29A124AB0(&v14);
      }

      v4 += 16;
    }

    while (v4 != v6);
    v3 = v12;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29AC65AD4(a2, v3, *(&v3 + 1), (*(&v3 + 1) - v3) >> 3);
  v9 = *(&v13 + 1);
  *(&v13 + 1) = 0;
  if (v9)
  {
    v10 = sub_29A155EF4(v9);
    operator delete(v10);
  }

  v11[0] = &v12;
  sub_29A124AB0(v11);
}

void sub_29AC653FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A372B4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC6542C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 3;
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10[0] = v6;
    v10[1] = v5;
    v7 = sub_29A162678(v4, v10, v10);
    if ((v10[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return *a1 + 8 * v7[3];
    }
  }

  else
  {
    result = sub_29A372B90(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A1D8028(a1, a2);
  sub_29AC659EC(a1);
  return a1[1] - 8;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::Get@<X0>(pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource *this@<X0>, __int128 *a2@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  v21 = 0x800000000;
  v4 = this + 8;
  if (*(this + 35) >= 9u)
  {
    v4 = *v4;
  }

  v5 = *(this + 34);
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = 16 * v5;
  while (1)
  {
    if (*v4)
    {
      (*(**v4 + 24))(&v19);
      if (!v19)
      {
        goto LABEL_19;
      }

      sub_29ABC3244(&v19, &v18);
      v7 = v18;
      if (v18)
      {
        sub_29AC50178(v20, &v18);
        v8 = 0;
      }

      else if (v21)
      {
        v8 = 2;
      }

      else
      {
        sub_29AC65764(&v19, &v16);
        v9 = v16;
        if (v17)
        {
          sub_29A014BEC(v17);
        }

        v10 = a2;
        if (!v9)
        {
          *a2 = v19;
          v10 = &v19;
        }

        *v10 = 0;
        *(v10 + 1) = 0;
        v8 = 1;
      }

      if (*(&v18 + 1))
      {
        sub_29A014BEC(*(&v18 + 1));
      }

      if (v7)
      {
LABEL_19:
        v8 = 0;
      }

      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }

      if (v8)
      {
        break;
      }
    }

    v4 += 16;
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  if (v8 != 2)
  {
    return sub_29AC50138(v20);
  }

LABEL_26:
  if (v21 == 1)
  {
    v11 = v20;
    if (HIDWORD(v21) >= 9)
    {
      v11 = v20[0];
    }

    v13 = *v11;
    v12 = v11[1];
    *a2 = v13;
    *(a2 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (!v21)
    {
LABEL_28:
      *a2 = 0;
      *(a2 + 1) = 0;
      return sub_29AC50138(v20);
    }

    *&v18 = v21;
    v14 = v20;
    if (HIDWORD(v21) >= 9)
    {
      v14 = v20[0];
    }

    v16 = v14;
    sub_29AC4DFFC(&v18, &v16, &v19);
    *a2 = v19;
  }

  return sub_29AC50138(v20);
}

void sub_29AC6572C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AC50138(va);
  _Unwind_Resume(a1);
}

void *sub_29AC65764@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076840, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_29AC657F4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207CA88;
  sub_29AC50138(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC65848(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207CA88;
  sub_29AC50138(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AC658A0(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  *(a1 + 132) = 8;
  v6 = a3 - a2;
  if (((a3 - a2) >> 4) <= 8)
  {
    *(a1 + 128) = v6 >> 4;
    v8 = a1;
  }

  else
  {
    v7 = v6 >> 4;
    *a1 = malloc(v6);
    *(a1 + 128) = v7;
    *(a1 + 132) = v7;
    v8 = a1;
    if (v7 >= 9)
    {
      v8 = *a1;
    }
  }

  for (; v4 != a3; v8 += 2)
  {
    v9 = *(v4 + 1);
    *v8 = *v4;
    v8[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v4 += 16;
  }

  return a1;
}

void sub_29AC6594C(uint64_t a1, char *a2, char *a3)
{
  sub_29AC2C750(a1);
  *(a1 + 128) = 0;
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 4;
  v8 = *(a1 + 132);
  if (v7 > v8)
  {
    sub_29AC501F8(a1, v7);
    LODWORD(v8) = *(a1 + 132);
  }

  v9 = a1;
  if (v8 >= 9)
  {
    v9 = *a1;
  }

  for (; a2 != a3; v9 += 2)
  {
    v10 = *(a2 + 1);
    *v9 = *a2;
    v9[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 16;
  }

  *(a1 + 128) = v6 >> 4;
}

void sub_29AC659EC(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x3F9)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A1601D8(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A160544(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29AC65ABC(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29AC65AD4(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    return sub_29A372A00(v6, a2, a3);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6D9416 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdPerfLog*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0xB0uLL);
      pxrInternal__aapl__pxrReserved__::HdPerfLog::HdPerfLog(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdPerfLog]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdPerfLog]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdPerfLog*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29AC65D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HdPerfLog]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::HdPerfLog::~HdPerfLog(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

pxrInternal__aapl__pxrReserved__::HdPerfLog *pxrInternal__aapl__pxrReserved__::HdPerfLog::HdPerfLog(pxrInternal__aapl__pxrReserved__::HdPerfLog *this)
{
  v2 = 0uLL;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  *(this + 8) = 1065353216;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  if ((atomic_load_explicit(&qword_2A174AB98, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174AB98);
    v2 = 0uLL;
    if (v4)
    {
      sub_29A008E78(v8, "HD_ENABLE_PERFLOG");
      sub_29A008E78(v6, "0");
      pxrInternal__aapl__pxrReserved__::TfGetenv(v8, v6, __p);
      v5 = sub_29A0F2648(__p, "1");
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < 0)
      {
        operator delete(v6[0]);
      }

      if (v9 < 0)
      {
        operator delete(v8[0]);
      }

      byte_2A174AB90 = v5;
      __cxa_guard_release(&qword_2A174AB98);
      v2 = 0uLL;
    }
  }

  *(this + 104) = byte_2A174AB90;
  *(this + 14) = 850045863;
  *(this + 120) = v2;
  *(this + 136) = v2;
  *(this + 152) = v2;
  *(this + 21) = 0;
  return this;
}

void sub_29AC65FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_guard_abort(&qword_2A174AB98);
  v25 = *v23;
  if (*v23)
  {
    *(v21 + 88) = v25;
    operator delete(v25);
  }

  sub_29A155EF4(v22);
  sub_29A155EF4(v21);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::~HdPerfLog(pxrInternal__aapl__pxrReserved__::HdPerfLog *this)
{
  std::mutex::~mutex((this + 112));
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  sub_29A155EF4(this + 40);

  sub_29A155EF4(this);
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCacheHit(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    v17 = a2;
    v8 = sub_29AC67074(this, a2, &unk_29B4D6118, &v17);
    ++v8[3];
    if (sub_29ABCF8C0(4))
    {
      v9 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v12 = *a4 & 0xFFFFFFFFFFFFFFF8;
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

      v17 = a2;
      v14 = sub_29AC67074(this, a2, &unk_29B4D6118, &v17);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Cache hit: %s %s %s hits: %lu\n", v15, v16, v10, Text, v13, v14[3]);
    }

    std::mutex::unlock((this + 112));
  }
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCacheMiss(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    v17 = a2;
    v8 = sub_29AC67074(this, a2, &unk_29B4D6118, &v17);
    ++v8[4];
    if (sub_29ABCF8C0(5))
    {
      v9 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v12 = *a4 & 0xFFFFFFFFFFFFFFF8;
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

      v17 = a2;
      v14 = sub_29AC67074(this, a2, &unk_29B4D6118, &v17);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Cache miss: %s %s %s Total misses: %lu\n", v15, v16, v10, Text, v13, v14[4]);
    }

    std::mutex::unlock((this + 112));
  }
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::ResetCache(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    v5 = a2;
    v4 = sub_29AC67074(this, a2, &unk_29B4D6118, &v5);
    v4[3] = 0;
    v4[4] = 0;
    std::mutex::unlock((this + 112));
  }
}

double pxrInternal__aapl__pxrReserved__::HdPerfLog::GetCacheHitRatio(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 112));
  v4 = sub_29A160470(a1, a2);
  if (v4)
  {
    v5 = v4[3] / (v4[4] + v4[3]);
  }

  else
  {
    v5 = 0.0;
  }

  std::mutex::unlock((a1 + 112));
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPerfLog::GetCacheHits(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 112));
  v4 = sub_29A160470(a1, a2);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock((a1 + 112));
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPerfLog::GetCacheMisses(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 112));
  v4 = sub_29A160470(a1, a2);
  if (v4)
  {
    v5 = v4[4];
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock((a1 + 112));
  return v5;
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::GetCacheNames(pxrInternal__aapl__pxrReserved__::HdPerfLog *this@<X0>, uint64_t *a2@<X8>)
{
  std::mutex::lock((this + 112));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A1D7F98(a2, *(this + 3));
  v8 = *(this + 2);
  v9 = 0;
  while (v8 != v9)
  {
    v4 = sub_29AC665DC(&v8);
    sub_29A1D8028(a2, (*v4 + 16));
    sub_29AC66614(&v8);
  }

  v5 = a2[1];
  v6 = 126 - 2 * __clz((v5 - *a2) >> 3);
  if (v5 == *a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_29A2815F8(*a2, v5, &v10, v7, 1);
  std::mutex::unlock((this + 112));
}

void sub_29AC665B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  std::mutex::unlock((v2 + 112));
  _Unwind_Resume(a1);
}

void *sub_29AC665DC(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C631C();
  }

  return result;
}

uint64_t sub_29AC66614(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::HdPerfLog::_CacheEntry, pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::HdPerfLog::_CacheEntry, pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::GetCounterNames(pxrInternal__aapl__pxrReserved__::HdPerfLog *this@<X0>, uint64_t *a2@<X8>)
{
  std::mutex::lock((this + 112));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A1D7F98(a2, *(this + 8));
  v8 = *(this + 7);
  v9 = 0;
  while (v8 != v9)
  {
    v4 = sub_29AC66774(&v8);
    sub_29A1D8028(a2, (*v4 + 16));
    sub_29AC667AC(&v8);
  }

  v5 = a2[1];
  v6 = 126 - 2 * __clz((v5 - *a2) >> 3);
  if (v5 == *a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_29A2815F8(*a2, v5, &v10, v7, 1);
  std::mutex::unlock((this + 112));
}

void sub_29AC66750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  std::mutex::unlock((v2 + 112));
  _Unwind_Resume(a1);
}

void *sub_29AC66774(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C6368();
  }

  return result;
}

uint64_t sub_29AC667AC(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfToken, double, pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfToken, double, pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    if (sub_29ABCF8C0(6))
    {
      v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v4)
      {
        v5 = (v4 + 16);
        if (*(v4 + 39) < 0)
        {
          v5 = *v5;
        }
      }

      else
      {
        v5 = "";
      }

      v11 = a2;
      v6 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11)[3];
      v11 = a2;
      v7 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Counter changed %s: %f -> %f\n", v8, v9, v5, v6, v7[3] + 1.0);
    }

    v11 = a2;
    v10 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11);
    v10[3] = v10[3] + 1.0;
    std::mutex::unlock((this + 112));
  }
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::DecrementCounter(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    if (sub_29ABCF8C0(6))
    {
      v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v4)
      {
        v5 = (v4 + 16);
        if (*(v4 + 39) < 0)
        {
          v5 = *v5;
        }
      }

      else
      {
        v5 = "";
      }

      v11 = a2;
      v6 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11)[3];
      v11 = a2;
      v7 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Counter changed %s: %f -> %f\n", v8, v9, v5, v6, v7[3] + -1.0);
    }

    v11 = a2;
    v10 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11);
    v10[3] = v10[3] + -1.0;
    std::mutex::unlock((this + 112));
  }
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, double a3)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    if (sub_29ABCF8C0(6))
    {
      v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = (v6 + 16);
        if (*(v6 + 39) < 0)
        {
          v7 = *v7;
        }
      }

      else
      {
        v7 = "";
      }

      v11 = a2;
      v8 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Counter changed %s: %f -> %f\n", v9, v10, v7, v8[3], *&a3);
    }

    v11 = a2;
    *(sub_29A160544(this + 40, a2, &unk_29B4D6118, &v11) + 3) = a3;
    std::mutex::unlock((this + 112));
  }
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, double a3)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    if (sub_29ABCF8C0(6))
    {
      v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = (v6 + 16);
        if (*(v6 + 39) < 0)
        {
          v7 = *v7;
        }
      }

      else
      {
        v7 = "";
      }

      v13 = a2;
      v8 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v13)[3];
      v13 = a2;
      v9 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v13);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Counter changed %s %f -> %f\n", v10, v11, v7, v8, v9[3] + a3);
    }

    v13 = a2;
    v12 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v13);
    v12[3] = v12[3] + a3;
    std::mutex::unlock((this + 112));
  }
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::SubtractCounter(pxrInternal__aapl__pxrReserved__::HdPerfLog *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, double a3)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    if (sub_29ABCF8C0(6))
    {
      v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = (v6 + 16);
        if (*(v6 + 39) < 0)
        {
          v7 = *v7;
        }
      }

      else
      {
        v7 = "";
      }

      v13 = a2;
      v8 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v13)[3];
      v13 = a2;
      v9 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v13);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Counter changed %s %f -> %f\n", v10, v11, v7, v8, v9[3] - a3);
    }

    v13 = a2;
    v12 = sub_29A160544(this + 40, a2, &unk_29B4D6118, &v13);
    v12[3] = v12[3] - a3;
    std::mutex::unlock((this + 112));
  }
}

double pxrInternal__aapl__pxrReserved__::HdPerfLog::GetCounter(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 112));
  v4 = sub_29A16039C((a1 + 40), a2);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0.0;
  }

  std::mutex::unlock((a1 + 112));
  return v5;
}

void pxrInternal__aapl__pxrReserved__::HdPerfLog::ResetCounters(pxrInternal__aapl__pxrReserved__::HdPerfLog *this)
{
  if (*(this + 104) == 1)
  {
    std::mutex::lock((this + 112));
    v7 = *(this + 7);
    v8 = 0;
    while (v7 != v8)
    {
      if (sub_29ABCF8C0(6))
      {
        v2 = *(*sub_29AC66774(&v7) + 16) & 0xFFFFFFFFFFFFFFF8;
        if (v2)
        {
          v3 = (v2 + 16);
          if (*(v2 + 39) < 0)
          {
            v3 = *v3;
          }
        }

        else
        {
          v3 = "";
        }

        v4 = sub_29AC66774(&v7);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Counter reset %s: %f -> 0\n", v5, v6, v3, *(*v4 + 24));
      }

      *(*sub_29AC66774(&v7) + 24) = 0;
      sub_29AC667AC(&v7);
    }

    std::mutex::unlock((this + 112));
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPerfLog::RemoveResourceRegistry(uint64_t result, uint64_t a2)
{
  v3 = *(result + 80);
  v2 = *(result + 88);
  if (v3 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 1;
      if (v3 + 1 != v2)
      {
        do
        {
          if (*v4 != a2)
          {
            *v3++ = *v4;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = *(result + 88);
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 88) = v3;
  }

  return result;
}

void *sub_29AC67074(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A1E6FD0(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AC6729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType::~HdPlaneSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType::HdPlaneSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "plane", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "doubleSided", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "axis", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "length", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "width", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "X", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "Y", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "Z", 0);
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

void sub_29AC67618(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDoubleSided(pxrInternal__aapl__pxrReserved__::HdPlaneSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetAxis(pxrInternal__aapl__pxrReserved__::HdPlaneSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetLength(pxrInternal__aapl__pxrReserved__::HdPlaneSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetWidth(pxrInternal__aapl__pxrReserved__::HdPlaneSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPlaneSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    if (!v12)
    {
      v12 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    v9 = v39;
    v10 = v40 + 1;
    sub_29A166F2C(v40, v12 + 1);
    v14 = *a1;
    v13 = a1[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(&v38 + 1);
    *&v38 = v14;
    *(&v38 + 1) = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*a2)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    if (!v17)
    {
      v17 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    sub_29A166F2C(v10, v17 + 2);
    ++v16;
    v19 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v9 + 1);
    *v9 = v19;
    *(v9 + 1) = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  if (*a3)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    if (!v21)
    {
      v21 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    sub_29A166F2C(v40 + v16, v21 + 3);
    v22 = v16 + 1;
    v23 = &v39[v16 - 1];
    v25 = *a3;
    v24 = a3[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v23[1];
    *v23 = v25;
    v23[1] = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  else
  {
    v22 = v16;
  }

  if (*a4)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    sub_29A166F2C(v40 + v22, v27 + 4);
    v28 = v22 + 1;
    v29 = &v39[v22 - 1];
    v31 = *a4;
    v30 = a4[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v28, v40, &v38, &v37);
  *a5 = v37;
  for (i = 56; i != -8; i -= 16)
  {
    v34 = *(&v39[-1] + i);
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
    v36 = *(v40 + j);
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC67C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = 56;
  while (1)
  {
    v21 = *(&a11 + v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      v22 = 24;
      while (1)
      {
        v23 = *(&a19 + v22);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v22 -= 8;
        if (v22 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdPlaneSchema::Builder::SetDoubleSided(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPlaneSchema::Builder::SetAxis(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPlaneSchema::Builder::SetLength(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPlaneSchema::Builder::SetWidth(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens))
    {
      sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdPlaneSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  if (!result)
  {
    return sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdPlaneSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174ABD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ABD8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174ABA0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174ABA0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174ABD8);
  }

  return &unk_2A174ABA0;
}

double pxrInternal__aapl__pxrReserved__::HdPlaneSchema::BuildAxisDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdPlaneSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
  }

  if ((*(v5 + 5) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    if ((*(v7 + 6) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      }

      if ((*(v8 + 7) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A174AC20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AC20))
      {
        sub_29ABCCFA4(this, &qword_2A174AC10);
        __cxa_atexit(sub_29ABCD02C, &qword_2A174AC10, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174AC20);
      }

      v6 = &qword_2A174AC10;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A174AC08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AC08))
      {
        sub_29ABCCFA4(this, &qword_2A174ABF8);
        __cxa_atexit(sub_29ABCD02C, &qword_2A174ABF8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174AC08);
      }

      v6 = &qword_2A174ABF8;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174ABF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ABF0))
    {
      sub_29ABCCFA4(this, &qword_2A174ABE0);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174ABE0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174ABF0);
    }

    v6 = &qword_2A174ABE0;
  }

  v10 = *v6;
  v9 = v6[1];
  *a2 = v10;
  *(a2 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType *sub_29AC68278(atomic_ullong *a1)
{
  result = sub_29AC682C0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType::~HdPlaneSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType *sub_29AC682C0()
{
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens_StaticTokenType::HdPlaneSchemaTokens_StaticTokenType(v0);
  return v0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::HdPluginRenderDelegateUniqueHandle(pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle *a1, const pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::HdRendererPluginHandle(a1, a2);
  *(result + 8) = *(a2 + 1);
  *(a2 + 1) = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::HdRendererPluginHandle(a1, a2);
  *(result + 8) = *(a2 + 1);
  *(a2 + 1) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::~HdPluginRenderDelegateUniqueHandle(pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle *this)
{
  if (*(this + 1))
  {
    (*(**this + 32))();
  }

  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(this);
}

pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::operator=(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *a1, uint64_t *a2)
{
  if (*(a1 + 1))
  {
    (*(**a1 + 32))();
  }

  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::operator=(a1, a2);
  *(a1 + 1) = a2[1];
  a2[1] = 0;
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::operator=(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *a1)
{
  if (*(a1 + 1))
  {
    (*(**a1 + 32))();
    *(a1 + 1) = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::operator=(a1);
  return a1;
}

const pxrInternal__aapl__pxrReserved__::HfPluginBase **pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::GetPluginId@<X0>(const pxrInternal__aapl__pxrReserved__::HfPluginBase ***this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HdRendererPlugin::GetPluginId(result, a2);
  }

  *a2 = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::HdPoints::HdPoints(pxrInternal__aapl__pxrReserved__::HdPoints *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdRprim::HdRprim(this, a2);
  *result = &unk_2A207CAD0;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdPoints::GetBuiltinPrimvarNames(pxrInternal__aapl__pxrReserved__::HdPoints *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174AC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AC40))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v2)
    {
      v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v3 = *(v2 + 59);
    v11 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v4;
      }
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v6 = *(v5 + 54);
    v12 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v8 = *(v7 + 84);
    v13 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A174AC28 = 0;
    unk_2A174AC30 = 0;
    qword_2A174AC38 = 0;
    sub_29A12EF7C(&qword_2A174AC28, &v11, &v14, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v11 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A174AC28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174AC40);
  }

  return &qword_2A174AC28;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdPoints::_reprDescConfig(pxrInternal__aapl__pxrReserved__::HdPoints *this)
{
  if ((atomic_load_explicit(&qword_2A174AC48, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C63B4();
  }

  return &qword_2A174AC50;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr(pxrInternal__aapl__pxrReserved__::HdPoints *a1, int *a2)
{
  pxrInternal__aapl__pxrReserved__::HdPoints::_reprDescConfig(a1);
  v4 = *a2;

  return sub_29AC687D0(&qword_2A174AC50, a1, v4);
}

uint64_t *sub_29AC687D0(uint64_t *result, unint64_t *a2, int a3)
{
  v4 = result;
  v6 = *result;
  v5 = result[1];
  if (*result == v5)
  {
    v7 = *a2;
LABEL_7:
    if ((v7 & 7) != 0)
    {
      if ((atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 &= 0xFFFFFFFFFFFFFFF8;
      }

      v5 = result[1];
    }

    v8 = result[2];
    if (v5 >= v8)
    {
      v10 = (v5 - *result) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        sub_29A00C9A4();
      }

      v12 = v8 - *result;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v16[4] = result;
      if (v13)
      {
        v14 = sub_29A017BD4(result, v13);
      }

      else
      {
        v14 = 0;
      }

      v15 = &v14[16 * v10];
      v16[0] = v14;
      v16[1] = v15;
      v16[3] = &v14[16 * v13];
      *v15 = v7;
      *(v15 + 2) = a3;
      v16[2] = v15 + 16;
      sub_29AC68A68(v4, v16);
      v9 = *(v4 + 8);
      result = sub_29A15F090(v16);
    }

    else
    {
      *v5 = v7;
      *(v5 + 8) = a3;
      v9 = v5 + 16;
      result[1] = v5 + 16;
    }

    *(v4 + 8) = v9;
  }

  else
  {
    v7 = *a2;
    while ((v7 ^ *v6) >= 8)
    {
      v6 += 16;
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    *(v6 + 8) = a3;
  }

  return result;
}

void sub_29AC68914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A15F090(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPoints::_GetReprDesc(pxrInternal__aapl__pxrReserved__::HdPoints *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  pxrInternal__aapl__pxrReserved__::HdPoints::_reprDescConfig(this);

  return sub_29AC68984(&qword_2A174AC50, this);
}

uint64_t sub_29AC68984(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  while (v3 != v4)
  {
    if ((*a2 ^ **sub_29AC68B0C(&v8)) < 8)
    {
      return *(*sub_29AC68B0C(&v8) + 8);
    }

    sub_29AC68B34(&v8);
    v3 = v8;
    v4 = v9;
  }

  v8 = "hd/rprim.h";
  v9 = "Find";
  v10 = 312;
  v11 = "DescArray pxrInternal__aapl__pxrReserved__::HdRprim::_ReprDescConfigs<pxrInternal__aapl__pxrReserved__::HdPointsReprDesc>::Find(const TfToken &) const [DESC_TYPE = pxrInternal__aapl__pxrReserved__::HdPointsReprDesc, N = 1]";
  v12 = 0;
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v5)
  {
    v6 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v6 = *v6;
    }
  }

  else
  {
    v6 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Repr %s not found", v6);
  return 0;
}

uint64_t sub_29AC68A68(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v2;
    do
    {
      *v6 = *v5;
      *v5 = 0;
      *(v6 + 8) = *(v5 + 2);
      v5 += 2;
      v6 += 16;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 += 2;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  *(result + 8) = v7;
  a2[1] = v7;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void *sub_29AC68B0C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C640C();
  }

  return result;
}

void *sub_29AC68B34(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::array<pxrInternal__aapl__pxrReserved__::HdPointsReprDesc, 1>>>>::operator++() [T = const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::array<pxrInternal__aapl__pxrReserved__::HdPointsReprDesc, 1>>>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 144));
  if ((result & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(result);
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v23, a2, (this + 144), v7, 1);
  v8 = sub_29AC1199C(this + 14);
  (*(*v8 + 16))(v8, &v23);
  if (a3[1])
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(&v23))
    {
      v9 = operator new(0x20uLL);
      v10 = v9;
      v11 = a3[1];
      v12 = a3[2];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        *&v24 = v11;
        *(&v24 + 1) = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_29AC697D8(v9, this + 36, &v24);
        sub_29A014BEC(v12);
      }

      else
      {
        v24 = v11;
        sub_29AC697D8(v9, this + 36, &v24);
      }

      *v10 = &unk_2A207CBB8;
      v21 = operator new(0x20uLL);
      *v21 = &unk_2A207CE50;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = v10;
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      v20 = a3[2];
      a3[1] = v10;
      a3[2] = v21;
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = operator new(0x20uLL);
      v14 = v13;
      v15 = a3[2];
      *&v24 = a3[1];
      *(&v24 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29AC697D8(v13, this + 36, &v24);
      sub_29AC69ED0(&v22, v14);
      if (v15)
      {
        sub_29A014BEC(v15);
      }

      v16 = v22;
      v22 = 0uLL;
      v17 = a3[2];
      *(a3 + 1) = v16;
      if (v17)
      {
        sub_29A014BEC(v17);
        if (*(&v22 + 1))
        {
          sub_29A014BEC(*(&v22 + 1));
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(&v23))
      {
        goto LABEL_25;
      }

      pxrInternal__aapl__pxrReserved__::HdSystemSchema::ComposeAsPrimDataSource(this + 14, &v23, 0, &v22);
      sub_29AC68F54(&v22, (a3 + 1), &v24);
      v18 = v24;
      v24 = 0uLL;
      v19 = a3[2];
      *(a3 + 1) = v18;
      if (v19)
      {
        sub_29A014BEC(v19);
        if (*(&v24 + 1))
        {
          sub_29A014BEC(*(&v24 + 1));
        }
      }

      v20 = *(&v22 + 1);
      if (!*(&v22 + 1))
      {
        goto LABEL_25;
      }
    }

    sub_29A014BEC(v20);
  }

LABEL_25:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
  return sub_29A1DE3A4(&v23);
}

void sub_29AC68E8C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29AC2B620(v4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::_RemovePathPrefix@<X0>(pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);

  return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, (this + 144), v6, 1);
}

void *sub_29AC68F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, a1, a2);

  return sub_29ABDE960(a3, v6);
}

void pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath **a3@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 144)))
  {
    v6 = sub_29AC1199C(this + 14);
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v13, a2, (this + 144), v7, 1);
    (*(*v6 + 24))(v6, v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v13 + 1);
    v8 = sub_29A1DE3A4(v13);
    v9 = *a3;
    if (*a3 != a3[1])
    {
      v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
      pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(v9, v10, &v14);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath((this + 144), &v14, v13);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  else if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((this + 144), a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes((this + 144), v13);
    PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
    v12 = (v13[0] + 8 * PathElementCount);
    sub_29A1E21F4(&v15, v12);
    sub_29A1E2240(&v16, v12 + 1);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_29A65B758(a3, &v15, &v17, 1uLL);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    v14 = v13;
    sub_29A1E234C(&v14);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_29AC691C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::_PrimsAdded(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v4 = a1;
  v11[33] = *MEMORY[0x29EDCA608];
  v11[32] = 0x1000000000;
  v5 = *(a3 + 64);
  if (v5 >= 0x11)
  {
    sub_29AC3D6F0(v11, v5);
    LODWORD(v5) = *(v3 + 64);
  }

  if (*(v3 + 65) >= 0x11u)
  {
    v3 = *v3;
  }

  if (v5)
  {
    v6 = &v3[2 * v5];
    do
    {
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v10, v3, v7, (v4 + 18), 1);
      v8 = v3 + 1;
      sub_29AC4CE80(v11, &v10, v8);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
      a1 = sub_29A1DE3A4(&v10);
      v3 = v8 + 1;
    }

    while (v3 != v6);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v4, v11);
  return sub_29AC263E4(v11);
}

void sub_29AC69350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AC263E4(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::_AddPathPrefix@<X0>(pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);

  return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, v6, (this + 144), 1);
}

void **pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::_PrimsRemoved(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = a3;
  v4 = a1;
  v12[17] = *MEMORY[0x29EDCA608];
  v12[16] = 0x1000000000;
  v5 = *(a3 + 32);
  if (v5 >= 0x11)
  {
    sub_29AC3D990(v12, v5);
    LODWORD(v5) = *(v3 + 32);
  }

  if (*(v3 + 33) >= 0x11u)
  {
    v3 = *v3;
  }

  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v9, v3, v7, (v4 + 18), 1);
      sub_29A1E21F4(&v10, &v9);
      sub_29A1E2240(&v11, &v9 + 1);
      sub_29AC3D914(v12, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
      sub_29A1DE3A4(&v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
      a1 = sub_29A1DE3A4(&v9);
      v3 = (v3 + 8);
      v6 -= 8;
    }

    while (v6);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v4, v12);
  return sub_29AC26348(v12);
}

void sub_29AC69510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AC26348(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0x1000000000;
  v7 = *(v4 + 1856);
  if (v7 >= 0x11)
  {
    sub_29AC14D54(v13, v7);
    LODWORD(v7) = *(v5 + 1856);
  }

  if (*(v5 + 1857) >= 0x11u)
  {
    v5 = *v5;
  }

  if (v7)
  {
    v8 = (v5 + 464 * v7);
    do
    {
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v12, v5, v9, (v6 + 18), 1);
      v10 = v5 + 8;
      sub_29AC2C3E8(v13, &v12, v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      v3 = sub_29A1DE3A4(&v12);
      v5 = (v10 + 456);
    }

    while (v5 != v8);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v13);
  return sub_29ABD3844(v13);
}

void sub_29AC6967C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABD3844(va);
  _Unwind_Resume(a1);
}