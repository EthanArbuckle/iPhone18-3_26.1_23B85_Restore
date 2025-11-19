void sub_297972B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>>>>::~unique_ptr[abi:ne200100](&a29);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    if ((a28 & 0x80000000) == 0)
    {
LABEL_8:
      std::mutex::unlock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(a23);
    std::mutex::unlock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *support::log::client::client(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1E58EF8;
  *v12 = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v11 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a1[1] = &unk_2A1E5A630;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(v12, __p);
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance;
  a1[4] = descriptor_instance + 1;
  a1[5] = descriptor_instance + 4;
  a1[6] = descriptor_instance + 7;
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v12[0]);
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    pthread_mutex_lock(&ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance);
    if (!qword_2A13A3670)
    {
      v7 = operator new(0xA8uLL);
      v7[1] = 0;
      v7[2] = 0;
      *v7 = &unk_2A1E5A868;
      a4 = (v7 + 3);
      support::log::manager_global::manager_global((v7 + 3));
      v8 = off_2A13A3678;
      qword_2A13A3670 = (v7 + 3);
      off_2A13A3678 = v7;
      if (!v8)
      {
LABEL_13:
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
LABEL_14:
        pthread_mutex_unlock(&ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance);
        a1[7] = a4;
        a1[8] = v7;
        goto LABEL_15;
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    a4 = qword_2A13A3670;
    v7 = off_2A13A3678;
    if (!off_2A13A3678)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  a1[7] = 0;
  a1[8] = 0;
LABEL_15:
  a1[9] = a4;
  return a1;
}

void sub_297972EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  pthread_mutex_unlock(&ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance);
  _Unwind_Resume(a1);
}

void *support::log::client::client(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2A1E58EF8;
  *v12 = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v11 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a1[1] = &unk_2A1E5A630;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(v12, __p);
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance;
  a1[4] = descriptor_instance + 1;
  a1[5] = descriptor_instance + 4;
  a1[6] = descriptor_instance + 7;
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v12[0]);
    v7 = *a4;
    v8 = a4[1];
    a1[7] = *a4;
    a1[8] = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = *a4;
  v8 = a4[1];
  a1[7] = *a4;
  a1[8] = v8;
  if (v8)
  {
LABEL_4:
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[7];
  }

LABEL_5:
  a1[9] = v7;
  return a1;
}

void sub_297973040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void *support::log::client::client(void *a1, uint64_t a2, uint64_t a3)
{
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v6 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  support::log::client::client(a1, v7, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v7[0]);
  return a1;
}

{
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v6 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  support::log::client::client(a1, v7, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v7[0]);
  return a1;
}

void sub_297973128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_29797320C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void support::log::stdout_delegate::~stdout_delegate(support::log::stdout_delegate *this)
{
  *this = &unk_2A1E5A558;
  if (*(this + 24) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1E5A558;
  if (*(this + 24) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = this;
      std::__shared_weak_count::__release_weak(v2);
      this = v3;
    }
  }

  operator delete(this);
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t ctu::PthreadMutexGuardPolicy<support::log::manager_global>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void support::log::manager_global::~manager_global(support::log::manager_global *this)
{
  *this = &unk_2A1E5A5A0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2A1E5A5A0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));

  operator delete(this);
}

void std::__split_buffer<char **>::emplace_back<char **&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(uint64_t *a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, v3, v4);
  v6 = qword_2A13A3790;
  if (!qword_2A13A3790)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(qword_2A13A3790);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= qword_2A13A3790)
    {
      v9 = v5 % qword_2A13A3790;
    }
  }

  else
  {
    v9 = (qword_2A13A3790 - 1) & v5;
  }

  v10 = *(qword_2A13A3788 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = v1[23];
    if (v12 >= 0)
    {
      v13 = v1[23];
    }

    else
    {
      v13 = *(v1 + 1);
    }

    if (v12 < 0)
    {
      v1 = *v1;
    }

    if (v8.u32[0] < 2uLL)
    {
      v14 = qword_2A13A3790 - 1;
      while (1)
      {
        v19 = v11[1];
        if (v19 == v7)
        {
          v20 = *(v11 + 39);
          v21 = v20;
          if (v20 < 0)
          {
            v20 = v11[3];
          }

          if (v20 == v13)
          {
            v22 = v21 >= 0 ? (v11 + 2) : v11[2];
            if (!memcmp(v22, v1, v13))
            {
              return v11;
            }
          }
        }

        else if ((v19 & v14) != v9)
        {
          return 0;
        }

        v11 = *v11;
        if (!v11)
        {
          return v11;
        }
      }
    }

    do
    {
      v15 = v11[1];
      if (v15 == v7)
      {
        v16 = *(v11 + 39);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = v11[3];
        }

        if (v16 == v13)
        {
          v18 = v17 >= 0 ? (v11 + 2) : v11[2];
          if (!memcmp(v18, v1, v13))
          {
            return v11;
          }
        }
      }

      else
      {
        if (v15 >= v6)
        {
          v15 %= v6;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void support::log::global_client_descriptor::~global_client_descriptor(void **this)
{
  *this = &unk_2A1E5A700;
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[4]);
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2A1E5A700;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1]);
  v2 = this;

LABEL_5:
  operator delete(v2);
}

