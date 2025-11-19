void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
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

    v3 = v1[1];
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

    operator delete(v1);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>,void *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296F15134(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

uint64_t logs::QMICommandDriver::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  *a6 = 0xAAAAAAAAAAAAAAAALL;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0xA8uLL);
  v13 = *a1;
  if (*a1)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a1 + 8);
  v36 = v13;
  v37 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *a2;
  if (*a2)
  {
    v15 = _Block_copy(v15);
  }

  v16 = *(a2 + 8);
  aBlock = v15;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = *a3;
  cf = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *a4, *(a4 + 8));
  }

  else
  {
    v32 = *a4;
  }

  v18 = *a5;
  v19 = a5[1];
  v31[0] = v18;
  v31[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  logs::QMICommandDriver::QMICommandDriver(v12, &v36, &aBlock, &cf, &v32, v31);
  *a6 = v12;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  v20 = operator new(0x20uLL);
  v20[1] = 0;
  v25 = v20 + 1;
  *v20 = &unk_2A1E17590;
  v20[2] = 0;
  v20[3] = v12;
  a6[1] = v20;
  v26 = *(v12 + 2);
  if (!v26)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v20 + 2, 1uLL, memory_order_relaxed);
    *(v12 + 1) = v12;
    *(v12 + 2) = v20;
    if (!atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_38;
    }

LABEL_21:
    if (!v19)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v26->__shared_owners_ != -1)
  {
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v20 + 2, 1uLL, memory_order_relaxed);
  *(v12 + 1) = v12;
  *(v12 + 2) = v20;
  v27 = v20;
  std::__shared_weak_count::__release_weak(v26);
  v20 = v27;
  if (atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

LABEL_38:
  v30 = v20;
  (*(*v20 + 16))(v20, v21, v22, v23, v24);
  std::__shared_weak_count::__release_weak(v30);
  if (!v19)
  {
LABEL_23:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(v32.__r_.__value_.__l.__data_);
    v28 = cf;
    if (!cf)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_22:
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_23;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v28 = cf;
  if (cf)
  {
LABEL_28:
    CFRelease(v28);
  }

LABEL_29:
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v37)
  {
    dispatch_release(v37);
  }

  if (v36)
  {
    _Block_release(v36);
  }

  return (*(**a6 + 40))(*a6, v21);
}

void sub_296F154DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  dispatch::callback<void({block_pointer})(std::shared_ptr<std::vector<unsigned char>>,BOOL)>::~callback(&a18);
  dispatch::callback<void({block_pointer})(logs::CollectionState)>::~callback(&a22);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(std::shared_ptr<std::vector<unsigned char>>,BOOL)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(logs::CollectionState)>::~callback(uint64_t a1)
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

uint64_t logs::QMICommandDriver::QMICommandDriver(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary **a4, uint64_t a5, void *a6)
{
  v12 = *a2;
  if (*a2)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a2 + 8);
  v30 = v12;
  v31 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a3;
  if (*a3)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a3 + 8);
  v28 = v14;
  v29 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v27 = *a4;
  if (v27)
  {
    CFRetain(v27);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a5, *(a5 + 8));
  }

  else
  {
    v26 = *a5;
  }

  v16 = a6[1];
  v24[2] = *a6;
  v25 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  logs::CommandDriver::CommandDriver();
  if (!v25 || atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v26.__r_.__value_.__l.__data_);
    v17 = v27;
    if (!v27)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v17 = v27;
  if (v27)
  {
LABEL_23:
    CFRelease(v17);
  }

LABEL_24:
  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  *(a1 + 120) = 0u;
  *a1 = &unk_2A1E171F0;
  *(a1 + 136) = 0u;
  v24[0] = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v24, *a4);
  memset(&__p[3], 170, 24);
  v18 = *MEMORY[0x29EDC8AF8];
  memset(__p, 0, 24);
  ctu::cf::MakeCFString::MakeCFString(&v32, v18);
  ctu::cf::map_adapter::getString();
  v19 = MEMORY[0x29C2683C0](&v32);
  if (SHIBYTE(__p[5]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p[3], __p[4]);
  }

  else
  {
    v22 = *&__p[3];
  }

  *(a1 + 152) = logs::QMICommandDriver::convertType_sync(v19, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDC8B00]);
  Int = ctu::cf::map_adapter::getInt(v24, __p[0]);
  MEMORY[0x29C2683C0](__p);
  *(a1 + 156) = Int;
  if (SHIBYTE(__p[5]) < 0)
  {
    operator delete(__p[3]);
  }

  MEMORY[0x29C268420](v24);
  return a1;
}

void sub_296F158F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v34 - 112));
  dispatch::callback<void({block_pointer})(std::shared_ptr<std::vector<unsigned char>>,BOOL)>::~callback(v34 - 104);
  dispatch::callback<void({block_pointer})(logs::CollectionState)>::~callback(v34 - 88);
  _Unwind_Resume(a1);
}

uint64_t logs::QMICommandDriver::convertType_sync(int a1, char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    v2 = *a2;
    result = strcasecmp(*a2, *MEMORY[0x29EDC8B18]);
    if (!result)
    {
      return result;
    }

    if (!strcasecmp(v2, *MEMORY[0x29EDC8B08]))
    {
      return 1;
    }
  }

  else
  {
    result = strcasecmp(a2, *MEMORY[0x29EDC8B18]);
    if (!result)
    {
      return result;
    }

    if (!strcasecmp(v2, *MEMORY[0x29EDC8B08]))
    {
      return 1;
    }
  }

  if (!strcasecmp(v2, *MEMORY[0x29EDC8B10]))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void logs::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E17550;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this[11];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[10];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = this[9];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[8];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = this[7];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  MEMORY[0x29C268320](this + 5);
  v7 = this[4];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = this[3];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = this[2];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void logs::QMICommandDriver::~QMICommandDriver(logs::QMICommandDriver *this)
{
  *this = &unk_2A1E171F0;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 120));
  logs::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E171F0;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 120));
  logs::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E171F0;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  qmi::Client::~Client((this + 120));
  logs::CommandDriver::~CommandDriver(this);
  operator delete(v3);
}

void logs::QMICommandDriver::init(logs::QMICommandDriver *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN4logs16QMICommandDriver4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_32_1;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4logs13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_63_0;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v104 = 0xAAAAAAAAAAAAAAAALL;
  v105 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v104, *(v2 + 48));
  if (!v104)
  {
    Name = logs::CommandDriver::getName(v2);
    v12 = strlen(Name);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v46 = 25;
      }

      else
      {
        v46 = (v12 | 7) + 1;
      }

      p_dst = operator new(v46);
      v102 = v13;
      v103 = v46 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v103) = v12;
      p_dst = &__dst;
      if (!v12)
      {
        LOBYTE(__dst) = 0;
        v15 = *(v2 + 24);
        v93 = v15;
        if (!v15)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    memmove(p_dst, Name, v13);
    *(p_dst + v13) = 0;
    v15 = *(v2 + 24);
    v93 = v15;
    if (!v15)
    {
LABEL_16:
      v16 = v98;
      if (*(v2 + 152) > 2u)
      {
        v17 = 0;
      }

      else
      {
        qmemcpy(v98, "radio", 5);
        v17 = 5;
        v16 = (v98 + 5);
      }

      *v16 = 0;
      v99 = v17;
      v47 = *(v2 + 16);
      if (!v47 || (v48 = *(v2 + 8), (v49 = std::__shared_weak_count::lock(v47)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v50 = v49;
      atomic_fetch_add_explicit(&v49->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v91 = 0;
        v92 = 0;
        v51 = std::__shared_weak_count::lock(v49);
        if (v51)
        {
LABEL_104:
          atomic_fetch_add_explicit(&v51->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v91 = v48;
          v92 = v51;
LABEL_105:
          std::__shared_weak_count::__release_weak(v50);
          if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v51->__on_zero_shared)(v51);
            std::__shared_weak_count::__release_weak(v51);
          }

          qmi::Client::createWithQueue();
          v52 = v108;
          v108 = 0uLL;
          v53 = *(v2 + 144);
          *(v2 + 136) = v52;
          if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v53->__on_zero_shared)(v53);
            std::__shared_weak_count::__release_weak(v53);
          }

          qmi::Client::~Client(buf);
          if (v92)
          {
            std::__shared_weak_count::__release_weak(v92);
          }

          if (v99 < 0)
          {
            operator delete(v98[0]);
            v26 = v93;
            if (!v93)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v26 = v93;
            if (!v93)
            {
              goto LABEL_47;
            }
          }

LABEL_46:
          dispatch_release(v26);
          goto LABEL_47;
        }
      }

      else
      {
        (v49->__on_zero_shared)(v49);
        std::__shared_weak_count::__release_weak(v50);
        v91 = 0;
        v92 = 0;
        v51 = std::__shared_weak_count::lock(v50);
        if (v51)
        {
          goto LABEL_104;
        }
      }

      v91 = 0;
      v92 = v51;
      goto LABEL_105;
    }

LABEL_15:
    dispatch_retain(v15);
    goto LABEL_16;
  }

  v4 = logs::CommandDriver::getName(v2);
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v5 | 7) + 1;
    }

    v7 = operator new(v18);
    v102 = v6;
    v103 = v18 | 0x8000000000000000;
    __dst = v7;
  }

  else
  {
    HIBYTE(v103) = v5;
    v7 = &__dst;
    if (!v5)
    {
      LOBYTE(__dst) = 0;
      v8 = *(v2 + 24);
      v100 = v8;
      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  memmove(v7, v4, v6);
  *(v7 + v6) = 0;
  v8 = *(v2 + 24);
  v100 = v8;
  if (v8)
  {
LABEL_8:
    dispatch_retain(v8);
  }

LABEL_9:
  v9 = v98;
  if (*(v2 + 152) > 2u)
  {
    v10 = 0;
  }

  else
  {
    qmemcpy(v98, "radio", 5);
    v10 = 5;
    v9 = (v98 + 5);
  }

  *v9 = 0;
  v99 = v10;
  v19 = *(v2 + 16);
  if (!v19 || (v20 = *(v2 + 8), (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v22);
    v96 = 0;
    v97 = 0;
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      goto LABEL_29;
    }

LABEL_92:
    v96 = 0;
    v97 = v23;
    goto LABEL_30;
  }

  v96 = 0;
  v97 = 0;
  v23 = std::__shared_weak_count::lock(v21);
  if (!v23)
  {
    goto LABEL_92;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v96 = v20;
  v97 = v23;
LABEL_30:
  std::__shared_weak_count::__release_weak(v22);
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v94 = v104;
  v95 = v105;
  if (v105)
  {
    atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v24 = v108;
  v108 = 0uLL;
  v25 = *(v2 + 144);
  *(v2 + 136) = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  qmi::Client::~Client(buf);
  if (v95 && !atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
  }

  if (v97)
  {
    std::__shared_weak_count::__release_weak(v97);
  }

  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  v26 = v100;
  if (v100)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (SHIBYTE(v103) < 0)
  {
    operator delete(__dst);
  }

  v84 = MEMORY[0x29EDCA5F8];
  v85 = 1174405120;
  v86 = ___ZN4logs16QMICommandDriver4initEv_block_invoke_2;
  v87 = &__block_descriptor_tmp_8;
  v28 = a1[5];
  v27 = a1[6];
  v88 = v2;
  v89 = v28;
  v90 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v77 = MEMORY[0x29EDCA5F8];
  v78 = 1174405120;
  v79 = ___ZN4logs16QMICommandDriver4initEv_block_invoke_3;
  v80 = &__block_descriptor_tmp_6_1;
  v30 = a1[5];
  v29 = a1[6];
  v81 = v2;
  v82 = v30;
  v83 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v70 = MEMORY[0x29EDCA5F8];
  v71 = 1174405120;
  v72 = ___ZN4logs16QMICommandDriver4initEv_block_invoke_7;
  v73 = &__block_descriptor_tmp_11_1;
  v32 = a1[5];
  v31 = a1[6];
  v74 = v2;
  v75 = v32;
  v76 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v63 = MEMORY[0x29EDCA5F8];
  v64 = 1174405120;
  v65 = ___ZN4logs16QMICommandDriver4initEv_block_invoke_12;
  v66 = &__block_descriptor_tmp_15_0;
  v34 = a1[5];
  v33 = a1[6];
  v67 = v2;
  v68 = v34;
  v69 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v56 = MEMORY[0x29EDCA5F8];
  v57 = 1174405120;
  v58 = ___ZN4logs16QMICommandDriver4initEv_block_invoke_16;
  v59 = &__block_descriptor_tmp_20_2;
  v36 = a1[5];
  v35 = a1[6];
  v60 = v2;
  v61 = v36;
  v62 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v54[0] = MEMORY[0x29EDCA5F8];
  v54[1] = 1174405120;
  v54[2] = ___ZN4logs16QMICommandDriver4initEv_block_invoke_21;
  v54[3] = &__block_descriptor_tmp_29_0;
  v38 = a1[5];
  v37 = a1[6];
  v54[4] = v2;
  v54[5] = v38;
  v55 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v107 = 0x40000000;
  *&v108 = ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm17LogCollectionData10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v108 + 1) = &unk_29EE5DFC8;
  v109 = v54;
  qmi::Client::setIndHandler();
  v39 = *(v2 + 16);
  if (!v39 || (v40 = *(v2 + 8), (v41 = std::__shared_weak_count::lock(v39)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v42 = v41;
  atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *buf = 0;
    v107 = 0;
    v43 = std::__shared_weak_count::lock(v41);
    if (v43)
    {
      goto LABEL_65;
    }

LABEL_89:
    v44 = v107;
    *buf = 0;
    v107 = v43;
    if (!v44)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  (v41->__on_zero_shared)(v41);
  std::__shared_weak_count::__release_weak(v42);
  *buf = 0;
  v107 = 0;
  v43 = std::__shared_weak_count::lock(v42);
  if (!v43)
  {
    goto LABEL_89;
  }

LABEL_65:
  atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v44 = v107;
  *buf = v40;
  v107 = v43;
  if (v44)
  {
LABEL_66:
    std::__shared_weak_count::__release_weak(v44);
  }

LABEL_67:
  std::__shared_weak_count::__release_weak(v42);
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  qmi::Client::setClientHandle();
  if (v107)
  {
    std::__shared_weak_count::__release_weak(v107);
  }

  qmi::Client::start((v2 + 120));
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_weak(v76);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_weak(v83);
  }

  if (v90)
  {
    std::__shared_weak_count::__release_weak(v90);
  }

  v45 = v105;
  if (v105)
  {
    if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }
  }
}

void sub_296F16984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  v52 = *(v50 - 248);
  if (v52)
  {
    std::__shared_weak_count::__release_weak(v52);
    if ((*(v50 - 177) & 0x80000000) == 0)
    {
LABEL_3:
      v53 = *(v50 - 240);
      if (!v53)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v50 - 177) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 200));
  v53 = *(v50 - 240);
  if (!v53)
  {
LABEL_8:
    if (*(v50 - 145) < 0)
    {
      operator delete(*(v50 - 168));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 144);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 144);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v53);
  goto LABEL_8;
}

