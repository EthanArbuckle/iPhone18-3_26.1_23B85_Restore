__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v8 = &a2->n128_u64[1];
  v40 = &a2->n128_u64[1];
  v41 = a2;
  v9 = a2 + 1;
  v42 = a2 + 1;
  v35 = a1 + 1;
  v36 = &a1->n128_u64[1];
  v37 = &a1->n128_u64[1];
  v38 = a1;
  v39 = a1 + 1;
  v10 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37);
  v40 = &a3->n128_u64[1];
  v41 = a3;
  v11 = ~v10;
  v42 = a3 + 1;
  v37 = v8;
  v38 = a2;
  v39 = v9;
  v12 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37);
  if (!v11)
  {
    if (v12 == -1)
    {
      v22 = *a1;
      v23 = a1[1].n128_u64[0];
      v25 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v25;
    }

    else
    {
      v19 = *a1;
      v20 = a1[1].n128_u64[0];
      v21 = a2[1].n128_u32[0];
      *a1 = *a2;
      a1[1].n128_u32[0] = v21;
      a2[1].n128_u32[0] = v20;
      *a2 = v19;
      v40 = &a3->n128_u64[1];
      v41 = a3;
      v42 = a3 + 1;
      v37 = v8;
      v38 = a2;
      v39 = v9;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) != 0xFF)
      {
        goto LABEL_10;
      }

      v22 = *a2;
      v23 = a2[1].n128_u64[0];
      v24 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v24;
    }

    a3[1].n128_u32[0] = v23;
    *a3 = v22;
    goto LABEL_10;
  }

  if (v12 == -1)
  {
    v13 = *a2;
    v14 = a2[1].n128_u64[0];
    v15 = a3[1].n128_u32[0];
    *a2 = *a3;
    a2[1].n128_u32[0] = v15;
    a3[1].n128_u32[0] = v14;
    *a3 = v13;
    v40 = v8;
    v41 = a2;
    v42 = v9;
    v37 = v36;
    v38 = a1;
    v39 = v35;
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
    {
      v16 = *a1;
      v17 = a1[1].n128_u64[0];
      v18 = a2[1].n128_u32[0];
      *a1 = *a2;
      a1[1].n128_u32[0] = v18;
      a2[1].n128_u32[0] = v17;
      *a2 = v16;
    }
  }

