uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E34FA0;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_2972AC1FC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((a1 + 3), a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((v1 + 3), v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(void *a1, int *a2, uint64_t **a3)
{
  v6 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    if (a1[10] != *a3)
    {
      goto LABEL_50;
    }

    v17 = (*a3)[1];
    v9 = v6;
    v21 = (v6 - 1);
    if (v17 != a1)
    {
LABEL_41:
      v35 = a2;
      std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(v21, a2, &std::piecewise_construct, &v35)[6] = v17;
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v7 = *a2;
  v8 = a2[2];
  v9 = v6;
  v10 = v5;
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v15 = *(v10 + 8);
        v16 = v15 < 1;
        if (v15 == 1)
        {
          v16 = *(v10 + 10) < v8;
        }

        if (!v16)
        {
          break;
        }

        v10 = v10[1];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      v9 = v10;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    do
    {
      v11 = *(v10 + 8);
      v12 = v11 == v7;
      v16 = v11 < v7;
      v13 = v11 < v7;
      if (v16)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v12)
      {
        v13 = 0;
        v9 = v10;
      }

      else
      {
        v9 = v14;
      }

      v10 = v10[v13];
    }

    while (v10);
  }

LABEL_16:
  if (v9[6] == *a3)
  {
    v17 = (*a3)[1];
    if (v7 == 1)
    {
      v18 = v6;
      v19 = v5;
      while (1)
      {
        v20 = *(v19 + 8);
        if (v20 == 1)
        {
          if (v8 < *(v19 + 10))
          {
            goto LABEL_24;
          }

LABEL_19:
          v19 = v19[1];
          if (!v19)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v20 <= 1)
          {
            goto LABEL_19;
          }

LABEL_24:
          v18 = v19;
          v19 = *v19;
          if (!v19)
          {
            goto LABEL_39;
          }
        }
      }
    }

    v18 = v6;
    v24 = v5;
    do
    {
      v25 = *(v24 + 8);
      v26 = v7 == v25;
      v16 = v7 < v25;
      v27 = v7 >= v25;
      if (v16)
      {
        v28 = v24;
      }

      else
      {
        v28 = v18;
      }

      if (v26)
      {
        v27 = 1;
      }

      else
      {
        v18 = v28;
      }

      v24 = v24[v27];
    }

    while (v24);
LABEL_39:
    if (v18 == v6)
    {
      v21 = (v6 - 1);
      if (v17 != a1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v21 = (v6 - 1);
      if (v17 != v18[6])
      {
        goto LABEL_41;
      }
    }

LABEL_28:
    v22 = v9[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      v29 = v9;
      do
      {
        v23 = v29[2];
        v12 = *v23 == v29;
        v29 = v23;
      }

      while (!v12);
    }

    if (*v21 == v9)
    {
      *v21 = v23;
    }

    --a1[5];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v9);
    operator delete(v9);
  }

LABEL_50:
  v30 = *a3;
  v31 = **a3;
  v32 = (*a3)[1];
  *(v31 + 8) = v32;
  *v32 = v31;
  --a1[2];
  v33 = v30[3];
  if (v33)
  {
    if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v33 + 16))(v33);
      if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v33 + 24))(v33);
      }
    }
  }

  operator delete(v30);
  return v32;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(uint64_t **a1, int *a2, uint64_t a3, void **a4)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    if (*a2 != 1)
    {
      v13 = *(v6 + 8);
      if (v8 == v13)
      {
        return v6;
      }

      v10 = a1[1];
      while (1)
      {
        if (v8 < v13)
        {
          v6 = *v10;
          v7 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= v8)
          {
            return v10;
          }

          v6 = v10[1];
          if (!v6)
          {
LABEL_21:
            v7 = v10 + 1;
            goto LABEL_22;
          }
        }

        v13 = *(v6 + 8);
        v10 = v6;
        if (v8 == v13)
        {
          return v6;
        }
      }
    }

    v9 = a2[2];
    while (1)
    {
      v10 = v6;
      v11 = *(v6 + 8);
      if (v11 == 1)
      {
        v12 = *(v6 + 10);
        if (v9 >= v12)
        {
          if (v12 >= v9)
          {
            return v10;
          }

          goto LABEL_10;
        }

LABEL_4:
        v6 = *v6;
        v7 = v10;
        if (!*v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11 > 1)
        {
          goto LABEL_4;
        }

LABEL_10:
        v6 = v6[1];
        if (!v6)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v10 = (a1 + 1);
LABEL_22:
  v15 = operator new(0x38uLL);
  v16 = *(*a4 + 2);
  v15[4] = **a4;
  *(v15 + 10) = v16;
  v15[6] = 0;
  *v15 = 0;
  v15[1] = 0;
  v15[2] = v10;
  *v7 = v15;
  v17 = **a1;
  if (v17)
  {
    *a1 = v17;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
  a1[2] = (a1[2] + 1);
  return v15;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
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

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2972AD0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::signals2::slot_base::~slot_base(boost::signals2::slot_base *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v3 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v3);
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

void *std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](void *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    v7 = 0;
    *a1 = v6;
    a1[1] = v6;
    a1[2] = &v6[v5];
    do
    {
      v8 = &v3[v7];
      v9 = &v6[v7];
      v10 = *&v3[v7 + 8];
      if ((*&v3[v7] ^ (*&v3[v7] >> 31)) == 2)
      {
        *(v9 + 1) = (*(*v10 + 32))(v10);
      }

      else
      {
        *(v9 + 1) = v10;
        v11 = *&v3[v7 + 16];
        *&v6[v7 + 16] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed);
        }
      }

      *v9 = *v8 ^ (*v8 >> 31);
      v7 += 24;
    }

    while (v8 + 6 != v4);
    a1[1] = &v6[v7];
  }

  return a1;
}

void sub_2972AD3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v13 = v10 + v11 - 24;
    v14 = -v11;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v13);
      v13 -= 24;
      v14 += 24;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

atomic_uint *boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 2)
  {
    result = *(a1 + 8);
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  else if (v1 == 1)
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  return result;
}

uint64_t boost::weak_ptr<void>::~weak_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void ***std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E34CE0;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = &unk_2A1E34D48;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result ^ (*result >> 31);
  if (v2 == 2)
  {
    (*(**(result + 8) + 16))(&v8);
    *(a2 + 8) = (*(*v8 + 16))(v8);
    *a2 = 1;
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      while (v4)
      {
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 1, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == v4;
        v4 = v5;
        if (v6)
        {
          *(a2 + 8) = *(result + 8);
          *(a2 + 16) = v3;
          *a2 = 0;
          return result;
        }
      }

      v3 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = v3;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_2972ADA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void (***boost::function<void ()(BOOL)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x800000029742F438 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029742F438 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>,void,BOOL>::invoke(uint64_t a1, char a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v18 = 1;
LABEL_11:
    v17 = 0;
    v22[0] = 0;
    goto LABEL_21;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v12 = v11;
    if (v11)
    {
      v13 = _Block_copy(v11);
      v14 = v13;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v16 = v15;
        if (v15)
        {
          v17 = _Block_copy(v15);
          v22[0] = v17;
          _Block_release(v16);
        }

        else
        {
          v17 = 0;
          v22[0] = 0;
        }

        _Block_release(v14);
      }

      else
      {
        v17 = 0;
        v22[0] = 0;
      }

      _Block_release(v12);
    }

    else
    {
      v17 = 0;
      v22[0] = 0;
    }

    _Block_release(v10);
  }

  else
  {
    v17 = 0;
    v22[0] = 0;
  }

  _Block_release(v8);
  v18 = 0;
LABEL_21:
  v19 = operator new(1uLL);
  *v19 = a2;
  v20 = operator new(0x20uLL);
  *v20 = boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable;
  if (v17)
  {
    v21 = _Block_copy(v17);
  }

  else
  {
    v21 = 0;
  }

  v20[1] = v21;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvbEEEb_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  block[4] = v20;
  block[5] = v19;
  dispatch_async(v4, block);
  if (boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable && (boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable & 1) == 0 && boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable[0])
  {
    (boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable[0])(v22, v22, 2);
  }

  if ((v18 & 1) == 0)
  {
    _Block_release(v6);
  }
}

void sub_2972AE028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  boost::function<void ()(BOOL)>::~function(&a9);
  if ((v10 & 1) == 0)
  {
    _Block_release(v9);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvbEEEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v8, "call to empty boost::function");
    v8.__vftable = &unk_2A1E35198;
    boost::throw_exception<boost::bad_function_call>(&v8);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1, **(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    operator delete(v7);
  }
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_2A1E35168;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E350F0;
  *(a1 + 8) = &unk_2A1E35120;
  *(a1 + 24) = &unk_2A1E35148;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E351C0;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

char *boost::wrapexcept<boost::bad_function_call>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E35168;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_2A1E35198;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E351C0;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E350F0;
  *(v2 + 1) = &unk_2A1E35120;
  *(v2 + 3) = &unk_2A1E35148;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void sub_2972AE41C(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E351C0;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &unk_2A1E351C0;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &unk_2A1E351C0;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  p_imp = &a1[-1].__imp_;
  std::runtime_error::~runtime_error(a1);

  operator delete(p_imp);
}

{
  a1->__vftable = &unk_2A1E351C0;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_2A1E351C0;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete(&a1[-2].__imp_);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E35168;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2A1E35198;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E351C0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E350F0;
  *(a1 + 8) = &unk_2A1E35120;
  *(a1 + 24) = &unk_2A1E35148;
  return a1;
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_2972AEAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_2972AEB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_2972AEB30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(BOOL)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x800000029742F476 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029742F476 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function1<void,BOOL>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_2972AECFC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,BOOL>::~function1(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

char *std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

  if (v6)
  {
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(24 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v9 = &v7[24 * v6];
  v10 = *a2 ^ (*a2 >> 31);
  v12 = (a2 + 8);
  v11 = *(a2 + 8);
  if (v10 == 2)
  {
    *(v8 + 1) = (*(*v11 + 32))(v11);
    v19 = *a2 ^ (*a2 >> 31);
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = v19;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  else if (v10 == 1)
  {
    v13 = *(a2 + 16);
    *(v8 + 1) = v11;
    *(v8 + 2) = v13;
    *v12 = 0;
    *(a2 + 16) = 0;
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = 1;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *(a2 + 16);
    *(v8 + 1) = v11;
    *(v8 + 2) = v20;
    *v12 = 0;
    *(a2 + 16) = 0;
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = 0;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  v28 = v16;
  v29 = &v7[24 * v6];
  v21 = 0;
  v22 = &v7[24 * v2 - 8 * (v18 >> 3)];
  do
  {
    v23 = &v14[v21];
    v24 = &v22[v21];
    v25 = *&v14[v21 + 8];
    if ((*&v14[v21] ^ (*&v14[v21] >> 31)) == 2)
    {
      *(v24 + 1) = (*(*v25 + 32))(v25);
    }

    else
    {
      *(v24 + 1) = v25;
      v26 = *&v14[v21 + 16];
      *&v22[v21 + 16] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 12), 1u, memory_order_relaxed);
      }
    }

    *&v22[v21] = *v23 ^ (*v23 >> 31);
    v21 += 24;
  }

  while (v23 + 6 != v15);
  do
  {
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v14);
    v14 += 24;
  }

  while (v14 != v15);
  v14 = *a1;
  v16 = v28;
  v9 = v29;
LABEL_26:
  *a1 = (v8 - v16);
  a1[1] = v17;
  a1[2] = v9;
  if (v14)
  {
    operator delete(v14);
  }

  return v17;
}

void sub_2972AF018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_2972AF02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (v6)
  {
    v8 = a4 + v6 + a2 + a3 - 24;
    v9 = -v6;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v8);
      v8 -= 24;
      v9 += 24;
    }

    while (v9);
  }

  std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E34E88;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E34E88;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = operator new(0x18uLL);
  *v7 = &unk_2A1E34EE8;
  v7[1] = v6;
  v7[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v7;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a2 = v7;
  }
}

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E34E88;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E34EE8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E34EE8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E34EE8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void data::TransportService::State::unblockThrottling_sync(data::TransportService::State *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Disabling throttling", &v13, 2u);
  }

  if (*(this + 10))
  {
    v3 = *(this + 4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Stop Listening for UI events", &v13, 2u);
    }

    v4 = *(this + 11);
    *(this + 10) = 0;
    *(this + 11) = 0;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(this + 12);
    *(this + 12) = 0;
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(this + 4);
    v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", &v13, 2u);
    }
  }

  if (*(this + 10) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 12) == 1)
  {
    v8 = *(this + 4);
    v5 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v13 = 136315394;
      v14 = "Throttled";
      v15 = 2080;
      v16 = "Idle";
      _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", &v13, 0x16u);
    }

    *(this + 12) = 0;
  }

  Instance = ApplePDPHelperInterface::getInstance(v5);
  if ((ApplePDPHelperInterface::activateLowPowerPDPThrottle(Instance) & 1) == 0 && (v10 = *(this + 4), os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "Failed to disable flow for throttling", &v13, 2u);
    v12 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_21:
    v11 = *MEMORY[0x29EDCA608];
  }
}