void logs::QMICommandDriver::getServiceName_sync(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 2)
  {
    *a2 = 0;
    a2[23] = 0;
  }

  else
  {
    a2[4] = 111;
    *a2 = 1768186226;
    a2[5] = 0;
    a2[23] = 5;
  }
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke_2(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Stopped", v7, 2u);
        }

        logs::CommandDriver::notifyState_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F16CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4logs13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4logs13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke_3(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Started", v7, 2u);
        }

        logs::CommandDriver::notifyState_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F16DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke_7(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I EnterLowPower", v7, 2u);
        }

        logs::CommandDriver::notifyState_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F16EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke_12(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I ExitLowPower", v7, 2u);
        }

        logs::CommandDriver::notifyState_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F17008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke_16(void *a1, xpc_object_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v18 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (a1[5])
  {
    if (a2)
    {
      xpc_retain(a2);
      v7 = *(v5 + 40);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2 = xpc_null_create();
      v7 = *(v5 + 40);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    v10 = MEMORY[0x29C269360](a2);
    memset(__dst, 170, sizeof(__dst));
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      __dst[1] = v12;
      __dst[2] = (v14 | 0x8000000000000000);
      __dst[0] = v13;
    }

    else
    {
      HIBYTE(__dst[2]) = v11;
      v13 = __dst;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    memcpy(v13, v10, v12);
LABEL_21:
    *(v12 + v13) = 0;
    free(v10);
    v15 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v15 = __dst[0];
    }

    *buf = 136315138;
    v20 = v15;
    _os_log_error_impl(&dword_296ECF000, v7, OS_LOG_TYPE_ERROR, "Server error: %s", buf, 0xCu);
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

LABEL_8:
    qmi::Client::stop((v5 + 120));
    logs::CommandDriver::notifyState_sync();
    xpc_release(a2);
    v6 = v18;
    if (!v18)
    {
      goto LABEL_11;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F17248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke_21(void *a1, qmi::MessageBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v40 = v6;
    if (v6)
    {
      if (!a1[5])
      {
        goto LABEL_26;
      }

      v35 = 0;
      v36 = &v35;
      v37 = 0x2000000000;
      v38 = 0;
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 0x40000000;
      v32 = ___ZN4logs16QMICommandDriver4initEv_block_invoke_2;
      v33 = &unk_29EE5DF18;
      v34 = &v35;
      TlvValue = qmi::MessageBase::findTlvValue(a2);
      v9 = TlvValue;
      if (TlvValue)
      {
        tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 1);
        LOBYTE(v24) = *v9;
        v32(v31, &v24);
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x3802000000;
      v27 = __Block_byref_object_copy__0;
      v29 = 0;
      v30 = 0;
      v28 = __Block_byref_object_dispose__0;
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 0x40000000;
      v21 = ___ZN4logs16QMICommandDriver4initEv_block_invoke_24;
      v22 = &unk_29EE5DF40;
      v23 = &v24;
      v11 = qmi::MessageBase::findTlvValue(a2);
      if (v11)
      {
        *buf = 0;
        v42 = 0;
        v43 = 0;
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(buf, v11, &v11[v10], v10);
        v21(v20, buf);
        if (*buf)
        {
          v42 = *buf;
          operator delete(*buf);
        }
      }

      v12 = v25[6];
      v18 = v25[5];
      v19 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(v36 + 24);
      logs::CommandDriver::sendLogData_sync();
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      if (*(v36 + 24) == 1)
      {
        v14 = *(v5 + 160);
        if (v14)
        {
          dispatch_source_cancel(v14);
          dispatch_release(*(v5 + 160));
          *(v5 + 160) = 0;
          v15 = *(v5 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_296ECF000, v15, OS_LOG_TYPE_DEFAULT, "#I Log collection timer stopped", buf, 2u);
          }
        }
      }

      _Block_object_dispose(&v24, 8);
      v16 = v30;
      if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      _Block_object_dispose(&v35, 8);
      v6 = v40;
      if (v40)
      {
LABEL_26:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v17 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v17);
        }
      }
    }
  }
}

void sub_296F17620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Block_object_dispose(&a17, 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v29 + 40);
  _Block_object_dispose(&a29, 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v30 - 128);
  _Unwind_Resume(a1);
}

void ___ZN4logs16QMICommandDriver4initEv_block_invoke_24(uint64_t a1, char **a2)
{
  v4 = operator new(0x18uLL);
  v6 = *a2;
  v5 = a2[1];
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v7 = v5 - v6;
  if (v5 != v6)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v5 - v6);
    *v4 = v8;
    v4[1] = v8;
    v4[2] = &v8[v7];
    if (v7 < 0x20)
    {
      goto LABEL_8;
    }

    if ((v8 - v6) < 0x20)
    {
      goto LABEL_8;
    }

    v9 = &v8[v7 & 0x7FFFFFFFFFFFFFE0];
    v10 = v8 + 16;
    v11 = (v6 + 16);
    v12 = v7 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v13 = *v11;
      *(v10 - 1) = *(v11 - 1);
      *v10 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 32;
    }

    while (v12);
    v6 += v7 & 0x7FFFFFFFFFFFFFE0;
    v8 += v7 & 0x7FFFFFFFFFFFFFE0;
    if (v7 != (v7 & 0x7FFFFFFFFFFFFFE0))
    {
LABEL_8:
      v9 = v8;
      do
      {
        v14 = *v6++;
        *v9++ = v14;
      }

      while (v6 != v5);
    }

    v4[1] = v9;
  }

  v15 = operator new(0x20uLL);
  *v15 = &unk_2A1E175E0;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = v4;
  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 48);
  *(v16 + 40) = v4;
  *(v16 + 48) = v15;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);

    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_296F17880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::vector<unsigned char>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296F17894(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    v1[1] = v3;
    operator delete(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void logs::QMICommandDriver::stopLogCollectionTimer_sync(logs::QMICommandDriver *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 20));
    *(this + 20) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Log collection timer stopped", v4, 2u);
    }
  }
}