LABEL_10:
  v40 = &a4->n128_u64[1];
  v41 = a4;
  v42 = a4 + 1;
  v37 = &a3->n128_u64[1];
  v38 = a3;
  v39 = a3 + 1;
  if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
  {
    v27 = *a3;
    v28 = a3[1].n128_i64[0];
    v29 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v29;
    a4[1].n128_u32[0] = v28;
    *a4 = v27;
    v40 = &a3->n128_u64[1];
    v41 = a3;
    v42 = a3 + 1;
    v37 = v8;
    v38 = a2;
    v39 = v9;
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
    {
      v30 = *a2;
      v31 = a2[1].n128_u64[0];
      v32 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v32;
      a3[1].n128_u32[0] = v31;
      *a3 = v30;
      v40 = v8;
      v41 = a2;
      v42 = v9;
      v37 = v36;
      v38 = a1;
      v39 = v35;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
      {
        result = *a1;
        v33 = a1[1].n128_u64[0];
        v34 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v34;
        a2[1].n128_u32[0] = v33;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = (a1 + 24);
        v20 = a2 - 24;
        v21 = a1 + 32;
        v69 = (a1 + 32);
        v70 = (a1 + 24);
        v22 = a1 + 40;
        v71 = (a1 + 40);
        v66 = (a1 + 8);
        v67 = a1;
        v62 = a1 + 16;
        n128_u64 = (a1 + 16);
        v23 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
        v24 = (a2 - 16);
        v69 = (a2 - 16);
        v70 = v20;
        v25 = ~v23;
        v26 = (a2 - 8);
        v71 = v26;
        v66 = v21;
        v67 = v9;
        n128_u64 = v22;
        v27 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
        if (!v25)
        {
          if (v27 == -1)
          {
            v46 = *a1;
            v47 = *(a1 + 16);
            v53 = *(v20 + 16);
            *a1 = *v20;
            *(a1 + 16) = v53;
          }

          else
          {
            v44 = *(a1 + 16);
            v45 = *a1;
            *a1 = *v9;
            *(a1 + 16) = *(a1 + 40);
            *v9 = v45;
            *(a1 + 40) = v44;
            v69 = v24;
            v70 = v20;
            v71 = v26;
            v66 = v21;
            v67 = v9;
            n128_u64 = v22;
            if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
            {
              return 1;
            }

            v46 = *v9;
            v47 = *(a1 + 40);
            v48 = *(v20 + 16);
            *v9 = *v20;
            *(a1 + 40) = v48;
          }

          *(v20 + 16) = v47;
          *v20 = v46;
          return 1;
        }

        if (v27 != -1)
        {
          return 1;
        }

        v28 = *v9;
        v29 = *(a1 + 40);
        v30 = *(v20 + 16);
        *v9 = *v20;
        *(a1 + 40) = v30;
        *(v20 + 16) = v29;
        *v20 = v28;
        v69 = (a1 + 32);
        v70 = (a1 + 24);
        v71 = (a1 + 40);
        v66 = (a1 + 8);
        v67 = a1;
        n128_u64 = v62;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        v9 = (a1 + 24);
        v10 = (a1 + 48);
        v11 = (a1 + 72);
        v12 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        v69 = (a2 - 16);
        v70 = v12;
        v71 = (a2 - 8);
        v66 = (a1 + 80);
        v67 = v11;
        n128_u64 = (a1 + 88);
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        v13 = *v11;
        v14 = *(a1 + 88);
        v15 = *(v12 + 16);
        *v11 = *v12;
        *(a1 + 88) = v15;
        *(v12 + 16) = v14;
        *v12 = v13;
        v69 = (a1 + 80);
        v70 = (a1 + 72);
        v71 = (a1 + 88);
        v66 = (a1 + 56);
        v67 = v10;
        n128_u64 = (a1 + 64);
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        v16 = *(a1 + 64);
        v17 = *v10;
        *v10 = *v11;
        *(a1 + 64) = *(a1 + 88);
        *v11 = v17;
        *(a1 + 88) = v16;
        v69 = (a1 + 56);
        v70 = (a1 + 48);
        v71 = (a1 + 64);
        v66 = (a1 + 32);
        v67 = (a1 + 24);
        n128_u64 = (a1 + 40);
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        v18 = *(a1 + 40);
        v19 = *v9;
        *v9 = *v10;
        *(a1 + 40) = *(a1 + 64);
        *v10 = v19;
        *(a1 + 64) = v18;
        if (!outlierScore::operator<(a1 + 24, a1))
        {
          return 1;
        }

        break;
      default:
        goto LABEL_18;
    }

    v31 = *(a1 + 16);
    v32 = *a1;
    *a1 = *v9;
    *(a1 + 16) = v9[1].n128_u32[0];
    *v9 = v32;
    v9[1].n128_u32[0] = v31;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 24);
    v69 = (a2 - 16);
    v70 = (a2 - 24);
    v71 = (a2 - 8);
    v66 = (a1 + 8);
    v67 = a1;
    n128_u64 = (a1 + 16);
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) == 0xFF)
    {
      v6 = *a1;
      v7 = *(a1 + 16);
      v8 = *(a2 - 8);
      *a1 = *v5;
      *(a1 + 16) = v8;
      *(a2 - 8) = v7;
      *v5 = v6;
    }

    return 1;
  }