void ___ZN4data16TransportService5State13enterLowPowerEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(v1 + 96);
    *(v1 + 96) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", &v10, 2u);
    }
  }

  v5 = *(v1 + 48);
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *(v1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Idle";
      if (v5 == 1)
      {
        v7 = "Throttled";
      }

      v10 = 136315394;
      v11 = v7;
      v12 = 2080;
      v13 = "LowPower";
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", &v10, 0x16u);
    }

    *(v1 + 48) = 2;
  }

  v8 = *(v1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Entered low power", &v10, 2u);
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  if ((v2 - 1) <= 1)
  {
    v3 = *(v1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "LowPower";
      if (v2 != 2)
      {
        v4 = "Throttled";
      }

      *buf = 136315394;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "Throttled";
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", buf, 0x16u);
    }

    *(v1 + 48) = 1;
    data::TransportService::State::startLimitTimer_sync(v1);
  }

  v5 = *(v1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Exited Low Power", buf, 2u);
  }

  if (!*(v1 + 80))
  {
    v7 = *(v1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Listening for UI events", buf, 2u);
    }

    pthread_mutex_lock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
    v8 = xmmword_2A13993F8;
    if (!xmmword_2A13993F8)
    {
      memset(buf, 170, 16);
      v9 = operator new(0x40uLL);
      sys::UIObserver::UIObserver(v9);
      std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(buf, v9);
      v10 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v11 = *(&xmmword_2A13993F8 + 1);
      xmmword_2A13993F8 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v8 = xmmword_2A13993F8;
    }

    v16 = *(&xmmword_2A13993F8 + 1);
    if (*(&xmmword_2A13993F8 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13993F8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
    sys::UIObserver::observe(v8, 1, &v17);
    v13 = v17;
    v17 = 0uLL;
    v14 = *(v1 + 88);
    *(v1 + 80) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(&v17 + 1);
    if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_2972AFCA4(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  _Unwind_Resume(a1);
}

void data::TransportService::State::startLimitTimer_sync(data::TransportService::State *this)
{
  if (*(this + 10) == 1)
  {
    v2 = dispatch_time(0, 1000000000 * *(this + 11) + 500000000);
    v3 = *(this + 12);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }

      v5 = *(this + 4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", buf, 2u);
      }
    }

    v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 2));
    v7 = *(this + 12);
    *(this + 12) = v6;
    if (v7)
    {
      dispatch_release(v7);
      v6 = *(this + 12);
    }

    dispatch_source_set_timer(v6, v2, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v8 = *(this + 1);
    if (!v8 || (v9 = *this, (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    p_shared_weak_owners = &v10->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v11);
    }

    v13 = *(this + 12);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN4data16TransportService5State20startLimitTimer_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_50;
    handler[4] = this;
    handler[5] = v9;
    v16 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(*(this + 12));
    v14 = *(this + 4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v14, OS_LOG_TYPE_DEFAULT, "#I Limit timer started", buf, 2u);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    std::__shared_weak_count::__release_weak(v11);
  }
}

void ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E34F30;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKN4data16TransportService5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKN4data16TransportService5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4data16TransportService5State20startLimitTimer_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Limit timer expired", v7, 2u);
        }

        data::TransportService::State::unblockThrottling_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_2972B0210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN4data16TransportService5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN4data16TransportService5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4data16TransportService5State9setConfigENS0_16ThrottlingConfigE_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT) && ((data::TransportService::ThrottlingConfig::asString((a1 + 40), __p), v14 >= 0) ? (v4 = __p) : (v4 = __p[0]), *buf = 136315138, v16 = v4, _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Config set to %s", buf, 0xCu), v14 < 0))
  {
    operator delete(__p[0]);
    v5 = *(v2 + 40);
    v6 = *(a1 + 40);
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(a1 + 40);
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  *(v2 + 40) = v6;
  v7 = *(v2 + 32);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v6;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Throttling %d", __p, 8u);
  }

  Instance = ApplePDPHelperInterface::getInstance(v8);
  if ((ApplePDPHelperInterface::enableLowPowerPDPThrottle(Instance) & 1) == 0)
  {
    v10 = *(v2 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v6;
      _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "Failed setting throttling to %d", __p, 8u);
    }
  }

  v5 = *(a1 + 40);
LABEL_13:
  if (v5 == 1)
  {
    v11 = *(a1 + 44);
    if (*(v2 + 44) != v11)
    {
      *(v2 + 44) = v11;
      if (*(v2 + 96))
      {
        data::TransportService::State::startLimitTimer_sync(v2);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void ___ZNK4data16TransportService5State9dumpStateEv_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    data::TransportService::ThrottlingConfig::asString((v1 + 40), __p);
    if (v15 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = *__p;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Config: %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(*__p);
    }

    v2 = *(v1 + 32);
  }

  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(v1 + 48);
    if (v5 > 2)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_29EE67508[v5];
    }

    *__p = 136315138;
    *&__p[4] = v6;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Low Power State %s", __p, 0xCu);
  }

  memset(buf, 0, 12);
  ApplePDPHelperInterface::getInstance(v4);
  NumLowPowerPDPThrottleStats = ApplePDPHelperInterface::getNumLowPowerPDPThrottleStats();
  v8 = *(v1 + 32);
  if (NumLowPowerPDPThrottleStats)
  {
    if (os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109632;
      *&__p[4] = *buf;
      *&__p[8] = 1024;
      *&__p[10] = *&buf[4];
      v13 = 1024;
      v14 = *&buf[8];
      _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Blocked outgoing packets: %u, non-baseband wakes: %u, incoming traffic deactivations: %u", __p, 0x14u);
      v9 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  else if (os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "Failed to query throttle stats", __p, 2u);
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Unblocking throttling", v3, 2u);
  }

  data::TransportService::State::unblockThrottling_sync(v1);
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<sys::UIObserver>::~PthreadMutexGuardPolicy, &ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

void AppleBasebandManagerInitServer(const char *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v30 = *a2;
  v31 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a2[3];
  v28 = a2[2];
  v29 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a2[5];
  v26[2] = a2[4];
  v27 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v26[0] = v4;
    v26[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    abm::AWDHelperSetConnection(v26);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v8 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v32);
    v9 = *&v32.__r_.__value_.__l.__data_;
    *&v32.__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&off_2A1399448 + 1);
    off_2A1399448 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    size = v32.__r_.__value_.__l.__size_;
    if (v32.__r_.__value_.__l.__size_ && !atomic_fetch_add((v32.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v8 = off_2A1399448;
  }

  v24 = v8;
  v25 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (!v8)
  {
    goto LABEL_37;
  }

  v12 = strlen(a1);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v12 | 7) + 1;
    }

    p_dst = operator new(v17);
    __dst.__r_.__value_.__l.__size_ = v13;
    __dst.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
LABEL_33:
    memcpy(p_dst, a1, v13);
    p_dst->__r_.__value_.__s.__data_[v13] = 0;
    v15 = *v8;
    v16 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_34:
    std::string::__init_copy_ctor_external(&v32, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    goto LABEL_35;
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  p_dst = &__dst;
  if (v12)
  {
    goto LABEL_33;
  }

  __dst.__r_.__value_.__s.__data_[0] = 0;
  v15 = *v8;
  v16 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  v32 = __dst;
LABEL_35:
  ABMServerInternal::init(v15, &v32, a2);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_37:
  abm::asString();
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v32;
  }

  else
  {
    v18 = v32.__r_.__value_.__r.__words[0];
  }

  syslog(5, "%s hosting ABM with profile: %s", a1, v18);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v19 = v25;
  if (v25 && !atomic_fetch_add((v25 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    v22 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v22 = v31;
    if (!v31)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }
}

void sub_2972B0B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  operator delete(v21);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a19);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a21);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v22 - 96);
  _Unwind_Resume(a1);
}

uint64_t AppleBasebandManagerStartServer(NSObject *a1)
{
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v2 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A1399448 + 1);
    off_2A1399448 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399448;
  }

  v6 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  result = ABMServerInternal::start(*v2, a1);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t AppleBasebandManagerStopServer(NSObject *a1)
{
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v2 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A1399448 + 1);
    off_2A1399448 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399448;
  }

  v6 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  result = ABMServerInternal::stop(*v2, a1);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t AppleBasebandManagerShutdownServer(NSObject *a1)
{
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v2 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A1399448 + 1);
    off_2A1399448 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399448;
  }

  v6 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  result = ABMServerInternal::shutdown(*v2, a1);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

