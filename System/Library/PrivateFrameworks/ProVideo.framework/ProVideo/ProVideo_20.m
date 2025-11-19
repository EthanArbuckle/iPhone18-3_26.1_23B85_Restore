__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, unsigned int (**a6)(__int128 *, __int128 *))
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = a5[1];
  v47 = *a5;
  v48 = v13;
  v49 = a5[2];
  v14 = a4[1];
  v44 = *a4;
  v45 = v14;
  v46 = a4[2];
  if (v12(&v47, &v44))
  {
    v16 = *a4;
    v17 = a4[1];
    v18 = a4[2];
    v19 = a5[2];
    v20 = *a5;
    a4[1] = a5[1];
    a4[2] = v19;
    *a4 = v20;
    *a5 = v16;
    a5[1] = v17;
    a5[2] = v18;
    v21 = *a6;
    v22 = a4[1];
    v47 = *a4;
    v48 = v22;
    v49 = a4[2];
    v23 = a3[1];
    v44 = *a3;
    v45 = v23;
    v46 = a3[2];
    if (v21(&v47, &v44))
    {
      v24 = *a3;
      v25 = a3[1];
      v26 = a3[2];
      v27 = a4[2];
      v28 = *a4;
      a3[1] = a4[1];
      a3[2] = v27;
      *a3 = v28;
      *a4 = v24;
      a4[1] = v25;
      a4[2] = v26;
      v29 = *a6;
      v30 = a3[1];
      v47 = *a3;
      v48 = v30;
      v49 = a3[2];
      v31 = a2[1];
      v44 = *a2;
      v45 = v31;
      v46 = a2[2];
      if (v29(&v47, &v44))
      {
        v32 = *a2;
        v33 = a2[1];
        v34 = a2[2];
        v35 = a3[2];
        v36 = *a3;
        a2[1] = a3[1];
        a2[2] = v35;
        *a2 = v36;
        *a3 = v32;
        a3[1] = v33;
        a3[2] = v34;
        v37 = *a6;
        v38 = a2[1];
        v47 = *a2;
        v48 = v38;
        v49 = a2[2];
        v39 = a1[1];
        v44 = *a1;
        v45 = v39;
        v46 = a1[2];
        if (v37(&v47, &v44))
        {
          result = *a1;
          v40 = a1[1];
          v41 = a1[2];
          v42 = a2[2];
          v43 = *a2;
          a1[1] = a2[1];
          a1[2] = v42;
          *a1 = v43;
          *a2 = result;
          a2[1] = v40;
          a2[2] = v41;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v37 = v8;
    v38 = v7;
    v39 = v6;
    v40 = v5;
    v41 = v3;
    v42 = v4;
    v10 = result;
    v11 = (result + 48);
    if ((result + 48) != a2)
    {
      v13 = 0;
      v14 = result;
      do
      {
        v15 = v11;
        v16 = *a3;
        v17 = v14[4];
        v18 = v14[5];
        v34 = *v15;
        v35 = v17;
        v36 = v18;
        v19 = v14[1];
        v31 = *v14;
        v32 = v19;
        v33 = v14[2];
        result = v16(&v34, &v31);
        if (result)
        {
          v30 = *v15;
          v20 = *(v14 + 8);
          v21 = *(v14 + 9);
          v22 = *(v14 + 10);
          v23 = *(v14 + 11);
          v24 = v13;
          while (1)
          {
            v25 = (v10 + v24);
            v26 = *(v10 + v24 + 16);
            v25[3] = *(v10 + v24);
            v25[4] = v26;
            v25[5] = *(v10 + v24 + 32);
            if (!v24)
            {
              break;
            }

            v27 = *a3;
            *&v35 = v20;
            *(&v35 + 1) = v21;
            *&v36 = v22;
            *(&v36 + 1) = v23;
            v28 = *(v25 - 2);
            v31 = *(v25 - 3);
            v32 = v28;
            v33 = *(v25 - 1);
            v34 = v30;
            result = v27(&v34, &v31);
            v24 -= 48;
            if ((result & 1) == 0)
            {
              v29 = v10 + v24 + 48;
              goto LABEL_10;
            }
          }

          v29 = v10;
LABEL_10:
          *v29 = v30;
          *(v29 + 16) = v20;
          *(v29 + 24) = v21;
          *(v29 + 32) = v22;
          *(v29 + 40) = v23;
        }

        v11 = v15 + 3;
        v13 += 48;
        v14 = v15;
      }

      while (v15 + 3 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v36 = v8;
    v37 = v7;
    v38 = v6;
    v39 = v5;
    v40 = v3;
    v41 = v4;
    v10 = result;
    v11 = (result + 48);
    if ((result + 48) != a2)
    {
      do
      {
        v13 = v11;
        v14 = *a3;
        v15 = v10[4];
        v16 = v10[5];
        v33 = *v13;
        v34 = v15;
        v35 = v16;
        v17 = v10[1];
        v30 = *v10;
        v31 = v17;
        v32 = v10[2];
        result = v14(&v33, &v30);
        if (result)
        {
          v29 = *v13;
          v18 = *(v10 + 8);
          v19 = *(v10 + 9);
          v20 = *(v10 + 10);
          v21 = *(v10 + 11);
          v22 = v13;
          do
          {
            v23 = *(v22 - 2);
            v24 = *(v22 - 1);
            v25 = *(v22 - 4);
            *v22 = *(v22 - 3);
            v22[1] = v23;
            v22[2] = v24;
            v32 = v25;
            v33 = v29;
            v26 = *(v22 - 5);
            v30 = *(v22 - 6);
            v31 = v26;
            v27 = v22 - 3;
            v28 = *a3;
            *&v34 = v18;
            *(&v34 + 1) = v19;
            *&v35 = v20;
            *(&v35 + 1) = v21;
            result = v28(&v33, &v30);
            v22 = v27;
          }

          while ((result & 1) != 0);
          *v27 = v29;
          *(v27 + 2) = v18;
          *(v27 + 3) = v19;
          *(v27 + 4) = v20;
          *(v27 + 5) = v21;
        }

        v11 = v13 + 3;
        v10 = v13;
      }

      while (v13 + 3 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PCEdgeVertex *,BOOL (*&)(PCEdgeVertex,PCEdgeVertex)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v46 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *a3;
  v11 = *a1;
  v42 = v6;
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v12 = *(a2 - 2);
  v38 = *(a2 - 3);
  v39 = v12;
  v40 = *(a2 - 1);
  v41 = v11;
  if (v10(&v41, &v38))
  {
    v13 = a1;
    do
    {
      v14 = v13 + 3;
      v15 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v16 = v13[4];
      v38 = v13[3];
      v39 = v16;
      v40 = v13[5];
      v41 = v46;
      v17 = v15(&v41, &v38);
      v13 = v14;
    }

    while ((v17 & 1) == 0);
  }

  else
  {
    v18 = a1 + 3;
    do
    {
      v14 = v18;
      if (v18 >= v4)
      {
        break;
      }

      v19 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v20 = v14[1];
      v38 = *v14;
      v39 = v20;
      v40 = v14[2];
      v41 = v46;
      v21 = v19(&v41, &v38);
      v18 = v14 + 3;
    }

    while (!v21);
  }

  if (v14 >= v4)
  {
    v22 = v4;
  }

  else
  {
    do
    {
      v22 = v4 - 3;
      v23 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v24 = *(v4 - 2);
      v38 = *(v4 - 3);
      v39 = v24;
      v40 = *(v4 - 1);
      v41 = v46;
      v4 -= 3;
    }

    while ((v23(&v41, &v38) & 1) != 0);
  }

  while (v14 < v22)
  {
    v25 = v14[1];
    v41 = *v14;
    v26 = v14[2];
    v27 = v22[2];
    v28 = *v22;
    v14[1] = v22[1];
    v14[2] = v27;
    *v14 = v28;
    *v22 = v41;
    v22[1] = v25;
    v22[2] = v26;
    do
    {
      v29 = v14[4];
      v38 = v14[3];
      v39 = v29;
      v30 = v14[5];
      v14 += 3;
      v31 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v40 = v30;
      v41 = v46;
    }

    while (!v31(&v41, &v38));
    do
    {
      v41 = v46;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v38 = *(v22 - 3);
      v39 = *(v22 - 2);
      v32 = *(v22 - 1);
      v22 -= 3;
      v33 = *a3;
      v40 = v32;
    }

    while ((v33(&v41, &v38) & 1) != 0);
  }

  v34 = v14 - 3;
  if (v14 - 3 != a1)
  {
    v35 = *v34;
    v36 = *(v14 - 1);
    a1[1] = *(v14 - 2);
    a1[2] = v36;
    *a1 = v35;
  }

  *v34 = v46;
  *(v14 - 4) = v6;
  *(v14 - 3) = v7;
  *(v14 - 2) = v8;
  *(v14 - 1) = v9;
  return v14;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PCEdgeVertex *,BOOL (*&)(PCEdgeVertex,PCEdgeVertex)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v42 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  do
  {
    v11 = *a3;
    v12 = a1[v6 + 4];
    v39 = a1[v6 + 3];
    v40 = v12;
    v41 = a1[v6 + 5];
    v34 = v42;
    v35 = v7;
    v36 = v8;
    v37 = v9;
    v38 = v10;
    v6 += 3;
  }

  while ((v11(&v39, &v34) & 1) != 0);
  v13 = &a1[v6];
  if (v6 == 3)
  {
    while (v13 < a2)
    {
      v17 = *a3;
      v14 = a2 - 3;
      v18 = *(a2 - 2);
      v39 = *(a2 - 3);
      v40 = v18;
      v41 = *(a2 - 1);
      v34 = v42;
      v35 = v7;
      v36 = v8;
      v37 = v9;
      v38 = v10;
      a2 -= 3;
      if (v17(&v39, &v34))
      {
        goto LABEL_9;
      }
    }

    v14 = a2;
  }

  else
  {
    do
    {
      v14 = a2 - 3;
      v15 = *a3;
      v16 = *(a2 - 2);
      v39 = *(a2 - 3);
      v40 = v16;
      v41 = *(a2 - 1);
      v34 = v42;
      v35 = v7;
      v36 = v8;
      v37 = v9;
      v38 = v10;
      a2 -= 3;
    }

    while (!v15(&v39, &v34));
  }

LABEL_9:
  v19 = v13;
  if (v13 < v14)
  {
    v20 = v14;
    do
    {
      v22 = v19[1];
      v39 = *v19;
      v21 = v39;
      v23 = v19[2];
      v24 = *v20;
      v25 = v20[2];
      v19[1] = v20[1];
      v19[2] = v25;
      *v19 = v24;
      *v20 = v21;
      v20[1] = v22;
      v20[2] = v23;
      do
      {
        v26 = v19[4];
        v39 = v19[3];
        v40 = v26;
        v27 = v19[5];
        v19 += 3;
        v28 = *a3;
        v41 = v27;
        v34 = v42;
        v35 = v7;
        v36 = v8;
        v37 = v9;
        v38 = v10;
      }

      while ((v28(&v39, &v34) & 1) != 0);
      do
      {
        v39 = *(v20 - 3);
        v40 = *(v20 - 2);
        v29 = *(v20 - 1);
        v20 -= 3;
        v30 = *a3;
        v41 = v29;
        v34 = v42;
        v35 = v7;
        v36 = v8;
        v37 = v9;
        v38 = v10;
      }

      while (!v30(&v39, &v34));
    }

    while (v19 < v20);
  }

  result = v19 - 3;
  if (v19 - 3 != a1)
  {
    v32 = *result;
    v33 = *(v19 - 1);
    a1[1] = *(v19 - 2);
    a1[2] = v33;
    *a1 = v32;
  }

  *result = v42;
  *(v19 - 4) = v7;
  *(v19 - 3) = v8;
  *(v19 - 2) = v9;
  *(v19 - 1) = v10;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(__int128 *a1, __int128 *a2, unsigned int (**a3)(__int128 *, __int128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 2);
        v37 = *(a2 - 3);
        v38 = v8;
        v39 = *(a2 - 1);
        v9 = a1[1];
        v34 = *a1;
        v35 = v9;
        v36 = a1[2];
        if (v7(&v37, &v34))
        {
          v10 = *a1;
          v11 = a1[1];
          v12 = a1[2];
          v13 = *(a2 - 1);
          v14 = *(a2 - 3);
          a1[1] = *(a2 - 2);
          a1[2] = v13;
          *a1 = v14;
          *(a2 - 3) = v10;
          *(a2 - 2) = v11;
          *(a2 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a2 - 3, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a1 + 6, a2 - 3, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3, a3);
      return 1;
  }

LABEL_11:
  v15 = a1 + 6;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a1 + 6, a3);
  v16 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = *a3;
    v20 = v16[1];
    v37 = *v16;
    v38 = v20;
    v39 = v16[2];
    v21 = v15[1];
    v34 = *v15;
    v35 = v21;
    v36 = v15[2];
    if (v19(&v37, &v34))
    {
      v33 = *v16;
      v22 = *(v16 + 2);
      v23 = *(v16 + 3);
      v24 = *(v16 + 4);
      v25 = *(v16 + 5);
      v26 = v17;
      while (1)
      {
        v27 = (a1 + v26);
        v28 = *(a1 + v26 + 112);
        v27[9] = *(a1 + v26 + 96);
        v27[10] = v28;
        v27[11] = *(a1 + v26 + 128);
        if (v26 == -96)
        {
          break;
        }

        v29 = *a3;
        *&v38 = v22;
        *(&v38 + 1) = v23;
        *&v39 = v24;
        *(&v39 + 1) = v25;
        v30 = v27[4];
        v34 = v27[3];
        v35 = v30;
        v36 = v27[5];
        v37 = v33;
        v26 -= 48;
        if (((v29)(&v37, &v34) & 1) == 0)
        {
          v31 = a1 + v26 + 144;
          goto LABEL_19;
        }
      }

      v31 = a1;
LABEL_19:
      *v31 = v33;
      *(v31 + 16) = v22;
      *(v31 + 24) = v23;
      *(v31 + 32) = v24;
      *(v31 + 40) = v25;
      if (++v18 == 8)
      {
        return v16 + 3 == a2;
      }
    }

    v15 = v16;
    v17 += 48;
    v16 += 3;
    if (v16 == a2)
    {
      return 1;
    }
  }
}

_OWORD *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,PCEdgeVertex*>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 48 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, a4, v9, v12);
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
        v14 = *a4;
        v15 = v13[1];
        v34[0] = *v13;
        v34[1] = v15;
        v34[2] = v13[2];
        v16 = *(a1 + 16);
        v33[0] = *a1;
        v33[1] = v16;
        v33[2] = *(a1 + 32);
        if (v14(v34, v33))
        {
          v17 = *v13;
          v18 = v13[1];
          v19 = v13[2];
          v20 = *(a1 + 32);
          v21 = *a1;
          v13[1] = *(a1 + 16);
          v13[2] = v20;
          *v13 = v21;
          *a1 = v17;
          *(a1 + 16) = v18;
          *(a1 + 32) = v19;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v23 = a2 - 3;
      do
      {
        v34[0] = *a1;
        v25 = *(a1 + 16);
        v24 = *(a1 + 24);
        v27 = *(a1 + 32);
        v26 = *(a1 + 40);
        v28 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, a4, v22);
        if (v23 == v28)
        {
          *v28 = v34[0];
          *(v28 + 2) = v25;
          *(v28 + 3) = v24;
          *(v28 + 4) = v27;
          *(v28 + 5) = v26;
        }

        else
        {
          v29 = *v23;
          v30 = v23[2];
          v28[1] = v23[1];
          v28[2] = v30;
          *v28 = v29;
          *v23 = v34[0];
          *(v23 + 2) = v25;
          *(v23 + 3) = v24;
          *(v23 + 4) = v27;
          *(v23 + 5) = v26;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, (v28 + 3), a4, 0xAAAAAAAAAAAAAAABLL * ((v28 - a1 + 48) >> 4));
        }

        v23 -= 3;
      }

      while (v22-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, uint64_t (**a2)(__int128 *, __int128 *), uint64_t a3, _OWORD *a4)
{
  v10 = a3 - 2;
  if (a3 >= 2)
  {
    v50 = v9;
    v51 = v8;
    v52 = v7;
    v53 = v6;
    v54 = v4;
    v55 = v5;
    v11 = a4;
    v12 = result;
    v13 = v10 >> 1;
    if ((v10 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 4)))
    {
      v16 = (0x5555555555555556 * ((a4 - result) >> 4)) | 1;
      v17 = (result + 48 * v16);
      v18 = 0x5555555555555556 * ((a4 - result) >> 4) + 2;
      if (v18 < a3)
      {
        v19 = *a2;
        v20 = v17[1];
        v47 = *v17;
        v48 = v20;
        v21 = v17[3];
        v49 = v17[2];
        v22 = v17[4];
        v23 = v17[5];
        v44 = v21;
        v45 = v22;
        v46 = v23;
        if (v19(&v47, &v44))
        {
          v17 += 3;
          v16 = v18;
        }
      }

      v24 = *a2;
      v25 = v17[1];
      v47 = *v17;
      v48 = v25;
      v49 = v17[2];
      v26 = v11[1];
      v44 = *v11;
      v45 = v26;
      v46 = v11[2];
      result = v24(&v47, &v44);
      if ((result & 1) == 0)
      {
        v43 = *v11;
        v27 = *(v11 + 2);
        v28 = *(v11 + 3);
        v29 = *(v11 + 4);
        v30 = *(v11 + 5);
        do
        {
          v31 = v11;
          v11 = v17;
          v32 = *v17;
          v33 = v17[2];
          v31[1] = v17[1];
          v31[2] = v33;
          *v31 = v32;
          if (v13 < v16)
          {
            break;
          }

          v34 = (2 * v16) | 1;
          v17 = (v12 + 48 * v34);
          v35 = 2 * v16 + 2;
          if (v35 < a3)
          {
            v36 = *a2;
            v37 = v17[1];
            v47 = *v17;
            v48 = v37;
            v38 = v17[3];
            v49 = v17[2];
            v39 = v17[4];
            v40 = v17[5];
            v44 = v38;
            v45 = v39;
            v46 = v40;
            if (v36(&v47, &v44))
            {
              v17 += 3;
              v34 = v35;
            }
          }

          v41 = *a2;
          v42 = v17[1];
          v47 = *v17;
          v48 = v42;
          v49 = v17[2];
          v44 = v43;
          *&v45 = v27;
          *(&v45 + 1) = v28;
          *&v46 = v29;
          *(&v46 + 1) = v30;
          result = v41(&v47, &v44);
          v16 = v34;
        }

        while (!result);
        *v11 = v43;
        *(v11 + 2) = v27;
        *(v11 + 3) = v28;
        *(v11 + 4) = v29;
        *(v11 + 5) = v30;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v18[0] = *v9;
      v18[1] = v8[4];
      v18[2] = v8[5];
      v13 = v8 + 6;
      v17[0] = v8[6];
      v17[1] = v8[7];
      v17[2] = v8[8];
      if (v12(v18, v17))
      {
        v9 = v13;
        v10 = v11;
      }
    }

    v14 = *v9;
    v15 = v9[2];
    a1[1] = v9[1];
    a1[2] = v15;
    *a1 = v14;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v35 = v9;
    v36 = v8;
    v37 = v7;
    v38 = v6;
    v39 = v4;
    v40 = v5;
    v12 = result;
    v13 = (a4 - 2) >> 1;
    v14 = *a3;
    v15 = (result + 48 * v13);
    v16 = v15[1];
    v32 = *v15;
    v33 = v16;
    v34 = v15[2];
    v17 = *(a2 - 32);
    v29 = *(a2 - 48);
    v30 = v17;
    v31 = *(a2 - 16);
    result = v14(&v32, &v29);
    if (result)
    {
      v18 = (a2 - 48);
      v28 = *(a2 - 48);
      v19 = *(a2 - 32);
      v20 = *(a2 - 24);
      v21 = *(a2 - 16);
      v22 = *(a2 - 8);
      do
      {
        v23 = v18;
        v18 = v15;
        v24 = *v15;
        v25 = v15[2];
        v23[1] = v15[1];
        v23[2] = v25;
        *v23 = v24;
        if (!v13)
        {
          break;
        }

        v13 = (v13 - 1) >> 1;
        v26 = *a3;
        v15 = (v12 + 48 * v13);
        v27 = v15[1];
        v32 = *v15;
        v33 = v27;
        v34 = v15[2];
        v29 = v28;
        *&v30 = v19;
        *(&v30 + 1) = v20;
        *&v31 = v21;
        *(&v31 + 1) = v22;
        result = v26(&v32, &v29);
      }

      while ((result & 1) != 0);
      *v18 = v28;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      *(v18 + 4) = v21;
      *(v18 + 5) = v22;
    }
  }

  return result;
}

uint64_t *PCBinaryTree<PCEdgeSegment>::~PCBinaryTree(uint64_t *a1)
{
  PCBinaryTree<PCEdgeSegment>::removeBranch(a1, *a1);
  *a1 = 0;
  return a1;
}

uint64_t PCBinaryTree<PCEdgeSegment>::removeBranch(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    PCBinaryTree<PCEdgeSegment>::removeBranch(result, *(a2 + 40));
    PCBinaryTree<PCEdgeSegment>::removeBranch(v3, *(a2 + 48));
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t *PCBinaryTree<PCEdgeSegment>::insertNode(uint64_t **a1, uint64_t a2, double *a3)
{
  if (!a2)
  {
    operator new();
  }

  if (PCEdgeSegment::operator<(a3, a2))
  {
    inserted = PCBinaryTree<PCEdgeSegment>::insertNode(a1, *(a2 + 40), a3);
    *(a2 + 40) = inserted;
    if (!inserted)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  inserted = PCBinaryTree<PCEdgeSegment>::insertNode(a1, *(a2 + 48), a3);
  *(a2 + 48) = inserted;
  if (inserted)
  {
LABEL_4:
    *(inserted + 56) = a2;
  }

LABEL_5:
  v7 = *a1;
  result = PCBinaryTree<PCEdgeSegment>::balance(a1, a2);
  if (v7 == a2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *PCBinaryTree<PCEdgeSegment>::balance(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  NodeHeight = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, a2[5]);
  v5 = NodeHeight - PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, a2[6]);
  if (v5 < 2)
  {
    if (v5 > -2)
    {
      return a2;
    }

    if (PCBinaryTree<PCEdgeSegment>::getNodeHeightDelta(a1, a2[6]) < 1)
    {
      result = a2[6];
      v6 = a2[7];
      v12 = result[5];
      a2[6] = v12;
      if (v12)
      {
        *(v12 + 56) = a2;
      }

      result[5] = a2;
      a2[7] = result;
      goto LABEL_19;
    }

    v9 = a1;
    v10 = a2;
    v11 = 3;
  }

  else
  {
    if (PCBinaryTree<PCEdgeSegment>::getNodeHeightDelta(a1, a2[5]) >= 1)
    {
      v6 = a2[7];
      result = a2[5];
      v8 = result[6];
      a2[5] = v8;
      if (v8)
      {
        *(v8 + 56) = a2;
      }

      a2[7] = result;
      result[6] = a2;
LABEL_19:
      result[7] = v6;
      return result;
    }

    v9 = a1;
    v10 = a2;
    v11 = 2;
  }

  return PCBinaryTree<PCEdgeSegment>::rotate(v9, v10, v11);
}

uint64_t PCBinaryTree<PCEdgeSegment>::getNodeHeightDelta(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  NodeHeight = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 40));
  return NodeHeight - PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 48));
}

void *PCBinaryTree<PCEdgeSegment>::rotate(uint64_t a1, void *a2, int a3)
{
  v4 = a2[7];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = PCBinaryTree<PCEdgeSegment>::rotate(a1, a2[5], 0);
      a2[5] = v8;
      if (v8)
      {
        *(v8 + 56) = a2;
      }

      v9 = a1;
      v10 = a2;
      v11 = 1;
    }

    else
    {
      v13 = PCBinaryTree<PCEdgeSegment>::rotate(a1, a2[6], 1);
      a2[6] = v13;
      if (v13)
      {
        *(v13 + 56) = a2;
      }

      v9 = a1;
      v10 = a2;
      v11 = 0;
    }

    result = PCBinaryTree<PCEdgeSegment>::rotate(v9, v10, v11);
  }

  else
  {
    if (a3)
    {
      result = a2[5];
      v12 = result[6];
      a2[5] = v12;
      if (v12)
      {
        *(v12 + 56) = a2;
      }

      result[6] = a2;
    }

    else
    {
      result = a2[6];
      v6 = result[5];
      a2[6] = v6;
      if (v6)
      {
        *(v6 + 56) = a2;
      }

      result[5] = a2;
    }

    a2[7] = result;
  }

  result[7] = v4;
  return result;
}

uint64_t PCBinaryTree<PCEdgeSegment>::getNodeHeight(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  NodeHeight = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 40));
  v5 = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 48));
  if (NodeHeight <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = NodeHeight;
  }

  return (v6 + 1);
}

uint64_t ProCore_Private::PCBitmapRepDefault::PCBitmapRepDefault(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  *a1 = &unk_287207418;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  v7 = (a5 + PCPixelFormat::getBytesPerPixel(a4) * a2 - 1) / a5 * a5;
  *(a1 + 20) = v7;
  v8 = getpagesize();
  v9 = v8 + v7 * a3 - 1;
  v10 = v9 / v8 * v8;
  *(a1 + 24) = v10;
  if (v9 == v9 - v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v10, 0xFB7FC5CFuLL);
  }

  *(a1 + 32) = v11;
  return a1;
}

void ProCore_Private::PCBitmapRepDefault::~PCBitmapRepDefault(ProCore_Private::PCBitmapRepDefault *this)
{
  *this = &unk_287207418;
  v1 = *(this + 4);
  if (v1)
  {
    free(v1);
  }
}

{
  *this = &unk_287207418;
  v1 = *(this + 4);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x2666E9F00);
}

void _PCMod_error(const char *a1, const char *a2, int a3)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v8, a1);
  PCString::PCString(&v7, a2);
  PCException::PCException(exception, &v8, &v7, a3);
  *exception = &unk_2872DE188;
}

void sub_25FB76898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void PCException::PCException(PCException *this, const PCString *a2, const PCString *a3, int a4)
{
  *this = &unk_287207540;
  *(this + 1) = 0;
  PCString::PCString(this + 2, a2);
  PCString::PCString(this + 3, a3);
  *(this + 8) = a4;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
}