LABEL_18:
  v33 = (a1 + 48);
  v34 = (a1 + 24);
  v35 = a1 + 32;
  v69 = (a1 + 32);
  v70 = (a1 + 24);
  v36 = a1 + 40;
  v71 = (a1 + 40);
  v61 = a1 + 8;
  v63 = a1 + 16;
  v66 = (a1 + 8);
  v67 = a1;
  n128_u64 = (a1 + 16);
  v37 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
  v69 = (a1 + 56);
  v70 = v33;
  v38 = ~v37;
  v71 = (a1 + 64);
  v66 = v35;
  v67 = v34;
  n128_u64 = v36;
  v39 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
  if (v38)
  {
    if (v39 == -1)
    {
      v40 = *(a1 + 40);
      v41 = *v34;
      *v34 = *v33;
      *(a1 + 40) = *(a1 + 64);
      *v33 = v41;
      *(a1 + 64) = v40;
      v69 = (a1 + 32);
      v70 = (a1 + 24);
      v71 = (a1 + 40);
      v66 = v61;
      v67 = a1;
      n128_u64 = v63;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) == 0xFF)
      {
        v42 = *(a1 + 16);
        v43 = *a1;
        *a1 = *v34;
        *(a1 + 16) = *(a1 + 40);
        *v34 = v43;
        *(a1 + 40) = v42;
      }
    }
  }

  else
  {
    if (v39 == -1)
    {
      v51 = *(a1 + 16);
      v52 = *a1;
      *a1 = *v33;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *v34;
      *(a1 + 16) = *(a1 + 40);
      *v34 = v50;
      *(a1 + 40) = v49;
      v69 = (a1 + 56);
      v70 = (a1 + 48);
      v71 = (a1 + 64);
      v66 = v35;
      v67 = v34;
      n128_u64 = v36;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
      {
        goto LABEL_33;
      }

      v51 = *(a1 + 40);
      v52 = *v34;
      *v34 = *v33;
      *(a1 + 40) = *(a1 + 64);
    }

    *v33 = v52;
    *(a1 + 64) = v51;
  }

LABEL_33:
  v54 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v55 = 0;
  v56 = 0;
  while (1)
  {
    v69 = (v54 + 8);
    v70 = v54;
    v71 = (v54 + 16);
    v66 = &v33->n128_i8[8];
    v67 = v33;
    n128_u64 = v33[1].n128_u64;
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) == 0xFF)
    {
      v64 = *v54;
      v65 = *(v54 + 16);
      v57 = v55;
      while (1)
      {
        v58 = a1 + v57;
        *(v58 + 72) = *(a1 + v57 + 48);
        *(v58 + 88) = *(a1 + v57 + 64);
        if (v57 == -48)
        {
          break;
        }

        v69 = &v64 + 8;
        v70 = &v64;
        v71 = &v65;
        v66 = (v58 + 32);
        v67 = (v58 + 24);
        n128_u64 = (v58 + 40);
        v57 -= 24;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          v59 = a1 + v57 + 72;
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      *v59 = v64;
      *(v59 + 16) = v65;
      if (++v56 == 8)
      {
        return v54 + 24 == a2;
      }
    }

    v33 = v54;
    v55 += 24;
    v54 += 24;
    if (v54 == a2)
    {
      return 1;
    }
  }
}

void std::__destroy_at[abi:ne200100]<cluster,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[7];

  std::__tree<int>::destroy((a1 + 6), v3);
}