void std::__shared_ptr_pointer<support::log::delegate::context *,std::shared_ptr<support::log::delegate::context>::__shared_ptr_default_delete<support::log::delegate::context,support::log::delegate::context>,std::allocator<support::log::delegate::context>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::log::delegate::context *,std::shared_ptr<support::log::delegate::context>::__shared_ptr_default_delete<support::log::delegate::context,support::log::delegate::context>,std::allocator<support::log::delegate::context>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::log::delegate::context *,std::shared_ptr<support::log::delegate::context>::__shared_ptr_default_delete<support::log::delegate::context,support::log::delegate::context>,std::allocator<support::log::delegate::context>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029797E3C9)
  {
    if (((v2 & 0x800000029797E3C9 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029797E3C9))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029797E3C9 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<support::log::buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5A780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void support::log::buffer::~buffer(support::log::buffer *this)
{
  *this = &unk_2A1E5A7D0;
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      free(*(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::deque<char *>::~deque[abi:ne200100](this + 96);
  std::__tree<char *>::destroy(*(this + 10));
  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2A1E5A7D0;
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      free(*(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::deque<char *>::~deque[abi:ne200100](this + 96);
  std::__tree<char *>::destroy(*(this + 10));
  std::mutex::~mutex((this + 8));

  operator delete(this);
}

uint64_t std::deque<char *>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<char *>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<char *>::destroy(*a1);
    std::__tree<char *>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__shared_ptr_pointer<support::log::manager *,std::shared_ptr<support::log::manager>::__shared_ptr_default_delete<support::log::manager,support::log::manager>,std::allocator<support::log::manager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::log::manager *,std::shared_ptr<support::log::manager>::__shared_ptr_default_delete<support::log::manager,support::log::manager>,std::allocator<support::log::manager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::log::manager *,std::shared_ptr<support::log::manager>::__shared_ptr_default_delete<support::log::manager,support::log::manager>,std::allocator<support::log::manager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029797E555)
  {
    if (((v2 & 0x800000029797E555 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029797E555))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029797E555 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<support::log::manager_global>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5A868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

uint64_t HSFilerRT_Internal_INT::Session_INT::Session_INT(uint64_t a1, uint64_t *a2, int a3, char a4, dispatch_object_t *a5)
{
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a5;
  if (*a5)
  {
    dispatch_retain(*a5);
  }

  *a1 = &unk_2A1E59188;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = v10;
  if (v10)
  {
    dispatch_retain(v10);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = a4;
    *(a1 + 113) = 0;
    dispatch_release(v10);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = a4;
    *(a1 + 113) = 0;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_13:
  *a1 = &unk_2A1E5A8B8;
  *(a1 + 120) = 0;
  return a1;
}

void HSFilerRT_Internal_INT::Session_INT::~Session_INT(HSFilerRT_Internal_INT::Session_INT *this)
{
  *this = &unk_2A1E5A8B8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  HSFilerRT_Internal::Session::end(this);
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  HSFilerRT_Internal::Session::~Session(this);
}

{
  *this = &unk_2A1E5A8B8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  HSFilerRT_Internal::Session::end(this);
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  HSFilerRT_Internal::Session::~Session(this);
}

{
  *this = &unk_2A1E5A8B8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  HSFilerRT_Internal::Session::end(this);
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  HSFilerRT_Internal::Session::~Session(this);

  operator delete(v4);
}

void HSFilerRT_Internal_INT::Session_INT::end(HSFilerRT_Internal_INT::Session_INT *this)
{
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  HSFilerRT_Internal::Session::end(this);
}

uint64_t HSFilerRT_Internal_INT::startReadSession_sync(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  {
    v48 = 0;
    v49 = 0;
    v10 = **(a1 + 128);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297948000, v10, OS_LOG_TYPE_ERROR, "error: Failed to cast session pointer object", buf, 2u);
      Session = 0;
      goto LABEL_41;
    }

    goto LABEL_9;
  }

  v7 = *(a2 + 8);
  v48 = v6;
  v49 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_lock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  if (!qword_2A13A35D0)
  {
    v9 = operator new(0xA8uLL);
    v9[1] = 0;
    v9[2] = 0;
    *v9 = &unk_2A1E59C60;
    v8 = (v9 + 3);
    hsfiler_log_manager::hsfiler_log_manager((v9 + 3));
    v13 = off_2A13A35D8;
    qword_2A13A35D0 = (v9 + 3);
    off_2A13A35D8 = v9;
    if (!v13)
    {
      *buf = v9 + 3;
      *&buf[8] = v9;
      goto LABEL_15;
    }

    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v8 = qword_2A13A35D0;
  v9 = off_2A13A35D8;
  *buf = qword_2A13A35D0;
  *&buf[8] = off_2A13A35D8;
  if (off_2A13A35D8)
  {
LABEL_15:
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  support::transport::ARI::create("HSFilerARITransport", 0x2710, 1, v8, v42);
  v14 = *&v42[0];
  *&v42[0] = 0;
  v15 = v48[15];
  v48[15] = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    *&v42[0] = 0;
  }

  v16 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v48;
  v18 = v48[15];
  v19 = **(a1 + 128);
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v39 = v17[4];
      *buf = 134217984;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_297948000, v19, OS_LOG_TYPE_ERROR, "error: Failed to create ARI transport for session (%llu)", buf, 0xCu);
      Session = 0;
      v12 = v49;
      if (!v49)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_9:
    Session = 0;
    v12 = v49;
    if (!v49)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v17[4];
    v21 = *(v17 + 24);
    *buf = 134218240;
    *&buf[4] = v20;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    _os_log_impl(&dword_297948000, v19, OS_LOG_TYPE_DEFAULT, "Starting read session (%llu) with sequenceID (%u)", buf, 0x12u);
    v18 = v17[15];
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[2] = v22;
  v45[0] = v22;
  v45[1] = v22;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAFFFFFFFFLL;
  v23 = *(v18 + 24);
  hsfiler::ARICommandDriver::ARICommandDriver();
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v24;
  *v44 = v24;
  v42[2] = v24;
  v42[3] = v24;
  v42[0] = v24;
  v42[1] = v24;
  AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK::ARI_IBIFilerHSStartReadBBSessionReq_SDK(v42);
  v25 = &buf[2];
  bzero(&buf[2], 0xBB8uLL);
  v26 = v17[7];
  for (*buf = v17[8]; v26; v25 += 100)
  {
    while (1)
    {
      v27 = *(v26 + 39);
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      memcpy(v25, v26[2], v26[3]);
      v26 = *v26;
      v25 += 100;
      if (!v26)
      {
        goto LABEL_29;
      }
    }

    memcpy(v25, v26 + 2, v27);
    v26 = *v26;
  }

LABEL_29:
  v28 = *(v17 + 6);
  v29 = operator new(4uLL);
  *v29 = v28;
  v30 = __p[0];
  __p[0] = v29;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = operator new(0xBBAuLL);
  memcpy(v31, buf, 0xBBAuLL);
  v32 = __p[1];
  __p[1] = v31;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = operator new(4uLL);
  *v33 = *(v17 + 25);
  v34 = v44[0];
  v44[0] = v33;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = operator new(4uLL);
  *v35 = *(v17 + 24);
  v36 = v44[1];
  v44[1] = v35;
  if (v36)
  {
    operator delete(v36);
  }

  Session = hsfiler::ARICommandDriver::StartReadSession();
  v40 = **(a1 + 128);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = v17[4];
    *v50 = 134217984;
    v51 = v41;
    _os_log_error_impl(&dword_297948000, v40, OS_LOG_TYPE_ERROR, "error: Failed StartReadBBSession ARI command for session (%llu)", v50, 0xCu);
  }

  MEMORY[0x29C276600](v42);
  hsfiler::ARICommandDriver::~ARICommandDriver(v45);
  v12 = v49;
  if (v49)
  {
LABEL_39:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

LABEL_41:
  v37 = *MEMORY[0x29EDCA608];
  return Session;
}

void sub_297974CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::~__shared_weak_count(v37);
  operator delete(v39);
  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t HSFilerRT_Internal_INT::startWriteSession_sync(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  {
    v48 = 0;
    v49 = 0;
    v10 = **(a1 + 128);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297948000, v10, OS_LOG_TYPE_ERROR, "error: Failed to cast session pointer object", buf, 2u);
      v11 = 0;
      goto LABEL_41;
    }

    goto LABEL_9;
  }

  v7 = *(a2 + 8);
  v48 = v6;
  v49 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_lock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  if (!qword_2A13A35D0)
  {
    v9 = operator new(0xA8uLL);
    v9[1] = 0;
    v9[2] = 0;
    *v9 = &unk_2A1E59C60;
    v8 = (v9 + 3);
    hsfiler_log_manager::hsfiler_log_manager((v9 + 3));
    v13 = off_2A13A35D8;
    qword_2A13A35D0 = (v9 + 3);
    off_2A13A35D8 = v9;
    if (!v13)
    {
      *buf = v9 + 3;
      *&buf[8] = v9;
      goto LABEL_15;
    }

    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v8 = qword_2A13A35D0;
  v9 = off_2A13A35D8;
  *buf = qword_2A13A35D0;
  *&buf[8] = off_2A13A35D8;
  if (off_2A13A35D8)
  {
LABEL_15:
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  support::transport::ARI::create("HSFilerARITransport", 0x2710, 1, v8, v42);
  v14 = *&v42[0];
  *&v42[0] = 0;
  v15 = v48[15];
  v48[15] = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    *&v42[0] = 0;
  }

  v16 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v48;
  v18 = v48[15];
  v19 = **(a1 + 128);
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v39 = v17[4];
      *buf = 134217984;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_297948000, v19, OS_LOG_TYPE_ERROR, "error: Failed to create ARI transport for session (%llu)", buf, 0xCu);
      v11 = 0;
      v12 = v49;
      if (!v49)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_9:
    v11 = 0;
    v12 = v49;
    if (!v49)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v17[4];
    v21 = *(v17 + 24);
    *buf = 134218240;
    *&buf[4] = v20;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    _os_log_impl(&dword_297948000, v19, OS_LOG_TYPE_DEFAULT, "Starting write session (%llu) with sequenceID (%u)", buf, 0x12u);
    v18 = v17[15];
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[2] = v22;
  v45[0] = v22;
  v45[1] = v22;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAFFFFFFFFLL;
  v23 = *(v18 + 24);
  hsfiler::ARICommandDriver::ARICommandDriver();
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v24;
  *v44 = v24;
  v42[2] = v24;
  v42[3] = v24;
  v42[0] = v24;
  v42[1] = v24;
  AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK::ARI_IBIFilerHSStartWriteBBSessionReq_SDK(v42);
  v25 = &buf[2];
  bzero(&buf[2], 0xBB8uLL);
  v26 = v17[7];
  for (*buf = v17[8]; v26; v25 += 100)
  {
    while (1)
    {
      v27 = *(v26 + 39);
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      memcpy(v25, v26[2], v26[3]);
      v26 = *v26;
      v25 += 100;
      if (!v26)
      {
        goto LABEL_29;
      }
    }

    memcpy(v25, v26 + 2, v27);
    v26 = *v26;
  }

LABEL_29:
  v28 = *(v17 + 6);
  v29 = operator new(4uLL);
  *v29 = v28;
  v30 = __p[0];
  __p[0] = v29;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = operator new(0xBBAuLL);
  memcpy(v31, buf, 0xBBAuLL);
  v32 = __p[1];
  __p[1] = v31;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = operator new(4uLL);
  *v33 = *(v17 + 25);
  v34 = v44[0];
  v44[0] = v33;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = operator new(4uLL);
  *v35 = *(v17 + 24);
  v36 = v44[1];
  v44[1] = v35;
  if (v36)
  {
    operator delete(v36);
  }

  v11 = hsfiler::ARICommandDriver::StartWriteSession();
  v40 = **(a1 + 128);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = v17[4];
    *v50 = 134217984;
    v51 = v41;
    _os_log_error_impl(&dword_297948000, v40, OS_LOG_TYPE_ERROR, "error: Failed StartWriteBBSession ARI command for session (%llu)", v50, 0xCu);
  }

  MEMORY[0x29C276620](v42);
  hsfiler::ARICommandDriver::~ARICommandDriver(v45);
  v12 = v49;
  if (v49)
  {
LABEL_39:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

LABEL_41:
  v37 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_2979753BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::~__shared_weak_count(v37);
  operator delete(v39);
  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

BOOL HSFilerRT_Internal_INT::endSession_sync(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  {
    v7 = v6;
    v8 = *(a2 + 8);
    v30 = v6;
    v31 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = **(a1 + 128);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7[4];
      v11 = *(v7 + 24);
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v10;
      WORD6(buf[0]) = 1024;
      *(buf + 14) = v11;
      _os_log_impl(&dword_297948000, v9, OS_LOG_TYPE_DEFAULT, "Ending session (%llu) with sequenceID (%u) with the baseband", buf, 0x12u);
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27[1] = v12;
    v27[2] = v12;
    v27[0] = v12;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    v29 = 0xAAAAAAAAFFFFFFFFLL;
    v13 = *(v7[15] + 24);
    hsfiler::ARICommandDriver::ARICommandDriver();
    v36 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    buf[3] = v14;
    __p = v14;
    buf[1] = v14;
    buf[2] = v14;
    buf[0] = v14;
    AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK::ARI_IBIFilerHSEndBBSessionReq_SDK(buf);
    v15 = *(v7 + 6);
    v16 = operator new(4uLL);
    *v16 = v15;
    v17 = __p;
    *&__p = v16;
    if (v17)
    {
      operator delete(v17);
    }

    v18 = operator new(4uLL);
    *v18 = *(v7 + 24);
    v19 = v36;
    v36 = v18;
    if (v19)
    {
      operator delete(v19);
    }

    v24 = hsfiler::ARICommandDriver::EndSession();
    v25 = **(a1 + 128);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v7[4];
      *v32 = 134217984;
      v33 = v26;
      _os_log_error_impl(&dword_297948000, v25, OS_LOG_TYPE_ERROR, "error: Failed EndBBSession ARI command for session (%llu)", v32, 0xCu);
    }

    MEMORY[0x29C2765C0](buf);
    hsfiler::ARICommandDriver::~ARICommandDriver(v27);
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    result = v24;
    v21 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v22 = **(a1 + 128);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_297948000, v22, OS_LOG_TYPE_ERROR, "error: Failed to cast session pointer object", buf, 2u);
      result = 0;
    }

    v23 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void sub_297975854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  MEMORY[0x29C2765C0](va2);
  hsfiler::ARICommandDriver::~ARICommandDriver(va);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_297975888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HSFilerRT_Internal_INT::getFileSize_sync(uint64_t a1, uint64_t a2, char *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  {
    v9 = v8;
    v10 = *(a2 + 8);
    v32 = v8;
    v33 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = **(a1 + 128);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v9[4];
      if (a3[23] >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      LODWORD(buf[0]) = 134218242;
      *(buf + 4) = v12;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v13;
      _os_log_impl(&dword_297948000, v11, OS_LOG_TYPE_DEFAULT, "Getting session (%llu) file (%s) size from baseband", buf, 0x16u);
    }

    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29[1] = v14;
    v29[2] = v14;
    v29[0] = v14;
    v30 = 0xAAAAAAAAAAAAAAAALL;
    v31 = 0xAAAAAAAAFFFFFFFFLL;
    v15 = *(v9[15] + 24);
    hsfiler::ARICommandDriver::ARICommandDriver();
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __p[1] = v16;
    v38 = v16;
    buf[3] = v16;
    __p[0] = v16;
    buf[1] = v16;
    buf[2] = v16;
    buf[0] = v16;
    AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK::ARI_IBIFilerHSReadBBGetSizeReq_SDK(buf);
    v17 = *(v9 + 6);
    v18 = operator new(4uLL);
    *v18 = v17;
    v19 = *&__p[0];
    *&__p[0] = v18;
    if (v19)
    {
      operator delete(v19);
    }

    v20 = a3[23];
    if ((v20 & 0x80u) == 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a3 + 1);
    }

    AriSdk::TlvArray<char,100ul>::assign<std::__wrap_iter<char const*>>((__p + 8), v21, &v21[v20]);
    v22 = operator new(4uLL);
    *v22 = *(v9 + 24);
    v23 = v38;
    *&v38 = v22;
    if (v23)
    {
      operator delete(v23);
    }

    hsfiler::ARICommandDriver::GetReadSize();
    v27 = **(a1 + 128);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v9[4];
      *v34 = 134217984;
      v35 = v28;
      _os_log_error_impl(&dword_297948000, v27, OS_LOG_TYPE_ERROR, "error: Failed ReadBBGetSize ARI command for session (%llu)", v34, 0xCu);
    }

    MEMORY[0x29C2765E0](buf);
    hsfiler::ARICommandDriver::~ARICommandDriver(v29);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    v24 = **(a1 + 128);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_297948000, v24, OS_LOG_TYPE_ERROR, "error: Failed to cast session pointer object", buf, 2u);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297975CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  MEMORY[0x29C2765E0](va2);
  hsfiler::ARICommandDriver::~ARICommandDriver(va);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void AriSdk::TlvArray<char,100ul>::assign<std::__wrap_iter<char const*>>(Ari *a1, char *a2, char *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) < 0x65)
  {
    v5 = *(a1 + 2);
    v6 = *a1;
    if (v5 - *a1 < v4)
    {
      v8 = a3;
      if (v6)
      {
        *(a1 + 1) = v6;
        operator delete(v6);
        v5 = 0;
        *a1 = 0;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
      }

      v9 = 2 * v5;
      if (2 * v5 <= v4)
      {
        v9 = v4;
      }

      if (v5 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      v11 = operator new(v10);
      *a1 = v11;
      *(a1 + 1) = v11;
      *(a1 + 2) = &v11[v10];
      v12 = v8 - a2;
      if (v8 == a2)
      {
        v13 = v11;
      }

      else
      {
        v29 = a2;
        if (v12 < 0x20)
        {
          goto LABEL_34;
        }

        if ((v11 - a2) < 0x20)
        {
          goto LABEL_34;
        }

        v13 = &v11[v12 & 0xFFFFFFFFFFFFFFE0];
        v30 = v11 + 16;
        v31 = (a2 + 16);
        v32 = v12 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v33 = *v31;
          *(v30 - 1) = *(v31 - 1);
          *v30 = v33;
          v30 += 2;
          v31 += 2;
          v32 -= 32;
        }

        while (v32);
        v29 = &a2[v12 & 0xFFFFFFFFFFFFFFE0];
        v11 += v12 & 0xFFFFFFFFFFFFFFE0;
        if (v12 != (v12 & 0xFFFFFFFFFFFFFFE0))
        {
LABEL_34:
          v13 = v11;
          do
          {
            v34 = *v29++;
            *v13++ = v34;
          }

          while (v29 != v8);
        }
      }

      *(a1 + 1) = v13;
      goto LABEL_44;
    }

    v19 = *(a1 + 1);
    if (v19 - v6 >= v4)
    {
      if (a3 != a2)
      {
        v35 = *a1;
        memmove(v6, a2, a3 - a2);
        v6 = v35;
      }

      v36 = &v6[v4];
      goto LABEL_43;
    }

    v20 = &a2[v19 - v6];
    if (v19 != v6)
    {
      v21 = a3;
      memmove(v6, a2, v19 - v6);
      a3 = v21;
      v19 = *(a1 + 1);
    }

    v22 = v19;
    v23 = a3 - v20;
    if (a3 != v20)
    {
      v24 = v20;
      if (v23 < 0x20)
      {
        v22 = v19;
      }

      else
      {
        v22 = v19;
        if ((v19 - v20) >= 0x20)
        {
          v24 = &v20[v23 & 0xFFFFFFFFFFFFFFE0];
          v22 = &v19[v23 & 0xFFFFFFFFFFFFFFE0];
          v25 = v19 + 16;
          v26 = (v20 + 16);
          v27 = v23 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v28 = *v26;
            *(v25 - 1) = *(v26 - 1);
            *v25 = v28;
            v25 += 2;
            v26 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v23 == (v23 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_42;
          }
        }
      }

      do
      {
        v37 = *v24++;
        *v22++ = v37;
      }

      while (v24 != a3);
    }

LABEL_42:
    v36 = v22;
LABEL_43:
    *(a1 + 1) = v36;
    goto LABEL_44;
  }

  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v40, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v16);
      v39 = v41 >= 0 ? v40 : v40[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v43 = 2080;
      v44 = v39;
      v45 = 1024;
      v46 = 385;
      v47 = 2048;
      v48 = a1;
      v49 = 2048;
      v50 = v4;
      v51 = 2048;
      v52 = 100;
      _os_log_error_impl(&dword_297948000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
      if (v41 < 0)
      {
        operator delete(v40[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v16);
    if (v45 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v17, v18, 385, a1, v4, 100);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_44:
  v38 = *MEMORY[0x29EDCA608];
}

void sub_297976098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL HSFilerRT_Internal_INT::readFile_sync(uint64_t a1, uint64_t a2, char *a3, mach_vm_size_t a4, uint64_t a5)
{
  v74 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    v11 = **v6;
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + 8);
      v63 = v12;
      v64 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = **(a1 + 128);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v13[4];
        if (a3[23] >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = *a3;
        }

        *buf = 134218242;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = v17;
        _os_log_impl(&dword_297948000, v15, OS_LOG_TYPE_DEFAULT, "Reading session (%llu) file (%s) from baseband", buf, 0x16u);
      }

      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60[1] = v18;
      v60[2] = v18;
      v60[0] = v18;
      v61 = 0xAAAAAAAAAAAAAAAALL;
      v62 = 0xAAAAAAAAFFFFFFFFLL;
      v19 = *(v13[15] + 24);
      hsfiler::ARICommandDriver::ARICommandDriver();
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72[1] = v20;
      v73 = v20;
      v71 = v20;
      v72[0] = v20;
      *&buf[16] = v20;
      v70 = v20;
      *buf = v20;
      AriSdk::ARI_IBIFilerHSReadBBReq_SDK::ARI_IBIFilerHSReadBBReq_SDK(buf);
      v58 = 0xAAAAAAAAAAAAAAAALL;
      v59 = 0;
      v57 = 0xAAAAAAAAAAAAAAAALL;
      v68 = 11;
      strcpy(__p, "HSFilerRead");
      pthread_mutex_lock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
      if (!qword_2A13A35D0)
      {
        v22 = operator new(0xA8uLL);
        v22->__shared_owners_ = 0;
        v22->__shared_weak_owners_ = 0;
        v22->__vftable = &unk_2A1E59C60;
        v21 = &v22[1];
        hsfiler_log_manager::hsfiler_log_manager(&v22[1]);
        v25 = off_2A13A35D8;
        qword_2A13A35D0 = &v22[1];
        off_2A13A35D8 = v22;
        if (!v25)
        {
          v55 = &v22[1];
          v56 = v22;
LABEL_19:
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_20:
          pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
          support::transport::PCIMemRegion::create(__p, 3, a4, 0, 0, 5000, v21, &v57);
          if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            if ((v68 & 0x80000000) == 0)
            {
LABEL_24:
              if (v57)
              {
                v26 = v63;
                v27 = v63[6];
                v28 = operator new(4uLL);
                *v28 = v27;
                v29 = *&v72[0];
                *&v72[0] = v28;
                if (v29)
                {
                  operator delete(v29);
                }

                v30 = a3[23];
                if ((v30 & 0x80u) == 0)
                {
                  v31 = a3;
                }

                else
                {
                  v31 = *a3;
                }

                if ((v30 & 0x80u) != 0)
                {
                  v30 = *(a3 + 1);
                }

                AriSdk::TlvArray<char,100ul>::assign<std::__wrap_iter<char const*>>((v72 + 8), v31, &v31[v30]);
                v32 = operator new(8uLL);
                *v32 = a4;
                v33 = v73;
                *&v73 = v32;
                if (v33)
                {
                  operator delete(v33);
                }

                v34 = operator new(4uLL);
                *v34 = v26[24];
                v35 = *(&v73 + 1);
                *(&v73 + 1) = v34;
                if (v35)
                {
                  operator delete(v35);
                }

                FileFromBB = hsfiler::ARICommandDriver::ReadFileFromBB();
                if (v59)
                {
                  v37 = FileFromBB;
                }

                else
                {
                  v37 = 0;
                }

                if ((v37 & 1) == 0)
                {
                  v43 = FileFromBB;
                  v51 = **(a1 + 128);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    v52 = *(v26 + 4);
                    *__p = 134217984;
                    *&__p[4] = v52;
                    _os_log_error_impl(&dword_297948000, v51, OS_LOG_TYPE_ERROR, "error: Failed ReadBB ARI command for session (%llu)", __p, 0xCu);
                  }

                  goto LABEL_49;
                }

                v38 = *v59[9];
                if (!v38)
                {
                  v39 = *(a5 + 24);
                  if (v39)
                  {
                    *__p = *(v57 + 160);
                    v55 = a4;
                    (*(*v39 + 48))(v39, __p, &v55);
                  }

                  v40 = **(a1 + 128);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    v41 = *(v26 + 4);
                    if (a3[23] >= 0)
                    {
                      v42 = a3;
                    }

                    else
                    {
                      v42 = *a3;
                    }

                    *__p = 134218242;
                    *&__p[4] = v41;
                    v66 = 2080;
                    v67 = v42;
                    _os_log_impl(&dword_297948000, v40, OS_LOG_TYPE_DEFAULT, "Successfully read session (%llu) file (%s) from baseband", __p, 0x16u);
                  }

                  v43 = 1;
                  goto LABEL_49;
                }

                v53 = **(a1 + 128);
                if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_66;
                }

                v54 = *(v26 + 4);
                *__p = 134218240;
                *&__p[4] = v54;
                v66 = 1024;
                LODWORD(v67) = v38;
                v48 = "error: Failed ReadBB ARI command for session (%llu): result %d";
                v49 = v53;
                v50 = 18;
              }

              else
              {
                v47 = **(a1 + 128);
                if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
LABEL_66:
                  v43 = 0;
LABEL_49:
                  if (v59)
                  {
                    (*(*v59 + 2))(v59);
                  }

                  v44 = v58;
                  if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v44->__on_zero_shared)(v44);
                    std::__shared_weak_count::__release_weak(v44);
                  }

                  MEMORY[0x29C276580](buf);
                  hsfiler::ARICommandDriver::~ARICommandDriver(v60);
                  v45 = v64;
                  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v45->__on_zero_shared)(v45);
                    std::__shared_weak_count::__release_weak(v45);
                  }

                  result = v43;
                  goto LABEL_58;
                }

                *__p = 0;
                v48 = "error: Failed to create PCI memory region";
                v49 = v47;
                v50 = 2;
              }

              _os_log_error_impl(&dword_297948000, v49, OS_LOG_TYPE_ERROR, v48, __p, v50);
              v43 = 0;
              goto LABEL_49;
            }
          }

          else if ((v68 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          operator delete(*__p);
          goto LABEL_24;
        }

        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }
      }

      v21 = qword_2A13A35D0;
      v22 = off_2A13A35D8;
      v55 = qword_2A13A35D0;
      v56 = off_2A13A35D8;
      if (!off_2A13A35D8)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  v23 = **(a1 + 128);
  result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_error_impl(&dword_297948000, v23, OS_LOG_TYPE_ERROR, "error: Failed to cast session pointer object", buf, 2u);
    result = 0;
  }