void sub_25FB76954(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 16));
  PCCFRef<__CFArray const*>::~PCCFRef(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void PCIllegalArgumentException::~PCIllegalArgumentException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void **PCException::what(const PCString *this)
{
  var0_high = SHIBYTE(this[7].var0);
  if (var0_high < 0)
  {
    var0 = this[6].var0;
  }

  else
  {
    var0 = SHIBYTE(this[7].var0);
  }

  p_var0 = &this[5].var0;
  if (var0)
  {
    if ((var0_high & 0x80) == 0)
    {
      return p_var0;
    }

    return *p_var0;
  }

  PCException::getInfo(this, &v6);
  PCString::operator std::string(&v6, &v7);
  if (SHIBYTE(this[7].var0) < 0)
  {
    operator delete(*p_var0);
  }

  *p_var0 = v7;
  this[7].var0 = v8;
  HIBYTE(v8) = 0;
  LOBYTE(v7) = 0;
  PCString::~PCString(&v6);
  if ((HIBYTE(this[7].var0) & 0x80) != 0)
  {
    return *p_var0;
  }

  return p_var0;
}

PCString *PCException::getInfo@<X0>(const PCString *this@<X0>, PCString *a2@<X8>)
{
  v4 = &this[2];
  (this->var0->length)(this);
  result = PCString::size(v4);
  if (result)
  {
    PCString::PCString(&v6, ": ");
    PCString::append(a2, &v6);
    PCString::~PCString(&v6);
    result = PCString::append(a2, v4);
  }

  if (LODWORD(this[4].var0))
  {
    PCString::append(a2, " (");
    PCString::append(a2, this + 3);
    PCString::append(a2, ":");
    PCString::ssprintf("%d", &v6, LODWORD(this[4].var0));
    PCString::append(a2, &v6);
    PCString::~PCString(&v6);
    return PCString::append(a2, ")");
  }

  return result;
}

void sub_25FB76B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCString::~PCString(v10);
  _Unwind_Resume(a1);
}

void PCString::operator std::string(PCString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStr = PCString::createCStr(a1);
  v4 = strlen(CStr);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, CStr, v4);
  }

  a2[v5] = 0;

  free(CStr);
}

void PCException::~PCException(PCString *this)
{
  this->var0 = &unk_287207540;
  if (SHIBYTE(this[7].var0) < 0)
  {
    operator delete(this[5].var0);
  }

  PCString::~PCString(this + 3);
  PCString::~PCString(this + 2);
  PCCFRef<__CFArray const*>::~PCCFRef(&this[1].var0);

  std::exception::~exception(this);
}

{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

UInt8 *PCCreatePrivateColorSpaceFromColorSpace(const char *a1, CGColorSpaceRef space)
{
  v4 = CGColorSpaceCopyICCData(space);
  v5 = ColorSyncProfileCreate(v4, 0);
  MutableCopy = ColorSyncProfileCreateMutableCopy(v5);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    v8 = strlen(a1);
    v9 = (v8 + 91);
    Mutable = CFDataCreateMutable(0, v9);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = (v8 + 1);
      CFDataSetLength(Mutable, v9);
      MutableBytePtr = CFDataGetMutableBytePtr(v11);
      bzero(MutableBytePtr, v9);
      *MutableBytePtr = 1668506980;
      *(MutableBytePtr + 2) = bswap32(v12);
      memcpy(MutableBytePtr + 12, a1, v12);
      ColorSyncProfileSetTag(v7, @"desc", v11);
      CFRelease(v11);
      MD5 = ColorSyncProfileGetMD5(v7);
      theData = ColorSyncProfileCopyHeader(v7);
      Length = CFDataGetLength(theData);
      std::vector<unsigned char>::vector[abi:ne200100](&buffer, Length);
      v25.location = 0;
      v25.length = Length;
      CFDataGetBytes(theData, v25, buffer);
      *(buffer + 84) = MD5;
      v16 = CFDataCreate(*MEMORY[0x277CBECE8], buffer, v23 - buffer);
      v21 = v16;
      if (theData && theData != v16)
      {
        CFRelease(theData);
        v16 = v21;
      }

      theData = v16;
      v21 = 0;
      PCCFRef<__CTLine const*>::~PCCFRef(&v21);
      ColorSyncProfileSetHeader(v7, theData);
      if (buffer)
      {
        v23 = buffer;
        operator delete(buffer);
      }

      PCCFRef<__CTLine const*>::~PCCFRef(&theData);
      v17 = MEMORY[0x2666E8970](v7, 0);
      buffer = v17;
      if (CGColorSpaceUsesExtendedRange(space))
      {
        PCCreateExtendedColorSpace(&buffer, &theData);
        v18 = theData;
        if (buffer && buffer != theData)
        {
          PCCFRefTraits<CGColorSpace *>::release(buffer);
          v18 = theData;
        }

        buffer = v18;
        theData = 0;
        PCCFRef<CGColorSpace *>::~PCCFRef(&theData);
        v17 = buffer;
      }

      CGColorSpaceRetain(v17);
      v19 = buffer;
      PCCFRef<CGColorSpace *>::~PCCFRef(&buffer);
    }

    else
    {
      v19 = 0;
    }

    CFRelease(v7);
    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    if (v5)
    {
LABEL_18:
      CFRelease(v5);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v19;
}

void sub_25FB76F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, CGColorSpace *a14)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a14);
  PCCFRef<CGColorSpace *>::~PCCFRef(&__p);
  _Unwind_Resume(a1);
}

CGColorSpace *PCCreateColorSpaceFromAttachments(const __CFDictionary *a1)
{
  ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(a1);
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CC4CC0]);
  if (!Value)
  {
    return ColorSpaceFromAttachments;
  }

  v4 = Value;
  v5 = *MEMORY[0x277CC4CF0];
  if (!CFEqual(Value, *MEMORY[0x277CC4CF0]) && !CFEqual(v4, *MEMORY[0x277CC4CD0]))
  {
    return ColorSpaceFromAttachments;
  }

  v6 = CFDictionaryGetValue(a1, *MEMORY[0x277CC4C00]);
  v7 = CFDictionaryGetValue(a1, *MEMORY[0x277CC4D10]);
  if (!v6 || v7 == 0)
  {
    return ColorSpaceFromAttachments;
  }

  if (v5 == v4)
  {
    v9 = CFStringCreateWithFormat(0, 0, @"%@ / PQ / %@", v6, v7);
  }

  else
  {
    if (*MEMORY[0x277CC4CD0] != v4)
    {
      return ColorSpaceFromAttachments;
    }

    v9 = CFStringCreateWithFormat(0, 0, @"%@ / HLG / %@", v6, v7);
  }

  if (v9)
  {
    v10 = v9;
    v11 = PCCreatePrivateColorSpaceFromColorSpace([(__CFString *)v9 UTF8String], ColorSpaceFromAttachments);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
    CFRelease(v10);
    return v11;
  }

  return ColorSpaceFromAttachments;
}

BOOL PCIsHDRColorSpace(CGColorSpace *a1)
{
  if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  if (CGColorSpaceUsesITUR_2100TF(a1))
  {
    return 1;
  }

  return PCIsLinearColorSpace(a1);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25FB771FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25FB772C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double operator*@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, *a2, *(a2 + 8), a3);
}

double operator/@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, *(a2 + 8), *a2, a3);
}

double operator/@<D0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, 1, a2, a3);
}

double operator/@<D0>(__int128 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, 1, a2, a3);
}

double operator/@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 2);
  if (v5 && v5 < 0x20000)
  {
    while (vabdd_f64(floor(v5 * a3) / v5, a3) >= 0.00001)
    {
      v6 = 2 * v5;
      v7 = v5 < 0x10000;
      v5 *= 2;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  v6 = v5;
LABEL_7:
  v11 = v3;
  v12 = v4;
  v9 = *a1;
  v10 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v9, v6, (v6 * a3), a2);
}

CFDictionaryRef CMTimeRangeCopyAsDictionary(CMTimeRange *range, CFAllocatorRef allocator)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CC08C0];
  keys[0] = *MEMORY[0x277CC08D8];
  keys[1] = v4;
  start = range->start;
  v5 = CMTimeCopyAsDictionary(&start, allocator);
  p_values = &values;
  start = range->duration;
  values = v5;
  v13 = CMTimeCopyAsDictionary(&start, allocator);
  v7 = CFDictionaryCreate(allocator, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = 1;
  do
  {
    v9 = v8;
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    v8 = 0;
    p_values = &v13;
  }

  while ((v9 & 1) != 0);
  return v7;
}

CMTimeRange *__cdecl CMTimeRangeMakeFromDictionary(CMTimeRange *__return_ptr retstr, CFDictionaryRef dictionaryRepresentation)
{
  memset(&v8, 0, sizeof(v8));
  Value = CFDictionaryGetValue(dictionaryRepresentation, *MEMORY[0x277CC08D8]);
  CMTimeMakeFromDictionary(&v8, Value);
  memset(&v7, 0, sizeof(v7));
  v5 = CFDictionaryGetValue(dictionaryRepresentation, *MEMORY[0x277CC08C0]);
  CMTimeMakeFromDictionary(&v7, v5);
  v10 = v8;
  v9 = v7;
  return CMTimeRangeSaferMake(&v10, &v9, &retstr->start);
}

BOOL _svdCall(uint64_t a1, uint64_t a2)
{
  PCGenMatrix<double>::copy(a2, 0, &v74);
  PCGenMatrix<double>::resize((a1 + 24), v75, v76, 0);
  v4 = *(a1 + 32);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 48);
    v7 = *(a1 + 44);
    v8 = *(a1 + 36);
    v9 = vdupq_n_s64(v8 - 1);
    v10 = 8 * *(a1 + 40);
    v11 = vdupq_n_s64(2uLL);
    do
    {
      if (v8 >= 1)
      {
        v12 = (v8 + 1) & 0xFFFFFFFE;
        v13 = v6;
        v14 = xmmword_260343E00;
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v9, v14));
          if (v15.i8[0])
          {
            *v13 = 0;
          }

          if (v15.i8[4])
          {
            v13[v7] = 0;
          }

          v14 = vaddq_s64(v14, v11);
          v13 += 2 * v7;
          v12 -= 2;
        }

        while (v12);
      }

      ++v5;
      v6 = (v6 + v10);
    }

    while (v5 != v4);
  }

  PCGenMatrix<double>::resize((a1 + 56), v76, v76, 1);
  v16 = *(a1 + 64);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 80);
    v19 = *(a1 + 76);
    v20 = *(a1 + 68);
    v21 = vdupq_n_s64(v20 - 1);
    v22 = 8 * *(a1 + 72);
    v23 = vdupq_n_s64(2uLL);
    do
    {
      if (v20 >= 1)
      {
        v24 = (v20 + 1) & 0xFFFFFFFE;
        v25 = v18;
        v26 = xmmword_260343E00;
        do
        {
          v27 = vmovn_s64(vcgeq_u64(v21, v26));
          if (v27.i8[0])
          {
            *v25 = 0;
          }

          if (v27.i8[4])
          {
            v25[v19] = 0;
          }

          v26 = vaddq_s64(v26, v23);
          v25 += 2 * v19;
          v24 -= 2;
        }

        while (v24);
      }

      ++v17;
      v18 = (v18 + v22);
    }

    while (v17 != v16);
  }

  PCGenVector<double>::resize(a1 + 88, *(a2 + 12));
  v28 = *(a1 + 96);
  if (v28 >= 1)
  {
    v29 = *(a1 + 104);
    v30 = *(a1 + 100);
    v31 = vdupq_n_s64(v28 - 1);
    v32 = (v28 + 1) & 0xFFFFFFFE;
    v33 = xmmword_260343E00;
    v34 = vdupq_n_s64(2uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v31, v33));
      if (v35.i8[0])
      {
        *v29 = 0;
      }

      if (v35.i8[4])
      {
        v29[v30] = 0;
      }

      v33 = vaddq_s64(v33, v34);
      v29 += 2 * v30;
      v32 -= 2;
    }

    while (v32);
  }

  PCGenVector<double>::resize(a1 + 112, *(a2 + 12));
  v36 = *(a1 + 120);
  if (v36 >= 1)
  {
    v37 = *(a1 + 128);
    v38 = *(a1 + 124);
    v39 = vdupq_n_s64(v36 - 1);
    v40 = (v36 + 1) & 0xFFFFFFFE;
    v41 = xmmword_260343E00;
    v42 = vdupq_n_s64(2uLL);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v39, v41));
      if (v43.i8[0])
      {
        *v37 = 0;
      }

      if (v43.i8[4])
      {
        v37[v38] = 0;
      }

      v41 = vaddq_s64(v41, v42);
      v37 += 2 * v38;
      v40 -= 2;
    }

    while (v40);
  }

  PCGenVector<double>::resize(a1 + 136, 0);
  v45 = v75;
  v44 = v76;
  if (v75 >= 1)
  {
    v46 = 0;
    do
    {
      if (v44 >= 1)
      {
        v47 = 0;
        do
        {
          PCGenMatrix<double>::checkColIndex(&v74, v47);
          PCGenMatrix<double>::checkRowIndex(&v74, v46);
          if ((*&v79[v78 * v47 + v77 * v46] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            PCGenMatrix<double>::operator()(&v74, v46, v47);
            exception = __cxa_allocate_exception(0x40uLL);
            PCString::PCString(&v64, "NaN");
            PCException::PCException(exception, &v64);
            *exception = &unk_2872DE188;
          }

          v47 = (v47 + 1);
          v44 = v76;
        }

        while (v47 < v76);
        v45 = v75;
      }

      v46 = (v46 + 1);
    }

    while (v46 < v45);
  }

  __jobu = 83;
  __jobvt = 65;
  __n = v44;
  __m = v45;
  __ldu = v45;
  __lda = v45;
  __ldvt = v44;
  if (v45 <= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v45;
  }

  v49 = 10 * v48;
  v50 = 2 * v45 * v44;
  if (v49 <= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v49;
  }

  __lwork = v51;
  PCGenVector<double>::PCGenVector(&v64, v51, 0.0);
  v63 = 0;
  v52 = dgesvd_(&__jobu, &__jobvt, &__m, &__n, v79, &__lda, *(a1 + 104), *(a1 + 48), &__ldu, *(a1 + 80), &__ldvt, v65, &__lwork, &v63);
  v53 = v63;
  v54 = v52 | v63;
  *(a1 + 224) = (v52 | v63) == 0;
  if (v53 < 0)
  {
    v61 = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("dgesvd: bad parameter %d", &v62, -v63);
    PCException::PCException(v61, &v62);
  }

  var0 = v64.var0;
  if (v64.var0)
  {
    v56 = HIDWORD(v64.var0[-1].length) - 1;
    HIDWORD(v64.var0[-1].length) = v56;
    if (!v56)
    {
      MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
    }
  }

  v57 = v74;
  if (v74)
  {
    v58 = *(v74 - 4) - 1;
    *(v74 - 4) = v58;
    if (!v58)
    {
      MEMORY[0x2666E9ED0](v57 - 8, 0x1000C8077774924);
    }
  }

  return v54 == 0;
}

void sub_25FB78890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, PCString a16, uint64_t a17, PCString a18)
{
  PCString::~PCString(&a16);
  var0 = a18.var0;
  if (a18.var0)
  {
    v21 = HIDWORD(a18.var0[-1].length) - 1;
    HIDWORD(a18.var0[-1].length) = v21;
    if (!v21)
    {
      MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
    }
  }

  v22 = *(v18 - 80);
  if (v22)
  {
    v23 = *(v22 - 4) - 1;
    *(v22 - 4) = v23;
    if (!v23)
    {
      MEMORY[0x2666E9ED0](v22 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

_DWORD *PCGenMatrix<double>::copy@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  PCGenBlockRef<double>::PCGenBlockRef(a3, v7 * v6);
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
  return PCGenMatrix<double>::set<double>(a3, a1);
}

_DWORD *PCGenMatrix<double>::resize(_DWORD *result, int a2, int a3, int a4)
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

  result = PCGenBlockRef<double>::PCGenBlockRef(&v32, a3 * a2);
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
    PCGenMatrix<double>::operator()(result, v30, v29, v31);
    v27[0] = 0;
    v27[1] = v18;
    v26[0] = 0;
    v26[1] = v20;
    PCGenMatrix<double>::operator()(v6, v27, v26, v28);
    result = PCGenMatrix<double>::set<double>(v31, v28);
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

void sub_25FB78C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a11)
  {
    v19 = *(a11 - 4) - 1;
    *(a11 - 4) = v19;
    if (!v19)
    {
      MEMORY[0x2666E9ED0](a11 - 8, 0x1000C8077774924);
    }
  }

  if (a17)
  {
    v20 = *(a17 - 4) - 1;
    *(a17 - 4) = v20;
    if (!v20)
    {
      MEMORY[0x2666E9ED0](a17 - 8, 0x1000C8077774924);
    }
  }

  v21 = *(v17 - 80);
  if (v21)
  {
    v22 = *(v21 - 4) - 1;
    *(v21 - 4) = v22;
    if (!v22)
    {
      MEMORY[0x2666E9ED0](v21 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

void PCGenVector<double>::resize(uint64_t a1, int a2)
{
  if (*(a1 + 8) != a2)
  {
    v15[5] = v2;
    v15[6] = v3;
    PCGenBlockRef<double>::PCGenBlockRef(v15, a2);
    v6 = *(a1 + 8);
    if (a2 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    v8 = v15[0];
    bzero(v15[0], 8 * a2);
    v9 = *(a1 + 12);
    v10 = *(a1 + 16);
    if (v9 == 1)
    {
      if (v10)
      {
        memcpy(v8, v10, 8 * v7);
      }
    }

    else if (v10 && v7 >= 1)
    {
      v11 = 8 * v9;
      v12 = v8;
      do
      {
        *v12++ = *v10;
        v10 = (v10 + v11);
        --v7;
      }

      while (v7);
    }

    v13 = v15[0];
    if (*a1 != v15[0])
    {
      PCGenBlockRef<double>::deref(a1);
      *a1 = v13;
      if (v13)
      {
        ++*(v13 - 1);
      }

      v13 = v15[0];
    }

    *(a1 + 16) = v8;
    *(a1 + 8) = a2;
    *(a1 + 12) = 1;
    if (v13)
    {
      v14 = *(v13 - 1) - 1;
      *(v13 - 1) = v14;
      if (!v14)
      {
        MEMORY[0x2666E9ED0](v13 - 2, 0x1000C8077774924);
      }
    }
  }
}

uint64_t PCGenMatrix<double>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  PCGenMatrix<double>::checkColIndex(a1, a3);
  PCGenMatrix<double>::checkRowIndex(a1, a2);
  return *(a1 + 24) + 8 * (*(a1 + 20) * v3 + *(a1 + 16) * a2);
}

void PCException::PCException(PCException *this, const PCString *a2)
{
  *this = &unk_287207540;
  *(this + 1) = 0;
  PCString::PCString(this + 2, a2);
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
}

void sub_25FB78EA0(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 16));
  PCCFRef<__CFArray const*>::~PCCFRef(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void *PCGenBlockRef<double>::PCGenBlockRef(void *result, int a2)
{
  if (a2)
  {
    operator new[]();
  }

  *result = 0;
  return result;
}

void *PCGenBlockRef<double>::deref(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(v1 - 4) - 1;
    *(v1 - 4) = v2;
    if (!v2)
    {
      v3 = result;
      result = MEMORY[0x2666E9ED0](v1 - 8, 0x1000C8077774924);
      *v3 = 0;
    }
  }

  return result;
}

void PCMatrixErrorException::~PCMatrixErrorException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

_DWORD *PCGenMatrix<double>::set<double>(_DWORD *result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = result[2];
    if (v4 != *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenMatrix row mismatch %d != %d", &v31, v3[2], *(a2 + 8));
      PCException::PCException(exception, &v31);
      *exception = &unk_2872074D0;
    }

    v5 = result[3];
    if (v5 != *(a2 + 12))
    {
      v30 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf("PCGenMatrix col mismatch %d != %d", &v31, v3[3], *(a2 + 12));
      PCException::PCException(v30, &v31);
      *v30 = &unk_2872074D0;
    }

    v6 = *result;
    if (!*result)
    {
      result = PCGenMatrix<double>::resize(result, v4, v5, result[5] == 1);
      v6 = *v3;
    }

    if (*a2 == v6)
    {
      v31.var0 = 0;
      v32 = 0;
      v33 = 0x100000001;
      v34 = 0;
      result = PCGenMatrix<double>::set<double>(&v31, a2);
      v17 = v3[2];
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = 0;
        v20 = v3[3];
        v21 = v34;
        v22 = 8 * v33;
        v23 = 8 * SHIDWORD(v33);
        do
        {
          if (v20 >= 1)
          {
            v24 = (*(v3 + 3) + v18 * v3[4]);
            v25 = 8 * v3[5];
            v26 = v20;
            result = v21;
            do
            {
              *v24 = *result;
              v24 = (v24 + v25);
              result = (result + v23);
              --v26;
            }

            while (v26);
          }

          ++v19;
          v18 += 8;
          v21 = (v21 + v22);
        }

        while (v19 != v17);
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
      v7 = v3[2];
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = v3[3];
        v11 = *(a2 + 24);
        v12 = 8 * *(a2 + 16);
        v13 = 8 * *(a2 + 20);
        do
        {
          if (v10 >= 1)
          {
            v14 = (*(v3 + 3) + v8 * v3[4]);
            v15 = 8 * v3[5];
            v16 = v10;
            result = v11;
            do
            {
              *v14 = *result;
              v14 = (v14 + v15);
              result = (result + v13);
              --v16;
            }

            while (v16);
          }

          ++v9;
          v8 += 8;
          v11 = (v11 + v12);
        }

        while (v9 != v7);
      }
    }
  }

  return result;
}

uint64_t PCGenMatrix<double>::operator()@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  PCGenMatrix<double>::checkRowIndex(a1, *a2);
  PCGenMatrix<double>::checkRowIndex(a1, a2[1]);
  PCGenMatrix<double>::checkColIndex(a1, *a3);
  result = PCGenMatrix<double>::checkColIndex(a1, a3[1]);
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
  *(a4 + 24) = v15 + 8 * v13 * v10 + 8 * v14 * v12;
  return result;
}

uint64_t PCGenMatrix<double>::checkRowIndex(uint64_t result, uint64_t a2)
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

uint64_t PCGenMatrix<double>::checkColIndex(uint64_t result, uint64_t a2)
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

uint64_t *PCGenVector<double>::PCGenVector(uint64_t *a1, uint64_t a2, double a3)
{
  v6 = PCGenBlockRef<double>::PCGenBlockRef(a1, a2);
  *(v6 + 2) = a2;
  *(v6 + 3) = 1;
  if ((a2 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("PCGenVector length %d must be nonnegative", &v14, a2);
    PCException::PCException(exception, &v14);
    *exception = &unk_2872074D0;
  }

  v7 = *a1;
  a1[2] = *a1;
  if (a2)
  {
    v8 = 0;
    v9 = vdupq_n_s64(a2 - 1);
    v10 = (v7 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v8), xmmword_260343E00)));
      if (v11.i8[0])
      {
        *(v10 - 1) = a3;
      }

      if (v11.i8[4])
      {
        *v10 = a3;
      }

      v8 += 2;
      v10 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFE) != v8);
  }

  return a1;
}

void sub_25FB79698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCGenBlockRef<double>::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t PCGenVector<double>::set<double>(uint64_t a1, uint64_t a2)
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
      PCGenBlockRef<double>::PCGenBlockRef(&v19, *(a1 + 8));
      v20 = v4;
      v21 = 1;
      var0 = v19.var0;
      PCGenVector<double>::set<double>(&v19, a2);
      v10 = *(a1 + 8);
      if (v10 >= 1)
      {
        v11 = var0;
        v12 = *(a1 + 16);
        v13 = 8 * *(a1 + 12);
        v14 = 8 * v21;
        do
        {
          *v12 = v11->isa;
          v12 = (v12 + v13);
          v11 = (v11 + v14);
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
      v7 = *(a1 + 16);
      v8 = 8 * *(a1 + 12);
      v9 = 8 * *(a2 + 12);
      do
      {
        *v7 = *v6;
        v7 = (v7 + v8);
        v6 = (v6 + v9);
        --v4;
      }

      while (v4);
    }
  }

  return a1;
}

void OUTLINED_FUNCTION_0()
{

  JUMPOUT(0x2666E9ED0);
}

void PCGenMatrix<double>::set<double>(uint64_t a1)
{
  v1 = *(a1 - 4) - 1;
  *(a1 - 4) = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_0();
  }
}

void PCException::report(const PCString *this)
{
  PCException::getInfo(this, &v5);
  v1 = PCString::createCStr(&v5);
  v2 = v1;
  if (v1)
  {
    v3 = strlen(v1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], v2, v3);
    free(v2);
  }

  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v4 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  std::ostream::flush();
  PCString::~PCString(&v5);
}

void sub_25FB79A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

void throw_PCNullPointerException(BOOL a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCNullPointerException::PCNullPointerException(exception, a1);
}

void PCNullPointerException::PCNullPointerException(PCNullPointerException *this, int a2)
{
  PCException::PCException(this);
  *v4 = &unk_287207580;
  if (a2)
  {
    PCException::addCallStackSymbols(this);
  }
}

void PCException::PCException(PCException *this)
{
  *this = &unk_287207540;
  *(this + 1) = 0;
  PCSharedCount::PCSharedCount(this + 2);
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
}