void OBDManager::create(char *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, OBDManager **a5@<X8>)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x80uLL);
  v11 = *a2;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = a3[1];
  v27 = *a3;
  v28 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a4;
  v14 = a4[1];
  v26[0] = v13;
  v26[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OBDManager::OBDManager(v10, a1, &object, &v27, v26);
  v30 = v10;
  *buf = v10;
  v15 = operator new(0x20uLL);
  v15[1] = 0;
  v16 = v15 + 1;
  *v15 = &unk_2A1E35270;
  v15[2] = 0;
  v15[3] = v10;
  v31 = v15;
  *buf = 0;
  v17 = *(v10 + 2);
  if (!v17)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 1) = v10;
    *(v10 + 2) = v15;
    if (atomic_fetch_add(v16, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v17->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 1) = v10;
    *(v10 + 2) = v15;
    v18 = v15;
    std::__shared_weak_count::__release_weak(v17);
    v15 = v18;
    if (!atomic_fetch_add(v16, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_12:
      v19 = v15;
      (*(*v15 + 16))();
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_13:
  if (*buf)
  {
    OBDManager::~OBDManager(*buf);
    operator delete(v20);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v21 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v22 = v30;
  if (v30 && OBDManager::init(v30))
  {
    v23 = v31;
    *a5 = v22;
    a5[1] = v23;
    return;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v24 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

LABEL_34:
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v24, OS_LOG_TYPE_ERROR, "Failed to create OBD Manager!", buf, 2u);
    *a5 = 0;
    a5[1] = 0;
    v25 = v31;
    if (!v31)
    {
      return;
    }

    goto LABEL_30;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
  v24 = qword_2A1399CD8;
  if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_34;
  }

LABEL_29:
  *a5 = 0;
  a5[1] = 0;
  v25 = v31;
  if (!v31)
  {
    return;
  }

LABEL_30:
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }
}

void sub_2972B157C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2972B1590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::unique_ptr<OBDManager>::~unique_ptr[abi:ne200100](va2);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

BOOL OBDManager::init(OBDManager *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    v9 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      return v2 != 0;
    }

    *buf = 0;
    v10 = "Audio Manager is null pointer!";
LABEL_30:
    _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    return v2 != 0;
  }

  v3 = *(this + 8);
  if (!v3)
  {
    v9 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      return v2 != 0;
    }

    *buf = 0;
    v10 = "On-Body handler is not created";
    goto LABEL_30;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = *(this + 8);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN10OBDManager4initEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e11_v16__0i8i12l;
  aBlock[4] = this;
  aBlock[5] = v4;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = _Block_copy(aBlock);
  v7 = *(this + 3);
  if (v7)
  {
    dispatch_retain(v7);
  }

  v15 = v6;
  v16 = v7;
  v8 = v3[5];
  if (v8 >= v3[6])
  {
    v12 = std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(v3 + 4, &v15);
    v7 = v16;
    v3[5] = v12;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v6)
  {
    *v8 = _Block_copy(v6);
    v8[1] = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *v8 = 0;
  v8[1] = v7;
  if (v7)
  {
LABEL_12:
    dispatch_retain(v7);
  }

LABEL_13:
  v3[5] = (v8 + 2);
  if (v7)
  {
LABEL_14:
    dispatch_release(v7);
  }

LABEL_15:
  if (v15)
  {
    _Block_release(v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return v2 != 0;
}

void sub_2972B17C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    if (!v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

uint64_t OBDManager::OBDManager(uint64_t a1, char *__s, NSObject **a3, void *a4, void *a5)
{
  v7 = __s;
  v9 = 0x7FFFFFFFFFFFFFF7;
  v10 = strlen(__s);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v10 | 7) + 1;
    }

    p_dst = operator new(v19);
    *(&__dst + 1) = v11;
    v60 = v19 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v60) = v10;
    p_dst = &__dst;
    if (!v10)
    {
      LOBYTE(__dst) = 0;
      v13 = SHIBYTE(v60);
      if ((SHIBYTE(v60) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, v7, v11);
  *(p_dst + v11) = 0;
  v13 = SHIBYTE(v60);
  if ((SHIBYTE(v60) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v14 = &__dst;
    if (v13 == 22)
    {
      v56 = a5;
      v15 = v7;
      v16 = a4;
      v17 = 22;
      v18 = 23;
LABEL_15:
      v20 = 2 * v17;
      if (v18 > 2 * v17)
      {
        v20 = v18;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v17 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v14 + v13) = 46;
    v27 = v13 + 1;
    if (SHIBYTE(v60) < 0)
    {
      *(&__dst + 1) = v27;
    }

    else
    {
      HIBYTE(v60) = v27 & 0x7F;
    }

    v26 = v14 + v27;
    goto LABEL_34;
  }

LABEL_12:
  v13 = *(&__dst + 1);
  v18 = v60 & 0x7FFFFFFFFFFFFFFFLL;
  v17 = (v60 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 != *(&__dst + 1))
  {
    v14 = __dst;
    goto LABEL_30;
  }

  v56 = a5;
  if (v18 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v7;
  v14 = __dst;
  v16 = a4;
  if (v17 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v24 = operator new(v22);
  v25 = v24;
  if (v17)
  {
    memmove(v24, v14, v17);
  }

  v25[v17] = 46;
  if (!v23)
  {
    operator delete(v14);
  }

  *(&__dst + 1) = v18;
  v60 = v22 | 0x8000000000000000;
  *&__dst = v25;
  v26 = &v25[v18];
  a4 = v16;
  v7 = v15;
  a5 = v56;
LABEL_34:
  *v26 = 0;
  v62 = v60;
  *v61 = __dst;
  v60 = 0;
  __dst = 0uLL;
  v28 = SHIBYTE(v62);
  if ((SHIBYTE(v62) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v62) - 13) < 0xA)
    {
      v29 = (SHIBYTE(v62) + 10);
      v30 = v61;
      v31 = 22;
LABEL_40:
      v32 = 2 * v31;
      if (v29 > 2 * v31)
      {
        v32 = v29;
      }

      if ((v32 | 7) == 0x17)
      {
        v33 = 25;
      }

      else
      {
        v33 = (v32 | 7) + 1;
      }

      if (v32 >= 0x17)
      {
        v9 = v33;
      }

      else
      {
        v9 = 23;
      }

      v34 = v31 == 22;
      goto LABEL_49;
    }

    v39 = v61;
LABEL_56:
    v40 = v39 + v28;
    *v40 = *"OBDManager";
    *(v40 + 4) = 29285;
    v41 = v28 + 10;
    if (SHIBYTE(v62) < 0)
    {
      v61[1] = (v28 + 10);
    }

    else
    {
      HIBYTE(v62) = v41 & 0x7F;
    }

    v38 = v39 + v41;
    goto LABEL_60;
  }

  v28 = v61[1];
  v31 = (v62 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v31 - v61[1] >= 0xA)
  {
    v39 = v61[0];
    goto LABEL_56;
  }

  v29 = v61[1] + 10;
  if ((0x7FFFFFFFFFFFFFF7 - (v62 & 0x7FFFFFFFFFFFFFFFLL)) < v61[1] - v31 + 10)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v30 = v61[0];
  if (v31 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_40;
  }

  v34 = 0;
LABEL_49:
  v35 = operator new(v9);
  v36 = v35;
  if (v28)
  {
    memmove(v35, v30, v28);
  }

  v37 = v36 + v28;
  *v37 = *"OBDManager";
  *(v37 + 4) = 29285;
  if (!v34)
  {
    operator delete(v30);
  }

  v61[1] = v29;
  v62 = v9 | 0x8000000000000000;
  v61[0] = v36;
  v38 = &v29[v36];
LABEL_60:
  *v38 = 0;
  v64 = v62;
  *__p = *v61;
  v61[1] = 0;
  v62 = 0;
  v61[0] = 0;
  if (v64 >= 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0];
  }

  ctu::OsLogLogger::OsLogLogger(a1, "com.apple.telephony.abm", v42);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v60) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_87;
    }
  }

  else if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v61[0]);
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
LABEL_66:
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v44 = *a3;
    *(a1 + 24) = *a3;
    if (!v44)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_87:
  operator delete(__dst);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v44 = *a3;
  *(a1 + 24) = *a3;
  if (v44)
  {
LABEL_67:
    dispatch_retain(v44);
  }

LABEL_68:
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = *a5;
  *(a1 + 32) = 257;
  v45 = a5[1];
  *(a1 + 72) = v45;
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

  v46 = *a4;
  *(a1 + 104) = *a4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  v47 = a4[1];
  *(a1 + 112) = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    v46 = *(a1 + 104);
  }

  if (!v46)
  {
    AudioManager::create(v7, __p);
    v53 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v54 = *(a1 + 112);
    *(a1 + 104) = v53;
    if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    v55 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v55->__on_zero_shared)(v55);
      std::__shared_weak_count::__release_weak(v55);
    }
  }

  if (!*(a1 + 64))
  {
    v48 = *(a1 + 24);
    object = v48;
    if (v48)
    {
      dispatch_retain(v48);
    }

    CMOnBodyDelegate::create(&object, v43, __p);
    v49 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v50 = *(a1 + 72);
    *(a1 + 64) = v49;
    if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v50->__on_zero_shared)(v50);
      std::__shared_weak_count::__release_weak(v50);
    }

    v51 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    v44 = object;
    if (object)
    {
      dispatch_release(object);
    }
  }

  *(a1 + 120) = capabilities::txpower::supportedControlInput(v44);
  return a1;
}

void sub_2972B1E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24);
    v28 = v23[12];
    if (!v28)
    {
LABEL_3:
      v29 = v23[10];
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24);
    v28 = v23[12];
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v28);
  v29 = v23[10];
  if (!v29)
  {
LABEL_4:
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v26);
    std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::~vector[abi:ne200100](v25);
    v30 = v23[3];
    if (!v30)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  dispatch_release(v29);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v26);
  std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::~vector[abi:ne200100](v25);
  v30 = v23[3];
  if (!v30)
  {
LABEL_5:
    v31 = v23[2];
    if (!v31)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_11:
  dispatch_release(v30);
  v31 = v23[2];
  if (!v31)
  {
LABEL_7:
    MEMORY[0x29C26DE80](v23);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v31);
  goto LABEL_7;
}

void sub_2972B1F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((SHIBYTE(a14) & 0x80000000) == 0)
      {
        _Unwind_Resume(a1);
      }

      JUMPOUT(0x2972B1E9CLL);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x2972B1E94);
}

void OBDManager::~OBDManager(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  if (*(this + 8))
  {
    v5 = *(this + 10);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(this + 10);
      *(this + 10) = 0;
      if (v6)
      {
        dispatch_release(v6);
        v7 = *(this + 10);
        *(this + 10) = 0;
        if (v7)
        {
          dispatch_release(v7);
        }
      }
    }

    CMOnBodyDelegate::stopMotionDetection(*(this + 8));
  }

  v8 = *(this + 5);
  for (i = *(this + 6); i != v8; i -= 16)
  {
    v10 = *(i - 8);
    if (v10)
    {
      dispatch_release(v10);
    }

    v12 = *(i - 16);
    v11 = v12;
    if (v12)
    {
      _Block_release(v11);
    }
  }

  *(this + 6) = v8;
  v13 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(this + 14);
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v16 = *(this + 12);
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = *(this + 10);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 9);
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(this + 5);
    if (!v19)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v19 = *(this + 5);
    if (!v19)
    {
      goto LABEL_42;
    }
  }

  v20 = *(this + 6);
  v21 = v19;
  if (v20 != v19)
  {
    do
    {
      v22 = *(v20 - 1);
      if (v22)
      {
        dispatch_release(v22);
      }

      v24 = *(v20 - 2);
      v20 -= 16;
      v23 = v24;
      if (v24)
      {
        _Block_release(v23);
      }
    }

    while (v20 != v19);
    v21 = *(this + 5);
  }

  *(this + 6) = v19;
  operator delete(v21);
LABEL_42:
  v25 = *(this + 3);
  if (v25)
  {
    dispatch_release(v25);
  }

  v26 = *(this + 2);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  JUMPOUT(0x29C26DE80);
}