void logs::QMICommandDriver::enable(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4logs16QMICommandDriver6enableEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_35;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<logs::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4logs16QMICommandDriver6enableEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = _Block_copy(v2);
    v5 = a1[6];
    v6 = v4;
    v7 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = a1[6];
  v6 = 0;
  v7 = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  logs::QMICommandDriver::setCollectionState_sync(v3, 1, &v6);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void logs::QMICommandDriver::setCollectionState_sync(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v10;
  v54 = v10;
  qmi::MutableMessageBase::MutableMessageBase(&v53);
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 0x40000000;
  v11 = ___ZN4logs16QMICommandDriver23setCollectionState_syncEbN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v50 = ___ZN4logs16QMICommandDriver23setCollectionState_syncEbN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v51 = &__block_descriptor_tmp_43;
  v52 = a1;
  v12 = *(&v53 + 1);
  v35 = v7;
  if (*(&v53 + 1) != v54)
  {
    while (*(*v12 + 8) != 1)
    {
      if (++v12 == v54)
      {
        goto LABEL_12;
      }
    }
  }

  if (v12 == v54)
  {
LABEL_12:
    v15 = qmi::MutableMessageBase::createTLV<bsp::tlv::abm::LogCollectionType>(&v53);
    v11 = v50;
  }

  else
  {
    v13 = ***v12;
    if (!v14)
    {
      goto LABEL_50;
    }

    v15 = v14 + 9;
  }

  v11(v49, v15);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 0x40000000;
  v16 = ___ZN4logs16QMICommandDriver23setCollectionState_syncEbN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_2;
  v46 = ___ZN4logs16QMICommandDriver23setCollectionState_syncEbN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_2;
  v47 = &__block_descriptor_tmp_45;
  v48 = a2;
  v17 = *(&v53 + 1);
  v18 = v54;
  v19 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    v19 = *(&v53 + 1);
    while (*(*v19 + 8) != 16)
    {
      if (++v19 == v54)
      {
        goto LABEL_21;
      }
    }
  }

  if (v19 != v54)
  {
    v20 = ***v19;
    if (v21)
    {
      v22 = v21 + 9;
      goto LABEL_36;
    }

LABEL_50:
    __cxa_bad_cast();
  }

LABEL_21:
  v23 = operator new(0x10uLL);
  v24 = v23;
  v23[4] = 16;
  *v23 = &unk_2A1E176D0;
  if (v18 >= *(&v54 + 1))
  {
    v26 = v18 - v17;
    v27 = (v18 - v17) >> 3;
    v28 = v27 + 1;
    if ((v27 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v29 = *(&v54 + 1) - v17;
    if ((*(&v54 + 1) - v17) >> 2 > v28)
    {
      v28 = v29 >> 2;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v30 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      if (v30 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v31 = operator new(8 * v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = &v31[8 * v27];
    *v32 = v24;
    v25 = v32 + 8;
    memcpy(v31, v17, v26);
    *(&v53 + 1) = v31;
    *&v54 = v25;
    *(&v54 + 1) = &v31[8 * v30];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v18 = v23;
    v25 = v18 + 8;
  }

  v22 = v24 + 9;
  *&v54 = v25;
  v16 = v46;
LABEL_36:
  v16(v45, v22);
  v40 = a1 + 120;
  v41 = QMIServiceMsg::create();
  v42 = 25000;
  v43 = 0;
  v44 = 0;
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN4logs16QMICommandDriver23setCollectionState_syncEbN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_3;
  v36[3] = &__block_descriptor_tmp_46_0;
  v36[4] = v35;
  v37 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = *a3;
  if (*a3)
  {
    v33 = _Block_copy(v33);
  }

  v34 = *(a3 + 8);
  v38 = v33;
  object = v34;
  if (v34)
  {
    dispatch_retain(v34);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E010;
  aBlock[4] = v36;
  v44 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v44)
  {
    _Block_release(v44);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v38)
  {
    _Block_release(v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v53);
  std::__shared_weak_count::__release_weak(v9);
}

void sub_296F17F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  dispatch::callback<void({block_pointer})(BOOL)>::~callback(v34 + 48);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(&a33);
  std::__shared_weak_count::__release_weak(v33);
  _Unwind_Resume(a1);
}

void sub_296F17F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  qmi::MutableMessageBase::~MutableMessageBase(&a33);
  std::__shared_weak_count::__release_weak(v33);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(BOOL)>::~callback(uint64_t a1)
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

void __copy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void logs::QMICommandDriver::disable(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4logs16QMICommandDriver7disableEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_38_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<logs::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4logs16QMICommandDriver7disableEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = _Block_copy(v2);
    v5 = a1[6];
    v6 = v4;
    v7 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = a1[6];
  v6 = 0;
  v7 = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  logs::QMICommandDriver::setCollectionState_sync(v3, 0, &v6);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void logs::QMICommandDriver::collectLog(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4logs16QMICommandDriver10collectLogEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_41;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<logs::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4logs16QMICommandDriver10collectLogEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v4 = _Block_copy(v2);
    v5 = a1[6];
    v6 = v4;
    v7 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = a1[6];
  v6 = 0;
  v7 = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  logs::QMICommandDriver::collectLog_sync(v3, &v6);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void logs::QMICommandDriver::collectLog_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v8;
  v30 = v8;
  qmi::MutableMessageBase::MutableMessageBase(&v29);
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 0x40000000;
  v9 = ___ZN4logs16QMICommandDriver15collectLog_syncEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v26 = ___ZN4logs16QMICommandDriver15collectLog_syncEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v27 = &__block_descriptor_tmp_47;
  v28 = a1;
  v10 = *(&v29 + 1);
  if (*(&v29 + 1) != v30)
  {
    while (*(*v10 + 8) != 1)
    {
      if (++v10 == v30)
      {
        goto LABEL_12;
      }
    }
  }

  if (v10 == v30)
  {
LABEL_12:
    v13 = qmi::MutableMessageBase::createTLV<bsp::tlv::abm::LogCollectionType>(&v29);
    v9 = v26;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 9;
  }

  v9(v25, v13);
  v20 = a1 + 120;
  v21 = QMIServiceMsg::create();
  v22 = 25000;
  v23 = 0;
  v24 = 0;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN4logs16QMICommandDriver15collectLog_syncEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_2;
  v16[3] = &__block_descriptor_tmp_48_0;
  v16[4] = a1;
  v16[5] = v5;
  v17 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = *a2;
  if (*a2)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a2 + 8);
  v18 = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E010;
  aBlock[4] = v16;
  v24 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v24)
  {
    _Block_release(v24);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v29);
  std::__shared_weak_count::__release_weak(v7);
}

void sub_296F1867C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  dispatch::callback<void({block_pointer})(BOOL)>::~callback(v30 + 56);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  std::__shared_weak_count::__release_weak(v29);
  _Unwind_Resume(a1);
}

void sub_296F186B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  std::__shared_weak_count::__release_weak(v29);
  _Unwind_Resume(a1);
}

void ___ZN4logs16QMICommandDriver23setCollectionState_syncEbN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        v7 = *(a2 + 4);
        v8 = a1[6];
        if (v8)
        {
          v9 = _Block_copy(v8);
        }

        else
        {
          v9 = 0;
        }

        v10 = v7 == 0;
        v11 = a1[7];
        v13[0] = MEMORY[0x29EDCA5F8];
        v13[1] = 1174405120;
        v13[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
        v13[3] = &__block_descriptor_tmp_68_3;
        if (v9)
        {
          v12 = _Block_copy(v9);
        }

        else
        {
          v12 = 0;
        }

        aBlock = v12;
        v15 = v10;
        dispatch_async(v11, v13);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v9)
        {
          _Block_release(v9);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void __copy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN4logs13CommandDriverEEE48c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[7];
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN4logs13CommandDriverEEE48c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN4logs16QMICommandDriver15collectLog_syncEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(a2 + 4);
        v9 = a1[7];
        if (v9)
        {
          v10 = _Block_copy(v9);
        }

        else
        {
          v10 = 0;
        }

        v11 = a1[8];
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke;
        block[3] = &__block_descriptor_tmp_68_3;
        if (v10)
        {
          v12 = _Block_copy(v10);
        }

        else
        {
          v12 = 0;
        }

        aBlock = v12;
        v15 = v8 == 0;
        dispatch_async(v11, block);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v10)
        {
          _Block_release(v10);
        }

        if (!v8)
        {
          logs::QMICommandDriver::startLogCollectionTimer_sync(v5);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void logs::QMICommandDriver::startLogCollectionTimer_sync(logs::QMICommandDriver *this)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(this + 39))
  {
    *(this + 20) = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
    v2 = *(this + 2);
    if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v5 = v4;
    p_shared_weak_owners = &v4->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v5);
    }

    v7 = *(this + 20);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN4logs16QMICommandDriver28startLogCollectionTimer_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_51_2;
    handler[4] = this;
    handler[5] = v3;
    v14 = v5;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v7, handler);
    v8 = *(this + 20);
    v9 = dispatch_time(0, 1000000000 * *(this + 39));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 39);
      *buf = 67109120;
      v16 = v11;
      _os_log_impl(&dword_296ECF000, v10, OS_LOG_TYPE_DEFAULT, "#I Log collection timer started with timeout %u sec", buf, 8u);
    }

    dispatch_activate(*(this + 20));
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    std::__shared_weak_count::__release_weak(v5);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4logs13CommandDriverEEE56c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4logs13CommandDriverEEE56c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN4logs16QMICommandDriver28startLogCollectionTimer_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "Log collection timer expired !!", buf, 2u);
        }

        qmi::Client::stop((v3 + 15));
        v7 = v3[20];
        if (v7)
        {
          dispatch_source_cancel(v7);
          dispatch_release(v3[20]);
          v3[20] = 0;
          v8 = v3[5];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Log collection timer stopped", buf, 2u);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<logs::QMICommandDriver *,std::shared_ptr<logs::QMICommandDriver> ctu::SharedSynchronizable<logs::CommandDriver>::make_shared_ptr<logs::QMICommandDriver>(logs::QMICommandDriver*)::{lambda(logs::QMICommandDriver *)#1},std::allocator<logs::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<logs::QMICommandDriver *,std::shared_ptr<logs::QMICommandDriver> ctu::SharedSynchronizable<logs::CommandDriver>::make_shared_ptr<logs::QMICommandDriver>(logs::QMICommandDriver*)::{lambda(logs::QMICommandDriver *)#1},std::allocator<logs::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4logs13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4logs13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4logs13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4logs13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<logs::QMICommandDriver> ctu::SharedSynchronizable<logs::CommandDriver>::make_shared_ptr<logs::QMICommandDriver>(logs::QMICommandDriver*)::{lambda(logs::QMICommandDriver*)#1}::operator() const(logs::QMICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_pointer<std::vector<unsigned char> *,std::shared_ptr<std::vector<unsigned char>>::__shared_ptr_default_delete<std::vector<unsigned char>,std::vector<unsigned char>>,std::allocator<std::vector<unsigned char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<std::vector<unsigned char> *,std::shared_ptr<std::vector<unsigned char>>::__shared_ptr_default_delete<std::vector<unsigned char>,std::vector<unsigned char>>,std::allocator<std::vector<unsigned char>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<std::vector<unsigned char> *,std::shared_ptr<std::vector<unsigned char>>::__shared_ptr_default_delete<std::vector<unsigned char>,std::vector<unsigned char>>,std::allocator<std::vector<unsigned char>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296FBCD92)
  {
    if (((v2 & 0x8000000296FBCD92 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296FBCD92))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296FBCD92 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<std::vector<unsigned char>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v1[1] = v3;
      operator delete(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm17LogCollectionData10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F191DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<logs::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4logs13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E17628;
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

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4logs13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4logs13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

char *qmi::MutableMessageBase::createTLV<bsp::tlv::abm::LogCollectionType>(void *a1)
{
  v2 = operator new(0x10uLL);
  v3 = v2;
  v2[4] = 1;
  *v2 = &unk_2A1E17680;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(8 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v9];
    *v14 = v3;
    v6 = v14 + 8;
    memcpy(v13, v7, v8);
    a1[1] = v13;
    a1[2] = v6;
    a1[3] = &v13[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LogCollectionType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LogCollectionType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E17680;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LogCollectionState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LogCollectionState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E176D0;
  return result;
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  cast_message_type<qmi::ResponseBase const&>::cast(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_296F19728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void cast_message_type<qmi::ResponseBase const&>::cast(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, a1);
    qmi::ResponseBase::ResponseBase(a2, __p[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    qmi::MessageBase::MessageBase();
  }
}

void sub_296F197E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void awd::QMIAwdCommandDriver::sendEnableMetricSubmission(void *a1, uint64_t *a2, char a3, const void **a4)
{
  v5 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (*a4)
    {
      v8 = _Block_copy(*a4);
      v9 = a1[2];
      if (!v9)
      {
LABEL_16:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else
    {
      v8 = 0;
      v9 = a1[2];
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v9);
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v12;
    v14 = operator new(0x28uLL);
    *v14 = v5;
    v14[1] = v7;
    *(v14 + 16) = a3;
    v14[3] = v8;
    v14[4] = a1;
    v15 = a1[3];
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = operator new(0x18uLL);
    *v16 = v14;
    v16[1] = v11;
    v16[2] = v13;
    dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);

      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    v10 = a1[5];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "AppContext is NULL", v17, 2u);
    }
  }
}

void awd::QMIAwdCommandDriver::sendAddConfiguration(void *a1, uint64_t *a2, char a3, uint64_t a4, const void **a5)
{
  v6 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    v29 = *a2;
    v30 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = a3;
    v33 = 0;
    v34 = 0;
    __p = 0;
    v11 = *a4;
    v10 = *(a4 + 8);
    v12 = v10 - *a4;
    if (v10 == *a4)
    {
      v14 = 0;
      v13 = 0;
      v15 = *a5;
      if (*a5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = operator new(v10 - *a4);
      v14 = &v13[v12];
      __p = v13;
      v34 = &v13[v12];
      memcpy(v13, v11, v12);
      v33 = &v13[v12];
      v15 = *a5;
      if (*a5)
      {
LABEL_7:
        v16 = _Block_copy(v15);
        v36 = a1;
        v17 = a1[2];
        if (!v17)
        {
LABEL_28:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

LABEL_13:
        v19 = a1[1];
        v20 = std::__shared_weak_count::lock(v17);
        if (!v20)
        {
          goto LABEL_28;
        }

        v21 = v20;
        v22 = operator new(0x40uLL);
        *v22 = v6;
        v22[1] = v9;
        v29 = 0;
        v30 = 0;
        *(v22 + 16) = a3;
        v22[3] = 0;
        v22[4] = 0;
        v22[5] = 0;
        v23 = v14 - v13;
        if (v14 != v13)
        {
          if (v23 < 0)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v24 = operator new(v14 - v13);
          v22[3] = v24;
          v25 = &v24[v23];
          v22[5] = &v24[v23];
          memcpy(v24, v13, v14 - v13);
          v22[4] = v25;
        }

        aBlock = 0;
        v22[6] = v16;
        v22[7] = a1;
        v26 = a1[3];
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = operator new(0x18uLL);
        *v27 = v22;
        v27[1] = v19;
        v27[2] = v21;
        dispatch_async_f(v26, v27, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
        if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v28 = aBlock;
          if (!aBlock)
          {
            goto LABEL_22;
          }
        }

        else
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
          v28 = aBlock;
          if (!aBlock)
          {
LABEL_22:
            if (__p)
            {
              v33 = __p;
              operator delete(__p);
            }

            if (v30)
            {
              if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v30->__on_zero_shared)(v30);
                std::__shared_weak_count::__release_weak(v30);
              }
            }

            return;
          }
        }

        _Block_release(v28);
        goto LABEL_22;
      }
    }

    v16 = 0;
    v36 = a1;
    v17 = a1[2];
    if (!v17)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  v18 = a1[5];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v29) = 0;
    _os_log_error_impl(&dword_296ECF000, v18, OS_LOG_TYPE_ERROR, "AppContext is NULL", &v29, 2u);
  }
}

void sub_296F19C4C(void *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1);
  __clang_call_terminate(a1);
}

void awd::QMIAwdCommandDriver::sendClearConfiguration(void *a1, uint64_t *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    if (*a3)
    {
      v6 = _Block_copy(*a3);
      v7 = a1[2];
      if (!v7)
      {
LABEL_16:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else
    {
      v6 = 0;
      v7 = a1[2];
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v7);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = operator new(0x20uLL);
    *v12 = v4;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = a1;
    v13 = a1[3];
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = operator new(0x18uLL);
    *v14 = v12;
    v14[1] = v9;
    v14[2] = v11;
    dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v8 = a1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "AppContext is NULL", v15, 2u);
    }
  }
}

void awd::QMIAwdCommandDriver::sendUpdateProperties(void *a1, uint64_t *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    if (*a3)
    {
      v6 = _Block_copy(*a3);
      v7 = a1[2];
      if (!v7)
      {
LABEL_16:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else
    {
      v6 = 0;
      v7 = a1[2];
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v7);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = operator new(0x20uLL);
    *v12 = v4;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = a1;
    v13 = a1[3];
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = operator new(0x18uLL);
    *v14 = v12;
    v14[1] = v9;
    v14[2] = v11;
    dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v8 = a1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "AppContext is NULL", v15, 2u);
    }
  }
}

void awd::QMIAwdCommandDriver::sendQueriableMetric(void *a1, uint64_t *a2, uint64_t a3, int *a4, const void **a5)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(a3 + 8);
    v8 = *a4;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (*a5)
    {
      v10 = _Block_copy(*a5);
      v11 = a1[2];
      if (!v11)
      {
LABEL_16:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[2];
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v13 = a1[1];
    v14 = std::__shared_weak_count::lock(v11);
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = v14;
    v16 = operator new(0x30uLL);
    *v16 = v6;
    v16[1] = v9;
    v16[2] = v7;
    *(v16 + 6) = v8;
    v16[4] = v10;
    v16[5] = a1;
    v17 = a1[3];
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = operator new(0x18uLL);
    *v18 = v16;
    v18[1] = v13;
    v18[2] = v15;
    dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);

      std::__shared_weak_count::__release_weak(v15);
    }
  }

  else
  {
    v12 = a1[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_296ECF000, v12, OS_LOG_TYPE_ERROR, "AppContext is NULL", v19, 2u);
    }
  }
}

void awd::QMIAwdCommandDriver::sendQueriableMetric(void *a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a3 + 8);
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (*a4)
    {
      v8 = _Block_copy(*a4);
      v9 = a1[2];
      if (!v9)
      {
LABEL_16:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else
    {
      v8 = 0;
      v9 = a1[2];
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v9);
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v12;
    v14 = operator new(0x30uLL);
    *v14 = v5;
    v14[1] = v7;
    v14[2] = v6;
    *(v14 + 6) = 0;
    v14[4] = v8;
    v14[5] = a1;
    v15 = a1[3];
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = operator new(0x18uLL);
    *v16 = v14;
    v16[1] = v11;
    v16[2] = v13;
    dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);

      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    v10 = a1[5];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "AppContext is NULL", v17, 2u);
    }
  }
}

void awd::QMIAwdCommandDriver::init(awd::QMIAwdCommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::init(void)::$_0>(awd::QMIAwdCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<awd::QMIAwdCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void awd::QMIAwdCommandDriver::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x78uLL);
  v5 = *a1;
  v6 = a1[1];
  v7 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = 0;
  }

  awd::AwdCommandDriver::AwdCommandDriver();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *v4 = &unk_2A1E17738;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<awd::QMIAwdCommandDriver>::shared_ptr[abi:ne200100]<awd::QMIAwdCommandDriver,std::shared_ptr<awd::QMIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::QMIAwdCommandDriver>(awd::QMIAwdCommandDriver*)::{lambda(awd::QMIAwdCommandDriver*)#1},0>(a2, v4);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  awd::QMIAwdCommandDriver::init(*a2);
}

