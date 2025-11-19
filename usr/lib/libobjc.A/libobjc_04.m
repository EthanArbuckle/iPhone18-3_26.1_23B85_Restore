unint64_t method_t::impRaw(unint64_t this)
{
  v1 = this;
  if ((this & 3) > 1)
  {
    if ((this & 3) != 2)
    {
      return this;
    }
  }

  else if ((this & 3) != 0)
  {
    this = method_t_remappedImp_nolock(this);
    if (!this)
    {
      return *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 8) + (v1 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    return this;
  }

  if (*((this & 0xFFFFFFFFFFFFFFFCLL) + 16))
  {
    return *((this & 0xFFFFFFFFFFFFFFFCLL) + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t **list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::begin(uint64_t **a1, unint64_t *a2, uint64_t a3, char *a4)
{
  v35 = a2;
  v4 = *a2;
  v5 = v33;
  if (!*a2)
  {
    v10 = 0;
    v36[0] = 0;
    v32 = a2;
LABEL_24:
    *v5 = v10;
    return list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::iteratorImpl(a1, &v35, &v32);
  }

  v6 = v36;
  v7 = *a2;
  v8 = *a2 & 3;
  if ((v4 & 3) == 0)
  {
    v11 = *a2;
LABEL_8:
    v36[0] = v11;
    goto LABEL_9;
  }

  if (v4 < 4)
  {
    v9 = 0;
LABEL_5:
    *v6 = v9;
    goto LABEL_9;
  }

  if (v8 == 2)
  {
    v20 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      if (DisablePreattachedCategories)
      {
        v23 = *v20;
        v26 = v20[1];
        v27 = v26 * v23;
        if ((v27 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v26, v7 & 0xFFFFFFFFFFFFFFFCLL, v23);
        }

        v28 = v23 | (v26 << 32);
        v29 = v20 + v27 + 8;
        a4 = (v29 - v23);
        v30 = v23 | ((v26 - 1) << 32);
        v31 = v26 == 0;
        if (v26)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }

        if (v26)
        {
          v9 = (v29 - v23);
        }

        else
        {
          v9 = v29;
        }

        if (v31)
        {
          v21 = v28;
        }

        else
        {
          v21 = v30;
        }
      }

      else
      {
        v9 = (v20 + 2);
        v21 = *v20;
        v22 = v20[1];
        v23 = v21;
      }

      a3 = v22 * v23;
      if ((a3 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v22, v7 & 0xFFFFFFFFFFFFFFFCLL, v23);
      }

      v6 = &v37;
      v24 = HIDWORD(v21);
      v25 = v20 + a3 + 8;
      if (v9 < v25)
      {
        a3 = objc_debug_headerInfoRWs + 8;
        do
        {
          a4 = *(a3 + 8 * *v9);
          if (a4)
          {
            break;
          }

          v9 = (v9 + v21);
          v24 = (v24 + 1);
        }

        while (v9 < v25);
      }

      v36[0] = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v36[1] = v21 | (v24 << 32);
      goto LABEL_5;
    }
  }

  else
  {
    v16 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    if (v8 == 1 && v16 != 0)
    {
      v11 = v16 + 8;
      goto LABEL_8;
    }
  }

LABEL_9:
  v32 = a2;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v12 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v14 = *v12;
        v13 = v12[1];
        v15 = v13 * v14;
        if ((v15 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v13, v12, v14);
        }

        v5 = &v34;
        v10 = v12 + v15 + 8;
        v33[0] = v12;
        v33[1] = v14 | (v13 << 32);
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (!v8)
    {
      v10 = 0;
      goto LABEL_24;
    }

    v18 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v10 = &v18[2 * *v18 + 2];
      goto LABEL_24;
    }
  }

  return list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::iteratorImpl(a1, &v35, &v32);
}