void OBDManager::stopOBDTimer(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {

        dispatch_release(v4);
      }
    }
  }
}

void OBDManager::stopCoreMotionCallbackWatchdog(OBDManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 10);
    *(this + 10) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 10);
      *(this + 10) = 0;
      if (v4)
      {

        dispatch_release(v4);
      }
    }
  }
}

void ___ZN10OBDManager4initEv_block_invoke(void *a1, unsigned int a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = a1[5];
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v12 = "Unknown";
    }

    else
    {
      v12 = off_29EE67540[a2];
    }

    v13 = "Confidence Level Unknown";
    if (a3 == 1)
    {
      v13 = "Confidence Level High";
    }

    if (!a3)
    {
      v13 = "Confidence Level Low";
    }

    v18 = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I On Body Callback: OnBody: %s, confidence: %s", &v18, 0x16u);
  }

  *(v7 + 88) = a2;
  if (*(v7 + 96))
  {
    OBDManager::startCoreMotionCallbackWatchdog(v7);
    v14 = *MEMORY[0x29EDCA608];
    return;
  }

  v15 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&dword_297288000, v15, OS_LOG_TYPE_ERROR, "OBD has not started yet!", &v18, 2u);
    v17 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_18:
    v16 = *MEMORY[0x29EDCA608];
  }
}

void OBDManager::startCoreMotionCallbackWatchdog(OBDManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 10);
    *(this + 10) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 10);
      *(this + 10) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  v5 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
  v6 = *(this + 10);
  *(this + 10) = v5;
  if (v6)
  {
    dispatch_release(v6);
    v5 = *(this + 10);
  }

  v7 = dispatch_time(0, 5120000000);
  dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 10);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3321888768;
  handler[2] = ___ZN10OBDManager31startCoreMotionCallbackWatchdogEv_block_invoke;
  handler[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e5_v8__0l;
  handler[4] = this;
  handler[5] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(*(this + 10));
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

char *OBDManager::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[6];
  if (v4 >= a1[7])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(a1 + 5, a2);
    a1[6] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[6] = (v4 + 2);
  }

  return result;
}

void OBDManager::start(OBDManager *this, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 12))
  {
    v4 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I WARNING - OBD Manager has started already!", &v7, 2u);
    }
  }

  if (*(this + 8))
  {
    OBDManager::startCoreMotionCallbackWatchdog(this);
    CMOnBodyDelegate::startMotionDetection(*(this + 8));
  }

  OBDManager::startOBDTimer(this, a2);
  v5 = *this;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Core Motion OnBody Detection is starting with %lld msec", &v7, 0xCu);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void OBDManager::startOBDTimer(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v5)
    {
      dispatch_release(v5);
      v6 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v6)
      {
        dispatch_release(v6);
      }
    }
  }

  v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(a1 + 24));
  v8 = *(a1 + 96);
  *(a1 + 96) = v7;
  if (v8)
  {
    dispatch_release(v8);
    v7 = *(a1 + 96);
  }

  v9 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 96);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3321888768;
  v13[2] = ___ZN10OBDManager13startOBDTimerENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000EEEEE_block_invoke;
  v13[3] = &__block_descriptor_64_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e5_v8__0l;
  v13[4] = a1;
  v13[5] = v10;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a2;
  dispatch_source_set_event_handler(v12, v13);
  dispatch_activate(*(a1 + 96));
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void OBDManager::stop(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  if (*(this + 8))
  {
    v5 = *(this + 10);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(this + 10);
      *(this + 10) = 0;
      if (v6)
      {
        dispatch_release(v6);
        v7 = *(this + 10);
        *(this + 10) = 0;
        if (v7)
        {
          dispatch_release(v7);
        }
      }
    }

    v8 = *(this + 8);

    CMOnBodyDelegate::stopMotionDetection(v8);
  }
}

void ___ZN10OBDManager31startCoreMotionCallbackWatchdogEv_block_invoke(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134217984;
          v10 = 5120;
          _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I WARNING - Motion did not report the callback in %llu milli-seconds", &v9, 0xCu);
        }
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void ___ZN10OBDManager13startOBDTimerENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000EEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v5)
        {
          return;
        }
      }

      else
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
        if (!v5)
        {
          return;
        }
      }

      v17 = a1;
      if (config::hw::iPad(v4))
      {
        OBDManager::updateOBDState_iPad(v3);
        v7 = *(v3 + 40);
        v8 = *(v3 + 48);
        if (v7 != v8)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

      OBDManager::updateOBDState_iPhone(v3);
      v7 = *(v3 + 40);
      v8 = *(v3 + 48);
      if (v7 == v8)
      {
LABEL_32:
        v15 = *(v3 + 96);
        v16 = dispatch_time(0, 1000000 * v17[7]);
        dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
        return;
      }

LABEL_13:
      while (*v7)
      {
        v9 = _Block_copy(*v7);
        v10 = *(v7 + 8);
        if (v10)
        {
          goto LABEL_15;
        }

LABEL_16:
        v11 = *(v3 + 32);
        v12 = *(v3 + 33);
        if (v9)
        {
          v13 = _Block_copy(v9);
        }

        else
        {
          v13 = 0;
        }

        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 3321888768;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEclIJS2_S3_EEEvDpT__block_invoke;
        block[3] = &__block_descriptor_42_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE_e5_v8__0l;
        if (v13)
        {
          v14 = _Block_copy(v13);
        }

        else
        {
          v14 = 0;
        }

        aBlock = v14;
        v20 = v11;
        v21 = v12;
        dispatch_async(v10, block);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (v10)
        {
          dispatch_release(v10);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        v7 += 16;
        if (v7 == v8)
        {
          goto LABEL_32;
        }
      }

      v9 = 0;
      v10 = *(v7 + 8);
      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      dispatch_retain(v10);
      goto LABEL_16;
    }
  }
}

void OBDManager::updateOBDState(OBDManager *this)
{
  if (config::hw::iPad(this))
  {

    OBDManager::updateOBDState_iPad(this);
  }

  else
  {

    OBDManager::updateOBDState_iPhone(this);
  }
}

void OBDManager::setMotionParameter(uint64_t a1, ctu **a2)
{
  if (*(a1 + 64))
  {
    ctu::xpc_to_cf(&cf, *a2, a2);
    v3 = cf;
    if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
    {
      v7 = v3;
      CFRetain(v3);
      v5 = cf;
      if (!cf)
      {
LABEL_8:
        CMOnBodyDelegate::setThresholds(*(a1 + 64), v3);
        if (v3)
        {
          CFRelease(v3);
        }

        return;
      }
    }

    else
    {
      v3 = 0;
      v7 = 0;
      v5 = cf;
      if (!cf)
      {
        goto LABEL_8;
      }
    }

    CFRelease(v5);
    goto LABEL_8;
  }
}

void sub_2972B2DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void OBDManager::updateOBDState_iPad(OBDManager *this)
{
  v22 = *MEMORY[0x29EDCA608];
  *(this + 16) = 257;
  v2 = *(this + 30);
  if (capabilities::txpower::operator&() && !*(this + 22))
  {
    *(this + 16) = 0;
    v3 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  v4 = *(this + 22);
  if (v4 > 2)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_29EE67540[v4];
  }

  v6 = *(this + 32);
  v7 = sar::toString();
  v8 = *(this + 33);
  v9 = sar::toString();
  v10 = *(this + 30);
  v11 = capabilities::txpower::operator&();
  v12 = "YES";
  v14 = 136315906;
  v15 = v5;
  v16 = 2080;
  if (!v11)
  {
    v12 = "NO";
  }

  v17 = v7;
  v18 = 2080;
  v19 = v9;
  v20 = 2080;
  v21 = v12;
  _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Motion Status: %s. Notifying OBD State: %s, Tuner State: %s, Motion Status as an input: %s", &v14, 0x2Au);
LABEL_10:
  v13 = *MEMORY[0x29EDCA608];
}

void OBDManager::updateOBDState_iPhone(OBDManager *this)
{
  v1 = this;
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(*(this + 13) + 56);
  *(this + 32) = 1;
  if (!v2)
  {
LABEL_7:
    if (!capabilities::txpower::supportsMotionAlways(this) || (v5 = *(v1 + 30), !capabilities::txpower::operator&()) || *(v1 + 22))
    {
      *(v1 + 33) = 1;
      v6 = v1 + 33;
      if (*(v1 + 22))
      {
        v3 = *v1;
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_15:
      *v6 = 0;
      v3 = *v1;
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

LABEL_12:
      v7 = *MEMORY[0x29EDCA608];
      return;
    }

LABEL_14:
    *(v1 + 32) = 0;
    v6 = v1 + 33;
    goto LABEL_15;
  }

  if (v2 != 1)
  {
    v4 = *(this + 30);
    this = capabilities::txpower::operator&();
    if (this && !*(v1 + 22))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  *(this + 16) = 256;
  v3 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

LABEL_16:
  v8 = *(*(v1 + 13) + 56);
  if (v8 > 3)
  {
    v9 = "Unknown Audio Output";
    v10 = *(v1 + 22);
    if (v10 > 2)
    {
      goto LABEL_18;
    }

LABEL_20:
    v11 = off_29EE67540[v10];
    goto LABEL_21;
  }

  v9 = off_29EE67520[v8];
  v10 = *(v1 + 22);
  if (v10 <= 2)
  {
    goto LABEL_20;
  }

LABEL_18:
  v11 = "Unknown";
LABEL_21:
  v12 = *(v1 + 32);
  v13 = sar::toString();
  v14 = *(v1 + 33);
  v15 = sar::toString();
  v16 = *(v1 + 30);
  v17 = capabilities::txpower::operator&();
  v20 = 136316162;
  v18 = "YES";
  v21 = v9;
  v22 = 2080;
  if (!v17)
  {
    v18 = "NO";
  }

  v23 = v11;
  v24 = 2080;
  v25 = v13;
  v26 = 2080;
  v27 = v15;
  v28 = 2080;
  v29 = v18;
  _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Audio Output: %s, Motion Status: %s. Notifying OBD State: %s, Tuner State: %s, Motion Status as an input: %s", &v20, 0x34u);
  v19 = *MEMORY[0x29EDCA608];
}

void **std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          dispatch_release(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          _Block_release(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

char *std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    OBDManager::~OBDManager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029742F8BBLL)
  {
    if (((v2 & 0x800000029742F8BBLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029742F8BBLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029742F8BBLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

OBDManager **std::unique_ptr<OBDManager>::~unique_ptr[abi:ne200100](OBDManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    OBDManager::~OBDManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *__copy_helper_block_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *AnalyticsHelper::create@<X0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.abm", "stats.analytics");
  ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v3, "stats.analytics", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v5);
  v3[7] = 0;
  v3[6] = 0;
  v3[5] = v3 + 6;
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  return std::shared_ptr<AnalyticsHelper>::shared_ptr[abi:ne200100]<AnalyticsHelper,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1},0>(a1, v3);
}

void sub_2972B3700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void AnalyticsHelper::AnalyticsHelper(AnalyticsHelper *this)
{
  ctu::OsLogContext::OsLogContext(v2, "com.apple.telephony.abm", "stats.analytics");
  ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this, "stats.analytics", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v2);
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
}

{
  ctu::OsLogContext::OsLogContext(v2, "com.apple.telephony.abm", "stats.analytics");
  ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this, "stats.analytics", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v2);
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
}

void *ctu::SharedLoggable<AnalyticsHelper,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<AnalyticsHelper>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 4, &object);
  MEMORY[0x29C26DE80](&object);
  return a1;
}

void AnalyticsHelper::~AnalyticsHelper(char **this)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(this[6]);
  MEMORY[0x29C26DE80](this + 4);
  v2 = this[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(this[6]);
  MEMORY[0x29C26DE80](this + 4);
  v2 = this[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void AnalyticsHelper::describeAnalyticsCache(AnalyticsHelper *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 272) = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 240) = v3;
  *(a2 + 256) = v3;
  *(a2 + 208) = v3;
  *(a2 + 224) = v3;
  *(a2 + 176) = v3;
  *(a2 + 192) = v3;
  *(a2 + 144) = v3;
  *(a2 + 160) = v3;
  *(a2 + 112) = v3;
  *(a2 + 128) = v3;
  *(a2 + 80) = v3;
  *(a2 + 96) = v3;
  *(a2 + 48) = v3;
  *(a2 + 64) = v3;
  *(a2 + 32) = v3;
  *a2 = v3;
  *(a2 + 16) = v3;
  v4 = (a2 + 16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "** analyticsData **\n", 20);
  v5 = *(this + 5);
  v29 = this + 48;
  if (v5 != (this + 48))
  {
    while (1)
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "[", 1);
      v7 = (v5 + 4);
      if (*(v5 + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = strlen(v7);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] = \n", 5);
      v10 = v5[7];
      if (v10 != v5 + 8)
      {
        break;
      }

LABEL_7:
      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v28 = *v12 == v5;
          v5 = v12;
        }

        while (!v28);
      }

      v5 = v12;
      if (v12 == v29)
      {
        return;
      }
    }

    while (1)
    {
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "<<<", 3);
      v14 = (v10 + 4);
      if (*(v10 + 55) < 0)
      {
        v14 = *v14;
      }

      v15 = strlen(v14);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ">>> = ", 6);
      v18 = MEMORY[0x29C26F920](v10[7]);
      memset(__dst, 170, sizeof(__dst));
      v19 = strlen(v18);
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v20 = v19;
      if (v19 >= 0x17)
      {
        break;
      }

      HIBYTE(__dst[2]) = v19;
      v21 = __dst;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_22:
      v20[v21] = 0;
      free(v18);
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v23 = __dst;
      }

      else
      {
        v23 = __dst[0];
      }

      v24 = strlen(v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v23, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n", 1);
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
        v26 = v10[1];
        if (v26)
        {
          do
          {
LABEL_29:
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
          goto LABEL_10;
        }
      }

      else
      {
        v26 = v10[1];
        if (v26)
        {
          goto LABEL_29;
        }
      }

      do
      {
        v27 = v10[2];
        v28 = *v27 == v10;
        v10 = v27;
      }

      while (!v28);
LABEL_10:
      v10 = v27;
      if (v27 == v5 + 8)
      {
        goto LABEL_7;
      }
    }

    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v21 = operator new(v22);
    __dst[1] = v20;
    __dst[2] = (v22 | 0x8000000000000000);
    __dst[0] = v21;