void sub_296F1A59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t awd::QMIAwdCommandDriver::QMIAwdCommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AwdCommandDriver::AwdCommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E17738;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AwdCommandDriver::AwdCommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E17738;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void awd::QMIAwdCommandDriver::~QMIAwdCommandDriver(awd::QMIAwdCommandDriver *this)
{
  *this = &unk_2A1E17738;
  qmi::Client::~Client((this + 88));

  awd::AwdCommandDriver::~AwdCommandDriver(this);
}

{
  *this = &unk_2A1E17738;
  qmi::Client::~Client((this + 88));
  awd::AwdCommandDriver::~AwdCommandDriver(this);

  operator delete(v2);
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v59 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = *(*a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 16))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Requesting metric submission to be %s", &buf, 0xCu);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48 = v5;
  v49 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v48);
  v47.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v47.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v47, 0);
  v6 = 1000 * v47.tv_sec + v47.tv_usec / 1000;
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 1174405120;
  v41 = ___ZZNK3awd19QMIAwdCommandDriver26sendEnableMetricSubmissionENSt3__110shared_ptrINS_10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke;
  v42 = &__block_descriptor_tmp_9;
  v43 = *v1;
  v7 = v1[1];
  v44 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46 = *(v1 + 16);
  v45 = v6;
  v8 = *(&v48 + 1);
  v9 = v49;
  v10 = *(&v48 + 1);
  if (*(&v48 + 1) != v49)
  {
    v10 = *(&v48 + 1);
    while (*(*v10 + 8) != 68)
    {
      if (++v10 == v49)
      {
        goto LABEL_16;
      }
    }
  }

  if (v10 == v49)
  {
LABEL_16:
    v14 = operator new(0x20uLL);
    v14[8] = 68;
    *v14 = &unk_2A1E17830;
    *(v14 + 4) = 0;
    v13 = v14 + 16;
    v14[20] = 0;
    *(v14 + 3) = 0;
    if (v9 >= *(&v49 + 1))
    {
      v16 = v9 - v8;
      v17 = (v9 - v8) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = *(&v49 + 1) - v8;
      if ((*(&v49 + 1) - v8) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v21 = v14;
        v22 = v14 + 16;
        v23 = operator new(8 * v20);
        v14 = v21;
      }

      else
      {
        v22 = v14 + 16;
        v23 = 0;
      }

      v24 = &v23[8 * v17];
      *v24 = v14;
      v15 = v24 + 8;
      memcpy(v23, v8, v16);
      *(&v48 + 1) = v23;
      *&v49 = v15;
      *(&v49 + 1) = &v23[8 * v20];
      if (v8)
      {
        operator delete(v8);
      }

      v13 = v22;
    }

    else
    {
      *v9 = v14;
      v15 = v9 + 8;
    }

    *&v49 = v15;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 16;
  }

  v41(v40, v13);
  v25 = *(v2 + 40);
  if (v25)
  {
    os_retain(v25);
  }

  QMIServiceMsg::create();
  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 1174405120;
  v52 = ___ZZNK3awd19QMIAwdCommandDriver26sendEnableMetricSubmissionENSt3__110shared_ptrINS_10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_7;
  v53 = &__block_descriptor_tmp_11_2;
  v54 = v25;
  if (v25)
  {
    os_retain(v25);
  }

  v58 = *(v1 + 16);
  v55 = *v1;
  v26 = v1[1];
  v56 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v1[3];
  if (v27)
  {
    v27 = _Block_copy(v27);
  }

  v57 = v27;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm24RegisterMetricIndication8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E038;
  aBlock[4] = &buf;
  v39 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v39)
  {
    _Block_release(v39);
  }

  if (v57)
  {
    _Block_release(v57);
  }

  v28 = v56;
  if (!v56 || atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v54;
    if (!v54)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  v29 = v54;
  if (v54)
  {
LABEL_47:
    os_release(v29);
  }

LABEL_48:
  if (v25)
  {
    os_release(v25);
  }

  v30 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    qmi::MutableMessageBase::~MutableMessageBase(&v48);
    v31 = __p;
    if (!__p)
    {
      goto LABEL_59;
    }
  }

  else
  {
    qmi::MutableMessageBase::~MutableMessageBase(&v48);
    v31 = __p;
    if (!__p)
    {
      goto LABEL_59;
    }
  }

  v32 = v31[3];
  if (v32)
  {
    _Block_release(v32);
  }

  v33 = v31[1];
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  operator delete(v31);
LABEL_59:
  v34 = a1;
  if (a1)
  {
    v35 = a1[2];
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
      v34 = a1;
    }

    operator delete(v34);
  }

  v36 = *MEMORY[0x29EDCA608];
}

void sub_296F1AE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZZNK3awd19QMIAwdCommandDriver26sendEnableMetricSubmissionENSt3__110shared_ptrINS_10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke(uint64_t a1, uint64_t a2)
{
  result = awd::AppContext::getAppID(*(a1 + 32));
  *a2 = result;
  *(a2 + 4) = *(a1 + 56);
  *(a2 + 8) = *(a1 + 48);
  return result;
}

uint64_t __copy_helper_block_e8_32c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZZNK3awd19QMIAwdCommandDriver26sendEnableMetricSubmissionENSt3__110shared_ptrINS_10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 4);
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "disabled";
    v6 = "error";
    if (*(a1 + 64))
    {
      v5 = "enabled";
    }

    if (!v3)
    {
      v6 = "success";
    }

    *buf = 136315394;
    v12 = v5;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_INFO, "Metric submission %s %s", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  awd::AppContext::operator()();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F1B15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_32c37_ZTSN3ctu2os11OSSharedRefI8os_log_sEE40c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1, void *a2)
{
  v4 = a2[4];
  a1[4] = v4;
  if (v4)
  {
    os_retain(v4);
  }

  v5 = a2[6];
  a1[5] = a2[5];
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_32c37_ZTSN3ctu2os11OSSharedRefI8os_log_sEE40c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[6];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[4];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[4];
    if (!v4)
    {
      return;
    }
  }

  os_release(v4);
}

void **ctu::os::OSSharedRef<os_log_s>::~OSSharedRef(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    os_release(v2);
  }

  return a1;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::MetricIndicationExt>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 16);
  *(v3 + 7) = *(result + 20);
  *(v3 + 8) = *(result + 24);
  *a2 = v3 + 16;
  *v3 = v2;
  *(v3 + 1) = 13;
  return result;
}

__n128 qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::MetricIndicationExt>::clone(__n128 *a1)
{
  v2 = operator new(0x20uLL);
  v2->n128_u8[8] = a1->n128_u8[8];
  v2->n128_u64[0] = &unk_2A1E17830;
  result = a1[1];
  v2[1] = result;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm24RegisterMetricIndication8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F1B420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v95 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v63 = v1;
  v2 = v1[7];
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = 1;
  v3 = *(v1 + 16);
  if (v3 < 3)
  {
    v5 = v1[3];
    v4 = v1[4];
    v6 = v4 - v5;
    if (v4 != v5)
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        AppID = awd::AppContext::getAppID(*v1);
        v9 = *(v1 + 16);
        v10 = awd::asString();
        *buf = 67109634;
        *&buf[4] = AppID;
        *v87 = 2080;
        *&v87[2] = v10;
        *&v87[10] = 2048;
        *&v87[12] = v6;
        _os_log_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEFAULT, "#I Requesting to add configuration appId: %d, type: %s, payload size: %lu", buf, 0x1Cu);
      }

      v57 = v2;
      v11 = dispatch_group_create();
      v12 = v11;
      if (v11)
      {
        dispatch_retain(v11);
        dispatch_group_enter(v12);
      }

      v13 = v1[4] - v1[3];
      v14 = v13 + 1499;
      if ((v13 + 1499) >= 0x5DC)
      {
        LODWORD(v29) = 0;
        v30 = v14 / 0x5DC;
        v60 = v2 + 88;
        v61 = v12;
        v58 = v14 / 0x5DC;
        do
        {
          *&v31 = 0xAAAAAAAAAAAAAAAALL;
          *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v80 = v31;
          v81 = v31;
          qmi::MutableMessageBase::MutableMessageBase(&v80);
          v32 = v1[3];
          v33 = v32 + (1500 * v29);
          v34 = v32 + v13;
          if (v34 >= v33 + 1500)
          {
            v34 = v33 + 1500;
          }

          *buf = MEMORY[0x29EDCA5F8];
          *v87 = 1174405120;
          *&v87[8] = ___ZZNK3awd19QMIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS_10AppContextEEENS_11PayloadTypeERKNS1_6vectorIhNS1_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke;
          *&v87[16] = &__block_descriptor_tmp_18_1;
          v88 = *v1;
          v35 = v1[1];
          v89 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v93 = v3;
          v94 = v29;
          v90 = v30;
          v91 = v33;
          v92 = v34;
          v36 = *(&v80 + 1);
          v37 = v81;
          v38 = *(&v80 + 1);
          if (*(&v80 + 1) != v81)
          {
            v38 = *(&v80 + 1);
            while (*(*v38 + 8) != 64)
            {
              if (++v38 == v81)
              {
                goto LABEL_57;
              }
            }
          }

          if (v38 == v81)
          {
LABEL_57:
            v42 = operator new(0x38uLL);
            v42[8] = 64;
            *v42 = &unk_2A1E17920;
            *(v42 + 2) = 0;
            v41 = v42 + 16;
            *(v42 + 5) = 0;
            *(v42 + 6) = 0;
            *(v42 + 4) = 0;
            *(v42 + 22) = 0;
            if (v37 >= *(&v81 + 1))
            {
              v44 = v37 - v36;
              v45 = (v37 - v36) >> 3;
              v46 = v45 + 1;
              if ((v45 + 1) >> 61)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v47 = *(&v81 + 1) - v36;
              if ((*(&v81 + 1) - v36) >> 2 > v46)
              {
                v46 = v47 >> 2;
              }

              if (v47 >= 0x7FFFFFFFFFFFFFF8)
              {
                v48 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v46;
              }

              v59 = v42 + 16;
              if (v48)
              {
                if (v48 >> 61)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v49 = v1;
                v50 = v13;
                v51 = v3;
                v52 = v42;
                v53 = operator new(8 * v48);
                v42 = v52;
                v3 = v51;
                v13 = v50;
                v1 = v49;
                v30 = v58;
              }

              else
              {
                v53 = 0;
              }

              v54 = &v53[8 * v45];
              *v54 = v42;
              v43 = v54 + 8;
              memcpy(v53, v36, v44);
              *(&v80 + 1) = v53;
              *&v81 = v43;
              *(&v81 + 1) = &v53[8 * v48];
              if (v36)
              {
                operator delete(v36);
              }

              v41 = v59;
            }

            else
            {
              *v37 = v42;
              v43 = v37 + 8;
            }

            *&v81 = v43;
          }

          else
          {
            v39 = ***v38;
            if (!v40)
            {
              __cxa_bad_cast();
            }

            v41 = v40 + 16;
          }

          (*&v87[8])(buf, v41);
          v75 = v60;
          v76 = QMIServiceMsg::create();
          v77 = 25000;
          v78 = 0;
          v79 = 0;
          v73[0] = MEMORY[0x29EDCA5F8];
          v73[1] = 1174405120;
          v73[2] = ___ZZNK3awd19QMIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS_10AppContextEEENS_11PayloadTypeERKNS1_6vectorIhNS1_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_19;
          v73[3] = &unk_2A1E17890;
          v12 = v61;
          group = v61;
          if (v61)
          {
            dispatch_retain(v61);
            if (group)
            {
              dispatch_group_enter(group);
            }
          }

          v73[4] = &v82;
          block = MEMORY[0x29EDCA5F8];
          v65 = 0x40000000;
          v66 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm9SetConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
          v67 = &unk_29EE5E060;
          v68 = v73;
          v55 = _Block_copy(&block);
          v79 = v55;
          if (v76)
          {
            qmi::Client::send();
            v55 = v79;
          }

          if (v55)
          {
            _Block_release(v55);
          }

          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          v56 = v89;
          if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }

          qmi::MutableMessageBase::~MutableMessageBase(&v80);
          v29 = (v29 + 1);
        }

        while (v30 > v29);
      }

      v15 = *(v57 + 40);
      if (v15)
      {
        os_retain(*(v57 + 40));
      }

      block = MEMORY[0x29EDCA5F8];
      v65 = 1174405120;
      v66 = ___ZZNK3awd19QMIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS_10AppContextEEENS_11PayloadTypeERKNS1_6vectorIhNS1_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_21;
      v67 = &unk_2A1E178C8;
      object = v15;
      if (v15)
      {
        os_retain(v15);
      }

      v68 = &v82;
      v70 = *v1;
      v16 = v1[1];
      v71 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v1[6];
      if (v17)
      {
        v17 = _Block_copy(v17);
      }

      aBlock = v17;
      dispatch_group_notify(v12, *(v57 + 24), &block);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      v18 = v71;
      if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        v19 = object;
        if (!object)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v19 = object;
        if (!object)
        {
LABEL_22:
          if (v15)
          {
            os_release(v15);
          }

          if (v12)
          {
            dispatch_group_leave(v12);
            dispatch_release(v12);
            dispatch_release(v12);
          }

          goto LABEL_37;
        }
      }

      os_release(v19);
      goto LABEL_22;
    }

    v21 = &v82;