uint64_t std::__split_buffer<cluster>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::__destroy_at[abi:ne200100]<cluster,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<cluster>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 17;
        std::__destroy_at[abi:ne200100]<cluster,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__tree<int>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(uint64_t **a1, int a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (*(v6 + 8) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 8) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

uint64_t std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__emplace_unique_key_args<int,std::pair<int const,cluster *>>(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::set<int>::set[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 28);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

_DWORD *hdbscanConstraint::hdbscanConstraint(_DWORD *result, int a2, int a3, int a4)
{
  result[1] = a2;
  result[2] = a3;
  *result = a4;
  return result;
}

{
  result[1] = a2;
  result[2] = a3;
  *result = a4;
  return result;
}

void hdbscanRunner::run(uint64_t a1)
{
  v2 = *(a1 + 32) - *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!v2)
  {
    v2 = v4 - *a1;
  }

  v5 = v2 >> 3;
  v6 = -1431655765 * v5;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v7 = -1431655765 * v5;
  if (v4 == v3)
  {
    std::vector<std::vector<double>>::vector[abi:ne200100](&v51, -1431655765 * v5);
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = (a1 + 48);
      while (1)
      {
        std::vector<double>::resize(&v51[3 * v8], v7);
        if (v8)
        {
          break;
        }

LABEL_61:
        if (++v8 == (v6 & 0x7FFFFFFF))
        {
          goto LABEL_62;
        }
      }

      v10 = 0;
      while (*(a1 + 71) < 0)
      {
        v11 = *(a1 + 56);
        if (!v11)
        {
          goto LABEL_24;
        }

        if (v11 == 9)
        {
          v12 = *v9;
          if (**v9 != 0x616564696C637545 || *(*v9 + 8) != 110)
          {
LABEL_33:
            v30 = *v12;
            v31 = *(v12 + 8);
            if (v30 != 0x61747461686E614DLL || v31 != 110)
            {
              goto LABEL_60;
            }

            v54 = &unk_1F4BCEE10;
            v33 = (*(a1 + 24) + 24 * v8);
            v61 = 0;
            v59 = 0;
            v60 = 0;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v59, *v33, v33[1], (v33[1] - *v33) >> 3);
            v34 = (*(a1 + 24) + 24 * v10);
            v58 = 0;
            v56 = 0;
            v57 = 0;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v56, *v34, v34[1], (v34[1] - *v34) >> 3);
            v16 = v59;
            if (v60 == v59)
            {
              v22 = 0.0;
            }

            else
            {
              v35 = 0;
              v22 = 0.0;
              v36 = 1;
              while ((v57 - v56) >> 3 > v35)
              {
                v22 = v22 + vabdd_f64(*(v59 + v35), *(v56 + v35));
                v35 = v36;
                v21 = (v60 - v59) >> 3 > v36++;
                if (!v21)
                {
                  goto LABEL_55;
                }
              }
            }

            if (v56)
            {
LABEL_55:
              v57 = v56;
              operator delete(v56);
              v16 = v59;
            }

            if (v16)
            {
              v60 = v16;
LABEL_58:
              operator delete(v16);
            }

LABEL_59:
            v37 = v51;
            *(v51[3 * v8] + v10) = v22;
            *(v37[3 * v10] + v8) = v22;
            goto LABEL_60;
          }

LABEL_19:
          v54 = &unk_1F4BCEE60;
          v14 = (*(a1 + 24) + 24 * v8);
          v67 = 0;
          v65 = 0;
          v66 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v65, *v14, v14[1], (v14[1] - *v14) >> 3);
          v15 = (*(a1 + 24) + 24 * v10);
          v64 = 0;
          __p = 0;
          v63 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *v15, v15[1], (v15[1] - *v15) >> 3);
          v16 = v65;
          if (v66 == v65)
          {
            v18 = 0.0;
LABEL_49:
            v22 = sqrt(v18);
            if (__p)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v17 = 0;
            v18 = 0.0;
            v19 = 1;
            do
            {
              if ((v63 - __p) >> 3 <= v17)
              {
                goto LABEL_49;
              }

              v20 = *&v65[8 * v17] - *(__p + v17);
              v18 = v18 + v20 * v20;
              v17 = v19;
              v21 = (v66 - v65) >> 3 > v19++;
            }

            while (v21);
            v22 = sqrt(v18);
LABEL_50:
            v63 = __p;
            operator delete(__p);
            v16 = v65;
          }

          if (v16)
          {
            v66 = v16;
            goto LABEL_58;
          }

          goto LABEL_59;
        }

LABEL_60:
        if (++v10 == v8)
        {
          goto LABEL_61;
        }
      }

      if (*(a1 + 71) == 9)
      {
        v29 = *v9 == 0x616564696C637545 && *(a1 + 56) == 110;
        v12 = (a1 + 48);
        if (!v29)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

      if (*(a1 + 71))
      {
        goto LABEL_60;
      }

LABEL_24:
      v54 = &unk_1F4BCEE60;
      v23 = (*(a1 + 24) + 24 * v8);
      v72 = 0;
      v73 = 0;
      v71 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v71, *v23, v23[1], (v23[1] - *v23) >> 3);
      v24 = (*(a1 + 24) + 24 * v10);
      v69 = 0;
      v70 = 0;
      v68 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v68, *v24, v24[1], (v24[1] - *v24) >> 3);
      v16 = v71;
      if (v72 == v71)
      {
        v26 = 0.0;
LABEL_44:
        v22 = sqrt(v26);
        if (!v68)
        {
LABEL_46:
          if (v16)
          {
            v72 = v16;
            goto LABEL_58;
          }

          goto LABEL_59;
        }
      }

      else
      {
        v25 = 0;
        v26 = 0.0;
        v27 = 1;
        do
        {
          if (v69 - v68 <= v25)
          {
            goto LABEL_44;
          }

          v28 = *&v71[8 * v25] - v68[v25];
          v26 = v26 + v28 * v28;
          v25 = v27;
          v21 = (v72 - v71) >> 3 > v27++;
        }

        while (v21);
        v22 = sqrt(v26);
      }

      v69 = v68;
      operator delete(v68);
      v16 = v71;
      goto LABEL_46;
    }