LABEL_21:
    memcpy(v21, v18, v20);
    goto LABEL_22;
  }
}

void sub_2972B3CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(a10);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(a10);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](a1 + 128);
  return a1;
}

void AnalyticsHelper::updateData(uint64_t a1, xpc_object_t *a2)
{
  v203 = *MEMORY[0x29EDCA608];
  memset(&v189, 170, sizeof(v189));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE7F8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v189, object, "", v5);
  xpc_release(object[0]);
  memset(__p, 170, sizeof(__p));
  v6 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE9B8]);
  object[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "None", v7);
  xpc_release(object[0]);
  size = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v189.__r_.__value_.__l.__size_;
  }

  if (!size || (v9 = *MEMORY[0x29EDBF020], !xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF020])))
  {
    v12 = *(a1 + 32);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_344;
    }

    v13 = MEMORY[0x29C26F920](*a2);
    memset(object, 170, sizeof(object));
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v97 = 25;
      }

      else
      {
        v97 = (v14 | 7) + 1;
      }

      v16 = operator new(v97);
      object[1] = v15;
      object[2] = (v97 | 0x8000000000000000);
      object[0] = v16;
    }

    else
    {
      HIBYTE(object[2]) = v14;
      v16 = object;
      if (!v14)
      {
        goto LABEL_195;
      }
    }

    memcpy(v16, v13, v15);
LABEL_195:
    *(v15 + v16) = 0;
    free(v13);
    v98 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v98 = object[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v98;
    _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "Input error: Failed to update AnalyticsData with %s", &buf, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_344;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = MEMORY[0x29EDCAA00];
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v10) == v11)
    {
      xpc_retain(v10);
      xdict = v10;
    }

    else
    {
      xdict = xpc_null_create();
    }
  }

  else
  {
    xdict = xpc_null_create();
    v10 = 0;
  }

  v182 = a1;
  xpc_release(v10);
  *(&buf + 1) = 0;
  v202 = 0;
  *&buf = &buf + 8;
  v178 = (a1 + 40);
  v17 = std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::find<std::string>(a1 + 40, &v189.__r_.__value_.__l.__data_);
  v179 = (a1 + 48);
  if ((a1 + 48) == v17)
  {
LABEL_59:
    v38 = xpc_dictionary_get_value(xdict, "ReportProcessStatus");
    goto LABEL_60;
  }

  v177 = v9;
  if (&buf == (v17 + 7) || (v18 = v17[7], v19 = v17 + 8, v18 == v17 + 8))
  {
    v11 = MEMORY[0x29EDCAA00];
    goto LABEL_59;
  }

  while (2)
  {
    memset(object, 170, sizeof(object));
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__construct_node<std::pair<std::string const,xpc::dict> const&>(object, &buf, (v18 + 4));
    v20 = object[0];
    v21 = *(&buf + 1);
    v22 = &buf + 1;
    v23 = &buf + 1;
    if (!*(&buf + 1))
    {
      goto LABEL_50;
    }

    v24 = *(object[0] + 55);
    if (v24 >= 0)
    {
      v25 = object[0] + 32;
    }

    else
    {
      v25 = *(object[0] + 4);
    }

    if (v24 >= 0)
    {
      v26 = *(object[0] + 55);
    }

    else
    {
      v26 = *(object[0] + 5);
    }

    do
    {
      while (1)
      {
        v22 = v21;
        v29 = v21[4];
        v27 = v21 + 4;
        v28 = v29;
        v30 = *(v27 + 23);
        v31 = v30 >= 0 ? v27 : v28;
        v32 = v30 >= 0 ? *(v27 + 23) : v27[1];
        v33 = v32 >= v26 ? v26 : v32;
        v34 = memcmp(v25, v31, v33);
        if (v34)
        {
          break;
        }

        if (v26 >= v32)
        {
          goto LABEL_48;
        }

LABEL_34:
        v21 = *v22;
        v23 = v22;
        if (!*v22)
        {
          goto LABEL_50;
        }
      }

      if (v34 < 0)
      {
        goto LABEL_34;
      }

LABEL_48:
      v21 = v22[1];
    }

    while (v21);
    v23 = v22 + 1;
LABEL_50:
    *v20 = 0;
    v20[1] = 0;
    v20[2] = v22;
    *v23 = v20;
    if (*buf)
    {
      *&buf = *buf;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(&buf + 1), v20);
    ++v202;
    v35 = v18[1];
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
        v36 = v18[2];
        v37 = *v36 == v18;
        v18 = v36;
      }

      while (!v37);
    }

    v18 = v36;
    if (v36 != v19)
    {
      continue;
    }

    break;
  }

  v43 = *(&buf + 1);
  HIBYTE(object[2]) = 9;
  strcpy(object, "EventInfo");
  v9 = v177;
  v11 = MEMORY[0x29EDCAA00];
  if (!*(&buf + 1))
  {
    goto LABEL_59;
  }

  v44 = &buf + 8;
  while (2)
  {
    while (2)
    {
      v45 = v43[55];
      if (v45 >= 0)
      {
        v46 = v43 + 32;
      }

      else
      {
        v46 = *(v43 + 4);
      }

      if (v45 >= 0)
      {
        v47 = v43[55];
      }

      else
      {
        v47 = *(v43 + 5);
      }

      if (v47 >= 9)
      {
        v48 = 9;
      }

      else
      {
        v48 = v47;
      }

      v49 = memcmp(v46, object, v48);
      if (v49)
      {
        if ((v49 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_71;
      }

      if (v47 < 9)
      {
LABEL_71:
        v43 = *(v43 + 1);
        if (!v43)
        {
          goto LABEL_86;
        }

        continue;
      }

      break;
    }

    v44 = v43;
    v43 = *v43;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_86:
  if (v44 == &buf + 8)
  {
    goto LABEL_59;
  }

  v50 = v44[55];
  if (v50 >= 0)
  {
    v51 = v44 + 32;
  }

  else
  {
    v51 = *(v44 + 4);
  }

  if (v50 >= 0)
  {
    v52 = v44[55];
  }

  else
  {
    v52 = *(v44 + 5);
  }

  if (v52 >= 9)
  {
    v53 = 9;
  }

  else
  {
    v53 = v52;
  }

  v54 = memcmp(object, v51, v53);
  if (v54)
  {
    if (v54 < 0)
    {
      goto LABEL_59;
    }
  }

  else if (v52 > 9)
  {
    goto LABEL_59;
  }

  v99 = *(v44 + 7);
  if (v99)
  {
    xpc_retain(*(v44 + 7));
  }

  else
  {
    v99 = xpc_null_create();
  }

  xpc_release(xdict);
  xdict = v99;
  v38 = xpc_dictionary_get_value(v99, "ReportProcessStatus");
LABEL_60:
  object[0] = v38;
  if (v38)
  {
    xpc_retain(v38);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  LOBYTE(v39) = xpc::dyn_cast_or_default(object, 0xFF);
  xpc_release(object[0]);
  v187 = 0xAAAAAAAAAAAAAAAALL;
  v40 = xpc_dictionary_create(0, 0, 0);
  v41 = v40;
  if (v40)
  {
    v187 = v40;
    goto LABEL_66;
  }

  v41 = xpc_null_create();
  v187 = v41;
  if (v41)
  {
LABEL_66:
    if (MEMORY[0x29C26F9F0](v41) != v11)
    {
      v42 = xpc_null_create();
      goto LABEL_100;
    }

    xpc_retain(v41);
  }

  else
  {
    v42 = xpc_null_create();
    v41 = 0;
LABEL_100:
    v187 = v42;
  }

  xpc_release(v41);
  object[0] = a2;
  object[1] = v9;
  __s1[0] = &v187;
  __s1[1] = v9;
  xpc::dict::object_proxy::operator=(__s1, object, &v186);
  xpc_release(v186);
  v186 = 0;
  v55 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF1E8]);
  object[0] = v55;
  if (v55)
  {
    xpc_retain(v55);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v56 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  memset(__s1, 170, sizeof(__s1));
  v57 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE9B0]);
  object[0] = v57;
  if (v57)
  {
    xpc_retain(v57);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, "", v58);
  xpc_release(object[0]);
  v59 = *MEMORY[0x29EDBE928];
  v60 = strlen(*MEMORY[0x29EDBE928]);
  v61 = v60;
  v62 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v60 != -1)
    {
      v63 = SHIBYTE(__s1[2]);
      if (SHIBYTE(__s1[2]) >= v60)
      {
        v64 = v60;
      }

      else
      {
        v64 = SHIBYTE(__s1[2]);
      }

      if (memcmp(__s1, v59, v64))
      {
        goto LABEL_120;
      }

LABEL_119:
      if (v63 != v61)
      {
        goto LABEL_120;
      }

LABEL_134:
      std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(&buf, __p, &v187);
      v72 = v182;
      if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v184, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
      }

      else
      {
        v184 = v189;
      }

      AnalyticsHelper::submitEvent(v182, &v184, &buf, v56);
      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      v39 = 1;
      goto LABEL_212;
    }