LABEL_31:
    v24 = *(v2 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296ECF000, v24, OS_LOG_TYPE_DEFAULT, "#E Empty payload", buf, 2u);
      v21 = v83;
    }

    *(v21 + 24) = 0;
    v25 = *v1;
    v23 = v1[6];
    if (!v23)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v20 = *(v2 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_error_impl(&dword_296ECF000, v20, OS_LOG_TYPE_ERROR, "Illegal payload type: %hhu", buf, 8u);
    v21 = v83;
    *(v83 + 24) = 0;
    if (v1[4] == v1[3])
    {
      goto LABEL_31;
    }
  }

  else
  {
    v21 = &v82;
    v85 = 0;
    if (v1[4] == v1[3])
    {
      goto LABEL_31;
    }
  }

  v22 = *v1;
  v23 = v1[6];
  if (v23)
  {
LABEL_34:
    v23 = _Block_copy(v23);
  }

LABEL_35:
  *buf = v23;
  awd::AppContext::operator()();
  if (*buf)
  {
    _Block_release(*buf);
  }

LABEL_37:
  _Block_object_dispose(&v82, 8);
  std::unique_ptr<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v63);
  v26 = a1;
  if (a1)
  {
    v27 = a1[2];
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v26 = a1;
    }

    operator delete(v26);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_296F1BCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, dispatch_group_t object, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      v2[4] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *___ZZNK3awd19QMIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS_10AppContextEEENS_11PayloadTypeERKNS1_6vectorIhNS1_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = awd::AppContext::getAppID(*(a1 + 32));
  *(a2 + 4) = 0;
  v4 = *(a1 + 76);
  *(a2 + 8) = *(a1 + 72);
  v5 = *(a1 + 56);
  *(a2 + 12) = *(a1 + 48);
  *(a2 + 13) = v4;
  v6 = *(a1 + 64);

  return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a2 + 16), v5, v6, v6 - v5);
}

uint64_t ___ZZNK3awd19QMIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS_10AppContextEEENS_11PayloadTypeERKNS1_6vectorIhNS1_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_19(uint64_t result, uint64_t a2)
{
  if (*(a2 + 4))
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

void ___ZZNK3awd19QMIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS_10AppContextEEENS_11PayloadTypeERKNS1_6vectorIhNS1_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_21(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1[4] + 8) + 24))
    {
      v3 = "success";
    }

    else
    {
      v3 = "error";
    }

    *buf = 136315138;
    v10 = v3;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_INFO, "Add configuration %s", buf, 0xCu);
  }

  v4 = a1[6];
  v5 = a1[8];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  aBlock = v5;
  v6 = *(*(a1[4] + 8) + 24);
  awd::AppContext::operator()();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_296F1BFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c37_ZTSN3ctu2os11OSSharedRefI8os_log_sEE48c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE64c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    os_retain(v4);
  }

  v5 = a2[7];
  a1[6] = a2[6];
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[8];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_40c37_ZTSN3ctu2os11OSSharedRefI8os_log_sEE48c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE64c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[5];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[5];
    if (!v4)
    {
      return;
    }
  }

  os_release(v4);
}

void *qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::AddConfig>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E17920;
  v1 = result[4];
  if (v1)
  {
    result[5] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::AddConfig>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E17920;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::AddConfig>::write(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a2 + 3;
  *a2 += 3;
  *(v5 + 3) = *(a1 + 16);
  *(v5 + 7) = *(a1 + 20);
  *(v5 + 11) = *(a1 + 24);
  *(v5 + 15) = *(a1 + 28);
  *(v5 + 16) = *(a1 + 29);
  *(v5 + 17) = *(a1 + 40) - *(a1 + 32);
  result = memcpy((v5 + 19), *(a1 + 32), *(a1 + 40) - *(a1 + 32));
  v8 = v5 + 19 + *(a1 + 40) - *(a1 + 32);
  *a2 = v8;
  *v5 = v4;
  *(v5 + 1) = v8 - v6;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::AddConfig>::clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E17920;
  *(v2 + 2) = *(a1 + 16);
  v3 = *(a1 + 22);
  *(v2 + 4) = 0;
  *(v2 + 22) = v3;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - v5);
    *(v2 + 4) = v7;
    *(v2 + 5) = v7;
    v8 = &v7[v6];
    *(v2 + 6) = &v7[v6];
    memcpy(v7, v5, v6);
    *(v2 + 5) = v8;
  }

  return v2;
}

void sub_296F1C320(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm9SetConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F1C40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(awd::AppContext ***a1)
{
  v55 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)[3];
  v3 = *(v2 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    AppID = awd::AppContext::getAppID(*v1);
    *buf = 67109120;
    *&buf[4] = AppID;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Requesting to clear configuration: appId=%d", buf, 8u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v5;
  v45 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v44);
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 1174405120;
  v40 = ___ZZNK3awd19QMIAwdCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke;
  v41 = &__block_descriptor_tmp_28_1;
  v42 = *v1;
  v6 = v1[1];
  v43 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(&v44 + 1);
  v8 = v45;
  v9 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    v9 = *(&v44 + 1);
    while (*(*v9 + 8) != 65)
    {
      if (++v9 == v45)
      {
        goto LABEL_13;
      }
    }
  }

  if (v9 == v45)
  {
LABEL_13:
    v13 = operator new(0x18uLL);
    v13[8] = 65;
    *v13 = &unk_2A1E179D0;
    *(v13 + 3) = 0;
    v12 = v13 + 12;
    *(v13 + 4) = 0;
    if (v8 >= *(&v45 + 1))
    {
      v15 = v8 - v7;
      v16 = (v8 - v7) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v45 + 1) - v7;
      if ((*(&v45 + 1) - v7) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v13;
        v21 = v13 + 12;
        v22 = operator new(8 * v19);
        v13 = v20;
      }

      else
      {
        v21 = v13 + 12;
        v22 = 0;
      }

      v23 = &v22[8 * v16];
      *v23 = v13;
      v14 = v23 + 8;
      memcpy(v22, v7, v15);
      *(&v44 + 1) = v22;
      *&v45 = v14;
      *(&v45 + 1) = &v22[8 * v19];
      if (v7)
      {
        operator delete(v7);
      }

      v12 = v21;
    }

    else
    {
      *v8 = v13;
      v14 = v8 + 8;
    }

    *&v45 = v14;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 12;
  }

  v40(v39, v12);
  v24 = *(v2 + 5);
  if (v24)
  {
    os_retain(v24);
  }

  QMIServiceMsg::create();
  *buf = MEMORY[0x29EDCA5F8];
  v48 = 1174405120;
  v49 = ___ZZNK3awd19QMIAwdCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_29;
  v50 = &__block_descriptor_tmp_32_2;
  v51 = v24;
  if (v24)
  {
    os_retain(v24);
  }

  v52 = *v1;
  v25 = v1[1];
  v53 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v1[2];
  if (v26)
  {
    v26 = _Block_copy(v26);
  }

  v54 = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm9SetConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E060;
  aBlock[4] = buf;
  v38 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v38)
  {
    _Block_release(v38);
  }

  if (v54)
  {
    _Block_release(v54);
  }

  v27 = v53;
  if (!v53 || atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v28 = v51;
    if (!v51)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  v28 = v51;
  if (v51)
  {
LABEL_44:
    os_release(v28);
  }

LABEL_45:
  if (v24)
  {
    os_release(v24);
  }

  v29 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    qmi::MutableMessageBase::~MutableMessageBase(&v44);
    v30 = __p;
    if (!__p)
    {
      goto LABEL_56;
    }
  }

  else
  {
    qmi::MutableMessageBase::~MutableMessageBase(&v44);
    v30 = __p;
    if (!__p)
    {
      goto LABEL_56;
    }
  }

  v31 = v30[2];
  if (v31)
  {
    _Block_release(v31);
  }

  v32 = v30[1];
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  operator delete(v30);
LABEL_56:
  v33 = a1;
  if (a1)
  {
    v34 = a1[2];
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
      v33 = a1;
    }

    operator delete(v33);
  }

  v35 = *MEMORY[0x29EDCA608];
}

void sub_296F1CA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZZNK3awd19QMIAwdCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  result = awd::AppContext::getAppID(*(a1 + 32));
  *a2 = result;
  return result;
}

void ___ZZNK3awd19QMIAwdCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_29(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 4);
  v4 = a1[4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "error";
    if (!v3)
    {
      v5 = "success";
    }

    *buf = 136315138;
    v11 = v5;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_INFO, "Clear configuration %s", buf, 0xCu);
  }

  v6 = a1[5];
  v7 = a1[7];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  awd::AppContext::operator()();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_296F1CC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::DeleteConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::DeleteConfig>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E179D0;
  *(result + 12) = *(a1 + 12);
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(awd::AppContext ***a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)[3];
  v3 = *(v2 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEBUG, "#D Requesting to update properties", buf, 2u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v4;
  v59 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v58);
  Properties = awd::AppContext::getProperties(*v1);
  v51[0] = MEMORY[0x29EDCA5F8];
  v51[1] = 1174405120;
  v52 = ___ZZNK3awd19QMIAwdCommandDriver20sendUpdatePropertiesENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke;
  v53 = &__block_descriptor_tmp_36_1;
  v54 = *v1;
  v6 = v1[1];
  v55 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v56 = Properties;
  v57 = BYTE2(Properties);
  v7 = *(&v58 + 1);
  v8 = v59;
  v9 = *(&v58 + 1);
  if (*(&v58 + 1) != v59)
  {
    v9 = *(&v58 + 1);
    while (*(*v9 + 8) != 69)
    {
      if (++v9 == v59)
      {
        goto LABEL_13;
      }
    }
  }

  if (v9 == v59)
  {
LABEL_13:
    v13 = operator new(0x18uLL);
    v13[8] = 69;
    *v13 = &unk_2A1E17A80;
    *(v13 + 3) = 0;
    v12 = v13 + 12;
    *(v13 + 8) = 0;
    if (v8 >= *(&v59 + 1))
    {
      v15 = v8 - v7;
      v16 = (v8 - v7) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v59 + 1) - v7;
      if ((*(&v59 + 1) - v7) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v13;
        v21 = v13 + 12;
        v22 = operator new(8 * v19);
        v13 = v20;
      }

      else
      {
        v21 = v13 + 12;
        v22 = 0;
      }

      v23 = &v22[8 * v16];
      *v23 = v13;
      v14 = v23 + 8;
      memcpy(v22, v7, v15);
      *(&v58 + 1) = v22;
      *&v59 = v14;
      *(&v59 + 1) = &v22[8 * v19];
      if (v7)
      {
        operator delete(v7);
      }

      v12 = v21;
    }

    else
    {
      *v8 = v13;
      v14 = v8 + 8;
    }

    *&v59 = v14;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 12;
  }

  v52(v51, v12);
  v24 = *(v2 + 5);
  v50 = v24;
  if (v24)
  {
    os_retain(v24);
  }

  v45 = v2 + 88;
  v46 = QMIServiceMsg::create();
  v47 = 25000;
  v48 = 0;
  v49 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v38 = 1174405120;
  v39 = ___ZZNK3awd19QMIAwdCommandDriver20sendUpdatePropertiesENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_37;
  v40 = &__block_descriptor_tmp_40_1;
  object = v24;
  if (v24)
  {
    os_retain(v24);
  }

  v42 = *v1;
  v25 = v1[1];
  v43 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v1[2];
  if (v26)
  {
    v26 = _Block_copy(v26);
  }

  v44 = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm24RegisterMetricIndication8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E038;
  aBlock[4] = buf;
  v49 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v49)
  {
    _Block_release(v49);
  }

  if (v44)
  {
    _Block_release(v44);
  }

  v27 = v43;
  if (!v43 || atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v28 = object;
    if (!object)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  v28 = object;
  if (object)
  {
LABEL_44:
    os_release(v28);
  }

LABEL_45:
  if (v50)
  {
    os_release(v50);
  }

  v29 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    qmi::MutableMessageBase::~MutableMessageBase(&v58);
    v30 = __p;
    if (!__p)
    {
      goto LABEL_56;
    }
  }

  else
  {
    qmi::MutableMessageBase::~MutableMessageBase(&v58);
    v30 = __p;
    if (!__p)
    {
      goto LABEL_56;
    }
  }

  v31 = v30[2];
  if (v31)
  {
    _Block_release(v31);
  }

  v32 = v30[1];
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  operator delete(v30);
LABEL_56:
  v33 = a1;
  if (a1)
  {
    v34 = a1[2];
    if (v34)
    {
      if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
        v33 = a1;
      }
    }

    operator delete(v33);
  }
}

void sub_296F1D2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v32 + 40);
  ctu::os::OSSharedRef<os_log_s>::~OSSharedRef((v32 + 32));
  qmi::Client::SendProxy::~SendProxy(&a20);
  ctu::os::OSSharedRef<os_log_s>::~OSSharedRef(&a25);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a32);
  qmi::MutableMessageBase::~MutableMessageBase((v33 - 176));
  std::unique_ptr<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZZNK3awd19QMIAwdCommandDriver20sendUpdatePropertiesENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke(uint64_t a1, uint64_t a2)
{
  result = awd::AppContext::getAppID(*(a1 + 32));
  *a2 = result;
  *(a2 + 4) = *(a1 + 49);
  return result;
}

void ___ZZNK3awd19QMIAwdCommandDriver20sendUpdatePropertiesENSt3__110shared_ptrINS_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_37(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 4);
  v4 = a1[4];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[5];
    v6 = a1[7];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = "error";
  if (!v3)
  {
    v8 = "success";
  }

  *buf = 136315138;
  v12 = v8;
  _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "Update properties %s", buf, 0xCu);
  v9 = a1[5];
  v6 = a1[7];
  if (v6)
  {
LABEL_3:
    v6 = _Block_copy(v6);
  }