LABEL_58:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297976784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  std::__shared_weak_count::~__shared_weak_count(v32);
  operator delete(v34);
  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  MEMORY[0x29C276580](&a32);
  hsfiler::ARICommandDriver::~ARICommandDriver(&a15);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

BOOL HSFilerRT_Internal_INT::writeFile_sync(uint64_t a1, uint64_t a2, char *a3, mach_vm_size_t a4, uint64_t a5)
{
  v73 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    v11 = **v6;
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + 8);
      v62 = v12;
      v63 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = **(a1 + 128);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v13[4];
        if (a3[23] >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = *a3;
        }

        *buf = 134218242;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = v17;
        _os_log_impl(&dword_297948000, v15, OS_LOG_TYPE_DEFAULT, "Writing session (%llu) file (%s) to baseband", buf, 0x16u);
      }

      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v59[1] = v18;
      v59[2] = v18;
      v59[0] = v18;
      v60 = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0xAAAAAAAAFFFFFFFFLL;
      v19 = *(v13[15] + 24);
      hsfiler::ARICommandDriver::ARICommandDriver();
      v72 = 0xAAAAAAAAAAAAAAAALL;
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v70[1] = v20;
      v71 = v20;
      v69 = v20;
      v70[0] = v20;
      *&buf[16] = v20;
      v68 = v20;
      *buf = v20;
      AriSdk::ARI_IBIFilerHSWriteBBReq_SDK::ARI_IBIFilerHSWriteBBReq_SDK(buf);
      v57 = 0xAAAAAAAAAAAAAAAALL;
      v58 = 0;
      v56 = 0xAAAAAAAAAAAAAAAALL;
      v66 = 12;
      strcpy(__p, "HSFilerWrite");
      pthread_mutex_lock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
      if (!qword_2A13A35D0)
      {
        v22 = operator new(0xA8uLL);
        v22->__shared_owners_ = 0;
        v22->__shared_weak_owners_ = 0;
        v22->__vftable = &unk_2A1E59C60;
        v21 = &v22[1];
        hsfiler_log_manager::hsfiler_log_manager(&v22[1]);
        v25 = off_2A13A35D8;
        qword_2A13A35D0 = &v22[1];
        off_2A13A35D8 = v22;
        if (!v25)
        {
          v54 = &v22[1];
          v55 = v22;
LABEL_19:
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_20:
          pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
          support::transport::PCIMemRegion::create(__p, 3, a4, 0, 0, 5000, v21, &v56);
          if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
            if ((v66 & 0x80000000) == 0)
            {
LABEL_24:
              if (v56)
              {
                v26 = *(a5 + 24);
                if (v26)
                {
                  *__p = *(v56 + 160);
                  v54 = a4;
                  if ((*(*v26 + 48))(v26, __p, &v54))
                  {
                    v27 = v62;
                    v28 = v62[6];
                    v29 = operator new(4uLL);
                    *v29 = v28;
                    v30 = *&v70[0];
                    *&v70[0] = v29;
                    if (v30)
                    {
                      operator delete(v30);
                    }

                    v31 = a3[23];
                    if ((v31 & 0x80u) == 0)
                    {
                      v32 = a3;
                    }

                    else
                    {
                      v32 = *a3;
                    }

                    if ((v31 & 0x80u) != 0)
                    {
                      v31 = *(a3 + 1);
                    }

                    AriSdk::TlvArray<char,100ul>::assign<std::__wrap_iter<char const*>>((v70 + 8), v32, &v32[v31]);
                    v33 = operator new(8uLL);
                    *v33 = a4;
                    v34 = v71;
                    *&v71 = v33;
                    if (v34)
                    {
                      operator delete(v34);
                    }

                    v35 = operator new(4uLL);
                    *v35 = v27[24];
                    v36 = v72;
                    v72 = v35;
                    if (v36)
                    {
                      operator delete(v36);
                    }

                    v37 = hsfiler::ARICommandDriver::WriteFileToBB();
                    if (v58)
                    {
                      v38 = v37;
                    }

                    else
                    {
                      v38 = 0;
                    }

                    if ((v38 & 1) == 0)
                    {
                      v43 = v37;
                      v51 = **(a1 + 128);
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                      {
                        v52 = *(v27 + 4);
                        *__p = 134217984;
                        *&__p[4] = v52;
                        _os_log_error_impl(&dword_297948000, v51, OS_LOG_TYPE_ERROR, "error: Failed WriteBB ARI command for session (%llu)", __p, 0xCu);
                      }

                      goto LABEL_49;
                    }

                    v39 = *v58[9];
                    v40 = **(a1 + 128);
                    if (!v39)
                    {
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                      {
                        v41 = *(v27 + 4);
                        if (a3[23] >= 0)
                        {
                          v42 = a3;
                        }

                        else
                        {
                          v42 = *a3;
                        }

                        *__p = 134218242;
                        *&__p[4] = v41;
                        *&__p[12] = 2080;
                        v65 = v42;
                        _os_log_impl(&dword_297948000, v40, OS_LOG_TYPE_DEFAULT, "Wrote session (%llu) file (%s) to baseband", __p, 0x16u);
                      }

                      v43 = 1;
                      goto LABEL_49;
                    }

                    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_71;
                    }

                    v53 = *(v27 + 4);
                    *__p = 134218240;
                    *&__p[4] = v53;
                    *&__p[12] = 1024;
                    LODWORD(v65) = v39;
                    v48 = "error: Failed WriteBB ARI command for session (%llu): result %d";
                    v49 = v40;
                    v50 = 18;
LABEL_73:
                    _os_log_error_impl(&dword_297948000, v49, OS_LOG_TYPE_ERROR, v48, __p, v50);
                    v43 = 0;
                    goto LABEL_49;
                  }

                  v47 = **(a1 + 128);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 0;
                    v48 = "error: Failed to get data from caller";
                    goto LABEL_67;
                  }

LABEL_71:
                  v43 = 0;
LABEL_49:
                  if (v58)
                  {
                    (*(*v58 + 2))(v58);
                  }

                  v44 = v57;
                  if (v57 && !atomic_fetch_add((v57 + 8), 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v44->__on_zero_shared)(v44);
                    std::__shared_weak_count::__release_weak(v44);
                  }

                  MEMORY[0x29C2765A0](buf);
                  hsfiler::ARICommandDriver::~ARICommandDriver(v59);
                  v45 = v63;
                  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v45->__on_zero_shared)(v45);
                    std::__shared_weak_count::__release_weak(v45);
                  }

                  result = v43;
                  goto LABEL_58;
                }

                v47 = **(a1 + 128);
                if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_71;
                }

                *__p = 0;
                v48 = "error: Invalid write buffer callback";
              }

              else
              {
                v47 = **(a1 + 128);
                if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_71;
                }

                *__p = 0;
                v48 = "error: Failed to create PCI memory region";
              }