LABEL_383:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v60 == -1)
  {
    goto LABEL_383;
  }

  v63 = __s1[1];
  if (__s1[1] >= v60)
  {
    v65 = v60;
  }

  else
  {
    v65 = __s1[1];
  }

  if (!memcmp(__s1[0], v59, v65))
  {
    goto LABEL_119;
  }

LABEL_120:
  v66 = *MEMORY[0x29EDBEA18];
  v67 = strlen(*MEMORY[0x29EDBEA18]);
  v68 = v67;
  if ((v62 & 0x80000000) != 0)
  {
    if (v67 != -1)
    {
      v69 = __s1[1];
      v39 = v39;
      if (__s1[1] >= v67)
      {
        v71 = v67;
      }

      else
      {
        v71 = __s1[1];
      }

      if (!memcmp(__s1[0], v66, v71))
      {
        goto LABEL_132;
      }

      goto LABEL_140;
    }

LABEL_384:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v67 == -1)
  {
    goto LABEL_384;
  }

  v69 = v62;
  v39 = v39;
  if (v62 >= v67)
  {
    v70 = v67;
  }

  else
  {
    v70 = v62;
  }

  if (memcmp(__s1, v66, v70))
  {
    goto LABEL_140;
  }

LABEL_132:
  if (v69 == v68 && !v39)
  {
    goto LABEL_134;
  }

LABEL_140:
  v73 = *MEMORY[0x29EDBE918];
  v74 = strlen(*MEMORY[0x29EDBE918]);
  v75 = v74;
  if ((v62 & 0x80000000) != 0)
  {
    if (v74 != -1)
    {
      v76 = __s1[1];
      if (__s1[1] >= v74)
      {
        v78 = v74;
      }

      else
      {
        v78 = __s1[1];
      }

      if (memcmp(__s1[0], v73, v78))
      {
        goto LABEL_185;
      }

      goto LABEL_152;
    }

LABEL_385:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v74 == -1)
  {
    goto LABEL_385;
  }

  v76 = v62;
  if (v62 >= v74)
  {
    v77 = v74;
  }

  else
  {
    v77 = v62;
  }

  if (memcmp(__s1, v73, v77))
  {
    goto LABEL_185;
  }

LABEL_152:
  if (v76 != v75)
  {
LABEL_185:
    v96 = __s1[1];
    if ((v62 & 0x80000000) == 0)
    {
      v96 = v62;
    }

    if (!v96)
    {
      std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(&buf, __p, &v187);
    }

    v72 = v182;
    goto LABEL_212;
  }

  std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(&buf, __p, &v187);
  v79 = xpc_int64_create(0);
  if (!v79)
  {
    v79 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "ReportProcessStatus", v79);
  v80 = xpc_null_create();
  xpc_release(v79);
  xpc_release(v80);
  HIBYTE(object[2]) = 9;
  strcpy(object, "EventInfo");
  v81 = *(&buf + 1);
  v82 = &buf + 1;
  if (!*(&buf + 1))
  {
    goto LABEL_206;
  }

  v83 = &buf + 8;
  while (2)
  {
    while (2)
    {
      v84 = v81[55];
      if (v84 >= 0)
      {
        v85 = v81 + 32;
      }

      else
      {
        v85 = *(v81 + 4);
      }

      if (v84 >= 0)
      {
        v86 = v81[55];
      }

      else
      {
        v86 = *(v81 + 5);
      }

      if (v86 >= 9)
      {
        v87 = 9;
      }

      else
      {
        v87 = v86;
      }

      v88 = memcmp(v85, object, v87);
      if (v88)
      {
        if ((v88 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_157;
      }

      if (v86 < 9)
      {
LABEL_157:
        v81 = *(v81 + 1);
        if (!v81)
        {
          goto LABEL_172;
        }

        continue;
      }

      break;
    }

    v83 = v81;
    v81 = *v81;
    if (v81)
    {
      continue;
    }

    break;
  }

LABEL_172:
  v82 = &buf + 1;
  if (v83 == &buf + 8)
  {
    goto LABEL_206;
  }

  v89 = v83[55];
  if (v89 >= 0)
  {
    v90 = v83 + 32;
  }

  else
  {
    v90 = *(v83 + 4);
  }

  if (v89 >= 0)
  {
    v91 = v83[55];
  }

  else
  {
    v91 = *(v83 + 5);
  }

  if (v91 >= 9)
  {
    v92 = 9;
  }

  else
  {
    v92 = v91;
  }

  v93 = memcmp(object, v90, v92);
  if (v93)
  {
    if ((v93 & 0x80000000) == 0)
    {
      goto LABEL_184;
    }

LABEL_205:
    v82 = v83;
LABEL_206:
    v183.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    *v200 = 0xAAAAAAAAAAAAAAAALL;
    v100 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(&buf, v82, &v183, v200, object);
    if (*v100)
    {
      v94 = xdict;
      v72 = v182;
    }

    else
    {
      v101 = v100;
      v72 = v182;
      v102 = operator new(0x40uLL);
      v102[2] = *object;
      v103 = object[2];
      memset(object, 0, sizeof(object));
      *(v102 + 6) = v103;
      *(v102 + 7) = xdict;
      xdicta = xpc_null_create();
      v104 = v183.__r_.__value_.__r.__words[0];
      *v102 = 0;
      *(v102 + 1) = 0;
      *(v102 + 2) = v104;
      *v101 = v102;
      if (*buf)
      {
        *&buf = *buf;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(&buf + 1), v102);
      ++v202;
      v94 = xdicta;
    }
  }

  else
  {
    if (v91 > 9)
    {
      goto LABEL_205;
    }

LABEL_184:
    v94 = xpc_null_create();
    v95 = *(v83 + 7);
    *(v83 + 7) = xdict;
    xpc_release(v95);
    v72 = v182;
  }

  v39 = 0;
  xdict = v94;
LABEL_212:
  v105 = *(v72 + 32);
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = &v189;
    if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v106 = v189.__r_.__value_.__r.__words[0];
    }

    v107 = __s1;
    if (__s1[2] < 0)
    {
      v107 = __s1[0];
    }

    LODWORD(object[0]) = 136315650;
    *(object + 4) = v106;
    WORD2(object[1]) = 2080;
    *(&object[1] + 6) = v107;
    HIWORD(object[2]) = 1024;
    LODWORD(v191) = v39;
    _os_log_impl(&dword_297288000, v105, OS_LOG_TYPE_DEFAULT, "#I Updating AnalyticsData for event[%s]: command=%s, status=%d", object, 0x1Cu);
  }

  if (v39 == 1)
  {
    v108 = std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::find<std::string>(v178, &v189.__r_.__value_.__l.__data_);
    if (v179 != v108)
    {
      v109 = v108;
      v110 = v108[1];
      if (v110)
      {
        v111 = v178;
        do
        {
          v112 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        v132 = v108;
        v111 = v178;
        do
        {
          v112 = v132[2];
          v37 = *v112 == v132;
          v132 = v112;
        }

        while (!v37);
      }

      if (*v111 == v108)
      {
        *v111 = v112;
      }

      v133 = *(v182 + 48);
      --*(v182 + 56);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v133, v109);
      std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(v109[8]);
      if (*(v109 + 55) < 0)
      {
        operator delete(v109[4]);
      }

      operator delete(v109);
    }

    goto LABEL_340;
  }

  v113 = v202;
  if (!v202)
  {
    goto LABEL_340;
  }

  v114 = v179;
  v115 = *v179;
  if (!*v179)
  {
    if (*v178 == v179)
    {
      v134 = 0;
      v135 = v179;
      v114 = v179;
      goto LABEL_323;
    }

    goto LABEL_278;
  }

  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = &v189;
  }

  else
  {
    v116 = v189.__r_.__value_.__r.__words[0];
  }

  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v117 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v117 = v189.__r_.__value_.__l.__size_;
  }

  v118 = *v179;
  while (2)
  {
    while (1)
    {
      v119 = *(v118 + 55);
      v120 = v119 >= 0 ? (v118 + 32) : *(v118 + 32);
      v121 = v119 >= 0 ? *(v118 + 55) : *(v118 + 40);
      v122 = v117 >= v121 ? v121 : v117;
      v123 = memcmp(v120, v116, v122);
      if (!v123)
      {
        break;
      }

      if (v123 < 0)
      {
        goto LABEL_247;
      }

LABEL_233:
      v114 = v118;
      v118 = *v118;
      if (!v118)
      {
        goto LABEL_248;
      }
    }

    if (v121 >= v117)
    {
      goto LABEL_233;
    }

LABEL_247:
    v118 = *(v118 + 8);
    if (v118)
    {
      continue;
    }

    break;
  }

LABEL_248:
  if (v114 != v179)
  {
    v124 = *(v114 + 55);
    if (v124 >= 0)
    {
      v125 = v114 + 4;
    }

    else
    {
      v125 = v114[4];
    }

    if (v124 >= 0)
    {
      v126 = *(v114 + 55);
    }

    else
    {
      v126 = v114[5];
    }

    if (v126 >= v117)
    {
      v127 = v117;
    }

    else
    {
      v127 = v126;
    }

    v128 = memcmp(v116, v125, v127);
    if (v128)
    {
      if ((v128 & 0x80000000) == 0)
      {
LABEL_260:
        v129 = v114 + 8;
        std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(v114[8]);
        v130 = *(&buf + 1);
        v114[7] = buf;
        v114[8] = v130;
        v131 = v202;
        v114[9] = v202;
        if (v131)
        {
          *(v130 + 16) = v129;
          *&buf = &buf + 8;
          *(&buf + 1) = 0;
          v202 = 0;
        }

        else
        {
          v114[7] = v129;
        }

        goto LABEL_340;
      }
    }

    else if (v117 >= v126)
    {
      goto LABEL_260;
    }
  }

  v134 = *v114;
  if (*v178 == v114)
  {
    v135 = v114;
    goto LABEL_323;
  }

  if (!v134)
  {
LABEL_278:
    v135 = v114;
    do
    {
      v137 = v135;
      v135 = v135[2];
    }

    while (*v135 == v137);
    v134 = 0;
    goto LABEL_281;
  }

  v136 = *v114;
  do
  {
    v135 = v136;
    v136 = v136[1];
  }

  while (v136);