LABEL_4:
  aBlock = v6;
  awd::AppContext::operator()();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_296F1D544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::PIILocationExt>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *(v3 + 8) = *(result + 17);
  *a2 = v3 + 9;
  *v3 = v2;
  *(v3 + 1) = 6;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::PIILocationExt>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E17A80;
  *(result + 12) = *(a1 + 12);
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = *(*a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(v1 + 4);
    v23 = *(v1 + 5);
    v24 = *(v1 + 6);
    *buf = 67109632;
    *&buf[4] = v22;
    LOWORD(v40) = 1024;
    *(&v40 + 2) = v23;
    HIWORD(v40) = 1024;
    LODWORD(v41) = v24;
    _os_log_debug_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEBUG, "#D Querying metric, component: 0x%x, submissionId: 0x%x, triggerId: 0x%x", buf, 0x14u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v4;
  v37 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v29 = ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoERKNS_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke;
  v30 = &__block_descriptor_tmp_44_2;
  v31 = *v1;
  v5 = v1[1];
  v32 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = *(v1 + 5);
  v34 = *(v1 + 4);
  v35 = *(v1 + 6);
  v6 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    while (*(*v6 + 8) != 66)
    {
      if (++v6 == v37)
      {
        goto LABEL_12;
      }
    }
  }

  if (v6 == v37)
  {
LABEL_12:
    v9 = qmi::MutableMessageBase::createTLV<awd::tlv::abm::MetricsExt>(&v36);
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v29(v28, v9);
  v10 = *(v2 + 40);
  if (v10)
  {
    os_retain(v10);
  }

  QMIServiceMsg::create();
  *buf = MEMORY[0x29EDCA5F8];
  v40 = 1174405120;
  v41 = ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoERKNS_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_45;
  v42 = &__block_descriptor_tmp_48_1;
  v43 = v10;
  if (v10)
  {
    os_retain(v10);
  }

  v44 = *v1;
  v11 = v1[1];
  v45 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v1[4];
  if (v12)
  {
    v12 = _Block_copy(v12);
  }

  v46 = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm19SetQueriableMetrics8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E088;
  aBlock[4] = buf;
  v27 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v27)
  {
    _Block_release(v27);
  }

  if (v46)
  {
    _Block_release(v46);
  }

  v13 = v45;
  if (!v45 || atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v43;
    if (!v43)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  v14 = v43;
  if (v43)
  {
LABEL_28:
    os_release(v14);
  }

LABEL_29:
  if (v10)
  {
    os_release(v10);
  }

  v15 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    qmi::MutableMessageBase::~MutableMessageBase(&v36);
    v16 = __p;
    if (!__p)
    {
      goto LABEL_40;
    }
  }

  else
  {
    qmi::MutableMessageBase::~MutableMessageBase(&v36);
    v16 = __p;
    if (!__p)
    {
      goto LABEL_40;
    }
  }

  v17 = v16[4];
  if (v17)
  {
    _Block_release(v17);
  }

  v18 = v16[1];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(v16);
LABEL_40:
  v19 = a1;
  if (a1)
  {
    v20 = a1[2];
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v19 = a1;
    }

    operator delete(v19);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_296F1DAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoERKNS_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke(uint64_t a1, _DWORD *a2)
{
  result = awd::AppContext::getAppID(*(a1 + 32));
  *a2 = result;
  a2[1] = *(a1 + 48);
  a2[3] = *(a1 + 52);
  a2[2] = *(a1 + 56);
  return result;
}

void ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoERKNS_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_45(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 4);
  v4 = a1[4];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[5];
    v6 = a1[7];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = "error";
  if (!v3)
  {
    v8 = "success";
  }

  *buf = 136315138;
  v12 = v8;
  _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "Metric query %s", buf, 0xCu);
  v9 = a1[5];
  v6 = a1[7];
  if (v6)
  {
LABEL_3:
    v6 = _Block_copy(v6);
  }

LABEL_4:
  aBlock = v6;
  awd::AppContext::operator()();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_296F1DD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

char *qmi::MutableMessageBase::createTLV<awd::tlv::abm::MetricsExt>(void *a1)
{
  v2 = operator new(0x20uLL);
  v2[8] = 66;
  *v2 = &unk_2A1E17B30;
  *(v2 + 12) = 0;
  v3 = v2 + 12;
  *(v2 + 20) = 0;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = v2;
      v14 = operator new(8 * v12);
      v2 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[8 * v9];
    *v15 = v2;
    v6 = v15 + 8;
    memcpy(v14, v7, v8);
    a1[1] = v14;
    a1[2] = v6;
    a1[3] = &v14[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::MetricsExt>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *(v3 + 11) = *(result + 20);
  *(v3 + 15) = *(result + 24);
  *a2 = v3 + 19;
  *v3 = v2;
  *(v3 + 1) = 16;
  return result;
}

__n128 qmi::MutableMessageBase::TlvWrapper<awd::tlv::abm::MetricsExt>::clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E17B30;
  result = *(a1 + 12);
  *(v2 + 12) = result;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm19SetQueriableMetrics8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F1E034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = *(*a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(v1 + 4);
    v23 = *(v1 + 5);
    v24 = *(v1 + 6);
    *buf = 67109632;
    *&buf[4] = v22;
    LOWORD(v40) = 1024;
    *(&v40 + 2) = v23;
    HIWORD(v40) = 1024;
    LODWORD(v41) = v24;
    _os_log_debug_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEBUG, "#D Querying metric, component: 0x%x, submissionId: 0x%x, triggerId: 0x%x", buf, 0x14u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v4;
  v37 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v29 = ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke;
  v30 = &__block_descriptor_tmp_52_1;
  v31 = *v1;
  v5 = v1[1];
  v32 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = *(v1 + 5);
  v34 = *(v1 + 4);
  v35 = *(v1 + 6);
  v6 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    while (*(*v6 + 8) != 66)
    {
      if (++v6 == v37)
      {
        goto LABEL_12;
      }
    }
  }

  if (v6 == v37)
  {
LABEL_12:
    v9 = qmi::MutableMessageBase::createTLV<awd::tlv::abm::MetricsExt>(&v36);
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v29(v28, v9);
  v10 = *(v2 + 40);
  if (v10)
  {
    os_retain(v10);
  }

  QMIServiceMsg::create();
  *buf = MEMORY[0x29EDCA5F8];
  v40 = 1174405120;
  v41 = ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_53;
  v42 = &__block_descriptor_tmp_56_0;
  v43 = v10;
  if (v10)
  {
    os_retain(v10);
  }

  v44 = *v1;
  v11 = v1[1];
  v45 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v1[4];
  if (v12)
  {
    v12 = _Block_copy(v12);
  }

  v46 = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3awd3abm19SetQueriableMetrics8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E088;
  aBlock[4] = buf;
  v27 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v27)
  {
    _Block_release(v27);
  }

  if (v46)
  {
    _Block_release(v46);
  }

  v13 = v45;
  if (!v45 || atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v43;
    if (!v43)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  v14 = v43;
  if (v43)
  {
LABEL_28:
    os_release(v14);
  }

LABEL_29:
  if (v10)
  {
    os_release(v10);
  }

  v15 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    qmi::MutableMessageBase::~MutableMessageBase(&v36);
    v16 = __p;
    if (!__p)
    {
      goto LABEL_40;
    }
  }

  else
  {
    qmi::MutableMessageBase::~MutableMessageBase(&v36);
    v16 = __p;
    if (!__p)
    {
      goto LABEL_40;
    }
  }

  v17 = v16[4];
  if (v17)
  {
    _Block_release(v17);
  }

  v18 = v16[1];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(v16);
LABEL_40:
  v19 = a1;
  if (a1)
  {
    v20 = a1[2];
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v19 = a1;
    }

    operator delete(v19);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_296F1E560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::QMIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke(uint64_t a1, _DWORD *a2)
{
  result = awd::AppContext::getAppID(*(a1 + 32));
  *a2 = result;
  a2[1] = *(a1 + 48);
  a2[3] = *(a1 + 52);
  a2[2] = *(a1 + 56);
  return result;
}

void ___ZZNK3awd19QMIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS_10AppContextEEERKNS_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEv_block_invoke_53(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 4);
  v4 = a1[4];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[5];
    v6 = a1[7];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = "error";
  if (!v3)
  {
    v8 = "success";
  }

  *buf = 136315138;
  v12 = v8;
  _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "Metric query %s", buf, 0xCu);
  v9 = a1[5];
  v6 = a1[7];
  if (v6)
  {
LABEL_3:
    v6 = _Block_copy(v6);
  }

LABEL_4:
  aBlock = v6;
  awd::AppContext::operator()();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_296F1E7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::QMIAwdCommandDriver::init(void)::$_0>(awd::QMIAwdCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::QMIAwdCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<awd::QMIAwdCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEBUG, "#D Init", buf, 2u);
  }

  v57 = 0xAAAAAAAAAAAAAAAALL;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v57, v2[1].~__shared_weak_count_0);
  if (!v57)
  {
    Name = awd::AwdCommandDriver::getName(v2);
    v24 = strlen(Name);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v37 = 25;
      }

      else
      {
        v37 = (v24 | 7) + 1;
      }

      p_dst = operator new(v37);
      v48 = v25;
      v49 = v37 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v49) = v24;
      p_dst = &__dst;
      if (!v24)
      {
        LOBYTE(__dst) = 0;
        get_deleter = v2->__get_deleter;
        v52 = get_deleter;
        if (!get_deleter)
        {
LABEL_50:
          HIBYTE(v44) = 3;
          LODWORD(__p) = 6584161;
          on_zero_shared = v2->__on_zero_shared;
          if (!on_zero_shared || (v29 = v2->~__shared_weak_count_0, (v30 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v31 = v30;
          atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v54 = 0;
            v55 = 0;
            v32 = std::__shared_weak_count::lock(v30);
            if (v32)
            {
              goto LABEL_54;
            }
          }

          else
          {
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v31);
            v54 = 0;
            v55 = 0;
            v32 = std::__shared_weak_count::lock(v31);
            if (v32)
            {
LABEL_54:
              atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v33 = v55;
              v54 = v29;
              v55 = v32;
              if (!v33)
              {
LABEL_56:
                std::__shared_weak_count::__release_weak(v31);
                if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v32->__on_zero_shared)(v32);
                  std::__shared_weak_count::__release_weak(v32);
                }

                qmi::Client::createWithQueue();
                v34 = v61;
                v61 = 0uLL;
                on_zero_shared_weak = v2[2].__on_zero_shared_weak;
                *&v2[2].__get_deleter = v34;
                if (on_zero_shared_weak && !atomic_fetch_add(&on_zero_shared_weak->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (on_zero_shared_weak->__on_zero_shared)(on_zero_shared_weak);
                  std::__shared_weak_count::__release_weak(on_zero_shared_weak);
                }

                qmi::Client::~Client(buf);
                if (v55)
                {
                  std::__shared_weak_count::__release_weak(v55);
                }

                if (SHIBYTE(v44) < 0)
                {
                  operator delete(__p);
                  v18 = v52;
                  if (!v52)
                  {
                    goto LABEL_32;
                  }
                }

                else
                {
                  v18 = v52;
                  if (!v52)
                  {
                    goto LABEL_32;
                  }
                }

LABEL_31:
                dispatch_release(v18);
                goto LABEL_32;
              }

LABEL_55:
              std::__shared_weak_count::__release_weak(v33);
              goto LABEL_56;
            }
          }

          v33 = v55;
          v54 = 0;
          v55 = v32;
          if (!v33)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_49:
        dispatch_retain(get_deleter);
        goto LABEL_50;
      }
    }

    memmove(p_dst, Name, v25);
    *(p_dst + v25) = 0;
    get_deleter = v2->__get_deleter;
    v52 = get_deleter;
    if (!get_deleter)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v4 = awd::AwdCommandDriver::getName(v2);
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v5 | 7) + 1;
    }

    v7 = operator new(v36);
    v48 = v6;
    v49 = v36 | 0x8000000000000000;
    __dst = v7;
LABEL_71:
    memmove(v7, v4, v6);
    *(v7 + v6) = 0;
    v8 = v2->__get_deleter;
    v56 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  HIBYTE(v49) = v5;
  v7 = &__dst;
  if (v5)
  {
    goto LABEL_71;
  }

  LOBYTE(__dst) = 0;
  v8 = v2->__get_deleter;
  v56 = v8;
  if (v8)
  {
LABEL_8:
    dispatch_retain(v8);
  }