LABEL_62:
    if (&v51 != a1)
    {
      std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(a1, v51, v52, 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3));
    }

    v54 = &v51;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v54);
    v3 = *a1;
    v4 = *(a1 + 8);
  }

  memset(v53, 0, sizeof(v53));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v53, v3, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  hdbscanStar::hdbscanAlgorithm::calculateCoreDistances(v53, *(a1 + 72), &v54);
  v51 = v53;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v51);
  memset(v50, 0, sizeof(v50));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v50, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  v47 = 0;
  v48 = 0;
  v49 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v47, v54, v55, (v55 - v54) >> 3);
  hdbscanStar::hdbscanAlgorithm::constructMst(v50, &v47, 1, &v51);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v46 = v50;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v46);
  undirectedGraph::quicksortByEdgeWeight(&v51);
  std::vector<double>::vector[abi:ne200100](&v46, v7);
  std::vector<int>::vector[abi:ne200100](&v45, v7);
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  memset(v42, 0, sizeof(v42));
  v38 = *(a1 + 76);
  v39 = *(a1 + 80);
  v40 = *(a1 + 88);
  memset(v41, 0, sizeof(v41));
  std::vector<hdbscanConstraint>::__init_with_size[abi:ne200100]<hdbscanConstraint*,hdbscanConstraint*>(v41, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 2));
  hdbscanStar::hdbscanAlgorithm::computeHierarchyAndClusterTree(&v51, v38, v41, v44, &v46, &v45, v43, v42);
}

void sub_1CEF021D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x238] = &a64;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x238]);
  hdbscanResult::~hdbscanResult((v64 - 192));
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<cluster>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = *(v6 + 72);
          if (v8)
          {
            *(v6 + 80) = v8;
            operator delete(v8);
          }

          std::__tree<int>::destroy(v6 + 48, *(v6 + 56));
          MEMORY[0x1D3865860](v6, 0x10A0C408B9C0EF9);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void undirectedGraph::~undirectedGraph(undirectedGraph *this)
{
  v5 = (this + 80);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v5);
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

void undirectedGraph::quicksortByEdgeWeight(undirectedGraph *this)
{
  v1 = (*(this + 8) - *(this + 7)) >> 3;
  if (v1 >= 2)
  {
    std::vector<int>::vector[abi:ne200100](v9, (v1 >> 1) & 0x3FFFFFFF);
    std::vector<int>::vector[abi:ne200100](__p, (v1 >> 1) & 0x3FFFFFFF);
    v3 = 0;
    *v9[0] = 0;
    *__p[0] = v1 - 1;
    do
    {
      v4 = *(v9[0] + v3);
      v5 = *(__p[0] + v3);
      v6 = undirectedGraph::selectPivotIndex(this, v4, v5);
      v7 = undirectedGraph::partition(this, v4, v5, v6);
      if (v7 <= v4 + 1)
      {
        --v3;
      }

      else
      {
        *(v9[0] + v3) = v4;
        *(__p[0] + v3) = v7 - 1;
      }

      if (v7 < (v5 - 1))
      {
        *(v9[0] + ++v3) = v7 + 1;
        *(__p[0] + v3) = v5;
      }
    }

    while ((v3 & 0x80000000) == 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[0])
    {
      v9[1] = v9[0];
      operator delete(v9[0]);
    }
  }
}