LABEL_281:
  v138 = *(v135 + 55);
  if (v138 >= 0)
  {
    v139 = v135 + 4;
  }

  else
  {
    v139 = v135[4];
  }

  if (v138 >= 0)
  {
    v140 = *(v135 + 55);
  }

  else
  {
    v140 = v135[5];
  }

  v141 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v142 = &v189;
  }

  else
  {
    v142 = v189.__r_.__value_.__r.__words[0];
  }

  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v143 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v143 = v189.__r_.__value_.__l.__size_;
  }

  if (v143 >= v140)
  {
    v144 = v140;
  }

  else
  {
    v144 = v143;
  }

  v145 = memcmp(v139, v142, v144);
  if (!v145)
  {
    if (v140 < v143)
    {
      goto LABEL_323;
    }

    goto LABEL_300;
  }

  if ((v145 & 0x80000000) == 0)
  {
LABEL_300:
    if (!v115)
    {
      v146 = v179;
      goto LABEL_332;
    }

    while (1)
    {
      v146 = v115;
      v147 = *(v115 + 55);
      v148 = *(v115 + 40);
      if ((v147 & 0x80u) == 0)
      {
        v149 = (v115 + 32);
      }

      else
      {
        v149 = *(v115 + 32);
      }

      if ((v147 & 0x80u) == 0)
      {
        v150 = v147;
      }

      else
      {
        v150 = v148;
      }

      if (v150 >= v143)
      {
        v151 = v143;
      }

      else
      {
        v151 = v150;
      }

      v152 = memcmp(v142, v149, v151);
      if (v152)
      {
        if (v152 < 0)
        {
          goto LABEL_302;
        }

LABEL_316:
        v153 = memcmp(v149, v142, v151);
        if (v153)
        {
          if ((v153 & 0x80000000) == 0)
          {
            goto LABEL_340;
          }
        }

        else if (v150 >= v143)
        {
          goto LABEL_340;
        }

        v115 = v146[1];
        if (!v115)
        {
          v179 = v146 + 1;
          goto LABEL_332;
        }
      }

      else
      {
        if (v143 >= v150)
        {
          goto LABEL_316;
        }

LABEL_302:
        v115 = *v146;
        if (!*v146)
        {
          v179 = v146;
          goto LABEL_332;
        }
      }
    }
  }

LABEL_323:
  v154 = v135 + 1;
  if (!v134)
  {
    v154 = v114;
  }

  v179 = v154;
  if (!*v154)
  {
    if (v134)
    {
      v146 = v135;
    }

    else
    {
      v146 = v114;
    }

    v141 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
LABEL_332:
    v155 = operator new(0x50uLL);
    v156 = v155;
    object[0] = v155;
    object[1] = v178;
    object[2] = 0;
    if (v141 < 0)
    {
      std::string::__init_copy_ctor_external((v155 + 32), v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
      v160 = v202;
      v157 = *(&buf + 1);
      v161 = buf;
      v156[8] = *(&buf + 1);
      v159 = v156 + 8;
      v156[7] = v161;
      v156[9] = v160;
      if (!v160)
      {
        goto LABEL_336;
      }

LABEL_334:
      *(v157 + 16) = v159;
      *&buf = &buf + 8;
      *(&buf + 1) = 0;
      v202 = 0;
    }

    else
    {
      *(v155 + 32) = v189;
      v157 = *(&buf + 1);
      v158 = buf;
      *(v155 + 8) = *(&buf + 1);
      v159 = (v155 + 64);
      *(v155 + 7) = v158;
      *(v155 + 9) = v113;
      if (v113)
      {
        goto LABEL_334;
      }

LABEL_336:
      v156[7] = v159;
    }

    *v156 = 0;
    v156[1] = 0;
    v156[2] = v146;
    *v179 = v156;
    v162 = **v178;
    if (v162)
    {
      *v178 = v162;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v182 + 48), v156);
    ++*(v182 + 56);
  }

LABEL_340:
  v163 = *(v182 + 32);
  if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__s1[2]) < 0)
    {
      goto LABEL_342;
    }

    goto LABEL_343;
  }

  AnalyticsHelper::describeAnalyticsCache(v182, object);
  if ((v198 & 0x10) != 0)
  {
    v168 = v197;
    if (v197 < v195)
    {
      v197 = v195;
      v168 = v195;
    }

    v169 = &v194;
  }

  else
  {
    if ((v198 & 8) == 0)
    {
      v166 = 0;
      v167 = 0;
      goto LABEL_361;
    }

    v169 = v193;
    v168 = v193[2];
  }

  v170 = *v169;
  v166 = v168 - v170;
  if (v166)
  {
    v171 = &v196;
    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v171 = v196.__r_.__value_.__r.__words[0];
    }

    v167 = v170 - v171;
  }

  else
  {
    v167 = 0;
  }

LABEL_361:
  v183 = v196;
  memset(&v196, 0, sizeof(v196));
  v172 = v167 + v166;
  v173 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v173 = v183.__r_.__value_.__l.__size_;
    if (v183.__r_.__value_.__l.__size_ >= v172)
    {
      v174 = v183.__r_.__value_.__r.__words[0];
      v183.__r_.__value_.__l.__size_ = v172;
      goto LABEL_367;
    }

LABEL_365:
    std::string::append(&v183, v172 - v173, 0);
  }

  else
  {
    if (v172 > SHIBYTE(v183.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_365;
    }

    *(&v183.__r_.__value_.__s + 23) = v172;
    v174 = &v183;
LABEL_367:
    v174->__r_.__value_.__s.__data_[v172] = 0;
  }

  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v167 == -1)
    {
      v183.__r_.__value_.__l.__size_ = 0;
      *v183.__r_.__value_.__l.__data_ = 0;
      goto LABEL_374;
    }

LABEL_373:
    std::string::__erase_external_with_move(&v183, 0, v167);
  }

  else
  {
    if (v167 != -1)
    {
      goto LABEL_373;
    }

    *(&v183.__r_.__value_.__s + 23) = 0;
    v183.__r_.__value_.__s.__data_[0] = 0;
  }

LABEL_374:
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v191);
  v175 = &v183;
  if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v175 = v183.__r_.__value_.__r.__words[0];
  }

  *v200 = 136315138;
  *&v200[4] = v175;
  _os_log_debug_impl(&dword_297288000, v163, OS_LOG_TYPE_DEBUG, "#D %s", v200, 0xCu);
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v183.__r_.__value_.__l.__data_);
  }

  object[0] = *MEMORY[0x29EDC9528];
  v176 = *(MEMORY[0x29EDC9528] + 72);
  *(object + *(object[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
  object[2] = v176;
  v191 = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  v191 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v192);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](&v199);
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_342:
    operator delete(__s1[0]);
  }

LABEL_343:
  xpc_release(v187);
  std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(&buf + 1));
  xpc_release(xdict);
LABEL_344:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_348;
    }

LABEL_346:
    v164 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_346;
    }

LABEL_348:
    operator delete(v189.__r_.__value_.__l.__data_);
    v165 = *MEMORY[0x29EDCA608];
  }
}

void sub_2972B5128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, xpc_object_t object, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, xpc_object_t a48)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  value = xpc_dictionary_get_value(**a2, *(a2 + 8));
  v6 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v6 = xpc_null_create();
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_5;
    }
  }

  xpc_retain(v6);
  v7 = v6;
LABEL_5:
  xpc_dictionary_set_value(**a1, *(a1 + 8), v7);
  *a3 = v7;
  v8 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v6);
}

void std::map<std::string,xpc::dict>::insert_or_assign[abi:ne200100]<xpc::dict>(void **a1, const std::string::value_type **a2, xpc_object_t *a3)
{
  v6 = (a1 + 1);
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = (a1 + 1);
  do
  {
    while (1)
    {
      v12 = *(v7 + 55);
      v13 = v12 >= 0 ? v7 + 4 : v7[4];
      v14 = v12 >= 0 ? *(v7 + 55) : v7[5];
      v15 = v10 >= v14 ? v14 : v10;
      v16 = memcmp(v13, v9, v15);
      if (v16)
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_23;
      }

LABEL_9:
      v7 = v7[1];
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v11 = v7;
    v7 = *v7;
  }

  while (v7);
LABEL_24:
  if (v11 == v6)
  {
    goto LABEL_38;
  }

  v17 = *(v11 + 55);
  if (v17 >= 0)
  {
    v18 = v11 + 4;
  }

  else
  {
    v18 = v11[4];
  }

  if (v17 >= 0)
  {
    v19 = *(v11 + 55);
  }

  else
  {
    v19 = v11[5];
  }

  if (v19 >= v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = v19;
  }

  v21 = memcmp(v9, v18, v20);
  if (v21)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_38:
    v6 = v11;
LABEL_39:
    v30 = 0xAAAAAAAAAAAAAAAALL;
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v24 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(a1, v6, &v31, &v30, a2);
    if (!*v24)
    {
      v25 = v24;
      v26 = operator new(0x40uLL);
      v27 = v26;
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v26 + 32), *a2, a2[1]);
      }

      else
      {
        *(v26 + 2) = *a2;
        *(v26 + 6) = a2[2];
      }

      v27[7] = *a3;
      *a3 = xpc_null_create();
      v28 = v31;
      *v27 = 0;
      v27[1] = 0;
      v27[2] = v28;
      *v25 = v27;
      v29 = **a1;
      if (v29)
      {
        *a1 = v29;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v27);
      a1[2] = (a1[2] + 1);
    }
  }

  else
  {
    if (v10 < v19)
    {
      goto LABEL_38;
    }

LABEL_36:
    v22 = *a3;
    *a3 = xpc_null_create();
    v23 = v11[7];
    v11[7] = v22;
    xpc_release(v23);
  }
}

void sub_2972B55AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AnalyticsHelper::submitEvent(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v44 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      v9 = a3[2] == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
LABEL_12:
      object = 0xAAAAAAAAAAAAAAAALL;
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = v10;
      if (v10)
      {
        object = v10;
      }

      else
      {
        v11 = xpc_null_create();
        object = v11;
        if (!v11)
        {
          v12 = xpc_null_create();
          v11 = 0;
          goto LABEL_19;
        }
      }

      if (MEMORY[0x29C26F9F0](v11) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v11);
        goto LABEL_20;
      }

      v12 = xpc_null_create();
LABEL_19:
      object = v12;