uint64_t **list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::end(uint64_t **a1, void *a2, const char *a3, char *a4)
{
  v16 = a2;
  v5 = *a2;
  v6 = v17;
  if (!*a2)
  {
LABEL_4:
    v7 = 0;
LABEL_5:
    *v6 = v7;
    goto LABEL_14;
  }

  if ((*a2 & 3uLL) <= 1)
  {
    if ((v5 & 3) != 0)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_14;
      }

      v7 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8 * *(v5 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if ((*a2 & 3) == 2 && v8 != 0)
  {
    v11 = *v8;
    v10 = v8[1];
    v12 = v10 * v11;
    if ((v12 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v10, v5 & 0xFFFFFFFFFFFFFFFCLL, v11);
    }

    v6 = &v18;
    v7 = v8 + v12 + 8;
    v17[0] = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v17[1] = v11 | (v10 << 32);
    goto LABEL_5;
  }

LABEL_14:
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(v15, &v16);
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(v14, &v16);
  return list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::iteratorImpl(a1, v15, v14);
}

uint64_t list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator==(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *v2;
  if (!*v2)
  {
    goto LABEL_6;
  }

  if ((*v2 & 3uLL) > 1)
  {
    if ((*v2 & 3) != 2)
    {
      return 0;
    }

    v6 = *(a1 + 24);
    v7 = a2[3];
LABEL_16:
    if (v6 == v7)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if ((v4 & 3) != 0)
  {
    v6 = *(a1 + 8);
    v7 = a2[1];
    goto LABEL_16;
  }

LABEL_6:
  if (*(a1 + 8))
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = a2[1];
  }

  if (v5 != v8)
  {
    return 0;
  }

LABEL_17:
  if (v2 != *(a1 + 32))
  {
    return *(a1 + 72) == a2[9];
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  if ((*v2 & 3uLL) > 1)
  {
    if ((*v2 & 3) != 2)
    {
      return *(a1 + 72) == a2[9];
    }

    v11 = *(a1 + 24);
    v12 = *(a1 + 56);
  }

  else
  {
    if ((v4 & 3) == 0)
    {
LABEL_22:
      if (*(a1 + 8))
      {
        v10 = *(a1 + 8);
      }

      else
      {
        v10 = 0;
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = *(a1 + 40);
      }

      if (v10 != v13)
      {
        return *(a1 + 72) == a2[9];
      }

      return 1;
    }

    v11 = *(a1 + 8);
    v12 = *(a1 + 40);
  }

  if (v11 != v12)
  {
    return *(a1 + 72) == a2[9];
  }

  return 1;
}

uint64_t **list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator++(uint64_t **a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = a1[8];
  v6 = (a1[9] + v5);
  a1[9] = v6;
  *(a1 + 17) = HIDWORD(v5) + 1;
  if (v6 != a1[11])
  {
    return a1;
  }

  v7 = *a1;
  v8 = **a1;
  if (!v8)
  {
    a1[1] = 0;
    goto LABEL_14;
  }

  if ((**a1 & 3) == 1)
  {
    ++a1[1];
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_14;
    }
  }

  else if ((v8 & 3) == 0)
  {
    a1[1] = 0;
  }

  if ((v8 & 3) == 2)
  {
    v9 = a1[3];
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v12 = (v9 + v10);
    a1[3] = (v9 + v10);
    v13 = a1[1];
    v15 = *v13;
    v14 = v13[1];
    v16 = v14 * v15;
    *(a1 + 5) = v11 + 1;
    if ((v16 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v14, v13, v15);
    }

    v17 = v13 + v16 + 8;
    if (v12 < v17)
    {
      v18 = objc_debug_headerInfoRWs + 8;
      v19 = v11 + 2;
      v20 = (v9 + 2 * v10);
      do
      {
        if (*(v18 + 8 * *v12))
        {
          break;
        }

        v12 = (v12 + v10);
        a1[3] = v20;
        *(a1 + 5) = v19++;
        v20 = (v20 + v10);
      }

      while (v12 < v17);
    }
  }

LABEL_14:
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::skipEmptyLists(a1);
  v24 = *a1;
  v25 = **a1;
  if (*a1 != a1[4])
  {
    goto LABEL_15;
  }

  if (!v25)
  {
    goto LABEL_22;
  }

  if ((**a1 & 3uLL) > 1)
  {
    if ((**a1 & 3) != 2)
    {
      goto LABEL_16;
    }

    v41 = a1[3];
    v42 = a1[7];
LABEL_56:
    if (v41 == v42)
    {
      return a1;
    }

LABEL_16:
    v26 = **a1 & 3;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = (a1[3] + (*a1[3] >> 16));
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_28;
    }

    if (v26)
    {
      v27 = *a1[1];
      goto LABEL_28;
    }

LABEL_18:
    v27 = a1[1];
LABEL_28:
    v29 = v27 < 0;
    v31 = *v27;
    v30 = (v27 + 2);
    v32 = (v31 & 0xFFFC);
    v33 = v31 >> 31;
    if (v29)
    {
      v33 = 2;
    }

    a1[8] = v32;
    a1[9] = (v33 | v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (!*v24)
    {
      goto LABEL_34;
    }

    if ((*v24 & 3uLL) > 1)
    {
      if ((*v24 & 3) != 2)
      {
        v36 = 0;
LABEL_46:
        a1[10] = entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(v36, v21, v22, v23);
        a1[11] = v37;
        if (a1[9] != v37)
        {
          return a1;
        }

        v45 = **a1;
        if (!v45)
        {
          goto LABEL_60;
        }

        if ((**a1 & 3uLL) > 1)
        {
          if ((**a1 & 3) != 2)
          {
            v46 = 0;
            goto LABEL_71;
          }

          v47 = a1[3] + (*a1[3] >> 16);
          if (!v47)
          {
            v46 = 0;
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        if ((v45 & 3) != 0)
        {
          v46 = *a1[1];
          if (!v46)
          {
LABEL_71:
            _objc_fatal("Assertion failed: (%s) - empty list %p encountered during iteration", v37, v38, v39, "m != mEnd", v46);
          }
        }

        else
        {
LABEL_60:
          v46 = a1[1];
          if (!v46)
          {
            goto LABEL_71;
          }
        }

        v47 = v46;
LABEL_70:
        v46 = v47;
        goto LABEL_71;
      }

      v35 = a1[3] + (*a1[3] >> 16);
      if (!v35)
      {
        v34 = 0;
        goto LABEL_42;
      }

LABEL_41:
      v34 = v35;
      goto LABEL_42;
    }

    if ((*v24 & 3) != 0)
    {
      v34 = *a1[1];
      if (!v34)
      {
        goto LABEL_42;
      }
    }

    else
    {
LABEL_34:
      v34 = a1[1];
      if (!v34)
      {
LABEL_42:
        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_46;
      }
    }

    v35 = v34;
    goto LABEL_41;
  }

  if ((v25 & 3) != 0)
  {
    v41 = a1[1];
    v42 = a1[5];
    goto LABEL_56;
  }

LABEL_22:
  if (a1[1])
  {
    v28 = a1[1];
  }

  else
  {
    v28 = 0;
  }

  v43 = a1[5];
  if (v43)
  {
    v44 = a1[5];
  }

  if (v28 != v43)
  {
LABEL_15:
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return a1;
}

uint64_t **list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::iteratorImpl(uint64_t **a1, uint64_t a2, void *a3)
{
  v6 = list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(a1, a2);
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(v6 + 4, a3);
  v10 = **a2;
  if (*a2 != *a3)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  if ((**a2 & 3uLL) > 1)
  {
    if ((**a2 & 3) != 2)
    {
      goto LABEL_3;
    }

    v24 = *(a2 + 24);
    v25 = a3[3];
LABEL_41:
    if (v24 == v25)
    {
      goto LABEL_34;
    }

LABEL_3:
    if ((**a2 & 3uLL) > 1)
    {
      if ((**a2 & 3) == 2)
      {
        v11 = (*(a2 + 24) + (**(a2 + 24) >> 16));
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_15;
    }

    if ((v10 & 3) != 0)
    {
      v11 = **(a2 + 8);
      goto LABEL_15;
    }

LABEL_5:
    v11 = *(a2 + 8);
LABEL_15:
    v13 = v11 < 0;
    v15 = *v11;
    v14 = (v11 + 2);
    v16 = (v15 & 0xFFFC);
    v17 = v15 >> 31;
    if (v13)
    {
      v17 = 2;
    }

    a1[8] = v16;
    a1[9] = (v17 | v14 & 0xFFFFFFFFFFFFFFFCLL);
    v18 = **a2;
    if (!v18)
    {
      goto LABEL_21;
    }

    if ((**a2 & 3uLL) > 1)
    {
      if ((**a2 & 3) != 2)
      {
        v21 = 0;
LABEL_33:
        a1[10] = entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(v21, v7, v8, v9);
        a1[11] = v22;
        goto LABEL_34;
      }

      v20 = *(a2 + 24) + (**(a2 + 24) >> 16);
      if (!v20)
      {
        v19 = 0;
LABEL_29:
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_33;
      }

LABEL_28:
      v19 = v20;
      goto LABEL_29;
    }

    if ((v18 & 3) != 0)
    {
      v19 = **(a2 + 8);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_21:
      v19 = *(a2 + 8);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    v20 = v19;
    goto LABEL_28;
  }

  if ((v10 & 3) != 0)
  {
    v24 = *(a2 + 8);
    v25 = a3[1];
    goto LABEL_41;
  }

LABEL_9:
  if (*(a2 + 8))
  {
    v12 = *(a2 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != a3[1])
  {
LABEL_2:
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

LABEL_34:
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::skipEmptyLists(a1);
  return a1;
}

uint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  v9 = a5;
  v13 = result;
  while (v9 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    for (i = v13; ; i += 3)
    {
      if (*a2)
      {
        v15 = *a2;
      }

      else
      {
        v15 = 0;
      }

      if (*v13)
      {
        v16 = *v13;
      }

      if (v15 < *v13)
      {
        break;
      }

      v13 += 3;
      if (!--a4)
      {
        return result;
      }
    }

    v104 = a7;
    if (a4 >= v9)
    {
      if (a4 == 1)
      {

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<method_t::bigSigned *&,method_t::bigSigned *&>(v13, a2);
      }

      v103 = a4 / 2;
      v20 = &v13[3 * (a4 / 2)];
      if (a3 == a2)
      {
        v18 = a2;
LABEL_44:
        v17 = 0xAAAAAAAAAAAAAAABLL * (v18 - a2);
        goto LABEL_45;
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
      v28 = *v20;
      v18 = a2;
      while (2)
      {
        v29 = v27 >> 1;
        v30 = &v18[3 * (v27 >> 1)];
        if (*v30)
        {
          v31 = *v30;
          if (v28)
          {
            goto LABEL_33;
          }

LABEL_35:
          v32 = 0;
        }

        else
        {
          v31 = 0;
          if (!v28)
          {
            goto LABEL_35;
          }

LABEL_33:
          v32 = *v20;
        }

        v33 = v30 + 3;
        v27 += ~v29;
        if (v31 < v32)
        {
          v18 = v33;
        }

        else
        {
          v27 = v29;
        }

        if (!v27)
        {
          goto LABEL_44;
        }

        continue;
      }
    }

    v17 = v9 / 2;
    v18 = &a2[3 * (v9 / 2)];
    if (a2 == v13)
    {
      v20 = v13;
    }

    else
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (a2 - v13);
      v20 = v13;
      do
      {
        if (*v18)
        {
          v21 = *v18;
        }

        else
        {
          v21 = 0;
        }

        v22 = v19 >> 1;
        v23 = &v20[3 * (v19 >> 1)];
        v24 = *v23;
        if (*v23)
        {
          v25 = *v23;
        }

        v26 = (v23 + 3);
        v19 += ~v22;
        if (v21 < v24)
        {
          v19 = v22;
        }

        else
        {
          v20 = v26;
        }
      }

      while (v19);
    }

    v103 = 0xAAAAAAAAAAAAAAABLL * (v20 - v13);
LABEL_45:
    v34 = v18;
    if (v20 != a2)
    {
      v34 = v20;
      if (a2 != v18)
      {
        v101 = a3;
        v102 = v17;
        v34 = v20;
        v35 = a2;
        while (1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<method_t::bigSigned *&,method_t::bigSigned *&>(v34, a2);
          v34 += 3;
          a2 += 3;
          if (a2 == v18)
          {
            break;
          }

          if (v34 == v35)
          {
            v35 = a2;
          }
        }

        v17 = v102;
        if (v34 == v35)
        {
          a3 = v101;
        }

        else
        {
          v100 = a6;
          v36 = v34;
          v37 = v35;
          do
          {
            while (1)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<method_t::bigSigned *&,method_t::bigSigned *&>(v36, v35);
              v36 += 3;
              v35 += 3;
              if (v35 == v18)
              {
                break;
              }

              if (v36 == v37)
              {
                v37 = v35;
              }
            }

            v35 = v37;
          }

          while (v36 != v37);
          a6 = v100;
          a3 = v101;
          v17 = v102;
        }
      }
    }

    a4 -= v103;
    v9 -= v17;
    if (v103 + v17 >= a4 + v9)
    {
      v39 = a4;
      v40 = v17;
      result = std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(v34, v18, a3, v39, v9, a6, v104);
      v18 = v20;
      a7 = v104;
      v9 = v40;
      a4 = v103;
      a3 = v34;
    }

    else
    {
      v38 = v20;
      a7 = v104;
      result = std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(v13, v38, v34, v103, v17, a6, v104);
      v13 = v34;
    }

    a2 = v18;
    if (!v9)
    {
      return result;
    }
  }

  if (a4 <= v9)
  {
    if (v13 == a2)
    {
      return result;
    }

    v62 = 0;
    do
    {
      v63 = &v13[v62];
      v64 = v13[v62];
      if (v64)
      {
        v65 = v13[v62];
      }

      v66 = &a6[v62];
      a6[v62] = v64;
      v67 = v63[1];
      if (v67)
      {
        v68 = v63[1];
      }

      v66[1] = v67;
      v69 = v63[2];
      if (v69)
      {
        v70 = v63[2];
      }

      v66[2] = v69;
      v62 += 3;
    }

    while (v63 + 3 != a2);
    v71 = &a6[v62];
    v72 = &a6[v62 - 3];
    for (j = v13; ; j += 3)
    {
      if (a2 == a3)
      {
        if (a6 != v71)
        {
          v92 = 0;
          do
          {
            v93 = &a6[v92];
            v94 = a6[v92];
            if (v94)
            {
              v95 = a6[v92];
            }

            v13[v92] = v94;
            v96 = v93[1];
            if (v96)
            {
              v97 = v93[1];
            }

            v13[v92 + 1] = v96;
            v98 = v93[2];
            if (v98)
            {
              v99 = v93[2];
            }

            v13[v92 + 2] = v98;
            j += 3;
            v92 += 3;
          }

          while (v93 != v72);
        }

        return result;
      }

      v74 = *a2 ? *a2 : 0;
      if (!*a6)
      {
        break;
      }

      if (v74 >= *a6)
      {
        v76 = *a6;
        goto LABEL_114;
      }

      if (*a2)
      {
        v75 = *a2;
      }

      else
      {
        v75 = 0;
      }

      *v13 = v75;
      v81 = a2[1];
      if (v81)
      {
        v82 = a2[1];
      }

      v13[1] = v81;
      v83 = a2[2];
      if (v83)
      {
        v84 = a2[2];
      }

      v13[2] = v83;
      a2 += 3;
LABEL_125:
      v13 += 3;
      if (a6 == v71)
      {
        return result;
      }
    }

    v76 = 0;
LABEL_114:
    *v13 = v76;
    v77 = a6[1];
    if (v77)
    {
      v78 = a6[1];
    }

    v13[1] = v77;
    v79 = a6[2];
    if (v79)
    {
      v80 = a6[2];
    }

    v13[2] = v79;
    a6 += 3;
    goto LABEL_125;
  }

  if (a2 != a3)
  {
    v41 = 0;
    do
    {
      v42 = &a6[v41];
      v43 = &a2[v41];
      v44 = a2[v41];
      if (v44)
      {
        v45 = a2[v41];
      }

      *v42 = v44;
      v46 = v43[1];
      if (v46)
      {
        v47 = v43[1];
      }

      v42[1] = v46;
      v48 = v43[2];
      if (v48)
      {
        v49 = v43[2];
      }

      v42[2] = v48;
      v41 += 3;
    }

    while (v43 + 3 != a3);
    v50 = a3 - 3;
    v51 = a3 - 1;
    v52 = &a6[v41];
    while (a2 != v13)
    {
      v53 = *(v52 - 3);
      if (v53)
      {
        v54 = *(v52 - 3);
      }

      else
      {
        v54 = 0;
      }

      v55 = *(a2 - 3);
      if (v55 && (v56 = *(a2 - 3), v54 < v55))
      {
        *(v51 - 2) = v55;
        v57 = *(a2 - 2);
        if (v57)
        {
          v58 = *(a2 - 2);
        }

        *(v51 - 1) = v57;
        *v51 = *(a2 - 1);
        a2 -= 3;
      }

      else
      {
        if (v53)
        {
          v59 = *(v52 - 3);
        }

        else
        {
          v59 = 0;
        }

        *(v51 - 2) = v59;
        v60 = *(v52 - 2);
        if (v60)
        {
          v61 = *(v52 - 2);
        }

        *(v51 - 1) = v60;
        *v51 = *(v52 - 1);
        v52 -= 3;
      }

      v50 -= 3;
      v51 -= 3;
      if (v52 == a6)
      {
        return result;
      }
    }

    if (v52 != a6)
    {
      v85 = 0;
      do
      {
        v86 = v52[v85 - 3];
        if (v86)
        {
          v87 = v52[v85 - 3];
        }

        v51[v85 - 2] = v86;
        v88 = v52[v85 - 2];
        if (v88)
        {
          v89 = v52[v85 - 2];
        }

        v51[v85 - 1] = v88;
        v90 = v52[v85 - 1];
        if (v90)
        {
          v91 = v52[v85 - 1];
        }

        v51[v85] = v90;
        v85 -= 3;
        v50 -= 3;
      }

      while (&v52[v85] != a6);
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(uint64_t result, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v9 = result;
    while (v7 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (*a2 >= *v9)
      {
        v9 += 3;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v7)
      {
        if (a4 == 1)
        {
          v86 = *v9;
          if (v9[2])
          {
            v73 = v9[2];
          }

          else
          {
            v73 = 0;
          }

          *v9 = *a2;
          v81 = a2[2];
          if (v81)
          {
            v82 = a2[2];
          }

          v9[2] = v81;
          *a2 = v86;
          if (v73)
          {
            v83 = v73;
          }

          else
          {
            v83 = 0;
          }

          a2[2] = v83;
          return result;
        }

        v20 = a4 / 2;
        v13 = &v9[3 * (a4 / 2)];
        if (a3 == a2)
        {
          v26 = a3;
          v27 = a3;
          v11 = a2;
        }

        else
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
          v11 = a2;
          do
          {
            v22 = v21 >> 1;
            v23 = &v11[3 * (v21 >> 1)];
            v25 = *v23;
            v24 = v23 + 3;
            v21 += ~(v21 >> 1);
            if (v25 < *v13)
            {
              v11 = v24;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
          v26 = v11;
          v27 = a2;
        }

        v10 = 0xAAAAAAAAAAAAAAABLL * (v26 - v27);
      }

      else
      {
        v10 = v7 / 2;
        v11 = &a2[3 * (v7 / 2)];
        if (a2 == v9)
        {
          v18 = a2;
          v19 = a2;
          v13 = v9;
        }

        else
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
          v13 = v9;
          do
          {
            v14 = v12 >> 1;
            v15 = &v13[3 * (v12 >> 1)];
            v17 = *v15;
            v16 = v15 + 3;
            v12 += ~(v12 >> 1);
            if (*v11 < v17)
            {
              v12 = v14;
            }

            else
            {
              v13 = v16;
            }
          }

          while (v12);
          v18 = v13;
          v19 = v9;
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * (v18 - v19);
      }

      v28 = v11;
      if (v13 != a2)
      {
        v28 = v13;
        if (a2 != v11)
        {
          v28 = v13 + 3;
          v29 = v13 + 2;
          v30 = a2 + 2;
          v31 = a2;
          while (1)
          {
            v84 = *(v28 - 3);
            if (*(v28 - 1))
            {
              v32 = *(v28 - 1);
            }

            else
            {
              v32 = 0;
            }

            *(v28 - 3) = *a2;
            v33 = a2[2];
            if (v33)
            {
              v34 = a2[2];
            }

            *(v28 - 1) = v33;
            *a2 = v84;
            v35 = v32 ? v32 : 0;
            a2[2] = v35;
            a2 += 3;
            if (a2 == v11)
            {
              break;
            }

            if (v28 == v31)
            {
              v31 = a2;
            }

            v28 += 3;
            v29 += 3;
            v30 += 3;
          }

          if (v28 != v31)
          {
            v36 = v28;
            v37 = v31;
            while (1)
            {
              v38 = v36 + 2;
              while (1)
              {
                v85 = *v36;
                if (v36[2])
                {
                  v39 = v36[2];
                }

                else
                {
                  v39 = 0;
                }

                *v36 = *v31;
                v40 = v31[2];
                if (v40)
                {
                  v41 = v31[2];
                }

                v36[2] = v40;
                *v31 = v85;
                v42 = v39 ? v39 : 0;
                v31[2] = v42;
                v36 += 3;
                v31 += 3;
                if (v31 != v11)
                {
                  break;
                }

                v38 += 3;
                v31 = v37;
                if (v36 == v37)
                {
                  goto LABEL_61;
                }
              }

              if (v36 == v37)
              {
                v37 = v31;
              }
            }
          }
        }
      }

LABEL_61:
      a4 -= v20;
      v7 -= v10;
      if (v20 + v10 >= a4 + v7)
      {
        v47 = v20;
        v48 = a4;
        v49 = v10;
        v45 = a6;
        v46 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v28, v11, a3, v48, v7);
        v11 = v13;
        v7 = v49;
        a4 = v47;
        a3 = v28;
      }

      else
      {
        v43 = v13;
        v44 = a3;
        v45 = a6;
        v46 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v9, v43, v28, v20, v10);
        a3 = v44;
        v9 = v28;
      }

      a2 = v11;
      a6 = v45;
      a7 = v46;
      if (!v7)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (v9 != a2)
      {
        v61 = a6 + 16;
        v62 = v9 + 2;
        v63 = a6;
        v64 = v9;
        do
        {
          v65 = v63;
          *v63 = *v64;
          v66 = v64[2];
          if (v66)
          {
            v67 = v64[2];
          }

          v64 += 3;
          *(v63 + 16) = v66;
          v63 += 24;
          v61 += 24;
          v62 += 3;
        }

        while (v64 != a2);
        v68 = v9 + 2;
        while (a2 != a3)
        {
          if (*a2 >= *a6)
          {
            *v9 = *a6;
            v71 = *(a6 + 16);
            if (v71)
            {
              v72 = *(a6 + 16);
            }

            v9[2] = v71;
            a6 += 24;
          }

          else
          {
            *v9 = *a2;
            v69 = a2[2];
            if (v69)
            {
              v70 = a2[2];
            }

            v9[2] = v69;
            a2 += 3;
          }

          v9 += 3;
          v68 += 3;
          if (a6 == v63)
          {
            return result;
          }
        }

        v77 = 0;
        do
        {
          v78 = a6 + v77;
          *&v9[v77 / 8] = *(a6 + v77);
          v79 = *(a6 + v77 + 16);
          if (v79)
          {
            v80 = *(a6 + v77 + 16);
          }

          v9[v77 / 8 + 2] = v79;
          v68 += 3;
          v77 += 24;
        }

        while (v78 != v65);
      }
    }

    else if (a2 != a3)
    {
      v50 = a6 + 16;
      v51 = a2 + 2;
      v52 = a6;
      v53 = a2;
      do
      {
        *v52 = *v53;
        v54 = v53[2];
        if (v54)
        {
          v55 = v53[2];
        }

        v53 += 3;
        *(v52 + 16) = v54;
        v52 += 24;
        v50 += 24;
        v51 += 3;
      }

      while (v53 != a3);
      v56 = a3 - 1;
      v57 = a3 - 1;
      while (a2 != v9)
      {
        v58 = a2 - 3;
        v59 = v56 - 2;
        if (*(v52 - 24) >= *(a2 - 3))
        {
          *v59 = *(v52 - 24);
          v60 = *(v52 - 8);
          v58 = a2;
          v52 -= 24;
        }

        else
        {
          *v59 = *v58;
          v60 = *(a2 - 1);
        }

        *v56 = v60;
        v56 -= 3;
        v57 -= 3;
        a2 = v58;
        if (v52 == a6)
        {
          return result;
        }
      }

      if (v52 != a6)
      {
        v74 = v52 - 8;
        do
        {
          *(v56 - 1) = *(v52 - 24);
          v75 = *(v52 - 8);
          if (v75)
          {
            v76 = *(v52 - 8);
          }

          v52 -= 24;
          *v56 = v75;
          v56 -= 3;
          v74 -= 24;
          v57 -= 3;
        }

        while (v52 != a6);
      }
    }
  }

  return result;
}

void *objc::Scanner::setNSObjectSwizzled(void *result, int a2, char a3)
{
  objc::NSObjectSwizzledMask |= (a2 << a3);
  v3 = *(result[4] & 0xF00007FFFFFFFF8);
  if ((v3 & 1) == 0)
  {
    v3 = *(*((*result & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v3 & 0x20000000) != 0)
  {
    return objc::Scanner::propagateCustomFlags(result, a2, 0);
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c83_ZTSKZN4objc7Scanner20propagateCustomFlagsEP10objc_classjNS0_11inherited_tEEUlS2_E_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 39) = *(a2 + 39);
  *(result + 32) = v2;
  return result;
}

void objc::Scanner::printCustom(const char *a1, objc_class *this, int a3)
{
  v6 = objc_class::nameForLogging(this);
  if ((*(this + 15) & 4) != 0)
  {
    v7 = " (meta)";
  }

  else
  {
    v7 = "";
  }

  v8 = " (inherited)";
  if (a3 != 1)
  {
    v8 = "";
  }

  _objc_inform("%s: %s%s%s", a1, v6, v7, v8);
}

__n128 __copy_helper_block_e8_32c67_ZTSKZL25_method_setImplementationP10objc_classP8method_tPFvvEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

_DWORD *method_list_t::duplicate(method_list_t *this, uint64_t a2, const char *a3, char *a4)
{
  v5 = *this;
  v51 = v5 & 0xFFFC;
  v6 = v5 >> 31;
  if (this < 0)
  {
    v6 = 2;
  }

  v52 = v6 | (this + 8) & 0xFFFFFFFFFFFFFFFCLL;
  entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::signedEnd(&v49, this, a3, a4);
  if (*this > -1 || this < 0)
  {
    v10 = *this & 0xFFFF0003;
  }

  else
  {
    v10 = 0;
  }

  MethodList = method_list_t::allocateMethodList(*(this + 1), v10, v7, v8);
  if (v52)
  {
    v12 = v52;
  }

  else
  {
    v12 = 0;
  }

  if (v50)
  {
    v13 = v50;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MethodList;
  v55 = v51;
  v56 = v12;
  v53 = v49;
  v54 = v13;
  v59 = v51;
  v60 = v12;
  v57 = v49;
  v15 = v14 >> 31;
  if (MethodList < 0)
  {
    v15 = 2;
  }

  v58 = v13;
  v64 = v51;
  v65 = v12;
  v62 = v49;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v63 = v16;
  v69[3] = v51;
  v17 = v70;
  if (v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  v70[0] = v18;
  v69[1] = v49;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v69[2] = v19;
  if (!v18)
  {
    v18 = 0;
  }

  v61 = v18;
  if (!v19)
  {
    v19 = 0;
  }

  v73 = v19;
  v66 = v51;
  v20 = (MethodList + 2) & 0xFFFFFFFFFFFFFFFCLL;
  v67 = v18;
  v68 = v49;
  v21 = v69;
  v48 = MethodList;
  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = v15 | v20;
  v69[0] = v22;
  v72 = v51;
  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = 0;
  }

  v73 = v24;
  v70[1] = v49;
  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  v71 = v25;
  v26 = v14 & 0xFFFC;
  v27 = dataSegmentsRanges;
  v28 = *algn_1ED3F62F8;
  v29 = v15 | v20;
  if (!v24)
  {
    goto LABEL_41;
  }

LABEL_40:
  for (i = v24; i != v71; i = 0)
  {
    v31 = v24;
    if ((v23 & 3) <= 1)
    {
      if ((v23 & 3) != 0)
      {
        _objc_fatal("Cannot assign to small method %p from method %p", v20, v21, v17, v29, v24);
      }

      v36 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      v37 = method_t::imp(v24, 0);
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 16) = v38;
      if ((v31 & 3u) > 1)
      {
        if ((v31 & 3) == 2)
        {
          v38 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
          }
        }
      }

      else if ((v31 & 3) != 0)
      {
        v42 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        v43 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27 > (v31 & 0xFFFFFFFFFFFFFFFCLL) || v28 <= v42)
        {
          v38 = *(v42 + v43);
        }

        else
        {
          v38 = &unk_1FA920D78 + v43;
        }
      }

      else
      {
        v38 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
      }

      *v36 = v38;
      v36[1] = method_t::types(v31);
    }

    else if ((v23 & 3) == 2)
    {
      v32 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      v33 = method_t::imp(v24, 0);
      if (v33)
      {
        v35 = v33;
        v34 = v33;
      }

      else
      {
        v35 = 0;
      }

      *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 16) = v35;
      if ((v31 & 3u) > 1)
      {
        if ((v31 & 3) == 2)
        {
          if (*(v31 & 0xFFFFFFFFFFFFFFFCLL))
          {
            v34 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v34 = 0;
          }
        }
      }

      else if ((v31 & 3) != 0)
      {
        v40 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        v41 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27 > (v31 & 0xFFFFFFFFFFFFFFFCLL) || v28 <= v40)
        {
          v34 = *(v40 + v41);
        }

        else
        {
          v34 = &unk_1FA920D78 + v41;
        }
      }

      else
      {
        v34 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
      }

      *v32 = v34;
      v44 = v32 + 1;
      v45 = method_t::types(v31);
      if (v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      *v44 = v46;
    }

    if (v73)
    {
      v24 = v73 + v72;
    }

    else
    {
      v24 = 0;
    }

    v73 = v24;
    ++HIDWORD(v72);
    v29 += v26;
    v23 += v26;
    if (v24)
    {
      goto LABEL_40;
    }

LABEL_41:
    ;
  }

  return v48;
}

BOOL ___ZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a2 + 32) & 0xF00007FFFFFFFF8);
  if ((v4 & 4) == 0)
  {
    if (PrintCaches)
    {
      if ((*(v3 + 15) & 4) != 0)
      {
        v7 = "meta";
      }

      else
      {
        v7 = "";
      }

      v8 = objc_class::nameForLogging(v3);
      _objc_inform("CACHES: %sclass %s: disallow sel-inlined preopt cache (from %s)", v7, v8, *(a1 + 40));
    }

    atomic_fetch_or_explicit((*(a2 + 32) & 0xF00007FFFFFFFF8), 4u, memory_order_relaxed);
    if ((*(a2 + 16) & 1) != 0 && (*((*(a2 + 16) & 0x7FFFFFFFFFFFFELL) - 6) & 0x4000) != 0)
    {
      cache_t::eraseNolock((a2 + 16), *(a1 + 40));
    }
  }

  return (v4 & 4) == 0;
}

__n128 __copy_helper_block_e8_32c69_ZTSKZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKcE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_e8_32c64_ZTSKZN10objc_class34setDisallowPreoptCachesRecursivelyEPKcE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_e8_32c64_ZTSKZN10objc_class36setInstancesRequireRawIsaRecursivelyEbE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

uint64_t objc_loadClassref(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = (*((result & 0xFFFFFFFFFFFFFFFELL) + 8))(result & 0xFFFFFFFFFFFFFFFELL, 0);
    *a1 = result;
  }

  return result;
}

_DWORD *futureNamedClasses(void)
{
  result = future_named_class_map;
  if (!future_named_class_map)
  {
    v1[0] = _mapStrHash;
    v1[1] = _mapStrIsEqual;
    v1[2] = _mapNoFree;
    v2 = 0;
    result = NXCreateMapTable(v1, 0x20u);
    future_named_class_map = result;
  }

  return result;
}

void *_class_isFutureClass(void *result)
{
  if (result)
  {
    if ((*result - 1) >= 0xF)
    {
      return ((*((result[4] & 0xF00007FFFFFFFF8) + 3) >> 6) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _class_isSwift(uint64_t result)
{
  if (result)
  {
    return (*(result + 32) >> 1) & 1;
  }

  return result;
}

void _objc_flush_caches(Class cls)
{
  v3 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___objc_flush_caches_block_invoke;
  v14[3] = &__block_descriptor_33_e8_32c31_ZTSKZ18_objc_flush_cachesE3__0_e8_B16__0_8l;
  flushCaches(cls, "_objc_flush_caches", v14, v1);
  if (cls)
  {
    if ((*(cls + 15) & 4) == 0 && *(cls + 1))
    {
      v6 = *(cls + 1);
      v7 = *cls;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3321888768;
      v13[2] = ___objc_flush_caches_block_invoke_6;
      v13[3] = &__block_descriptor_33_e8_32c31_ZTSKZ18_objc_flush_cachesE3__1_e8_B16__0_8l;
      flushCaches(v7 & 0xFFFFFFFF8, "_objc_flush_caches", v13, v5);
    }
  }

  else
  {
    v8 = *(StatusReg + 24);
    v9 = v8;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    v10 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }

    cache_t::collectNolock(1);
  }

  v11 = *(StatusReg + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {
    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800CBF94(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

BOOL ___objc_flush_caches_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return 0;
  }

  if (v2 == &_objc_empty_cache)
  {
    v3 = 0;
  }

  else
  {
    v3 = HIWORD(*(a2 + 16)) == 0;
    *(a2 + 16);
  }

  return !v3;
}

BOOL ___objc_flush_caches_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return 0;
  }

  if (v2 == &_objc_empty_cache)
  {
    v3 = 0;
  }

  else
  {
    v3 = HIWORD(*(a2 + 16)) == 0;
    *(a2 + 16);
  }

  return !v3;
}

void _objc_map_images(unsigned int a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *a3;
      v10 = *a2;
      if (v6 >= v7)
      {
        v11 = v6 - v5;
        v12 = (v6 - v5) >> 5;
        v13 = v12 + 1;
        if ((v12 + 1) >> 59)
        {
          std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
        }

        if ((v7 - v5) >> 4 > v13)
        {
          v13 = (v7 - v5) >> 4;
        }

        if ((v7 - v5) >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          if (v14 >> 59)
          {
            std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
          }

          v15 = malloc_type_malloc(32 * v14, 0x201A97EDuLL);
        }

        else
        {
          v15 = 0;
        }

        v16 = &v15[32 * v12];
        *v16 = v9;
        *(v16 + 1) = v10;
        v7 = &v15[32 * v14];
        v6 = v16 + 32;
        *(v16 + 2) = 0;
        *(v16 + 3) = 0;
        memcpy(v15, v5, v11);
        if (v5)
        {
          free(v5);
        }

        v5 = v15;
      }

      else
      {
        *v6 = v9;
        *(v6 + 1) = v10;
        *(v6 + 2) = 0;
        *(v6 + 3) = 0;
        v6 += 32;
      }

      ++a2;
      ++a3;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  map_images(a1, v5, &__block_literal_global);
  if (v5)
  {

    free(v5);
  }
}

void sub_1800CC1B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _objc_load_image(uint64_t a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = a1;
  v3[2] = 0;
  v3[3] = 0;
  return load_images(v3);
}

uint64_t unmap_image(uint64_t a1, header_info *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v3 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  if (PrintImages)
  {
    _objc_inform("IMAGES: processing 1 newly-unmapped image...\n");
  }

  v5 = FirstHeader;
  if (!FirstHeader)
  {
    goto LABEL_127;
  }

  while ((v5 + *v5) != a2)
  {
    PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
    v7 = (v5 + 24);
    if (PreoptimizedHeaderRW)
    {
      v7 = PreoptimizedHeaderRW;
    }

    v5 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      goto LABEL_127;
    }
  }

  if (PrintImages)
  {
    v8 = dyld_image_path_containing_address();
    if (*(v5 + *v5 + 12) == 8)
    {
      v9 = " (bundle)";
    }

    else
    {
      v9 = "";
    }

    _objc_inform("IMAGES: unloading image for %s%s\n", v8, v9);
  }

  v83 = 0;
  v10 = header_info::catlist(v5, &v83);
  v79 = StatusReg;
  v11 = v83;
  if (v83)
  {
    v12 = v10;
    v13 = 0;
    while (1)
    {
      v14 = *(v12 + 8 * v13);
      v15 = remapClass(*(v14 + 8));
      if (v15)
      {
        break;
      }

LABEL_47:
      if (++v13 == v11)
      {
        goto LABEL_48;
      }
    }

    v16 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::find(-v15);
    v17 = v16;
    if (objc::unattachedCategories + 24 * dword_1ED3F6388 == v16)
    {
LABEL_39:
      if (loadable_categories && loadable_categories_used >= 1)
      {
        v24 = 0;
        v25 = loadable_categories;
        while (*v25 != v14)
        {
          ++v24;
          v25 += 2;
          if (loadable_categories_used == v24)
          {
            goto LABEL_47;
          }
        }

        *(loadable_categories + 16 * v24) = 0;
        if (PrintLoading)
        {
          v26 = remapClass(*(v14 + 8));
          v27 = objc_class::nameForLogging(v26);
          _objc_inform("LOAD: category '%s(%s)' unscheduled for +load", v27, *v14);
        }
      }

      goto LABEL_47;
    }

    v18 = *(v16 + 16);
    if (v18)
    {
      if (v18 >= 2)
      {
        v20 = 0;
        v21 = v18 >> 1;
        if (v18 >> 1 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v23 = *(v16 + 8);
        while (v14 != *v23)
        {
          ++v20;
          v23 += 2;
          if (v22 == v20)
          {
            goto LABEL_32;
          }
        }

        memmove((*(v16 + 8) + 16 * v20), (*(v16 + 8) + 16 * v20 + 16), 16 * (v21 + ~v20));
        v18 = *(v17 + 16) & 0xFFFFFFFF00000001 | (2 * (((*(v17 + 16) - 2) >> 1) & 0x7FFFFFFF));
        *(v17 + 16) = v18;
      }
    }

    else if (v14 == *(v16 + 8))
    {
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      v19 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v19 = (v18 & 1) == 0;
    if (v18)
    {
      if (v18 >> 1)
      {
        goto LABEL_39;
      }

LABEL_36:
      if (!v19)
      {
        free(*(v17 + 8));
      }

      *v17 = 2;
      *(&objc::unattachedCategories + 1) = vadd_s32(*(&objc::unattachedCategories + 8), 0x1FFFFFFFFLL);
      objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::compact();
      goto LABEL_39;
    }

LABEL_33:
    if (*(v17 + 8))
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_48:
  v81[0] = 0;
  v81[1] = 0;
  v82 = 0;
  v28 = header_info::classlist(v5, &v83);
  v29 = v83;
  if (v83)
  {
    v30 = v28;
    do
    {
      v31 = remapClass(*v30);
      if (v31)
      {
        v80 = -v31;
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::try_emplace<objc::detail::DenseSetEmpty&>(v84, v81, &v80);
      }

      ++v30;
      --v29;
    }

    while (v29);
  }

  v32 = header_info::nlclslist(v5, &v83);
  v33 = v83;
  if (v83)
  {
    v34 = v32;
    do
    {
      v35 = remapClass(*v34);
      if (v35)
      {
        v80 = -v35;
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::try_emplace<objc::detail::DenseSetEmpty&>(v84, v81, &v80);
      }

      ++v34;
      --v33;
    }

    while (v33);
  }

  v36 = objc::detail::DenseSetImpl<DisguisedPtr<objc_class>,objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,objc::DenseMapInfo<DisguisedPtr<objc_class>>>::begin(v81);
  v37 = v36;
  v39 = v38;
  v40 = v81[0];
  if (v81[0])
  {
    v41 = v81[0];
  }

  else
  {
    v41 = 0;
  }

  v42 = (*&v41 + 8 * v82);
  if (v42 != v36)
  {
    do
    {
      v43 = -*v37;
      if (loadable_classes && loadable_classes_used >= 1)
      {
        v44 = 0;
        v45 = loadable_classes;
        while (1)
        {
          v46 = *v45 + *v37 < 0;
          if (*v45 == v43)
          {
            break;
          }

          ++v44;
          v45 += 2;
          if (loadable_classes_used == v44)
          {
            goto LABEL_70;
          }
        }

        *(loadable_classes + 16 * v44) = 0;
        if (PrintLoading)
        {
          v47 = objc_class::nameForLogging(v43);
          _objc_inform("LOAD: class '%s' unscheduled for +load", v47);
        }
      }

LABEL_70:
      detach_class((*v43 & 0xFFFFFFFF8), 1);
      detach_class(v43, 0);
      do
      {
        ++v37;
      }

      while (v37 != v39 && (*v37 - 1) <= 1);
    }

    while (v37 != v42);
    v40 = v81[0];
  }

  v48 = objc::detail::DenseSetImpl<DisguisedPtr<objc_class>,objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,objc::DenseMapInfo<DisguisedPtr<objc_class>>>::begin(v81);
  v49 = v48;
  v51 = v50;
  if (v40)
  {
    v52 = v40;
  }

  else
  {
    v52 = 0;
  }

  v53 = (*&v52 + 8 * v82);
  if (v53 != v48)
  {
    do
    {
      v54 = -*v49;
      free_class((*v54 & 0xFFFFFFFF8));
      free_class(v54);
      do
      {
        ++v49;
      }

      while (v49 != v51 && (*v49 - 1) <= 1);
    }

    while (v49 != v53);
    v40 = v81[0];
  }

  if (v40)
  {
    v55 = v40;
  }

  else
  {
    v55 = 0;
  }

  free(v55);
  v56 = FirstHeader;
  if (FirstHeader)
  {
    if (FirstHeader != v5)
    {
      v57 = FirstHeader;
      while (1)
      {
        v58 = getPreoptimizedHeaderRW(v57);
        v59 = (v57 + 24);
        if (v58)
        {
          v59 = v58;
        }

        v60 = *v59;
        v56 = v60 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v60 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_108;
        }

        v61 = v57;
        v57 = v60 & 0xFFFFFFFFFFFFFFFCLL;
        if (v5 == v56)
        {
          goto LABEL_96;
        }
      }
    }

    v61 = 0;
LABEL_96:
    v62 = getPreoptimizedHeaderRW(v56);
    v63 = (v56 + 24);
    if (v62)
    {
      v63 = v62;
    }

    v64 = *v63 & 0xFFFFFFFFFFFFFFFCLL;
    if (v61)
    {
      v65 = getPreoptimizedHeaderRW(v61);
      v66 = (v61 + 24);
      if (v65)
      {
        v66 = v65;
      }

      *v66 = *v66 & 3 | v64;
      if (LastHeaderRealizedAllClasses != v5)
      {
        goto LABEL_106;
      }
    }

    else
    {
      FirstHeader = *v63 & 0xFFFFFFFFFFFFFFFCLL;
      if (LastHeaderRealizedAllClasses != v5)
      {
        goto LABEL_106;
      }

      v61 = 0;
    }

    LastHeaderRealizedAllClasses = v61;
LABEL_106:
    if (LastHeader == v5)
    {
      LastHeader = 0;
    }
  }

LABEL_108:
  v67 = v5 + *v5;
  if (dataSegmentsRanges > v67 || *algn_1ED3F62F8 <= v67)
  {
    v84[0] = &unk_1EEE9B548;
    v85 = v84;
    v69 = *(v67 + 16);
    if (v69)
    {
      v70 = v67 + 32;
      v71 = *(v67 + 16);
      v72 = v67 + 32;
      while (*v72 != 25 || strncmp((v72 + 8), "__TEXT", 0x10uLL))
      {
        v72 += *(v72 + 4);
        if (!--v71)
        {
          v73 = 0;
          goto LABEL_119;
        }
      }

      v73 = v67 - *(v72 + 24);
LABEL_119:
      for (i = 0; i < v69; ++i)
      {
        if (*v70 == 25 && (!strncmp((v70 + 8), "__DATA", 6uLL) || !strncmp((v70 + 8), "__AUTH", 6uLL)))
        {
          (std::function<void ()(segment_command_64 const*,long)>::operator())(v85, v70, v73);
          v69 = *(v67 + 16);
        }

        v70 += *(v70 + 4);
      }
    }

    std::__function::__value_func<void ()(segment_command_64 const*,long)>::~__value_func[abi:nn200100](v84);
  }

  free(v5);
  StatusReg = v79;
LABEL_127:
  v75 = *(StatusReg + 24);
  v76 = v75;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v76, 0, memory_order_release, memory_order_relaxed);
  if (v76 != v75)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  v77 = *MEMORY[0x1E69E9840];

  return os_unfair_recursive_lock_unlock();
}

void sub_1800CCA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    v15 = a14;
  }

  else
  {
    v15 = 0;
  }

  free(v15);
  v16 = *(a12 + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void realizeAllClasses(void)
{
  v0 = FirstHeader;
  v1 = LastHeaderRealizedAllClasses;
  if (LastHeaderRealizedAllClasses)
  {
    v2 = FirstHeader == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && FirstHeader != LastHeaderRealizedAllClasses)
  {
    do
    {
      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v0);
      v5 = v0 + 3;
      if (PreoptimizedHeaderRW)
      {
        v5 = PreoptimizedHeaderRW;
      }

      v0 = (*v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v0)
      {
        v6 = v1 == v0;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  if (v0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v24 = 0;
      v8 = header_info::classlist(v0, &v24);
      v9 = v24;
      if (v24)
      {
        v10 = v8;
        do
        {
          v11 = remapClass(*v10);
          if (v11)
          {
            realizeClassMaybeSwiftMaybeRelock(v11, 1);
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      if (preoptimized != 1 || (*(v0 + v0[1] + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
      {
        v12 = v0 + v0[2] + 16;
      }

      v13 = *v0;
      v14 = _dyld_lookup_section_info();
      v16 = v15 >> 3;
      if (!v14)
      {
        v16 = 0;
      }

      v24 = v16;
      if (v16)
      {
        v17 = v14;
        v18 = 0;
        do
        {
          if (remapClass(*(v17 + 8 * v18)) == *(v17 + 8 * v18))
          {
            v19 = *(StatusReg + 24);
            v20 = v19;
            atomic_compare_exchange_strong_explicit(runtimeLock, &v20, 0, memory_order_release, memory_order_relaxed);
            if (v20 != v19)
            {
              os_unfair_lock_unlock(runtimeLock);
            }

            (*(*(v17 + 8 * v18) + 8))();
            v21 = 0;
            atomic_compare_exchange_strong_explicit(runtimeLock, &v21, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
            if (v21)
            {
              os_unfair_lock_lock_with_options();
            }
          }

          ++v18;
        }

        while (v18 < v24);
      }

      LastHeaderRealizedAllClasses = v0;
      v22 = getPreoptimizedHeaderRW(v0);
      v23 = v0 + 3;
      if (v22)
      {
        v23 = v22;
      }

      v0 = (*v23 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v0);
  }
}

int *_read_images::$_2::operator()(uint64_t a1)
{
  v1 = class_data_bits_t::safe_ro<(Authentication)0>((a1 + 32));
  v7 = *(v1 + 32);
  result = (v1 + 32);
  v6 = v7;
  v8 = v7 & 1;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      ++_read_images::PreoptTotalMethodLists;
      if ((~*(v6 & 0xFFFFFFFFFFFFFFFELL) & 3) == 0)
      {
        ++_read_images::PreoptOptimizedMethodLists;
      }
    }
  }

  else if (v6)
  {
    v10 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      if (DisablePreattachedCategories)
      {
        v12 = *v10;
        v13 = v10[1];
        v21 = v13 * v12;
        if ((v21 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v2, v3, v4, v13, v10, *v10);
        }

        v11 = (v10 + v21 + 8);
        v22 = v13 == 0;
        if (v13)
        {
          v13 = v13;
        }

        else
        {
          v13 = 0;
        }

        if (!v22)
        {
          v11 = (v11 - v12);
        }
      }

      else
      {
        v11 = (v10 + 2);
        v12 = *v10;
        v13 = v10[1];
      }

      v14 = v13 * v12;
      if ((v14 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v2, v3, v4, v13, v10, v12);
      }

      v15 = v10 + v14 + 8;
      v16 = objc_debug_headerInfoRWs + 8;
      while (v11 < v15 && (*(v16 + 8 * *v11) & 1) == 0)
      {
        v11 = (v11 + v12);
      }

      if (v11 != v15)
      {
        v17 = _read_images::PreoptTotalMethodLists;
        result = &OBJC_IVAR___Object_isa;
        do
        {
          v18 = *v11 >> 16;
          _read_images::PreoptTotalMethodLists = ++v17;
          if ((~*(v11 + v18) & 3) == 0)
          {
            ++_read_images::PreoptOptimizedMethodLists;
          }

          v19 = *v10;
          v20 = v19 * v13;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v19, v20, v4, v13, v10, *v10);
          }

          do
          {
            v11 = (v11 + v12);
          }

          while (v11 < (v10 + v20 + 8) && (*(v16 + 8 * *v11) & 1) == 0);
        }

        while (v11 != v15);
      }
    }
  }

  return result;
}

unint64_t entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::get(unsigned int *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *a1;
  v5 = a2 * (v4 & 0xFFFC);
  if ((v5 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, a2, a1, v4 & 0xFFFC);
  }

  v6 = v4 >> 31;
  if (a1 < 0)
  {
    v6 = 2;
  }

  return (a1 + v5 + 8) & 0xFFFFFFFFFFFFFFFCLL | v6;
}

void *objc::detail::DenseSetImpl<DisguisedPtr<objc_class>,objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,objc::DenseMapInfo<DisguisedPtr<objc_class>>>::begin(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    if (v2)
    {
      result = *a1;
    }

    else
    {
      result = 0;
    }

    v5 = *(a1 + 16);
    v6 = &result[v5];
    if (v5)
    {
      v7 = 8 * v5;
      while ((*result - 1) <= 1)
      {
        ++result;
        v7 -= 8;
        if (!v7)
        {
          return v6;
        }
      }
    }
  }

  else
  {
    if (v2)
    {
      v4 = *a1;
    }

    return &v2[*(a1 + 16)];
  }

  return result;
}

void detach_class(objc_class *a1, char a2)
{
  v4 = -a1;
  v16 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::LookupBucketFor<DisguisedPtr<objc_class>>(-a1, &v16))
  {
    v5 = v16;
    if (*(v16 + 16))
    {
      free(*(v16 + 8));
    }

    *v5 = 2;
    *(&objc::unattachedCategories + 1) = vadd_s32(*(&objc::unattachedCategories + 8), 0x1FFFFFFFFLL);
    objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::compact();
  }

  if ((*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 1);
    if (v6)
    {
      v7 = *(a1 + 1);
      removeSubclass(v6, a1);
    }

    else
    {
      ++objc_debug_realized_class_generation_count;
      v8 = &_firstRealizedClass;
      v9 = _firstRealizedClass;
      if (_firstRealizedClass != a1)
      {
        do
        {
          v10 = *(v9 + 4);
          v9 = *((v10 & 0xF00007FFFFFFFF8) + 0x18);
        }

        while (v9 != a1);
        v8 = ((v10 & 0xF00007FFFFFFFF8) + 24);
      }

      *v8 = *((*(v9 + 4) & 0xF00007FFFFFFFF8) + 0x18);
    }
  }

  if ((a2 & 1) == 0)
  {
    v11 = objc_class::mangledName(a1);
    if (getClassFromNamedClassTable(v11) == a1)
    {
      v12 = gdb_objc_realized_classes;
      v13 = v11;
    }

    else
    {
      v12 = nonMetaClasses();
      v13 = *a1 & 0xFFFFFFFF8;
    }

    NXMapRemove(v12, v13);
  }

  v16 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(&objc::allocatedClasses, v4, &v16))
  {
    *v16 = 2;
    qword_1ED3F6158 = vadd_s32(qword_1ED3F6158, 0x1FFFFFFFFLL);
    if (qword_1ED3F6158)
    {
      if (qword_1ED3F6160 >= 0x401 && qword_1ED3F6160 >> 4 > qword_1ED3F6158)
      {
        v14 = 2 * qword_1ED3F6158;

        objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::grow(&objc::allocatedClasses, v14);
      }
    }

    else if (qword_1ED3F6160)
    {
      if (objc::allocatedClasses)
      {
        v15 = objc::allocatedClasses;
      }

      else
      {
        v15 = 0;
      }

      free(v15);
      objc::allocatedClasses = 0;
      qword_1ED3F6158 = 0;
      LODWORD(qword_1ED3F6160) = 0;
    }

    else
    {
      qword_1ED3F6158 = 0;
    }
  }
}

void free_class(objc_class *a1)
{
  if ((*a1 - 1) < 0xF)
  {
    return;
  }

  v1 = a1;
  if ((*(a1 + 4) & 0x8000000000000000) == 0)
  {
    return;
  }

  v2 = (*(a1 + 4) & 0xF00007FFFFFFFF8);
  v3 = *(v2 + 1);
  if (v3)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v4 = 0;
  }

  v5 = class_rw_t::ro(v2);
  if (!cache_t::isConstantEmptyCache((v1 + 16)))
  {
    v9 = *(v1 + 2);
    if ((v9 & 1) == 0 && (v9 == &_objc_empty_cache || HIWORD(*(v1 + 2))))
    {
      if (PrintCaches)
      {
        v10 = HIWORD(*(v1 + 2));
        if (!v10 || (v10 = HIWORD(*(v1 + 2))) == 0 || (LODWORD(v10) = __clz(v10 + 1) ^ 0x1F, v10 <= 0xF))
        {
          --cache_counts[v10];
        }
      }

      free((*(v1 + 2) & 0xFFFFFFFFFFFLL));
    }
  }

  if (v4)
  {
    list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::begin(v60, v4 + 1, v7, v8);
    list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::end(v59, v4 + 1, v11, v12);
    while (!list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator==(v60, v59))
    {
      v13 = v61;
      v14 = method_t::types(v61);
      if (v14)
      {
        v18 = v14;
        if (malloc_size(v14))
        {
          free(v18);
        }
      }

      if (byte_1ED3F57A8 == 1)
      {
        v62 = 0;
        if (objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(v13, &v62))
        {
          *v62 = -2;
          v19 = vadd_s32(*(&objc::methodDescriptionMap + 8), 0x1FFFFFFFFLL);
          *(&objc::methodDescriptionMap + 1) = v19;
          if (v19.i32[0])
          {
            if (dword_1ED3F57A0 >= 0x401 && dword_1ED3F57A0 >> 4 > v19.i32[0])
            {
              objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::grow(2 * v19.i32[0]);
            }
          }

          else if (dword_1ED3F57A0)
          {
            if (objc::methodDescriptionMap)
            {
              v20 = objc::methodDescriptionMap;
            }

            else
            {
              v20 = 0;
            }

            free(v20);
            objc::methodDescriptionMap = 0uLL;
            dword_1ED3F57A0 = 0;
          }

          else
          {
            *(&objc::methodDescriptionMap + 1) = 0;
          }
        }
      }

      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator++(v60, v15, v16, v17);
    }

    v21 = v4[1];
    if (v21)
    {
      if ((v4[1] & 3) == 1)
      {
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v21 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_50;
        }

        if (*v22)
        {
          v23 = 0;
          v24 = v22 + 2;
          do
          {
            v25 = &v22[2 * v23];
            v26 = *(v25 + 1);
            if (v26)
            {
              v27 = *(v25 + 1);
              v28 = (v26 & 0xFFFFFFFFFFFFFFFLL);
              if ((v26 & 0xFFFFFFFFFFFFFFFLL) != 0)
              {
                if (malloc_size((v26 & 0xFFFFFFFFFFFFFFFLL)))
                {
                  free(v28);
                }
              }
            }

            ++v23;
            v24 += 2;
          }

          while (v23 < *v22);
        }
      }

      else
      {
        if ((v21 & 3) != 0)
        {
          goto LABEL_50;
        }

        v22 = (v21 & 0xFFFFFFFFFFFFFFCLL);
        if ((v21 & 0xFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_50;
        }
      }

      if (malloc_size(v22))
      {
        free(v22);
      }
    }
  }

LABEL_50:
  v29 = *(v5 + 48);
  if (v29)
  {
    v31 = *v29;
    v30 = v29[1];
    v32 = v30 * v31;
    if ((v32 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v6, v7, v8, v30, *(v5 + 48), v31);
    }

    if (v32)
    {
      v33 = v32;
      v34 = (v29 + 6);
      do
      {
        v35 = *(v34 - 2);
        if (v35 && malloc_size(*(v34 - 2)))
        {
          free(v35);
        }

        v36 = *(v34 - 1);
        if (v36 && malloc_size(*(v34 - 1)))
        {
          free(v36);
        }

        v37 = *v34;
        if (*v34 && malloc_size(*v34))
        {
          free(v37);
        }

        v34 = (v34 + v31);
        v33 -= v31;
      }

      while (v33);
    }

    if (malloc_size(v29))
    {
      free(v29);
    }
  }

  if (!v4)
  {
    goto LABEL_104;
  }

  list_array_tt<property_t,property_list_t,RawPtr>::begin(v60, v4 + 2, v7, v8);
  list_array_tt<property_t,property_list_t,RawPtr>::end(v59, v4 + 2, v38, v39);
  while (!list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator==(v60, v59))
  {
    v43 = v61;
    v44 = *v61;
    if (*v61 && malloc_size(*v61))
    {
      free(v44);
    }

    v45 = *(v43 + 1);
    if (v45 && malloc_size(*(v43 + 1)))
    {
      free(v45);
    }

    list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator++(v60, v40, v41, v42);
  }

  v46 = v4[2];
  if (v46)
  {
    if ((v4[2] & 3) == 1)
    {
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v46 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_90;
      }

      if (*v47)
      {
        v48 = 0;
        do
        {
          v49 = *&v47[2 * v48 + 2];
          v50 = (v49 & 0xFFFFFFFFFFFFFFFLL);
          if ((v49 & 0xFFFFFFFFFFFFFFFLL) != 0 && malloc_size((v49 & 0xFFFFFFFFFFFFFFFLL)))
          {
            free(v50);
          }

          ++v48;
        }

        while (v48 < *v47);
      }
    }

    else
    {
      if ((v46 & 3) != 0)
      {
        goto LABEL_90;
      }

      v47 = (v46 & 0xFFFFFFFFFFFFFFCLL);
      if ((v46 & 0xFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_90;
      }
    }

    if (malloc_size(v47))
    {
      free(v47);
    }
  }

LABEL_90:
  v51 = v4[3];
  if (v51)
  {
    if ((v4[3] & 3) == 1)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v51 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        if (*v52)
        {
          v53 = 0;
          do
          {
            v54 = *&v52[2 * v53 + 2];
            v55 = (v54 & 0xFFFFFFFFFFFFFFFLL);
            if ((v54 & 0xFFFFFFFFFFFFFFFLL) != 0 && malloc_size((v54 & 0xFFFFFFFFFFFFFFFLL)))
            {
              free(v55);
            }

            ++v53;
          }

          while (v53 < *v52);
        }

        goto LABEL_102;
      }
    }

    else if ((v51 & 3) == 0)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFCLL);
      if ((v51 & 0xFFFFFFFFFFFFFFCLL) != 0)
      {
LABEL_102:
        if (malloc_size(v52))
        {
          free(v52);
        }
      }
    }
  }

LABEL_104:
  if ((*v5 & 1) == 0)
  {
    v56 = *(v5 + 16);
    if (v56)
    {
      if (malloc_size(*(v5 + 16)))
      {
        free(v56);
      }
    }
  }

  v57 = *(v5 + 56);
  if (v57 && malloc_size(*(v5 + 56)))
  {
    free(v57);
  }

  if ((*(v1 + 15) & 4) == 0)
  {
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (explicit)
    {
      if (malloc_size(explicit))
      {
        free(explicit);
      }
    }
  }

  if (malloc_size(v5))
  {
    free(v5);
  }

  free(v4);
  free(v2);
  if ((*(v1 + 4) & 2) != 0)
  {
    v1 = (v1 - *(v1 + 15));
  }

  if (malloc_size(v1))
  {
    free(v1);
  }
}

void _method_setImplementationRawUnsafe(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  method_t::setImp(v3, a2);
  v6 = *(StatusReg + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800CD980(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

__n128 __copy_helper_block_e8_32c43_ZTSKZ30method_exchangeImplementationsE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void sub_1800CDA88(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

const char **protocol_getProperty_nolock(protocol_t *a1, const char *a2, const char *a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  if (a4)
  {
    v7 = (a1 + 56);
  }

  else
  {
    v7 = (a1 + 88);
    if (a1 + *(a1 + 16) <= a1 + 88)
    {
      goto LABEL_10;
    }
  }

  v8 = *v7;
  if (!*v7 || (v9 = (v8 + 2), v10 = *v8, entsize_list_tt<property_t,property_list_t,0u,PointerModifierNop>::end(v8, a2, a3, a4), v9 == v11))
  {
LABEL_10:
    v13 = *(a1 + 2);
    if (v13 && *v13)
    {
      v14 = 0;
      while (1)
      {
        v15 = v13[v14 + 1];
        v16 = canonical_protocol ? 0 : 0x20000000;
        if ((v16 & *(v15 + 68)) == 0)
        {
          Protocol = getProtocol(*(v15 + 8));
          if (Protocol)
          {
            v15 = Protocol;
          }
        }

        Property_nolock = protocol_getProperty_nolock(v15, a2, 1, v4);
        if (Property_nolock)
        {
          break;
        }

        ++v14;
        v13 = *(a1 + 2);
        if (v14 >= *v13)
        {
          return 0;
        }
      }

      return Property_nolock;
    }

    return 0;
  }

  v12 = v11;
  while (strcmp(a2, *v9))
  {
    v9 = (v9 + v10);
    if (v9 == v12)
    {
      goto LABEL_10;
    }
  }

  return v9;
}

void protocol_addProtocol(Protocol *proto, Protocol *addition)
{
  if (proto && addition)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((proto->super.isa & 0xFFFFFFFF8) == __IncompleteProtocol)
    {
      if ((addition->super.isa & 0xFFFFFFFF8) == __IncompleteProtocol)
      {
        protocol_t::demangledName(addition);
        _objc_inform("protocol_addProtocol: added protocol '%s' is still under construction!");
      }

      else
      {
        isa = proto[2].super.isa;
        if (isa)
        {
          v7 = malloc_type_realloc(isa, 8 * *isa + 16, 0x100004000313F17uLL);
        }

        else
        {
          v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x100004000313F17uLL);
        }

        v8 = (*v7)++;
        *(v7 + v8 + 1) = addition;
        proto[2].super.isa = v7;
      }
    }

    else
    {
      protocol_t::demangledName(proto);
      _objc_inform("protocol_addProtocol: modified protocol '%s' is not under construction!");
    }

    v9 = *(StatusReg + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800CDD44(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void sub_1800CDF98(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void sub_1800CE20C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _objc_getRealizedClassList_trylock(objc_class **a1, uint64_t a2)
{
  if (!os_unfair_lock_trylock(runtimeLock))
  {
    return -1;
  }

  RealizedClassList_nolock = objc_getRealizedClassList_nolock(a1, a2, v4, v5);
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return RealizedClassList_nolock;
}

uint64_t objc_getRealizedClassList_nolock(objc_class **a1, uint64_t a2, const char *a3, char *a4)
{
  v9 = 0;
  if (a1)
  {
    v8 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = ___ZL32objc_getRealizedClassList_nolockPP10objc_classm_block_invoke;
    v7[3] = &__block_descriptor_64_e8_32c61_ZTSKZL32objc_getRealizedClassList_nolockPP10objc_classmE3__0_e8_B16__0_8l;
    v7[4] = &v9;
    v7[5] = &v8;
    v7[6] = a2;
    v7[7] = a1;
    v4 = v7;
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3321888768;
    v6[2] = ___ZL32objc_getRealizedClassList_nolockPP10objc_classm_block_invoke_175;
    v6[3] = &__block_descriptor_40_e8_32c61_ZTSKZL32objc_getRealizedClassList_nolockPP10objc_classmE3__1_e8_B16__0_8l;
    v6[4] = &v9;
    v4 = v6;
  }

  foreach_realized_class(v4, a2, a3, a4);
  return v9;
}

uint64_t ___ZL32objc_getRealizedClassList_nolockPP10objc_classm_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  ++**(a1 + 32);
  v3 = *v2;
  if (*v2 < *(a1 + 48))
  {
    v4 = *(a1 + 56);
    *v2 = v3 + 1;
    *(v4 + 8 * v3) = a2;
  }

  return 1;
}

__n128 __copy_helper_block_e8_32c61_ZTSKZL32objc_getRealizedClassList_nolockPP10objc_classmE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

int objc_getClassList(Class *buffer, int bufferCount)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAllClasses();
  RealizedClassList_nolock = objc_getRealizedClassList_nolock(buffer, bufferCount, v6, v7);
  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return RealizedClassList_nolock;
}

void sub_1800CE490(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void *objc_copyRealizedClassList(unsigned int *a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = objc_copyRealizedClassList_nolock(a1, a2, a3, a4);
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v7;
}

void sub_1800CE544(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Class *__cdecl objc_copyClassList(unsigned int *outCount)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAllClasses();
  v7 = objc_copyRealizedClassList_nolock(outCount, v4, v5, v6);
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v7;
}

void sub_1800CE5FC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void _objc_endClassEnumeration(uint64_t a1)
{
  if (*a1 == -1)
  {
    free(*(a1 + 40));
  }
}

unint64_t _objc_setHook_msgSendCacheMiss(unint64_t result, uint64_t *a2)
{
  if (msgSendCacheMissHook)
  {
    v2 = msgSendCacheMissHook;
  }

  else
  {
    v2 = 0;
  }

  while (1)
  {
    if (v2)
    {
      *a2 = v2;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *a2 = 0;
      if (result)
      {
LABEL_6:
        v3 = result;
        goto LABEL_9;
      }
    }

    v3 = 0;
LABEL_9:
    v4 = v2;
    atomic_compare_exchange_strong_explicit(&msgSendCacheMissHook, &v4, v3, memory_order_release, memory_order_relaxed);
    if (v4 == v2)
    {
      return result;
    }

    v2 = 0;
    if (v4)
    {
      v2 = v4;
    }
  }
}

char *class_copyImpCache(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v7 = malloc_type_calloc(v6 + 1, 0x10uLL, 0x80040803F642BuLL);
    v8 = v7;
    v9 = (a1 + 16);
    v10 = *(a1 + 16);
    if ((v10 & 1) == 0 && (v10 == &_objc_empty_cache || HIWORD(*v9)))
    {
      if (HIWORD(*v9))
      {
        v20 = 0;
        v21 = 0;
        v22 = HIWORD(*v9);
        v23 = ((*v9 & 0xFFFFFFFFFFFLL) + 8);
        do
        {
          if (*v23)
          {
            v24 = *(v23 - 1);
            if (v24)
            {
              v25 = *v23;
              v26 = *(v23 - 1);
            }

            v27 = &v7[16 * v21];
            *(v27 + 1) = v24;
            *v27 = *v23;
            ++v21;
          }

          if (v20 >= v22)
          {
            break;
          }

          ++v20;
          v23 += 2;
        }

        while (v21 < v6);
      }
    }

    else
    {
      v11 = *v9 & 0x7FFFFFFFFFFFFELL;
      v12 = *(v11 - 8) >> 5;
      if (v12 >= (v6 - 1))
      {
        v12 = (v6 - 1);
      }

      v13 = v12 + 1;
      v14 = v7 + 8;
      v15 = (*v9 & 0x7FFFFFFFFFFFFELL);
      do
      {
        *(v14 - 1) = *v15 >> 38;
        v16 = *v15++;
        *v14 = v11 - (v16 << 26 >> 24);
        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    *a2 = v6;
  }

  v17 = *(StatusReg + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v8;
}

void sub_1800CE958(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Protocol **__cdecl objc_copyProtocolList(unsigned int *outCount)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = protocols();
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v5 = FirstHeader;
  if (FirstHeader)
  {
    do
    {
      v41 = 0;
      v6 = header_info::protocollist(v5, &v41);
      v7 = v41;
      if (v41)
      {
        v8 = v6;
        do
        {
          v9 = *v8;
          if (!NXMapGet(v4, *(*v8 + 8)))
          {
            v10 = *(v9 + 8);
            PreoptimizedProtocol = getPreoptimizedProtocol();
            v12 = *(v9 + 8);
            v45 = 0;
            if (!objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(&v42, v12, &v45))
            {
              if (4 * v43.i32[0] + 4 >= 3 * v44)
              {
                objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::grow(&v42, 2 * v44);
                v45 = 0;
                objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(&v42, v12, &v45);
              }

              else if (v44 + ~v43.i32[0] - v43.i32[1] <= v44 >> 3)
              {
                objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::grow(&v42, v44);
                v45 = 0;
                objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(&v42, v12, &v45);
              }

              v13 = v45;
              v14 = *v45;
              if (objc::DenseMapInfo<char const*>::isEqual(*v45, 0xFFFFFFFFFFFFFFFFLL))
              {
                ++v43.i32[0];
              }

              else if (objc::DenseMapInfo<char const*>::isEqual(v14, 0xFFFFFFFFFFFFFFFELL))
              {
                v43 = vadd_s32(v43, 0xFFFFFFFF00000001);
              }

              *v13 = v12;
              v13[1] = PreoptimizedProtocol;
            }
          }

          v8 += 8;
          --v7;
        }

        while (v7);
      }

      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
      v16 = (v5 + 24);
      if (PreoptimizedHeaderRW)
      {
        v16 = PreoptimizedHeaderRW;
      }

      v5 = (*v16 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v5);
    v17 = v43.i32[0];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 + *(v4 + 8);
  if (!v18)
  {
    v20 = 0;
    if (!outCount)
    {
      goto LABEL_50;
    }

    v18 = 0;
    goto LABEL_49;
  }

  v19 = malloc_type_malloc(8 * (v18 + 1), 0x80040B8603338uLL);
  v20 = v19;
  v21 = 0;
  v22 = *(v4 + 12) + 1;
LABEL_26:
  v23 = *(v4 + 16);
  v24 = v22;
  v25 = (v23 + 16 * v22 - 16);
  while (v24)
  {
    --v24;
    v26 = *v25;
    v25 -= 2;
    if (v26 != -1)
    {
      v19[v21++] = *(v23 + 16 * v24 + 8);
      v22 = v24;
      goto LABEL_26;
    }
  }

  v27 = v42;
  if (v43.i32[0])
  {
    if (v42)
    {
      v28 = v42;
    }

    else
    {
      v28 = 0;
    }

    v30 = v44;
    v45 = v28;
    v46 = &v28[2 * v44];
    objc::DenseMapIterator<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>,false>::AdvancePastEmptyBuckets(&v45);
    v31 = v45;
    v32 = v46;
    v33 = v30;
  }

  else
  {
    if (v42)
    {
      v29 = v42;
    }

    else
    {
      v29 = 0;
    }

    v33 = v44;
    v31 = &v29[2 * v44];
    v32 = v31;
  }

  v46 = v32;
  if (v27)
  {
    v34 = v27;
  }

  else
  {
    v34 = 0;
  }

  v35 = &v34[2 * v33];
  if (v35 == v31)
  {
    v36 = v21;
  }

  else
  {
    do
    {
      v36 = v21 + 1;
      v20[v21] = v31[1];
      v45 = v31 + 2;
      objc::DenseMapIterator<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>,false>::AdvancePastEmptyBuckets(&v45);
      v31 = v45;
      ++v21;
    }

    while (v45 != v35);
  }

  v20[v36] = 0;
  if (outCount)
  {
LABEL_49:
    *outCount = v18;
  }

LABEL_50:
  if (v42)
  {
    v37 = v42;
  }

  else
  {
    v37 = 0;
  }

  free(v37);
  v38 = *(StatusReg + 24);
  v39 = v38;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != v38)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v20;
}

void sub_1800CED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    v12 = a10;
  }

  else
  {
    v12 = 0;
  }

  free(v12);
  v13 = *(v10 + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(a1);
}

char ***objc::DenseMapIterator<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>,false>::AdvancePastEmptyBuckets(char ***result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      result = objc::DenseMapInfo<char const*>::isEqual(*v1, 0xFFFFFFFFFFFFFFFFLL);
      if ((result & 1) == 0)
      {
        result = objc::DenseMapInfo<char const*>::isEqual(v4, 0xFFFFFFFFFFFFFFFELL);
        if (!result)
        {
          break;
        }
      }

      v1 += 2;
      *v3 = v1;
    }

    while (v1 != v2);
  }

  return result;
}

BOOL objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(uint64_t a1, char *__s1, char ***a3)
{
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = __s1;
    do
    {
      v10 = v8;
      v11 = *v9++;
      v8 = 257 * v8 + v11;
    }

    while (v11);
    v22 = 0;
    v12 = v7 - 1;
    for (i = 1; ; i = v21 + 1)
    {
      v21 = i;
      v14 = v10 & v12;
      v15 = &v6[2 * (v10 & v12)];
      v16 = *v15;
      isEqual = objc::DenseMapInfo<char const*>::isEqual(__s1, *v15);
      if (isEqual)
      {
        break;
      }

      if (objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v22)
        {
          v15 = v22;
        }

        break;
      }

      if (v21 > v7)
      {
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v6, v7);
      }

      v18 = objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFELL);
      v19 = v22;
      if (v18 && v22 == 0)
      {
        v19 = &v6[2 * v14];
      }

      v22 = v19;
      v10 = v14 + v21;
    }
  }

  else
  {
    v15 = 0;
    isEqual = 0;
  }

  *a3 = v15;
  return isEqual;
}

void objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(16 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    *(a1 + 8) = 0;
    if (v4)
    {
      v11 = v9;
LABEL_13:
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v13 + 0xFFFFFFFFFFFFFFFLL;
        v16 = v15 & 0xFFFFFFFFFFFFFFFLL;
        v17 = (v15 & 0xFFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
        v18 = vdupq_n_s64(v16);
        v19 = v11 + 16;
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_1800DA160)));
          if (v20.i8[0])
          {
            *(v19 - 2) = -1;
          }

          if (v20.i8[4])
          {
            *v19 = -1;
          }

          v14 += 2;
          v19 += 4;
        }

        while (v17 != v14);
      }

      if (v3)
      {
        v21 = 16 * v3;
        v22 = v4;
        do
        {
          v23 = *v22;
          if (!objc::DenseMapInfo<char const*>::isEqual(*v22, 0xFFFFFFFFFFFFFFFFLL) && !objc::DenseMapInfo<char const*>::isEqual(v23, 0xFFFFFFFFFFFFFFFELL))
          {
            v33 = 0;
            objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(a1, v23, &v33);
            v24 = v33;
            *v33 = *v22;
            v24[1] = v22[1];
            ++*(a1 + 8);
          }

          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      free(v4);
      return;
    }

    v12 = v9;
  }

  else
  {
    *&v10 = 0;
    v12 = 0;
    v11 = 0;
    *a1 = v10;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = v12 + 16;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_1800DA160)));
      if (v32.i8[0])
      {
        *(v31 - 2) = -1;
      }

      if (v32.i8[4])
      {
        *v31 = -1;
      }

      v26 += 2;
      v31 += 4;
    }

    while (v29 != v26);
  }
}