void sub_1CEF0265C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t undirectedGraph::selectPivotIndex(undirectedGraph *this, uint64_t a2, unsigned int a3)
{
  if ((a2 - a3) < 2)
  {
    return a2;
  }

  v4 = *(this + 7);
  v5 = *(v4 + 8 * a2);
  v6 = a2 + (a3 - a2) / 2;
  v7 = *(v4 + 8 * v6);
  v8 = *(v4 + 8 * a3);
  if (v5 <= v7)
  {
    result = (a2 + (a3 - a2) / 2);
    if (v7 > v8)
    {
      if (v8 >= v5)
      {
        return a3;
      }

      else
      {
        return a2;
      }
    }
  }

  else
  {
    result = a2;
    if (v5 > v8)
    {
      if (v8 >= v7)
      {
        return a3;
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t undirectedGraph::partition(undirectedGraph *this, uint64_t a2, int a3, int a4)
{
  v4 = *(this + 7);
  v5 = *(v4 + 8 * a4);
  if (a4 != a3)
  {
    v6 = *(this + 1);
    v7 = *(v6 + 4 * a4);
    v8 = *(this + 4);
    v9 = *(v8 + 4 * a4);
    *(v6 + 4 * a4) = *(v6 + 4 * a3);
    *(v8 + 4 * a4) = *(v8 + 4 * a3);
    *(v4 + 8 * a4) = *(v4 + 8 * a3);
    *(v6 + 4 * a3) = v7;
    *(v8 + 4 * a3) = v9;
    *(v4 + 8 * a3) = v5;
  }

  if (a2 < a3)
  {
    v10 = a2;
    do
    {
      v11 = *(v4 + 8 * v10);
      if (v11 < v5)
      {
        if (v10 != a2)
        {
          v12 = *(this + 1);
          v13 = *(v12 + 4 * v10);
          v14 = *(this + 4);
          v15 = *(v14 + 4 * v10);
          *(v12 + 4 * v10) = *(v12 + 4 * a2);
          *(v14 + 4 * v10) = *(v14 + 4 * a2);
          *(v4 + 8 * v10) = *(v4 + 8 * a2);
          *(v12 + 4 * a2) = v13;
          *(v14 + 4 * a2) = v15;
          *(v4 + 8 * a2) = v11;
        }

        a2 = (a2 + 1);
      }

      ++v10;
    }

    while (a3 != v10);
  }

  if (a2 != a3)
  {
    v16 = *(this + 1);
    v17 = *(v16 + 4 * a2);
    v18 = *(this + 4);
    v19 = *(v18 + 4 * a2);
    v20 = *(v4 + 8 * a2);
    *(v16 + 4 * a2) = *(v16 + 4 * a3);
    *(v18 + 4 * a2) = *(v18 + 4 * a3);
    *(v4 + 8 * a2) = *(v4 + 8 * a3);
    *(v16 + 4 * a3) = v17;
    *(v18 + 4 * a3) = v19;
    *(v4 + 8 * a3) = v20;
  }

  return a2;
}

double undirectedGraph::swapEdges(undirectedGraph *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = *(this + 1);
    v4 = *(v3 + 4 * a2);
    v5 = *(this + 4);
    v6 = *(v5 + 4 * a2);
    v7 = *(this + 7);
    result = *(v7 + 8 * a2);
    *(v3 + 4 * a2) = *(v3 + 4 * a3);
    *(v5 + 4 * a2) = *(v5 + 4 * a3);
    *(v7 + 8 * a2) = *(v7 + 8 * a3);
    *(v3 + 4 * a3) = v4;
    *(v5 + 4 * a3) = v6;
    *(v7 + 8 * a3) = result;
  }

  return result;
}

uint64_t bitSet::get(bitSet *this, int a2)
{
  if (*(this + 1) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*this + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

void bitSet::set(bitSet *this, int a2)
{
  v3 = a2;
  if (*(this + 1) <= a2)
  {
    std::vector<BOOL>::resize(this, a2 + 64, 0);
  }

  *(*this + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
}

void bitSet::ensure(bitSet *this, int a2)
{
  if (*(this + 1) <= a2)
  {
    std::vector<BOOL>::resize(this, a2 + 64, 0);
  }
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, char a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  if (v7 << 6 >= v5 && v4 <= (v7 << 6) - v5)
  {
    v10 = (*a1 + 8 * (v4 >> 6));
    v11 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_34:
    if (v11)
    {
      if ((64 - v11) >= v5)
      {
        v18 = v5;
      }

      else
      {
        v18 = (64 - v11);
      }

      *v10++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v11 - v18)) & (-1 << v11));
      v5 -= v18;
    }

    goto LABEL_39;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_13:
    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  if ((v7 << 6) > 0x3FFFFFFFFFFFFFFELL)
  {
LABEL_25:
    operator new();
  }

  v9 = v7 << 7;
  if (v9 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
  {
    v9 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  if (v9)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v16 = *a1;
  v10 = 0;
  if (v4 >= 1)
  {
    v17 = v4 >> 6;
    if (v4 >= 0x40)
    {
      memmove(0, *a1, 8 * v17);
    }

    v10 = (8 * v17);
    if ((v4 & 0x3F) != 0)
    {
      *(8 * v17) = *(8 * v17) & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F)) | v16[v17] & (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
      *a1 = 0;
      *(a1 + 8) = a2;
      *(a1 + 16) = 0;
      LODWORD(v11) = v4 & 0x3F;
      goto LABEL_33;
    }
  }

  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (v16)
  {
    LODWORD(v11) = 0;
LABEL_33:
    operator delete(v16);
    if (a3)
    {
LABEL_16:
      if (v11)
      {
        if ((64 - v11) >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = (64 - v11);
        }

        *v10++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v11 - v12)) & (-1 << v11);
        v5 -= v12;
      }

LABEL_21:
      v13 = v5 >> 6;
      if (v5 >= 0x40)
      {
        memset(v10, 255, 8 * v13);
      }

      if ((v5 & 0x3F) != 0)
      {
        v14 = v10[v13] | (0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
LABEL_43:
        v10[v13] = v14;
        return;
      }

      return;
    }

    goto LABEL_34;
  }

  if (a3)
  {
    goto LABEL_21;
  }

LABEL_39:
  v13 = v5 >> 6;
  if (v5 >= 0x40)
  {
    bzero(v10, 8 * v13);
  }

  if ((v5 & 0x3F) != 0)
  {
    v14 = v10[v13] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
    goto LABEL_43;
  }
}

double EuclideanDistance::computeDistance(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    v7 = 1;
    do
    {
      if ((a3[1] - *a3) >> 3 <= v4)
      {
        break;
      }

      v8 = *(*a2 + 8 * v4) - *(*a3 + 8 * v4);
      v6 = v6 + v8 * v8;
      v4 = v7;
    }

    while (v5 > v7++);
  }

  else
  {
    v6 = 0.0;
  }

  return sqrt(v6);
}

void cluster::cluster(cluster *this)
{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
}

{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
}

void cluster::cluster(cluster *this, int a2, cluster *a3, double a4, int a5)
{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 1) = a4;
  *(this + 6) = a5;
  *(this + 31) = a2;
  *(this + 32) = 0;
  *(this + 13) = a3;
  *(this + 14) = 0;
  *(this + 12) = 0x7FEFFFFFFFFFFFFFLL;
  if (a3)
  {
    *(a3 + 120) = 1;
  }

  *(this + 120) = 0;
  std::vector<cluster *>::resize(this + 9, 0);
}

void sub_1CEF02CE8(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v6;
    operator delete(v6);
  }

  std::__tree<int>::destroy(v1, *v4);
  _Unwind_Resume(a1);
}

void std::vector<cluster *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<cluster *>::__append(a1, a2 - v2);
  }
}