LABEL_9:
  HIBYTE(v44) = 3;
  LODWORD(__p) = 6584161;
  v9 = v2->__on_zero_shared;
  if (!v9 || (v10 = v2->~__shared_weak_count_0, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v54 = 0;
    v55 = 0;
    v13 = std::__shared_weak_count::lock(v11);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_74:
    v14 = v55;
    v54 = 0;
    v55 = v13;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v12);
  v54 = 0;
  v55 = 0;
  v13 = std::__shared_weak_count::lock(v12);
  if (!v13)
  {
    goto LABEL_74;
  }

LABEL_13:
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = v55;
  v54 = v10;
  v55 = v13;
  if (v14)
  {
LABEL_14:
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_15:
  std::__shared_weak_count::__release_weak(v12);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v52 = v57;
  v53 = v58;
  if (v58)
  {
    atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v15 = v61;
  v61 = 0uLL;
  v16 = v2[2].__on_zero_shared_weak;
  *&v2[2].__get_deleter = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  qmi::Client::~Client(buf);
  v17 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  v18 = v56;
  if (v56)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__dst);
  }

  __dst = MEMORY[0x29EDCA5F8];
  v48 = 0x40000000;
  v49 = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke;
  v50 = &__block_descriptor_tmp_58_0;
  v51 = v2;
  qmi::Client::setHandler();
  __p = MEMORY[0x29EDCA5F8];
  v43 = 0x40000000;
  v44 = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_2;
  v45 = &__block_descriptor_tmp_59;
  v46 = v2;
  qmi::Client::setHandler();
  v41[10] = MEMORY[0x29EDCA5F8];
  v41[11] = 0x40000000;
  v41[12] = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_3;
  v41[13] = &__block_descriptor_tmp_61_0;
  v41[14] = v2;
  qmi::Client::setHandler();
  v41[5] = MEMORY[0x29EDCA5F8];
  v41[6] = 0x40000000;
  v41[7] = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_4;
  v41[8] = &__block_descriptor_tmp_62_0;
  v41[9] = v2;
  qmi::Client::setHandler();
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 0x40000000;
  v41[2] = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_5;
  v41[3] = &__block_descriptor_tmp_64;
  v41[4] = v2;
  *buf = MEMORY[0x29EDCA5F8];
  v60 = 0x40000000;
  *&v61 = ___ZNK3qmi6Client13setIndHandlerIRKN3awd3abm16MetricSubmission10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v61 + 1) = &unk_29EE5E1F0;
  v62 = v41;
  qmi::Client::setIndHandler();
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v40[2] = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_65;
  v40[3] = &__block_descriptor_tmp_69_0;
  v40[4] = v2;
  *buf = MEMORY[0x29EDCA5F8];
  v60 = 0x40000000;
  *&v61 = ___ZNK3qmi6Client13setIndHandlerIRKN3awd3abm19MetricSubmissionEnd10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v61 + 1) = &unk_29EE5E218;
  v62 = v40;
  qmi::Client::setIndHandler();
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 0x40000000;
  v39[2] = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_70;
  v39[3] = &__block_descriptor_tmp_74;
  v39[4] = v2;
  *buf = MEMORY[0x29EDCA5F8];
  v60 = 0x40000000;
  *&v61 = ___ZNK3qmi6Client13setIndHandlerIRKN3awd3abm13SubmitTrigger10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v61 + 1) = &unk_29EE5E240;
  v62 = v39;
  qmi::Client::setIndHandler();
  qmi::Client::start(&v2[2].~__shared_weak_count_0);
  v19 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v19, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  v20 = v58;
  if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(v1);
  v21 = a1;
  if (a1)
  {
    v22 = a1[2];
    if (v22)
    {
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
        v21 = a1;
      }
    }

    operator delete(v21);
  }
}

void sub_296F1F1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v44 = *(v42 - 160);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
    if ((a41 & 0x80000000) == 0)
    {
LABEL_3:
      v45 = *(v42 - 184);
      if (!v45)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  v45 = *(v42 - 184);
  if (!v45)
  {
LABEL_8:
    if (*(v42 - 201) < 0)
    {
      operator delete(*(v42 - 224));
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v42 - 144);
    operator delete(v41);
    std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v45);
  goto LABEL_8;
}

atomic_ullong *std::shared_ptr<awd::QMIAwdCommandDriver>::shared_ptr[abi:ne200100]<awd::QMIAwdCommandDriver,std::shared_ptr<awd::QMIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::QMIAwdCommandDriver>(awd::QMIAwdCommandDriver*)::{lambda(awd::QMIAwdCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E17BC8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_296F1F43C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<awd::QMIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::QMIAwdCommandDriver>(awd::QMIAwdCommandDriver*)::{lambda(awd::QMIAwdCommandDriver*)#1}::operator() const(awd::QMIAwdCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<awd::QMIAwdCommandDriver *,std::shared_ptr<awd::QMIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::QMIAwdCommandDriver>(awd::QMIAwdCommandDriver*)::{lambda(awd::QMIAwdCommandDriver *)#1},std::allocator<awd::QMIAwdCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<awd::QMIAwdCommandDriver *,std::shared_ptr<awd::QMIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::QMIAwdCommandDriver>(awd::QMIAwdCommandDriver*)::{lambda(awd::QMIAwdCommandDriver *)#1},std::allocator<awd::QMIAwdCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19QMIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19QMIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19QMIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19QMIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<awd::QMIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::QMIAwdCommandDriver>(awd::QMIAwdCommandDriver*)::{lambda(awd::QMIAwdCommandDriver*)#1}::operator() const(awd::QMIAwdCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void BudgetData::BudgetData(BudgetData *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

void BudgetData::~BudgetData(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void BudgetData::BudgetData(BudgetData *this, const BudgetData *a2)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

void *BudgetData::BudgetData(void *result, uint64_t a2)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

void **BudgetData::operator=(void **result, void **a2)
{
  if (a2 != result)
  {
    v2 = result;
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(result, *a2, a2 + 1);
    return v2;
  }

  return result;
}

uint64_t BudgetData::get(uint64_t **a1, unsigned int a2)
{
  v2 = a2;
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 28);
        if (v7 <= a2)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a2)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = (a1 + 1);
LABEL_8:
    v8 = v6;
    v6 = operator new(0x28uLL);
    *(v6 + 28) = v2;
    *(v6 + 32) = 0;
    *(v6 + 36) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **a1;
    if (v9)
    {
      *a1 = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v6);
    a1[2] = (a1[2] + 1);
  }

  return v6[4];
}

uint64_t *BudgetData::set(uint64_t *result, unsigned int a2, int a3)
{
  v4 = a2;
  v5 = result;
  v7 = result + 1;
  v6 = result[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 28);
        if (v9 <= a2)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = result + 1;
LABEL_8:
    v10 = v8;
    v8 = operator new(0x28uLL);
    *(v8 + 28) = v4;
    *(v8 + 32) = 0;
    *(v8 + 36) = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v7 = v8;
    v11 = **v5;
    if (v11)
    {
      *v5 = v11;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v5[1], v8);
    ++v5[2];
  }

  *(v8 + 8) = a3;
  *(v8 + 36) = 1;
  return result;
}

void BudgetData::clear(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void *BudgetData::for_each(void *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    do
    {
      v5 = *(a2 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v5 + 48))(v5, v3 + 28, v3 + 4);
      if (!result)
      {
        break;
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  return result;
}

void std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(void **a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v34 = v10[1];
        if (!v34)
        {
          break;
        }

        do
        {
          v10 = v34;
          v34 = *v34;
        }

        while (v34);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v24 = a2;
    while (1)
    {
      v12 = v10;
      v25 = *(v24 + 28);
      *(v9 + 28) = v25;
      v26 = *(v24 + 8);
      *(v9 + 36) = *(v24 + 36);
      *(v9 + 8) = v26;
      v27 = *v8;
      v28 = a1 + 1;
      v29 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_38:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v28;
      *v29 = v9;
      v30 = **a1;
      if (v30)
      {
        goto LABEL_39;
      }

LABEL_40:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v32 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v33 = v10[1];
              if (!v33)
              {
                break;
              }

              do
              {
                v10 = v33;
                v33 = *v33;
              }

              while (v33);
            }
          }

          else
          {
            for (v10[1] = 0; v32; v32 = v10[1])
            {
              do
              {
                v10 = v32;
                v32 = *v32;
              }

              while (v32);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v31 = v24[1];
      if (v31)
      {
        do
        {
          a2 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          a2 = v24[2];
          v23 = *a2 == v24;
          v24 = a2;
        }

        while (!v23);
      }

      if (v12)
      {
        v24 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v28 = v27;
        if (v25 >= *(v27 + 28))
        {
          break;
        }

        v27 = *v27;
        v29 = v28;
        if (!*v28)
        {
          goto LABEL_38;
        }
      }

      v27 = v27[1];
    }

    while (v27);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v28;
    v28[1] = v9;
    v30 = **a1;
    if (!v30)
    {
      goto LABEL_40;
    }

LABEL_39:
    *a1 = v30;
    goto LABEL_40;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    v14 = a1 + 1;
    while (1)
    {
      v15 = operator new(0x28uLL);
      v16 = *(a2 + 9);
      *(v15 + 28) = *(a2 + 28);
      *(v15 + 9) = v16;
      v17 = *v14;
      v18 = a1 + 1;
      v19 = a1 + 1;
      if (*v14)
      {
        break;
      }

LABEL_25:
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 2) = v18;
      *v19 = v15;
      v20 = **a1;
      if (v20)
      {
        goto LABEL_26;
      }

LABEL_27:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
      a1[2] = (a1[2] + 1);
      v21 = a2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = a2[2];
          v23 = *v22 == a2;
          a2 = v22;
        }

        while (!v23);
      }

      a2 = v22;
      if (v22 == a3)
      {
        return;
      }
    }

    do
    {
      while (1)
      {
        v18 = v17;
        if (v15[28] >= *(v17 + 28))
        {
          break;
        }

        v17 = *v17;
        v19 = v18;
        if (!*v18)
        {
          goto LABEL_25;
        }
      }

      v17 = v17[1];
    }

    while (v17);
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v18;
    v18[1] = v15;
    v20 = **a1;
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_26:
    *a1 = v20;
    goto LABEL_27;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy(uint64_t a1)
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
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296ECF000);
  }

  return result;
}

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy, &ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance, &dword_296ECF000);
  }

  return result;
}

uint64_t desense::QMICommandDriver::create@<X0>(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x98uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  desense::QMICommandDriver::QMICommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<desense::QMICommandDriver>::shared_ptr[abi:ne200100]<desense::QMICommandDriver,std::shared_ptr<desense::QMICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::QMICommandDriver>(desense::QMICommandDriver*)::{lambda(desense::QMICommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return (*(**a2 + 32))(*a2);
}

void sub_296F2013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t desense::QMICommandDriver::QMICommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  desense::CommandDriver::CommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E17C18;
  qmi::ClientRouter::ClientRouter((a1 + 136), *(a1 + 40));
  return a1;
}

void desense::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E17D00;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[13];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    this[9] = &unk_2A1E17D38;
    v3 = this[11];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    this[9] = &unk_2A1E17D38;
    v3 = this[11];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
    if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 24))(v3);
    }
  }

LABEL_10:
  this[6] = &unk_2A1E17DF8;
  v4 = this[8];
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 24))(v4);
      }
    }
  }

  MEMORY[0x29C268320](this + 5);
  v5 = this[4];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = this[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void desense::QMICommandDriver::~QMICommandDriver(desense::QMICommandDriver *this)
{
  *this = &unk_2A1E17C18;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  v3 = *(this + 18);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    desense::CommandDriver::~CommandDriver(this);
  }

  else
  {
    desense::CommandDriver::~CommandDriver(this);
  }
}

{
  *this = &unk_2A1E17C18;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  v3 = *(this + 18);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    desense::CommandDriver::~CommandDriver(this);
  }

  else
  {
    desense::CommandDriver::~CommandDriver(this);
  }
}

{
  *this = &unk_2A1E17C18;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v5, 2u);
  }

  v3 = *(this + 18);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  desense::CommandDriver::~CommandDriver(this);
  operator delete(v4);
}

void desense::QMICommandDriver::init(desense::QMICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN7desense16QMICommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_2;
  v1[4] = this;
  ctu::SharedSynchronizable<desense::CommandDriver>::execute_wrapped(this + 1, v1);
}