const char **__cdecl objc_copyImageNames(unsigned int *outCount)
{
  v1 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v3 = FirstHeader;
  if (FirstHeader)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3 + *v3;
      if (v5 >= v6)
      {
        v8 = v5 - v4;
        v9 = (v5 - v4) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
        }

        if ((v6 - v4) >> 2 > v10)
        {
          v10 = (v6 - v4) >> 2;
        }

        if ((v6 - v4) >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          if (v11 >> 61)
          {
            std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
          }

          v12 = malloc_type_malloc(8 * v11, 0x201A97EDuLL);
        }

        else
        {
          v12 = 0;
        }

        v13 = &v12[8 * v9];
        v6 = &v12[8 * v11];
        *v13 = v7;
        v5 = v13 + 8;
        memcpy(v12, v4, v8);
        if (v4)
        {
          free(v4);
        }

        v4 = v12;
      }

      else
      {
        *v5 = v7;
        v5 += 8;
      }

      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v3);
      v15 = v3 + 3;
      if (PreoptimizedHeaderRW)
      {
        v15 = PreoptimizedHeaderRW;
      }

      v3 = (*v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  v18 = malloc_type_malloc(v5 - v4 + 8, 0x10040436913F5uLL);
  v19 = v18;
  if (v4 == v5)
  {
    *v18 = 0;
LABEL_35:
    free(v19);
    v20 = 0;
    v19 = 0;
    goto LABEL_36;
  }

  v20 = 0;
  v21 = v4;
  do
  {
    v22 = *v21;
    v23 = dyld_image_path_containing_address();
    if (v23)
    {
      *(v19 + v20++) = v23;
    }

    v21 += 8;
  }

  while (v21 != v5);
  *(v19 + v20) = 0;
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (outCount)
  {
    *outCount = v20;
  }

  if (v4)
  {
    free(v4);
  }

  return v19;
}