void sub_25FB79BD0(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 16));
  PCCFRef<__CFArray const*>::~PCCFRef(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void PCNullPointerException::~PCNullPointerException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void sub_25FB79E08(void *a1)
{
  objc_begin_catch(a1);
  [0 error];
  NSLog(&cfstr_UnableToUnarch.isa);
  objc_end_catch();
  JUMPOUT(0x25FB79DF0);
}

CGColorSpaceRef PCCreateExtendedColorSpace@<X0>(CGColorSpace **a1@<X0>, CGColorSpaceRef *a2@<X8>)
{
  result = createExtendedColorSpace(*a1);
  *a2 = result;
  return result;
}

CGColorSpaceRef createExtendedColorSpace(CGColorSpace *a1)
{
  if (CGColorSpaceUsesExtendedRange(a1))
  {
LABEL_2:

    return CGColorSpaceRetain(a1);
  }

  {
    createExtendedColorSpace(CGColorSpace *)::deviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v3 = CFHash(createExtendedColorSpace(CGColorSpace *)::deviceRGB);
  if (v3 != CFHash(a1))
  {
    result = CGColorSpaceCreateExtended(a1);
    if (result)
    {
      return result;
    }

    goto LABEL_2;
  }

  v4 = *MEMORY[0x277CBF430];

  return CGColorSpaceCreateWithName(v4);
}

void PCInit(void)
{
  v16 = *MEMORY[0x277D85DE8];
  {
    v0 = getrlimit(8, &v14);
    if (!v0)
    {
      *v15 = 0x1D00000001;
      v13 = 0;
      v12 = 4;
      v0 = sysctl(v15, 2u, &v13, &v12, 0, 0);
      if (!v0)
      {
        v10 = v13;
        if (v13 >= 10240)
        {
          v10 = 10240;
        }

        v14.rlim_cur = v10;
        v0 = setrlimit(8, &v14);
      }
    }

    inited = ProCore::Private::initChromaticityMath(v0, v3, v4, v5, v6, v7, v8, v9, v1, v2);
    ProCore::Private::initColorSpaceHandle(inited);
  }
}

uint64_t PCBitDepth::getFromBitsPerChannel(PCBitDepth *this, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (this != 16)
  {
    v2 = 0;
  }

  if (this == 32)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PCBitmap::sanitizeColorSpace(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  if (!a1)
  {
    hasRGB = PCPixelFormat::hasRGB(a2);
    if (hasRGB)
    {
      DefaultRGBCGColorSpace = PCInfo::getDefaultRGBCGColorSpace(hasRGB);
    }

    else
    {
      hasGray = PCPixelFormat::hasGray(a2);
      if (!hasGray)
      {
        v3 = 0;
        goto LABEL_8;
      }

      DefaultRGBCGColorSpace = PCInfo::getDefaultGrayscaleCGColorSpace(hasGray);
    }

    v3 = DefaultRGBCGColorSpace;
  }

LABEL_8:
  if ((PCPixelFormat::hasRGB(a2) & 1) == 0 && !PCPixelFormat::hasGray(a2))
  {
    return 0;
  }

  return v3;
}

void PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(**a2 + 32))();
  v7 = (*(**a2 + 40))();
  v8 = (*(**a2 + 48))();
  BitsPerChannel = PCPixelFormat::getBitsPerChannel(v8);
  v10 = (*(**a2 + 48))();
  NumChannels = PCPixelFormat::getNumChannels(v10);
  v12 = (*(**a2 + 48))();
  v13 = PCBitmap::sanitizeColorSpace(a3, v12);
  PCImage::PCImage(a1, v6, v7, BitsPerChannel, NumChannels, v13);
  *a1 = &unk_2872075C0;
  v14 = *a2;
  *a2 = 0;
  *(a1 + 64) = v14;
  *(a1 + 24) = 1;
}

void PCBitmap::PCBitmap()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_25FB7A51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void sub_25FB7A61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap::copy(PCBitmap *this, PCBitmap *a2)
{
  PCImage::getColorSpace(a2, &v8);
  (*(*this + 56))(this, &v8);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
  v4 = (*(*a2 + 48))(a2);
  PCImage::setIsPremultiplied(this, v4);
  v5 = (*(*this + 16))(this);
  v7 = 1;
  if (v5 == (*(*a2 + 16))(a2))
  {
    v6 = (*(*this + 24))(this);
    if (v6 == (*(*a2 + 24))(a2))
    {
      v7 = 0;
    }
  }
}

void sub_25FB7A9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCBitmap::~PCBitmap(PCBitmap *this)
{
  *this = &unk_2872075C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PCImage::~PCImage(this);
}

{
  PCBitmap::~PCBitmap(this);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap::PCBitmap(PCBitmap *this, const PCBitmap *a2)
{
  (*(*a2 + 16))(a2);
  (*(*a2 + 24))(a2);
  (*(**(a2 + 8) + 48))(*(a2 + 8));
  operator new();
}

void anonymous namespace::copyBitmapImageUsingCG(_anonymous_namespace_ *this, PCBitmap *a2, PCBitmap *a3)
{
  v3 = a3;
  if (!(*(*this + 16))(this) || !(*(*this + 24))(this) || !(*(*a2 + 16))(a2) || !(*(*a2 + 24))(a2))
  {
    return;
  }

  v6 = (*(*this + 16))(this);
  v7 = (*(*this + 24))(this);
  v8 = (*(*a2 + 16))(a2);
  v9 = (*(*a2 + 24))(a2);
  v10 = v6 == v8 && v7 == v9;
  if (!v10 || (PCImage::getColorSpace(this, image), PCImage::getColorSpace(a2, c), isSameColorSpace = PCColorSpaceHandle::isSameColorSpace(image, c, v11), PCCFRef<CGColorSpace *>::~PCCFRef(c), PCCFRef<CGColorSpace *>::~PCCFRef(image), !isSameColorSpace) || (v13 = (*(*this + 48))(this), v13 != (*(*a2 + 48))(a2)))
  {
LABEL_12:
    v14 = (*(**(this + 8) + 48))(*(this + 8));
    hasAlpha = PCPixelFormat::hasAlpha(v14);
    v16 = (*(**(a2 + 8) + 48))(*(a2 + 8));
    if (PCPixelFormat::hasGray(v16))
    {
      v17 = PCPixelFormat::hasAlpha(v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(**(this + 8) + 48))(*(this + 8));
    if (v18 > 0x11 || ((1 << v18) & 0x3C1AE) == 0)
    {
      v21 = image[0];
      v83 = image[1];
    }

    else
    {
      v83 = 0;
      v21 = this;
    }

    if ((hasAlpha & v17) == 1)
    {
      v22 = (*(**(this + 8) + 48))(*(this + 8));
      if (v22 > 9)
      {
        if (v22 > 14)
        {
          switch(v22)
          {
            case 15:
              v54 = (*(*this + 16))(this);
              v55 = (*(*this + 24))(this);
              v56 = PCBitmap::sanitizeColorSpace(0, 0xEu);
              PCCreateBitmap(v54, v55, 14, v56);
            case 16:
              v66 = (*(*this + 16))(this);
              v67 = (*(*this + 24))(this);
              v68 = PCBitmap::sanitizeColorSpace(0, 0xEu);
              PCCreateBitmap(v66, v67, 14, v68);
            case 17:
              v40 = (*(*this + 16))(this);
              v41 = (*(*this + 24))(this);
              v42 = PCBitmap::sanitizeColorSpace(0, 0xEu);
              PCCreateBitmap(v40, v41, 14, v42);
          }
        }

        else
        {
          switch(v22)
          {
            case 10:
              v48 = (*(*this + 16))(this);
              v49 = (*(*this + 24))(this);
              v50 = PCBitmap::sanitizeColorSpace(0, 7u);
              PCCreateBitmap(v48, v49, 7, v50);
            case 12:
              v60 = (*(*this + 16))(this);
              v61 = (*(*this + 24))(this);
              v62 = PCBitmap::sanitizeColorSpace(0, 0xEu);
              PCCreateBitmap(v60, v61, 14, v62);
            case 13:
              v26 = (*(*this + 16))(this);
              v27 = (*(*this + 24))(this);
              v28 = PCBitmap::sanitizeColorSpace(0, 0xEu);
              PCCreateBitmap(v26, v27, 14, v28);
          }
        }
      }

      else if (v22 > 4)
      {
        switch(v22)
        {
          case 5:
            v51 = (*(*this + 16))(this);
            v52 = (*(*this + 24))(this);
            v53 = PCBitmap::sanitizeColorSpace(0, 1u);
            PCCreateBitmap(v51, v52, 1, v53);
          case 6:
            v63 = (*(*this + 16))(this);
            v64 = (*(*this + 24))(this);
            v65 = PCBitmap::sanitizeColorSpace(0, 1u);
            PCCreateBitmap(v63, v64, 1, v65);
          case 8:
            v37 = (*(*this + 16))(this);
            v38 = (*(*this + 24))(this);
            v39 = PCBitmap::sanitizeColorSpace(0, 7u);
            PCCreateBitmap(v37, v38, 7, v39);
        }
      }

      else
      {
        switch(v22)
        {
          case 2:
            v45 = (*(*this + 16))(this);
            v46 = (*(*this + 24))(this);
            v47 = PCBitmap::sanitizeColorSpace(0, 1u);
            PCCreateBitmap(v45, v46, 1, v47);
          case 3:
            v57 = (*(*this + 16))(this);
            v58 = (*(*this + 24))(this);
            v59 = PCBitmap::sanitizeColorSpace(0, 1u);
            PCCreateBitmap(v57, v58, 1, v59);
          case 4:
            v23 = (*(*this + 16))(this);
            v24 = (*(*this + 24))(this);
            v25 = PCBitmap::sanitizeColorSpace(0, 1u);
            PCCreateBitmap(v23, v24, 1, v25);
        }
      }
    }

    v69 = (*(**(a2 + 8) + 48))(*(a2 + 8));
    if (v69 > 0x10)
    {
      goto LABEL_61;
    }

    if (((1 << v69) & 0x10428) != 0)
    {
      if (((*(*a2 + 48))(a2) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (((1 << v69) & 0x4082) == 0)
    {
LABEL_61:
      switch((*(**(a2 + 8) + 48))(*(a2 + 8)))
      {
        case 2u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 3u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          (*(**(a2 + 8) + 48))(*(a2 + 8));
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 4u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 5u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          (*(**(a2 + 8) + 48))(*(a2 + 8));
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 6u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 8u:
          v77 = (*(*a2 + 16))(a2);
          v78 = (*(*a2 + 24))(a2);
          CGColorSpace = PCImage::getCGColorSpace(a2);
          PCCreateBitmap(v77, v78, 7, CGColorSpace);
        case 9u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 0xAu:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 0xBu:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 0xCu:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 0xDu:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 0xFu:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 0x10u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          (*(**(a2 + 8) + 48))(*(a2 + 8));
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        case 0x11u:
          (*(*a2 + 16))(a2);
          (*(*a2 + 24))(a2);
          PCImage::getColorSpace(a2, &v84);
          PCCreateBitmap();
        default:
          c[0] = 0;
          c[1] = 0;
          v70 = 0;
          break;
      }

      goto LABEL_83;
    }

    v70 = a2;
LABEL_83:
    if (v3)
    {
      CGContextSetInterpolationQuality(c[0], kCGInterpolationHigh);
    }

    v80 = (*(*v70 + 16))(v70);
    v81 = (*(*v70 + 24))(v70);
    CGContextSetBlendMode(c[0], kCGBlendModeCopy);
    v87.size.width = v80;
    v87.size.height = v81;
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    CGContextDrawImage(c[0], v87, image[0]);
    if (c[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](c[1]);
    }

    if (image[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](image[1]);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    return;
  }

  v29 = (*(**(this + 8) + 48))(*(this + 8));
  v30 = (*(**(a2 + 8) + 48))(*(a2 + 8));
  if (v29 != v30)
  {
    v43 = v30;
    if (PCPixelFormat::hasRGB(v29) && PCPixelFormat::hasRGB(v43))
    {
      if (PCPixelFormat::is32Bit(v29) && PCPixelFormat::is32Bit(v43))
      {
        return;
      }

      if (PCPixelFormat::is8Bit(v29) && PCPixelFormat::is8Bit(v43))
      {
        return;
      }
    }

    goto LABEL_12;
  }

  v31 = (*(**(this + 8) + 64))(*(this + 8));
  v32 = (*(**(a2 + 8) + 64))(*(a2 + 8));
  v33 = (*(**(this + 8) + 64))(*(this + 8));
  if (v33 == (*(**(a2 + 8) + 64))(*(a2 + 8)))
  {
    v34 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v35 = (*(**(this + 8) + 16))(*(this + 8));
    v36 = (*(*this + 40))(this);
    memcpy(v34, v35, v36);
  }

  else
  {
    v71 = (*(**(this + 8) + 16))(*(this + 8));
    v72 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v73 = (*(**(this + 8) + 48))(*(this + 8));
    BytesPerPixel = PCPixelFormat::getBytesPerPixel(v73);
    if (v7)
    {
      v75 = v7;
      v76 = (BytesPerPixel * v6);
      do
      {
        memcpy(v72, v71, v76);
        v71 += v31;
        v72 += v32;
        --v75;
      }

      while (v75);
    }
  }
}

void sub_25FB7D978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, std::__shared_weak_count *a18, char a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap::flip(PCBitmap *this)
{
  v2 = (*(**(this + 8) + 64))(*(this + 8));
  v3 = (*(**(this + 8) + 16))(*(this + 8));
  v4 = (v3 + ((*(*this + 24))(this) - 1) * v2);
  v5 = (*(**(this + 8) + 16))(*(this + 8));
  v6 = (*(*this + 16))(this);
  v7 = (*(**(this + 8) + 48))(*(this + 8));
  v8 = PCPixelFormat::getBytesPerPixel(v7) * v6;
  std::vector<unsigned char>::vector[abi:ne200100](__dst, v8);
  for (i = __dst[0]; v5 < v4; v4 -= v2)
  {
    memcpy(i, v4, v8);
    memcpy(v4, v5, v8);
    i = __dst[0];
    memcpy(v5, __dst[0], v8);
    v5 += v2;
  }

  if (i)
  {
    __dst[1] = i;
    operator delete(i);
  }
}

void *PCBitmap::copyDataToBitmap(PCBitmap *this, char *a2)
{
  v4 = (*(*this + 16))(this);
  v5 = (*(*this + 24))(this);
  v6 = (*(**(this + 8) + 16))(*(this + 8));
  v7 = (*(**(this + 8) + 48))(*(this + 8));
  v8 = PCPixelFormat::getBytesPerPixel(v7) * v4;
  result = (*(**(this + 8) + 64))(*(this + 8));
  if (v8 == result)
  {

    return memcpy(v6, a2, v8 * v5);
  }

  else if (v5)
  {
    v10 = result;
    do
    {
      result = memcpy(v6, a2, v8);
      a2 += v8;
      v6 += v10;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t PCBitmap::swizzleTo(_anonymous_namespace_ *a1, int a2)
{
  v4 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (PCPixelFormat::isFloat(v4))
  {
    if (a2 == 1)
    {
      v8 = 16;
    }

    else
    {
      v8 = 17;
    }
  }

  else
  {
    if ((a2 - 1) > 2)
    {
      v8 = 3;
    }

    else
    {
      v8 = dword_26034BDB0[a2 - 1];
    }
  }

  return (*(**(a1 + 8) + 56))(*(a1 + 8), v8);
}

uint64_t PCBitmap::dumpImage(PCBitmap *this, int a2, uint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  if (a3 == -1)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "/tmp/PCBitmap", 13);
  }

  else
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "/tmp/PCBitmap_", 14);
    v6 = MEMORY[0x2666E9B50](v5, a3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "_", 1);
  }

  v8 = time(0);
  MEMORY[0x2666E9B50](v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, ".png", 4);
  std::stringbuf::str();
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  PCString::PCString(&v19, p_p);
  PCPrint("%s: %s, %s\n", v11, v12, v13, v14, v15, v16, v17, "PCBitmap::dumpImage");
  PCString::~PCString(&v19);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v26);
}

void sub_25FB7E168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, PCString a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (a11 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a12, MEMORY[0x277D82828]);
  MEMORY[0x2666E9E10](va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_25FB7E300(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](v1);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::writePCBitmap(const PCString *this, const PCString *a2, const PCBitmap *a3, const __CFDictionary *a4)
{
  v4 = *&a2;
  v26 = *MEMORY[0x277D85DE8];
  if ((a2->var0->data)(a2) && (*(**&v4 + 24))(COERCE_CGFLOAT(*&v4)))
  {
    v6 = (*(**(*&v4 + 64) + 48))(*(*&v4 + 64));
    if (v6 > 0x11 || ((1 << v6) & 0x3C1AE) == 0)
    {
      v4 = components[0];
      v9 = components[1];
    }

    else
    {
      v9 = 0.0;
    }

    v10 = (*(**&v4 + 16))(COERCE_CGFLOAT(*&v4));
    v11 = (*(**&v4 + 24))(COERCE_CGFLOAT(*&v4));
    v12 = (*(**(*&v4 + 64) + 16))(*(*&v4 + 64));
    v13 = (*(**(*&v4 + 64) + 48))(*(*&v4 + 64));
    BitsPerChannel = PCPixelFormat::getBitsPerChannel(v13);
    v15 = (*(**(*&v4 + 64) + 48))(*(*&v4 + 64));
    NumChannels = PCPixelFormat::getNumChannels(v15);
    PCImage::getColorSpace(*&v4, &v21);
    PCColorSpaceHandle::getCGColorSpace(&v21);
    PCURL::PCURL(&v24, this, 0);
    PCURL::getExtension(&v24, &v23);
    PCString::PCString(components, "");
    v18 = PCString::compare(&v23, components);
    PCString::~PCString(components);
    if (!v18)
    {
      PCString::set(&v23, "png");
    }

    if (v19)
    {
      std::shared_ptr<CGDataProvider>::shared_ptr[abi:ne200100]<CGDataProvider,void (*)(CGDataProvider*),0>(provider, v19);
    }

    provider[0] = 0;
    provider[1] = 0;
    PCString::~PCString(&v23);
    PCURL::~PCURL(&v24);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v21);
    if (v9 != 0.0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v9);
    }
  }

  return 0;
}

void sub_25FB7E8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CGColorSpace *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, PCString a21, char a22, PCString a23, uint64_t a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  PCString::~PCString(&a21);
  PCURL::~PCURL(&a22);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a12);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t PCBitmap::premultiply(PCBitmap *this)
{
  result = (*(*this + 48))(this);
  if ((result & 1) == 0)
  {
    v3 = (*(**(this + 8) + 48))(*(this + 8));
    result = PCPixelFormat::hasAlpha(v3);
    if (result)
    {
      result = (*(**(this + 8) + 48))(*(this + 8));
      if (result > 9)
      {
        if (result > 14)
        {
          switch(result)
          {
            case 0xF:

            case 0x10:

            case 0x11:
          }
        }

        else
        {
          switch(result)
          {
            case 0xA:

            case 0xC:

            case 0xD:
          }
        }
      }

      else if (result > 4)
      {
        switch(result)
        {
          case 5:

          case 6:

          case 8:
        }
      }

      else
      {
        switch(result)
        {
          case 2:

          case 3:

          case 4:
        }
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = *j;
        j[1] = (32897 * j[1] * v9) >> 23;
        j[2] = (32897 * j[2] * v9) >> 23;
        j[3] = (32897 * j[3] * v9) >> 23;
        j += 4;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = *j;
        j[3] = (32897 * j[3] * v9) >> 23;
        j[2] = (32897 * j[2] * v9) >> 23;
        j[1] = (32897 * j[1] * v9) >> 23;
        j += 4;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    v6 = 0;
    v7 = (v5 + 1);
    do
    {
      v8 = v7;
      for (i = v2; i; --i)
      {
        v10 = v8[2];
        *(v8 - 1) = (32897 * *(v8 - 1) * v10) >> 23;
        *v8 = (32897 * *v8 * v10) >> 23;
        v8[1] = (32897 * v8[1] * v10) >> 23;
        v8 += 4;
      }

      ++v6;
      v7 += v4;
    }

    while (v6 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    v6 = 0;
    v7 = (v5 + 1);
    do
    {
      v8 = v7;
      for (i = v2; i; --i)
      {
        v10 = v8[2];
        v8[1] = (32897 * v8[1] * v10) >> 23;
        *v8 = (32897 * *v8 * v10) >> 23;
        *(v8 - 1) = (32897 * *(v8 - 1) * v10) >> 23;
        v8 += 4;
      }

      ++v6;
      v7 += v4;
    }

    while (v6 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        *j = (32897 * *j * j[1]) >> 23;
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    v6 = 0;
    v7 = (v5 + 4);
    do
    {
      v8 = v7;
      for (i = v2; i; --i)
      {
        v10 = v8[1];
        *(v8 - 2) = *(v8 - 2) * v10 / 0xFFFF;
        *(v8 - 1) = *(v8 - 1) * v10 / 0xFFFF;
        *v8 = *v8 * v10 / 0xFFFF;
        v8 += 4;
      }

      ++v6;
      v7 = (v7 + v4);
    }

    while (v6 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        *j = *j * j[1] / 0xFFFF;
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    v6 = v5;
    v7 = 0;
    v8 = v4;
    do
    {
      v9 = v2;
      for (i = v6; v9; --v9)
      {
        PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>::premultiply(i);
        i += 4;
      }

      v6 = (v6 + v8);
      ++v7;
    }

    while (v7 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    v6 = v5;
    v7 = 0;
    v8 = v4;
    do
    {
      v9 = v2;
      for (i = v6; v9; --v9)
      {
        PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::premultiply(i);
        i += 2;
      }

      v6 = (v6 + v8);
      ++v7;
    }

    while (v7 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = j[1];
        v10 = vrev64_s32(v9);
        j->f32[0] = vmuls_lane_f32(j->f32[0], v9, 1);
        v9.i32[0] = j->i32[1];
        *(j + 4) = vmul_f32(v9, v10);
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = *j;
        v10 = j[3];
        v11 = *j * j[2];
        j[1] = *j * j[1];
        j[2] = v11;
        j[3] = v9 * v10;
        j += 4;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>(void **a1)
{
  v2 = ((*a1)[2])(a1);
  v3 = ((*a1)[3])(a1);
  v4 = (*(*a1[8] + 64))(a1[8]);
  v5 = (*(*a1[8] + 16))(a1[8]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        *j = j[1] * *j;
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

void PCCreateBitmap(int a1, int a2, unsigned int a3)
{
  v6 = PCBitmap::sanitizeColorSpace(0, a3);

  PCCreateBitmap(a1, a2, a3, v6);
}

void sub_25FB7FCAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t PCCreateBitmap<ProCore_Private::PCBitmapRepDefault>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 48))(*a1);
  switch(result)
  {
    case 1:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 2:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 3:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 4:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 5:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 6:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 7:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 8:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 9:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>,std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 10:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 11:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 12:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 13:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 14:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 15:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 16:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 17:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    default:
      *a2 = 0;
      a2[1] = 0;
      return result;
  }
}

void PCBitmap::toBitmap(PCBitmap *this@<X0>, void *a2@<X8>)
{
  std::shared_ptr<OZStyle>::shared_ptr[abi:ne200100]<OZStyle,0>(&lpsrc, this + 1);
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_25FB800E0(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10A1C405CA75B9BLL);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t PCBitmap::isPremultiplied(PCBitmap *this)
{
  result = PCImage::isPremultiplied(this);
  if (result)
  {
    v3 = (*(**(this + 8) + 48))(*(this + 8));

    return PCPixelFormat::hasAlpha(v3);
  }

  return result;
}

void CreateCGImageFromPCBitmap(PCImage **a1, int a2)
{
  v4 = (*(**a1 + 16))(*a1);
  v5 = (*(**a1 + 24))();
  CGColorSpace = PCImage::getCGColorSpace(*a1);
  PCCreateBitmap(v4, v5, a2, CGColorSpace);
}

void sub_25FB80458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t freeImage(uint64_t result, const void *a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t anonymous namespace::copyForCGImage@<X0>(_anonymous_namespace_ *this@<X0>, const PCBitmap *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  result = (*(**(this + 8) + 48))(*(this + 8), a2);
  if (result <= 9)
  {
    switch(result)
    {
      case 4:
        (*(*this + 16))(this);
        (*(*this + 24))(this);
        PCImage::getColorSpace(this, &v5);
        PCCreateBitmap();
      case 6:
        (*(*this + 16))(this);
        (*(*this + 24))(this);
        PCImage::getColorSpace(this, &v5);
        PCCreateBitmap();
      case 9:
        (*(*this + 16))(this);
        (*(*this + 24))(this);
        PCImage::getColorSpace(this, &v5);
        PCCreateBitmap();
    }
  }

  else
  {
    if (result <= 11)
    {
      if (result != 10)
      {
        (*(*this + 16))(this);
        (*(*this + 24))(this);
        PCImage::getColorSpace(this, &v5);
        PCCreateBitmap();
      }

      (*(*this + 16))(this);
      (*(*this + 24))(this);
      PCImage::getColorSpace(this, &v5);
      PCCreateBitmap();
    }

    if (result == 12)
    {
      (*(*this + 16))(this);
      (*(*this + 24))(this);
      PCImage::getColorSpace(this, &v5);
      PCCreateBitmap();
    }

    if (result == 13)
    {
      (*(*this + 16))(this);
      (*(*this + 24))(this);
      PCImage::getColorSpace(this, &v5);
      PCCreateBitmap();
    }
  }

  return result;
}

void sub_25FB822D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace **anonymous namespace::makeCGImageFromPCBitmap@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  CGColorSpace = PCImage::getCGColorSpace(this);
  v6 = CGColorSpace;
  if (CGColorSpace)
  {
    PCCFRefTraits<CGColorSpace *>::retain(CGColorSpace);
  }

  v21 = v6;
  v7 = (*(**(this + 8) + 16))(*(this + 8));
  v8 = (*(*this + 40))(this);
  if (v9)
  {
    std::shared_ptr<CGDataProvider>::shared_ptr[abi:ne200100]<CGDataProvider,void (*)(CGDataProvider*),0>(&provider, v9);
  }

  provider = 0;
  v20 = 0;
  v10 = (*(*this + 16))(this);
  v11 = (*(*this + 24))(this);
  v12 = *(this + 9);
  v13 = *(this + 10);
  v14 = (*(**(this + 8) + 64))(*(this + 8));
  v17 = CGImageCreate(v10, v11, v12, (v13 * v12), v14, v21, v16, 0, 0, 0, kCGRenderingIntentDefault);
  if (v17)
  {
    std::shared_ptr<CGImage>::shared_ptr[abi:ne200100]<CGImage,void (*)(CGImage*),0>(a2, v17);
  }

  *a2 = 0;
  a2[1] = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v21);
}

void sub_25FB82554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace **anonymous namespace::makeCGBitmapContextForPCBitmap@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  CGColorSpace = PCImage::getCGColorSpace(this);
  v6 = CGColorSpace;
  if (CGColorSpace)
  {
    PCCFRefTraits<CGColorSpace *>::retain(CGColorSpace);
  }

  v16 = v6;
  v7 = (*(**(this + 8) + 16))(*(this + 8));
  v8 = (*(*this + 16))(this);
  v9 = (*(*this + 24))(this);
  v10 = *(this + 9);
  v11 = (*(**(this + 8) + 64))(*(this + 8));
  if (v14)
  {
    std::shared_ptr<CGContext>::shared_ptr[abi:ne200100]<CGContext,void (*)(CGContext*),0>(a2, v14);
  }

  *a2 = 0;
  a2[1] = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v16);
}

void sub_25FB826FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::copyGrayAlpha(_anonymous_namespace_ *this, const PCBitmap *a2, const PCBitmap *a3, PCBitmap *a4)
{
  result = (*(**(a3 + 8) + 48))(*(a3 + 8));
  if (a2)
  {
    if (result > 11)
    {
      if (result == 12)
      {
        result = (*(**(a2 + 8) + 48))(*(a2 + 8));
        if (result > 10)
        {
          if (result == 11 || result == 14)
          {
            v162 = (*(**(this + 8) + 16))(*(this + 8));
            v163 = (*(**(a2 + 8) + 16))(*(a2 + 8));
            v164 = (*(**(a3 + 8) + 16))(*(a3 + 8));
            v165 = (*(*this + 16))(this);
            v166 = (*(*this + 24))(this);
            v449 = (*(**(this + 8) + 64))(*(this + 8));
            v438 = (*(**(a2 + 8) + 64))(*(a2 + 8));
            v167 = (*(**(a3 + 8) + 64))(*(a3 + 8));
            result = (*(*a3 + 48))(a3);
            if (result)
            {
              if (v166)
              {
                v168 = v166;
                for (i = 0; i != v168; ++i)
                {
                  if (v165)
                  {
                    v170 = 0;
                    v171 = v165;
                    do
                    {
                      v172 = (v164 + v170);
                      *v172 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v162 + v170));
                      result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v163 + v170));
                      v172[1] = result;
                      v170 += 4;
                      --v171;
                    }

                    while (v171);
                  }

                  v162 += v449;
                  v163 += v438;
                  v164 += v167;
                }
              }
            }

            else if (v166)
            {
              v269 = v166;
              for (j = 0; j != v269; ++j)
              {
                if (v165)
                {
                  v271 = 0;
                  v272 = v165;
                  do
                  {
                    v273 = (v164 + v271);
                    *v273 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v162 + v271));
                    v273[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v163 + v271));
                    result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::unpremultiply((v164 + v271));
                    v271 += 4;
                    --v272;
                  }

                  while (v272);
                }

                v162 += v449;
                v163 += v438;
                v164 += v167;
              }
            }
          }
        }

        else if (result == 1)
        {
          v250 = (*(**(this + 8) + 16))(*(this + 8));
          v251 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v252 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v452 = (*(*this + 16))(this);
          v253 = (*(*this + 24))(this);
          v441 = (*(**(this + 8) + 64))(*(this + 8));
          v254 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v255 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          result = (*(*a3 + 48))(a3);
          if (result)
          {
            if (v253)
            {
              for (k = 0; k != v253; ++k)
              {
                if (v452)
                {
                  v257 = 0;
                  v258 = v252;
                  do
                  {
                    *v258 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v250 + 4 * v257));
                    LOBYTE(v259) = *(v251 + v257);
                    *&v259 = v259 * 0.00392156863;
                    result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v259);
                    v258[1] = result;
                    ++v257;
                    v258 += 2;
                  }

                  while (v452 != v257);
                }

                v250 += v441;
                v251 += v254;
                v252 += v255;
              }
            }
          }

          else if (v253)
          {
            for (m = 0; m != v253; ++m)
            {
              if (v452)
              {
                v368 = 0;
                v369 = v252;
                do
                {
                  *v369 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v250 + 4 * v368));
                  LOBYTE(v370) = *(v251 + v368);
                  *&v370 = v370 * 0.00392156863;
                  v369[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v370);
                  result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::unpremultiply(v369);
                  ++v368;
                  v369 += 2;
                }

                while (v452 != v368);
              }

              v250 += v441;
              v251 += v254;
              v252 += v255;
            }
          }
        }

        else if (result == 7)
        {
          v82 = (*(**(this + 8) + 16))(*(this + 8));
          v83 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v84 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v445 = (*(*this + 16))(this);
          v85 = (*(*this + 24))(this);
          v435 = (*(**(this + 8) + 64))(*(this + 8));
          v86 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v87 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          result = (*(*a3 + 48))(a3);
          if (result)
          {
            if (v85)
            {
              for (n = 0; n != v85; ++n)
              {
                if (v445)
                {
                  v89 = 0;
                  v90 = v84;
                  do
                  {
                    *v90 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v82 + 4 * v89));
                    LOWORD(v91) = *(v83 + 2 * v89);
                    *&v91 = v91 * 0.0000152590219;
                    result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v91);
                    v90[1] = result;
                    ++v89;
                    v90 += 2;
                  }

                  while (v445 != v89);
                }

                v82 += v435;
                v83 += v86;
                v84 += v87;
              }
            }
          }

          else if (v85)
          {
            for (ii = 0; ii != v85; ++ii)
            {
              if (v445)
              {
                v336 = 0;
                v337 = v84;
                do
                {
                  *v337 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v82 + 4 * v336));
                  LOWORD(v338) = *(v83 + 2 * v336);
                  *&v338 = v338 * 0.0000152590219;
                  v337[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v338);
                  result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::unpremultiply(v337);
                  ++v336;
                  v337 += 2;
                }

                while (v445 != v336);
              }

              v82 += v435;
              v83 += v86;
              v84 += v87;
            }
          }
        }
      }

      else if (result == 15)
      {
        result = (*(**(a2 + 8) + 48))(*(a2 + 8));
        if (result > 10)
        {
          if (result == 11 || result == 14)
          {
            v136 = (*(**(this + 8) + 16))(*(this + 8));
            v137 = (*(**(a2 + 8) + 16))(*(a2 + 8));
            v138 = (*(**(a3 + 8) + 16))(*(a3 + 8));
            v139 = (*(*this + 16))(this);
            v140 = (*(*this + 24))(this);
            v141 = (*(**(this + 8) + 64))(*(this + 8));
            v142 = (*(**(a2 + 8) + 64))(*(a2 + 8));
            v143 = (*(**(a3 + 8) + 64))(*(a3 + 8));
            result = (*(*a3 + 48))(a3);
            if (result)
            {
              if (v140)
              {
                for (jj = 0; jj != v140; ++jj)
                {
                  if (v139)
                  {
                    v145 = 0;
                    v146 = v138;
                    do
                    {
                      *v146 = *(v136 + 4 * v145);
                      v146[1] = *(v137 + 4 * v145++);
                      v146 += 2;
                    }

                    while (v139 != v145);
                  }

                  v136 += v141;
                  v137 += v142;
                  v138 += v143;
                }
              }
            }

            else if (v140)
            {
              for (kk = 0; kk != v140; ++kk)
              {
                if (v139)
                {
                  v230 = 0;
                  v231 = v138;
                  do
                  {
                    v232 = *(v136 + 4 * v230);
                    *v231 = v232;
                    v233 = *(v137 + 4 * v230);
                    v231[1] = v233;
                    if (v233 != 1.0)
                    {
                      v234 = v232 / v233;
                      if (v233 == 0.0)
                      {
                        v234 = 0.0;
                      }

                      *v231 = v234;
                    }

                    v231 += 2;
                    ++v230;
                  }

                  while (v139 != v230);
                }

                v136 += v141;
                v137 += v142;
                v138 += v143;
              }
            }
          }
        }

        else if (result == 1)
        {
          v206 = (*(**(this + 8) + 16))(*(this + 8));
          v207 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v208 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v209 = (*(*this + 16))(this);
          v210 = (*(*this + 24))(this);
          v211 = (*(**(this + 8) + 64))(*(this + 8));
          v212 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v213 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          result = (*(*a3 + 48))(a3);
          if (result)
          {
            if (v210)
            {
              for (mm = 0; mm != v210; ++mm)
              {
                if (v209)
                {
                  v217 = 0;
                  v218 = v208;
                  do
                  {
                    LODWORD(v214) = *(v206 + 4 * v217);
                    *v218 = LODWORD(v214);
                    LOBYTE(v214) = *(v207 + v217);
                    v214 = *&v214 * 0.00392156863;
                    *&v214 = v214;
                    v218[1] = LODWORD(v214);
                    ++v217;
                    v218 += 2;
                  }

                  while (v209 != v217);
                }

                v206 += v211;
                v207 += v212;
                v208 += v213;
              }
            }
          }

          else if (v210)
          {
            for (nn = 0; nn != v210; ++nn)
            {
              if (v209)
              {
                v352 = 0;
                v353 = v208;
                do
                {
                  v354 = *(v206 + 4 * v352);
                  *v353 = v354;
                  LOBYTE(v215) = *(v207 + v352);
                  v215 = *&v215 * 0.00392156863;
                  *&v215 = v215;
                  *(v353 + 4) = LODWORD(v215);
                  if (*&v215 != 1.0)
                  {
                    v355 = v354 / *&v215;
                    if (*&v215 == 0.0)
                    {
                      v355 = 0.0;
                    }

                    *v353 = v355;
                  }

                  v353 += 8;
                  ++v352;
                }

                while (v209 != v352);
              }

              v206 += v211;
              v207 += v212;
              v208 += v213;
            }
          }
        }

        else if (result == 7)
        {
          v42 = (*(**(this + 8) + 16))(*(this + 8));
          v43 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v44 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v45 = (*(*this + 16))(this);
          v46 = (*(*this + 24))(this);
          v47 = (*(**(this + 8) + 64))(*(this + 8));
          v48 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v49 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          result = (*(*a3 + 48))(a3);
          if (result)
          {
            if (v46)
            {
              for (i1 = 0; i1 != v46; ++i1)
              {
                if (v45)
                {
                  v53 = 0;
                  v54 = v44;
                  do
                  {
                    LOWORD(v50) = *(v43 + 2 * v53);
                    v50 = *&v50 * 0.0000152590219;
                    *&v50 = v50;
                    *v54 = *(v42 + 4 * v53);
                    v54[1] = LODWORD(v50);
                    v54 += 2;
                    ++v53;
                  }

                  while (v45 != v53);
                }

                v42 += v47;
                v43 += v48;
                v44 += v49;
              }
            }
          }

          else if (v46)
          {
            for (i2 = 0; i2 != v46; ++i2)
            {
              if (v45)
              {
                v320 = 0;
                v321 = v44;
                do
                {
                  v322 = *(v42 + 4 * v320);
                  LOWORD(v51) = *(v43 + 2 * v320);
                  v51 = *&v51 * 0.0000152590219;
                  *&v51 = v51;
                  *v321 = v322;
                  *(v321 + 4) = LODWORD(v51);
                  if (*&v51 != 1.0)
                  {
                    v323 = v322 / *&v51;
                    if (*&v51 == 0.0)
                    {
                      v323 = 0.0;
                    }

                    *v321 = v323;
                  }

                  v321 += 8;
                  ++v320;
                }

                while (v45 != v320);
              }

              v42 += v47;
              v43 += v48;
              v44 += v49;
            }
          }
        }
      }
    }

    else if (result == 2)
    {
      result = (*(**(a2 + 8) + 48))(*(a2 + 8));
      if (result > 10)
      {
        if (result == 11 || result == 14)
        {
          v148 = (*(**(this + 8) + 16))(*(this + 8));
          v149 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v150 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v151 = (*(*this + 16))(this);
          v152 = (*(*this + 24))(this);
          v448 = (*(**(this + 8) + 64))(*(this + 8));
          v437 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v431 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          result = (*(*a3 + 48))(a3);
          if (result)
          {
            if (v152)
            {
              for (i3 = 0; i3 != v152; ++i3)
              {
                if (v151)
                {
                  v156 = 0;
                  v157 = v150;
                  do
                  {
                    LOBYTE(v154) = *(v148 + v156);
                    v158 = *&v154 * 0.00392156863;
                    v159 = vcvtmd_s64_f64((v158 * 255.0) + 0.5 + 0.0000001);
                    if (v159 >= 255)
                    {
                      v159 = 255;
                    }

                    *v157 = v159 & ~(v159 >> 31);
                    v154 = (*(v149 + 4 * v156) * 255.0) + 0.5 + 0.0000001;
                    v160 = vcvtmd_s64_f64(v154);
                    if (v160 >= 255)
                    {
                      v160 = 255;
                    }

                    v157[1] = v160 & ~(v160 >> 31);
                    ++v156;
                    v157 += 2;
                  }

                  while (v151 != v156);
                }

                v148 += v448;
                v149 += v437;
                v150 += v431;
              }
            }
          }

          else if (v152)
          {
            v260 = v152;
            v261 = 0;
            v262 = v151;
            v426 = v151;
            do
            {
              if (v151)
              {
                v263 = 0;
                v264 = v150;
                do
                {
                  LOBYTE(v153) = *(v148 + v263);
                  v265 = v153 * 0.00392156863;
                  v266 = vcvtmd_s64_f64((v265 * 255.0) + 0.5 + 0.0000001);
                  if (v266 >= 255)
                  {
                    v266 = 255;
                  }

                  *v264 = v266 & ~(v266 >> 31);
                  v267 = (*(v149 + 4 * v263) * 255.0) + 0.5 + 0.0000001;
                  v268 = vcvtmd_s64_f64(v267);
                  if (v268 >= 255)
                  {
                    v268 = 255;
                  }

                  v264[1] = v268 & ~(v268 >> 31);
                  result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>::unpremultiply(v264, v267);
                  ++v263;
                  v264 += 2;
                }

                while (v262 != v263);
              }

              v148 += v448;
              v149 += v437;
              v150 += v431;
              ++v261;
              v151 = v426;
            }

            while (v261 != v260);
          }
        }
      }

      else if (result == 1)
      {
        v235 = (*(**(this + 8) + 16))(*(this + 8));
        v236 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v237 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v238 = (*(*this + 16))(this);
        v239 = (*(*this + 24))(this);
        v451 = (*(**(this + 8) + 64))(*(this + 8));
        v440 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v433 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        result = (*(*a3 + 48))(a3);
        if (result)
        {
          if (v239)
          {
            for (i4 = 0; i4 != v239; ++i4)
            {
              if (v238)
              {
                v243 = 0;
                v244 = v237;
                do
                {
                  LOBYTE(v241) = *(v235 + v243);
                  v245 = *&v241 * 0.00392156863;
                  v246 = (v245 * 255.0) + 0.5 + 0.0000001;
                  v247 = vcvtmd_s64_f64(v246);
                  if (v247 >= 255)
                  {
                    v247 = 255;
                  }

                  *v244 = v247 & ~(v247 >> 31);
                  LOBYTE(v246) = *(v236 + v243);
                  v248 = *&v246 * 0.00392156863;
                  v241 = (v248 * 255.0) + 0.5 + 0.0000001;
                  v249 = vcvtmd_s64_f64(v241);
                  if (v249 >= 255)
                  {
                    v249 = 255;
                  }

                  v244[1] = v249 & ~(v249 >> 31);
                  ++v243;
                  v244 += 2;
                }

                while (v238 != v243);
              }

              v235 += v451;
              v236 += v440;
              v237 += v433;
            }
          }
        }

        else if (v239)
        {
          v356 = v239;
          v357 = 0;
          v358 = v238;
          v428 = v238;
          do
          {
            if (v238)
            {
              v359 = 0;
              v360 = v237;
              do
              {
                LOBYTE(v240) = *(v235 + v359);
                v361 = v240 * 0.00392156863;
                v362 = (v361 * 255.0) + 0.5 + 0.0000001;
                v363 = vcvtmd_s64_f64(v362);
                if (v363 >= 255)
                {
                  v363 = 255;
                }

                *v360 = v363 & ~(v363 >> 31);
                LOBYTE(v362) = *(v236 + v359);
                v364 = *&v362 * 0.00392156863;
                v365 = (v364 * 255.0) + 0.5 + 0.0000001;
                v366 = vcvtmd_s64_f64(v365);
                if (v366 >= 255)
                {
                  v366 = 255;
                }

                v360[1] = v366 & ~(v366 >> 31);
                result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>::unpremultiply(v360, v365);
                ++v359;
                v360 += 2;
              }

              while (v358 != v359);
            }

            v235 += v451;
            v236 += v440;
            v237 += v433;
            ++v357;
            v238 = v428;
          }

          while (v357 != v356);
        }
      }

      else if (result == 7)
      {
        v67 = (*(**(this + 8) + 16))(*(this + 8));
        v68 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v69 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v70 = (*(*this + 16))(this);
        v71 = (*(*this + 24))(this);
        v444 = (*(**(this + 8) + 64))(*(this + 8));
        v434 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v429 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        result = (*(*a3 + 48))(a3);
        if (result)
        {
          if (v71)
          {
            for (i5 = 0; i5 != v71; ++i5)
            {
              if (v70)
              {
                v75 = 0;
                v76 = v69;
                do
                {
                  LOBYTE(v73) = *(v67 + v75);
                  v77 = *&v73 * 0.00392156863;
                  v78 = (v77 * 255.0) + 0.5 + 0.0000001;
                  v79 = vcvtmd_s64_f64(v78);
                  if (v79 >= 255)
                  {
                    v79 = 255;
                  }

                  *v76 = v79 & ~(v79 >> 31);
                  LOWORD(v78) = *(v68 + 2 * v75);
                  v80 = *&v78 * 0.0000152590219;
                  v73 = (v80 * 255.0) + 0.5 + 0.0000001;
                  v81 = vcvtmd_s64_f64(v73);
                  if (v81 >= 255)
                  {
                    v81 = 255;
                  }

                  v76[1] = v81 & ~(v81 >> 31);
                  ++v75;
                  v76 += 2;
                }

                while (v70 != v75);
              }

              v67 += v444;
              v68 += v434;
              v69 += v429;
            }
          }
        }

        else if (v71)
        {
          v324 = v71;
          v325 = 0;
          v326 = v70;
          v427 = v70;
          do
          {
            if (v70)
            {
              v327 = 0;
              v328 = v69;
              do
              {
                LOBYTE(v72) = *(v67 + v327);
                v329 = v72 * 0.00392156863;
                v330 = (v329 * 255.0) + 0.5 + 0.0000001;
                v331 = vcvtmd_s64_f64(v330);
                if (v331 >= 255)
                {
                  v331 = 255;
                }

                *v328 = v331 & ~(v331 >> 31);
                LOWORD(v330) = *(v68 + 2 * v327);
                v332 = *&v330 * 0.0000152590219;
                v333 = (v332 * 255.0) + 0.5 + 0.0000001;
                v334 = vcvtmd_s64_f64(v333);
                if (v334 >= 255)
                {
                  v334 = 255;
                }

                v328[1] = v334 & ~(v334 >> 31);
                result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>::unpremultiply(v328, v333);
                ++v327;
                v328 += 2;
              }

              while (v326 != v327);
            }

            v67 += v444;
            v68 += v434;
            v69 += v429;
            ++v325;
            v70 = v427;
          }

          while (v325 != v324);
        }
      }
    }

    else if (result == 8)
    {
      result = (*(**(a2 + 8) + 48))(*(a2 + 8));
      if (result > 10)
      {
        if (result == 11 || result == 14)
        {
          v121 = (*(**(this + 8) + 16))(*(this + 8));
          v122 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v123 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v124 = (*(*this + 16))(this);
          v125 = (*(*this + 24))(this);
          v447 = (*(**(this + 8) + 64))(*(this + 8));
          v436 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v430 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          result = (*(*a3 + 48))(a3);
          if (result)
          {
            if (v125)
            {
              for (i6 = 0; i6 != v125; ++i6)
              {
                if (v124)
                {
                  v129 = 0;
                  v130 = v123;
                  do
                  {
                    LOWORD(v127) = *(v121 + 2 * v129);
                    v131 = *&v127 * 0.0000152590219;
                    v132 = vcvtmd_s64_f64((v131 * 65535.0) + 0.5 + 0.0000001);
                    if (v132 >= 0xFFFF)
                    {
                      v132 = 0xFFFF;
                    }

                    v127 = (*(v122 + 4 * v129) * 65535.0) + 0.5 + 0.0000001;
                    v133 = vcvtmd_s64_f64(v127);
                    *v130 = v132 & ~(v132 >> 31);
                    if (v133 >= 0xFFFF)
                    {
                      v134 = 0xFFFF;
                    }

                    else
                    {
                      v134 = v133;
                    }

                    v130[1] = v134 & ~(v134 >> 31);
                    ++v129;
                    v130 += 2;
                  }

                  while (v124 != v129);
                }

                v121 += v447;
                v122 += v436;
                v123 += v430;
              }
            }
          }

          else if (v125)
          {
            v219 = v125;
            v220 = 0;
            v221 = v124;
            do
            {
              v222 = v124;
              if (v124)
              {
                v223 = 0;
                v224 = v123;
                do
                {
                  LOWORD(v126) = *(v121 + 2 * v223);
                  v225 = v126 * 0.0000152590219;
                  v226 = vcvtmd_s64_f64((v225 * 65535.0) + 0.5 + 0.0000001);
                  if (v226 >= 0xFFFF)
                  {
                    v226 = 0xFFFF;
                  }

                  *v224 = v226 & ~(v226 >> 31);
                  v227 = (*(v122 + 4 * v223) * 65535.0) + 0.5 + 0.0000001;
                  v228 = vcvtmd_s64_f64(v227);
                  if (v228 >= 0xFFFF)
                  {
                    v228 = 0xFFFF;
                  }

                  v224[1] = v228 & ~(v228 >> 31);
                  result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>::unpremultiply(v224, v227);
                  ++v223;
                  v224 += 2;
                }

                while (v221 != v223);
              }

              v121 += v447;
              v122 += v436;
              v123 += v430;
              ++v220;
              v124 = v222;
            }

            while (v220 != v219);
          }
        }
      }

      else if (result == 1)
      {
        v191 = (*(**(this + 8) + 16))(*(this + 8));
        v192 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v193 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v194 = (*(*this + 16))(this);
        v195 = (*(*this + 24))(this);
        v450 = (*(**(this + 8) + 64))(*(this + 8));
        v439 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v432 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        result = (*(*a3 + 48))(a3);
        if (result)
        {
          if (v195)
          {
            for (i7 = 0; i7 != v195; ++i7)
            {
              if (v194)
              {
                v199 = 0;
                v200 = v193;
                do
                {
                  LOWORD(v197) = *(v191 + 2 * v199);
                  v201 = *&v197 * 0.0000152590219;
                  v202 = (v201 * 65535.0) + 0.5 + 0.0000001;
                  v203 = vcvtmd_s64_f64(v202);
                  if (v203 >= 0xFFFF)
                  {
                    v203 = 0xFFFF;
                  }

                  *v200 = v203 & ~(v203 >> 31);
                  LOBYTE(v202) = *(v192 + v199);
                  v204 = *&v202 * 0.00392156863;
                  v197 = (v204 * 65535.0) + 0.5 + 0.0000001;
                  v205 = vcvtmd_s64_f64(v197);
                  if (v205 >= 0xFFFF)
                  {
                    v205 = 0xFFFF;
                  }

                  v200[1] = v205 & ~(v205 >> 31);
                  ++v199;
                  v200 += 2;
                }

                while (v194 != v199);
              }

              v191 += v450;
              v192 += v439;
              v193 += v432;
            }
          }
        }

        else if (v195)
        {
          v339 = v195;
          v340 = 0;
          v341 = v194;
          do
          {
            v342 = v194;
            if (v194)
            {
              v343 = 0;
              v344 = v193;
              do
              {
                LOWORD(v196) = *(v191 + 2 * v343);
                v345 = v196 * 0.0000152590219;
                v346 = (v345 * 65535.0) + 0.5 + 0.0000001;
                v347 = vcvtmd_s64_f64(v346);
                if (v347 >= 0xFFFF)
                {
                  v347 = 0xFFFF;
                }

                *v344 = v347 & ~(v347 >> 31);
                LOBYTE(v346) = *(v192 + v343);
                v348 = *&v346 * 0.00392156863;
                v349 = (v348 * 65535.0) + 0.5 + 0.0000001;
                v350 = vcvtmd_s64_f64(v349);
                if (v350 >= 0xFFFF)
                {
                  v350 = 0xFFFF;
                }

                v344[1] = v350 & ~(v350 >> 31);
                result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>::unpremultiply(v344, v349);
                ++v343;
                v344 += 2;
              }

              while (v341 != v343);
            }

            v191 += v450;
            v192 += v439;
            v193 += v432;
            ++v340;
            v194 = v342;
          }

          while (v340 != v339);
        }
      }

      else if (result == 7)
      {
        v8 = (*(**(this + 8) + 16))(*(this + 8));
        v9 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v10 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v443 = (*(*this + 16))(this);
        v11 = (*(*this + 24))(this);
        v12 = (*(**(this + 8) + 64))(*(this + 8));
        v13 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v14 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        result = (*(*a3 + 48))(a3);
        if (result)
        {
          if (v11)
          {
            for (i8 = 0; i8 != v11; ++i8)
            {
              if (v443)
              {
                v18 = 0;
                v19 = v443;
                do
                {
                  v20 = (v10 + 2 * v18);
                  LOWORD(v16) = *(v8 + v18);
                  v21 = *&v16 * 0.0000152590219;
                  v22 = (v21 * 65535.0) + 0.5 + 0.0000001;
                  v23 = vcvtmd_s64_f64(v22);
                  if (v23 >= 0xFFFF)
                  {
                    v23 = 0xFFFF;
                  }

                  *v20 = v23 & ~(v23 >> 31);
                  LOWORD(v22) = *(v9 + v18);
                  v24 = *&v22 * 0.0000152590219;
                  v16 = (v24 * 65535.0) + 0.5 + 0.0000001;
                  v25 = vcvtmd_s64_f64(v16);
                  if (v25 >= 0xFFFF)
                  {
                    v25 = 0xFFFF;
                  }

                  v20[1] = v25 & ~(v25 >> 31);
                  v18 += 2;
                  --v19;
                }

                while (v19);
              }

              v8 += v12;
              v9 += v13;
              v10 += v14;
            }
          }
        }

        else if (v11)
        {
          v306 = 0;
          v442 = v11;
          do
          {
            v307 = v14;
            v308 = v13;
            v309 = v12;
            if (v443)
            {
              v310 = 0;
              v311 = v443;
              do
              {
                v312 = (v10 + 2 * v310);
                LOWORD(v15) = *(v8 + v310);
                v313 = v15 * 0.0000152590219;
                v314 = (v313 * 65535.0) + 0.5 + 0.0000001;
                v315 = vcvtmd_s64_f64(v314);
                if (v315 >= 0xFFFF)
                {
                  v315 = 0xFFFF;
                }

                *v312 = v315 & ~(v315 >> 31);
                LOWORD(v314) = *(v9 + v310);
                v316 = *&v314 * 0.0000152590219;
                v317 = (v316 * 65535.0) + 0.5 + 0.0000001;
                v318 = vcvtmd_s64_f64(v317);
                if (v318 >= 0xFFFF)
                {
                  v318 = 0xFFFF;
                }

                v312[1] = v318 & ~(v318 >> 31);
                result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>::unpremultiply(v312, v317);
                v310 += 2;
                --v311;
              }

              while (v311);
            }

            v12 = v309;
            v8 += v309;
            v13 = v308;
            v9 += v308;
            v14 = v307;
            v10 += v307;
            ++v306;
          }

          while (v306 != v442);
        }
      }
    }
  }

  else if (result > 11)
  {
    if (result == 12)
    {
      v107 = (*(**(this + 8) + 16))(*(this + 8));
      v108 = (*(**(a3 + 8) + 16))(*(a3 + 8));
      v109 = (*(*this + 48))(this);
      v110 = (*(*a3 + 48))(a3);
      hasAlpha = PCPixelFormat::hasAlpha(0xEu);
      v112 = PCPixelFormat::hasAlpha(0xCu);
      v113 = (*(*this + 16))(this);
      v114 = (*(*this + 24))(this);
      v446 = (*(**(this + 8) + 64))(*(this + 8));
      result = (*(**(a3 + 8) + 64))(*(a3 + 8));
      v115 = result;
      if (hasAlpha)
      {
        if (v112)
        {
          if (v109 == v110)
          {
            if (v114)
            {
              for (i9 = 0; i9 != v114; ++i9)
              {
                if (v113)
                {
                  v394 = 0;
                  v395 = v113;
                  do
                  {
                    v396 = (v108 + v394);
                    *v396 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v107 + v394));
                    result = 15360;
                    v396[1] = 15360;
                    v394 += 4;
                    --v395;
                  }

                  while (v395);
                }

                v107 += v446;
                v108 += v115;
              }
            }
          }

          else if (v109)
          {
            if (v114)
            {
              for (i10 = 0; i10 != v114; ++i10)
              {
                if (v113)
                {
                  v117 = 0;
                  v118 = v113;
                  do
                  {
                    v119 = (v108 + v117);
                    *v119 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v107 + v117));
                    result = 15360;
                    v119[1] = 15360;
                    v117 += 4;
                    --v118;
                  }

                  while (v118);
                }

                v107 += v446;
                v108 += v115;
              }
            }
          }

          else if (v114)
          {
            for (i11 = 0; i11 != v114; ++i11)
            {
              if (v113)
              {
                v423 = 0;
                v424 = v113;
                do
                {
                  v425 = (v108 + v423);
                  *v425 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v107 + v423));
                  v425[1] = 15360;
                  result = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::premultiply((v108 + v423));
                  v423 += 4;
                  --v424;
                }

                while (v424);
              }

              v107 += v446;
              v108 += v115;
            }
          }
        }

        else if (v109)
        {
          if (v114)
          {
            for (i12 = 0; i12 != v114; ++i12)
            {
              if (v113)
              {
                v296 = 0;
                v297 = v113;
                do
                {
                  result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v107 + v296));
                  *(v108 + v296) = result;
                  v296 += 4;
                  --v297;
                }

                while (v297);
              }

              v107 += v446;
              v108 += v115;
            }
          }
        }

        else if (v114)
        {
          for (i13 = 0; i13 != v114; ++i13)
          {
            if (v113)
            {
              v403 = 0;
              v404 = v113;
              do
              {
                result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v107 + v403));
                *(v108 + v403) = result;
                v403 += 4;
                --v404;
              }

              while (v404);
            }

            v107 += v446;
            v108 += v115;
          }
        }
      }

      else if (v112)
      {
        if (v114)
        {
          for (i14 = 0; i14 != v114; ++i14)
          {
            if (v113)
            {
              v188 = 0;
              v189 = v113;
              do
              {
                v190 = (v108 + v188);
                *v190 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v107 + v188));
                result = 15360;
                v190[1] = 15360;
                v188 += 4;
                --v189;
              }

              while (v189);
            }

            v107 += v446;
            v108 += v115;
          }
        }
      }

      else if (v114)
      {
        for (i15 = 0; i15 != v114; ++i15)
        {
          if (v113)
          {
            v304 = 0;
            v305 = v113;
            do
            {
              result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v107 + v304));
              *(v108 + v304) = result;
              v304 += 4;
              --v305;
            }

            while (v305);
          }

          v107 += v446;
          v108 += v115;
        }
      }
    }

    else if (result == 15)
    {
      v55 = (*(**(this + 8) + 16))(*(this + 8));
      v56 = (*(**(a3 + 8) + 16))(*(a3 + 8));
      v57 = (*(*this + 48))(this);
      v58 = (*(*a3 + 48))(a3);
      v59 = PCPixelFormat::hasAlpha(0xEu);
      v60 = PCPixelFormat::hasAlpha(0xFu);
      v61 = (*(*this + 16))(this);
      v62 = (*(*this + 24))(this);
      v63 = (*(**(this + 8) + 64))(*(this + 8));
      result = (*(**(a3 + 8) + 64))(*(a3 + 8));
      if (v59)
      {
        if (v60)
        {
          if (v57 == v58)
          {
            if (v62)
            {
              for (i16 = 0; i16 != v62; ++i16)
              {
                if (v61)
                {
                  v378 = 0;
                  v379 = v56;
                  do
                  {
                    *v379 = *(v55 + 4 * v378);
                    v379[1] = 1065353216;
                    ++v378;
                    v379 += 2;
                  }

                  while (v61 != v378);
                }

                v55 += v63;
                v56 += result;
              }
            }
          }

          else if (v57)
          {
            if (v62)
            {
              for (i17 = 0; i17 != v62; ++i17)
              {
                if (v61)
                {
                  v65 = 0;
                  v66 = v56;
                  do
                  {
                    *v66 = *(v55 + 4 * v65);
                    v66[1] = 1065353216;
                    ++v65;
                    v66 += 2;
                  }

                  while (v61 != v65);
                }

                v55 += v63;
                v56 += result;
              }
            }
          }

          else if (v62)
          {
            v411 = 0;
            v412 = (v56 + 4);
            do
            {
              if (v61)
              {
                v413 = 0;
                v414 = v412;
                do
                {
                  v415 = *(v55 + 4 * v413);
                  *v414 = 1065353216;
                  *(v414 - 1) = v415;
                  ++v413;
                  v414 += 2;
                }

                while (v61 != v413);
              }

              v55 += v63;
              ++v411;
              v412 = (v412 + result);
            }

            while (v411 != v62);
          }
        }

        else if (v57)
        {
          if (v62)
          {
            for (i18 = 0; i18 != v62; ++i18)
            {
              if (v61)
              {
                v280 = 0;
                v281 = v56;
                do
                {
                  *v281 = *(v55 + 4 * v280);
                  v281 += 2;
                  ++v280;
                }

                while (v61 != v280);
              }

              v55 += v63;
              v56 += result;
            }
          }
        }

        else if (v62)
        {
          for (i19 = 0; i19 != v62; ++i19)
          {
            if (v61)
            {
              v386 = 0;
              v387 = v56;
              do
              {
                *v387 = *(v55 + 4 * v386);
                v387 += 2;
                ++v386;
              }

              while (v61 != v386);
            }

            v55 += v63;
            v56 += result;
          }
        }
      }

      else if (v60)
      {
        if (v62)
        {
          for (i20 = 0; i20 != v62; ++i20)
          {
            if (v61)
            {
              v180 = 0;
              v181 = v56;
              do
              {
                *v181 = *(v55 + 4 * v180);
                v181[1] = 1065353216;
                ++v180;
                v181 += 2;
              }

              while (v61 != v180);
            }

            v55 += v63;
            v56 += result;
          }
        }
      }

      else if (v62)
      {
        for (i21 = 0; i21 != v62; ++i21)
        {
          if (v61)
          {
            v288 = 0;
            v289 = v56;
            do
            {
              *v289 = *(v55 + 4 * v288);
              v289 += 2;
              ++v288;
            }

            while (v61 != v288);
          }

          v55 += v63;
          v56 += result;
        }
      }
    }
  }

  else if (result == 2)
  {
    v92 = (*(**(this + 8) + 16))(*(this + 8));
    v93 = (*(**(a3 + 8) + 16))(*(a3 + 8));
    v94 = (*(*this + 48))(this);
    v95 = (*(*a3 + 48))(a3);
    v96 = PCPixelFormat::hasAlpha(1u);
    v97 = PCPixelFormat::hasAlpha(2u);
    v98 = (*(*this + 16))(this);
    v99 = (*(*this + 24))(this);
    v100 = (*(**(this + 8) + 64))(*(this + 8));
    result = (*(**(a3 + 8) + 64))(*(a3 + 8));
    if (v96)
    {
      if (v97)
      {
        if (v94 == v95)
        {
          if (v99)
          {
            for (i22 = 0; i22 != v99; ++i22)
            {
              if (v98)
              {
                v389 = 0;
                v390 = v93;
                do
                {
                  LOBYTE(v101) = *(v92 + v389);
                  v391 = *&v101 * 0.00392156863;
                  v101 = (v391 * 255.0) + 0.5 + 0.0000001;
                  v392 = vcvtmd_s64_f64(v101);
                  if (v392 >= 255)
                  {
                    v392 = 255;
                  }

                  *v390 = v392 & ~(v392 >> 31);
                  v390[1] = -1;
                  ++v389;
                  v390 += 2;
                }

                while (v98 != v389);
              }

              v92 += v100;
              v93 += result;
            }
          }
        }

        else if (v94)
        {
          if (v99)
          {
            for (i23 = 0; i23 != v99; ++i23)
            {
              if (v98)
              {
                v103 = 0;
                v104 = v93;
                do
                {
                  LOBYTE(v101) = *(v92 + v103);
                  v105 = *&v101 * 0.00392156863;
                  v101 = (v105 * 255.0) + 0.5 + 0.0000001;
                  v106 = vcvtmd_s64_f64(v101);
                  if (v106 >= 255)
                  {
                    v106 = 255;
                  }

                  *v104 = v106 & ~(v106 >> 31);
                  v104[1] = -1;
                  ++v103;
                  v104 += 2;
                }

                while (v98 != v103);
              }

              v92 += v100;
              v93 += result;
            }
          }
        }

        else if (v99)
        {
          v416 = 0;
          v417 = (v93 + 1);
          do
          {
            if (v98)
            {
              v418 = 0;
              v419 = v417;
              do
              {
                LOBYTE(v101) = *(v92 + v418);
                v420 = *&v101 * 0.00392156863;
                v101 = (v420 * 255.0) + 0.5 + 0.0000001;
                v421 = vcvtmd_s64_f64(v101);
                if (v421 >= 255)
                {
                  v421 = 255;
                }

                *v419 = -1;
                *(v419 - 1) = v421 & ~(v421 >> 31);
                ++v418;
                v419 += 2;
              }

              while (v98 != v418);
            }

            v92 += v100;
            ++v416;
            v417 += result;
          }

          while (v416 != v99);
        }
      }

      else if (v94)
      {
        if (v99)
        {
          for (i24 = 0; i24 != v99; ++i24)
          {
            if (v98)
            {
              v291 = 0;
              v292 = v93;
              do
              {
                LOBYTE(v101) = *(v92 + v291);
                v293 = *&v101 * 0.00392156863;
                v101 = (v293 * 255.0) + 0.5 + 0.0000001;
                v294 = vcvtmd_s64_f64(v101);
                if (v294 >= 255)
                {
                  v294 = 255;
                }

                *v292 = v294 & ~(v294 >> 31);
                v292 += 2;
                ++v291;
              }

              while (v98 != v291);
            }

            v92 += v100;
            v93 += result;
          }
        }
      }

      else if (v99)
      {
        for (i25 = 0; i25 != v99; ++i25)
        {
          if (v98)
          {
            v398 = 0;
            v399 = v93;
            do
            {
              LOBYTE(v101) = *(v92 + v398);
              v400 = *&v101 * 0.00392156863;
              v101 = (v400 * 255.0) + 0.5 + 0.0000001;
              v401 = vcvtmd_s64_f64(v101);
              if (v401 >= 255)
              {
                v401 = 255;
              }

              *v399 = v401 & ~(v401 >> 31);
              v399 += 2;
              ++v398;
            }

            while (v98 != v398);
          }

          v92 += v100;
          v93 += result;
        }
      }
    }

    else if (v97)
    {
      if (v99)
      {
        for (i26 = 0; i26 != v99; ++i26)
        {
          if (v98)
          {
            v183 = 0;
            v184 = v93;
            do
            {
              LOBYTE(v101) = *(v92 + v183);
              v185 = *&v101 * 0.00392156863;
              v101 = (v185 * 255.0) + 0.5 + 0.0000001;
              v186 = vcvtmd_s64_f64(v101);
              if (v186 >= 255)
              {
                v186 = 255;
              }

              *v184 = v186 & ~(v186 >> 31);
              v184[1] = -1;
              ++v183;
              v184 += 2;
            }

            while (v98 != v183);
          }

          v92 += v100;
          v93 += result;
        }
      }
    }

    else if (v99)
    {
      for (i27 = 0; i27 != v99; ++i27)
      {
        if (v98)
        {
          v299 = 0;
          v300 = v93;
          do
          {
            LOBYTE(v101) = *(v92 + v299);
            v301 = *&v101 * 0.00392156863;
            v101 = (v301 * 255.0) + 0.5 + 0.0000001;
            v302 = vcvtmd_s64_f64(v101);
            if (v302 >= 255)
            {
              v302 = 255;
            }

            *v300 = v302 & ~(v302 >> 31);
            v300 += 2;
            ++v299;
          }

          while (v98 != v299);
        }

        v92 += v100;
        v93 += result;
      }
    }
  }

  else if (result == 8)
  {
    v26 = (*(**(this + 8) + 16))(*(this + 8));
    v27 = (*(**(a3 + 8) + 16))(*(a3 + 8));
    v28 = (*(*this + 48))(this);
    v29 = (*(*a3 + 48))(a3);
    v30 = PCPixelFormat::hasAlpha(7u);
    v31 = PCPixelFormat::hasAlpha(8u);
    v32 = (*(*this + 16))(this);
    v33 = (*(*this + 24))(this);
    v34 = (*(**(this + 8) + 64))(*(this + 8));
    result = (*(**(a3 + 8) + 64))(*(a3 + 8));
    if (v30)
    {
      if (v31)
      {
        if (v28 == v29)
        {
          if (v33)
          {
            for (i28 = 0; i28 != v33; ++i28)
            {
              if (v32)
              {
                v372 = 0;
                v373 = v32;
                do
                {
                  LOWORD(v35) = *(v26 + v372);
                  v374 = *&v35 * 0.0000152590219;
                  v35 = (v374 * 65535.0) + 0.5 + 0.0000001;
                  v375 = vcvtmd_s64_f64(v35);
                  v376 = (v27 + 2 * v372);
                  if (v375 >= 0xFFFF)
                  {
                    v375 = 0xFFFF;
                  }

                  *v376 = v375 & ~(v375 >> 31);
                  v376[1] = -1;
                  v372 += 2;
                  --v373;
                }

                while (v373);
              }

              v26 += v34;
              v27 += result;
            }
          }
        }

        else if (v28)
        {
          if (v33)
          {
            for (i29 = 0; i29 != v33; ++i29)
            {
              if (v32)
              {
                v37 = 0;
                v38 = v32;
                do
                {
                  LOWORD(v35) = *(v26 + v37);
                  v39 = *&v35 * 0.0000152590219;
                  v35 = (v39 * 65535.0) + 0.5 + 0.0000001;
                  v40 = vcvtmd_s64_f64(v35);
                  v41 = (v27 + 2 * v37);
                  if (v40 >= 0xFFFF)
                  {
                    v40 = 0xFFFF;
                  }

                  *v41 = v40 & ~(v40 >> 31);
                  v41[1] = -1;
                  v37 += 2;
                  --v38;
                }

                while (v38);
              }

              v26 += v34;
              v27 += result;
            }
          }
        }

        else if (v33)
        {
          for (i30 = 0; i30 != v33; ++i30)
          {
            if (v32)
            {
              v406 = 0;
              v407 = v32;
              do
              {
                LOWORD(v35) = *(v26 + v406);
                v408 = *&v35 * 0.0000152590219;
                v35 = (v408 * 65535.0) + 0.5 + 0.0000001;
                v409 = vcvtmd_s64_f64(v35);
                v410 = (v27 + 2 * v406);
                if (v409 >= 0xFFFF)
                {
                  v409 = 0xFFFF;
                }

                v410[1] = -1;
                *v410 = v409 & ~(v409 >> 31);
                v406 += 2;
                --v407;
              }

              while (v407);
            }

            v26 += v34;
            v27 += result;
          }
        }
      }

      else if (v28)
      {
        if (v33)
        {
          for (i31 = 0; i31 != v33; ++i31)
          {
            if (v32)
            {
              v275 = 0;
              v276 = v32;
              do
              {
                LOWORD(v35) = *(v26 + v275);
                v277 = *&v35 * 0.0000152590219;
                v35 = (v277 * 65535.0) + 0.5 + 0.0000001;
                v278 = vcvtmd_s64_f64(v35);
                if (v278 >= 0xFFFF)
                {
                  v278 = 0xFFFF;
                }

                *(v27 + 2 * v275) = v278 & ~(v278 >> 31);
                v275 += 2;
                --v276;
              }

              while (v276);
            }

            v26 += v34;
            v27 += result;
          }
        }
      }

      else if (v33)
      {
        for (i32 = 0; i32 != v33; ++i32)
        {
          if (v32)
          {
            v381 = 0;
            v382 = v32;
            do
            {
              LOWORD(v35) = *(v26 + v381);
              v383 = *&v35 * 0.0000152590219;
              v35 = (v383 * 65535.0) + 0.5 + 0.0000001;
              v384 = vcvtmd_s64_f64(v35);
              if (v384 >= 0xFFFF)
              {
                v384 = 0xFFFF;
              }

              *(v27 + 2 * v381) = v384 & ~(v384 >> 31);
              v381 += 2;
              --v382;
            }

            while (v382);
          }

          v26 += v34;
          v27 += result;
        }
      }
    }

    else if (v31)
    {
      if (v33)
      {
        for (i33 = 0; i33 != v33; ++i33)
        {
          if (v32)
          {
            v174 = 0;
            v175 = v32;
            do
            {
              LOWORD(v35) = *(v26 + v174);
              v176 = *&v35 * 0.0000152590219;
              v35 = (v176 * 65535.0) + 0.5 + 0.0000001;
              v177 = vcvtmd_s64_f64(v35);
              v178 = (v27 + 2 * v174);
              if (v177 >= 0xFFFF)
              {
                v177 = 0xFFFF;
              }

              *v178 = v177 & ~(v177 >> 31);
              v178[1] = -1;
              v174 += 2;
              --v175;
            }

            while (v175);
          }

          v26 += v34;
          v27 += result;
        }
      }
    }

    else if (v33)
    {
      for (i34 = 0; i34 != v33; ++i34)
      {
        if (v32)
        {
          v283 = 0;
          v284 = v32;
          do
          {
            LOWORD(v35) = *(v26 + v283);
            v285 = *&v35 * 0.0000152590219;
            v35 = (v285 * 65535.0) + 0.5 + 0.0000001;
            v286 = vcvtmd_s64_f64(v35);
            if (v286 >= 0xFFFF)
            {
              v286 = 0xFFFF;
            }

            *(v27 + 2 * v283) = v286 & ~(v286 >> 31);
            v283 += 2;
            --v284;
          }

          while (v284);
        }

        v26 += v34;
        v27 += result;
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::copyFromCGBitmap(_anonymous_namespace_ *this, PCBitmap *a2, PCBitmap *a3)
{
  result = (*(**(a2 + 8) + 48))(*(a2 + 8));
  if (result > 9)
  {
    if (result <= 12)
    {
      if (result == 10)
      {
        v102 = (*(**(this + 8) + 16))(*(this + 8));
        v103 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v104 = (*(*this + 48))(this);
        v105 = (*(*a2 + 48))(a2);
        hasAlpha = PCPixelFormat::hasAlpha(0xAu);
        v107 = PCPixelFormat::hasAlpha(0xAu);
        v108 = (*(*this + 16))(this);
        v109 = (*(*this + 24))(this);
        v110 = (*(**(this + 8) + 64))(*(this + 8));
        result = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v114 = result;
        if (hasAlpha)
        {
          if (v107)
          {
            if (v104 == v105)
            {
              if (v109)
              {
                for (i = 0; i != v109; ++i)
                {
                  if (v108)
                  {
                    v482 = 0;
                    v483 = v108;
                    do
                    {
                      v484 = (v102 + v482);
                      LOWORD(v113) = *(v102 + v482);
                      v485 = *&v113 * 0.0000152590219;
                      v486 = (v485 * 65535.0) + 0.5 + 0.0000001;
                      v487 = vcvtmd_s64_f64(v486);
                      v488 = (v103 + v482);
                      if (v487 >= 0xFFFF)
                      {
                        v487 = 0xFFFF;
                      }

                      *v488 = v487 & ~(v487 >> 31);
                      LOWORD(v486) = v484[1];
                      v489 = *&v486 * 0.0000152590219;
                      v490 = (v489 * 65535.0) + 0.5 + 0.0000001;
                      v491 = vcvtmd_s64_f64(v490);
                      if (v491 >= 0xFFFF)
                      {
                        v491 = 0xFFFF;
                      }

                      v488[1] = v491 & ~(v491 >> 31);
                      LOWORD(v490) = v484[2];
                      v492 = *&v490 * 0.0000152590219;
                      v493 = (v492 * 65535.0) + 0.5 + 0.0000001;
                      v494 = vcvtmd_s64_f64(v493);
                      if (v494 >= 0xFFFF)
                      {
                        v494 = 0xFFFF;
                      }

                      v488[2] = v494 & ~(v494 >> 31);
                      LOWORD(v493) = v484[3];
                      v495 = *&v493 * 0.0000152590219;
                      v113 = (v495 * 65535.0) + 0.5 + 0.0000001;
                      v496 = vcvtmd_s64_f64(v113);
                      if (v496 >= 0xFFFF)
                      {
                        v496 = 0xFFFF;
                      }

                      v488[3] = v496 & ~(v496 >> 31);
                      v482 += 8;
                      --v483;
                    }

                    while (v483);
                  }

                  v102 += v110;
                  v103 += result;
                }
              }
            }

            else if (v104)
            {
              if (v109)
              {
                v115 = 0;
                v860 = v110;
                do
                {
                  if (v108)
                  {
                    v116 = 0;
                    v117 = v108;
                    do
                    {
                      v118 = (v103 + v116);
                      v864 = *(v102 + v116);
                      result = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>::unpremultiply(&v864, v864, v111, v112);
                      LOWORD(v119) = LOWORD(v864);
                      *&v119 = v119 * 0.0000152590219;
                      v120 = (*&v119 * 65535.0) + 0.5 + 0.0000001;
                      v121 = vcvtmd_s64_f64(v120);
                      if (v121 >= 0xFFFF)
                      {
                        v121 = 0xFFFF;
                      }

                      *v118 = v121 & ~(v121 >> 31);
                      LOWORD(v120) = WORD1(v864);
                      v122 = *&v120 * 0.0000152590219;
                      v123 = (v122 * 65535.0) + 0.5 + 0.0000001;
                      v124 = vcvtmd_s64_f64(v123);
                      if (v124 >= 0xFFFF)
                      {
                        v124 = 0xFFFF;
                      }

                      v118[1] = v124 & ~(v124 >> 31);
                      LOWORD(v123) = WORD2(v864);
                      v125 = *&v123 * 0.0000152590219;
                      v126 = (v125 * 65535.0) + 0.5 + 0.0000001;
                      v127 = vcvtmd_s64_f64(v126);
                      if (v127 >= 0xFFFF)
                      {
                        v127 = 0xFFFF;
                      }

                      v118[2] = v127 & ~(v127 >> 31);
                      LOWORD(v126) = HIWORD(v864);
                      v128 = *&v126 * 0.0000152590219;
                      v129 = vcvtmd_s64_f64((v128 * 65535.0) + 0.5 + 0.0000001);
                      if (v129 >= 0xFFFF)
                      {
                        v129 = 0xFFFF;
                      }

                      v118[3] = v129 & ~(v129 >> 31);
                      v116 += 8;
                      --v117;
                    }

                    while (v117);
                  }

                  v102 += v860;
                  v103 += v114;
                  ++v115;
                }

                while (v115 != v109);
              }
            }

            else if (v109)
            {
              for (j = 0; j != v109; ++j)
              {
                if (v108)
                {
                  v691 = 0;
                  v692 = v108;
                  do
                  {
                    v693 = (v102 + v691);
                    LOWORD(v113) = *(v102 + v691);
                    v694 = *&v113 * 0.0000152590219;
                    v695 = (v694 * 65535.0) + 0.5 + 0.0000001;
                    v696 = vcvtmd_s64_f64(v695);
                    v697 = (v103 + v691);
                    if (v696 >= 0xFFFF)
                    {
                      v696 = 0xFFFF;
                    }

                    v698 = v696 & ~(v696 >> 31);
                    *v697 = v698;
                    LOWORD(v695) = v693[1];
                    v699 = *&v695 * 0.0000152590219;
                    v700 = (v699 * 65535.0) + 0.5 + 0.0000001;
                    v701 = vcvtmd_s64_f64(v700);
                    if (v701 >= 0xFFFF)
                    {
                      v701 = 0xFFFF;
                    }

                    v702 = v701 & ~(v701 >> 31);
                    v697[1] = v702;
                    LOWORD(v700) = v693[2];
                    v703 = *&v700 * 0.0000152590219;
                    v704 = (v703 * 65535.0) + 0.5 + 0.0000001;
                    v705 = vcvtmd_s64_f64(v704);
                    if (v705 >= 0xFFFF)
                    {
                      v705 = 0xFFFF;
                    }

                    v706 = v705 & ~(v705 >> 31);
                    v697[2] = v706;
                    LOWORD(v704) = v693[3];
                    v707 = *&v704 * 0.0000152590219;
                    v113 = (v707 * 65535.0) + 0.5 + 0.0000001;
                    v708 = vcvtmd_s64_f64(v113);
                    if (v708 >= 0xFFFF)
                    {
                      v708 = 0xFFFF;
                    }

                    v709 = v708 & ~(v708 >> 31);
                    v697[3] = v709;
                    *v697 = v709 * v698 / 0xFFFFu;
                    v697[1] = v709 * v702 / 0xFFFFu;
                    v697[2] = v709 * v706 / 0xFFFFu;
                    v691 += 8;
                    --v692;
                  }

                  while (v692);
                }

                v102 += v110;
                v103 += result;
              }
            }
          }

          else if (v104)
          {
            if (v109)
            {
              for (k = 0; k != v109; ++k)
              {
                if (v108)
                {
                  v327 = 0;
                  v328 = v108;
                  do
                  {
                    v329 = v102 + v327;
                    LOWORD(v113) = *(v102 + v327);
                    v330 = *&v113 * 0.0000152590219;
                    v331 = (v330 * 65535.0) + 0.5 + 0.0000001;
                    v332 = (v103 + v327);
                    v333 = vcvtmd_s64_f64(v331);
                    if (v333 >= 0xFFFF)
                    {
                      v333 = 0xFFFF;
                    }

                    *v332 = v333 & ~(v333 >> 31);
                    LOWORD(v331) = *(v329 + 2);
                    v334 = *&v331 * 0.0000152590219;
                    v335 = (v334 * 65535.0) + 0.5 + 0.0000001;
                    v336 = vcvtmd_s64_f64(v335);
                    if (v336 >= 0xFFFF)
                    {
                      v336 = 0xFFFF;
                    }

                    v332[1] = v336 & ~(v336 >> 31);
                    LOWORD(v335) = *(v329 + 4);
                    v337 = *&v335 * 0.0000152590219;
                    v113 = (v337 * 65535.0) + 0.5 + 0.0000001;
                    v338 = vcvtmd_s64_f64(v113);
                    if (v338 >= 0xFFFF)
                    {
                      v338 = 0xFFFF;
                    }

                    v332[2] = v338 & ~(v338 >> 31);
                    v327 += 8;
                    --v328;
                  }

                  while (v328);
                }

                v102 += v110;
                v103 += result;
              }
            }
          }

          else if (v109)
          {
            for (m = 0; m != v109; ++m)
            {
              if (v108)
              {
                v528 = 0;
                v529 = v108;
                do
                {
                  v530 = (v103 + v528);
                  v531 = *(v102 + v528 + 6);
                  v532 = (v531 * *(v102 + v528) / 0xFFFF);
                  v533 = (v531 * *(v102 + v528 + 2) / 0xFFFF);
                  v534 = (v531 * *(v102 + v528 + 4) / 0xFFFF);
                  v535 = v532 * 0.0000152590219;
                  v536 = vcvtmd_s64_f64((v535 * 65535.0) + 0.5 + 0.0000001);
                  if (v536 >= 0xFFFF)
                  {
                    v536 = 0xFFFF;
                  }

                  v537 = v533 * 0.0000152590219;
                  v538 = v536 & ~(v536 >> 31);
                  v539 = vcvtmd_s64_f64((v537 * 65535.0) + 0.5 + 0.0000001);
                  if (v539 >= 0xFFFF)
                  {
                    v539 = 0xFFFF;
                  }

                  v540 = v534 * 0.0000152590219;
                  *v530 = v538;
                  v541 = vcvtmd_s64_f64((v540 * 65535.0) + 0.5 + 0.0000001);
                  v530[1] = v539 & ~(v539 >> 31);
                  if (v541 >= 0xFFFF)
                  {
                    v541 = 0xFFFF;
                  }

                  v530[2] = v541 & ~(v541 >> 31);
                  v528 += 8;
                  --v529;
                }

                while (v529);
              }

              v102 += v110;
              v103 += result;
            }
          }
        }

        else if (v107)
        {
          if (v109)
          {
            for (n = 0; n != v109; ++n)
            {
              if (v108)
              {
                v208 = 0;
                v209 = v108;
                do
                {
                  v210 = v102 + v208;
                  LOWORD(v113) = *(v102 + v208);
                  v211 = *&v113 * 0.0000152590219;
                  v212 = (v211 * 65535.0) + 0.5 + 0.0000001;
                  v213 = vcvtmd_s64_f64(v212);
                  v214 = (v103 + v208);
                  if (v213 >= 0xFFFF)
                  {
                    v213 = 0xFFFF;
                  }

                  *v214 = v213 & ~(v213 >> 31);
                  LOWORD(v212) = *(v210 + 2);
                  v215 = *&v212 * 0.0000152590219;
                  v216 = (v215 * 65535.0) + 0.5 + 0.0000001;
                  v217 = vcvtmd_s64_f64(v216);
                  if (v217 >= 0xFFFF)
                  {
                    v217 = 0xFFFF;
                  }

                  v214[1] = v217 & ~(v217 >> 31);
                  LOWORD(v216) = *(v210 + 4);
                  v218 = *&v216 * 0.0000152590219;
                  v113 = (v218 * 65535.0) + 0.5 + 0.0000001;
                  v219 = vcvtmd_s64_f64(v113);
                  if (v219 >= 0xFFFF)
                  {
                    v219 = 0xFFFF;
                  }

                  v214[2] = v219 & ~(v219 >> 31);
                  v214[3] = -1;
                  v208 += 8;
                  --v209;
                }

                while (v209);
              }

              v102 += v110;
              v103 += result;
            }
          }
        }

        else if (v109)
        {
          for (ii = 0; ii != v109; ++ii)
          {
            if (v108)
            {
              v355 = 0;
              v356 = v108;
              do
              {
                v357 = v102 + v355;
                LOWORD(v113) = *(v102 + v355);
                v358 = *&v113 * 0.0000152590219;
                v359 = (v358 * 65535.0) + 0.5 + 0.0000001;
                v360 = (v103 + v355);
                v361 = vcvtmd_s64_f64(v359);
                if (v361 >= 0xFFFF)
                {
                  v361 = 0xFFFF;
                }

                *v360 = v361 & ~(v361 >> 31);
                LOWORD(v359) = *(v357 + 2);
                v362 = *&v359 * 0.0000152590219;
                v363 = (v362 * 65535.0) + 0.5 + 0.0000001;
                v364 = vcvtmd_s64_f64(v363);
                if (v364 >= 0xFFFF)
                {
                  v364 = 0xFFFF;
                }

                v360[1] = v364 & ~(v364 >> 31);
                LOWORD(v363) = *(v357 + 4);
                v365 = *&v363 * 0.0000152590219;
                v113 = (v365 * 65535.0) + 0.5 + 0.0000001;
                v366 = vcvtmd_s64_f64(v113);
                if (v366 >= 0xFFFF)
                {
                  v366 = 0xFFFF;
                }

                v360[2] = v366 & ~(v366 >> 31);
                v355 += 8;
                --v356;
              }

              while (v356);
            }

            v102 += v110;
            v103 += result;
          }
        }
      }

      else if (result == 11)
      {
        v61 = (*(**(this + 8) + 16))(*(this + 8));
        v62 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v63 = (*(*this + 48))(this);
        v64 = (*(*a2 + 48))(a2);
        v65 = PCPixelFormat::hasAlpha(0xEu);
        v66 = PCPixelFormat::hasAlpha(0xBu);
        v67 = (*(*this + 16))(this);
        v68 = (*(*this + 24))(this);
        v69 = (*(**(this + 8) + 64))(*(this + 8));
        result = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v70 = result;
        if (v65)
        {
          if (v66)
          {
            if (v63 == v64)
            {
              if (v68)
              {
                for (jj = 0; jj != v68; ++jj)
                {
                  if (v67)
                  {
                    v464 = 0;
                    do
                    {
                      result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v61 + 4 * v464));
                      *(v62 + 2 * v464++) = result;
                    }

                    while (v67 != v464);
                  }

                  v61 += v69;
                  v62 += v70;
                }
              }
            }

            else if (v63)
            {
              if (v68)
              {
                for (kk = 0; kk != v68; ++kk)
                {
                  if (v67)
                  {
                    v72 = 0;
                    do
                    {
                      result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v61 + 4 * v72));
                      *(v62 + 2 * v72++) = result;
                    }

                    while (v67 != v72);
                  }

                  v61 += v69;
                  v62 += v70;
                }
              }
            }

            else if (v68)
            {
              for (mm = 0; mm != v68; ++mm)
              {
                if (v67)
                {
                  v670 = 0;
                  do
                  {
                    result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v61 + 4 * v670));
                    *(v62 + 2 * v670++) = result;
                  }

                  while (v67 != v670);
                }

                v61 += v69;
                v62 += v70;
              }
            }
          }

          else if (v63)
          {
            if (v68)
            {
              for (nn = 0; nn != v68; ++nn)
              {
                if (v67)
                {
                  v312 = 0;
                  do
                  {
                    result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v61 + 4 * v312));
                    *(v62 + 2 * v312++) = result;
                  }

                  while (v67 != v312);
                }

                v61 += v69;
                v62 += v70;
              }
            }
          }

          else if (v68)
          {
            for (i1 = 0; i1 != v68; ++i1)
            {
              if (v67)
              {
                v511 = 0;
                do
                {
                  result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v61 + 4 * v511));
                  *(v62 + 2 * v511++) = result;
                }

                while (v67 != v511);
              }

              v61 += v69;
              v62 += v70;
            }
          }
        }

        else if (v66)
        {
          if (v68)
          {
            for (i2 = 0; i2 != v68; ++i2)
            {
              if (v67)
              {
                v193 = 0;
                do
                {
                  result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v61 + 4 * v193));
                  *(v62 + 2 * v193++) = result;
                }

                while (v67 != v193);
              }

              v61 += v69;
              v62 += v70;
            }
          }
        }

        else if (v68)
        {
          for (i3 = 0; i3 != v68; ++i3)
          {
            if (v67)
            {
              v340 = 0;
              do
              {
                result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v61 + 4 * v340));
                *(v62 + 2 * v340++) = result;
              }

              while (v67 != v340);
            }

            v61 += v69;
            v62 += v70;
          }
        }
      }
    }

    else
    {
      switch(result)
      {
        case 0xD:
          v159 = (*(**(this + 8) + 16))(*(this + 8));
          v160 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v161 = (*(*this + 48))(this);
          v162 = (*(*a2 + 48))(a2);
          v163 = PCPixelFormat::hasAlpha(0x10u);
          v164 = PCPixelFormat::hasAlpha(0xDu);
          v165 = (*(*this + 16))(this);
          v166 = (*(*this + 24))(this);
          v862 = (*(**(this + 8) + 64))(*(this + 8));
          result = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v167 = result;
          if (v163)
          {
            if (v164)
            {
              if (v161 == v162)
              {
                if (v166)
                {
                  for (i4 = 0; i4 != v166; ++i4)
                  {
                    v559 = v165;
                    v560 = v160;
                    for (i5 = v159; v559; --v559)
                    {
                      *v560 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i5);
                      v560[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i5[1]);
                      v560[2] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i5[2]);
                      result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i5[3]);
                      v560[3] = result;
                      v560 += 4;
                      i5 += 4;
                    }

                    v159 += v862;
                    v160 += v167;
                  }
                }
              }

              else if (v161)
              {
                if (v166)
                {
                  for (i6 = 0; i6 != v166; ++i6)
                  {
                    v169 = v165;
                    v170 = v160;
                    for (i7 = v159; v169; --v169)
                    {
                      v172 = i7[3];
                      if (v172 == 1.0)
                      {
                        v173 = *i7;
                        v174 = i7[1];
                        v175 = i7[2];
                      }

                      else
                      {
                        v173 = 0.0;
                        v174 = 0.0;
                        v175 = 0.0;
                        if (v172 != 0.0)
                        {
                          v173 = *i7 * (1.0 / v172);
                          v174 = i7[1] * (1.0 / v172);
                          v175 = i7[2] * (1.0 / v172);
                        }
                      }

                      *v170 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v173);
                      v170[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v174);
                      v170[2] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v175);
                      result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v172);
                      v170[3] = result;
                      v170 += 4;
                      i7 += 4;
                    }

                    v159 += v862;
                    v160 += v167;
                  }
                }
              }

              else if (v166)
              {
                for (i8 = 0; i8 != v166; ++i8)
                {
                  v745 = v165;
                  v746 = v160;
                  for (i9 = v159; v745; --v745)
                  {
                    *v746 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i9);
                    v746[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i9[1]);
                    v746[2] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i9[2]);
                    v746[3] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i9[3]);
                    result = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>::premultiply(v746);
                    v746 += 4;
                    i9 += 4;
                  }

                  v159 += v862;
                  v160 += v167;
                }
              }
            }

            else if (v161)
            {
              if (v166)
              {
                for (i10 = 0; i10 != v166; ++i10)
                {
                  v381 = v165;
                  v382 = v160;
                  for (i11 = v159; v381; --v381)
                  {
                    *v382 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i11);
                    v382[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i11[1]);
                    result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i11[2]);
                    v382[2] = result;
                    v382 += 4;
                    i11 += 4;
                  }

                  v159 += v862;
                  v160 += v167;
                }
              }
            }

            else if (v166)
            {
              for (i12 = 0; i12 != v166; ++i12)
              {
                v577 = v165;
                v578 = v160;
                for (i13 = v159; v577; --v577)
                {
                  v580 = i13[3];
                  v581 = i13[1] * v580;
                  v582 = i13[2] * v580;
                  *v578 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i13 * v580);
                  v578[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v581);
                  result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v582);
                  v578[2] = result;
                  v578 += 4;
                  i13 += 4;
                }

                v159 += v862;
                v160 += v167;
              }
            }
          }

          else if (v164)
          {
            if (v166)
            {
              for (i14 = 0; i14 != v166; ++i14)
              {
                v234 = v165;
                v235 = v160;
                for (i15 = v159; v234; --v234)
                {
                  *v235 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i15);
                  v235[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i15[1]);
                  v235[2] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i15[2]);
                  result = 15360;
                  v235[3] = 15360;
                  v235 += 4;
                  i15 += 4;
                }

                v159 += v862;
                v160 += v167;
              }
            }
          }

          else if (v166)
          {
            for (i16 = 0; i16 != v166; ++i16)
            {
              v398 = v165;
              v399 = v160;
              for (i17 = v159; v398; --v398)
              {
                *v399 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i17);
                v399[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i17[1]);
                result = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i17[2]);
                v399[2] = result;
                v399 += 4;
                i17 += 4;
              }

              v159 += v862;
              v160 += v167;
            }
          }

          break;
        case 0x10:
          v176 = (*(**(this + 8) + 16))(*(this + 8));
          v177 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v178 = (*(*this + 48))(this);
          v179 = (*(*a2 + 48))(a2);
          v180 = PCPixelFormat::hasAlpha(0x10u);
          v181 = PCPixelFormat::hasAlpha(0x10u);
          v182 = (*(*this + 16))(this);
          v183 = (*(*this + 24))(this);
          v184 = (*(**(this + 8) + 64))(*(this + 8));
          result = (*(**(a2 + 8) + 64))(*(a2 + 8));
          if (v180)
          {
            if (v181)
            {
              if (v178 == v179)
              {
                if (v183)
                {
                  for (i18 = 0; i18 != v183; ++i18)
                  {
                    if (v182)
                    {
                      v596 = 0;
                      v597 = v182;
                      do
                      {
                        v598 = (v177 + v596);
                        *v598 = *(v176 + v596);
                        v598[1] = *(v176 + v596 + 4);
                        v598[2] = *(v176 + v596 + 8);
                        v598[3] = *(v176 + v596 + 12);
                        v596 += 16;
                        --v597;
                      }

                      while (v597);
                    }

                    v176 += v184;
                    v177 += result;
                  }
                }
              }

              else if (v178)
              {
                if (v183)
                {
                  for (i19 = 0; i19 != v183; ++i19)
                  {
                    if (v182)
                    {
                      v186 = 0;
                      v187 = v182;
                      do
                      {
                        v188 = *(v176 + v186);
                        v190 = *(v176 + v186 + 8);
                        v189 = *(v176 + v186 + 12);
                        if (v189 != 1.0)
                        {
                          if (v189 == 0.0)
                          {
                            v188 = 0;
                            v190 = 0.0;
                          }

                          else
                          {
                            v188 = vmul_n_f32(v188, 1.0 / v189);
                            v190 = v190 * (1.0 / v189);
                          }
                        }

                        v191 = (v177 + v186);
                        *v191 = v188;
                        v191[1].f32[0] = v190;
                        v191[1].f32[1] = v189;
                        v186 += 16;
                        --v187;
                      }

                      while (v187);
                    }

                    v176 += v184;
                    v177 += result;
                  }
                }
              }

              else if (v183)
              {
                for (i20 = 0; i20 != v183; ++i20)
                {
                  if (v182)
                  {
                    v761 = 0;
                    v762 = v182;
                    do
                    {
                      v763 = (v177 + v761);
                      v764 = *(v176 + v761);
                      *v763 = v764;
                      v765 = *(v176 + v761 + 4);
                      v763[1] = v765;
                      v766 = *(v176 + v761 + 8);
                      v763[2] = v766;
                      v767 = *(v176 + v761 + 12);
                      *v763 = v764 * v767;
                      v763[1] = v765 * v767;
                      v763[2] = v766 * v767;
                      v763[3] = v767;
                      v761 += 16;
                      --v762;
                    }

                    while (v762);
                  }

                  v176 += v184;
                  v177 += result;
                }
              }
            }

            else if (v178)
            {
              if (v183)
              {
                for (i21 = 0; i21 != v183; ++i21)
                {
                  if (v182)
                  {
                    v414 = 0;
                    v415 = v182;
                    do
                    {
                      v416 = (v177 + v414);
                      *v416 = *(v176 + v414);
                      v416[1] = *(v176 + v414 + 4);
                      v416[2] = *(v176 + v414 + 8);
                      v414 += 16;
                      --v415;
                    }

                    while (v415);
                  }

                  v176 += v184;
                  v177 += result;
                }
              }
            }

            else if (v183)
            {
              for (i22 = 0; i22 != v183; ++i22)
              {
                if (v182)
                {
                  v631 = 0;
                  v632 = v182;
                  do
                  {
                    v633 = (v177 + v631);
                    v634 = *(v176 + v631 + 12);
                    v635 = *(v176 + v631 + 8) * v634;
                    *v633 = vmul_n_f32(*(v176 + v631), v634);
                    v633[1].f32[0] = v635;
                    v631 += 16;
                    --v632;
                  }

                  while (v632);
                }

                v176 += v184;
                v177 += result;
              }
            }
          }

          else if (v181)
          {
            if (v183)
            {
              for (i23 = 0; i23 != v183; ++i23)
              {
                if (v182)
                {
                  v295 = 0;
                  v296 = v182;
                  do
                  {
                    v297 = (v177 + v295);
                    *v297 = *(v176 + v295);
                    v297[1] = *(v176 + v295 + 4);
                    v297[2] = *(v176 + v295 + 8);
                    v297[3] = 1065353216;
                    v295 += 16;
                    --v296;
                  }

                  while (v296);
                }

                v176 += v184;
                v177 += result;
              }
            }
          }

          else if (v183)
          {
            for (i24 = 0; i24 != v183; ++i24)
            {
              if (v182)
              {
                v447 = 0;
                v448 = v182;
                do
                {
                  v449 = (v177 + v447);
                  *v449 = *(v176 + v447);
                  v449[1] = *(v176 + v447 + 4);
                  v449[2] = *(v176 + v447 + 8);
                  v447 += 16;
                  --v448;
                }

                while (v448);
              }

              v176 += v184;
              v177 += result;
            }
          }

          break;
        case 0x11:
          if ((*(*a2 + 48))(a2))
          {
          }

          else
          {
            v249 = (*(**(this + 8) + 16))(*(this + 8));
            v250 = (*(**(a2 + 8) + 16))(*(a2 + 8));
            v251 = (*(*this + 48))(this);
            v252 = (*(*a2 + 48))(a2);
            v253 = PCPixelFormat::hasAlpha(0x10u);
            v254 = PCPixelFormat::hasAlpha(0x11u);
            v255 = (*(*this + 16))(this);
            v256 = (*(*this + 24))(this);
            v257 = (*(**(this + 8) + 64))(*(this + 8));
            result = (*(**(a2 + 8) + 64))(*(a2 + 8));
            if (v253)
            {
              if (v254)
              {
                if (v251 == v252)
                {
                  if (v256)
                  {
                    for (i25 = 0; i25 != v256; ++i25)
                    {
                      if (v255)
                      {
                        v769 = 0;
                        v770 = v255;
                        do
                        {
                          v771 = (v250 + v769);
                          v771[1] = *(v249 + v769);
                          v771[2] = *(v249 + v769 + 4);
                          v771[3] = *(v249 + v769 + 8);
                          *v771 = *(v249 + v769 + 12);
                          v769 += 16;
                          --v770;
                        }

                        while (v770);
                      }

                      v249 += v257;
                      v250 += result;
                    }
                  }
                }

                else if (v251)
                {
                  if (v256)
                  {
                    for (i26 = 0; i26 != v256; ++i26)
                    {
                      if (v255)
                      {
                        v259 = 0;
                        v260 = v255;
                        do
                        {
                          v261 = *(v249 + v259);
                          v263 = *(v249 + v259 + 8);
                          v262 = *(v249 + v259 + 12);
                          if (v262 != 1.0)
                          {
                            if (v262 == 0.0)
                            {
                              v261 = 0;
                              v263 = 0.0;
                            }

                            else
                            {
                              v261 = vmul_n_f32(v261, 1.0 / v262);
                              v263 = v263 * (1.0 / v262);
                            }
                          }

                          v264 = v250 + v259;
                          *(v264 + 4) = v261;
                          *(v264 + 12) = v263;
                          *v264 = v262;
                          v259 += 16;
                          --v260;
                        }

                        while (v260);
                      }

                      v249 += v257;
                      v250 += result;
                    }
                  }
                }

                else if (v256)
                {
                  for (i27 = 0; i27 != v256; ++i27)
                  {
                    if (v255)
                    {
                      v827 = 0;
                      v828 = v255;
                      do
                      {
                        v829 = (v250 + v827);
                        v830 = *(v249 + v827);
                        v829[1] = v830;
                        v831 = *(v249 + v827 + 4);
                        v829[2] = v831;
                        v832 = *(v249 + v827 + 8);
                        v829[3] = v832;
                        v833 = *(v249 + v827 + 12);
                        *v829 = v833;
                        v829[1] = v830 * v833;
                        v829[2] = v831 * v833;
                        v829[3] = v832 * v833;
                        v827 += 16;
                        --v828;
                      }

                      while (v828);
                    }

                    v249 += v257;
                    v250 += result;
                  }
                }
              }

              else if (v251)
              {
                if (v256)
                {
                  for (i28 = 0; i28 != v256; ++i28)
                  {
                    if (v255)
                    {
                      v600 = 0;
                      v601 = v255;
                      do
                      {
                        v602 = (v250 + v600);
                        v602[1] = *(v249 + v600);
                        v602[2] = *(v249 + v600 + 4);
                        v602[3] = *(v249 + v600 + 8);
                        v600 += 16;
                        --v601;
                      }

                      while (v601);
                    }

                    v249 += v257;
                    v250 += result;
                  }
                }
              }

              else if (v256)
              {
                for (i29 = 0; i29 != v256; ++i29)
                {
                  if (v255)
                  {
                    v789 = 0;
                    v790 = v255;
                    do
                    {
                      v791 = *(v249 + v789 + 12);
                      v792 = *(v249 + v789 + 8) * v791;
                      v793 = v250 + v789;
                      *(v793 + 4) = vmul_n_f32(*(v249 + v789), v791);
                      *(v793 + 12) = v792;
                      v789 += 16;
                      --v790;
                    }

                    while (v790);
                  }

                  v249 += v257;
                  v250 += result;
                }
              }
            }

            else if (v254)
            {
              if (v256)
              {
                for (i30 = 0; i30 != v256; ++i30)
                {
                  if (v255)
                  {
                    v430 = 0;
                    v431 = v255;
                    do
                    {
                      v432 = (v250 + v430);
                      v432[1] = *(v249 + v430);
                      v432[2] = *(v249 + v430 + 4);
                      v432[3] = *(v249 + v430 + 8);
                      *v432 = 1065353216;
                      v430 += 16;
                      --v431;
                    }

                    while (v431);
                  }

                  v249 += v257;
                  v250 += result;
                }
              }
            }

            else if (v256)
            {
              for (i31 = 0; i31 != v256; ++i31)
              {
                if (v255)
                {
                  v637 = 0;
                  v638 = v255;
                  do
                  {
                    v639 = (v250 + v637);
                    v639[1] = *(v249 + v637);
                    v639[2] = *(v249 + v637 + 4);
                    v639[3] = *(v249 + v637 + 8);
                    v637 += 16;
                    --v638;
                  }

                  while (v638);
                }

                v249 += v257;
                v250 += result;
              }
            }
          }

          break;
      }
    }
  }

  else if (result <= 4)
  {
    if (result == 3)
    {
      v73 = (*(**(this + 8) + 16))(*(this + 8));
      v74 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v75 = (*(*this + 48))(this);
      v76 = (*(*a2 + 48))(a2);
      v77 = PCPixelFormat::hasAlpha(3u);
      v78 = PCPixelFormat::hasAlpha(3u);
      v79 = (*(*this + 16))(this);
      v80 = (*(*this + 24))(this);
      v81 = (*(**(this + 8) + 64))(*(this + 8));
      result = (*(**(a2 + 8) + 64))(*(a2 + 8));
      v86 = result;
      if (v77)
      {
        if (v78)
        {
          if (v75 == v76)
          {
            if (v80)
            {
              for (i32 = 0; i32 != v80; ++i32)
              {
                if (v79)
                {
                  v466 = 0;
                  v467 = v79;
                  do
                  {
                    v468 = (v73 + v466);
                    LOBYTE(v85) = *(v73 + v466 + 1);
                    v469 = *&v85 * 0.00392156863;
                    v470 = (v469 * 255.0) + 0.5 + 0.0000001;
                    v471 = vcvtmd_s64_f64(v470);
                    v472 = (v74 + v466);
                    if (v471 >= 255)
                    {
                      v471 = 255;
                    }

                    v472[1] = v471 & ~(v471 >> 31);
                    LOBYTE(v470) = v468[2];
                    v473 = *&v470 * 0.00392156863;
                    v474 = (v473 * 255.0) + 0.5 + 0.0000001;
                    v475 = vcvtmd_s64_f64(v474);
                    if (v475 >= 255)
                    {
                      v475 = 255;
                    }

                    v472[2] = v475 & ~(v475 >> 31);
                    LOBYTE(v474) = v468[3];
                    v476 = *&v474 * 0.00392156863;
                    v477 = (v476 * 255.0) + 0.5 + 0.0000001;
                    v478 = vcvtmd_s64_f64(v477);
                    if (v478 >= 255)
                    {
                      v478 = 255;
                    }

                    v472[3] = v478 & ~(v478 >> 31);
                    LOBYTE(v477) = *v468;
                    v479 = *&v477 * 0.00392156863;
                    v85 = (v479 * 255.0) + 0.5 + 0.0000001;
                    v480 = vcvtmd_s64_f64(v85);
                    if (v480 >= 255)
                    {
                      v480 = 255;
                    }

                    *v472 = v480 & ~(v480 >> 31);
                    v466 += 4;
                    --v467;
                  }

                  while (v467);
                }

                v73 += v81;
                v74 += result;
              }
            }
          }

          else if (v75)
          {
            if (v80)
            {
              v87 = 0;
              v859 = v80;
              v854 = v81;
              do
              {
                if (v79)
                {
                  v88 = 0;
                  v89 = v79;
                  do
                  {
                    v90 = (v74 + v88);
                    LODWORD(v864) = *(v73 + v88);
                    result = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>::unpremultiply(&v864, v82, v83, v84);
                    LOBYTE(v91) = BYTE1(v864);
                    *&v91 = v91 * 0.00392156863;
                    LODWORD(v83) = 1132396544;
                    v92 = (*&v91 * 255.0) + 0.5 + 0.0000001;
                    v93 = vcvtmd_s64_f64(v92);
                    if (v93 >= 255)
                    {
                      v93 = 255;
                    }

                    v90[1] = v93 & ~(v93 >> 31);
                    LOBYTE(v92) = BYTE2(v864);
                    v94 = *&v92 * 0.00392156863;
                    v95 = (v94 * 255.0) + 0.5 + 0.0000001;
                    v96 = vcvtmd_s64_f64(v95);
                    if (v96 >= 255)
                    {
                      v96 = 255;
                    }

                    v90[2] = v96 & ~(v96 >> 31);
                    LOBYTE(v95) = BYTE3(v864);
                    v97 = *&v95 * 0.00392156863;
                    v98 = (v97 * 255.0) + 0.5 + 0.0000001;
                    v99 = vcvtmd_s64_f64(v98);
                    if (v99 >= 255)
                    {
                      v99 = 255;
                    }

                    v90[3] = v99 & ~(v99 >> 31);
                    LOBYTE(v98) = LOBYTE(v864);
                    v100 = *&v98 * 0.00392156863;
                    v82 = (v100 * 255.0) + 0.5 + 0.0000001;
                    v101 = vcvtmd_s64_f64(v82);
                    if (v101 >= 255)
                    {
                      v101 = 255;
                    }

                    *v90 = v101 & ~(v101 >> 31);
                    v88 += 4;
                    --v89;
                  }

                  while (v89);
                }

                v73 += v854;
                v74 += v86;
                ++v87;
              }

              while (v87 != v859);
            }
          }

          else if (v80)
          {
            for (i33 = 0; i33 != v80; ++i33)
            {
              if (v79)
              {
                v672 = 0;
                v673 = v79;
                do
                {
                  v674 = (v73 + v672);
                  LOBYTE(v85) = *(v73 + v672 + 1);
                  v675 = *&v85 * 0.00392156863;
                  v676 = (v675 * 255.0) + 0.5 + 0.0000001;
                  v677 = vcvtmd_s64_f64(v676);
                  v678 = (v74 + v672);
                  if (v677 >= 255)
                  {
                    v677 = 255;
                  }

                  v679 = v677 & ~(v677 >> 31);
                  v678[1] = v679;
                  LOBYTE(v676) = v674[2];
                  v680 = *&v676 * 0.00392156863;
                  v681 = (v680 * 255.0) + 0.5 + 0.0000001;
                  v682 = vcvtmd_s64_f64(v681);
                  if (v682 >= 255)
                  {
                    v682 = 255;
                  }

                  v683 = v682 & ~(v682 >> 31);
                  v678[2] = v683;
                  LOBYTE(v681) = v674[3];
                  v684 = *&v681 * 0.00392156863;
                  v685 = (v684 * 255.0) + 0.5 + 0.0000001;
                  v686 = vcvtmd_s64_f64(v685);
                  if (v686 >= 255)
                  {
                    v686 = 255;
                  }

                  result = v686 & ~(v686 >> 31);
                  v678[3] = result;
                  LOBYTE(v685) = *v674;
                  v687 = *&v685 * 0.00392156863;
                  v85 = (v687 * 255.0) + 0.5 + 0.0000001;
                  v688 = vcvtmd_s64_f64(v85);
                  if (v688 >= 255)
                  {
                    v688 = 255;
                  }

                  v689 = v688 & ~(v688 >> 31);
                  *v678 = v689;
                  v678[1] = (32897 * v689 * v679) >> 23;
                  v678[2] = (32897 * v689 * v683) >> 23;
                  v678[3] = (32897 * v689 * result) >> 23;
                  v672 += 4;
                  --v673;
                }

                while (v673);
              }

              v73 += v81;
              v74 += v86;
            }
          }
        }

        else if (v75)
        {
          if (v80)
          {
            for (i34 = 0; i34 != v80; ++i34)
            {
              if (v79)
              {
                v314 = 0;
                v315 = v79;
                do
                {
                  v316 = v73 + v314;
                  LOBYTE(v85) = *(v73 + v314 + 1);
                  v317 = *&v85 * 0.00392156863;
                  v318 = (v317 * 255.0) + 0.5 + 0.0000001;
                  v319 = vcvtmd_s64_f64(v318);
                  if (v319 >= 255)
                  {
                    v319 = 255;
                  }

                  v320 = v74 + v314;
                  *(v74 + v314 + 1) = v319 & ~(v319 >> 31);
                  LOBYTE(v318) = *(v316 + 2);
                  v321 = *&v318 * 0.00392156863;
                  v322 = (v321 * 255.0) + 0.5 + 0.0000001;
                  v323 = vcvtmd_s64_f64(v322);
                  if (v323 >= 255)
                  {
                    v323 = 255;
                  }

                  *(v320 + 2) = v323 & ~(v323 >> 31);
                  LOBYTE(v322) = *(v316 + 3);
                  v324 = *&v322 * 0.00392156863;
                  v85 = (v324 * 255.0) + 0.5 + 0.0000001;
                  v325 = vcvtmd_s64_f64(v85);
                  if (v325 >= 255)
                  {
                    v325 = 255;
                  }

                  *(v320 + 3) = v325 & ~(v325 >> 31);
                  v314 += 4;
                  --v315;
                }

                while (v315);
              }

              v73 += v81;
              v74 += result;
            }
          }
        }

        else if (v80)
        {
          for (i35 = 0; i35 != v80; ++i35)
          {
            if (v79)
            {
              v513 = 0;
              v514 = v79;
              do
              {
                v515 = *(v73 + v513);
                v516 = ((32897 * *(v73 + v513 + 1) * v515) >> 23) * 0.00392156863;
                v517 = vcvtmd_s64_f64((v516 * 255.0) + 0.5 + 0.0000001);
                v518 = ((32897 * *(v73 + v513 + 3) * v515) >> 23);
                v519 = (v74 + v513);
                v520 = ((32897 * *(v73 + v513 + 2) * v515) >> 23);
                if (v517 >= 255)
                {
                  v521 = 255;
                }

                else
                {
                  v521 = v517;
                }

                v522 = v520 * 0.00392156863;
                v523 = v521 & ~(v521 >> 31);
                v524 = vcvtmd_s64_f64((v522 * 255.0) + 0.5 + 0.0000001);
                if (v524 >= 255)
                {
                  v524 = 255;
                }

                v525 = v518 * 0.00392156863;
                v519[1] = v523;
                v526 = vcvtmd_s64_f64((v525 * 255.0) + 0.5 + 0.0000001);
                v519[2] = v524 & ~(v524 >> 31);
                if (v526 >= 255)
                {
                  v526 = 255;
                }

                v519[3] = v526 & ~(v526 >> 31);
                v513 += 4;
                --v514;
              }

              while (v514);
            }

            v73 += v81;
            v74 += result;
          }
        }
      }

      else if (v78)
      {
        if (v80)
        {
          for (i36 = 0; i36 != v80; ++i36)
          {
            if (v79)
            {
              v195 = 0;
              v196 = v79;
              do
              {
                v197 = v73 + v195;
                LOBYTE(v85) = *(v73 + v195 + 1);
                v198 = *&v85 * 0.00392156863;
                v199 = (v198 * 255.0) + 0.5 + 0.0000001;
                v200 = vcvtmd_s64_f64(v199);
                v201 = (v74 + v195);
                if (v200 >= 255)
                {
                  v200 = 255;
                }

                v201[1] = v200 & ~(v200 >> 31);
                LOBYTE(v199) = *(v197 + 2);
                v202 = *&v199 * 0.00392156863;
                v203 = (v202 * 255.0) + 0.5 + 0.0000001;
                v204 = vcvtmd_s64_f64(v203);
                if (v204 >= 255)
                {
                  v204 = 255;
                }

                v201[2] = v204 & ~(v204 >> 31);
                LOBYTE(v203) = *(v197 + 3);
                v205 = *&v203 * 0.00392156863;
                v85 = (v205 * 255.0) + 0.5 + 0.0000001;
                v206 = vcvtmd_s64_f64(v85);
                if (v206 >= 255)
                {
                  v206 = 255;
                }

                v201[3] = v206 & ~(v206 >> 31);
                *v201 = -1;
                v195 += 4;
                --v196;
              }

              while (v196);
            }

            v73 += v81;
            v74 += result;
          }
        }
      }

      else if (v80)
      {
        for (i37 = 0; i37 != v80; ++i37)
        {
          if (v79)
          {
            v342 = 0;
            v343 = v79;
            do
            {
              v344 = v73 + v342;
              LOBYTE(v85) = *(v73 + v342 + 1);
              v345 = *&v85 * 0.00392156863;
              v346 = (v345 * 255.0) + 0.5 + 0.0000001;
              v347 = vcvtmd_s64_f64(v346);
              if (v347 >= 255)
              {
                v347 = 255;
              }

              v348 = v74 + v342;
              *(v74 + v342 + 1) = v347 & ~(v347 >> 31);
              LOBYTE(v346) = *(v344 + 2);
              v349 = *&v346 * 0.00392156863;
              v350 = (v349 * 255.0) + 0.5 + 0.0000001;
              v351 = vcvtmd_s64_f64(v350);
              if (v351 >= 255)
              {
                v351 = 255;
              }

              *(v348 + 2) = v351 & ~(v351 >> 31);
              LOBYTE(v350) = *(v344 + 3);
              v352 = *&v350 * 0.00392156863;
              v85 = (v352 * 255.0) + 0.5 + 0.0000001;
              v353 = vcvtmd_s64_f64(v85);
              if (v353 >= 255)
              {
                v353 = 255;
              }

              *(v348 + 3) = v353 & ~(v353 >> 31);
              v342 += 4;
              --v343;
            }

            while (v343);
          }

          v73 += v81;
          v74 += result;
        }
      }
    }

    else
    {
      if (result != 4)
      {
        return result;
      }

      if ((*(*a2 + 48))(a2))
      {
LABEL_138:
      }

      v32 = (*(**(this + 8) + 16))(*(this + 8));
      v33 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v34 = (*(*this + 48))(this);
      v35 = (*(*a2 + 48))(a2);
      v36 = PCPixelFormat::hasAlpha(3u);
      v37 = PCPixelFormat::hasAlpha(4u);
      v38 = (*(*this + 16))(this);
      v39 = (*(*this + 24))(this);
      v40 = (*(**(this + 8) + 64))(*(this + 8));
      result = (*(**(a2 + 8) + 64))(*(a2 + 8));
      v45 = result;
      if (v36)
      {
        if (v37)
        {
          if (v34 == v35)
          {
            if (v39)
            {
              for (i38 = 0; i38 != v39; ++i38)
              {
                if (v38)
                {
                  v654 = 0;
                  v655 = v38;
                  do
                  {
                    v656 = (v32 + v654);
                    LOBYTE(v44) = *(v32 + v654 + 1);
                    v657 = *&v44 * 0.00392156863;
                    v658 = (v657 * 255.0) + 0.5 + 0.0000001;
                    v659 = vcvtmd_s64_f64(v658);
                    v660 = (v33 + v654);
                    if (v659 >= 255)
                    {
                      v659 = 255;
                    }

                    v660[3] = v659 & ~(v659 >> 31);
                    LOBYTE(v658) = v656[2];
                    v661 = *&v658 * 0.00392156863;
                    v662 = (v661 * 255.0) + 0.5 + 0.0000001;
                    v663 = vcvtmd_s64_f64(v662);
                    if (v663 >= 255)
                    {
                      v663 = 255;
                    }

                    v660[2] = v663 & ~(v663 >> 31);
                    LOBYTE(v662) = v656[3];
                    v664 = *&v662 * 0.00392156863;
                    v665 = (v664 * 255.0) + 0.5 + 0.0000001;
                    v666 = vcvtmd_s64_f64(v665);
                    if (v666 >= 255)
                    {
                      v666 = 255;
                    }

                    v660[1] = v666 & ~(v666 >> 31);
                    LOBYTE(v665) = *v656;
                    v667 = *&v665 * 0.00392156863;
                    v44 = (v667 * 255.0) + 0.5 + 0.0000001;
                    v668 = vcvtmd_s64_f64(v44);
                    if (v668 >= 255)
                    {
                      v668 = 255;
                    }

                    *v660 = v668 & ~(v668 >> 31);
                    v654 += 4;
                    --v655;
                  }

                  while (v655);
                }

                v32 += v40;
                v33 += result;
              }
            }
          }

          else if (v34)
          {
            if (v39)
            {
              v46 = 0;
              v858 = v39;
              v853 = v40;
              do
              {
                if (v38)
                {
                  v47 = 0;
                  v48 = v38;
                  do
                  {
                    v49 = (v33 + v47);
                    LODWORD(v864) = *(v32 + v47);
                    result = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>::unpremultiply(&v864, v41, v42, v43);
                    LOBYTE(v50) = BYTE1(v864);
                    *&v50 = v50 * 0.00392156863;
                    LODWORD(v42) = 1132396544;
                    v51 = (*&v50 * 255.0) + 0.5 + 0.0000001;
                    v52 = vcvtmd_s64_f64(v51);
                    if (v52 >= 255)
                    {
                      v52 = 255;
                    }

                    v49[3] = v52 & ~(v52 >> 31);
                    LOBYTE(v51) = BYTE2(v864);
                    v53 = *&v51 * 0.00392156863;
                    v54 = (v53 * 255.0) + 0.5 + 0.0000001;
                    v55 = vcvtmd_s64_f64(v54);
                    if (v55 >= 255)
                    {
                      v55 = 255;
                    }

                    v49[2] = v55 & ~(v55 >> 31);
                    LOBYTE(v54) = BYTE3(v864);
                    v56 = *&v54 * 0.00392156863;
                    v57 = (v56 * 255.0) + 0.5 + 0.0000001;
                    v58 = vcvtmd_s64_f64(v57);
                    if (v58 >= 255)
                    {
                      v58 = 255;
                    }

                    v49[1] = v58 & ~(v58 >> 31);
                    LOBYTE(v57) = LOBYTE(v864);
                    v59 = *&v57 * 0.00392156863;
                    v41 = (v59 * 255.0) + 0.5 + 0.0000001;
                    v60 = vcvtmd_s64_f64(v41);
                    if (v60 >= 255)
                    {
                      v60 = 255;
                    }

                    *v49 = v60 & ~(v60 >> 31);
                    v47 += 4;
                    --v48;
                  }

                  while (v48);
                }

                v32 += v853;
                v33 += v45;
                ++v46;
              }

              while (v46 != v858);
            }
          }

          else if (v39)
          {
            for (i39 = 0; i39 != v39; ++i39)
            {
              if (v38)
              {
                v808 = 0;
                v809 = v38;
                do
                {
                  v810 = (v32 + v808);
                  LOBYTE(v44) = *(v32 + v808 + 1);
                  v811 = *&v44 * 0.00392156863;
                  v812 = (v811 * 255.0) + 0.5 + 0.0000001;
                  v813 = vcvtmd_s64_f64(v812);
                  v814 = (v33 + v808);
                  if (v813 >= 255)
                  {
                    v813 = 255;
                  }

                  v815 = v813 & ~(v813 >> 31);
                  v814[3] = v815;
                  LOBYTE(v812) = v810[2];
                  v816 = *&v812 * 0.00392156863;
                  v817 = (v816 * 255.0) + 0.5 + 0.0000001;
                  v818 = vcvtmd_s64_f64(v817);
                  if (v818 >= 255)
                  {
                    v818 = 255;
                  }

                  v819 = v818 & ~(v818 >> 31);
                  v814[2] = v819;
                  LOBYTE(v817) = v810[3];
                  v820 = *&v817 * 0.00392156863;
                  v821 = (v820 * 255.0) + 0.5 + 0.0000001;
                  v822 = vcvtmd_s64_f64(v821);
                  if (v822 >= 255)
                  {
                    v822 = 255;
                  }

                  result = v822 & ~(v822 >> 31);
                  v814[1] = result;
                  LOBYTE(v821) = *v810;
                  v823 = *&v821 * 0.00392156863;
                  v44 = (v823 * 255.0) + 0.5 + 0.0000001;
                  v824 = vcvtmd_s64_f64(v44);
                  if (v824 >= 255)
                  {
                    v824 = 255;
                  }

                  v825 = v824 & ~(v824 >> 31);
                  *v814 = v825;
                  v814[3] = (32897 * v825 * v815) >> 23;
                  v814[2] = (32897 * v825 * v819) >> 23;
                  v814[1] = (32897 * v825 * result) >> 23;
                  v808 += 4;
                  --v809;
                }

                while (v809);
              }

              v32 += v40;
              v33 += v45;
            }
          }
        }

        else if (v34)
        {
          if (v39)
          {
            for (i40 = 0; i40 != v39; ++i40)
            {
              if (v38)
              {
                v451 = 3;
                v452 = v38;
                do
                {
                  v453 = (v32 + v451);
                  LOBYTE(v44) = *(v32 + v451 - 2);
                  v454 = *&v44 * 0.00392156863;
                  v455 = (v454 * 255.0) + 0.5 + 0.0000001;
                  v456 = vcvtmd_s64_f64(v455);
                  if (v456 >= 255)
                  {
                    v456 = 255;
                  }

                  v457 = v33 + v451;
                  *(v33 + v451) = v456 & ~(v456 >> 31);
                  LOBYTE(v455) = *(v453 - 1);
                  v458 = *&v455 * 0.00392156863;
                  v459 = (v458 * 255.0) + 0.5 + 0.0000001;
                  v460 = vcvtmd_s64_f64(v459);
                  if (v460 >= 255)
                  {
                    v460 = 255;
                  }

                  *(v457 - 1) = v460 & ~(v460 >> 31);
                  LOBYTE(v459) = *v453;
                  v461 = *&v459 * 0.00392156863;
                  v44 = (v461 * 255.0) + 0.5 + 0.0000001;
                  v462 = vcvtmd_s64_f64(v44);
                  if (v462 >= 255)
                  {
                    v462 = 255;
                  }

                  *(v457 - 2) = v462 & ~(v462 >> 31);
                  v451 += 4;
                  --v452;
                }

                while (v452);
              }

              v32 += v40;
              v33 += result;
            }
          }
        }

        else if (v39)
        {
          for (i41 = 0; i41 != v39; ++i41)
          {
            if (v38)
            {
              v711 = 0;
              v712 = v38;
              do
              {
                v713 = *(v32 + v711);
                v714 = ((32897 * *(v32 + v711 + 1) * v713) >> 23) * 0.00392156863;
                v715 = vcvtmd_s64_f64((v714 * 255.0) + 0.5 + 0.0000001);
                v716 = ((32897 * *(v32 + v711 + 3) * v713) >> 23);
                v717 = (v33 + v711);
                v718 = ((32897 * *(v32 + v711 + 2) * v713) >> 23);
                if (v715 >= 255)
                {
                  v719 = 255;
                }

                else
                {
                  v719 = v715;
                }

                v720 = v718 * 0.00392156863;
                v721 = v719 & ~(v719 >> 31);
                v722 = vcvtmd_s64_f64((v720 * 255.0) + 0.5 + 0.0000001);
                if (v722 >= 255)
                {
                  v722 = 255;
                }

                v723 = v716 * 0.00392156863;
                v717[3] = v721;
                v724 = vcvtmd_s64_f64((v723 * 255.0) + 0.5 + 0.0000001);
                v717[2] = v722 & ~(v722 >> 31);
                if (v724 >= 255)
                {
                  v724 = 255;
                }

                v717[1] = v724 & ~(v724 >> 31);
                v711 += 4;
                --v712;
              }

              while (v712);
            }

            v32 += v40;
            v33 += result;
          }
        }
      }

      else if (v37)
      {
        if (v39)
        {
          for (i42 = 0; i42 != v39; ++i42)
          {
            if (v38)
            {
              v299 = 3;
              v300 = v38;
              do
              {
                v301 = (v32 + v299);
                LOBYTE(v44) = *(v32 + v299 - 2);
                v302 = *&v44 * 0.00392156863;
                v303 = (v302 * 255.0) + 0.5 + 0.0000001;
                v304 = vcvtmd_s64_f64(v303);
                v305 = (v33 + v299);
                if (v304 >= 255)
                {
                  v304 = 255;
                }

                *v305 = v304 & ~(v304 >> 31);
                LOBYTE(v303) = *(v301 - 1);
                v306 = *&v303 * 0.00392156863;
                v307 = (v306 * 255.0) + 0.5 + 0.0000001;
                v308 = vcvtmd_s64_f64(v307);
                if (v308 >= 255)
                {
                  v308 = 255;
                }

                *(v305 - 1) = v308 & ~(v308 >> 31);
                LOBYTE(v307) = *v301;
                v309 = *&v307 * 0.00392156863;
                v44 = (v309 * 255.0) + 0.5 + 0.0000001;
                v310 = vcvtmd_s64_f64(v44);
                if (v310 >= 255)
                {
                  v310 = 255;
                }

                *(v305 - 2) = v310 & ~(v310 >> 31);
                *(v305 - 3) = -1;
                v299 += 4;
                --v300;
              }

              while (v300);
            }

            v32 += v40;
            v33 += result;
          }
        }
      }

      else if (v39)
      {
        for (i43 = 0; i43 != v39; ++i43)
        {
          if (v38)
          {
            v498 = 3;
            v499 = v38;
            do
            {
              v500 = (v32 + v498);
              LOBYTE(v44) = *(v32 + v498 - 2);
              v501 = *&v44 * 0.00392156863;
              v502 = (v501 * 255.0) + 0.5 + 0.0000001;
              v503 = vcvtmd_s64_f64(v502);
              if (v503 >= 255)
              {
                v503 = 255;
              }

              v504 = v33 + v498;
              *(v33 + v498) = v503 & ~(v503 >> 31);
              LOBYTE(v502) = *(v500 - 1);
              v505 = *&v502 * 0.00392156863;
              v506 = (v505 * 255.0) + 0.5 + 0.0000001;
              v507 = vcvtmd_s64_f64(v506);
              if (v507 >= 255)
              {
                v507 = 255;
              }

              *(v504 - 1) = v507 & ~(v507 >> 31);
              LOBYTE(v506) = *v500;
              v508 = *&v506 * 0.00392156863;
              v44 = (v508 * 255.0) + 0.5 + 0.0000001;
              v509 = vcvtmd_s64_f64(v44);
              if (v509 >= 255)
              {
                v509 = 255;
              }

              *(v504 - 2) = v509 & ~(v509 >> 31);
              v498 += 4;
              --v499;
            }

            while (v499);
          }

          v32 += v40;
          v33 += result;
        }
      }
    }
  }

  else if (result == 5)
  {
    v130 = (*(**(this + 8) + 16))(*(this + 8));
    v131 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v132 = (*(*this + 48))(this);
    v133 = (*(*a2 + 48))(a2);
    v134 = PCPixelFormat::hasAlpha(5u);
    v135 = PCPixelFormat::hasAlpha(5u);
    v136 = (*(*this + 16))(this);
    v137 = (*(*this + 24))(this);
    v138 = (*(**(this + 8) + 64))(*(this + 8));
    result = (*(**(a2 + 8) + 64))(*(a2 + 8));
    v143 = result;
    if (v134)
    {
      if (v135)
      {
        if (v132 == v133)
        {
          if (v137)
          {
            for (i44 = 0; i44 != v137; ++i44)
            {
              if (v136)
              {
                v543 = 0;
                v544 = v136;
                do
                {
                  v545 = (v130 + v543);
                  LOBYTE(v142) = *(v130 + v543);
                  v546 = *&v142 * 0.00392156863;
                  v547 = (v546 * 255.0) + 0.5 + 0.0000001;
                  v548 = vcvtmd_s64_f64(v547);
                  v549 = (v131 + v543);
                  if (v548 >= 255)
                  {
                    v548 = 255;
                  }

                  *v549 = v548 & ~(v548 >> 31);
                  LOBYTE(v547) = v545[1];
                  v550 = *&v547 * 0.00392156863;
                  v551 = (v550 * 255.0) + 0.5 + 0.0000001;
                  v552 = vcvtmd_s64_f64(v551);
                  if (v552 >= 255)
                  {
                    v552 = 255;
                  }

                  v549[1] = v552 & ~(v552 >> 31);
                  LOBYTE(v551) = v545[2];
                  v553 = *&v551 * 0.00392156863;
                  v554 = (v553 * 255.0) + 0.5 + 0.0000001;
                  v555 = vcvtmd_s64_f64(v554);
                  if (v555 >= 255)
                  {
                    v555 = 255;
                  }

                  v549[2] = v555 & ~(v555 >> 31);
                  LOBYTE(v554) = v545[3];
                  v556 = *&v554 * 0.00392156863;
                  v142 = (v556 * 255.0) + 0.5 + 0.0000001;
                  v557 = vcvtmd_s64_f64(v142);
                  if (v557 >= 255)
                  {
                    v557 = 255;
                  }

                  v549[3] = v557 & ~(v557 >> 31);
                  v543 += 4;
                  --v544;
                }

                while (v544);
              }

              v130 += v138;
              v131 += result;
            }
          }
        }

        else if (v132)
        {
          if (v137)
          {
            v144 = 0;
            v861 = v137;
            v855 = v138;
            do
            {
              if (v136)
              {
                v145 = 0;
                v146 = v136;
                do
                {
                  v147 = (v131 + v145);
                  LODWORD(v864) = *(v130 + v145);
                  result = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>::unpremultiply(&v864, v139, v140, v141);
                  LOBYTE(v148) = LOBYTE(v864);
                  *&v148 = v148 * 0.00392156863;
                  LODWORD(v140) = 1132396544;
                  v149 = (*&v148 * 255.0) + 0.5 + 0.0000001;
                  v150 = vcvtmd_s64_f64(v149);
                  if (v150 >= 255)
                  {
                    v150 = 255;
                  }

                  *v147 = v150 & ~(v150 >> 31);
                  LOBYTE(v149) = BYTE1(v864);
                  v151 = *&v149 * 0.00392156863;
                  v152 = (v151 * 255.0) + 0.5 + 0.0000001;
                  v153 = vcvtmd_s64_f64(v152);
                  if (v153 >= 255)
                  {
                    v153 = 255;
                  }

                  v147[1] = v153 & ~(v153 >> 31);
                  LOBYTE(v152) = BYTE2(v864);
                  v154 = *&v152 * 0.00392156863;
                  v155 = (v154 * 255.0) + 0.5 + 0.0000001;
                  v156 = vcvtmd_s64_f64(v155);
                  if (v156 >= 255)
                  {
                    v156 = 255;
                  }

                  v147[2] = v156 & ~(v156 >> 31);
                  LOBYTE(v155) = BYTE3(v864);
                  v157 = *&v155 * 0.00392156863;
                  v139 = (v157 * 255.0) + 0.5 + 0.0000001;
                  v158 = vcvtmd_s64_f64(v139);
                  if (v158 >= 255)
                  {
                    v158 = 255;
                  }

                  v147[3] = v158 & ~(v158 >> 31);
                  v145 += 4;
                  --v146;
                }

                while (v146);
              }

              v130 += v855;
              v131 += v143;
              ++v144;
            }

            while (v144 != v861);
          }
        }

        else if (v137)
        {
          for (i45 = 0; i45 != v137; ++i45)
          {
            if (v136)
            {
              v726 = 0;
              v727 = v136;
              do
              {
                v728 = (v130 + v726);
                LOBYTE(v142) = *(v130 + v726);
                v729 = *&v142 * 0.00392156863;
                v730 = (v729 * 255.0) + 0.5 + 0.0000001;
                v731 = vcvtmd_s64_f64(v730);
                v732 = (v131 + v726);
                if (v731 >= 255)
                {
                  v731 = 255;
                }

                v733 = v731 & ~(v731 >> 31);
                *v732 = v733;
                LOBYTE(v730) = v728[1];
                v734 = *&v730 * 0.00392156863;
                v735 = (v734 * 255.0) + 0.5 + 0.0000001;
                v736 = vcvtmd_s64_f64(v735);
                if (v736 >= 255)
                {
                  v736 = 255;
                }

                v737 = v736 & ~(v736 >> 31);
                v732[1] = v737;
                LOBYTE(v735) = v728[2];
                v738 = *&v735 * 0.00392156863;
                v739 = (v738 * 255.0) + 0.5 + 0.0000001;
                v740 = vcvtmd_s64_f64(v739);
                if (v740 >= 255)
                {
                  v740 = 255;
                }

                result = v740 & ~(v740 >> 31);
                v732[2] = result;
                LOBYTE(v739) = v728[3];
                v741 = *&v739 * 0.00392156863;
                v142 = (v741 * 255.0) + 0.5 + 0.0000001;
                v742 = vcvtmd_s64_f64(v142);
                if (v742 >= 255)
                {
                  v742 = 255;
                }

                v743 = v742 & ~(v742 >> 31);
                v732[3] = v743;
                *v732 = (32897 * v743 * v733) >> 23;
                v732[1] = (32897 * v743 * v737) >> 23;
                v732[2] = (32897 * v743 * result) >> 23;
                v726 += 4;
                --v727;
              }

              while (v727);
            }

            v130 += v138;
            v131 += v143;
          }
        }
      }

      else if (v132)
      {
        if (v137)
        {
          for (i46 = 0; i46 != v137; ++i46)
          {
            if (v136)
            {
              v368 = 0;
              v369 = v136;
              do
              {
                v370 = v130 + v368;
                LOBYTE(v142) = *(v130 + v368);
                v371 = *&v142 * 0.00392156863;
                v372 = (v371 * 255.0) + 0.5 + 0.0000001;
                v373 = (v131 + v368);
                v374 = vcvtmd_s64_f64(v372);
                if (v374 >= 255)
                {
                  v374 = 255;
                }

                *v373 = v374 & ~(v374 >> 31);
                LOBYTE(v372) = *(v370 + 1);
                v375 = *&v372 * 0.00392156863;
                v376 = (v375 * 255.0) + 0.5 + 0.0000001;
                v377 = vcvtmd_s64_f64(v376);
                if (v377 >= 255)
                {
                  v377 = 255;
                }

                v373[1] = v377 & ~(v377 >> 31);
                LOBYTE(v376) = *(v370 + 2);
                v378 = *&v376 * 0.00392156863;
                v142 = (v378 * 255.0) + 0.5 + 0.0000001;
                v379 = vcvtmd_s64_f64(v142);
                if (v379 >= 255)
                {
                  v379 = 255;
                }

                v373[2] = v379 & ~(v379 >> 31);
                v368 += 4;
                --v369;
              }

              while (v369);
            }

            v130 += v138;
            v131 += result;
          }
        }
      }

      else if (v137)
      {
        for (i47 = 0; i47 != v137; ++i47)
        {
          if (v136)
          {
            v563 = 0;
            v564 = v136;
            do
            {
              v565 = *(v130 + v563 + 3);
              result = v131 + v563;
              v566 = ((32897 * v565 * *(v130 + v563)) >> 23);
              v567 = ((32897 * v565 * *(v130 + v563 + 1)) >> 23);
              v568 = ((32897 * v565 * *(v130 + v563 + 2)) >> 23);
              v569 = v566 * 0.00392156863;
              v570 = vcvtmd_s64_f64((v569 * 255.0) + 0.5 + 0.0000001);
              if (v570 >= 255)
              {
                v570 = 255;
              }

              v571 = v567 * 0.00392156863;
              v572 = v570 & ~(v570 >> 31);
              v573 = vcvtmd_s64_f64((v571 * 255.0) + 0.5 + 0.0000001);
              if (v573 >= 255)
              {
                v573 = 255;
              }

              v574 = v568 * 0.00392156863;
              *result = v572;
              v575 = vcvtmd_s64_f64((v574 * 255.0) + 0.5 + 0.0000001);
              *(result + 1) = v573 & ~(v573 >> 31);
              if (v575 >= 255)
              {
                v575 = 255;
              }

              *(result + 2) = v575 & ~(v575 >> 31);
              v563 += 4;
              --v564;
            }

            while (v564);
          }

          v130 += v138;
          v131 += v143;
        }
      }
    }

    else if (v135)
    {
      if (v137)
      {
        for (i48 = 0; i48 != v137; ++i48)
        {
          if (v136)
          {
            v221 = 0;
            v222 = v136;
            do
            {
              v223 = v130 + v221;
              LOBYTE(v142) = *(v130 + v221);
              v224 = *&v142 * 0.00392156863;
              v225 = (v224 * 255.0) + 0.5 + 0.0000001;
              v226 = vcvtmd_s64_f64(v225);
              v227 = (v131 + v221);
              if (v226 >= 255)
              {
                v226 = 255;
              }

              *v227 = v226 & ~(v226 >> 31);
              LOBYTE(v225) = *(v223 + 1);
              v228 = *&v225 * 0.00392156863;
              v229 = (v228 * 255.0) + 0.5 + 0.0000001;
              v230 = vcvtmd_s64_f64(v229);
              if (v230 >= 255)
              {
                v230 = 255;
              }

              v227[1] = v230 & ~(v230 >> 31);
              LOBYTE(v229) = *(v223 + 2);
              v231 = *&v229 * 0.00392156863;
              v142 = (v231 * 255.0) + 0.5 + 0.0000001;
              v232 = vcvtmd_s64_f64(v142);
              if (v232 >= 255)
              {
                v232 = 255;
              }

              v227[2] = v232 & ~(v232 >> 31);
              v227[3] = -1;
              v221 += 4;
              --v222;
            }

            while (v222);
          }

          v130 += v138;
          v131 += result;
        }
      }
    }

    else if (v137)
    {
      for (i49 = 0; i49 != v137; ++i49)
      {
        if (v136)
        {
          v385 = 0;
          v386 = v136;
          do
          {
            v387 = v130 + v385;
            LOBYTE(v142) = *(v130 + v385);
            v388 = *&v142 * 0.00392156863;
            v389 = (v388 * 255.0) + 0.5 + 0.0000001;
            v390 = (v131 + v385);
            v391 = vcvtmd_s64_f64(v389);
            if (v391 >= 255)
            {
              v391 = 255;
            }

            *v390 = v391 & ~(v391 >> 31);
            LOBYTE(v389) = *(v387 + 1);
            v392 = *&v389 * 0.00392156863;
            v393 = (v392 * 255.0) + 0.5 + 0.0000001;
            v394 = vcvtmd_s64_f64(v393);
            if (v394 >= 255)
            {
              v394 = 255;
            }

            v390[1] = v394 & ~(v394 >> 31);
            LOBYTE(v393) = *(v387 + 2);
            v395 = *&v393 * 0.00392156863;
            v142 = (v395 * 255.0) + 0.5 + 0.0000001;
            v396 = vcvtmd_s64_f64(v142);
            if (v396 >= 255)
            {
              v396 = 255;
            }

            v390[2] = v396 & ~(v396 >> 31);
            v385 += 4;
            --v386;
          }

          while (v386);
        }

        v130 += v138;
        v131 += result;
      }
    }
  }

  else
  {
    if (result != 6)
    {
      if (result == 9)
      {
        v6 = (*(**(this + 8) + 16))(*(this + 8));
        v7 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v8 = (*(*this + 48))(this);
        v9 = (*(*a2 + 48))(a2);
        v10 = PCPixelFormat::hasAlpha(0xAu);
        v11 = PCPixelFormat::hasAlpha(9u);
        v12 = (*(*this + 16))(this);
        v13 = (*(*this + 24))(this);
        v14 = (*(**(this + 8) + 64))(*(this + 8));
        result = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v18 = result;
        if (v10)
        {
          if (v11)
          {
            if (v8 == v9)
            {
              if (v13)
              {
                for (i50 = 0; i50 != v13; ++i50)
                {
                  v584 = v12;
                  v585 = v7;
                  for (i51 = v6; v584; --v584)
                  {
                    LOWORD(v17) = *i51;
                    v587 = *&v17 * 0.0000152590219;
                    v588 = (v587 * 65535.0) + 0.5 + 0.0000001;
                    v589 = vcvtmd_s64_f64(v588);
                    if (v589 >= 0xFFFF)
                    {
                      v589 = 0xFFFF;
                    }

                    *v585 = v589 & ~(v589 >> 31);
                    LOWORD(v588) = i51[1];
                    v590 = *&v588 * 0.0000152590219;
                    v591 = (v590 * 65535.0) + 0.5 + 0.0000001;
                    v592 = vcvtmd_s64_f64(v591);
                    if (v592 >= 0xFFFF)
                    {
                      v592 = 0xFFFF;
                    }

                    v585[1] = v592 & ~(v592 >> 31);
                    LOWORD(v591) = i51[2];
                    v593 = *&v591 * 0.0000152590219;
                    v17 = (v593 * 65535.0) + 0.5 + 0.0000001;
                    v594 = vcvtmd_s64_f64(v17);
                    if (v594 >= 0xFFFF)
                    {
                      v594 = 0xFFFF;
                    }

                    v585[2] = v594 & ~(v594 >> 31);
                    v585 += 3;
                    i51 += 4;
                  }

                  v6 += v14;
                  v7 += result;
                }
              }
            }

            else if (v8)
            {
              if (v13)
              {
                v19 = 0;
                v857 = v13;
                do
                {
                  if (v12)
                  {
                    v20 = 0;
                    v21 = v7;
                    do
                    {
                      v864 = *(v6 + 8 * v20);
                      result = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>::unpremultiply(&v864, v864, v15, v16);
                      LOWORD(v22) = LOWORD(v864);
                      *&v22 = v22 * 0.0000152590219;
                      v23 = (*&v22 * 65535.0) + 0.5 + 0.0000001;
                      v24 = vcvtmd_s64_f64(v23);
                      if (v24 >= 0xFFFF)
                      {
                        v24 = 0xFFFF;
                      }

                      *v21 = v24 & ~(v24 >> 31);
                      LOWORD(v23) = WORD1(v864);
                      v25 = *&v23 * 0.0000152590219;
                      v26 = (v25 * 65535.0) + 0.5 + 0.0000001;
                      v27 = vcvtmd_s64_f64(v26);
                      if (v27 >= 0xFFFF)
                      {
                        v27 = 0xFFFF;
                      }

                      v21[1] = v27 & ~(v27 >> 31);
                      LOWORD(v26) = WORD2(v864);
                      v28 = *&v26 * 0.0000152590219;
                      v29 = vcvtmd_s64_f64((v28 * 65535.0) + 0.5 + 0.0000001);
                      if (v29 >= 0xFFFF)
                      {
                        v29 = 0xFFFF;
                      }

                      v21[2] = v29 & ~(v29 >> 31);
                      ++v20;
                      v21 += 3;
                    }

                    while (v12 != v20);
                  }

                  v6 += v14;
                  v7 += v18;
                  ++v19;
                }

                while (v19 != v857);
              }
            }

            else if (v13)
            {
              for (i52 = 0; i52 != v13; ++i52)
              {
                v749 = v12;
                v750 = v7;
                for (i53 = v6; v749; --v749)
                {
                  LOWORD(v17) = *i53;
                  v752 = *&v17 * 0.0000152590219;
                  v753 = (v752 * 65535.0) + 0.5 + 0.0000001;
                  v754 = vcvtmd_s64_f64(v753);
                  if (v754 >= 0xFFFF)
                  {
                    v754 = 0xFFFF;
                  }

                  *v750 = v754 & ~(v754 >> 31);
                  LOWORD(v753) = i53[1];
                  v755 = *&v753 * 0.0000152590219;
                  v756 = (v755 * 65535.0) + 0.5 + 0.0000001;
                  v757 = vcvtmd_s64_f64(v756);
                  if (v757 >= 0xFFFF)
                  {
                    v757 = 0xFFFF;
                  }

                  v750[1] = v757 & ~(v757 >> 31);
                  LOWORD(v756) = i53[2];
                  v758 = *&v756 * 0.0000152590219;
                  v17 = (v758 * 65535.0) + 0.5 + 0.0000001;
                  v759 = vcvtmd_s64_f64(v17);
                  if (v759 >= 0xFFFF)
                  {
                    v759 = 0xFFFF;
                  }

                  v750[2] = v759 & ~(v759 >> 31);
                  v750 += 3;
                  i53 += 4;
                }

                v6 += v14;
                v7 += result;
              }
            }
          }

          else if (v8)
          {
            if (v13)
            {
              for (i54 = 0; i54 != v13; ++i54)
              {
                v402 = v12;
                v403 = v7;
                for (i55 = v6; v402; --v402)
                {
                  LOWORD(v17) = *i55;
                  v405 = *&v17 * 0.0000152590219;
                  v406 = (v405 * 65535.0) + 0.5 + 0.0000001;
                  v407 = vcvtmd_s64_f64(v406);
                  if (v407 >= 0xFFFF)
                  {
                    v407 = 0xFFFF;
                  }

                  *v403 = v407 & ~(v407 >> 31);
                  LOWORD(v406) = i55[1];
                  v408 = *&v406 * 0.0000152590219;
                  v409 = (v408 * 65535.0) + 0.5 + 0.0000001;
                  v410 = vcvtmd_s64_f64(v409);
                  if (v410 >= 0xFFFF)
                  {
                    v410 = 0xFFFF;
                  }

                  v403[1] = v410 & ~(v410 >> 31);
                  LOWORD(v409) = i55[2];
                  v411 = *&v409 * 0.0000152590219;
                  v17 = (v411 * 65535.0) + 0.5 + 0.0000001;
                  v412 = vcvtmd_s64_f64(v17);
                  if (v412 >= 0xFFFF)
                  {
                    v412 = 0xFFFF;
                  }

                  v403[2] = v412 & ~(v412 >> 31);
                  v403 += 3;
                  i55 += 4;
                }

                v6 += v14;
                v7 += result;
              }
            }
          }

          else if (v13)
          {
            for (i56 = 0; i56 != v13; ++i56)
            {
              v617 = v12;
              v618 = v7;
              for (i57 = v6; v617; --v617)
              {
                v620 = i57[3];
                v621 = (v620 * i57[1] / 0xFFFF);
                v622 = (v620 * *i57 / 0xFFFF) * 0.0000152590219;
                v623 = vcvtmd_s64_f64((v622 * 65535.0) + 0.5 + 0.0000001);
                v624 = (v620 * i57[2] / 0xFFFF);
                if (v623 >= 0xFFFF)
                {
                  v623 = 0xFFFF;
                }

                v625 = v621 * 0.0000152590219;
                v626 = v623 & ~(v623 >> 31);
                v627 = vcvtmd_s64_f64((v625 * 65535.0) + 0.5 + 0.0000001);
                if (v627 >= 0xFFFF)
                {
                  v627 = 0xFFFF;
                }

                v628 = v624 * 0.0000152590219;
                *v618 = v626;
                v629 = vcvtmd_s64_f64((v628 * 65535.0) + 0.5 + 0.0000001);
                v618[1] = v627 & ~(v627 >> 31);
                if (v629 >= 0xFFFF)
                {
                  v629 = 0xFFFF;
                }

                v618[2] = v629 & ~(v629 >> 31);
                v618 += 3;
                i57 += 4;
              }

              v6 += v14;
              v7 += result;
            }
          }
        }

        else if (v11)
        {
          if (v13)
          {
            for (i58 = 0; i58 != v13; ++i58)
            {
              v238 = v12;
              v239 = v7;
              for (i59 = v6; v238; --v238)
              {
                LOWORD(v17) = *i59;
                v241 = *&v17 * 0.0000152590219;
                v242 = (v241 * 65535.0) + 0.5 + 0.0000001;
                v243 = vcvtmd_s64_f64(v242);
                if (v243 >= 0xFFFF)
                {
                  v243 = 0xFFFF;
                }

                *v239 = v243 & ~(v243 >> 31);
                LOWORD(v242) = i59[1];
                v244 = *&v242 * 0.0000152590219;
                v245 = (v244 * 65535.0) + 0.5 + 0.0000001;
                v246 = vcvtmd_s64_f64(v245);
                if (v246 >= 0xFFFF)
                {
                  v246 = 0xFFFF;
                }

                v239[1] = v246 & ~(v246 >> 31);
                LOWORD(v245) = i59[2];
                v247 = *&v245 * 0.0000152590219;
                v17 = (v247 * 65535.0) + 0.5 + 0.0000001;
                v248 = vcvtmd_s64_f64(v17);
                if (v248 >= 0xFFFF)
                {
                  v248 = 0xFFFF;
                }

                v239[2] = v248 & ~(v248 >> 31);
                v239 += 3;
                i59 += 4;
              }

              v6 += v14;
              v7 += result;
            }
          }
        }

        else if (v13)
        {
          for (i60 = 0; i60 != v13; ++i60)
          {
            v418 = v12;
            v419 = v7;
            for (i61 = v6; v418; --v418)
            {
              LOWORD(v17) = *i61;
              v421 = *&v17 * 0.0000152590219;
              v422 = (v421 * 65535.0) + 0.5 + 0.0000001;
              v423 = vcvtmd_s64_f64(v422);
              if (v423 >= 0xFFFF)
              {
                v423 = 0xFFFF;
              }

              *v419 = v423 & ~(v423 >> 31);
              LOWORD(v422) = i61[1];
              v424 = *&v422 * 0.0000152590219;
              v425 = (v424 * 65535.0) + 0.5 + 0.0000001;
              v426 = vcvtmd_s64_f64(v425);
              if (v426 >= 0xFFFF)
              {
                v426 = 0xFFFF;
              }

              v419[1] = v426 & ~(v426 >> 31);
              LOWORD(v425) = i61[2];
              v427 = *&v425 * 0.0000152590219;
              v17 = (v427 * 65535.0) + 0.5 + 0.0000001;
              v428 = vcvtmd_s64_f64(v17);
              if (v428 >= 0xFFFF)
              {
                v428 = 0xFFFF;
              }

              v419[2] = v428 & ~(v428 >> 31);
              v419 += 3;
              i61 += 4;
            }

            v6 += v14;
            v7 += result;
          }
        }
      }

      return result;
    }

    if ((*(*a2 + 48))(a2))
    {
      goto LABEL_138;
    }

    v265 = (*(**(this + 8) + 16))(*(this + 8));
    v266 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v267 = (*(*this + 48))(this);
    v268 = (*(*a2 + 48))(a2);
    v269 = PCPixelFormat::hasAlpha(3u);
    v270 = PCPixelFormat::hasAlpha(6u);
    v271 = (*(*this + 16))(this);
    v272 = (*(*this + 24))(this);
    v273 = (*(**(this + 8) + 64))(*(this + 8));
    result = (*(**(a2 + 8) + 64))(*(a2 + 8));
    v278 = result;
    if (v269)
    {
      if (v270)
      {
        if (v267 == v268)
        {
          if (v272)
          {
            for (i62 = 0; i62 != v272; ++i62)
            {
              if (v271)
              {
                v773 = 0;
                v774 = v271;
                do
                {
                  v775 = (v265 + v773);
                  LOBYTE(v277) = *(v265 + v773 + 1);
                  v776 = *&v277 * 0.00392156863;
                  v777 = (v776 * 255.0) + 0.5 + 0.0000001;
                  v778 = vcvtmd_s64_f64(v777);
                  v779 = (v266 + v773);
                  if (v778 >= 255)
                  {
                    v778 = 255;
                  }

                  v779[2] = v778 & ~(v778 >> 31);
                  LOBYTE(v777) = v775[2];
                  v780 = *&v777 * 0.00392156863;
                  v781 = (v780 * 255.0) + 0.5 + 0.0000001;
                  v782 = vcvtmd_s64_f64(v781);
                  if (v782 >= 255)
                  {
                    v782 = 255;
                  }

                  v779[1] = v782 & ~(v782 >> 31);
                  LOBYTE(v781) = v775[3];
                  v783 = *&v781 * 0.00392156863;
                  v784 = (v783 * 255.0) + 0.5 + 0.0000001;
                  v785 = vcvtmd_s64_f64(v784);
                  if (v785 >= 255)
                  {
                    v785 = 255;
                  }

                  *v779 = v785 & ~(v785 >> 31);
                  LOBYTE(v784) = *v775;
                  v786 = *&v784 * 0.00392156863;
                  v277 = (v786 * 255.0) + 0.5 + 0.0000001;
                  v787 = vcvtmd_s64_f64(v277);
                  if (v787 >= 255)
                  {
                    v787 = 255;
                  }

                  v779[3] = v787 & ~(v787 >> 31);
                  v773 += 4;
                  --v774;
                }

                while (v774);
              }

              v265 += v273;
              v266 += result;
            }
          }
        }

        else if (v267)
        {
          if (v272)
          {
            v279 = 0;
            v863 = v272;
            v856 = v273;
            do
            {
              if (v271)
              {
                v280 = 0;
                v281 = v271;
                do
                {
                  v282 = (v266 + v280);
                  LODWORD(v864) = *(v265 + v280);
                  result = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>::unpremultiply(&v864, v274, v275, v276);
                  LOBYTE(v283) = BYTE1(v864);
                  *&v283 = v283 * 0.00392156863;
                  LODWORD(v275) = 1132396544;
                  v284 = (*&v283 * 255.0) + 0.5 + 0.0000001;
                  v285 = vcvtmd_s64_f64(v284);
                  if (v285 >= 255)
                  {
                    v285 = 255;
                  }

                  v282[2] = v285 & ~(v285 >> 31);
                  LOBYTE(v284) = BYTE2(v864);
                  v286 = *&v284 * 0.00392156863;
                  v287 = (v286 * 255.0) + 0.5 + 0.0000001;
                  v288 = vcvtmd_s64_f64(v287);
                  if (v288 >= 255)
                  {
                    v288 = 255;
                  }

                  v282[1] = v288 & ~(v288 >> 31);
                  LOBYTE(v287) = BYTE3(v864);
                  v289 = *&v287 * 0.00392156863;
                  v290 = (v289 * 255.0) + 0.5 + 0.0000001;
                  v291 = vcvtmd_s64_f64(v290);
                  if (v291 >= 255)
                  {
                    v291 = 255;
                  }

                  *v282 = v291 & ~(v291 >> 31);
                  LOBYTE(v290) = LOBYTE(v864);
                  v292 = *&v290 * 0.00392156863;
                  v274 = (v292 * 255.0) + 0.5 + 0.0000001;
                  v293 = vcvtmd_s64_f64(v274);
                  if (v293 >= 255)
                  {
                    v293 = 255;
                  }

                  v282[3] = v293 & ~(v293 >> 31);
                  v280 += 4;
                  --v281;
                }

                while (v281);
              }

              v265 += v856;
              v266 += v278;
              ++v279;
            }

            while (v279 != v863);
          }
        }

        else if (v272)
        {
          for (i63 = 0; i63 != v272; ++i63)
          {
            if (v271)
            {
              v835 = 0;
              v836 = v271;
              do
              {
                v837 = (v265 + v835);
                LOBYTE(v277) = *(v265 + v835 + 1);
                v838 = *&v277 * 0.00392156863;
                v839 = (v838 * 255.0) + 0.5 + 0.0000001;
                v840 = vcvtmd_s64_f64(v839);
                v841 = (v266 + v835);
                if (v840 >= 255)
                {
                  v840 = 255;
                }

                v842 = v840 & ~(v840 >> 31);
                v841[2] = v842;
                LOBYTE(v839) = v837[2];
                v843 = *&v839 * 0.00392156863;
                v844 = (v843 * 255.0) + 0.5 + 0.0000001;
                v845 = vcvtmd_s64_f64(v844);
                if (v845 >= 255)
                {
                  v845 = 255;
                }

                v846 = v845 & ~(v845 >> 31);
                v841[1] = v846;
                LOBYTE(v844) = v837[3];
                v847 = *&v844 * 0.00392156863;
                v848 = (v847 * 255.0) + 0.5 + 0.0000001;
                v849 = vcvtmd_s64_f64(v848);
                if (v849 >= 255)
                {
                  v849 = 255;
                }

                result = v849 & ~(v849 >> 31);
                *v841 = result;
                LOBYTE(v848) = *v837;
                v850 = *&v848 * 0.00392156863;
                v277 = (v850 * 255.0) + 0.5 + 0.0000001;
                v851 = vcvtmd_s64_f64(v277);
                if (v851 >= 255)
                {
                  v851 = 255;
                }

                v852 = v851 & ~(v851 >> 31);
                v841[3] = v852;
                v841[2] = (32897 * v852 * v842) >> 23;
                v841[1] = (32897 * v852 * v846) >> 23;
                *v841 = (32897 * v852 * result) >> 23;
                v835 += 4;
                --v836;
              }

              while (v836);
            }

            v265 += v273;
            v266 += v278;
          }
        }
      }

      else if (v267)
      {
        if (v272)
        {
          for (i64 = 0; i64 != v272; ++i64)
          {
            if (v271)
            {
              v604 = 0;
              v605 = v271;
              do
              {
                v606 = v265 + v604;
                LOBYTE(v277) = *(v265 + v604 + 1);
                v607 = *&v277 * 0.00392156863;
                v608 = (v607 * 255.0) + 0.5 + 0.0000001;
                v609 = (v266 + v604);
                v610 = vcvtmd_s64_f64(v608);
                if (v610 >= 255)
                {
                  v610 = 255;
                }

                v609[2] = v610 & ~(v610 >> 31);
                LOBYTE(v608) = *(v606 + 2);
                v611 = *&v608 * 0.00392156863;
                v612 = (v611 * 255.0) + 0.5 + 0.0000001;
                v613 = vcvtmd_s64_f64(v612);
                if (v613 >= 255)
                {
                  v613 = 255;
                }

                v609[1] = v613 & ~(v613 >> 31);
                LOBYTE(v612) = *(v606 + 3);
                v614 = *&v612 * 0.00392156863;
                v277 = (v614 * 255.0) + 0.5 + 0.0000001;
                v615 = vcvtmd_s64_f64(v277);
                if (v615 >= 255)
                {
                  v615 = 255;
                }

                *v609 = v615 & ~(v615 >> 31);
                v604 += 4;
                --v605;
              }

              while (v605);
            }

            v265 += v273;
            v266 += result;
          }
        }
      }

      else if (v272)
      {
        for (i65 = 0; i65 != v272; ++i65)
        {
          if (v271)
          {
            v795 = 0;
            v796 = v271;
            do
            {
              v797 = *(v265 + v795);
              result = v266 + v795;
              v798 = ((32897 * *(v265 + v795 + 2) * v797) >> 23);
              v799 = ((32897 * *(v265 + v795 + 3) * v797) >> 23);
              v800 = ((32897 * *(v265 + v795 + 1) * v797) >> 23) * 0.00392156863;
              v801 = vcvtmd_s64_f64((v800 * 255.0) + 0.5 + 0.0000001);
              if (v801 >= 255)
              {
                v801 = 255;
              }

              v802 = v798 * 0.00392156863;
              v803 = v801 & ~(v801 >> 31);
              v804 = vcvtmd_s64_f64((v802 * 255.0) + 0.5 + 0.0000001);
              if (v804 >= 255)
              {
                v804 = 255;
              }

              v805 = v799 * 0.00392156863;
              *(result + 2) = v803;
              v806 = vcvtmd_s64_f64((v805 * 255.0) + 0.5 + 0.0000001);
              *(result + 1) = v804 & ~(v804 >> 31);
              if (v806 >= 255)
              {
                v806 = 255;
              }

              *result = v806 & ~(v806 >> 31);
              v795 += 4;
              --v796;
            }

            while (v796);
          }

          v265 += v273;
          v266 += v278;
        }
      }
    }

    else if (v270)
    {
      if (v272)
      {
        for (i66 = 0; i66 != v272; ++i66)
        {
          if (v271)
          {
            v434 = 0;
            v435 = v271;
            do
            {
              v436 = v265 + v434;
              LOBYTE(v277) = *(v265 + v434 + 1);
              v437 = *&v277 * 0.00392156863;
              v438 = (v437 * 255.0) + 0.5 + 0.0000001;
              v439 = vcvtmd_s64_f64(v438);
              v440 = (v266 + v434);
              if (v439 >= 255)
              {
                v439 = 255;
              }

              v440[2] = v439 & ~(v439 >> 31);
              LOBYTE(v438) = *(v436 + 2);
              v441 = *&v438 * 0.00392156863;
              v442 = (v441 * 255.0) + 0.5 + 0.0000001;
              v443 = vcvtmd_s64_f64(v442);
              if (v443 >= 255)
              {
                v443 = 255;
              }

              v440[1] = v443 & ~(v443 >> 31);
              LOBYTE(v442) = *(v436 + 3);
              v444 = *&v442 * 0.00392156863;
              v277 = (v444 * 255.0) + 0.5 + 0.0000001;
              v445 = vcvtmd_s64_f64(v277);
              if (v445 >= 255)
              {
                v445 = 255;
              }

              *v440 = v445 & ~(v445 >> 31);
              v440[3] = -1;
              v434 += 4;
              --v435;
            }

            while (v435);
          }

          v265 += v273;
          v266 += result;
        }
      }
    }

    else if (v272)
    {
      for (i67 = 0; i67 != v272; ++i67)
      {
        if (v271)
        {
          v641 = 0;
          v642 = v271;
          do
          {
            v643 = v265 + v641;
            LOBYTE(v277) = *(v265 + v641 + 1);
            v644 = *&v277 * 0.00392156863;
            v645 = (v644 * 255.0) + 0.5 + 0.0000001;
            v646 = (v266 + v641);
            v647 = vcvtmd_s64_f64(v645);
            if (v647 >= 255)
            {
              v647 = 255;
            }

            v646[2] = v647 & ~(v647 >> 31);
            LOBYTE(v645) = *(v643 + 2);
            v648 = *&v645 * 0.00392156863;
            v649 = (v648 * 255.0) + 0.5 + 0.0000001;
            v650 = vcvtmd_s64_f64(v649);
            if (v650 >= 255)
            {
              v650 = 255;
            }

            v646[1] = v650 & ~(v650 >> 31);
            LOBYTE(v649) = *(v643 + 3);
            v651 = *&v649 * 0.00392156863;
            v277 = (v651 * 255.0) + 0.5 + 0.0000001;
            v652 = vcvtmd_s64_f64(v277);
            if (v652 >= 255)
            {
              v652 = 255;
            }

            *v646 = v652 & ~(v652 >> 31);
            v641 += 4;
            --v642;
          }

          while (v642);
        }

        v265 += v273;
        v266 += result;
      }
    }
  }

  return result;
}