LABEL_67:
              v49 = v47;
              v50 = 2;
              goto LABEL_73;
            }
          }

          else if ((v66 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          operator delete(*__p);
          goto LABEL_24;
        }

        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }
      }

      v21 = qword_2A13A35D0;
      v22 = off_2A13A35D8;
      v54 = qword_2A13A35D0;
      v55 = off_2A13A35D8;
      if (!off_2A13A35D8)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  v23 = **(a1 + 128);
  result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_error_impl(&dword_297948000, v23, OS_LOG_TYPE_ERROR, "error: Failed to cast session pointer object", buf, 2u);
    result = 0;
  }

LABEL_58:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297976F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  std::__shared_weak_count::~__shared_weak_count(v32);
  operator delete(v34);
  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  MEMORY[0x29C2765A0](&a32);
  hsfiler::ARICommandDriver::~ARICommandDriver(&a15);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void HSFilerRT_Internal_INT::~HSFilerRT_Internal_INT(HSFilerRT_Internal_INT *this)
{
  HSFilerRT_Internal::~HSFilerRT_Internal(this);

  operator delete(v1);
}

void HSFilerRT_Internal::~HSFilerRT_Internal(HSFilerRT_Internal *this)
{
  *this = &unk_2A1E59990;
  v2 = *(this + 26);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 21);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  *(this + 10) = &unk_2A1E58EF8;
  v5 = *(this + 18);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 9);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(this + 40, *(this + 6));
  v7 = *(this + 4);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