void sub_1800CF49C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *copyClassNamesForImage_nolock(header_info *a1, unsigned int *a2)
{
  v13 = 0;
  v3 = header_info::classlist(a1, &v13);
  v4 = v13;
  v5 = malloc_type_malloc(8 * v13 + 8, 0x50040EE9192B6uLL);
  v6 = v5;
  if (v4)
  {
    v7 = 0;
    v8 = v5;
    v9 = v4;
    do
    {
      v10 = remapClass(*v3);
      if (v10)
      {
        v8[-v7] = objc_class::demangledName(v10, 0);
      }

      else
      {
        ++v7;
      }

      ++v8;
      ++v3;
      --v9;
    }

    while (v9);
    v11 = v4 - v7;
  }

  else
  {
    v11 = 0;
  }

  v6[v11] = 0;
  if (a2)
  {
    *a2 = v11;
  }

  return v6;
}

const char **__cdecl objc_copyClassNamesForImage(const char *image, unsigned int *outCount)
{
  v40 = *MEMORY[0x1E69E9840];
  if (image)
  {
    v36 = 0;
    v37 = outCount;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = StatusReg;
    do
    {
      v4 = 0;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        os_unfair_lock_lock_with_options();
      }

      v5 = FirstHeader;
      if (FirstHeader)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *v5;
          if (_dyld_get_image_uuid())
          {
            v10 = v5 + *v5;
            if (v7 >= v8)
            {
              v11 = v7 - v6;
              v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
              v13 = v12 + 1;
              if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v8 - v6) >> 3) > v13)
              {
                v13 = 0x5555555555555556 * ((v8 - v6) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 3) >= 0x555555555555555)
              {
                v14 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v14 = v13;
              }

              if (v14)
              {
                if (v14 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
                }

                v15 = malloc_type_malloc(24 * v14, 0x201A97EDuLL);
              }

              else
              {
                v15 = 0;
              }

              v16 = &v15[24 * v12];
              v8 = &v15[24 * v14];
              *v16 = v10;
              *(v16 + 8) = v39;
              v7 = v16 + 24;
              v17 = &v16[24 * (v11 / -24)];
              memcpy(v17, v6, v11);
              if (v6)
              {
                free(v6);
              }

              v6 = v17;
            }

            else
            {
              *v7 = v10;
              *(v7 + 8) = v39;
              v7 += 24;
            }
          }

          PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
          v19 = v5 + 3;
          if (PreoptimizedHeaderRW)
          {
            v19 = PreoptimizedHeaderRW;
          }

          v5 = (*v19 & 0xFFFFFFFFFFFFFFFCLL);
        }

        while (v5);
      }

      else
      {
        v7 = 0;
        v6 = 0;
      }

      StatusReg = v38;
      v20 = *(v38 + 24);
      v21 = v20;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v21, 0, memory_order_release, memory_order_relaxed);
      if (v21 != v20)
      {
        os_unfair_lock_unlock(runtimeLock);
      }

      v22 = v6;
      if (v6 == v7)
      {
LABEL_34:
        v25 = 1;
      }

      else
      {
        while (1)
        {
          v23 = *v22;
          v24 = dyld_image_path_containing_address();
          if (v24)
          {
            if (!strcmp(v24, image))
            {
              break;
            }
          }

          v22 += 3;
          if (v22 == v7)
          {
            goto LABEL_34;
          }
        }

        v26 = 0;
        v27 = *v22;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v26, *(v38 + 24), memory_order_acquire, memory_order_acquire);
        if (v26)
        {
          os_unfair_lock_lock_with_options();
        }

        v28 = FirstHeader;
        if (!FirstHeader)
        {
          goto LABEL_52;
        }

        while (v27 != (v28 + *v28))
        {
          v29 = getPreoptimizedHeaderRW(v28);
          v30 = (v28 + 24);
          if (v29)
          {
            v30 = v29;
          }

          v28 = (*v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (!v28)
          {
            goto LABEL_52;
          }
        }

        v39 = 0uLL;
        if (_dyld_get_image_uuid() && (!v22[1] ? (v31 = v22[2] == 0) : (v31 = 0), v31))
        {
          v36 = copyClassNamesForImage_nolock(v28, v37);
          v25 = 1;
        }

        else
        {
LABEL_52:
          v25 = 0;
        }

        v32 = *(v38 + 24);
        v33 = v32;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v33, 0, memory_order_release, memory_order_relaxed);
        if (v33 != v32)
        {
          os_unfair_lock_unlock(runtimeLock);
        }
      }

      if (v6)
      {
        free(v6);
      }
    }

    while (!v25);
    outCount = v37;
    if (!v37)
    {
      result = v36;
      goto LABEL_63;
    }

    result = v36;
    if (v36)
    {
      goto LABEL_63;
    }
  }

  else if (!outCount)
  {
    result = 0;
    goto LABEL_63;
  }

  result = 0;
  *outCount = 0;