uint64_t cluster::detachPoints(uint64_t this, int a2, double a3)
{
  v3 = *(this + 24);
  *(this + 112) = *(this + 112) + a2 * (1.0 / a3 - 1.0 / *(this + 8));
  v4 = v3 - a2;
  *(this + 24) = v4;
  if (v4)
  {
    if (v4 < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception);
      __cxa_throw(exception, off_1E83B7E10, MEMORY[0x1E69E5298]);
    }
  }

  else
  {
    *(this + 16) = a3;
  }

  return this;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "Cluster cannot have less than 0 points.");
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

void cluster::propagate(cluster *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    v2 = *(this + 12);
    if (v2 == 1.79769313e308)
    {
      v2 = *(this + 2);
      *(this + 12) = v2;
    }

    if (v2 < *(v1 + 96))
    {
      *(v1 + 96) = v2;
    }

    v3 = *(this + 10);
    if ((*(this + 120) & 1) == 0 || (v4 = *(this + 11), v3 > v4))
    {
      *(v1 + 44) += v3;
      v5 = *(this + 14) + *(v1 + 32);
LABEL_9:
      *(v1 + 32) = v5;
      v13 = this;
      std::vector<cluster *>::push_back[abi:ne200100](v1 + 72, &v13);
      return;
    }

    if (v3 >= v4)
    {
      if (v3 != v4)
      {
        return;
      }

      v10 = *(this + 14);
      v11 = *(this + 4);
      *(v1 + 44) += v3;
      v12 = *(v1 + 32);
      if (v10 >= v11)
      {
        v5 = v10 + v12;
        goto LABEL_9;
      }

      v6 = v11 + v12;
    }

    else
    {
      *(v1 + 44) += v4;
      v6 = *(this + 4) + *(v1 + 32);
    }

    *(v1 + 32) = v6;
    v7 = *(v1 + 80);
    v8 = *(this + 9);
    v9 = *(this + 10);

    std::vector<cluster *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cluster **>,std::__wrap_iter<cluster **>>(v1 + 72, v7, v8, v9, (v9 - v8) >> 3);
  }
}