uint64_t __cxx_global_var_init_3_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>::~PthreadMutexGuardPolicy, &ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance, &dword_297948000);
  }

  return result;
}

uint64_t HSFilerSession::HSFilerSession(uint64_t result, int a2, uint64_t a3)
{
  *result = &unk_2A1E5A960;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  return result;
}

{
  *result = &unk_2A1E5A960;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  return result;
}

void HSFilerSession::~HSFilerSession(HSFilerSession *this)
{
  *this = &unk_2A1E5A960;
  v2 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v3 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v2, &v12);
    v4 = v12;
    v12 = 0uLL;
    v5 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(&v12 + 1);
    if (*(&v12 + 1) && !atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A13A3700;
  }

  v7 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v8 = *(this + 2);
  v9 = *(this + 2);
  v10 = *(v3 + 8);
  *&v12 = MEMORY[0x29EDCA5F8];
  *(&v12 + 1) = 0x40000000;
  v13 = ___ZN18HSFilerRT_Internal14destroySessionE15HSFilerClientIDy_block_invoke;
  v14 = &__block_descriptor_tmp_4;
  v17 = v8;
  v15 = v10;
  v16 = v9;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((v10 + 8), &v12);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11 = *(this + 4);
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

{
  HSFilerSession::~HSFilerSession(this);

  operator delete(v1);
}