LABEL_63:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1800CF934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v12;
  v17 = *(v14 + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(v15, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (v13)
  {
    free(v13);
  }

  _Unwind_Resume(exception_object);
}

void *objc_copyClassesForImage(const char *a1, _DWORD *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v43 = a2;
    v44 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = StatusReg;
    do
    {
      v4 = 0;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        os_unfair_lock_lock_with_options();
      }

      v5 = FirstHeader;
      if (FirstHeader)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *v5;
          if (_dyld_get_image_uuid())
          {
            v10 = v5 + *v5;
            *v46 = v47;
            if (v7 >= v8)
            {
              v11 = v7 - v6;
              v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
              v13 = v12 + 1;
              if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v8 - v6) >> 3) > v13)
              {
                v13 = 0x5555555555555556 * ((v8 - v6) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 3) >= 0x555555555555555)
              {
                v14 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v14 = v13;
              }

              if (v14)
              {
                if (v14 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
                }

                v15 = malloc_type_malloc(24 * v14, 0x201A97EDuLL);
              }

              else
              {
                v15 = 0;
              }

              v16 = &v15[24 * v12];
              v8 = &v15[24 * v14];
              *v16 = v10;
              *(v16 + 8) = *v46;
              v7 = v16 + 24;
              v17 = &v16[24 * (v11 / -24)];
              memcpy(v17, v6, v11);
              if (v6)
              {
                free(v6);
              }

              v6 = v17;
            }

            else
            {
              *v7 = v10;
              *(v7 + 8) = *v46;
              v7 += 24;
            }
          }

          PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
          v19 = v5 + 3;
          if (PreoptimizedHeaderRW)
          {
            v19 = PreoptimizedHeaderRW;
          }

          v5 = (*v19 & 0xFFFFFFFFFFFFFFFCLL);
        }

        while (v5);
      }

      else
      {
        v7 = 0;
        v6 = 0;
      }

      StatusReg = v45;
      v20 = *(v45 + 24);
      v21 = v20;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v21, 0, memory_order_release, memory_order_relaxed);
      if (v21 != v20)
      {
        os_unfair_lock_unlock(runtimeLock);
      }

      v22 = v6;
      if (v6 == v7)
      {
LABEL_34:
        v25 = 1;
      }

      else
      {
        while (1)
        {
          v23 = *v22;
          v24 = dyld_image_path_containing_address();
          if (v24)
          {
            if (!strcmp(v24, a1))
            {
              break;
            }
          }

          v22 += 3;
          if (v22 == v7)
          {
            goto LABEL_34;
          }
        }

        v26 = 0;
        v27 = *v22;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v26, *(v45 + 24), memory_order_acquire, memory_order_acquire);
        if (v26)
        {
          os_unfair_lock_lock_with_options();
        }

        v28 = FirstHeader;
        if (!FirstHeader)
        {
          goto LABEL_52;
        }

        while (v27 != (v28 + *v28))
        {
          v29 = getPreoptimizedHeaderRW(v28);
          v30 = (v28 + 24);
          if (v29)
          {
            v30 = v29;
          }

          v28 = (*v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (!v28)
          {
            goto LABEL_52;
          }
        }

        v47 = 0uLL;
        if (_dyld_get_image_uuid() && (v47 == v22[1] ? (v31 = *(&v47 + 1) == v22[2]) : (v31 = 0), v31))
        {
          v46[0] = 0;
          v34 = header_info::classlist(v28, v46);
          v35 = v46[0];
          v44 = malloc_type_malloc(8 * v46[0] + 8, 0x80040B8603338uLL);
          if (v35)
          {
            v36 = 0;
            v37 = v44;
            v38 = v35;
            do
            {
              v39 = remapClass(*v34);
              if (v39)
              {
                v37[-v36] = v39;
              }

              else
              {
                ++v36;
              }

              ++v37;
              ++v34;
              --v38;
            }

            while (v38);
            v40 = v35 - v36;
            StatusReg = v45;
          }

          else
          {
            v40 = 0;
          }

          v44[v40] = 0;
          if (v43)
          {
            *v43 = v40;
          }

          v25 = 1;
        }

        else
        {
LABEL_52:
          v25 = 0;
        }

        v32 = *(StatusReg + 24);
        v33 = v32;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v33, 0, memory_order_release, memory_order_relaxed);
        if (v33 != v32)
        {
          os_unfair_lock_unlock(runtimeLock);
        }
      }

      if (v6)
      {
        free(v6);
      }
    }

    while (!v25);
    a2 = v43;
    if (!v43)
    {
      result = v44;
      goto LABEL_73;
    }

    result = v44;
    if (v44)
    {
      goto LABEL_73;
    }
  }

  else if (!a2)
  {
    result = 0;
    goto LABEL_73;
  }

  result = 0;
  *a2 = 0;
LABEL_73:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1800CFD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a12 + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (v12)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

void *objc_copyClassNamesForImageHeader(header_info *a1, unsigned int *a2)
{
  if (a1)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v6 = FirstHeader;
    if (FirstHeader)
    {
      while ((v6 + *v6) != a1)
      {
        PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v6);
        v8 = (v6 + 24);
        if (PreoptimizedHeaderRW)
        {
          v8 = PreoptimizedHeaderRW;
        }

        v6 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v9 = copyClassNamesForImage_nolock(v6, a2);
    }

    else
    {
LABEL_9:
      v9 = 0;
      if (a2)
      {
        *a2 = 0;
      }
    }

    v10 = *(StatusReg + 24);
    v11 = v10;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return v9;
}

void sub_1800CFEE8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

const char *objc_debug_class_getNameRaw(objc_class *this, uint64_t a2, const char *a3, char *a4)
{
  if (!this)
  {
    return "nil";
  }

  v5 = *(this + 4);
  if (v5 < 0)
  {
    v6 = class_rw_t::ro((*(this + 4) & 0xF00007FFFFFFFF8));
  }

  else
  {
    v6 = v5 & 0xF00007FFFFFFFF8;
  }

  result = atomic_load_explicit((v6 + 24), memory_order_acquire);
  if (!result)
  {

    return objc_class::installMangledNameForLazilyNamedClass(this, a2, a3, a4);
  }

  return result;
}

objc_class *gdb_class_getClass(objc_class *a1)
{
  v1 = objc_class::mangledName(a1);
  if (!v1 || !*v1)
  {
    return 0;
  }

  return look_up_class(v1);
}

objc_class *gdb_object_getClass(objc_class *result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v3 = &objc_debug_taggedpointer_classes[result & 7];
      v1 = *v3;
      if (*v3)
      {
        v4 = *v3;
        if (v1 == __NSUnrecognizedTaggedPointer)
        {
          v5 = &objc_debug_taggedpointer_ext_classes[(result >> 55)];
          v1 = *v5;
          if (*v5)
          {
            v6 = *v5;
          }
        }
      }
    }

    else
    {
      v1 = (*result & 0x7FFFFFFFFFFFF8);
      if (v1)
      {
        v2 = *result & 0x7FFFFFFFFFFFF8;
      }
    }

    return gdb_class_getClass(v1);
  }

  return result;
}