void ___ZN7desense16QMICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v23, *(v1 + 96));
  v2 = v23;
  v32 = v1;
  v33 = v23;
  v34 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v27 = 3;
    v3 = *(v1 + 16);
    if (!v3)
    {
      goto LABEL_48;
    }

    v4 = *(v1 + 8);
    v5 = std::__shared_weak_count::lock(v3);
    if (!v5)
    {
      goto LABEL_48;
    }

    v25 = v4;
    v26 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v6);
    }

    qmi::ClientRouter::addLocal<char const*,qmi::ServiceType,dispatch::queue const&,char const(&)[13],std::weak_ptr<desense::CommandDriver>,std::shared_ptr<BBServerConnection> const&>(v1 + 136, 1, "Desense.1", &v27, (v1 + 24), &v25, &v33);
  }

  else
  {
    v27 = 3;
    v7 = *(v1 + 16);
    if (!v7)
    {
      goto LABEL_48;
    }

    v8 = *(v1 + 8);
    v9 = std::__shared_weak_count::lock(v7);
    if (!v9)
    {
      goto LABEL_48;
    }

    v25 = v8;
    v26 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v9;
      (v9->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }

    qmi::ClientRouter::add<char const*,qmi::ServiceType,dispatch::queue const&,char const(&)[13],std::weak_ptr<desense::CommandDriver>>(v1 + 136, 1, "Desense.1", &v27, (v1 + 24), &v25);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v11 = v32;
  if (v33)
  {
    v27 = 3;
    v12 = *(v32 + 2);
    if (v12)
    {
      v13 = *(v32 + 1);
      v14 = std::__shared_weak_count::lock(v12);
      if (v14)
      {
        v25 = v13;
        v26 = v14;
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v15 = v14;
          (v14->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v15);
        }

        qmi::ClientRouter::addLocal<char const*,qmi::ServiceType,dispatch::queue const&,char const(&)[13],std::weak_ptr<desense::CommandDriver>,std::shared_ptr<BBServerConnection> const&>(v11 + 136, 2, "Desense.2", &v27, v11 + 3, &v25, &v33);
        goto LABEL_27;
      }
    }

LABEL_48:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = 3;
  v16 = *(v32 + 2);
  if (!v16)
  {
    goto LABEL_48;
  }

  v17 = *(v32 + 1);
  v18 = std::__shared_weak_count::lock(v16);
  if (!v18)
  {
    goto LABEL_48;
  }

  v25 = v17;
  v26 = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v18;
    (v18->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
  }

  qmi::ClientRouter::add<char const*,qmi::ServiceType,dispatch::queue const&,char const(&)[13],std::weak_ptr<desense::CommandDriver>>(v11 + 136, 2, "Desense.2", &v27, v11 + 3, &v25);
LABEL_27:
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v20 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v30[0] = &unk_2A1E17EB8;
  v30[1] = v1;
  v31 = v30;
  qmi::ClientRouter::setHandler();
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    (*(*v31 + 40))();
  }

  v28[0] = &unk_2A1E18008;
  v28[1] = v1;
  v29 = v28;
  qmi::ClientRouter::setHandler();
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
  }

  else if (v29)
  {
    (*(*v29 + 40))();
  }

  v32 = &unk_2A1E18088;
  v33 = v1;
  v35 = &v32;
  qmi::ClientRouter::setIndHandlerInternal();
  if (v35 == &v32)
  {
    (*(*v35 + 4))(v35);
  }

  else if (v35)
  {
    (*(*v35 + 5))(v35);
  }

  qmi::ClientRouter::start();
  v21 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_296F20CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
    _ZZZN7desense16QMICommandDriver4initEvEUb_EN3__3D1Ev(v18 - 72);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  _ZZZN7desense16QMICommandDriver4initEvEUb_EN3__3D1Ev(v18 - 72);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZZZN7desense16QMICommandDriver4initEvEUb_EN3__3D1Ev(uint64_t result)
{
  v1 = *(result + 16);
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

uint64_t std::function<void ()(qmi::SubscriptionType)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void desense::QMICommandDriver::registerFrequencyReporting(uint64_t a1, int a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN7desense16QMICommandDriver26registerFrequencyReportingEN4coex5SubIdE_block_invoke;
  v2[3] = &__block_descriptor_tmp_2;
  v2[4] = a1;
  v3 = a2;
  ctu::SharedSynchronizable<desense::CommandDriver>::execute_wrapped((a1 + 8), v2);
}

void ___ZN7desense16QMICommandDriver26registerFrequencyReportingEN4coex5SubIdE_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = 2 * (v2 == 1);
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v2;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Register for Frequency Reporting for subID %d", buf, 8u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v5;
  v32 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v31);
  v6 = *(&v31 + 1);
  v7 = v32;
  v8 = *(&v31 + 1);
  if (*(&v31 + 1) != v32)
  {
    v8 = *(&v31 + 1);
    while (*(*v8 + 8) != 176)
    {
      if (++v8 == v32)
      {
        goto LABEL_14;
      }
    }
  }

  if (v8 == v32)
  {
LABEL_14:
    v12 = operator new(0x10uLL);
    v13 = v12;
    v12[4] = 176;
    *v12 = &unk_2A1E18168;
    if (v7 >= *(&v32 + 1))
    {
      v15 = v7 - v6;
      v16 = (v7 - v6) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v32 + 1) - v6;
      if ((*(&v32 + 1) - v6) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = operator new(8 * v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[8 * v16];
      *v21 = v13;
      v14 = v21 + 8;
      memcpy(v20, v6, v15);
      *(&v31 + 1) = v20;
      *&v32 = v14;
      *(&v32 + 1) = &v20[8 * v19];
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v7 = v12;
      v14 = v7 + 8;
    }

    v11 = v13 + 9;
    *&v32 = v14;
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  *v11 = 2;
  v22 = qmi::ClientRouter::get();
  v23 = operator new(0x28uLL);
  *v23 = v22;
  v23[1] = QMIServiceMsg::create();
  *(v23 + 4) = 25000;
  v23[3] = 0;
  v23[4] = 0;
  v24 = operator new(0x28uLL);
  v24[1] = 0;
  v24[2] = 0;
  *v24 = &unk_2A1E181D0;
  v24[3] = v1;
  *(v24 + 8) = v3;
  v33 = (v24 + 3);
  v34 = v24;
  *buf = MEMORY[0x29EDCA5F8];
  v37 = 1174405120;
  v38 = ___ZNO3qmi12ClientRouter9SendProxy8callbackIZZN7desense16QMICommandDriver26registerFrequencyReportingEN4coex5SubIdEEUb0_E3__6EEOS1_OT__block_invoke;
  v39 = &__block_descriptor_tmp_62_3;
  v40 = (v24 + 3);
  v41 = v24;
  atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_0;
  aBlock[3] = &unk_29EE5E438;
  aBlock[4] = buf;
  v23[4] = _Block_copy(aBlock);
  v25 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    v27 = v23;
    if (!v23)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v27 = v23;
    if (!v23)
    {
      goto LABEL_40;
    }
  }

  if (v27[1])
  {
    v28 = *v27;
    qmi::Client::send();
  }

  v29 = v27[4];
  if (v29)
  {
    _Block_release(v29);
  }

  operator delete(v27);
LABEL_40:
  qmi::MutableMessageBase::~MutableMessageBase(&v31);
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296F2138C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_296F213F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F2140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::SendProxy::~SendProxy(qmi::ClientRouter::SendProxy *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    if (v1[1])
    {
      v2 = *v1;
      qmi::Client::send();
    }

    v3 = v1[4];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
  }
}

void desense::QMICommandDriver::setFrequencyReportingMode(uint64_t a1, int a2, char a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = desense::asString();
    _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Set Frequency reporting mode: %s", &buf, 0xCu);
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v7;
  v35 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v34);
  v8 = *(&v34 + 1);
  v9 = v35;
  v10 = *(&v34 + 1);
  if (*(&v34 + 1) != v35)
  {
    v10 = *(&v34 + 1);
    while (*(*v10 + 8) != 176)
    {
      if (++v10 == v35)
      {
        goto LABEL_11;
      }
    }
  }

  if (v10 == v35)
  {
LABEL_11:
    v14 = operator new(0x10uLL);
    v15 = v14;
    v14[4] = 176;
    *v14 = &unk_2A1E18238;
    if (v9 >= *(&v35 + 1))
    {
      v17 = v9 - v8;
      v18 = (v9 - v8) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(&v35 + 1) - v8;
      if ((*(&v35 + 1) - v8) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = operator new(8 * v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v22[8 * v18];
      *v23 = v15;
      v16 = v23 + 8;
      memcpy(v22, v8, v17);
      *(&v34 + 1) = v22;
      *&v35 = v16;
      *(&v35 + 1) = &v22[8 * v21];
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v9 = v14;
      v16 = v9 + 8;
    }

    v13 = v15 + 9;
    *&v35 = v16;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 9;
  }

  *v13 = a3;
  if (a2)
  {
    v24 = 2 * (a2 == 1);
  }

  else
  {
    v24 = 1;
  }

  v25 = qmi::ClientRouter::get();
  v26 = operator new(0x28uLL);
  *v26 = v25;
  v26[1] = QMIServiceMsg::create();
  *(v26 + 4) = 25000;
  v26[3] = 0;
  v26[4] = 0;
  v27 = operator new(0x28uLL);
  v27[1] = 0;
  v27[2] = 0;
  *v27 = &unk_2A1E182A0;
  v27[3] = a1;
  *(v27 + 8) = v24;
  v36 = (v27 + 3);
  v37 = v27;
  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 1174405120;
  v40 = ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN7desense16QMICommandDriver25setFrequencyReportingModeEN4coex5SubIdENS3_22FrequencyReportingModeEE3__1EEOS1_OT__block_invoke;
  v41 = &__block_descriptor_tmp_65_0;
  v42 = (v27 + 3);
  v43 = v27;
  atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_0;
  aBlock[3] = &unk_29EE5E438;
  aBlock[4] = &buf;
  v26[4] = _Block_copy(aBlock);
  v28 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    v30 = v26;
    if (!v26)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v30 = v26;
    if (!v26)
    {
      goto LABEL_40;
    }
  }

  if (v30[1])
  {
    v31 = *v30;
    qmi::Client::send();
  }

  v32 = v30[4];
  if (v32)
  {
    _Block_release(v32);
  }

  operator delete(v30);
LABEL_40:
  qmi::MutableMessageBase::~MutableMessageBase(&v34);
  v33 = *MEMORY[0x29EDCA608];
}

void sub_296F218F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_296F21960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F21974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void desense::QMICommandDriver::bindSubscription_sync(uint64_t a1, int a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v4;
  v30 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v29);
  v5 = *(&v29 + 1);
  v6 = v30;
  v7 = *(&v29 + 1);
  if (*(&v29 + 1) != v30)
  {
    v7 = *(&v29 + 1);
    while (*(*v7 + 8) != 1)
    {
      if (++v7 == v30)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v30)
  {
LABEL_9:
    v11 = operator new(0x10uLL);
    v12 = v11;
    v11[4] = 1;
    *v11 = &unk_2A1E18308;
    if (v6 >= *(&v30 + 1))
    {
      v14 = v6 - v5;
      v15 = (v6 - v5) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v30 + 1) - v5;
      if ((*(&v30 + 1) - v5) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = operator new(8 * v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * v15];
      *v20 = v12;
      v13 = v20 + 8;
      memcpy(v19, v5, v14);
      *(&v29 + 1) = v19;
      *&v30 = v13;
      *(&v30 + 1) = &v19[8 * v18];
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = v11;
      v13 = v6 + 8;
    }

    v10 = v12 + 9;
    *&v30 = v13;
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = (v9 + 9);
  }

  *v10 = a2 == 2;
  v21 = qmi::ClientRouter::get();
  v22 = operator new(0x28uLL);
  *v22 = v21;
  v22[1] = QMIServiceMsg::create();
  *(v22 + 4) = 25000;
  v22[3] = 0;
  v22[4] = 0;
  v23 = operator new(0x28uLL);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = &unk_2A1E18370;
  v23[3] = a1;
  *(v23 + 8) = a2;
  v33 = (v23 + 3);
  v34 = v23;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN7desense16QMICommandDriver21bindSubscription_syncENS_16SubscriptionTypeEE3__0EEOS1_OT__block_invoke;
  v31[3] = &__block_descriptor_tmp_67_1;
  v31[4] = v23 + 3;
  v32 = v23;
  atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas3abm16BindSubscription8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E460;
  aBlock[4] = v31;
  v22[4] = _Block_copy(aBlock);
  v24 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    v26 = v22;
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v26 = v22;
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  if (v26[1])
  {
    v27 = *v26;
    qmi::Client::send();
  }

  v28 = v26[4];
  if (v28)
  {
    _Block_release(v28);
  }

  operator delete(v26);
LABEL_35:
  qmi::MutableMessageBase::~MutableMessageBase(&v29);
}

void sub_296F21D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v22 + 32);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a22);
  qmi::ClientRouter::SendProxy::~SendProxy(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a11);
  _Unwind_Resume(a1);
}

void sub_296F21DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v11);
  qmi::MutableMessageBase::~MutableMessageBase(&a11);
  _Unwind_Resume(a1);
}

void sub_296F21DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F21DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void desense::QMICommandDriver::addMultipleFrequenciesToMap_sync(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(a1, *v3, *(v3 + 8), 0, a3);
      v3 += 16;
    }

    while (v3 != v4);
  }
}

uint64_t *std::list<std::pair<unsigned long long,unsigned int>>::~list(uint64_t *a1)
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
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(v4, *v2, *(v2 + 8), 0, (v5 + 40));
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(v4, *v2, *(v2 + 8), 0, (v5 + 40));
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_6(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(v4, *v2, *(v2 + 8), 0, (v5 + 40));
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(v4, *v2, *(v2 + 8), 0, (v5 + 40));
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_9(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    do
    {
      desense::QMICommandDriver::addSingleFrequencyToMap_sync(v4, *v2, *(v2 + 8), 0, (v5 + 40));
      v2 += 16;
    }

    while (v2 != v3);
  }
}

void *boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E17D38;
  v1 = result[2];
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

void *boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E17DF8;
  v1 = result[2];
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

void boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E17D38;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E17DF8;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void *std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(void *result)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      if (v1[7])
      {
        v3 = v1[6];
        v4 = *(v1[5] + 8);
        v5 = *v3;
        *(v5 + 8) = v4;
        *v4 = v5;
        v1[7] = 0;
        if (v3 != v1 + 5)
        {
          do
          {
            v6 = v3[1];
            operator delete(v3);
            v3 = v6;
          }

          while (v6 != v1 + 5);
        }
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

atomic_ullong *std::shared_ptr<desense::QMICommandDriver>::shared_ptr[abi:ne200100]<desense::QMICommandDriver,std::shared_ptr<desense::QMICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::QMICommandDriver>(desense::QMICommandDriver*)::{lambda(desense::QMICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E17E68;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_296F22620(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<desense::QMICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::QMICommandDriver>(desense::QMICommandDriver*)::{lambda(desense::QMICommandDriver*)#1}::operator() const(desense::QMICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<desense::QMICommandDriver *,std::shared_ptr<desense::QMICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::QMICommandDriver>(desense::QMICommandDriver*)::{lambda(desense::QMICommandDriver *)#1},std::allocator<desense::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<desense::QMICommandDriver *,std::shared_ptr<desense::QMICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::QMICommandDriver>(desense::QMICommandDriver*)::{lambda(desense::QMICommandDriver *)#1},std::allocator<desense::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<desense::QMICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::QMICommandDriver>(desense::QMICommandDriver*)::{lambda(desense::QMICommandDriver*)#1}::operator() const(desense::QMICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}