uint64_t HSFilerSession::addToQueue(uint64_t a1, uint64_t *a2, const void **a3, int a4)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v22);
    v10 = v22;
    v22 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v22 + 1);
    if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v13 = *(&off_2A13A3700 + 1);
  v20 = v9;
  v21 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (*a3)
  {
    v16 = _Block_copy(*a3);
  }

  else
  {
    v16 = 0;
  }

  v19 = v16;
  v17 = HSFilerRT::queueSession(v9, v14, v15, a2, &v19, a4);
  if (v16)
  {
    _Block_release(v16);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return v17;
}

void sub_2979776F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    _Block_release(v11);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t HSFilerSession::removeFromQueue(HSFilerSession *this)
{
  v2 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v3 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v2, &v10);
    v4 = v10;
    v10 = 0uLL;
    v5 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(&v10 + 1);
    if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A13A3700;
  }

  v7 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  result = HSFilerRT_Internal::removeSessionFromQueue(*(v3 + 8), *(this + 2), *(this + 2));
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v9;
    }
  }

  return result;
}

uint64_t HSFilerReadSession::HSFilerReadSession(uint64_t result, int a2, uint64_t a3)
{
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  *result = &unk_2A1E5A998;
  return result;
}

{
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  *result = &unk_2A1E5A998;
  return result;
}

void HSFilerReadSession::~HSFilerReadSession(HSFilerReadSession *this)
{
  HSFilerSession::~HSFilerSession(this);

  operator delete(v1);
}

void HSFilerReadSession::create(unsigned int a1@<W0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v24);
    v10 = v24;
    v24 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v24 + 1);
    if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v22 = v9;
  v23 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v13 = *a3;
  v14 = a3[1];
  v21[0] = v13;
  v21[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  v20 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = HSFilerRT::createSession(v9, v21, 1, a1, &v20);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_23:
    *a4 = 0;
    a4[1] = 0;
    v19 = v23;
    if (!v23)
    {
      return;
    }

    goto LABEL_24;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_20:
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = operator new(0x28uLL);
  v17[2] = a1;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 2) = v16;
  *v17 = &unk_2A1E5A998;
  *a4 = v17;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E5AA48;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = v17;
  a4[1] = v18;
  v19 = v23;
  if (!v23)
  {
    return;
  }

LABEL_24:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_297977C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  HSFilerSession::~HSFilerSession(v13);
  operator delete(v15);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_297977C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297977C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    dispatch_release(v13);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t HSFilerReadSession::readWithFile(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v23);
    v10 = v23;
    v23 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v23 + 1);
    if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v13 = *(&off_2A13A3700 + 1);
  v21 = v9;
  v22 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
  }

  else
  {
    v20 = *a3;
  }

  if (*a4)
  {
    v16 = _Block_copy(*a4);
  }

  else
  {
    v16 = 0;
  }

  v19 = v16;
  v17 = HSFilerRT::readWithFile(v9, v14, v15, a2, &v20, &v19);
  if (v16)
  {
    _Block_release(v16);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return v17;
}

void sub_297977E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297977EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (v18)
  {
    _Block_release(v18);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t HSFilerReadSession::readWithStream(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v25);
    v10 = v25;
    v25 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v25 + 1);
    if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v23 = v9;
  v24 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *a3;
  v16 = a3[1];
  v22[0] = v15;
  v22[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    v17 = _Block_copy(*a4);
  }

  else
  {
    v17 = 0;
  }

  v21 = v17;
  v18 = HSFilerRT::readWithStream(v9, v13, v14, a2, v22, &v21);
  if (v17)
  {
    _Block_release(v17);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v19 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  return v18;
}

void sub_297978148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    _Block_release(v13);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t HSFilerReadSession::readWithBuff(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v25);
    v10 = v25;
    v25 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v25 + 1);
    if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v23 = v9;
  v24 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *a3;
  v16 = a3[1];
  v22[0] = v15;
  v22[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    v17 = _Block_copy(*a4);
  }

  else
  {
    v17 = 0;
  }

  v21 = v17;
  v18 = HSFilerRT::readWithBuff(v9, v13, v14, a2, v22, &v21);
  if (v17)
  {
    _Block_release(v17);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v19 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  return v18;
}

void sub_2979783C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    _Block_release(v13);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t HSFilerWriteSession::HSFilerWriteSession(uint64_t result, int a2, uint64_t a3)
{
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  *result = &unk_2A1E5A9D0;
  return result;
}

{
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  *result = &unk_2A1E5A9D0;
  return result;
}

void HSFilerWriteSession::~HSFilerWriteSession(HSFilerWriteSession *this)
{
  HSFilerSession::~HSFilerSession(this);

  operator delete(v1);
}

void HSFilerWriteSession::create(unsigned int a1@<W0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v24);
    v10 = v24;
    v24 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v24 + 1);
    if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v22 = v9;
  v23 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v13 = *a3;
  v14 = a3[1];
  v21[0] = v13;
  v21[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  v20 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = HSFilerRT::createSession(v9, v21, 0, a1, &v20);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_23:
    *a4 = 0;
    a4[1] = 0;
    v19 = v23;
    if (!v23)
    {
      return;
    }

    goto LABEL_24;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_20:
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = operator new(0x28uLL);
  v17[2] = a1;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 2) = v16;
  *v17 = &unk_2A1E5A9D0;
  *a4 = v17;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E5AA98;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = v17;
  a4[1] = v18;
  v19 = v23;
  if (!v23)
  {
    return;
  }

LABEL_24:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_297978740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  HSFilerSession::~HSFilerSession(v13);
  operator delete(v15);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_297978760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297978774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    dispatch_release(v13);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t HSFilerWriteSession::writeWithFile(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v23);
    v10 = v23;
    v23 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v23 + 1);
    if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v13 = *(&off_2A13A3700 + 1);
  v21 = v9;
  v22 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
  }

  else
  {
    v20 = *a3;
  }

  if (*a4)
  {
    v16 = _Block_copy(*a4);
  }

  else
  {
    v16 = 0;
  }

  v19 = v16;
  v17 = HSFilerRT::writeWithFile(v9, v14, v15, a2, &v20, &v19);
  if (v16)
  {
    _Block_release(v16);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return v17;
}

void sub_2979789A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2979789E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (v18)
  {
    _Block_release(v18);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t HSFilerWriteSession::writeWithStream(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v25);
    v10 = v25;
    v25 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v25 + 1);
    if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v23 = v9;
  v24 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *a3;
  v16 = a3[1];
  v22[0] = v15;
  v22[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    v17 = _Block_copy(*a4);
  }

  else
  {
    v17 = 0;
  }

  v21 = v17;
  v18 = HSFilerRT::writeWithStream(v9, v13, v14, a2, v22, &v21);
  if (v17)
  {
    _Block_release(v17);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v19 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  return v18;
}

void sub_297978C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    _Block_release(v13);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t HSFilerWriteSession::writeWithBuff(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = off_2A13A3700;
  if (!off_2A13A3700)
  {
    HSFilerRT::create_default_global(v8, &v25);
    v10 = v25;
    v25 = 0uLL;
    v11 = *(&off_2A13A3700 + 1);
    off_2A13A3700 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v25 + 1);
    if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A13A3700;
  }

  v23 = v9;
  v24 = *(&off_2A13A3700 + 1);
  if (*(&off_2A13A3700 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A3700 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *a3;
  v16 = a3[1];
  v22[0] = v15;
  v22[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    v17 = _Block_copy(*a4);
  }

  else
  {
    v17 = 0;
  }

  v21 = v17;
  v18 = HSFilerRT::writeWithBuff(v9, v13, v14, a2, v22, &v21);
  if (v17)
  {
    _Block_release(v17);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v19 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  return v18;
}

void sub_297978EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    _Block_release(v13);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<HSFilerRT>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<HSFilerReadSession *,std::shared_ptr<HSFilerReadSession>::__shared_ptr_default_delete<HSFilerReadSession,HSFilerReadSession>,std::allocator<HSFilerReadSession>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<HSFilerReadSession *,std::shared_ptr<HSFilerReadSession>::__shared_ptr_default_delete<HSFilerReadSession,HSFilerReadSession>,std::allocator<HSFilerReadSession>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<HSFilerReadSession *,std::shared_ptr<HSFilerReadSession>::__shared_ptr_default_delete<HSFilerReadSession,HSFilerReadSession>,std::allocator<HSFilerReadSession>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029797E710)
  {
    if (((v2 & 0x800000029797E710 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029797E710))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029797E710 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<HSFilerWriteSession *,std::shared_ptr<HSFilerWriteSession>::__shared_ptr_default_delete<HSFilerWriteSession,HSFilerWriteSession>,std::allocator<HSFilerWriteSession>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<HSFilerWriteSession *,std::shared_ptr<HSFilerWriteSession>::__shared_ptr_default_delete<HSFilerWriteSession,HSFilerWriteSession>,std::allocator<HSFilerWriteSession>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<HSFilerWriteSession *,std::shared_ptr<HSFilerWriteSession>::__shared_ptr_default_delete<HSFilerWriteSession,HSFilerWriteSession>,std::allocator<HSFilerWriteSession>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029797E7E4)
  {
    if (((v2 & 0x800000029797E7E4 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029797E7E4))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029797E7E4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_9()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HSFilerRT>::~PthreadMutexGuardPolicy, &ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance, &dword_297948000);
  }

  return result;
}

BasebandTransportICE *BasebandTransportICE::BasebandTransportICE(BasebandTransportICE *a1, NSObject **a2, dispatch_qos_class_t a3)
{
  v4 = *a2;
  object = v4;
  if (v4)
  {
    v5 = a3;
    dispatch_retain(v4);
    a3 = v5;
  }

  BasebandTransport::BasebandTransport(a1, &object, a3);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2A1E5AAE8;
  *(a1 + 49) = 0;
  *(a1 + 53) = 0;
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  *(a1 + 59) = dispatch_queue_create("BasebandTransportARI", 0);
  BasebandTransportICE::configurePhysical(a1);
  return a1;
}

void sub_29797926C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 59);
  if (v3)
  {
    dispatch_release(v3);
  }

  std::function<BOOL ()(void)>::~function(v1 + 432);
  std::function<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(v1 + 400);
  std::function<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(v1 + 368);
  BasebandTransport::~BasebandTransport(v1);
  _Unwind_Resume(a1);
}