void objc_setHook_lazyClassNamer(objc_hook_lazyClassNamer newValue, objc_hook_lazyClassNamer *oldOutValue)
{
  v2 = LazyClassNamerHook;
  while (1)
  {
    *oldOutValue = v2;
    if (v2)
    {
      v3 = v2;
      if (newValue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (newValue)
      {
LABEL_4:
        v4 = newValue;
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v5 = v3;
    atomic_compare_exchange_strong_explicit(&LazyClassNamerHook, &v5, v4, memory_order_release, memory_order_relaxed);
    if (v5 == v3)
    {
      break;
    }

    v2 = 0;
    if (v5)
    {
      v2 = v5;
    }
  }
}

const uint8_t *__cdecl class_getIvarLayout(const uint8_t *cls)
{
  if (cls)
  {
    v1 = class_data_bits_t::safe_ro<(Authentication)0>(cls + 4);
    if (*v1)
    {
      return 0;
    }

    else
    {
      return *(v1 + 16);
    }
  }

  return cls;
}

const uint8_t *__cdecl class_getWeakIvarLayout(const uint8_t *cls)
{
  if (cls)
  {
    return *(class_data_bits_t::safe_ro<(Authentication)0>(cls + 4) + 56);
  }

  return cls;
}

void class_setIvarLayout(Class cls, const uint8_t *layout)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v6 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v6) || (*(qword_1ED3F6300 + 16 * v6) <= cls ? (v7 = *(qword_1ED3F6300 + 16 * v6 + 8) > cls) : (v7 = 0), !v7))
    {
      if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v18, v16, v17) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v19, v20, v21, cls);
      }
    }

    if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
    {
      ro_writeable_nolock = make_ro_writeable_nolock((*(cls + 4) & 0xF00007FFFFFFFF8));
      v10 = ro_writeable_nolock;
      if ((*ro_writeable_nolock & 1) == 0)
      {
        v11 = *(ro_writeable_nolock + 16);
        if (v11)
        {
          if (malloc_size(*(ro_writeable_nolock + 16)))
          {
            free(v11);
          }
        }
      }

      if (layout)
      {
        v12 = strlen(layout);
        if ((_dyld_is_memory_immutable() & 1) == 0)
        {
          v13 = malloc_type_malloc(v12 + 1, 0x9620E368uLL);
          memcpy(v13, layout, v12 + 1);
          layout = v13;
        }
      }

      *(v10 + 16) = layout;
    }

    else
    {
      v8 = objc_class::nameForLogging(cls);
      _objc_inform("*** Can't set ivar layout for already-registered class '%s'", v8);
    }

    v14 = *(StatusReg + 24);
    v15 = v14;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != v14)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800D04A8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void class_setWeakIvarLayout(Class cls, const uint8_t *layout)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v6 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v6) || (*(qword_1ED3F6300 + 16 * v6) <= cls ? (v7 = *(qword_1ED3F6300 + 16 * v6 + 8) > cls) : (v7 = 0), !v7))
    {
      if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v18, v16, v17) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v19, v20, v21, cls);
      }
    }

    if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
    {
      ro_writeable_nolock = make_ro_writeable_nolock((*(cls + 4) & 0xF00007FFFFFFFF8));
      v10 = ro_writeable_nolock;
      v11 = *(ro_writeable_nolock + 56);
      if (v11 && malloc_size(*(ro_writeable_nolock + 56)))
      {
        free(v11);
      }

      if (layout)
      {
        v12 = strlen(layout);
        if ((_dyld_is_memory_immutable() & 1) == 0)
        {
          v13 = malloc_type_malloc(v12 + 1, 0x9620E368uLL);
          memcpy(v13, layout, v12 + 1);
          layout = v13;
        }
      }

      *(v10 + 56) = layout;
    }

    else
    {
      v8 = objc_class::nameForLogging(cls);
      _objc_inform("*** Can't set weak ivar layout for already-registered class '%s'", v8);
    }

    v14 = *(StatusReg + 24);
    v15 = v14;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != v14)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800D0760(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void class_replaceMethodsBulk(objc_class *a1, objc_selector **a2, void (**a3)(void), const char **a4, method_list_t *a5)
{
  if (a1)
  {
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }

    addMethods(a1, a2, a3, a4, a5, 1, 0);
    v12 = *(StatusReg + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800D0878(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _class_addProperty(Class cls, const char *name, const objc_property_attribute_t *a3, unsigned int a4, int a5)
{
  result = 0;
  if (cls)
  {
    v7 = name;
    if (name)
    {
      Property = class_getProperty(cls, name);
      v12 = Property;
      if (!Property || a5)
      {
        v13 = 0;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        atomic_compare_exchange_strong_explicit(runtimeLock, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        v15 = v13 == 0;
        if (Property)
        {
          if (!v15)
          {
            os_unfair_lock_lock_with_options();
          }

          v16 = *(v12 + 1);
          if (v16 && malloc_size(*(v12 + 1)))
          {
            free(v16);
          }

          *(v12 + 1) = copyPropertyAttributeString(a3, a4);
        }

        else
        {
          if (!v15)
          {
            os_unfair_lock_lock_with_options();
          }

          realizeAndInitializeIfNeeded_locked(0, cls, 0);
          v17 = class_rw_t::extAllocIfNeeded((*(cls + 4) & 0xF00007FFFFFFFF8));
          v18 = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
          v24 = v18;
          *v18 = 0x100000010;
          v19 = strlen(v7);
          if ((_dyld_is_memory_immutable() & 1) == 0)
          {
            v20 = malloc_type_malloc(v19 + 1, 0x9620E368uLL);
            memcpy(v20, v7, v19 + 1);
            v7 = v20;
          }

          v18[1] = v7;
          v18[2] = copyPropertyAttributeString(a3, a4);
          if (PrintPreopt)
          {
            v21 = "properties";
          }

          else
          {
            v21 = 0;
          }

          list_array_tt<property_t,property_list_t,RawPtr>::attachLists(v17 + 2, &v24, 1, 0, v21);
        }

        v22 = *(StatusReg + 24);
        v23 = v22;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v23, 0, memory_order_release, memory_order_relaxed);
        if (v23 != v22)
        {
          os_unfair_lock_unlock(runtimeLock);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1800D0AC0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_setHook_getClass(objc_hook_getClass newValue, objc_hook_getClass *outOldValue)
{
  v2 = GetClassHook;
  while (1)
  {
    *outOldValue = v2;
    if (v2)
    {
      v3 = v2;
      if (newValue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (newValue)
      {
LABEL_4:
        v4 = newValue;
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v5 = v3;
    atomic_compare_exchange_strong_explicit(&GetClassHook, &v5, v4, memory_order_release, memory_order_relaxed);
    if (v5 == v3)
    {
      break;
    }

    v2 = 0;
    if (v5)
    {
      v2 = v5;
    }
  }
}

Class objc_duplicateClass(Class original, const char *name, size_t extraBytes)
{
  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAndInitializeIfNeeded_locked(0, original, 0);
  if ((*original - 1) < 0xF || (*(original + 4) & 0x8000000000000000) == 0 || (v7 = *((*(original + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v7) || (*(qword_1ED3F6300 + 16 * v7) <= original ? (v8 = *(qword_1ED3F6300 + 16 * v7 + 8) > original) : (v8 = 0), !v8))
  {
    if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-original) && (dataSegmentsContain(original, v51, v49, v50) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v52, v53, v54, original);
    }
  }

  v9 = (*(original + 4) & 0xF00007FFFFFFFF8);
  v10 = *(v9 + 1);
  __s = name;
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v11 = 0;
  }

  v12 = class_rw_t::ro(v9);
  v13 = alloc_class_for_subclass(original);
  v14 = v13;
  *v13 = *original & 0xFFFFFFFF8;
  if (*(original + 1))
  {
    v15 = *(original + 1);
  }

  else
  {
    v15 = 0;
  }

  v56 = (v13 + 8);
  *(v13 + 1) = v15;
  *(v13 + 2) = &_objc_empty_cache;
  *(v13 + 3) = 0;
  v16 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040D2A7D70AuLL);
  *v16 = *v9 | 0x8080000;
  v16[2] = 0;
  v16[3] = 0;
  atomic_store(*(original + 4), v14 + 4);
  class_data_bits_t::setData(v14 + 4, v16);
  v58 = class_ro_t::duplicate(v12);
  v17 = name;
  v18 = strlen(name);
  v19 = __s;
  if ((_dyld_is_memory_immutable() & 1) == 0)
  {
    v19 = malloc_type_malloc(v18 + 1, 0x9620E368uLL);
    memcpy(v19, __s, v18 + 1);
  }

  v58[3] = v19;
  v20 = v16 + 1;
  v21 = v16[1];
  if (v21)
  {
    v22 = v16[1];
    v20 = (v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  *v20 = v58;
  if (v11)
  {
    v55 = StatusReg;
    v26 = class_rw_t::extAllocIfNeeded(v16);
    v27 = *(v11 + 8);
    *(v26 + 10) = *(v11 + 40);
    v28 = v26 + 1;
    if (v27)
    {
      if ((v27 & 3) != 1)
      {
        v42 = 0;
        if ((v27 & 3) == 0)
        {
          v42 = method_list_t::duplicate(v27, v23, v24, v25);
        }

        goto LABEL_41;
      }

      v29 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v27 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v30 = 8 * *v29;
        v31 = malloc_type_malloc(v30 + 8, 0x9620E368uLL);
        memcpy(v31, v29, v30 + 8);
        *v28 = v31 | 1;
        if (*v29)
        {
          v35 = (v31 + 8);
          v36 = v29 + 2;
          v37 = 1;
          do
          {
            if (*&v29[2 * v37])
            {
              v38 = *&v29[2 * v37];
            }

            else
            {
              v38 = 0;
            }

            *(v31 + 8 * v37) = method_list_t::duplicate(v38, v32, v33, v34);
            v35 += 8;
            v36 += 2;
          }

          while (v37++ < *v29);
        }

        goto LABEL_42;
      }
    }

    v42 = 0;
LABEL_41:
    *v28 = v42;
LABEL_42:
    v43 = *(v11 + 16);
    if (v43)
    {
      v44 = *(v11 + 16);
    }

    StatusReg = v55;
    v17 = __s;
    v26[2] = v43;
    v26[3] = *(v11 + 24);
    goto LABEL_45;
  }

  v40 = v58[4];
  if (v40 && (v40 & 1) == 0 || (v40 & 1) != 0)
  {
    v41 = v58[4];
    if (v40 >= 2)
    {
      class_rw_t::extAlloc(v16, v58, 1);
    }
  }

LABEL_45:
  if (*v56)
  {
    addSubclass(*v56, v14);
  }

  else
  {
    ++objc_debug_realized_class_generation_count;
    *((v14[4] & 0xF00007FFFFFFFF8) + 0x18) = _firstRealizedClass;
    _firstRealizedClass = v14;
  }

  addNamedClass(v14, atomic_load_explicit(v58 + 3, memory_order_acquire), 0);
  addClassTableEntry(v14, 0);
  if (PrintConnecting)
  {
    v45 = objc_class::nameForLogging(original);
    _objc_inform("CLASS: realizing class '%s' (duplicate of %s) %p %p", v17, v45, v14, v58);
  }

  atomic_fetch_and_explicit((v14[4] & 0xF00007FFFFFFFF8), 0xFFF7FFFF, memory_order_relaxed);
  v46 = *(StatusReg + 24);
  v47 = v46;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v47, 0, memory_order_release, memory_order_relaxed);
  if (v47 != v46)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v14;
}

void sub_1800D12D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a13 + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

objc_class *objc_initializeClassPair(objc_class *a1, char *a2, objc_class *a3, unint64_t a4)
{
  if (look_up_class(a2))
  {
    return 0;
  }

  v8 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  if (getClassExceptSomeSwift(a2) || a1 && (*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0 && (*((*(a1 + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
  {
    a3 = 0;
  }

  else
  {
    objc_initializeClassPair_internal(a1, a2, a3, a4);
  }

  v10 = *(StatusReg + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return a3;
}

void sub_1800D1444(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_disposeClassPair(Class cls)
{
  _object_remove_associations(cls, 1);
  _object_remove_associations(*cls & 0xFFFFFFFF8, 1);
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v4 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v4) || (*(qword_1ED3F6300 + 16 * v4) <= cls ? (v5 = *(qword_1ED3F6300 + 16 * v4 + 8) > cls) : (v5 = 0), !v5))
  {
    if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v20, v18, v19) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v21, v22, v23, cls);
    }
  }

  if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 6) == 0 || (v6 = (*cls & 0xFFFFFFFF8), (*((*(v6 + 4) & 0xF00007FFFFFFFF8) + 3) & 6) == 0))
  {
    v8 = (*(cls + 4) & 0xF00007FFFFFFFF8);
    v10 = "objc_disposeClassPair: class '%s' was not allocated with objc_allocateClassPair!";
LABEL_19:
    v11 = class_rw_t::ro(v8);
    _objc_inform(v10, atomic_load_explicit((v11 + 24), memory_order_acquire));
    goto LABEL_20;
  }

  v7 = *(cls + 4);
  v8 = (v7 & 0xF00007FFFFFFFF8);
  if ((*(cls + 15) & 4) != 0)
  {
    v10 = "objc_disposeClassPair: class '%s' is a metaclass, not a class!";
    goto LABEL_19;
  }

  v9 = *((v7 & 0xF00007FFFFFFFF8) + 0x10);
  if (v9 != v6)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (*((*(v9 + 4) & 0xF00007FFFFFFFF8) + 0x18))
  {
LABEL_25:
    explicit = atomic_load_explicit((class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8)) + 24), memory_order_acquire);
    v15 = objc_class::nameForLogging(*((*(cls + 4) & 0xF00007FFFFFFFF8) + 0x10));
    _objc_inform("objc_disposeClassPair: class '%s' still has subclasses, including '%s'!", explicit, v15);
    v6 = (*cls & 0xFFFFFFFF8);
  }

LABEL_26:
  if (*((*(v6 + 4) & 0xF00007FFFFFFFF8) + 0x10))
  {
    v16 = atomic_load_explicit((class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8)) + 24), memory_order_acquire);
    v17 = objc_class::nameForLogging(*((*((*cls & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8) + 0x10));
    _objc_inform("objc_disposeClassPair: class '%s' still has subclasses, including '%s'!", v16, v17);
    v6 = (*cls & 0xFFFFFFFF8);
  }

  detach_class(v6, 1);
  detach_class(cls, 0);
  free_class((*cls & 0xFFFFFFFF8));
  free_class(cls);
LABEL_20:
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800D18B8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

objc_class *class_createInstances(objc_class *result, uint64_t a2, uint64_t a3, int a4)
{
  if (result)
  {
    v7 = result;
    objc_class::realizeIfNeeded(result);
    if ((*(v7 + 15) & 0xFF8) != 0)
    {
      v8 = (a2 + (*(v7 + 15) & 0xFF8) + 7) & 0xFFFFFFFFFFFFFFF0;
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = class_rw_t::ro((*(v7 + 4) & 0xF00007FFFFFFFF8));
      if (((*(v18 + 8) + 7) & 0xFFFFFFF8) + a2 <= 0x10)
      {
        v8 = 16;
      }

      else
      {
        v8 = ((*(v18 + 8) + 7) & 0xFFFFFFF8) + a2;
      }

      if (a4)
      {
LABEL_4:
        v9 = 0;
        while (1)
        {
          v10 = malloc_type_calloc(1uLL, v8, 0x40000000000uLL);
          *(a3 + 8 * v9) = v10;
          if (!v10)
          {
            break;
          }

          if (a4 == ++v9)
          {
            goto LABEL_9;
          }
        }

        a4 = v9;
        if (!v9)
        {
          goto LABEL_21;
        }

LABEL_9:
        if ((v7 & 0xFF80000000000007) != 0)
        {
          _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v11, v12, v13, v7);
        }

        v14 = 0;
        v15 = 0;
        v16 = *(v7 + 15);
        do
        {
          v17 = *(a3 + 8 * v14);
          *v17 = v7 & 0x7FFFFFFFFFFFF8;
          if ((v16 & 2) != 0 && (v17 = object_cxxConstructFromClass(v17, v7, 1)) == 0)
          {
            ++v15;
          }

          else
          {
            *(a3 + 8 * (v14 - v15)) = v17;
          }

          ++v14;
        }

        while (a4 != v14);
        return (a4 - v15);
      }
    }

LABEL_21:
    v15 = 0;
    return (a4 - v15);
  }

  return result;
}

id object_copy(id a1, size_t a2)
{
  v2 = a1;
  if (a1 < 1)
  {
    return v2;
  }

  if ((*a1 & 0x7FFFFFFFFFFFF8) != 0)
  {
    v4 = *a1 & 0x7FFFFFFFFFFFF8;
  }

  else
  {
    v4 = 0;
  }

  objc_class::realizeIfNeeded(v4);
  v5 = *(v4 + 30);
  if ((v5 & 0xFF8) != 0)
  {
    v6 = (a2 + (v5 & 0xFF8) + 7) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v46 = class_rw_t::ro((*(v4 + 32) & 0xF00007FFFFFFFF8));
    if (((*(v46 + 8) + 7) & 0xFFFFFFF8) + a2 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = ((*(v46 + 8) + 7) & 0xFFFFFFF8) + a2;
    }
  }

  v7 = malloc_type_calloc(1uLL, v6, 0x40000000000uLL);
  if (!v7)
  {
    return 0;
  }

  v11 = v7;
  v12 = v4 & 0xFF80000000000007;
  if ((v5 & 0x2000) != 0)
  {
    if (!v12)
    {
      v13 = v4 & 0x7FFFFFFFFFFFF8;
      goto LABEL_13;
    }

LABEL_48:
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v8, v9, v10, v4);
  }

  if (v12)
  {
    goto LABEL_48;
  }

  v13 = v4 & 0x7FFFFFFFFFFFF8 | 0x100000000000001;
LABEL_13:
  *v7 = v13;
  memmove(v7 + 8, v2 + 1, v6 - 8);
  v14 = *v2 & 0xFFFFFFFF8;
  if (v14)
  {
    while (1)
    {
      if ((*class_rw_t::ro((*(v14 + 32) & 0xF00007FFFFFFFF8)) & 0x280) != 0)
      {
        v15 = (*(class_rw_t::ro((*(v14 + 32) & 0xF00007FFFFFFFF8)) + 4) + 7) & 0xFFFFFFF8;
        v16 = class_data_bits_t::safe_ro<(Authentication)0>((v14 + 32));
        if ((*v16 & 1) == 0)
        {
          v17 = *(v16 + 16);
          if (v17)
          {
            v18 = *v17;
            if (*v17)
            {
              v19 = &v11[v15];
              do
              {
                v19 += v18 >> 4;
                v20 = v18 & 0xF;
                if ((v18 & 0xF) != 0)
                {
                  do
                  {
                    v22 = *v19++;
                    v21 = v22;
                    if (v22)
                    {
                      v23 = v21;
                    }

                    --v20;
                  }

                  while (v20);
                }

                v24 = *++v17;
                v18 = v24;
              }

              while (v24);
            }
          }
        }

        v25 = *(class_data_bits_t::safe_ro<(Authentication)0>((v14 + 32)) + 56);
        if (v25)
        {
          v26 = *v25;
          if (*v25)
          {
            v27 = (v2 + v15);
            v28 = &v11[v15];
            do
            {
              v28 += v26 >> 4;
              v27 += v26 >> 4;
              v29 = v26 & 0xF;
              if ((v26 & 0xF) != 0)
              {
                do
                {
                  --v29;
                  WeakRetained = objc_loadWeakRetained(v27);
                  objc_initWeak(v28, WeakRetained);

                  ++v28;
                  ++v27;
                }

                while (v29);
              }

              v31 = *++v25;
              v26 = v31;
            }

            while (v31);
          }
        }
      }

      v32 = class_rw_t::ro((*(v14 + 32) & 0xF00007FFFFFFFF8));
      v36 = *(v32 + 48);
      if (v36)
      {
        v37 = *v36;
        v38 = v36[1];
        v39 = v38 * v37;
        if ((v39 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v33, v34, v35, v38, *(v32 + 48), v37);
        }

        if (v39)
        {
          v40 = v39;
          v41 = v36 + 6;
          do
          {
            if (*v41 && **v41 == 58)
            {
              v42 = **(v41 - 2);
              v43 = *(v2 + v42);
              if (v43)
              {
                v44 = *(v2 + v42);
              }

              *&v11[v42] = v43;
            }

            v41 = (v41 + v37);
            v40 -= v37;
          }

          while (v40);
        }
      }

      if (!*(v14 + 8))
      {
        break;
      }

      v14 = *(v14 + 8);
    }
  }

  return v11;
}

Class objc_getRequiredClass(const char *name)
{
  if (!name)
  {
    _objc_fatal("link error: class '%s' not found.", v1, v2, v3, 0);
  }

  result = look_up_class(name);
  if (!result)
  {
    _objc_fatal("link error: class '%s' not found.", v6, v7, v8, name);
  }

  return result;
}

Class objc_getMetaClass(Class name)
{
  if (name)
  {
    v1 = name;
    v2 = look_up_class(name);
    if (v2)
    {
      return (*v2 & 0xFFFFFFFF8);
    }

    else
    {
      return 0;
    }
  }

  return name;
}

void *std::__function::__func<appendHeader::$_0,std::allocator<appendHeader::$_0>,void ()(segment_command_64 const*,long)>::__clone()
{
  result = malloc_type_malloc(0x10uLL, 0x201A97EDuLL);
  *result = &unk_1EEE9B500;
  return result;
}

__n128 std::__function::__func<removeHeader::$_0,std::allocator<removeHeader::$_0>,void ()(segment_command_64 const*,long)>::operator()(__n128 a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = (*(*a3 + 24) + *a4);
  v5 = v4 + *(*a3 + 32);
  v11 = 0;
  if (!objc::SafeRanges::find(v4, &v11, a4, a1) || *(qword_1ED3F6300 + 16 * v11 + 8) != v5)
  {
    _objc_fatal("Cannot find range %#lx..%#lx", v6, v7, v8, v4, v5);
  }

  v10 = qword_1ED3F6308 - 1;
  LODWORD(qword_1ED3F6308) = v10;
  if (v11 < v10)
  {
    result = *(qword_1ED3F6300 + 16 * v10);
    *(qword_1ED3F6300 + 16 * v11) = result;
    HIDWORD(qword_1ED3F6308) &= ~0x80000000;
  }

  return result;
}

void *std::__function::__func<removeHeader::$_0,std::allocator<removeHeader::$_0>,void ()(segment_command_64 const*,long)>::__clone()
{
  result = malloc_type_malloc(0x10uLL, 0x201A97EDuLL);
  *result = &unk_1EEE9B548;
  return result;
}

void logReplacedMethod(const char *a1, char *a2, int a3, const char *a4, void *a5, const void *a6)
{
  if ("load" != a2)
  {
    v26 = v6;
    v27 = v7;
    v14 = dladdr(a5, &v25);
    if (v25.dli_fname)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      dli_fname = "??";
    }

    else
    {
      dli_fname = v25.dli_fname;
    }

    v17 = dladdr(a6, &v25);
    v18 = v25.dli_fname;
    if (v25.dli_fname)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v18 = "??";
    }

    v20 = "<null selector>";
    v21 = "by category ";
    if (a2)
    {
      v20 = a2;
    }

    v22 = "";
    if (a4)
    {
      v22 = a4;
    }

    else
    {
      v21 = "";
    }

    v24 = v20;
    v23 = 45;
    if (a3)
    {
      v23 = 43;
    }

    _objc_inform("REPLACED: %c[%s %s]  %s%s  (IMP was %p (%s), now %p (%s))", v23, a1, v24, v21, v22, a5, dli_fname, a6, v18);
  }
}

void objc_setForwardHandler(void *fwd, void *fwd_stret)
{
  if (fwd)
  {
    v2 = fwd;
  }

  else
  {
    v2 = 0;
  }

  _objc_forward_handler = v2;
}

void objc_setHook_getImageName(objc_hook_getImageName newValue, objc_hook_getImageName *outOldValue)
{
  v2 = GetImageNameHook;
  while (1)
  {
    *outOldValue = v2;
    if (v2)
    {
      v3 = v2;
      if (newValue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (newValue)
      {
LABEL_4:
        v4 = newValue;
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v5 = v3;
    atomic_compare_exchange_strong_explicit(&GetImageNameHook, &v5, v4, memory_order_release, memory_order_relaxed);
    if (v5 == v3)
    {
      break;
    }

    v2 = 0;
    if (v5)
    {
      v2 = v5;
    }
  }
}

void objc_enumerationMutation(id obj)
{
  v4 = enumerationMutationHandler;
  if (!enumerationMutationHandler)
  {
    _objc_fatal("mutation detected during 'for (... in ...)'  enumeration of object %p.", enumerationMutationHandler, v1, v2, obj);
  }

  v4(obj);
}

BOOL sel_isMapped(SEL sel)
{
  v1 = sel;
  if (sel)
  {
    if (_dyld_get_objc_selector() == sel)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v2 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(&selLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v2)
      {
        os_unfair_lock_lock_with_options();
      }

      v4 = objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::find(v1);
      LOBYTE(v1) = (namedSelectors + 8 * dword_1ED3F60A0) != v4 && *v4 == v1;
      v5 = *(StatusReg + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(&selLock, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(&selLock);
      }
    }
  }

  return v1;
}

void sub_1800D244C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(&selLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t objc_sync_try_enter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a1)
  {
    v4 = id2data(a1, 1, 0, a4) + 6;

    return MEMORY[0x1EEE73FC0](v4);
  }

  else
  {
    if (DebugNilSync)
    {
      _objc_inform("NIL SYNC DEBUG: @synchronized(nil); set a breakpoint on objc_sync_nil to debug");
    }

    gdb_objc_class_changed(a1);
    if (DebugNilSync == 2)
    {
      _objc_fatal("@synchronized(nil) is fatal", v5, v6, v7);
    }

    return 1;
  }
}

void objc_setProperty(id self, SEL _cmd, ptrdiff_t offset, id newValue, BOOL atomic, char shouldCopy)
{
  if (offset)
  {
    v7 = (self + offset);
    if ((shouldCopy & 0xFD) != 0)
    {
      v8 = [newValue copyWithZone:0];
    }

    else if (shouldCopy == 2)
    {
      v8 = [newValue mutableCopyWithZone:0];
    }

    else
    {
      if (*v7 == newValue)
      {
        return;
      }

      v8 = newValue;
    }

    v9 = v8;
    if (atomic)
    {
      v10 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v7 >> 4) ^ (v7 >> 9)) & 7)], &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        os_unfair_lock_lock_with_options();
      }

      v12 = *v7;
      *v7 = v9;
      v13 = *(StatusReg + 24);
      v14 = v13;
      atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v7 >> 4) ^ (v7 >> 9)) & 7)], &v14, 0, memory_order_release, memory_order_relaxed);
      if (v14 != v13)
      {
        os_unfair_lock_unlock(&PropertyLocks[16 * (((v7 >> 4) ^ (v7 >> 9)) & 7)]);
      }
    }

    else
    {
      v12 = *v7;
      *v7 = v8;
    }
  }

  else
  {

    object_setClass(self, newValue);
  }
}