uint64_t *cluster::addPointsToVirtualChildCluster(uint64_t *result, void *a2)
{
  v2 = (a2 + 1);
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = result;
    do
    {
      result = std::__tree<int>::__emplace_unique_key_args<int,int const&>((v4 + 6), v3 + 7);
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

BOOL cluster::virtualChildClusterConstraintsPoint(cluster *this, int a2)
{
  v4 = *(this + 7);
  v2 = this + 56;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 7) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 7) < a2)];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 7) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void cluster::releaseVirtualChildCluster(cluster *this)
{
  v1 = (this + 56);
  std::__tree<int>::destroy(this + 48, *(this + 7));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t *std::unique_ptr<cluster>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 80) = v3;
      operator delete(v3);
    }

    std::__tree<int>::destroy(v2 + 48, *(v2 + 56));
    MEMORY[0x1D3865860](v2, 0x10A0C408B9C0EF9);
  }

  return a1;
}

void std::vector<cluster *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<cluster *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cluster **>,std::__wrap_iter<cluster **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v6++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), __dst, *(a1 + 8) - __dst);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = &v10[-8 * a5];
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30;
      v30 += 8;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = __dst;
    v27 = v6;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = &v10[v20];
  *(a1 + 8) = &v10[v20];
  if (v18 >= 1)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[v20];
    if (&v21[-8 * a5] < v10)
    {
      v24 = &__dst[a4];
      v25 = &__dst[a4 + -8 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v6 < v10);
      v23 = (v24 - v6);
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v21 - v22);
    }

    if (v10 != __dst)
    {
      v26 = __dst;
      v27 = v6;
      v28 = v10 - __dst;
LABEL_29:

      memmove(v26, v27, v28);
    }
  }
}

uint64_t std::__split_buffer<std::unique_ptr<cluster>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<cluster>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void outlierScore::outlierScore(outlierScore *this, double a2, double a3, int a4)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = a4;
}

{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = a4;
}

BOOL outlierScore::operator<(uint64_t a1, uint64_t a2)
{
  v4[0] = a1 + 8;
  v4[1] = a1;
  v4[2] = a1 + 16;
  v3[0] = a2 + 8;
  v3[1] = a2;
  v3[2] = a2 + 16;
  return std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(v4, v3) == 0xFF;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(uint64_t a1, uint64_t a2)
{
  v2 = **a1;
  v3 = **a2;
  if (v2 == v3)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    LODWORD(v4) = -127;
  }

  if (v2 > v3)
  {
    LODWORD(v4) = 1;
  }

  if (v2 < v3)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v4;
  }

  if (!v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v7 = *v5 < *v6;
    v8 = *v5 <= *v6;
    if (*v5 == *v6)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      LODWORD(v4) = -127;
    }

    if (!v8)
    {
      LODWORD(v4) = 1;
    }

    if (v7)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = v4;
    }

    if (!v4)
    {
      v9 = **(a1 + 16);
      v10 = **(a2 + 16);
      v11 = v9 == v10;
      if (v9 < v10)
      {
        LODWORD(v4) = -1;
      }

      else
      {
        LODWORD(v4) = 1;
      }

      if (v11)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }
  }

  return v4;
}

void hdbscanResult::hdbscanResult(hdbscanResult *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t hdbscanResult::hdbscanResult(uint64_t a1, char **a2, char **a3, char **a4, char a5)
{
  *(a1 + 48) = 0u;
  v9 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v10 = (a1 + 24);
  *a1 = 0u;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (v10 != a3)
  {
    std::vector<outlierScore>::__assign_with_size[abi:ne200100]<outlierScore*,outlierScore*>(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  if (v9 != a4)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v9, *a4, a4[1], (a4[1] - *a4) >> 3);
  }

  *(a1 + 72) = a5;
  return a1;
}

void sub_1CEF03824(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Tensor.init<A>(shape:scalars:on:)()
{
  return MEMORY[0x1EEE1FA08]();
}

{
  return MEMORY[0x1EEE1FA10]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}