void sub_2979792A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (!object)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_release(object);
  _Unwind_Resume(exception_object);
}

void **BasebandTransportICE::configurePhysical(BasebandTransportICE *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, "#I using physical pipe...", &v5, 2u);
  }

  v5 = &unk_2A1E5ADB8;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](&v5, this + 54);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2A1E5AE38;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 50);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2A1E5AEB8;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 46);
  result = v7;
  if (v7 == &v5)
  {
    result = (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 5))();
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void **BasebandTransportICE::configureARIPipe(BasebandTransportICE *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, "#I using ARI client pipe...", &v5, 2u);
  }

  v5 = &unk_2A1E5ABD8;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](&v5, this + 54);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2A1E5AC68;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 50);
  if (v7 == &v5)
  {
    (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 5))();
  }

  v5 = &unk_2A1E5ACF8;
  v6 = this;
  v7 = &v5;
  std::__function::__value_func<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](&v5, this + 46);
  result = v7;
  if (v7 == &v5)
  {
    result = (*(*v7 + 4))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 5))();
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BasebandTransportICE::open(BasebandTransport *a1, uint64_t *a2, const void **a3)
{
  if (*a2 == 8)
  {
    v6 = *a2;
    v21 = *(a2 + 1);
    v22 = a2[4];
    *buf = v6;
    *&buf[8] = 1;
    v7 = *a3;
    if (*a3)
    {
      v7 = _Block_copy(v7);
    }

    aBlock = v7;
    v8 = BasebandTransport::open(a1, buf, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v12 = *(a1 + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297948000, v12, OS_LOG_TYPE_DEFAULT, "#I Physical transport not available.  Trying ARI pipe...", buf, 2u);
      }

      v13 = *(a2 + 1);
      *buf = *a2;
      v21 = v13;
      v22 = a2[4];
      if (*a3)
      {
        v14 = _Block_copy(*a3);
      }

      else
      {
        v14 = 0;
      }

      v18 = v14;
      v15 = BasebandTransportICE::openARIClientPipe(a1, buf, &v18);
      if (v14)
      {
        _Block_release(v14);
      }

      if (v15)
      {
        BasebandTransportICE::configureARIPipe(a1);
        return 1;
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *buf = *a2;
    v21 = v10;
    v22 = a2[4];
    v11 = *a3;
    if (*a3)
    {
      v11 = _Block_copy(v11);
    }

    v17 = v11;
    v9 = BasebandTransport::open(a1, buf, &v17);
    if (v17)
    {
      _Block_release(v17);
    }
  }

  BasebandTransportICE::configurePhysical(a1);
  return v9;
}

void sub_2979798D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint64_t a11, void *a12)
{
  if (v12)
  {
    _Block_release(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL BasebandTransportICE::openARIClientPipe(uint64_t a1, __int128 *a2, void **a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 80) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 88);
  *(a1 + 88) = v8;
  if (v9)
  {
    _Block_release(v9);
  }

  *(a1 + 464) = 0;
  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(a1 + 8), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = (a1 + 464);
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = AriHost::RegisterClient("ipc.bb", (a1 + 464), *(a1 + 472), (1000 * *(a2 + 2)));
  if (v15)
  {
    v16 = 0;
    v17 = *(a1 + 40);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v23 = *(a1 + 464);
    v24[0] = v11;
    v24[1] = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = v24;
    v16 = AriHost::SetRTEventHandler() == 0;
    v17 = *(a1 + 40);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }
  }

  v18 = "fail";
  v19 = *v14;
  if (v16)
  {
    v18 = "success";
  }

  *buf = 136315394;
  v26 = v18;
  v27 = 1024;
  v28 = v19;
  _os_log_impl(&dword_297948000, v17, OS_LOG_TYPE_DEFAULT, "#I ARI pipe open %s ctx 0x%x", buf, 0x12u);
LABEL_14:
  if (!v15)
  {
    v20 = v3[1];
    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  std::__shared_weak_count::__release_weak(v13);
  v21 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_297979B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransportICE::write(BasebandTransportICE *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4, char a5, int a6)
{
  v12 = a2;
  v10 = a4;
  v11 = a3;
  v9 = a5;
  v8 = a6;
  v6 = *(this + 49);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v12, &v11, &v10, &v9, &v8);
}

uint64_t BasebandTransportICE::read(BasebandTransportICE *this, unsigned __int8 *a2, uint64_t a3, unsigned int *a4, char a5, int a6)
{
  v12 = a2;
  v10 = a4;
  v11 = a3;
  v9 = a5;
  v8 = a6;
  v6 = *(this + 53);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v12, &v11, &v10, &v9, &v8);
}

uint64_t BasebandTransportICE::close_sync(BasebandTransportICE *this)
{
  v2 = *(this + 57);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t ___ZN20BasebandTransportICE17openARIClientPipeEN17BasebandTransport10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2 && (v3 = a1[4], (v4 = std::__shared_weak_count::lock(v2)) != 0))
  {
    v5 = v4;
    if (a1[5])
    {
      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315138;
        *&__p[4] = "ipc.bb";
        _os_log_error_impl(&dword_297948000, v6, OS_LOG_TYPE_ERROR, "Got AriHost::ARI_RT_REINIT callback for %s", __p, 0xCu);
      }

      v11 = 6;
      strcpy(__p, "ipc.bb");
      AriHost::ReRegisterClient();
      if (v11 < 0)
      {
        operator delete(*__p);
        result = 0;
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_14:
          v9 = result;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          result = v9;
        }
      }

      else
      {
        result = 0;
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297979E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL BasebandTransportICE::writeARIClientPipe(BasebandTransportICE *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = *(this + 2);
  if (!v5 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 117))
    {
LABEL_5:
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      started = AriHost::Send();
      v12 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
    if (*(this + 117))
    {
      goto LABEL_5;
    }
  }

  v14 = *(this + 116);
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  started = AriHost::StartStream();
  v12 = v10;
LABEL_6:
  std::__shared_weak_count::__release_weak(v12);
  if (started)
  {
    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = a3;
      _os_log_error_impl(&dword_297948000, v13, OS_LOG_TYPE_ERROR, "Failed to send %zu bytes on ARI pipe", buf, 0xCu);
    }
  }

  else if (a4)
  {
    *a4 = a3;
  }

  std::__shared_weak_count::__release_weak(v10);
  v15 = *MEMORY[0x29EDCA608];
  return started == 0;
}

void sub_29797A104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

uint64_t ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke(void *a1, uint64_t a2, int a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  if (a1[5])
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2;
    block[3] = &__block_descriptor_tmp_5;
    block[4] = v7;
    block[5] = a2;
    v13 = a3;
    dispatch_async(*(v7 + 96), block);
    result = 0;
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return result;
    }

LABEL_8:
    v11 = result;
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    return v11;
  }

  result = 0xFFFFFFFFLL;
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  return result;
}

void ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    (*(*v3 + 8))(v3, *(a1 + 40), *(a1 + 48), &__p);
    v4 = v12 - __p;
    if (*(v2 + 80) == 1)
    {
      v5 = __p;
      v6 = malloc(v12 - __p);
      memcpy(v6, v5, v4);
    }

    (*(*(v2 + 88) + 16))();
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (*(v2 + 80) == 1)
    {
      v8 = *(a1 + 40);
      v9 = malloc(v7);
      memcpy(v9, v8, v7);
    }

    v10 = *(*(v2 + 88) + 16);

    v10();
  }
}

void sub_29797A3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandTransportICE::sendToDataHandler(BasebandTransportICE *this, unsigned __int8 *a2, size_t __size)
{
  if (*(this + 80) == 1)
  {
    v6 = malloc(__size);
    memcpy(v6, a2, __size);
  }

  v7 = *(*(this + 11) + 16);

  return v7();
}

uint64_t ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_10(void *a1, AriMsg *a2, unsigned int a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4 || (v7 = a1[4], v8 = std::__shared_weak_count::lock(v4), (v21 = v8) == 0))
  {
    result = 0xFFFFFFFFLL;
    v14 = *MEMORY[0x29EDCA608];
    return result;
  }

  v9 = v8;
  if (!a1[5])
  {
    result = 0xFFFFFFFFLL;
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2_11;
  block[3] = &__block_descriptor_tmp_12_0;
  block[4] = v7;
  block[5] = a2;
  v19 = a3;
  dispatch_async(*(v7 + 96), block);
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  *(v7 + 468) = BufCtx;
  v11 = *(v7 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (!v12)
  {
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = result;
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    result = v16;
    v17 = *MEMORY[0x29EDCA608];
    return result;
  }

  *buf = 67109120;
  v23 = BufCtx;
  _os_log_impl(&dword_297948000, v11, OS_LOG_TYPE_DEFAULT, "#I bypass will use ctx id 0x%x", buf, 8u);
  result = 0;
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29797A644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN20BasebandTransportICE18writeARIClientPipeEPKhmPjbj_block_invoke_2_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    (*(*v3 + 8))(v3, *(a1 + 40), *(a1 + 48), &__p);
    v4 = v12 - __p;
    if (*(v2 + 80) == 1)
    {
      v5 = __p;
      v6 = malloc(v12 - __p);
      memcpy(v6, v5, v4);
    }

    (*(*(v2 + 88) + 16))();
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (*(v2 + 80) == 1)
    {
      v8 = *(a1 + 40);
      v9 = malloc(v7);
      memcpy(v9, v8, v7);
    }

    v10 = *(*(v2 + 88) + 16);

    v10();
  }
}

void sub_29797A78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandTransportICE::closeARIClientPipe_sync(BasebandTransportICE *this)
{
  AriHost::EndStream(*(this + 117));
  *(this + 117) = 0;
  AriHost::DeregisterClient(*(this + 116));
  *(this + 116) = 0;
  return 1;
}

void BasebandTransportICE::~BasebandTransportICE(BasebandTransportICE *this)
{
  BasebandTransportICE::~BasebandTransportICE(this);

  operator delete(v1);
}

{
  *this = &unk_2A1E5AAE8;
  v2 = *(this + 59);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 57);
  if (v3 == (this + 432))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 53);
    if (v4 != (this + 400))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 53);
    if (v4 != (this + 400))
    {
LABEL_7:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = *(this + 49);
      if (v5 != (this + 368))
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  (*(*v4 + 32))(v4);
  v5 = *(this + 49);
  if (v5 != (this + 368))
  {
LABEL_10:
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    v6 = this;

    goto LABEL_14;
  }

LABEL_17:
  (*(*v5 + 32))(v5);
  v6 = this;

LABEL_14:
  BasebandTransport::~BasebandTransport(v6);
}

uint64_t std::function<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(uint64_t a1)
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

uint64_t std::function<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::~function(uint64_t a1)
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

uint64_t std::function<BOOL ()(void)>::~function(uint64_t a1)
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

void *std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E5ABD8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E5ABD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  AriHost::EndStream(*(v1 + 468));
  *(v1 + 468) = 0;
  AriHost::DeregisterClient(*(v1 + 464));
  *(v1 + 464) = 0;
  return 1;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_0,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE16configureARIPipeEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE16configureARIPipeEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE16configureARIPipeEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE16configureARIPipeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x29EDCA608];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x29EDCA608];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x29EDCA608];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29797AF24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_1,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1E5AC68;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_1,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE16configureARIPipeEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE16configureARIPipeEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE16configureARIPipeEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE16configureARIPipeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x29EDCA608];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x29EDCA608];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x29EDCA608];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29797B2B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E5ACF8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E5ACF8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int **a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x4002000000;
  v21[3] = __Block_byref_object_copy__1;
  v21[4] = __Block_byref_object_dispose__1;
  __p = 0;
  v23 = 0;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = v5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = v6;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = ___ZZN20BasebandTransportICE16configureARIPipeEvENK3__2clEPKhmPjbj_block_invoke;
  v12[3] = &__block_descriptor_tmp_38;
  v12[8] = v5;
  v12[9] = v6;
  v12[4] = v21;
  v12[5] = &v17;
  v12[6] = &v13;
  v12[7] = v4;
  v25 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_0;
  block[3] = &__block_descriptor_tmp_39;
  block[4] = v4 + 8;
  block[5] = &v25;
  v8 = *(v4 + 3);
  if (*(v4 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = v14[3];
    if (v9)
    {
LABEL_3:
      v10 = BasebandTransportICE::writeARIClientPipe(v4, v18[3], v9, v7);
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_sync(v8, block);
    v9 = v14[3];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v10 = 1;
LABEL_6:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_29797B504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandTransportICE::configureARIPipe(void)::$_2,std::allocator<BasebandTransportICE::configureARIPipe(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE16configureARIPipeEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE16configureARIPipeEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE16configureARIPipeEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE16configureARIPipeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZZN20BasebandTransportICE16configureARIPipeEvENK3__2clEPKhmPjbj_block_invoke(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void *std::__function::__value_func<BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x29EDCA608];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x29EDCA608];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x29EDCA608];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29797B934(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_0,std::allocator<BasebandTransportICE::configurePhysical(void)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E5ADB8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_0,std::allocator<BasebandTransportICE::configurePhysical(void)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E5ADB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_0,std::allocator<BasebandTransportICE::configurePhysical(void)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE17configurePhysicalEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE17configurePhysicalEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE17configurePhysicalEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE17configurePhysicalEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E5AE38;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E5AE38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::operator()(uint64_t a1, unsigned __int8 **a2, unint64_t *a3, unsigned int **a4, unsigned __int8 *a5, unsigned int *a6)
{
  v6 = *a5;
  v7 = *a6;
  return BasebandTransport::read(*(a1 + 8), *a2, *a3, *a4);
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_1,std::allocator<BasebandTransportICE::configurePhysical(void)::$_1>,BOOL ()(unsigned char *,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE17configurePhysicalEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE17configurePhysicalEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE17configurePhysicalEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE17configurePhysicalEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E5AEB8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E5AEB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::operator()(uint64_t a1, const unsigned __int8 **a2, uint64_t *a3, unsigned int **a4, unsigned __int8 *a5, unsigned int *a6)
{
  v6 = *a5;
  v7 = *a6;
  return BasebandTransport::write(*(a1 + 8), *a2, *a3, *a4);
}

uint64_t std::__function::__func<BasebandTransportICE::configurePhysical(void)::$_2,std::allocator<BasebandTransportICE::configurePhysical(void)::$_2>,BOOL ()(unsigned char const*,unsigned long,unsigned int *,BOOL,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN20BasebandTransportICE17configurePhysicalEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN20BasebandTransportICE17configurePhysicalEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN20BasebandTransportICE17configurePhysicalEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN20BasebandTransportICE17configurePhysicalEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2A1C6F118]();
}

{
  return MEMORY[0x2A1C6F120]();
}

uint64_t AriHost::RegisterClient(AriHost *this, const char *a2, int *a3, dispatch_queue_s *a4)
{
  return MEMORY[0x2A1C6C588](this, a2, a3, a4);
}

{
  return MEMORY[0x2A1C6C590](this, a2, a3, a4);
}

uint64_t std::istream::seekg()
{
  return MEMORY[0x2A1C6FD48]();
}

{
  return MEMORY[0x2A1C6FD50]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE00]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE48]();
}

{
  return MEMORY[0x2A1C6FE50]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}