void _objc_patch_root_of_class(int a1, objc_class *this, const char *a3, char *a4)
{
  v7 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    os_unfair_lock_lock_with_options();
  }

  if (PrintConnecting)
  {
    v9 = objc_class::nameForLogging(this);
    _objc_inform("CLASS: patching class '%s' (%p) to point to body of %p", v9, this, a4);
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    v13 = &objc_debug_taggedpointer_classes[a4 & 7];
    v14 = *v13;
    if (*v13)
    {
      v15 = *v13;
      v12 = v14;
      if (v14 != __NSUnrecognizedTaggedPointer)
      {
        goto LABEL_14;
      }

      v16 = &objc_debug_taggedpointer_ext_classes[(a4 >> 55)];
      v10 = *v16;
      if (*v16)
      {
        v17 = *v16;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v10 = *a4 & 0x7FFFFFFFFFFFF8;
    if (v10)
    {
      v11 = *a4 & 0x7FFFFFFFFFFFF8;
LABEL_8:
      v12 = v10;
      goto LABEL_14;
    }
  }

  v12 = 0;
LABEL_14:
  if ((v12 & 0xFF80000000000007) != 0)
  {
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", this, a3, a4, v12);
  }

  *this = v12 & 0x7FFFFFFFFFFFF8;
  if (*(a4 + 1))
  {
    v18 = *(a4 + 1);
  }

  else
  {
    v18 = 0;
  }

  *(this + 1) = v18;
  *(this + 2) = &_objc_empty_cache;
  *(this + 3) = 0;
  if (hasSignedClassROPointers(a3))
  {
    v19 = *(a4 + 4);
  }

  *(this + 4) = *(a4 + 4);
  v20 = *(StatusReg + 24);
  v21 = v20;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != v20)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800D2A40(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *_objc_atfork_prepare()
{
  ForkIsMultithreaded = pthread_is_threaded_np() != 0;
  os_unfair_recursive_lock_lock_with_options();
  v0 = PropertyLocks;
  v1 = 8;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v0, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v0 += 16;
    --v1;
  }

  while (v1);
  v4 = StructLocks;
  v5 = 8;
  do
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(v4, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    v4 += 16;
    --v5;
  }

  while (v5);
  v7 = CppObjectLocks;
  v8 = 8;
  do
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(v7, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    v7 += 16;
    --v8;
  }

  while (v8);
  v10 = &dword_1ED3F6448;
  v11 = &unk_1ED3F6480;
  do
  {
    v12 = 0;
    atomic_compare_exchange_strong_explicit(v10, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      os_unfair_lock_lock_with_options();
    }

    v13 = v8 + 1;
    if (v8 <= 6)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 8);
    if (v8 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    v11 += 64;
    ++v8;
  }

  while (v13 != 8);
  v16 = 0;
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v16, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    os_unfair_lock_lock_with_options();
  }

  v17 = 0;
  v19 = &unk_1ED3F6680;
  do
  {
    v20 = 0;
    atomic_compare_exchange_strong_explicit(result, &v20, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v20)
    {
      os_unfair_lock_lock_with_options();
    }

    v21 = v17 + 1;
    if (v17 <= 6)
    {
      result = v19;
    }

    else
    {
      result = 0;
    }

    v19 += 16;
    ++v17;
  }

  while (v21 != 8);
  v22 = 0;
  atomic_compare_exchange_strong_explicit(classInitLock, &v22, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v22)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v23 = 0;
  atomic_compare_exchange_strong_explicit(&pendingInitializeMapLock, &v23, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v23)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v24 = 0;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v24, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v24)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v25 = 0;
  atomic_compare_exchange_strong_explicit(DemangleCacheLock, &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v25)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v26 = 0;
  atomic_compare_exchange_strong_explicit(selLock, &v26, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v26)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v27 = 0;
  atomic_compare_exchange_strong_explicit(objcMsgLogLock, &v27, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v27)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v28 = 0;
  atomic_compare_exchange_strong_explicit(AltHandlerDebugLock, &v28, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v28)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v29 = 0;
  atomic_compare_exchange_strong_explicit(&crashlog_lock, &v29, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v29)
  {

    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void _objc_atfork_parent()
{
  os_unfair_recursive_lock_unlock();
  v0 = PropertyLocks;
  v1 = 8;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v3 = *(StatusReg + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(v0, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(v0);
    }

    v0 += 16;
    --v1;
  }

  while (v1);
  v5 = StructLocks;
  v6 = 8;
  do
  {
    v7 = *(StatusReg + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(v5);
    }

    v5 += 16;
    --v6;
  }

  while (v6);
  v9 = CppObjectLocks;
  v10 = 8;
  do
  {
    v11 = *(StatusReg + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(v9, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      os_unfair_lock_unlock(v9);
    }

    v9 += 16;
    --v10;
  }

  while (v10);
  v13 = &dword_1ED3F6448;
  v14 = &unk_1ED3F6480;
  do
  {
    v15 = *(StatusReg + 24);
    v16 = v15;
    atomic_compare_exchange_strong_explicit(v13, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != v15)
    {
      os_unfair_lock_unlock(v13);
    }

    v17 = v10 + 1;
    if (v10 <= 6)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 + 2;
    if (v10 <= 6)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    v14 += 16;
    ++v10;
  }

  while (v17 != 8);
  v20 = *(StatusReg + 24);
  v21 = v20;
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != v20)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  v22 = 0;
  v24 = &unk_1ED3F6680;
  do
  {
    v25 = *(StatusReg + 24);
    v26 = v25;
    atomic_compare_exchange_strong_explicit(v23, &v26, 0, memory_order_release, memory_order_relaxed);
    if (v26 != v25)
    {
      os_unfair_lock_unlock(v23);
    }

    v27 = v22 + 1;
    if (v22 <= 6)
    {
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    v24 += 16;
    ++v22;
  }

  while (v27 != 8);
  v28 = *(StatusReg + 24);
  v29 = v28;
  atomic_compare_exchange_strong_explicit(classInitLock, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != v28)
  {
    os_unfair_lock_unlock(classInitLock);
  }

  v30 = *(StatusReg + 24);
  v31 = v30;
  atomic_compare_exchange_strong_explicit(&pendingInitializeMapLock, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != v30)
  {
    os_unfair_lock_unlock(&pendingInitializeMapLock);
  }

  v32 = *(StatusReg + 24);
  v33 = v32;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != v32)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  v34 = *(StatusReg + 24);
  v35 = v34;
  atomic_compare_exchange_strong_explicit(DemangleCacheLock, &v35, 0, memory_order_release, memory_order_relaxed);
  if (v35 != v34)
  {
    os_unfair_lock_unlock(DemangleCacheLock);
  }

  v36 = *(StatusReg + 24);
  v37 = v36;
  atomic_compare_exchange_strong_explicit(selLock, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != v36)
  {
    os_unfair_lock_unlock(selLock);
  }

  v38 = *(StatusReg + 24);
  v39 = v38;
  atomic_compare_exchange_strong_explicit(objcMsgLogLock, &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != v38)
  {
    os_unfair_lock_unlock(objcMsgLogLock);
  }

  v40 = *(StatusReg + 24);
  v41 = v40;
  atomic_compare_exchange_strong_explicit(AltHandlerDebugLock, &v41, 0, memory_order_release, memory_order_relaxed);
  if (v41 != v40)
  {
    os_unfair_lock_unlock(AltHandlerDebugLock);
  }

  v42 = *(StatusReg + 24);
  v43 = v42;
  atomic_compare_exchange_strong_explicit(&crashlog_lock, &v43, 0, memory_order_release, memory_order_relaxed);
  if (v43 != v42)
  {

    os_unfair_lock_unlock(&crashlog_lock);
  }
}

objc_class *_objc_atfork_child()
{
  if (ForkIsMultithreaded == 1 && DisableInitializeForkSafety == 0)
  {
    MultithreadedForkChild = 1;
  }

  v1 = 0;
  loadMethodLock = 0;
  do
  {
    PropertyLocks[v1] = 0;
    v1 += 16;
  }

  while (v1 != 128);
  for (i = 0; i != 128; i += 16)
  {
    StructLocks[i] = 0;
  }

  for (j = 0; j != 128; j += 16)
  {
    CppObjectLocks[j] = 0;
  }

  v4 = 0;
  v5 = &dword_1ED3F6448;
  v6 = &unk_1ED3F6480;
  do
  {
    *v5 = 0;
    v7 = v4 + 1;
    if (v4 <= 6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v5 = (v8 + 8);
    if (v4 > 6)
    {
      v5 = 0;
    }

    v6 += 64;
    ++v4;
  }

  while (v7 != 8);
  v9 = 0;
  AssociationsManagerLock = 0;
  v11 = &unk_1ED3F6680;
  do
  {
    v12 = v9 + 1;
    *v10 = 0;
    if (v9 <= 6)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v11 += 16;
    ++v9;
  }

  while (v12 != 8);
  classInitLock[0] = 0;
  pendingInitializeMapLock = 0;
  runtimeLock[0] = 0;
  DemangleCacheLock[0] = 0;
  selLock[0] = 0;
  objcMsgLogLock[0] = 0;
  AltHandlerDebugLock[0] = 0;
  crashlog_lock = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = StatusReg[40];
  if (v14)
  {
    v15 = *(v14 + 8);
    if (v15)
    {
      free(v15);
    }

    *(v14 + 8) = 0;
  }

  v16 = 0;
  StatusReg[41] = 0;
  StatusReg[42] = 0;
  do
  {
    v17 = (&sDataLists + 64 * v16);
    v18 = *v17;
    if (*v17)
    {
      do
      {
        v19 = *v18;
        free(v18);
        v18 = v19;
      }

      while (v19);
    }

    *v17 = 0;
    ++v16;
  }

  while (v16 != 8);
  result = _fetchInitializingClassList(0);
  if (result)
  {
    v24 = result;
    v25 = *result;
    if (*result >= 1)
    {
      v26 = 0;
      do
      {
        result = *(*(v24 + 1) + 8 * v26);
        if (result)
        {
          result = WAITING_FOR_A_CLASS__initialize_LOCK(result, v21, v22, v23);
          v25 = *v24;
        }

        ++v26;
      }

      while (v26 < v25);
    }
  }

  return result;
}

id imp_getBlock(IMP anImp)
{
  v1 = anImp;
  if (anImp)
  {
    v2 = 0;
    v8 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    v4 = pageAndIndexContainingIMP(v1, &v8);
    if (v4)
    {
      if (v4[v8] <= 0x800)
      {
        v1 = 0;
      }

      else
      {
        v1 = v4[v8];
      }
    }

    else
    {
      v1 = 0;
    }

    v5 = *(StatusReg + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return v1;
}

void *weak_entry_for_referent(void *a1, unint64_t a2, const char *a3, char *a4)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1[2];
  v6 = (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (1217387093 * (a2 ^ (a2 >> 4)))) & v5;
  v7 = v6;
  while (1)
  {
    v8 = (*a1 + 40 * v7);
    if (!(a2 + *v8))
    {
      break;
    }

    v7 = (v7 + 1) & v5;
    if (v7 == v6)
    {
      _objc_fatal("bad weak table at %p. This may be a runtime bug or a memory error somewhere else.", a2, a3, a4, *a1);
    }

    if (++v4 > a1[3])
    {
      return 0;
    }
  }

  return v8;
}

uint64_t _initializeSwiftRefcountingThenCallRetain(objc_object *a1, double a2)
{
  Helper_x16__swift_retain = gotLoadHelper_x16__swift_retain(a2);
  *v4 = *(v3 + 3408);
  Helper_x16__swift_release = gotLoadHelper_x16__swift_release(Helper_x16__swift_retain);
  *v7 = *(v6 + 3400);
  return (*v8)(Helper_x16__swift_release);
}

unint64_t objc_object::sidetable_getExtraRC_nolock(objc_object *this)
{
  v3 = *(v1 + 1);
  if (v3)
  {
    v4 = *(v1 + 1);
  }

  if ((v3 + 16 * v1[6]) == v2)
  {
    return 0;
  }

  else
  {
    return v2[1] >> 2;
  }
}

uint64_t objc_object::sidetable_retainCount(objc_object *this)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v3, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = *(v3 + 1);
  if (v6)
  {
    v7 = *(v3 + 1);
  }

  if ((v6 + 16 * v3[6]) == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v5[1] >> 2) + 1;
  }

  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(v3, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(v3);
  }

  return v8;
}

void (*_objc_setBadAllocHandler(void (*result)(objc_class *)))(objc_class *)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  badAllocHandler = v1;
  return result;
}