LABEL_20:
      xpc_release(v11);
      AnalyticsHelper::append(v13, &object, a3);
      v14 = *MEMORY[0x29EDBF370];
      v15 = strlen(*MEMORY[0x29EDBF370]);
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        if ((v15 | 7) == 0x17)
        {
          v20 = 25;
        }

        else
        {
          v20 = (v15 | 7) + 1;
        }

        v17 = operator new(v20);
        *&__dst[8] = v16;
        *&__dst[16] = v20 | 0x8000000000000000;
        *__dst = v17;
      }

      else
      {
        __dst[23] = v15;
        v17 = __dst;
        if (!v15)
        {
          __dst[0] = 0;
          v18 = std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::find<std::string>(a1 + 40, __dst);
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_32;
        }
      }

      memmove(v17, v14, v16);
      v17[v16] = 0;
      v18 = std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::find<std::string>(a1 + 40, __dst);
      if ((__dst[23] & 0x80000000) == 0)
      {
LABEL_24:
        if ((a1 + 48) == v18)
        {
          goto LABEL_25;
        }

LABEL_33:
        __p[1] = 0;
        __p[2] = 0;
        __p[0] = &__p[1];
        v22 = v18[7];
        v23 = v18 + 8;
        if (v22 == (v18 + 8))
        {
LABEL_47:
          AnalyticsHelper::append(v18, &object, __p);
          std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(__p[1]);
          v19 = *(a1 + 32);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_58;
          }

          goto LABEL_48;
        }

        while (1)
        {
          v41 = 0xAAAAAAAAAAAAAAAALL;
          v42 = 0xAAAAAAAAAAAAAAAALL;
          v18 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(__p, &__p[1], &v42, &v41, v22 + 4);
          if (*v18)
          {
            v24 = v22[1];
            if (v24)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v25 = v18;
            memset(__dst, 170, 24);
            std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__construct_node<std::pair<std::string const,xpc::dict> const&>(__dst, __p, (v22 + 4));
            v27 = v42;
            v26 = *__dst;
            **__dst = 0;
            v26[1] = 0;
            v26[2] = v27;
            *v25 = v26;
            if (*__p[0])
            {
              __p[0] = *__p[0];
            }

            v18 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(__p[1], v26);
            ++__p[2];
            v24 = v22[1];
            if (v24)
            {
              do
              {
LABEL_42:
                v28 = v24;
                v24 = *v24;
              }

              while (v24);
              goto LABEL_35;
            }
          }

          do
          {
            v28 = v22[2];
            v8 = *v28 == v22;
            v22 = v28;
          }

          while (!v8);
LABEL_35:
          v22 = v28;
          if (v28 == v23)
          {
            goto LABEL_47;
          }
        }
      }

LABEL_32:
      v21 = v18;
      operator delete(*__dst);
      v18 = v21;
      if ((a1 + 48) == v21)
      {
LABEL_25:
        v19 = *(a1 + 32);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
LABEL_58:
          v30 = a2;
          if (*(a2 + 23) < 0)
          {
            v30 = *a2;
          }

          v31 = MEMORY[0x29C26F920](object);
          memset(__p, 170, sizeof(__p));
          v32 = strlen(v31);
          if (v32 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v33 = v32;
          if (v32 >= 0x17)
          {
            if ((v32 | 7) == 0x17)
            {
              v35 = 25;
            }

            else
            {
              v35 = (v32 | 7) + 1;
            }

            v34 = operator new(v35);
            __p[1] = v33;
            __p[2] = (v35 | 0x8000000000000000);
            __p[0] = v34;
          }

          else
          {
            HIBYTE(__p[2]) = v32;
            v34 = __p;
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          memcpy(v34, v31, v33);
LABEL_69:
          *(v33 + v34) = 0;
          free(v31);
          v36 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v36 = __p[0];
          }

          *__dst = 136315650;
          *&__dst[4] = v30;
          *&__dst[12] = 1024;
          *&__dst[14] = a4;
          *&__dst[18] = 2080;
          *&__dst[20] = v36;
          _os_log_debug_impl(&dword_297288000, v19, OS_LOG_TYPE_DEBUG, "#D Submitting CoreAnalytics event[%s], hasRepeatedInt[%d] - %s", __dst, 0x1Cu);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_48:
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v38, *a2, *(a2 + 8));
        }

        else
        {
          v38 = *a2;
        }

        v37 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v37 = xpc_null_create();
        }

        metric::sendCoreAnalyticsEvent(&v38.__r_.__value_.__l.__data_, &v37, a4);
        xpc_release(v37);
        v37 = 0;
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        xpc_release(object);
        goto LABEL_57;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (*(a2 + 23))
    {
      v8 = a3[2] == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      goto LABEL_12;
    }
  }

LABEL_57:
  v29 = *MEMORY[0x29EDCA608];
}

void AnalyticsHelper::append(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      memset(&v11, 170, sizeof(v11));
      if (*(v4 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v4[4], v4[5]);
        v6 = v4[7];
        if (v6)
        {
LABEL_6:
          xpc_retain(v6);
          goto LABEL_9;
        }
      }

      else
      {
        *&v11.__r_.__value_.__l.__data_ = *(v4 + 2);
        v6 = v4[7];
        v11.__r_.__value_.__r.__words[2] = v4[6];
        if (v6)
        {
          goto LABEL_6;
        }
      }

      v6 = xpc_null_create();
LABEL_9:
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 0x40000000;
      applier[2] = ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke;
      applier[3] = &__block_descriptor_tmp_13;
      applier[4] = a2;
      xpc_dictionary_apply(v6, applier);
      xpc_release(v6);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
        v7 = v4[1];
        if (v7)
        {
          do
          {
LABEL_13:
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
          goto LABEL_3;
        }
      }

      else
      {
        v7 = v4[1];
        if (v7)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
LABEL_3:
      v4 = v8;
    }

    while (v8 != v3);
  }
}

void sub_2972B5C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  xpc_release(v20);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke(uint64_t a1, char *__s, void *a3)
{
  memset(__dst, 170, sizeof(__dst));
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
    goto LABEL_9;
  }

  HIBYTE(__dst[2]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_9:
    memcpy(v8, __s, v7);
  }

  *(v7 + v8) = 0;
  v10 = strlen(*MEMORY[0x29EDBF020]);
  v11 = v10;
  v12 = SHIBYTE(__dst[2]);
  if ((SHIBYTE(__dst[2]) & 0x8000000000000000) == 0)
  {
    if (v10 != -1)
    {
      v13 = __dst;
      v14 = SHIBYTE(__dst[2]);
      goto LABEL_15;
    }

LABEL_28:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v10 == -1)
  {
    goto LABEL_28;
  }

  v13 = __dst[0];
  v14 = __dst[1];
LABEL_15:
  if (v14 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  if (!memcmp(v13, *MEMORY[0x29EDBF020], v15) && v14 == v11)
  {
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 0x40000000;
    v18[2] = ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_0;
    v18[4] = *(a1 + 32);
    xpc_dictionary_apply(a3, v18);
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return 1;
}

void sub_2972B5E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN15AnalyticsHelper6appendERN3xpc4dictERNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES1_NS3_4lessISA_EENS8_INS3_4pairIKSA_S1_EEEEEE_block_invoke_2(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (object)
  {
    v5 = object;
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(**(a1 + 32), a2, v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  return 1;
}

void analytics::registerCallbackForTimedEventImpl(const char *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  abm::AWDHelperGetConnection(&v17);
  if (!v17)
  {
    goto LABEL_21;
  }

  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    p_dst = operator new(v7);
    __dst.__r_.__value_.__l.__size_ = v5;
    __dst.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_10;
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  p_dst = &__dst;
  if (v4)
  {
LABEL_10:
    memcpy(p_dst, a1, v5);
  }

  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  v8 = std::string::insert(&__dst, 0, "com.apple.Telephony.", 0x14uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v16 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v10 = qword_2A1399CD8;
    if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_INFO))
    {
LABEL_16:
      v11 = __p;
      if (v16 < 0)
      {
        v11 = __p[0];
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
      *(__dst.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_INFO, "Register for 24h timer: event[%s]", &__dst, 0xCu);
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
    v10 = qword_2A1399CD8;
    if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }
  }

  v12 = *a2;
  wis::WISServerConnection::RegisterCallbackForTimer();
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  v13 = v18;
  if (v18 && !atomic_fetch_add((v18 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2972B61A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a22);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void ___ZN9analytics33registerCallbackForTimedEventImplEPKcN8dispatch5queueEU13block_pointerFvNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  (*(v2 + 16))(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2972B6280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xpc::dict::to_debug_string(xpc::dict *this@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x29C26F920](*this);
  memset(a2, 170, 24);
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v7 = operator new(v6);
    a2[1] = v5;
    a2[2] = v6 | 0x8000000000000000;
    *a2 = v7;
    a2 = v7;
    goto LABEL_9;
  }

  *(a2 + 23) = v4;
  if (v4)
  {
LABEL_9:
    memcpy(a2, v3, v5);
  }

  *(a2 + v5) = 0;

  free(v3);
}

void *std::shared_ptr<AnalyticsHelper>::shared_ptr[abi:ne200100]<AnalyticsHelper,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E352F0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *a2 = a2;
  a2[1] = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2972B6478(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1}::operator() const(AnalyticsHelper*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AnalyticsHelper *,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper *)#1},std::allocator<AnalyticsHelper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AnalyticsHelper *,std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper *)#1},std::allocator<AnalyticsHelper>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI15AnalyticsHelperE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<AnalyticsHelper> ctu::SharedSynchronizable<AnalyticsHelper>::make_shared_ptr<AnalyticsHelper>(AnalyticsHelper*)::{lambda(AnalyticsHelper*)#1}::operator() const(AnalyticsHelper*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(*(a1 + 48));
    MEMORY[0x29C26DE80](a1 + 32);
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a1);
  }
}

void *ctu::SharedSynchronizable<AnalyticsHelper>::SharedSynchronizable(void *a1, const char *a2, dispatch_qos_class_t a3, dispatch_object_t *a4)
{
  v8 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2(a2, initially_inactive, v8);
  dispatch_set_qos_class_floor(v10, a3, 0);
  dispatch_activate(v10);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *a4;
  a1[3] = *a4;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::destroy(*(a1 + 1));
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(a1 + 1));
    xpc_release(*(a1 + 7));
    *(a1 + 7) = 0;
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return v7;
    }

    return v2;
  }

  else
  {
    if (v6 < v15)
    {
      return v2;
    }

    return v7;
  }
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

xpc_object_t std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__construct_node<std::pair<std::string const,xpc::dict> const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a1 = v6;
  a1[1] = a2;
  a1[2] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a3, *(a3 + 8));
  }

  else
  {
    *(v6 + 2) = *a3;
    *(v6 + 6) = *(a3 + 16);
  }

  v8 = *(a3 + 24);
  *(v7 + 7) = v8;
  if (v8)
  {
    result = xpc_retain(v8);
  }

  else
  {
    result = xpc_null_create();
    *(v7 + 7) = result;
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      xpc_release(*(v1 + 56));
      *(v1 + 56) = 0;
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
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

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,xpc::dict>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,xpc::dict>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(*(v1 + 64));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

void ResetDetection::create(NSObject **this@<X0>, queue a2@<0:X1>, void *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = operator new(0x78uLL);
  v8 = *this;
  v10 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9.fObj.fObj = &v10;
  ResetDetection::ResetDetection(v7, v9, a2.fObj.fObj);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ResetDetection>::shared_ptr[abi:ne200100]<ResetDetection,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1},0>(a3, v7);
  if (v8)
  {

    dispatch_release(v8);
  }
}

void sub_2972B711C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void ResetDetection::ResetDetection(ResetDetection *this, queue a2, __CFRunLoop *a3)
{
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "reset.detect");
  *this = 0;
  *(this + 1) = 0;
  v6 = *a2.fObj.fObj;
  *(this + 2) = *a2.fObj.fObj;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(this + 3) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 32, v9);
  MEMORY[0x29C26DE80](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *(this + 5) = a3;
  *(this + 6) = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  *(this + 7) = TelephonyBasebandCreateController();
  *(this + 16) = 2;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 12) = this + 104;
}