uint64_t weakTableScan(void)
{
  v0 = 0;
  v1 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = StatusReg;
  do
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v4, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v5 = *(v4 + 6);
    if (v5)
    {
      for (i = 0; i <= v5; ++i)
      {
        v7 = (*(v4 + 4) + 40 * i);
        if ((v7[2] & 3) == 2)
        {
          v8 = v7[1];
          v9 = v7[3] + 1;
        }

        else
        {
          v8 = v7 + 1;
          v9 = 4;
        }

        v10 = *v7;
        if (v10)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = -v10;
          do
          {
            if (*v8)
            {
              v13 = -*v8;
              if (*v13 != v12)
              {
                _objc_inform_now_and_on_crash("Weak reference at %p contains %p, should contain %p", v13, *v13, v12);
                v0 = 1;
              }
            }

            ++v8;
            --v9;
          }

          while (v9);
        }
      }
    }

    StatusReg = v17;
    v14 = *(v17 + 24);
    v15 = v14;
    atomic_compare_exchange_strong_explicit(v4, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != v14)
    {
    }

    ++v1;
  }

  while (v1 != 8);
  return v0 & 1;
}

void objc_clear_deallocating(objc_object *this, uint64_t a2, const char *a3, char *a4)
{
  if ((this & 0x8000000000000000) == 0)
  {
    if (this->isa)
    {
      if ((this->isa & 0x80000000000004) != 0)
      {
        objc_object::clearDeallocating_slow(this, a2, a3, a4);
      }
    }

    else
    {
      objc_object::sidetable_clearDeallocating(this);
    }
  }
}

uint64_t _objc_rootReleaseWasZero(objc_object *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  isa = a1->isa;
  if (a1->isa)
  {
    while (isa >> 55)
    {
      v2 = isa - 0x100000000000000;
      if (isa < 0x100000000000000)
      {
        return objc_object::rootRelease_underflow(a1, 0);
      }

      v3 = isa;
      atomic_compare_exchange_strong_explicit(a1, &v3, v2, memory_order_release, memory_order_relaxed);
      if (v3 == isa)
      {
        if (v2 >> 55)
        {
          return 0;
        }

        __dmb(9u);
        return 1;
      }

      isa = v3;
      if ((v3 & 1) == 0)
      {
        return objc_object::sidetable_release(a1, 0, 0);
      }
    }

    return 0;
  }

  if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) != 0)
  {
    return 0;
  }

  return objc_object::sidetable_release(a1, 0, 0);
}

void weakTableScanThread(void *a1)
{
  pthread_setname_np("ObjC weak reference scanner");
  v6 = xmmword_1800DA180;
  v1 = getenv("OBJC_DEBUG_SCAN_WEAK_TABLES_INTERVAL_NANOSECONDS");
  if (v1)
  {
    v2 = strtoull(v1, 0, 10);
    *&v6 = v2 / 0x3B9ACA00;
    *(&v6 + 1) = v2 % 0x3B9ACA00;
  }

  do
  {
    nanosleep(&v6, 0);
  }

  while (!weakTableScan());
  _objc_fatal("Weak table scan detected a problem", v3, v4, v5, v6);
}

void *objc_tls_direct_base<unsigned long,(tls_key)4,ReturnAutoreleaseInfo::TlsDealloc>::dtor_(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    result = (*(StatusReg + 352) & 0xFFFFFFFFFFFFFFFCLL);
    if (!result)
    {
      break;
    }

    *(StatusReg + 352) = 0;
    *(StatusReg + 360) = 0;
  }

  return result;
}

uint64_t __getPreoptimizedClassesWithMetaClass_block_invoke(uint64_t result, void *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    if (*(result + 40) == (*a2 & 0xFFFFFFFF8))
    {
      **(result + 32) = a2;
      *a4 = 1;
    }
  }

  return result;
}

__n128 __copy_helper_block_e8_32c48_ZTSKZ35getPreoptimizedClassesWithMetaClassE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void _objc_error(objc_object *a1, va_list a2, char *a3)
{
  v8 = 0;
  vasprintf(&v8, "invalid selector (null)", a2);
  ClassName = object_getClassName(a1);
  _objc_fatal("%s: %s", v5, v6, v7, ClassName, v8);
}

void _objc_stochastic_fault(const char *a1, ...)
{
  va_start(va, a1);
  v2 = arc4random_uniform(0x100000u) < 0x1999A;
  _objc_fault_impl(1, v2, a1, va);
}

void _objc_inform_now_and_on_crash(const char *a1, ...)
{
  va_start(va, a1);
  v3[0] = 0;
  __s1 = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a1, va);
  v1 = getpid();
  asprintf(&__s1, "objc[%d]: %s\n", v1, v3[0]);
  _objc_crashlog(__s1);
  _objc_syslog(__s1);
  free(__s1);
  free(v3[0]);
}

uint64_t _objc_inform_deprecated(const char *a1, const char *a2)
{
  if (PrintDeprecation)
  {
    _objc_inform("The function %s is obsolete. Do not use it. Set a breakpoint on _objc_warn_deprecated to find the culprit.", a1);
  }

  return gdb_objc_class_changed(a1);
}

void objc_exception_rethrow(void)
{
  if (PrintExceptions)
  {
    _objc_inform("EXCEPTIONS: rethrowing current exception");
  }

  __cxa_rethrow();
}

void printReplacements(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  if (a3)
  {
    v4 = 0;
    v63 = *(a1 + 30);
    v60 = a3;
    v5 = *algn_1ED3F62F8;
    v66 = dataSegmentsRanges;
    while (1)
    {
      v6 = *(a2 + 16 * v4);
      v61 = v6;
      if ((v63 & 4) != 0)
      {
        v7 = *(v6 + 24);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v7 = *(v6 + 16);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      v8 = *v7;
      v9 = v8 >> 31;
      if (v7 < 0)
      {
        v9 = 2;
      }

      v10 = v9 | (v7 + 2) & 0xFFFFFFFFFFFFFFFCLL;
      entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(v7, a2, a3, a4);
      v62 = a2;
      if (v10 != a2)
      {
        break;
      }

LABEL_68:
      if (++v4 == v60)
      {
        return;
      }
    }

LABEL_10:
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v10 & 3) != 0)
    {
      if ((v10 & 3) == 2)
      {
        v12 = *v11;
        if (*v11)
        {
          v13 = *v11;
          v14 = v12;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v15 = *v11;
        if (v66 <= v11 && v5 > v11)
        {
          v14 = &unk_1FA920D78 + v15;
        }

        else
        {
          v14 = *(v11 + v15);
        }
      }
    }

    else
    {
      v14 = *v11;
    }

    v20 = __sel_registerName(v14, 1, 1);
    if (!v4)
    {
LABEL_48:
      class_rw_t::methods(v70, *(a1 + 32) & 0xF00007FFFFFFFF8);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::begin(v68, v70, v40, v41);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::end(v67, v70, v42, v43);
      while ((list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator==(v68, v67) & 1) == 0)
      {
        v44 = v69;
        v45 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v69 & 3) != 0)
        {
          if ((v69 & 3) == 2)
          {
            v46 = *v45;
            if (*v45)
            {
              v47 = *v45;
              v48 = v46;
            }

            else
            {
              v48 = 0;
            }
          }

          else
          {
            v49 = *v45;
            if (v66 <= v45 && v5 > v45)
            {
              v48 = &unk_1FA920D78 + v49;
            }

            else
            {
              v48 = *(v45 + v49);
            }
          }
        }

        else
        {
          v48 = *v45;
        }

        if (v20 == __sel_registerName(v48, 1, 1))
        {
          v54 = objc_class::nameForLogging(a1);
          v55 = (*(a1 + 30) >> 2) & 1;
          v56 = *v61;
          v57 = v44;
          goto LABEL_66;
        }

        list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator++(v68, v51, v52, v53);
      }

      goto LABEL_67;
    }

    v21 = 0;
    while (1)
    {
      v22 = *(a2 + 16 * v21);
      if ((v63 & 4) != 0)
      {
        v23 = *(v22 + 24);
        if (!v23)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v23 = *(v22 + 16);
        if (!v23)
        {
          goto LABEL_47;
        }
      }

      v24 = *v23;
      v25 = v23[1];
      v26 = v24 & 0xFFFC;
      v27 = v25 * v26;
      if ((v27 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v17, v18, v19, v25, v23, v24 & 0xFFFC);
      }

      v28 = v24 >> 31;
      if (v23 < 0)
      {
        v28 = 2;
      }

      v29 = (v23 + 2) & 0xFFFFFFFFFFFFFFFCLL;
      v30 = (v23 + v27 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v29 != v30)
      {
        v31 = v30 | v28;
        v32 = v28 | v29;
        v33 = v28 | v29;
        while (1)
        {
          v34 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v32 & 3) != 0)
          {
            if ((v32 & 3) == 2)
            {
              v35 = *v34;
              if (*v34)
              {
                v36 = *v34;
                v37 = v35;
              }

              else
              {
                v37 = 0;
              }
            }

            else
            {
              v38 = *v34;
              v39 = v66 <= v34 && v5 > v34;
              v37 = v39 ? &unk_1FA920D78 + v38 : *(v34 + v38);
            }
          }

          else
          {
            v37 = *v34;
          }

          if (v20 == __sel_registerName(v37, 1, 1))
          {
            break;
          }

          v33 += v26;
          v32 += v26;
          if (v33 == v31)
          {
            goto LABEL_47;
          }
        }

        v54 = objc_class::nameForLogging(a1);
        v55 = (*(a1 + 30) >> 2) & 1;
        v56 = *v61;
        v57 = v33;
LABEL_66:
        v58 = method_t::impRaw(v57);
        v59 = method_t::impRaw(v10);
        logReplacedMethod(v54, v20, v55, v56, v58, v59);
LABEL_67:
        v10 += v8 & 0xFFFC;
        if (v10 == v62)
        {
          goto LABEL_68;
        }

        goto LABEL_10;
      }

LABEL_47:
      if (++v21 == v4)
      {
        goto LABEL_48;
      }
    }
  }
}

void objc_defaultForwardHandler(objc_object *a1, objc_selector *a2)
{
  Class = object_getClass(a1);
  isMetaClass = class_isMetaClass(Class);
  ClassName = object_getClassName(a1);
  v10 = "<null selector>";
  if (a2)
  {
    v10 = a2;
  }

  v12 = v10;
  v11 = 45;
  if (isMetaClass)
  {
    v11 = 43;
  }

  _objc_fatal("%c[%s %s]: unrecognized selector sent to instance %p (no message forward handler is installed)", v7, v8, v9, v11, ClassName, v12, a1);
}

uint64_t AutoreleasePoolPage::badPop(AutoreleasePoolPage *this, void *a2)
{
  v2 = this;
  if (DebugPoolAllocation == 2 || (this = dyld_program_sdk_at_least(), (this & 1) != 0) || (this = dyld_program_sdk_at_least(), (this & 1) != 0) || (this = dyld_program_sdk_at_least(), (this & 1) != 0) || (this = dyld_program_sdk_at_least(), (this & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    this = dyld_program_sdk_at_least();
    v3 = this;
  }

  if (AutoreleasePoolPage::badPop(void *)::complained)
  {
    result = gdb_objc_class_changed(this);
    if ((v3 & 1) == 0)
    {
      return result;
    }

LABEL_16:
    _objc_fatal("Invalid autorelease pools are a fatal error", v5, v6, v7);
  }

  AutoreleasePoolPage::badPop(void *)::complained = 1;
  _objc_inform_now_and_on_crash("Invalid or prematurely-freed autorelease pool %p. Set a breakpoint on objc_autoreleasePoolInvalid to debug. ", v2);
  if (v3)
  {
    gdb_objc_class_changed(v8);
    goto LABEL_16;
  }

  _objc_inform("Proceeding anyway.  Memory errors are likely.");

  return gdb_objc_class_changed(v9);
}

void AutoreleasePoolPage::printHiwat(AutoreleasePoolPage *this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 344);
  if (v2 && *v2 != -1583242847)
  {
    AutoreleasePoolPage::busted_die(*(StatusReg + 344));
  }

  v3 = ((*(v2 + 16) - v2 - 56) >> 3) + (*(v2 + 48) << 9);
  if (*(v2 + 52) + 256 < v3)
  {
    v4 = 0;
    do
    {
      *(v2 + 52) = v3;
      v4 += AutoreleasePoolPage::sumOfExtraReleases(v2);
      v2 = *(v2 + 32);
    }

    while (v2);
    _objc_inform("POOL HIGHWATER: new high water mark of %u pending releases for thread %p:", v3, *StatusReg);
    if (v4)
    {
      _objc_inform("POOL HIGHWATER: extra sequential autoreleases of objects: %u", v4);
    }

    _objc_inform_backtrace(v5);
  }
}

uint64_t AutoreleasePoolPage::sumOfExtraReleases(AutoreleasePoolPage *this)
{
  v1 = (this + 56);
  v2 = *(this + 2);
  if (this + 56 >= v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v4 = *v1++;
    v5 = result + ((v4 >> 44) & 0xFF0 | (v4 >> 60));
    if (v4)
    {
      result = v5;
    }

    else
    {
      result = result;
    }
  }

  while (v1 < v2);
  return result;
}

void AutoreleasePoolPage::printAll(AutoreleasePoolPage *this)
{
  _objc_inform("##############");
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  _objc_inform("AUTORELEASE POOLS for thread %p", *StatusReg);
  v2 = *(StatusReg + 344);
  if (v2 >= 2)
  {
    if (*v2 != -1583242847)
    {
LABEL_14:
      AutoreleasePoolPage::busted_die(v2);
    }

    while (1)
    {
      v3 = *(v2 + 32);
      if (!v3)
      {
        break;
      }

      v2 = *(v2 + 32);
      if (*v3 != -1583242847)
      {
        AutoreleasePoolPage::busted_die(v3);
      }
    }

    do
    {
      v3 = (v3 + ((*(v2 + 16) - v2 - 56) >> 3));
      v2 = *(v2 + 40);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  _objc_inform("%llu releases pending.", v3);
  v4 = *(StatusReg + 344);
  if (v4 == 1)
  {
    _objc_inform("[%p]  ................  PAGE (placeholder)", 1);
    _objc_inform("[%p]  ################  POOL (placeholder)", 1);
  }

  else if (v4 >= 2)
  {
    if (*v4 != -1583242847)
    {
      AutoreleasePoolPage::busted_die(v4);
    }

    while (1)
    {
      v2 = *(v4 + 32);
      if (!v2)
      {
        break;
      }

      v4 = *(v4 + 32);
      if (*v2 != -1583242847)
      {
        goto LABEL_14;
      }
    }

    do
    {
      AutoreleasePoolPage::print(v4);
      v4 = *(v4 + 40);
    }

    while (v4);
  }

  _objc_inform("##############");
}

void AutoreleasePoolPage::print(AutoreleasePoolPage *this)
{
  v2 = "";
  if (*(this + 2) == (this + 4096))
  {
    v3 = "(full)";
  }

  else
  {
    v3 = "";
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[43];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0;
      goto LABEL_9;
    }

    if (*v5 != -1583242847)
    {
      goto LABEL_30;
    }
  }

  v6 = StatusReg[43];
LABEL_9:
  if (v6 == this)
  {
    v7 = "(hot)";
  }

  else
  {
    v7 = "";
  }

  if (v5 >= 2)
  {
    while (*v5 == -1583242847)
    {
      v8 = v5;
      v5 = *(v5 + 32);
      if (!v5)
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    AutoreleasePoolPage::busted_die(v5);
  }

  v8 = 0;
LABEL_16:
  if (v8 == this)
  {
    v2 = "(cold)";
  }

  _objc_inform("[%p]  ................  PAGE %s %s %s", this, v3, v7, v2);
  if (*this != -1583242847 || strncmp(this + 4, "AUTORELEASE!", 0xCuLL) || *(this + 3) != *StatusReg)
  {
    AutoreleasePoolPage::busted<void (*)(char const*,...)>(this, _objc_inform);
  }

  v9 = (this + 56);
  if (this + 56 < *(this + 2))
  {
    do
    {
      v10 = *v9;
      if (*v9)
      {
        if ((v10 >> 44) & 0xFF0 | (v10 >> 60))
        {
          object_getClassName((v10 & 0xF00FFFFFFFFFFFFLL));
          v11 = ((*v9 >> 44) & 0xFF0 | (*v9 >> 60)) + 1;
          _objc_inform("[%p]  %#16lx  %s  autorelease count %lu");
        }

        else
        {
          object_getClassName(*v9);
          _objc_inform("[%p]  %#16lx  %s");
        }
      }

      else
      {
        _objc_inform("[%p]  ################  POOL %p");
      }

      ++v9;
    }

    while (v9 < *(this + 2));
  }
}

double gotLoadHelper_x16__swift_release(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libswiftCore_dylib))
  {
    return dlopenHelper_libswiftCore_dylib(result);
  }

  return result;
}

double gotLoadHelper_x16__swift_retain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libswiftCore_dylib))
  {
    return dlopenHelper_libswiftCore_dylib(result);
  }

  return result;
}